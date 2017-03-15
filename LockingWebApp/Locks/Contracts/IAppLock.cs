﻿using System;
using System.Security.Cryptography;
using System.Text;
using LockingWebApp.Locks.Dto;

namespace LockingWebApp.Locks.Contracts
{
    public interface IAppLock
    {
        LockAcquisitionResult TryAcquire(string lockName, TimeSpan timeout = default(TimeSpan));
        LockReleaseResult ReleaseLock(string lockName, string lockOwner);
        bool VerifyLockOwnership(string lockName, string lockOwner);
    }
    public interface IEncryptor
    {
        string Encrypt(string val);
        string Decrypt(string val);
    }


    internal static class DistributedLockHelpers
    {
        public static int ToInt32Timeout(this TimeSpan timeout, string paramName = null)
        {
            // based on http://referencesource.microsoft.com/#mscorlib/system/threading/Tasks/Task.cs,959427ac16fa52fa

            var totalMilliseconds = (long) timeout.TotalMilliseconds;
            if (totalMilliseconds < -1 || totalMilliseconds > int.MaxValue)
            {
                throw new ArgumentOutOfRangeException(paramName ?? "timeout");
            }

            return (int) totalMilliseconds;
        }

        public static string ToSafeLockName(string baseLockName, int maxNameLength, Func<string, string> convertToValidName)
        {
            if (baseLockName == null)
                throw new ArgumentNullException("baseLockName");

            var validBaseLockName = convertToValidName(baseLockName);
            if (validBaseLockName == baseLockName && validBaseLockName.Length <= maxNameLength)
            {
                return baseLockName;
            }

            using (var sha = new SHA512Managed())
            {
                var hash = Convert.ToBase64String(sha.ComputeHash(Encoding.UTF8.GetBytes(baseLockName)));

                if (hash.Length >= maxNameLength)
                {
                    return hash.Substring(0, maxNameLength);
                }

                var prefix = validBaseLockName.Substring(0, Math.Min(validBaseLockName.Length, maxNameLength - hash.Length));
                return prefix + hash;
            }
        }
    }

}