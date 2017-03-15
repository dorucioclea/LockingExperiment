﻿CREATE TABLE [dbo].[ApplicationLock] (
    [Id] [uniqueidentifier] NOT NULL,
    [UtcTimestamp] [datetime] NOT NULL,
    [LockName] [nvarchar](256) NOT NULL,
    CONSTRAINT [PK_dbo.ApplicationLock] PRIMARY KEY ([Id])
)
CREATE TABLE [dbo].[__MigrationHistory] (
    [MigrationId] [nvarchar](150) NOT NULL,
    [ContextKey] [nvarchar](300) NOT NULL,
    [Model] [varbinary](max) NOT NULL,
    [ProductVersion] [nvarchar](32) NOT NULL,
    CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY ([MigrationId], [ContextKey])
)
INSERT [dbo].[__MigrationHistory]([MigrationId], [ContextKey], [Model], [ProductVersion])
VALUES (N'201703151459351_InitialMigration', N'LockingWebApp.Locks.Db.ContextConfiguration',  0x1F8B0800000000000400CD57DB6EDB38107D5F60FF41E0732A262976B10DE416A99D14C1C6495025ED332D8D1DA214A9F212D8DFD687FDA4FD850E75B7243B751114855F246AE6F0CCE15CE8FFBFFD17BD5B672278026DB8921372121E930064A2522E5713E2ECF2D53FE4DDDB3FFF882ED26C1D7CAAED5E7B3BF49466421EADCDCF2835C92364CC84194FB4326A69C3446594A58A9E1E1FBFA12727141082205610441F9DB43C83E2055FA74A26905BC7C45CA5204CB58E5FE20235B86119989C253021D72AF982E43EC3E23CCF43FF66C2D98204E7823364138358928049A92CB3C8F5ECC1406CB592AB38C70526EE3739A0DD920903550C67ADF98F86737CEAC3A1AD630D953863557620E0C9EB4A1FDA77FF299549A31F2A78814ADB8D8FBA5071425036C19302DDAB4782FE9E6753A1BDFD2EADC3029283097B5047C196C351932F9856FE77144C9DB04EC34482B39A89A3E0CE2D10E15FD8DCAB2F2027D209D1658FFCF1DBD6022EDD699583B69B8FB0AC62BA4A4940B7FD68DFB171EBF894617E701C9F6F706FB610D0E406DDEBFE60937B4C61635996D7403366C12F8E8075E48DADD2F0012468344FEF98B5A0314F6E947C7653AFAF7FAA37C4CC46B9493067EB6B902BFB3821A77FFD4D824BBE86B45EA9183C488E758D4E56BB976218D136BD864987656D1947940E7BBF066B3B927558A855E2998AE3B61425660CB6836648D012288BBF9F94E3841B6A6DABA165AFA97B12DDD194A239CB7314BDD3A4AA95202E3BD4F4557C78D96625064DCC48F5366C9B9DF080D80A7A5F716B647AC9B5B198896CC1FCB14ED36C60D63D881D22D73B75B5EED7612B7D6DED9F5B8F91D6D13F9C1E642BE625C69781B445A8D0D01AB6AF0142313598607AA4DEA74AB84CEEEA19FBBCB7CBBD8BB3FDE5C711DB5AEEA2B5AB43A488F6C4E91F081D9C48AF27F68F775F65F44D9ADD9B0AE955425465E5F3337C90A6A5090950A2279EFA148D37C642167A8330FE2AA68263BCADC19C49BE44CDCBB14170849EF6AE00BFCF38A6C6A4E2B099FCCB47A093FCAB035416992D39E8171987294E0F3B3E0E0F1B73F289E9E491E9E1A0DB0B7CD8741AF6CEFDF36730679E9F44659AA3300B85A195BC5F6A5C0D8B2FA2DD6B763403C3572D84BF744B48FCBE2D686D732597AA3E138CB8CBA836E91DD91C2CC3F366E71A138825163F27604C713BF9C48443938B6C01E995BC753677F6DC18C81662D38D37A2FBF72F66F236E7E836F76FE62542409ADCA7ECAD7CEFB8481BDE972399B503C2E750756F4256783B43B8D5A6411AB940ED00AAE49B410ED217E53D64B94030732B63F6043FC30DEF57D7B062C9A6EEA1BB419E3F886DD9A319672BCD325361B4FEFEAF23F5FF1DDF7E0776F3EE136D0E0000 , N'6.1.3-40302')

