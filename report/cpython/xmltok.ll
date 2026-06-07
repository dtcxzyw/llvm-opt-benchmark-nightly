inline.NumInlined: 156
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@namingBitmap = internal unnamed_addr constant [320 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 67108864, i32 -2013265922, i32 134217726, i32 0, i32 0, i32 -8388609, i32 -8388609, i32 -1, i32 2146697215, i32 -514, i32 2147483647, i32 -1, i32 -1, i32 -8177, i32 -63832065, i32 16777215, i32 0, i32 -65536, i32 -1, i32 -1, i32 -134217217, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -10432, i32 -5, i32 1417641983, i32 1048573, i32 -8194, i32 -1, i32 -536936449, i32 -1, i32 -65533, i32 -1, i32 -58977, i32 54513663, i32 0, i32 -131072, i32 41943039, i32 -2, i32 127, i32 0, i32 -65536, i32 460799, i32 0, i32 134217726, i32 2046, i32 -131072, i32 -1, i32 2097151999, i32 3112959, i32 96, i32 -32, i32 603979775, i32 -16777216, i32 3, i32 -417824, i32 63307263, i32 -1342177280, i32 196611, i32 -423968, i32 57540095, i32 1577058304, i32 1835008, i32 -282656, i32 602799615, i32 0, i32 1, i32 -417824, i32 600702463, i32 -1342177280, i32 3, i32 -700594208, i32 62899992, i32 0, i32 0, i32 -139296, i32 66059775, i32 0, i32 3, i32 -139296, i32 66059775, i32 1073741824, i32 3, i32 -139296, i32 67108351, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 884735, i32 63, i32 0, i32 -17816170, i32 537750702, i32 31, i32 0, i32 0, i32 0, i32 -257, i32 1023, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -65473, i32 8388607, i32 514797, i32 1342177280, i32 -2110697471, i32 2908843, i32 1073741824, i32 -176109312, i32 7, i32 33622016, i32 -1, i32 -1, i32 -1, i32 -1, i32 268435455, i32 -1, i32 -1, i32 67108863, i32 1061158911, i32 -1, i32 -1426112705, i32 1073741823, i32 -1, i32 1608515583, i32 265232348, i32 534519807, i32 0, i32 19520, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 128, i32 1022, i32 -2, i32 -1, i32 2097151, i32 -2, i32 -1, i32 134217727, i32 -32, i32 8191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 63, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 15, i32 0, i32 0, i32 0, i32 134176768, i32 -2013265922, i32 134217726, i32 0, i32 8388608, i32 -8388609, i32 -8388609, i32 16777215, i32 0, i32 -65536, i32 -1, i32 -1, i32 -134217217, i32 196611, i32 0, i32 -1, i32 -1, i32 63, i32 3, i32 -10304, i32 -5, i32 1417641983, i32 1048573, i32 -8194, i32 -1, i32 -536936449, i32 -1, i32 -65413, i32 -1, i32 -58977, i32 54513663, i32 0, i32 -131072, i32 41943039, i32 -2, i32 -130945, i32 -1140850693, i32 -65514, i32 460799, i32 0, i32 134217726, i32 524287, i32 -64513, i32 -1, i32 2097151999, i32 -1081345, i32 67059199, i32 -18, i32 -201326593, i32 -14794753, i32 65487, i32 -417810, i32 -741999105, i32 -1333773921, i32 262095, i32 -423964, i32 -747766273, i32 1577073031, i32 2097088, i32 -282642, i32 -202506753, i32 15295, i32 65473, i32 -417810, i32 -204603905, i32 -1329579633, i32 65475, i32 -700594196, i32 -1010841832, i32 8404423, i32 65408, i32 -139282, i32 -1007682049, i32 6307295, i32 65475, i32 -139284, i32 -1007682049, i32 1080049119, i32 65475, i32 -139284, i32 -1006633473, i32 8404431, i32 65475, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 134184959, i32 67076095, i32 0, i32 -17816170, i32 1006595246, i32 67059551, i32 0, i32 50331648, i32 -1029700609, i32 -257, i32 -130049, i32 -21032993, i32 50216959, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 536805376, i32 2, i32 160, i32 4128766, i32 -2, i32 -1, i32 1713373183, i32 -2, i32 -1, i32 2013265919], align 16
@latin1_encoding = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @latin1_toUtf8, ptr @latin1_toUtf16, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@nmstrtPages = internal unnamed_addr constant <{ [216 x i8], [40 x i8] }> <{ [216 x i8] c"\02\03\04\05\06\07\08\00\00\09\0A\0B\0C\0D\0E\0F\10\11\00\00\00\00\00\00\00\00\00\00\00\00\12\13\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\17\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\18", [40 x i8] zeroinitializer }>, align 16
@namePages = internal unnamed_addr constant <{ [216 x i8], [40 x i8] }> <{ [216 x i8] c"\19\03\1A\1B\1C\1D\1E\00\00\1F !\22#$%\10\11\00\00\00\00\00\00\00\00\00\00\00\00\12\13&\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00'\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\17\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\18", [40 x i8] zeroinitializer }>, align 16
@internal_utf8_encoding = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@internal_little2_encoding = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@KW_ISO_8859_1 = internal unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@KW_US_ASCII = internal unnamed_addr constant [9 x i8] c"US-ASCII\00", align 1
@KW_UTF_8 = internal unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@KW_UTF_16 = internal unnamed_addr constant [7 x i8] c"UTF-16\00", align 1
@KW_UTF_16BE = internal unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@KW_UTF_16LE = internal unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@encodings = internal constant [7 x ptr] [ptr @latin1_encoding, ptr @ascii_encoding, ptr @utf8_encoding, ptr @big2_encoding, ptr @big2_encoding, ptr @little2_encoding, ptr @utf8_encoding], align 16
@ascii_encoding = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, <{ [128 x i8], [128 x i8] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @ascii_toUtf8, ptr @latin1_toUtf16, i32 1, i8 1, i8 0, [2 x i8] zeroinitializer }, <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C", [128 x i8] zeroinitializer }>, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@utf8_encoding = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@big2_encoding = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @big2_prologTok, ptr @big2_contentTok, ptr @big2_cdataSectionTok, ptr @big2_ignoreSectionTok], [2 x ptr] [ptr @big2_attributeValueTok, ptr @big2_entityValueTok], ptr @big2_nameMatchesAscii, ptr @big2_nameLength, ptr @big2_skipS, ptr @big2_getAtts, ptr @big2_charRefNumber, ptr @big2_predefinedEntityName, ptr @big2_updatePosition, ptr @big2_isPublicId, ptr @big2_toUtf8, ptr @big2_toUtf16, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@little2_encoding = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@KW_version = internal constant [8 x i8] c"version\00", align 1
@KW_encoding = internal constant [9 x i8] c"encoding\00", align 1
@KW_standalone = internal constant [11 x i8] c"standalone\00", align 1
@KW_yes = internal constant [4 x i8] c"yes\00", align 1
@KW_no = internal constant [3 x i8] c"no\00", align 1
@internal_utf8_encoding_ns = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@internal_little2_encoding_ns = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@encodingsNS = internal constant [7 x ptr] [ptr @latin1_encoding_ns, ptr @ascii_encoding_ns, ptr @utf8_encoding_ns, ptr @big2_encoding_ns, ptr @big2_encoding_ns, ptr @little2_encoding_ns, ptr @utf8_encoding_ns], align 16
@latin1_encoding_ns = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @latin1_toUtf8, ptr @latin1_toUtf16, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@ascii_encoding_ns = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, <{ [128 x i8], [128 x i8] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @ascii_toUtf8, ptr @latin1_toUtf16, i32 1, i8 1, i8 0, [2 x i8] zeroinitializer }, <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C", [128 x i8] zeroinitializer }>, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@utf8_encoding_ns = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@big2_encoding_ns = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @big2_prologTok, ptr @big2_contentTok, ptr @big2_cdataSectionTok, ptr @big2_ignoreSectionTok], [2 x ptr] [ptr @big2_attributeValueTok, ptr @big2_entityValueTok], ptr @big2_nameMatchesAscii, ptr @big2_nameLength, ptr @big2_skipS, ptr @big2_getAtts, ptr @big2_charRefNumber, ptr @big2_predefinedEntityName, ptr @big2_updatePosition, ptr @big2_isPublicId, ptr @big2_toUtf8, ptr @big2_toUtf16, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@little2_encoding_ns = internal constant { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] }, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i8] } { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1, [2 x i8] zeroinitializer }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@switch.table.normal_nameLength = private unnamed_addr constant [25 x i64] [i64 2, i64 3, i64 4, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 poison, i64 1], align 8
@switch.table.big2_nameLength = private unnamed_addr constant [25 x i64] [i64 2, i64 3, i64 4, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 poison, i64 2], align 8
@switch.table.big2_scanLit = private unnamed_addr constant [22 x i32] [i32 27, i32 27, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27], align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_INTERNAL_trim_to_complete_utf8_characters(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 5 uses
  %i.b = icmp ugt ptr %i.a, %0
  br i1 %i.b, label %.lr.ph.preheader, label %select.unfold

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.d, %i.c
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.01831 = phi ptr [ %i.f, %bb.k ], [ %i.a, %.lr.ph.preheader ] ; 5 uses
  %.01930 = phi i64 [ %i.y, %bb.k ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.f = getelementptr i8, ptr %.01831, i64 -1    ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13    ; 2 uses
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = and i32 %i.h, 248
  %i.j = icmp eq i32 %i.i, 240
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i64 %.01930, -3
  %i.l = icmp ult i64 %i.k, -4
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.01831, i64 3
  br label %select.unfold

bb.d:                                             ; preds = %.lr.ph
  %i.n = and i32 %i.h, 240
  %i.o = icmp eq i32 %i.n, 224
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = add i64 %.01930, -2
  %i.q = icmp ult i64 %i.p, -3
  br i1 %i.q, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %.01831, i64 2
  br label %select.unfold

bb.g:                                             ; preds = %bb.d
  %i.s = and i32 %i.h, 224
  %i.t = icmp eq i32 %i.s, 192
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %.01930, -1
  %i.v = icmp ult i64 %i.u, -2
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %.01831, i64 1
  br label %select.unfold

bb.j:                                             ; preds = %bb.g
  %i.x = icmp sgt i8 %i.g, -1
  br i1 %i.x, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e, %bb.b
  %.221.ph = phi i64 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.b ], [ %.01930, %bb.j ]
  %i.y = add i64 %.221.ph, 1
  %i.z = icmp ugt ptr %i.f, %0
  br i1 %i.z, label %.lr.ph, label %select.unfold, !llvm.loop !14

select.unfold:                                    ; preds = %bb.k, %bb.j, %bb.a, %bb.c, %bb.f, %bb.i
  %.2 = phi ptr [ %i.r, %bb.f ], [ %i.m, %bb.c ], [ %i.w, %bb.i ], [ %i.a, %bb.a ], [ %scevgep, %bb.k ], [ %.01831, %bb.j ]
  store ptr %.2, ptr %1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 0, 5) i32 @PyExpat_XmlUtf8Encode(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 128
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i32 %0 to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !13
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i32 %0, 2048
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = lshr i32 %0, 6
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, -64
  store i8 %i.g, ptr %1, align 1, !tbaa !13
  %i.h = trunc i32 %0 to i8
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128
  %i.k = getelementptr i8, ptr %1, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !13
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %0, 65536
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i32 %0, 12
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, -32
  store i8 %i.o, ptr %1, align 1, !tbaa !13
  %i.p = lshr i32 %0, 6
  %i.q = trunc i32 %i.p to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = getelementptr i8, ptr %1, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !13
  %i.u = trunc i32 %0 to i8
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = getelementptr i8, ptr %1, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.y = icmp samesign ult i32 %0, 1114112
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = lshr i32 %0, 6
  %i.aa = lshr i32 %0, 12
  %i.ab = lshr i32 %0, 18
  %i.ac = trunc i32 %0 to i8
  %i.ad = trunc i32 %i.z to i8
  %i.ae = trunc i32 %i.aa to i8
  %i.af = trunc nuw nsw i32 %i.ab to i8
  %i.ag = insertelement <4 x i8> poison, i8 %i.af, i64 0
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ae, i64 1
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ad, i64 2
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.ac, i64 3
  %i.ak = and <4 x i8> %i.aj, <i8 -1, i8 63, i8 63, i8 63>
  %i.al = or disjoint <4 x i8> %i.ak, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.al, ptr %1, align 1, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.g ], [ 4, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 0, 3) i32 @PyExpat_XmlUtf16Encode(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 65536
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i32 %0 to i16
  store i16 %i.c, ptr %1, align 2, !tbaa !16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i32 %0, 1114112
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = add nuw nsw i32 %0, 67043328
  %i.f = lshr i32 %i.e, 10
  %i.g = trunc i32 %i.f to i16
  %i.h = add nuw nsw i16 %i.g, -10240
  store i16 %i.h, ptr %1, align 2, !tbaa !16
  %i.i = trunc i32 %0 to i16
  %i.j = and i16 %i.i, 1023
  %i.k = or disjoint i16 %i.j, -9216
  %i.l = getelementptr i8, ptr %1, i64 2
  store i16 %i.k, ptr %i.l, align 2, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

end_hunk_0
begin_hunk_1_@normal_entityValueTok:bb.a
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 136        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %.05161 = phi ptr [ %1, %.lr.ph ], [ %i.ae, %bb.t ] ; 10 uses
  %i.f = load i8, ptr %.05161, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  switch i8 %i.i, label %bb.s [
    i8 5, label %bb.t
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 3, label %bb.f
    i8 30, label %bb.i
    i8 10, label %bb.l
    i8 9, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  br label %bb.t

bb.f:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %.05161, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %1, i64 1
  %i.l = tail call fastcc i32 @normal_scanRef(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  store ptr %.05161, ptr %3, align 8, !tbaa !10
  br label %bb.u

bb.i:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %.05161, %1
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr i8, ptr %1, i64 1
  %i.o = tail call fastcc i32 @normal_scanPercent(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %i.p = icmp eq i32 %i.o, 22
  %i.q = select i1 %i.p, i32 0, i32 %i.o
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  store ptr %.05161, ptr %3, align 8, !tbaa !10
  br label %bb.u

bb.l:                                             ; preds = %bb.c
  %i.r = icmp eq ptr %.05161, %1
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr i8, ptr %1, i64 1
  store ptr %i.s, ptr %3, align 8, !tbaa !10
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  store ptr %.05161, ptr %3, align 8, !tbaa !10
  br label %bb.u

bb.o:                                             ; preds = %bb.c
  %i.t = icmp eq ptr %.05161, %1
  br i1 %i.t, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.u = getelementptr i8, ptr %1, i64 1          ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.a, %i.v
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.y = load i8, ptr %i.u, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = icmp eq i8 %i.ab, 10
  %i.ad = getelementptr i8, ptr %1, i64 2
  %spec.select = select i1 %i.ac, ptr %i.ad, ptr %i.u
  store ptr %spec.select, ptr %3, align 8, !tbaa !10
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  store ptr %.05161, ptr %3, align 8, !tbaa !10
  br label %bb.u

bb.s:                                             ; preds = %bb.c
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.s, %bb.e, %bb.d
  %.sink = phi i64 [ 1, %bb.s ], [ 4, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ]
  %i.ae = getelementptr i8, ptr %.05161, i64 %.sink ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.a, %i.af
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.t
  store ptr %i.ae, ptr %3, align 8, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.b, %bb.a, %._crit_edge, %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g
  %.0 = phi i32 [ -4, %bb.a ], [ %i.l, %bb.g ], [ 6, %bb.h ], [ %i.q, %bb.j ], [ 6, %bb.k ], [ 7, %bb.m ], [ 6, %bb.n ], [ 7, %bb.q ], [ -1, %bb.b ], [ 6, %bb.r ], [ 6, %._crit_edge ], [ -3, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @normal_nameMatchesAscii(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #6 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !13      ; 2 uses
  %.not13 = icmp eq i8 %i.a, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %.loopexit, label %.lr.ph19

bb.b:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.l to i64
  %i.g = sub i64 %i.b, %i.f
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %.loopexit, label %.lr.ph19, !llvm.loop !80

.lr.ph19:                                         ; preds = %.lr.ph, %bb.b
  %.0101418 = phi ptr [ %i.l, %bb.b ], [ %1, %.lr.ph ] ; 2 uses
  %.01517 = phi ptr [ %i.m, %bb.b ], [ %3, %.lr.ph ]
  %i.i = phi i8 [ %i.n, %bb.b ], [ %i.a, %.lr.ph ]
  %i.j = load i8, ptr %.0101418, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, %i.i
  br i1 %i.k, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph19
  %i.l = getelementptr i8, ptr %.0101418, i64 1   ; 3 uses
  %i.m = getelementptr i8, ptr %.01517, i64 1     ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.010.lcssa = phi ptr [ %1, %bb.a ], [ %i.l, %bb.c ]
  %i.o = icmp eq ptr %.010.lcssa, %2
  %i.p = zext i1 %i.o to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.lr.ph19, %.lr.ph, %._crit_edge
  %.09 = phi i32 [ %i.p, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %.lr.ph19 ], [ 0, %bb.b ]
  ret i32 %.09
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal noundef i32 @normal_nameLength(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.l, %switch.lookup ] ; 3 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.e, -5              ; 3 uses
  %i.f = icmp ult i8 %switch.tableidx, 25
  br i1 %i.f, label %switch.hole_check, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b
  %i.g = ptrtoint ptr %.0 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 25034759, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.normal_nameLength, i64 %i.k
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.l = getelementptr i8, ptr %.0, i64 %switch.load
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal noundef ptr @normal_skipS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.f, %bb.c ]    ; 3 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  switch i8 %i.e, label %bb.d [
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 21, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.f = getelementptr i8, ptr %.0, i64 1
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @normal_getAtts(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.pn = phi ptr [ %1, %bb.a ], [ %.pn.be, %.backedge ] ; 7 uses
  %.094 = phi i32 [ 1, %bb.a ], [ %.094.be, %.backedge ] ; 17 uses
  %.092 = phi i32 [ 0, %bb.a ], [ %.092.be, %.backedge ] ; 50 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %.backedge ] ; 24 uses
  %.096 = getelementptr i8, ptr %.pn, i64 1       ; 32 uses
  %i.b = load i8, ptr %.096, align 1, !tbaa !13   ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  switch i8 %i.e, label %.backedge [
    i8 5, label %bb.c
    i8 6, label %bb.g
    i8 7, label %bb.k
    i8 29, label %bb.o
    i8 22, label %bb.o
    i8 24, label %bb.o
    i8 12, label %bb.r
    i8 13, label %bb.y
    i8 3, label %bb.af
    i8 21, label %bb.ah
    i8 9, label %bb.ao
    i8 10, label %bb.ao
    i8 11, label %bb.ar
    i8 17, label %bb.ar
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %.094, 0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = icmp slt i32 %.092, %2
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = sext i32 %.092 to i64
  %i.i = getelementptr [32 x i8], ptr %3, i64 %i.h ; 2 uses
  store ptr %.096, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr i8, ptr %i.i, i64 24
  store i8 1, ptr %i.j, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.195 = phi i32 [ %.094, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ]
  %i.k = getelementptr i8, ptr %.pn, i64 2
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.094, 0
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = icmp slt i32 %.092, %2
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = sext i32 %.092 to i64
  %i.o = getelementptr [32 x i8], ptr %3, i64 %i.n ; 2 uses
  store ptr %.096, ptr %i.o, align 8, !tbaa !81
  %i.p = getelementptr i8, ptr %i.o, i64 24
  store i8 1, ptr %i.p, align 8, !tbaa !83
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.2 = phi i32 [ %.094, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ]
  %i.q = getelementptr i8, ptr %.pn, i64 3
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %.094, 0
  br i1 %i.r, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.s = icmp slt i32 %.092, %2
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.t = sext i32 %.092 to i64
  %i.u = getelementptr [32 x i8], ptr %3, i64 %i.t ; 2 uses
  store ptr %.096, ptr %i.u, align 8, !tbaa !81
  %i.v = getelementptr i8, ptr %i.u, i64 24
  store i8 1, ptr %i.v, align 8, !tbaa !83
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.3 = phi i32 [ %.094, %bb.k ], [ 1, %bb.m ], [ 1, %bb.l ]
  %i.w = getelementptr i8, ptr %.pn, i64 4
  br label %.backedge

bb.o:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.x = icmp eq i32 %.094, 0
  br i1 %i.x, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.y = icmp slt i32 %.092, %2
  br i1 %i.y, label %bb.q, label %.backedge

bb.q:                                             ; preds = %bb.p
  %i.z = sext i32 %.092 to i64
  %i.aa = getelementptr [32 x i8], ptr %3, i64 %i.z ; 2 uses
  store ptr %.096, ptr %i.aa, align 8, !tbaa !81
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  store i8 1, ptr %i.ab, align 8, !tbaa !83
  br label %.backedge

bb.r:                                             ; preds = %bb.b
  %.not101 = icmp eq i32 %.094, 2
  br i1 %.not101, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = icmp slt i32 %.092, %2
  br i1 %i.ac, label %bb.t, label %.backedge

bb.t:                                             ; preds = %bb.s
  %i.ad = getelementptr i8, ptr %.pn, i64 2
  %i.ae = sext i32 %.092 to i64
  %i.af = getelementptr [32 x i8], ptr %3, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !84
  br label %.backedge

bb.u:                                             ; preds = %bb.r
  %i.ah = icmp eq i32 %.0, 12
  br i1 %i.ah, label %bb.v, label %.backedge

bb.v:                                             ; preds = %bb.u
  %i.ai = icmp slt i32 %.092, %2
  br i1 %i.ai, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aj = sext i32 %.092 to i64
  %i.ak = getelementptr [32 x i8], ptr %3, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  store ptr %.096, ptr %i.al, align 8, !tbaa !85
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.am = add i32 %.092, 1
  br label %.backedge

bb.y:                                             ; preds = %bb.b
  %.not100 = icmp eq i32 %.094, 2
  br i1 %.not100, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = icmp slt i32 %.092, %2
  br i1 %i.an, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %bb.z
  %i.ao = getelementptr i8, ptr %.pn, i64 2
  %i.ap = sext i32 %.092 to i64
  %i.aq = getelementptr [32 x i8], ptr %3, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !84
  br label %.backedge

bb.ab:                                            ; preds = %bb.y
  %i.as = icmp eq i32 %.0, 13
  br i1 %i.as, label %bb.ac, label %.backedge

bb.ac:                                            ; preds = %bb.ab
  %i.at = icmp slt i32 %.092, %2
  br i1 %i.at, label %bb.ad, label %bb.ae

end_hunk_1
begin_hunk_2_@latin1_toUtf8:bb.a
  %i.o = getelementptr i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %3, align 8, !tbaa !10
  store i8 %i.m, ptr %i.n, align 1, !tbaa !13
  %i.p = load ptr, ptr %1, align 8, !tbaa !10
  %i.q = getelementptr i8, ptr %i.p, i64 1        ; 2 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !10
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %i.f, %4
  br i1 %i.r, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.d, i64 1
  store ptr %i.s, ptr %1, align 8, !tbaa !10
  %i.t = load i8, ptr %i.d, align 1, !tbaa !13
  %i.u = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 1
  store ptr %i.v, ptr %3, align 8, !tbaa !10
  store i8 %i.t, ptr %i.u, align 1, !tbaa !13
  %.pre = load ptr, ptr %1, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.w = phi ptr [ %i.q, %bb.d ], [ %.pre, %bb.f ] ; 2 uses
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.c, %bb.a
  %.1.ph = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 2, %bb.c ], [ 2, %bb.e ]
  ret i32 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @latin1_toUtf16(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(address) %4) #9 {
bb.a:
  %.promoted = load ptr, ptr %1, align 8, !tbaa !10 ; 2 uses
  %i.a = icmp ult ptr %.promoted, %2
  br i1 %i.a, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %.promoted11 = load ptr, ptr %3, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.b = phi ptr [ %.promoted11, %.lr.ph ], [ %i.h, %bb.c ] ; 4 uses
  %i.c = phi ptr [ %.promoted, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %i.d = icmp ult ptr %i.b, %4
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 1        ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !10
  %i.f = load i8, ptr %i.c, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i16
  %i.h = getelementptr i8, ptr %i.b, i64 2        ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !36
  store i16 %i.g, ptr %i.b, align 2, !tbaa !16
  %exitcond.not = icmp eq ptr %i.e, %2
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !89

.critedge:                                        ; preds = %bb.b
  %i.i = icmp eq ptr %i.b, %4
  br i1 %i.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %.critedge
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ 2, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -27, 28) i32 @normal_scanLit(i32 noundef range(i32 12, 14) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 456
  %i.g = getelementptr i8, ptr %1, i64 448
  %i.h = getelementptr i8, ptr %1, i64 440
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %i.i = phi i64 [ %i.c, %.lr.ph ], [ %i.al, %bb.t ] ; 3 uses
  %.04369 = phi ptr [ %2, %.lr.ph ], [ %.245, %bb.t ] ; 13 uses
  %i.j = load i8, ptr %.04369, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.m, label %bb.s [
    i8 5, label %bb.c
    i8 6, label %bb.g
    i8 7, label %bb.k
    i8 0, label %bb.o
    i8 1, label %bb.o
    i8 8, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 1
  br i1 %i.n, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.p = tail call i32 %i.o(ptr noundef nonnull %1, ptr noundef nonnull %.04369) #13
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.04369, ptr %4, align 8, !tbaa !10
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.04369, i64 2
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i64 %i.i, 3
  br i1 %i.r, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.t = tail call i32 %i.s(ptr noundef nonnull %1, ptr noundef nonnull %.04369) #13
  %.not48 = icmp eq i32 %i.t, 0
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.04369, ptr %4, align 8, !tbaa !10
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %.04369, i64 3
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i64 %i.i, 4
  br i1 %i.v, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.x = tail call i32 %i.w(ptr noundef nonnull %1, ptr noundef nonnull %.04369) #13
  %.not47 = icmp eq i32 %i.x, 0
  br i1 %.not47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.04369, ptr %4, align 8, !tbaa !10
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %.04369, i64 4
  br label %bb.t

bb.o:                                             ; preds = %bb.b, %bb.b, %bb.b
  store ptr %.04369, ptr %4, align 8, !tbaa !10
  br label %.thread

bb.p:                                             ; preds = %bb.b, %bb.b
  %i.z = zext nneg i8 %i.m to i32
  %i.aa = getelementptr i8, ptr %.04369, i64 1    ; 4 uses
  %.not = icmp eq i32 %0, %i.z
  br i1 %.not, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.a, %i.ab
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  store ptr %i.aa, ptr %4, align 8, !tbaa !10
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.e, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.ah, -9             ; 2 uses
  %i.ai = icmp ult i8 %switch.tableidx, 22
  br i1 %i.ai, label %switch.lookup, label %.thread

bb.s:                                             ; preds = %bb.b
  %i.aj = getelementptr i8, ptr %.04369, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.j, %bb.n, %bb.s, %bb.p
  %.245 = phi ptr [ %i.aj, %bb.s ], [ %i.q, %bb.f ], [ %i.u, %bb.j ], [ %i.y, %bb.n ], [ %i.aa, %bb.p ] ; 2 uses
  %i.ak = ptrtoint ptr %.245 to i64
  %i.al = sub i64 %i.a, %i.ak                     ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %bb.b, label %.thread

switch.lookup:                                    ; preds = %bb.r
  %i.an = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.big2_scanLit, i64 %i.an
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.k, %bb.c, %bb.g, %bb.r, %switch.lookup, %bb.a, %bb.q, %bb.o, %bb.m, %bb.i, %bb.e
  %.2 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.r ], [ -1, %bb.a ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.m ], [ -27, %bb.q ], [ 0, %bb.o ], [ -1, %bb.t ], [ -2, %bb.k ], [ -2, %bb.c ], [ -2, %bb.g ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 34) i32 @normal_scanDecl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  switch i8 %i.i, label %bb.f [
    i8 27, label %bb.c
    i8 20, label %bb.d
    i8 22, label %bb.e
    i8 24, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = tail call fastcc i32 @normal_scanComment(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef %2, ptr noundef %3)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 1
  store ptr %i.l, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %bb.b
  %.02841 = getelementptr i8, ptr %1, i64 1       ; 2 uses
  %i.m = ptrtoint ptr %.02841 to i64
  %i.n = sub i64 %i.a, %i.m                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %bb.b
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %i.p = phi i64 [ %i.aa, %bb.j ], [ %i.n, %bb.e ]
  %.02843 = phi ptr [ %.028, %bb.j ], [ %.02841, %bb.e ] ; 6 uses
  %.pn42 = phi ptr [ %.02843, %bb.j ], [ %1, %bb.e ]
  %i.q = load i8, ptr %.02843, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  switch i8 %i.t, label %bb.k [
    i8 30, label %bb.g
    i8 21, label %.loopexit30
    i8 9, label %.loopexit30
    i8 10, label %.loopexit30
    i8 22, label %bb.j
    i8 24, label %bb.j
  ]

bb.g:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.p, 1
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %.pn42, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr i8, ptr %i.e, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  switch i8 %i.y, label %.loopexit30 [
    i8 21, label %bb.i
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 30, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  store ptr %.02843, ptr %3, align 8, !tbaa !10
  br label %.loopexit

.loopexit30:                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.h
  store ptr %.02843, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph, %.lr.ph
  %.028 = getelementptr i8, ptr %.02843, i64 1    ; 2 uses
  %i.z = ptrtoint ptr %.028 to i64
  %i.aa = sub i64 %i.a, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !90

bb.k:                                             ; preds = %.lr.ph
  store ptr %.02843, ptr %3, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.e, %bb.g, %bb.a, %bb.k, %.loopexit30, %bb.i, %bb.f, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ %i.k, %bb.c ], [ 33, %bb.d ], [ 0, %bb.k ], [ 16, %.loopexit30 ], [ 0, %bb.i ], [ -1, %bb.a ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @normal_scanPi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  switch i8 %i.j, label %bb.p [
    i8 29, label %bb.c
    i8 22, label %bb.q
    i8 24, label %bb.q
    i8 5, label %bb.d
    i8 6, label %bb.h
    i8 7, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.d, 1
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 440
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not146 = icmp eq i32 %i.n, 0
  br i1 %.not146, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 416
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not147 = icmp eq i32 %i.q, 0
  br i1 %.not147, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i64 %i.d, 3
  br i1 %i.r, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %0, i64 448
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not144 = icmp eq i32 %i.u, 0
  br i1 %.not144, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %0, i64 424
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = tail call i32 %i.w(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not145 = icmp eq i32 %i.x, 0
  br i1 %.not145, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.l:                                             ; preds = %bb.b
  %i.y = icmp samesign ult i64 %i.d, 4
  br i1 %i.y, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr i8, ptr %0, i64 456
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr i8, ptr %0, i64 432
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66
  %i.ae = tail call i32 %i.ad(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not143 = icmp eq i32 %i.ae, 0
  br i1 %.not143, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

end_hunk_2
begin_hunk_3_@little2_entityValueTok:bb.a
  %i.m = getelementptr i8, ptr %1, i64 2
  %i.n = tail call fastcc i32 @little2_scanRef(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.g:                                             ; preds = %unicode_byte_type.exit
  %i.o = icmp eq ptr %.05768, %1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 2
  %i.q = tail call fastcc i32 @little2_scanPercent(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %i.r = icmp eq i32 %i.q, 22
  %i.s = select i1 %i.r, i32 0, i32 %i.q
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.j:                                             ; preds = %unicode_byte_type.exit
  %i.t = icmp eq ptr %.05768, %1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr i8, ptr %1, i64 2
  store ptr %i.u, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.m:                                             ; preds = %unicode_byte_type.exit
  %i.v = icmp eq ptr %.05768, %1
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr i8, ptr %1, i64 2          ; 4 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.a, %i.x
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %1, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %cond = icmp eq i8 %i.ab, 0
  br i1 %cond, label %unicode_byte_type.exit62, label %unicode_byte_type.exit62.thread

unicode_byte_type.exit62:                         ; preds = %bb.o
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !13
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.e, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %.fr = freeze i8 %i.af
  %i.ag = icmp eq i8 %.fr, 10
  %i.ah = getelementptr i8, ptr %1, i64 4
  %spec.select = select i1 %i.ag, ptr %i.ah, ptr %i.w
  br label %unicode_byte_type.exit62.thread

unicode_byte_type.exit62.thread:                  ; preds = %unicode_byte_type.exit62, %bb.o
  %i.ai = phi ptr [ %i.w, %bb.o ], [ %spec.select, %unicode_byte_type.exit62 ]
  store ptr %i.ai, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

unicode_byte_type.exit.thread:                    ; preds = %bb.c, %unicode_byte_type.exit
  br label %bb.q

bb.q:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit.thread, %unicode_byte_type.exit.thread77
  %.sink = phi i64 [ 2, %unicode_byte_type.exit.thread ], [ 4, %unicode_byte_type.exit.thread77 ], [ 3, %unicode_byte_type.exit ]
  %i.aj = getelementptr i8, ptr %.05768, i64 %.sink ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.a, %i.ak
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.c, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.q
  store ptr %i.aj, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.b, %bb.a, %._crit_edge, %bb.p, %unicode_byte_type.exit62.thread, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e
  %.0 = phi i32 [ -4, %bb.a ], [ %i.n, %bb.e ], [ 6, %bb.f ], [ %i.s, %bb.h ], [ 6, %bb.i ], [ 7, %bb.k ], [ 6, %bb.l ], [ 7, %unicode_byte_type.exit62.thread ], [ -1, %bb.b ], [ 6, %bb.p ], [ 6, %._crit_edge ], [ -3, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @little2_nameMatchesAscii(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #6 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !13      ; 2 uses
  %.not14 = icmp eq i8 %i.a, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %.lr.ph20

bb.b:                                             ; preds = %bb.d
  %i.f = ptrtoint ptr %i.o to i64
  %i.g = sub i64 %i.b, %i.f
  %i.h = icmp slt i64 %i.g, 2
  br i1 %i.h, label %.loopexit, label %.lr.ph20, !llvm.loop !107

.lr.ph20:                                         ; preds = %.lr.ph, %bb.b
  %.0111519 = phi ptr [ %i.o, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01618 = phi ptr [ %i.p, %bb.b ], [ %3, %.lr.ph ]
  %i.i = phi i8 [ %i.q, %bb.b ], [ %i.a, %.lr.ph ]
  %i.j = getelementptr i8, ptr %.0111519, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph20
  %i.m = load i8, ptr %.0111519, align 1, !tbaa !13
  %i.n = icmp eq i8 %i.m, %i.i
  br i1 %i.n, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.0111519, i64 2   ; 3 uses
  %i.p = getelementptr i8, ptr %.01618, i64 1     ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 2 uses
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.011.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %bb.d ]
  %i.r = icmp eq ptr %.011.lcssa, %2
  %i.s = zext i1 %i.r to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.lr.ph20, %.lr.ph, %._crit_edge
  %.010 = phi i32 [ %i.s, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %.lr.ph20 ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @little2_nameLength(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.o, %bb.d ]    ; 5 uses
  %i.b = getelementptr i8, ptr %.0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  switch i8 %i.c, label %bb.d [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread14
    i8 -39, label %unicode_byte_type.exit.thread14
    i8 -38, label %unicode_byte_type.exit.thread14
    i8 -37, label %unicode_byte_type.exit.thread14
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %.0, align 1, !tbaa !13
  %switch.i = icmp ugt i8 %i.d, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %bb.d

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.e = load i8, ptr %.0, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr i8, ptr %i.a, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.h, -5              ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 25
  br i1 %i.i, label %switch.hole_check, label %unicode_byte_type.exit.thread

unicode_byte_type.exit.thread14:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

unicode_byte_type.exit.thread:                    ; preds = %switch.hole_check, %unicode_byte_type.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %i.j = ptrtoint ptr %.0 to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  ret i32 %i.m

switch.hole_check:                                ; preds = %unicode_byte_type.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 25034759, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %unicode_byte_type.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %i.n = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.big2_nameLength, i64 %i.n
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c, %unicode_byte_type.exit.thread14
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 4, %unicode_byte_type.exit.thread14 ], [ 2, %bb.c ], [ 2, %bb.b ]
  %i.o = getelementptr i8, ptr %.0, i64 %.sink
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal ptr @little2_skipS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = getelementptr i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %cond10 = icmp eq i8 %i.c, 0
  br i1 %cond10, label %unicode_byte_type.exit, label %unicode_byte_type.exit.thread

unicode_byte_type.exit:                           ; preds = %bb.a, %bb.b
  %.011 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]  ; 4 uses
  %i.d = load i8, ptr %.011, align 1, !tbaa !13
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  switch i8 %i.g, label %unicode_byte_type.exit.thread [
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 21, label %bb.b
  ]

bb.b:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.h = getelementptr i8, ptr %.011, i64 2       ; 2 uses
  %i.i = getelementptr i8, ptr %.011, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %cond = icmp eq i8 %i.j, 0
  br i1 %cond, label %unicode_byte_type.exit, label %unicode_byte_type.exit.thread

unicode_byte_type.exit.thread:                    ; preds = %unicode_byte_type.exit, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.011, %unicode_byte_type.exit ], [ %i.h, %bb.b ]
  ret ptr %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @little2_getAtts(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  br label %unicode_byte_type.exit115.thread

unicode_byte_type.exit115.thread:                 ; preds = %unicode_byte_type.exit115.thread.backedge, %bb.a
  %.pn = phi ptr [ %1, %bb.a ], [ %.pn.be, %unicode_byte_type.exit115.thread.backedge ] ; 7 uses
  %.0102 = phi i32 [ 1, %bb.a ], [ %.0102.be, %unicode_byte_type.exit115.thread.backedge ] ; 23 uses
  %.0100 = phi i32 [ 0, %bb.a ], [ %.0100.be, %unicode_byte_type.exit115.thread.backedge ] ; 61 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %unicode_byte_type.exit115.thread.backedge ] ; 35 uses
  %.0104 = getelementptr i8, ptr %.pn, i64 2      ; 44 uses
  %i.b = getelementptr i8, ptr %.pn, i64 3        ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  switch i8 %i.c, label %unicode_byte_type.exit.thread123 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread121
    i8 -39, label %unicode_byte_type.exit.thread121
    i8 -38, label %unicode_byte_type.exit.thread121
    i8 -37, label %unicode_byte_type.exit.thread121
    i8 -36, label %unicode_byte_type.exit115.thread.backedge
    i8 -35, label %unicode_byte_type.exit115.thread.backedge
    i8 -34, label %unicode_byte_type.exit115.thread.backedge
    i8 -33, label %unicode_byte_type.exit115.thread.backedge
    i8 -1, label %bb.b
  ]

unicode_byte_type.exit115.thread.backedge:        ; preds = %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %bb.b, %bb.ai, %bb.al, %bb.am, %.fold.split112, %bb.ad, %bb.v, %bb.w, %bb.o, %bb.p, %bb.l, %bb.m, %bb.f, %bb.h, %bb.g, %bb.c, %bb.e, %bb.d, %bb.k, %unicode_byte_type.exit.thread123, %bb.q, %bb.t, %bb.x, %bb.aa, %bb.ac, %bb.ab, %bb.ae, %bb.af, %unicode_byte_type.exit115, %.critedge, %bb.an, %bb.ao, %bb.ap, %unicode_byte_type.exit
  %.pn.be = phi ptr [ %.0104, %unicode_byte_type.exit ], [ %.0104, %bb.ap ], [ %.0104, %bb.c ], [ %i.y, %bb.k ], [ %i.b, %bb.f ], [ %.0104, %unicode_byte_type.exit.thread123 ], [ %.0104, %bb.l ], [ %.0104, %bb.t ], [ %.0104, %bb.q ], [ %.0104, %bb.o ], [ %.0104, %bb.aa ], [ %.0104, %bb.x ], [ %.0104, %bb.ac ], [ %.0104, %bb.ab ], [ %.0104, %bb.v ], [ %.0104, %.critedge ], [ %.0104, %unicode_byte_type.exit115 ], [ %.0104, %bb.af ], [ %.0104, %bb.ae ], [ %.0104, %bb.ad ], [ %.0104, %unicode_byte_type.exit115.thread ], [ %.0104, %bb.ao ], [ %.0104, %bb.an ], [ %.0104, %bb.am ], [ %.0104, %bb.d ], [ %.0104, %bb.e ], [ %i.b, %bb.g ], [ %i.b, %bb.h ], [ %.0104, %bb.m ], [ %.0104, %bb.p ], [ %.0104, %bb.w ], [ %.0104, %.fold.split112 ], [ %.0104, %bb.al ], [ %.0104, %bb.ai ], [ %.0104, %bb.b ], [ %.0104, %unicode_byte_type.exit115.thread ], [ %.0104, %unicode_byte_type.exit115.thread ], [ %.0104, %unicode_byte_type.exit115.thread ]
  %.0102.be = phi i32 [ %.0102, %unicode_byte_type.exit ], [ 2, %bb.ap ], [ %.0102, %bb.c ], [ %.3, %bb.k ], [ %.0102, %bb.f ], [ %.0102, %unicode_byte_type.exit.thread123 ], [ 1, %bb.l ], [ 0, %bb.t ], [ 2, %bb.q ], [ 2, %bb.o ], [ 0, %bb.aa ], [ 2, %bb.x ], [ %.0102, %bb.ac ], [ %.0102, %bb.ab ], [ 2, %bb.v ], [ 2, %.critedge ], [ 2, %unicode_byte_type.exit115 ], [ 2, %bb.af ], [ 2, %bb.ae ], [ 0, %bb.ad ], [ %.0102, %unicode_byte_type.exit115.thread ], [ 2, %bb.ao ], [ 2, %bb.an ], [ 0, %bb.am ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.m ], [ 2, %bb.p ], [ 2, %bb.w ], [ %.0102, %.fold.split112 ], [ 2, %bb.al ], [ 2, %bb.ai ], [ %.0102, %bb.b ], [ %.0102, %unicode_byte_type.exit115.thread ], [ %.0102, %unicode_byte_type.exit115.thread ], [ %.0102, %unicode_byte_type.exit115.thread ]
  %.0100.be = phi i32 [ %.0100, %unicode_byte_type.exit ], [ %.0100, %bb.ap ], [ %.0100, %bb.c ], [ %.0100, %bb.k ], [ %.0100, %bb.f ], [ %.0100, %unicode_byte_type.exit.thread123 ], [ %.0100, %bb.l ], [ %i.an, %bb.t ], [ %.0100, %bb.q ], [ %.0100, %bb.o ], [ %i.ay, %bb.aa ], [ %.0100, %bb.x ], [ %.0100, %bb.ac ], [ %.0100, %bb.ab ], [ %.0100, %bb.v ], [ %.0100, %.critedge ], [ %.0100, %unicode_byte_type.exit115 ], [ %.0100, %bb.af ], [ %.0100, %bb.ae ], [ %.0100, %bb.ad ], [ %.0100, %unicode_byte_type.exit115.thread ], [ %.0100, %bb.ao ], [ %.0100, %bb.an ], [ %.0100, %bb.am ], [ %.0100, %bb.d ], [ %.0100, %bb.e ], [ %.0100, %bb.g ], [ %.0100, %bb.h ], [ %.0100, %bb.m ], [ %.0100, %bb.p ], [ %.0100, %bb.w ], [ %.0100, %.fold.split112 ], [ %.0100, %bb.al ], [ %.0100, %bb.ai ], [ %.0100, %bb.b ], [ %.0100, %unicode_byte_type.exit115.thread ], [ %.0100, %unicode_byte_type.exit115.thread ], [ %.0100, %unicode_byte_type.exit115.thread ]
  %.0.be = phi i32 [ %.0, %unicode_byte_type.exit ], [ %.0, %bb.ap ], [ %.0, %bb.c ], [ %.0, %bb.k ], [ %.0, %bb.f ], [ %.0, %unicode_byte_type.exit.thread123 ], [ %.0, %bb.l ], [ 12, %bb.t ], [ %.0, %bb.q ], [ 12, %bb.o ], [ 13, %bb.aa ], [ %.0, %bb.x ], [ %.0, %bb.ac ], [ %.0, %bb.ab ], [ 13, %bb.v ], [ %.0, %.critedge ], [ %.0, %unicode_byte_type.exit115 ], [ %.0, %bb.af ], [ %.0, %bb.ae ], [ %.0, %bb.ad ], [ %.0, %unicode_byte_type.exit115.thread ], [ %.0, %bb.ao ], [ %.0, %bb.an ], [ %.0, %bb.am ], [ %.0, %bb.d ], [ %.0, %bb.e ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %.0, %bb.m ], [ 12, %bb.p ], [ 13, %bb.w ], [ %.0, %.fold.split112 ], [ %.0, %bb.al ], [ %.0, %bb.ai ], [ %.0, %bb.b ], [ %.0, %unicode_byte_type.exit115.thread ], [ %.0, %unicode_byte_type.exit115.thread ], [ %.0, %unicode_byte_type.exit115.thread ]
  br label %unicode_byte_type.exit115.thread

bb.b:                                             ; preds = %unicode_byte_type.exit115.thread
  %i.d = load i8, ptr %.0104, align 1, !tbaa !13
  %switch.i = icmp ult i8 %i.d, -2
  %i.e = icmp eq i32 %.0102, 0
  %or.cond = select i1 %switch.i, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.l, label %unicode_byte_type.exit115.thread.backedge

unicode_byte_type.exit:                           ; preds = %unicode_byte_type.exit115.thread
  %i.f = load i8, ptr %.0104, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  switch i8 %i.i, label %unicode_byte_type.exit115.thread.backedge [
    i8 5, label %bb.c
    i8 6, label %bb.f
    i8 7, label %unicode_byte_type.exit.thread121
    i8 29, label %unicode_byte_type.exit.thread123
    i8 22, label %unicode_byte_type.exit.thread123
    i8 24, label %unicode_byte_type.exit.thread123
    i8 12, label %bb.n
    i8 13, label %bb.u
    i8 3, label %bb.ab
    i8 21, label %bb.ad
    i8 9, label %bb.am
    i8 10, label %bb.am
    i8 11, label %bb.ap
    i8 17, label %bb.ap
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.j = icmp eq i32 %.0102, 0
  br i1 %i.j, label %bb.d, label %unicode_byte_type.exit115.thread.backedge

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %.0100, %2
  br i1 %i.k, label %bb.e, label %unicode_byte_type.exit115.thread.backedge

bb.e:                                             ; preds = %bb.d
  %i.l = sext i32 %.0100 to i64
  %i.m = getelementptr [32 x i8], ptr %3, i64 %i.l ; 2 uses
  store ptr %.0104, ptr %i.m, align 8, !tbaa !81
  %i.n = getelementptr i8, ptr %i.m, i64 24
  store i8 1, ptr %i.n, align 8, !tbaa !83
  br label %unicode_byte_type.exit115.thread.backedge

bb.f:                                             ; preds = %unicode_byte_type.exit
  %i.o = icmp eq i32 %.0102, 0
  br i1 %i.o, label %bb.g, label %unicode_byte_type.exit115.thread.backedge

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i32 %.0100, %2
  br i1 %i.p, label %bb.h, label %unicode_byte_type.exit115.thread.backedge

bb.h:                                             ; preds = %bb.g
  %i.q = sext i32 %.0100 to i64
  %i.r = getelementptr [32 x i8], ptr %3, i64 %i.q ; 2 uses
  store ptr %.0104, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr i8, ptr %i.r, i64 24
  store i8 1, ptr %i.s, align 8, !tbaa !83
  br label %unicode_byte_type.exit115.thread.backedge

unicode_byte_type.exit.thread121:                 ; preds = %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit
  %i.t = icmp eq i32 %.0102, 0
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %unicode_byte_type.exit.thread121
  %i.u = icmp slt i32 %.0100, %2
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = sext i32 %.0100 to i64
  %i.w = getelementptr [32 x i8], ptr %3, i64 %i.v ; 2 uses
  store ptr %.0104, ptr %i.w, align 8, !tbaa !81
  %i.x = getelementptr i8, ptr %i.w, i64 24
  store i8 1, ptr %i.x, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %unicode_byte_type.exit.thread121
  %.3 = phi i32 [ %.0102, %unicode_byte_type.exit.thread121 ], [ 1, %bb.j ], [ 1, %bb.i ]
  %i.y = getelementptr i8, ptr %.pn, i64 4
  br label %unicode_byte_type.exit115.thread.backedge

unicode_byte_type.exit.thread123:                 ; preds = %unicode_byte_type.exit115.thread, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  %.old = icmp eq i32 %.0102, 0
  br i1 %.old, label %bb.l, label %unicode_byte_type.exit115.thread.backedge

bb.l:                                             ; preds = %bb.b, %unicode_byte_type.exit.thread123
  %i.z = icmp slt i32 %.0100, %2
  br i1 %i.z, label %bb.m, label %unicode_byte_type.exit115.thread.backedge

bb.m:                                             ; preds = %bb.l
  %i.aa = sext i32 %.0100 to i64
  %i.ab = getelementptr [32 x i8], ptr %3, i64 %i.aa ; 2 uses
  store ptr %.0104, ptr %i.ab, align 8, !tbaa !81
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ac, align 8, !tbaa !83
  br label %unicode_byte_type.exit115.thread.backedge

bb.n:                                             ; preds = %unicode_byte_type.exit
  %.not109 = icmp eq i32 %.0102, 2
  br i1 %.not109, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp slt i32 %.0100, %2
  br i1 %i.ad, label %bb.p, label %unicode_byte_type.exit115.thread.backedge

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr i8, ptr %.pn, i64 4
  %i.af = sext i32 %.0100 to i64
  %i.ag = getelementptr [32 x i8], ptr %3, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !84
  br label %unicode_byte_type.exit115.thread.backedge

bb.q:                                             ; preds = %bb.n
  %i.ai = icmp eq i32 %.0, 12
  br i1 %i.ai, label %bb.r, label %unicode_byte_type.exit115.thread.backedge

bb.r:                                             ; preds = %bb.q
  %i.aj = icmp slt i32 %.0100, %2
  br i1 %i.aj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ak = sext i32 %.0100 to i64
  %i.al = getelementptr [32 x i8], ptr %3, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 16
  store ptr %.0104, ptr %i.am, align 8, !tbaa !85
  br label %bb.t

end_hunk_3
begin_hunk_4_@little2_toUtf8:bb.a
  store ptr %i.ch, ptr %3, align 8, !tbaa !10
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !13
  %i.ci = and i8 %i.bv, 63
  %i.cj = or disjoint i8 %i.ci, -128
  %i.ck = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %3, align 8, !tbaa !10
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.e
  %.268 = phi ptr [ %i.bu, %bb.l ], [ %.06679, %bb.i ], [ %.06679, %bb.e ], [ %.06679, %bb.g ]
  %i.cm = getelementptr i8, ptr %.268, i64 2      ; 3 uses
  %i.cn = icmp ult ptr %i.cm, %i.f
  br i1 %i.cn, label %bb.b, label %.thread, !llvm.loop !112

.thread:                                          ; preds = %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.a
  %.06679.lcssa.sink = phi ptr [ %i.a, %bb.a ], [ %.06679, %bb.h ], [ %.06679, %bb.d ], [ %.06679, %bb.k ], [ %.06679, %bb.j ], [ %.06679, %bb.f ], [ %i.cm, %bb.m ]
  %.2 = phi i32 [ 0, %bb.a ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.f ], [ 0, %bb.m ]
  store ptr %.06679.lcssa.sink, ptr %1, align 8, !tbaa !10
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @little2_toUtf16(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 4 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.h = ptrtoint ptr %4 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp sgt i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = and i8 %i.m, -8
  %i.o = icmp eq i8 %i.n, -40                     ; 2 uses
  %spec.select.idx = select i1 %i.o, i64 -2, i64 0
  %spec.select = getelementptr i8, ptr %i.f, i64 %spec.select.idx
  %spec.select26 = zext i1 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %i.f, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select26, %bb.b ]
  %i.p = icmp ult ptr %i.a, %.023
  br i1 %i.p, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.u, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.r = phi ptr [ %i.v, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.s = icmp ult ptr %i.q, %4
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.t = load i16, ptr %i.r, align 1
  %i.u = getelementptr i8, ptr %i.q, i64 2        ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !36
  store i16 %i.t, ptr %i.q, align 2, !tbaa !16
  %i.v = getelementptr i8, ptr %i.r, i64 2        ; 3 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !10
  %i.w = icmp ult ptr %i.v, %.023
  br i1 %i.w, label %.lr.ph, label %.thread, !llvm.loop !113

.critedge:                                        ; preds = %.lr.ph
  %i.x = icmp eq ptr %i.q, %4
  br i1 %i.x, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.critedge
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.thread
  %.022 = phi i32 [ %.0, %.thread ], [ 2, %.critedge ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -27, 28) i32 @little2_scanLit(i32 noundef range(i32 12, 14) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 136        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ag, %bb.k ] ; 2 uses
  %.03457 = phi ptr [ %2, %.lr.ph ], [ %.236, %bb.k ] ; 10 uses
  %i.g = getelementptr i8, ptr %.03457, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  switch i8 %i.h, label %unicode_byte_type.exit.thread44 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread47
    i8 -39, label %unicode_byte_type.exit.thread47
    i8 -38, label %unicode_byte_type.exit.thread47
    i8 -37, label %unicode_byte_type.exit.thread47
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.03457, align 1, !tbaa !13
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread44

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = load i8, ptr %.03457, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.m, label %unicode_byte_type.exit.thread44 [
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %unicode_byte_type.exit.thread47
    i8 0, label %unicode_byte_type.exit.thread
    i8 1, label %unicode_byte_type.exit.thread
    i8 8, label %unicode_byte_type.exit.thread
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.n = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.e:                                             ; preds = %unicode_byte_type.exit
  %i.o = icmp eq i64 %i.f, 2
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.03457, i64 3
  br label %bb.k

unicode_byte_type.exit.thread47:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %unicode_byte_type.exit
  %i.q = icmp samesign ult i64 %i.f, 4
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %unicode_byte_type.exit.thread47
  %i.r = getelementptr i8, ptr %.03457, i64 4
  br label %bb.k

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  store ptr %.03457, ptr %4, align 8, !tbaa !10
  br label %.thread

bb.h:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.s = zext nneg i8 %i.m to i32
  %i.t = getelementptr i8, ptr %.03457, i64 2     ; 4 uses
  %.not = icmp eq i32 %0, %i.s
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.a, %i.u
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.t, ptr %4, align 8, !tbaa !10
  %i.x = getelementptr i8, ptr %.03457, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %cond = icmp eq i8 %i.y, 0
  br i1 %cond, label %unicode_byte_type.exit42, label %.thread

unicode_byte_type.exit42:                         ; preds = %bb.j
  %i.z = load i8, ptr %i.t, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr %i.e, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.ac, -9             ; 2 uses
  %i.ad = icmp ult i8 %switch.tableidx, 22
  br i1 %i.ad, label %switch.lookup, label %.thread

unicode_byte_type.exit.thread44:                  ; preds = %bb.b, %bb.c, %unicode_byte_type.exit
  %i.ae = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.g, %unicode_byte_type.exit.thread44, %bb.h
  %.236 = phi ptr [ %i.t, %bb.h ], [ %i.ae, %unicode_byte_type.exit.thread44 ], [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %i.af = ptrtoint ptr %.236 to i64
  %i.ag = sub i64 %i.a, %i.af                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.b, label %.thread

switch.lookup:                                    ; preds = %unicode_byte_type.exit42
  %i.ai = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.big2_scanLit, i64 %i.ai
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread

.thread:                                          ; preds = %bb.k, %unicode_byte_type.exit.thread47, %bb.e, %bb.j, %unicode_byte_type.exit42, %switch.lookup, %bb.a, %unicode_byte_type.exit.thread, %bb.i
  %.2 = phi i32 [ -27, %bb.i ], [ %switch.load, %switch.lookup ], [ 0, %bb.j ], [ -1, %bb.a ], [ 0, %unicode_byte_type.exit.thread ], [ 0, %unicode_byte_type.exit42 ], [ -1, %bb.k ], [ -2, %unicode_byte_type.exit.thread47 ], [ -2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -2, 34) i32 @little2_scanDecl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %cond = icmp eq i8 %i.f, 0
  br i1 %cond, label %unicode_byte_type.exit, label %unicode_byte_type.exit.thread

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 136
  %i.h = load i8, ptr %1, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  switch i8 %i.k, label %unicode_byte_type.exit.thread [
    i8 27, label %bb.c
    i8 20, label %bb.d
    i8 22, label %bb.e
    i8 24, label %bb.e
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.l = getelementptr i8, ptr %1, i64 2
  %i.m = tail call fastcc i32 @little2_scanComment(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef %2, ptr noundef %3)
  br label %.loopexit

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.n = getelementptr i8, ptr %1, i64 2
  store ptr %i.n, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.e:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %.03758 = getelementptr i8, ptr %1, i64 2       ; 2 uses
  %i.o = ptrtoint ptr %.03758 to i64
  %i.p = sub i64 %i.a, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 136        ; 2 uses
  br label %bb.f

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %unicode_byte_type.exit
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.s = phi i64 [ %i.p, %.lr.ph ], [ %i.ai, %bb.j ]
  %.03760 = phi ptr [ %.03758, %.lr.ph ], [ %.037, %bb.j ] ; 6 uses
  %.pn59 = phi ptr [ %1, %.lr.ph ], [ %.03760, %bb.j ] ; 3 uses
  %i.t = getelementptr i8, ptr %.pn59, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %cond90 = icmp eq i8 %i.u, 0
  br i1 %cond90, label %unicode_byte_type.exit43, label %unicode_byte_type.exit43.thread

unicode_byte_type.exit43:                         ; preds = %bb.f
  %i.v = load i8, ptr %.03760, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr i8, ptr %i.r, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  switch i8 %i.y, label %unicode_byte_type.exit43.thread [
    i8 30, label %bb.g
    i8 21, label %.loopexit47
    i8 9, label %.loopexit47
    i8 10, label %.loopexit47
    i8 22, label %bb.j
    i8 24, label %bb.j
  ]

bb.g:                                             ; preds = %unicode_byte_type.exit43
  %i.z = icmp samesign ugt i64 %i.s, 3
  br i1 %i.z, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %.pn59, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %cond91 = icmp eq i8 %i.ab, 0
  br i1 %cond91, label %unicode_byte_type.exit46, label %.loopexit47

unicode_byte_type.exit46:                         ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %.pn59, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  switch i8 %i.ag, label %.loopexit47 [
    i8 21, label %bb.i
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 30, label %bb.i
  ]

bb.i:                                             ; preds = %unicode_byte_type.exit46, %unicode_byte_type.exit46, %unicode_byte_type.exit46, %unicode_byte_type.exit46
  store ptr %.03760, ptr %3, align 8, !tbaa !10
  br label %.loopexit

.loopexit47:                                      ; preds = %unicode_byte_type.exit43, %unicode_byte_type.exit43, %unicode_byte_type.exit43, %bb.h, %unicode_byte_type.exit46
  store ptr %.03760, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.j:                                             ; preds = %unicode_byte_type.exit43, %unicode_byte_type.exit43
  %.037 = getelementptr i8, ptr %.03760, i64 2    ; 2 uses
  %i.ah = ptrtoint ptr %.037 to i64
  %i.ai = sub i64 %i.a, %i.ah                     ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !114

unicode_byte_type.exit43.thread:                  ; preds = %bb.f, %unicode_byte_type.exit43
  store ptr %.03760, ptr %3, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.e, %bb.g, %bb.a, %unicode_byte_type.exit43.thread, %.loopexit47, %bb.i, %unicode_byte_type.exit.thread, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %unicode_byte_type.exit.thread ], [ %i.m, %bb.c ], [ 33, %bb.d ], [ 0, %unicode_byte_type.exit43.thread ], [ 16, %.loopexit47 ], [ 0, %bb.i ], [ -1, %bb.a ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @little2_scanPi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13    ; 3 uses
  %i.h = icmp ne i8 %i.g, 0                       ; 2 uses
  br i1 %i.h, label %bb.c, label %unicode_byte_type.exit

bb.c:                                             ; preds = %bb.b
  switch i8 %i.g, label %unicode_byte_type.exit.thread201 [
    i8 -40, label %unicode_byte_type.exit.thread204
    i8 -39, label %unicode_byte_type.exit.thread204
    i8 -38, label %unicode_byte_type.exit.thread204
    i8 -37, label %unicode_byte_type.exit.thread204
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %1, align 1, !tbaa !13
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread201

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 136
  %i.k = load i8, ptr %1, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  switch i8 %i.n, label %unicode_byte_type.exit.thread [
    i8 29, label %unicode_byte_type.exit.thread201
    i8 22, label %bb.f
    i8 24, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %unicode_byte_type.exit.thread204
  ]

unicode_byte_type.exit.thread201:                 ; preds = %bb.d, %bb.c, %unicode_byte_type.exit
  %i.o = zext i8 %i.g to i64
  %i.p = getelementptr i8, ptr @nmstrtPages, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 3
  %i.t = load i8, ptr %1, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = lshr i32 %i.u, 5
  %i.w = or disjoint i32 %i.v, %i.s
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !6
  %i.aa = and i32 %i.u, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %unicode_byte_type.exit.thread201
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.f:                                             ; preds = %unicode_byte_type.exit.thread201, %unicode_byte_type.exit, %unicode_byte_type.exit
end_hunk_4
begin_hunk_5_@big2_entityValueTok:bb.a
  %i.n = tail call fastcc i32 @big2_scanRef(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.g:                                             ; preds = %unicode_byte_type.exit
  %i.o = icmp eq ptr %.05768, %1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 2
  %i.q = tail call fastcc i32 @big2_scanPercent(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %i.r = icmp eq i32 %i.q, 22
  %i.s = select i1 %i.r, i32 0, i32 %i.q
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.j:                                             ; preds = %unicode_byte_type.exit
  %i.t = icmp eq ptr %.05768, %1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr i8, ptr %1, i64 2
  store ptr %i.u, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.m:                                             ; preds = %unicode_byte_type.exit
  %i.v = icmp eq ptr %.05768, %1
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr i8, ptr %1, i64 2          ; 4 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.a, %i.x
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !13
  %cond = icmp eq i8 %i.aa, 0
  br i1 %cond, label %unicode_byte_type.exit62, label %unicode_byte_type.exit62.thread

unicode_byte_type.exit62:                         ; preds = %bb.o
  %i.ab = getelementptr i8, ptr %1, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.e, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %.fr = freeze i8 %i.af
  %i.ag = icmp eq i8 %.fr, 10
  %i.ah = getelementptr i8, ptr %1, i64 4
  %spec.select = select i1 %i.ag, ptr %i.ah, ptr %i.w
  br label %unicode_byte_type.exit62.thread

unicode_byte_type.exit62.thread:                  ; preds = %unicode_byte_type.exit62, %bb.o
  %i.ai = phi ptr [ %i.w, %bb.o ], [ %spec.select, %unicode_byte_type.exit62 ]
  store ptr %i.ai, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  store ptr %.05768, ptr %3, align 8, !tbaa !10
  br label %bb.r

unicode_byte_type.exit.thread:                    ; preds = %bb.c, %unicode_byte_type.exit
  br label %bb.q

bb.q:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit.thread, %unicode_byte_type.exit.thread77
  %.sink = phi i64 [ 2, %unicode_byte_type.exit.thread ], [ 4, %unicode_byte_type.exit.thread77 ], [ 3, %unicode_byte_type.exit ]
  %i.aj = getelementptr i8, ptr %.05768, i64 %.sink ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.a, %i.ak
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.c, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.q
  store ptr %i.aj, ptr %3, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.b, %bb.a, %._crit_edge, %bb.p, %unicode_byte_type.exit62.thread, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e
  %.0 = phi i32 [ -4, %bb.a ], [ %i.n, %bb.e ], [ 6, %bb.f ], [ %i.s, %bb.h ], [ 6, %bb.i ], [ 7, %bb.k ], [ 6, %bb.l ], [ 7, %unicode_byte_type.exit62.thread ], [ -1, %bb.b ], [ 6, %bb.p ], [ 6, %._crit_edge ], [ -3, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @big2_nameMatchesAscii(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #6 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !13      ; 2 uses
  %.not14 = icmp eq i8 %i.a, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %.lr.ph20

bb.b:                                             ; preds = %bb.d
  %i.f = ptrtoint ptr %i.o to i64
  %i.g = sub i64 %i.b, %i.f
  %i.h = icmp slt i64 %i.g, 2
  br i1 %i.h, label %.loopexit, label %.lr.ph20, !llvm.loop !135

.lr.ph20:                                         ; preds = %.lr.ph, %bb.b
  %.0111519 = phi ptr [ %i.o, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01618 = phi ptr [ %i.p, %bb.b ], [ %3, %.lr.ph ]
  %i.i = phi i8 [ %i.q, %bb.b ], [ %i.a, %.lr.ph ]
  %i.j = load i8, ptr %.0111519, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph20
  %i.l = getelementptr i8, ptr %.0111519, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = icmp eq i8 %i.m, %i.i
  br i1 %i.n, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.0111519, i64 2   ; 3 uses
  %i.p = getelementptr i8, ptr %.01618, i64 1     ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 2 uses
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.011.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %bb.d ]
  %i.r = icmp eq ptr %.011.lcssa, %2
  %i.s = zext i1 %i.r to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.lr.ph20, %.lr.ph, %._crit_edge
  %.010 = phi i32 [ %i.s, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %.lr.ph20 ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal noundef i32 @big2_nameLength(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.d ]    ; 5 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !13
  switch i8 %i.b, label %bb.d [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread14
    i8 -39, label %unicode_byte_type.exit.thread14
    i8 -38, label %unicode_byte_type.exit.thread14
    i8 -37, label %unicode_byte_type.exit.thread14
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %switch.i = icmp ugt i8 %i.d, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %bb.d

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.i, -5              ; 3 uses
  %i.j = icmp ult i8 %switch.tableidx, 25
  br i1 %i.j, label %switch.hole_check, label %unicode_byte_type.exit.thread

unicode_byte_type.exit.thread14:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

unicode_byte_type.exit.thread:                    ; preds = %switch.hole_check, %unicode_byte_type.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %i.k = ptrtoint ptr %.0 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  ret i32 %i.n

switch.hole_check:                                ; preds = %unicode_byte_type.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 25034759, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %unicode_byte_type.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %i.o = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.big2_nameLength, i64 %i.o
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c, %unicode_byte_type.exit.thread14
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 4, %unicode_byte_type.exit.thread14 ], [ 2, %bb.c ], [ 2, %bb.b ]
  %i.p = getelementptr i8, ptr %.0, i64 %.sink
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal noundef ptr @big2_skipS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %cond10 = icmp eq i8 %i.b, 0
  br i1 %cond10, label %unicode_byte_type.exit, label %unicode_byte_type.exit.thread

unicode_byte_type.exit:                           ; preds = %bb.a, %bb.b
  %.011 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.c = getelementptr i8, ptr %.011, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  switch i8 %i.g, label %unicode_byte_type.exit.thread [
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 21, label %bb.b
  ]

bb.b:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.h = getelementptr i8, ptr %.011, i64 2       ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %cond = icmp eq i8 %i.i, 0
  br i1 %cond, label %unicode_byte_type.exit, label %unicode_byte_type.exit.thread

unicode_byte_type.exit.thread:                    ; preds = %unicode_byte_type.exit, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.011, %unicode_byte_type.exit ], [ %i.h, %bb.b ]
  ret ptr %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @big2_getAtts(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  br label %unicode_byte_type.exit115.thread

unicode_byte_type.exit115.thread:                 ; preds = %unicode_byte_type.exit115.thread.backedge, %bb.a
  %.pn = phi ptr [ %1, %bb.a ], [ %.pn.be, %unicode_byte_type.exit115.thread.backedge ] ; 11 uses
  %.0102 = phi i32 [ 1, %bb.a ], [ %.0102.be, %unicode_byte_type.exit115.thread.backedge ] ; 23 uses
  %.0100 = phi i32 [ 0, %bb.a ], [ %.0100.be, %unicode_byte_type.exit115.thread.backedge ] ; 59 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %unicode_byte_type.exit115.thread.backedge ] ; 33 uses
  %.0104 = getelementptr i8, ptr %.pn, i64 2      ; 42 uses
  %i.b = load i8, ptr %.0104, align 1, !tbaa !13
  switch i8 %i.b, label %unicode_byte_type.exit.thread123 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread121
    i8 -39, label %unicode_byte_type.exit.thread121
    i8 -38, label %unicode_byte_type.exit.thread121
    i8 -37, label %unicode_byte_type.exit.thread121
    i8 -36, label %unicode_byte_type.exit115.thread.backedge
    i8 -35, label %unicode_byte_type.exit115.thread.backedge
    i8 -34, label %unicode_byte_type.exit115.thread.backedge
    i8 -33, label %unicode_byte_type.exit115.thread.backedge
    i8 -1, label %bb.b
  ]

unicode_byte_type.exit115.thread.backedge:        ; preds = %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %bb.b, %bb.aj, %bb.am, %bb.an, %.fold.split112, %bb.ae, %bb.w, %bb.x, %bb.p, %bb.q, %bb.m, %bb.n, %bb.c, %bb.e, %bb.d, %bb.i, %bb.l, %unicode_byte_type.exit.thread123, %bb.r, %bb.u, %bb.y, %bb.ab, %bb.ad, %bb.ac, %bb.af, %bb.ag, %unicode_byte_type.exit115, %.critedge, %bb.ao, %bb.ap, %bb.aq, %unicode_byte_type.exit
  %.pn.be = phi ptr [ %.0104, %unicode_byte_type.exit ], [ %.0104, %bb.aq ], [ %i.u, %bb.i ], [ %i.aa, %bb.l ], [ %.0104, %bb.c ], [ %.0104, %unicode_byte_type.exit.thread123 ], [ %.0104, %bb.m ], [ %.0104, %bb.u ], [ %.0104, %bb.r ], [ %.0104, %bb.p ], [ %.0104, %bb.ab ], [ %.0104, %bb.y ], [ %.0104, %bb.ad ], [ %.0104, %bb.ac ], [ %.0104, %bb.w ], [ %.0104, %.critedge ], [ %.0104, %unicode_byte_type.exit115 ], [ %.0104, %bb.ag ], [ %.0104, %bb.af ], [ %.0104, %bb.ae ], [ %.0104, %unicode_byte_type.exit115.thread ], [ %.0104, %bb.ap ], [ %.0104, %bb.ao ], [ %.0104, %bb.an ], [ %.0104, %bb.d ], [ %.0104, %bb.e ], [ %.0104, %bb.n ], [ %.0104, %bb.q ], [ %.0104, %bb.x ], [ %.0104, %.fold.split112 ], [ %.0104, %bb.am ], [ %.0104, %bb.aj ], [ %.0104, %bb.b ], [ %.0104, %unicode_byte_type.exit115.thread ], [ %.0104, %unicode_byte_type.exit115.thread ], [ %.0104, %unicode_byte_type.exit115.thread ]
  %.0102.be = phi i32 [ %.0102, %unicode_byte_type.exit ], [ 2, %bb.aq ], [ %.2, %bb.i ], [ %.3, %bb.l ], [ %.0102, %bb.c ], [ %.0102, %unicode_byte_type.exit.thread123 ], [ 1, %bb.m ], [ 0, %bb.u ], [ 2, %bb.r ], [ 2, %bb.p ], [ 0, %bb.ab ], [ 2, %bb.y ], [ %.0102, %bb.ad ], [ %.0102, %bb.ac ], [ 2, %bb.w ], [ 2, %.critedge ], [ 2, %unicode_byte_type.exit115 ], [ 2, %bb.ag ], [ 2, %bb.af ], [ 0, %bb.ae ], [ %.0102, %unicode_byte_type.exit115.thread ], [ 2, %bb.ap ], [ 2, %bb.ao ], [ 0, %bb.an ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.n ], [ 2, %bb.q ], [ 2, %bb.x ], [ %.0102, %.fold.split112 ], [ 2, %bb.am ], [ 2, %bb.aj ], [ %.0102, %bb.b ], [ %.0102, %unicode_byte_type.exit115.thread ], [ %.0102, %unicode_byte_type.exit115.thread ], [ %.0102, %unicode_byte_type.exit115.thread ]
  %.0100.be = phi i32 [ %.0100, %unicode_byte_type.exit ], [ %.0100, %bb.aq ], [ %.0100, %bb.i ], [ %.0100, %bb.l ], [ %.0100, %bb.c ], [ %.0100, %unicode_byte_type.exit.thread123 ], [ %.0100, %bb.m ], [ %i.ap, %bb.u ], [ %.0100, %bb.r ], [ %.0100, %bb.p ], [ %i.ba, %bb.ab ], [ %.0100, %bb.y ], [ %.0100, %bb.ad ], [ %.0100, %bb.ac ], [ %.0100, %bb.w ], [ %.0100, %.critedge ], [ %.0100, %unicode_byte_type.exit115 ], [ %.0100, %bb.ag ], [ %.0100, %bb.af ], [ %.0100, %bb.ae ], [ %.0100, %unicode_byte_type.exit115.thread ], [ %.0100, %bb.ap ], [ %.0100, %bb.ao ], [ %.0100, %bb.an ], [ %.0100, %bb.d ], [ %.0100, %bb.e ], [ %.0100, %bb.n ], [ %.0100, %bb.q ], [ %.0100, %bb.x ], [ %.0100, %.fold.split112 ], [ %.0100, %bb.am ], [ %.0100, %bb.aj ], [ %.0100, %bb.b ], [ %.0100, %unicode_byte_type.exit115.thread ], [ %.0100, %unicode_byte_type.exit115.thread ], [ %.0100, %unicode_byte_type.exit115.thread ]
  %.0.be = phi i32 [ %.0, %unicode_byte_type.exit ], [ %.0, %bb.aq ], [ %.0, %bb.i ], [ %.0, %bb.l ], [ %.0, %bb.c ], [ %.0, %unicode_byte_type.exit.thread123 ], [ %.0, %bb.m ], [ 12, %bb.u ], [ %.0, %bb.r ], [ 12, %bb.p ], [ 13, %bb.ab ], [ %.0, %bb.y ], [ %.0, %bb.ad ], [ %.0, %bb.ac ], [ 13, %bb.w ], [ %.0, %.critedge ], [ %.0, %unicode_byte_type.exit115 ], [ %.0, %bb.ag ], [ %.0, %bb.af ], [ %.0, %bb.ae ], [ %.0, %unicode_byte_type.exit115.thread ], [ %.0, %bb.ap ], [ %.0, %bb.ao ], [ %.0, %bb.an ], [ %.0, %bb.d ], [ %.0, %bb.e ], [ %.0, %bb.n ], [ 12, %bb.q ], [ 13, %bb.x ], [ %.0, %.fold.split112 ], [ %.0, %bb.am ], [ %.0, %bb.aj ], [ %.0, %bb.b ], [ %.0, %unicode_byte_type.exit115.thread ], [ %.0, %unicode_byte_type.exit115.thread ], [ %.0, %unicode_byte_type.exit115.thread ]
  br label %unicode_byte_type.exit115.thread

bb.b:                                             ; preds = %unicode_byte_type.exit115.thread
  %i.c = getelementptr i8, ptr %.pn, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %switch.i = icmp ult i8 %i.d, -2
  %i.e = icmp eq i32 %.0102, 0
  %or.cond = select i1 %switch.i, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.m, label %unicode_byte_type.exit115.thread.backedge

unicode_byte_type.exit:                           ; preds = %unicode_byte_type.exit115.thread
  %i.f = getelementptr i8, ptr %.pn, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  switch i8 %i.j, label %unicode_byte_type.exit115.thread.backedge [
    i8 5, label %bb.c
    i8 6, label %bb.f
    i8 7, label %unicode_byte_type.exit.thread121
    i8 29, label %unicode_byte_type.exit.thread123
    i8 22, label %unicode_byte_type.exit.thread123
    i8 24, label %unicode_byte_type.exit.thread123
    i8 12, label %bb.o
    i8 13, label %bb.v
    i8 3, label %bb.ac
    i8 21, label %bb.ae
    i8 9, label %bb.an
    i8 10, label %bb.an
    i8 11, label %bb.aq
    i8 17, label %bb.aq
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.k = icmp eq i32 %.0102, 0
  br i1 %i.k, label %bb.d, label %unicode_byte_type.exit115.thread.backedge

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %.0100, %2
  br i1 %i.l, label %bb.e, label %unicode_byte_type.exit115.thread.backedge

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %.0100 to i64
  %i.n = getelementptr [32 x i8], ptr %3, i64 %i.m ; 2 uses
  store ptr %.0104, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr i8, ptr %i.n, i64 24
  store i8 1, ptr %i.o, align 8, !tbaa !83
  br label %unicode_byte_type.exit115.thread.backedge

bb.f:                                             ; preds = %unicode_byte_type.exit
  %i.p = icmp eq i32 %.0102, 0
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = icmp slt i32 %.0100, %2
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = sext i32 %.0100 to i64
  %i.s = getelementptr [32 x i8], ptr %3, i64 %i.r ; 2 uses
  store ptr %.0104, ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr i8, ptr %i.s, i64 24
  store i8 1, ptr %i.t, align 8, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.2 = phi i32 [ %.0102, %bb.f ], [ 1, %bb.h ], [ 1, %bb.g ]
  %i.u = getelementptr i8, ptr %.pn, i64 3
  br label %unicode_byte_type.exit115.thread.backedge

unicode_byte_type.exit.thread121:                 ; preds = %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit115.thread, %unicode_byte_type.exit
  %i.v = icmp eq i32 %.0102, 0
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %unicode_byte_type.exit.thread121
  %i.w = icmp slt i32 %.0100, %2
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = sext i32 %.0100 to i64
  %i.y = getelementptr [32 x i8], ptr %3, i64 %i.x ; 2 uses
  store ptr %.0104, ptr %i.y, align 8, !tbaa !81
  %i.z = getelementptr i8, ptr %i.y, i64 24
  store i8 1, ptr %i.z, align 8, !tbaa !83
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %unicode_byte_type.exit.thread121
  %.3 = phi i32 [ %.0102, %unicode_byte_type.exit.thread121 ], [ 1, %bb.k ], [ 1, %bb.j ]
  %i.aa = getelementptr i8, ptr %.pn, i64 4
  br label %unicode_byte_type.exit115.thread.backedge

unicode_byte_type.exit.thread123:                 ; preds = %unicode_byte_type.exit115.thread, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  %.old = icmp eq i32 %.0102, 0
  br i1 %.old, label %bb.m, label %unicode_byte_type.exit115.thread.backedge

bb.m:                                             ; preds = %bb.b, %unicode_byte_type.exit.thread123
  %i.ab = icmp slt i32 %.0100, %2
  br i1 %i.ab, label %bb.n, label %unicode_byte_type.exit115.thread.backedge

bb.n:                                             ; preds = %bb.m
  %i.ac = sext i32 %.0100 to i64
  %i.ad = getelementptr [32 x i8], ptr %3, i64 %i.ac ; 2 uses
  store ptr %.0104, ptr %i.ad, align 8, !tbaa !81
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !83
  br label %unicode_byte_type.exit115.thread.backedge

bb.o:                                             ; preds = %unicode_byte_type.exit
  %.not109 = icmp eq i32 %.0102, 2
  br i1 %.not109, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = icmp slt i32 %.0100, %2
  br i1 %i.af, label %bb.q, label %unicode_byte_type.exit115.thread.backedge

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr i8, ptr %.pn, i64 4
  %i.ah = sext i32 %.0100 to i64
  %i.ai = getelementptr [32 x i8], ptr %3, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !84
  br label %unicode_byte_type.exit115.thread.backedge

bb.r:                                             ; preds = %bb.o
  %i.ak = icmp eq i32 %.0, 12
  br i1 %i.ak, label %bb.s, label %unicode_byte_type.exit115.thread.backedge

bb.s:                                             ; preds = %bb.r
  %i.al = icmp slt i32 %.0100, %2
  br i1 %i.al, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.am = sext i32 %.0100 to i64
end_hunk_5
begin_hunk_6_@big2_toUtf8:bb.a
  store ptr %i.cl, ptr %3, align 8, !tbaa !10
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.e
  %.268 = phi ptr [ %i.bu, %bb.l ], [ %.06679, %bb.i ], [ %.06679, %bb.e ], [ %.06679, %bb.g ]
  %i.cm = getelementptr i8, ptr %.268, i64 2      ; 3 uses
  %i.cn = icmp ult ptr %i.cm, %i.f
  br i1 %i.cn, label %bb.b, label %.thread, !llvm.loop !140

.thread:                                          ; preds = %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.a
  %.06679.lcssa.sink = phi ptr [ %i.a, %bb.a ], [ %.06679, %bb.h ], [ %.06679, %bb.d ], [ %.06679, %bb.k ], [ %.06679, %bb.j ], [ %.06679, %bb.f ], [ %i.cm, %bb.m ]
  %.2 = phi i32 [ 0, %bb.a ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.f ], [ 0, %bb.m ]
  store ptr %.06679.lcssa.sink, ptr %1, align 8, !tbaa !10
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @big2_toUtf16(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 4 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.h = ptrtoint ptr %4 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp sgt i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 -2       ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = and i8 %i.m, -8
  %i.o = icmp eq i8 %i.n, -40                     ; 2 uses
  %spec.select = select i1 %i.o, ptr %i.l, ptr %i.f
  %spec.select26 = zext i1 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %i.f, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select26, %bb.b ]
  %i.p = icmp ult ptr %i.a, %.023
  br i1 %i.p, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.r = phi ptr [ %i.ab, %bb.d ], [ %i.a, %bb.c ] ; 3 uses
  %i.s = icmp ult ptr %i.q, %4
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.t = load i8, ptr %i.r, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr i8, ptr %i.r, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.v, %i.y
  %i.aa = getelementptr i8, ptr %i.q, i64 2       ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !36
  store i16 %i.z, ptr %i.q, align 2, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.r, i64 2       ; 3 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !10
  %i.ac = icmp ult ptr %i.ab, %.023
  br i1 %i.ac, label %.lr.ph, label %.thread, !llvm.loop !141

.critedge:                                        ; preds = %.lr.ph
  %i.ad = icmp eq ptr %i.q, %4
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.critedge
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.thread
  %.022 = phi i32 [ %.0, %.thread ], [ 2, %.critedge ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -27, 28) i32 @big2_scanLit(i32 noundef range(i32 12, 14) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 136        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ah, %bb.k ] ; 2 uses
  %.03457 = phi ptr [ %2, %.lr.ph ], [ %.236, %bb.k ] ; 10 uses
  %i.g = load i8, ptr %.03457, align 1, !tbaa !13
  switch i8 %i.g, label %unicode_byte_type.exit.thread44 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread47
    i8 -39, label %unicode_byte_type.exit.thread47
    i8 -38, label %unicode_byte_type.exit.thread47
    i8 -37, label %unicode_byte_type.exit.thread47
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.03457, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread44

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.03457, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.n, label %unicode_byte_type.exit.thread44 [
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %unicode_byte_type.exit.thread47
    i8 0, label %unicode_byte_type.exit.thread
    i8 1, label %unicode_byte_type.exit.thread
    i8 8, label %unicode_byte_type.exit.thread
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.o = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.e:                                             ; preds = %unicode_byte_type.exit
  %i.p = icmp eq i64 %i.f, 2
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.03457, i64 3
  br label %bb.k

unicode_byte_type.exit.thread47:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %unicode_byte_type.exit
  %i.r = icmp samesign ult i64 %i.f, 4
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %unicode_byte_type.exit.thread47
  %i.s = getelementptr i8, ptr %.03457, i64 4
  br label %bb.k

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  store ptr %.03457, ptr %4, align 8, !tbaa !10
  br label %.thread

bb.h:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.t = zext nneg i8 %i.n to i32
  %i.u = getelementptr i8, ptr %.03457, i64 2     ; 4 uses
  %.not = icmp eq i32 %0, %i.t
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.a, %i.v
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.u, ptr %4, align 8, !tbaa !10
  %i.y = load i8, ptr %i.u, align 1, !tbaa !13
  %cond = icmp eq i8 %i.y, 0
  br i1 %cond, label %unicode_byte_type.exit42, label %.thread

unicode_byte_type.exit42:                         ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.03457, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.ad, -9             ; 2 uses
  %i.ae = icmp ult i8 %switch.tableidx, 22
  br i1 %i.ae, label %switch.lookup, label %.thread

unicode_byte_type.exit.thread44:                  ; preds = %bb.b, %bb.c, %unicode_byte_type.exit
  %i.af = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.g, %unicode_byte_type.exit.thread44, %bb.h
  %.236 = phi ptr [ %i.u, %bb.h ], [ %i.af, %unicode_byte_type.exit.thread44 ], [ %i.o, %bb.d ], [ %i.q, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.ag = ptrtoint ptr %.236 to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.b, label %.thread

switch.lookup:                                    ; preds = %unicode_byte_type.exit42
  %i.aj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.big2_scanLit, i64 %i.aj
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread

.thread:                                          ; preds = %bb.k, %unicode_byte_type.exit.thread47, %bb.e, %bb.j, %unicode_byte_type.exit42, %switch.lookup, %bb.a, %unicode_byte_type.exit.thread, %bb.i
  %.2 = phi i32 [ -27, %bb.i ], [ %switch.load, %switch.lookup ], [ 0, %bb.j ], [ -1, %bb.a ], [ 0, %unicode_byte_type.exit.thread ], [ 0, %unicode_byte_type.exit42 ], [ -1, %bb.k ], [ -2, %unicode_byte_type.exit.thread47 ], [ -2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -2, 34) i32 @big2_scanDecl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !13
  %cond = icmp eq i8 %i.e, 0
  br i1 %cond, label %unicode_byte_type.exit, label %unicode_byte_type.exit.thread

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 136
  %i.g = getelementptr i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  switch i8 %i.k, label %unicode_byte_type.exit.thread [
    i8 27, label %bb.c
    i8 20, label %bb.d
    i8 22, label %bb.e
    i8 24, label %bb.e
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.l = getelementptr i8, ptr %1, i64 2
  %i.m = tail call fastcc i32 @big2_scanComment(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef %2, ptr noundef %3)
  br label %.loopexit

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.n = getelementptr i8, ptr %1, i64 2
  store ptr %i.n, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.e:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %.03758 = getelementptr i8, ptr %1, i64 2       ; 2 uses
  %i.o = ptrtoint ptr %.03758 to i64
  %i.p = sub i64 %i.a, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 136        ; 2 uses
  br label %bb.f

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %unicode_byte_type.exit
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.s = phi i64 [ %i.p, %.lr.ph ], [ %i.ai, %bb.j ]
  %.03760 = phi ptr [ %.03758, %.lr.ph ], [ %.037, %bb.j ] ; 6 uses
  %.pn59 = phi ptr [ %1, %.lr.ph ], [ %.03760, %bb.j ] ; 3 uses
  %i.t = load i8, ptr %.03760, align 1, !tbaa !13
  %cond90 = icmp eq i8 %i.t, 0
  br i1 %cond90, label %unicode_byte_type.exit43, label %unicode_byte_type.exit43.thread

unicode_byte_type.exit43:                         ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.pn59, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr i8, ptr %i.r, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  switch i8 %i.y, label %unicode_byte_type.exit43.thread [
    i8 30, label %bb.g
    i8 21, label %.loopexit47
    i8 9, label %.loopexit47
    i8 10, label %.loopexit47
    i8 22, label %bb.j
    i8 24, label %bb.j
  ]

bb.g:                                             ; preds = %unicode_byte_type.exit43
  %i.z = icmp samesign ugt i64 %i.s, 3
  br i1 %i.z, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %.pn59, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %cond91 = icmp eq i8 %i.ab, 0
  br i1 %cond91, label %unicode_byte_type.exit46, label %.loopexit47

unicode_byte_type.exit46:                         ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %.pn59, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  switch i8 %i.ag, label %.loopexit47 [
    i8 21, label %bb.i
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 30, label %bb.i
  ]

bb.i:                                             ; preds = %unicode_byte_type.exit46, %unicode_byte_type.exit46, %unicode_byte_type.exit46, %unicode_byte_type.exit46
  store ptr %.03760, ptr %3, align 8, !tbaa !10
  br label %.loopexit

.loopexit47:                                      ; preds = %unicode_byte_type.exit43, %unicode_byte_type.exit43, %unicode_byte_type.exit43, %bb.h, %unicode_byte_type.exit46
  store ptr %.03760, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.j:                                             ; preds = %unicode_byte_type.exit43, %unicode_byte_type.exit43
  %.037 = getelementptr i8, ptr %.03760, i64 2    ; 2 uses
  %i.ah = ptrtoint ptr %.037 to i64
  %i.ai = sub i64 %i.a, %i.ah                     ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !142

unicode_byte_type.exit43.thread:                  ; preds = %bb.f, %unicode_byte_type.exit43
  store ptr %.03760, ptr %3, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.e, %bb.g, %bb.a, %unicode_byte_type.exit43.thread, %.loopexit47, %bb.i, %unicode_byte_type.exit.thread, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %unicode_byte_type.exit.thread ], [ %i.m, %bb.c ], [ 33, %bb.d ], [ 0, %unicode_byte_type.exit43.thread ], [ 16, %.loopexit47 ], [ 0, %bb.i ], [ -1, %bb.a ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @big2_scanPi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !13      ; 3 uses
  %i.g = icmp ne i8 %i.f, 0                       ; 2 uses
  br i1 %i.g, label %bb.c, label %unicode_byte_type.exit

bb.c:                                             ; preds = %bb.b
  switch i8 %i.f, label %unicode_byte_type.exit.thread201 [
    i8 -40, label %unicode_byte_type.exit.thread204
    i8 -39, label %unicode_byte_type.exit.thread204
    i8 -38, label %unicode_byte_type.exit.thread204
    i8 -37, label %unicode_byte_type.exit.thread204
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread201

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 136
  %i.k = getelementptr i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  switch i8 %i.o, label %unicode_byte_type.exit.thread [
    i8 29, label %unicode_byte_type.exit.thread201
    i8 22, label %bb.f
    i8 24, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %unicode_byte_type.exit.thread204
  ]

unicode_byte_type.exit.thread201:                 ; preds = %bb.d, %bb.c, %unicode_byte_type.exit
  %i.p = zext i8 %i.f to i64
  %i.q = getelementptr i8, ptr @nmstrtPages, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 3
  %i.u = getelementptr i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = lshr i32 %i.w, 5
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = and i32 %i.w, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %i.ab
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %unicode_byte_type.exit.thread201
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit
end_hunk_6
