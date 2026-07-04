inline.NumInlined: 156
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
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
@switch.table.normal_nameLength = private unnamed_addr constant [25 x i8] [i8 2, i8 3, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 poison, i8 1], align 8
@switch.table.big2_nameLength = private unnamed_addr constant [25 x i8] [i8 2, i8 3, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 poison, i8 2], align 8
@switch.table.big2_scanLit = private unnamed_addr constant [22 x i8] c"\1B\1B\1B\00\00\00\00\00\00\00\00\1B\1B\00\00\00\00\00\00\00\00\1B", align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_INTERNAL_trim_to_complete_utf8_characters(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 5 uses
  %i.b = icmp ugt ptr %i.a, %0
  br i1 %i.b, label %.lr.ph.preheader, label %select.unfold

.lr.ph.preheader:                                 ; preds = %bb.a
  %2 = ptrtoint ptr %i.a to i64
  %3 = ptrtoint ptr %0 to i64
  %i.c = sub i64 %3, %2
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.01831 = phi ptr [ %i.d, %bb.k ], [ %i.a, %.lr.ph.preheader ] ; 5 uses
  %.01930 = phi i64 [ %i.w, %bb.k ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr i8, ptr %.01831, i64 -1    ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13    ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = and i32 %i.f, 248
  %i.h = icmp eq i32 %i.g, 240
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.i = add i64 %.01930, -3
  %i.j = icmp ult i64 %i.i, -4
  br i1 %i.j, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.01831, i64 3
  br label %select.unfold

bb.d:                                             ; preds = %.lr.ph
  %i.l = and i32 %i.f, 240
  %i.m = icmp eq i32 %i.l, 224
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %.01930, -2
  %i.o = icmp ult i64 %i.n, -3
  br i1 %i.o, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.01831, i64 2
  br label %select.unfold

bb.g:                                             ; preds = %bb.d
  %i.q = and i32 %i.f, 224
  %i.r = icmp eq i32 %i.q, 192
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %.01930, -1
  %i.t = icmp ult i64 %i.s, -2
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %.01831, i64 1
  br label %select.unfold

bb.j:                                             ; preds = %bb.g
  %i.v = icmp sgt i8 %i.e, -1
  br i1 %i.v, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e, %bb.b
  %.221.ph = phi i64 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.b ], [ %.01930, %bb.j ]
  %i.w = add i64 %.221.ph, 1
  %i.x = icmp ugt ptr %i.d, %0
  br i1 %i.x, label %.lr.ph, label %select.unfold, !llvm.loop !14

select.unfold:                                    ; preds = %bb.k, %bb.j, %bb.a, %bb.c, %bb.f, %bb.i
  %.2 = phi ptr [ %i.p, %bb.f ], [ %i.k, %bb.c ], [ %i.u, %bb.i ], [ %i.a, %bb.a ], [ %scevgep, %bb.k ], [ %.01831, %bb.j ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @PyExpat_XmlSizeOfUnknownEncoding() local_unnamed_addr #3 {
bb.a:
  ret i32 2016
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @PyExpat_XmlInitUnknownEncoding(ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 464)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) @latin1_encoding, i64 464, i1 false)
  br label %bb.b
end_hunk_0
begin_hunk_1_@findEncoding:bb.a
  %i.m = load i8, ptr %.019.i, align 1, !tbaa !13 ; 3 uses
  %i.n = add i8 %i.k, -97
  %or.cond.i = icmp ult i8 %i.n, 26
  %narrow.i = add nsw i8 %i.k, -32
  %spec.select.i = select i1 %or.cond.i, i8 %narrow.i, i8 %i.k ; 2 uses
  %i.o = add i8 %i.m, -97
  %or.cond5.i = icmp ult i8 %i.o, 26
  %narrow24.i = add nsw i8 %i.m, -32
  %.017.i = select i1 %or.cond5.i, i8 %narrow24.i, i8 %i.m
  %.not.i = icmp eq i8 %spec.select.i, %.017.i
  %.not25.i = icmp eq i8 %spec.select.i, 0
  %..i = select i1 %.not25.i, i32 2, i32 0
  %.0.i = select i1 %.not.i, i32 %..i, i32 1
  switch i32 %.0.i, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %streqci.exit.thread
    i32 2, label %streqci.exit
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

streqci.exit:                                     ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 128
  %i.q = load i32, ptr %i.p, align 8, !tbaa !53
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.e, label %streqci.exit.thread

streqci.exit.thread:                              ; preds = %bb.c, %streqci.exit
  %i.s = call fastcc i32 @getEncodingIndex(ptr noundef nonnull %i.b) ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %streqci.exit.thread
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr [8 x i8], ptr @encodings, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %streqci.exit.thread, %streqci.exit, %bb.a, %bb.d
  %.0 = phi ptr [ %i.w, %bb.d ], [ null, %bb.a ], [ %0, %streqci.exit ], [ null, %streqci.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @PyExpat_XmlGetUtf8InternalEncodingNS() local_unnamed_addr #3 {
bb.a:
  ret ptr @internal_utf8_encoding_ns
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @PyExpat_XmlGetUtf16InternalEncodingNS() local_unnamed_addr #3 {
bb.a:
  ret ptr @internal_little2_encoding_ns
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @PyExpat_XmlInitEncodingNS(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @getEncodingIndex(ptr noundef %2) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %i.a to i8
  %i.d = getelementptr i8, ptr %0, i64 133
  store i8 %i.c, ptr %i.d, align 1, !tbaa !39
  store ptr @initScanPrologNS, ptr %0, align 8, !tbaa !43
  %i.e = getelementptr i8, ptr %0, i64 8
  store ptr @initScanContentNS, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr i8, ptr %0, i64 96
  store ptr @initUpdatePosition, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr i8, ptr %0, i64 136
  store ptr %1, ptr %i.g, align 8, !tbaa !45
  store ptr %0, ptr %1, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanPrologNS(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = tail call fastcc i32 @initScan(ptr noundef nonnull @encodingsNS, ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanContentNS(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = tail call fastcc i32 @initScan(ptr noundef nonnull @encodingsNS, ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @PyExpat_XmlParseXmlDeclNS(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @doParseXmlDecl(ptr noundef nonnull @findEncodingNS, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @findEncodingNS(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr %i.b, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 127
  %i.g = call i32 %i.e(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f) #13 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !10
  %.not = icmp eq ptr %i.h, %2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !10
  store i8 0, ptr %i.i, align 1, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.020.i = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.019.i = phi ptr [ @KW_UTF_16, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.j = getelementptr i8, ptr %.020.i, i64 1
  %i.k = load i8, ptr %.020.i, align 1, !tbaa !13 ; 3 uses
  %i.l = getelementptr i8, ptr %.019.i, i64 1
  %i.m = load i8, ptr %.019.i, align 1, !tbaa !13 ; 3 uses
  %i.n = add i8 %i.k, -97
  %or.cond.i = icmp ult i8 %i.n, 26
  %narrow.i = add nsw i8 %i.k, -32
  %spec.select.i = select i1 %or.cond.i, i8 %narrow.i, i8 %i.k ; 2 uses
  %i.o = add i8 %i.m, -97
  %or.cond5.i = icmp ult i8 %i.o, 26
  %narrow24.i = add nsw i8 %i.m, -32
  %.017.i = select i1 %or.cond5.i, i8 %narrow24.i, i8 %i.m
  %.not.i = icmp eq i8 %spec.select.i, %.017.i
  %.not25.i = icmp eq i8 %spec.select.i, 0
  %..i = select i1 %.not25.i, i32 2, i32 0
  %.0.i = select i1 %.not.i, i32 %..i, i32 1
  switch i32 %.0.i, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %streqci.exit.thread
    i32 2, label %streqci.exit
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

streqci.exit:                                     ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 128
  %i.q = load i32, ptr %i.p, align 8, !tbaa !53
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.e, label %streqci.exit.thread

streqci.exit.thread:                              ; preds = %bb.c, %streqci.exit
  %i.s = call fastcc i32 @getEncodingIndex(ptr noundef nonnull %i.b) ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %streqci.exit.thread
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr [8 x i8], ptr @encodingsNS, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %streqci.exit.thread, %streqci.exit, %bb.a, %bb.d
  %.0 = phi ptr [ %i.w, %bb.d ], [ null, %bb.a ], [ %0, %streqci.exit ], [ null, %streqci.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @PyExpat_XmlInitUnknownEncodingNS(ptr nofree noundef writeonly captures(address, ret: address, provenance) initializes((0, 464)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @PyExpat_XmlInitUnknownEncoding(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 194
  store i8 23, ptr %i.b, align 2, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @normal_prologTok(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #5 {
bb.a:
  %4 = ptrtoint ptr %1 to i64                     ; 4 uses
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 136        ; 8 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  switch i8 %i.e, label %bb.bd [
    i8 12, label %bb.c
    i8 13, label %bb.d
    i8 2, label %bb.e
    i8 9, label %bb.k
    i8 21, label %bb.m
    i8 10, label %bb.m
    i8 30, label %bb.q
    i8 35, label %bb.r
    i8 20, label %bb.s
    i8 4, label %bb.t
    i8 31, label %bb.z
    i8 32, label %bb.aa
    i8 36, label %bb.ah
    i8 11, label %bb.ai
    i8 19, label %bb.aj
    i8 5, label %bb.ak
    i8 6, label %bb.aq
    i8 7, label %bb.aw
    i8 22, label %bb.be
    i8 24, label %bb.be
    i8 25, label %bb.bc
    i8 26, label %bb.bc
    i8 27, label %bb.bc
    i8 23, label %bb.bc
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 1
  %i.g = tail call fastcc i32 @normal_scanLit(i32 noundef 12, ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef nonnull %2, ptr noundef %3)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 1
  %i.i = tail call fastcc i32 @normal_scanLit(i32 noundef 13, ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %2, ptr noundef %3)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 1          ; 3 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.j, align 1, !tbaa !13
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  switch i8 %i.r, label %bb.j [
    i8 16, label %bb.g
    i8 15, label %bb.h
    i8 22, label %bb.i
    i8 24, label %bb.i
    i8 29, label %bb.i
    i8 5, label %bb.i
    i8 6, label %bb.i
    i8 7, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %1, i64 2
  %i.t = tail call fastcc i32 @normal_scanDecl(ptr noundef nonnull %0, ptr noundef %i.s, ptr noundef nonnull %2, ptr noundef %3)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %1, i64 2
  %i.v = tail call fastcc i32 @normal_scanPi(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef nonnull %2, ptr noundef %3)
  br label %.loopexit

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  store ptr %i.j, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.k:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %1, i64 1
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %2, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.b, %bb.b
  %i.y = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.z = getelementptr i8, ptr %1, i64 1          ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.y, %i.aa
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph315.preheader, label %._crit_edge316

.lr.ph315.preheader:                              ; preds = %bb.m
  %i.ad = sub i64 %i.y, %4
  %scevgep = getelementptr i8, ptr %1, i64 %i.ad
  br label %.lr.ph315

.lr.ph315:                                        ; preds = %.lr.ph315.preheader, %bb.p
  %i.ae = phi ptr [ %i.ak, %bb.p ], [ %i.z, %.lr.ph315.preheader ] ; 4 uses
  %.0247313 = phi ptr [ %i.ae, %bb.p ], [ %1, %.lr.ph315.preheader ]
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  switch i8 %i.ai, label %bb.o [
    i8 21, label %bb.p
    i8 10, label %bb.p
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph315
  %i.aj = getelementptr i8, ptr %.0247313, i64 2
  %.not277 = icmp eq ptr %i.aj, %2
  br i1 %.not277, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.lr.ph315
  store ptr %i.ae, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.p:                                             ; preds = %bb.n, %.lr.ph315, %.lr.ph315
  %i.ak = getelementptr i8, ptr %i.ae, i64 1      ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.y, %i.al
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph315, label %._crit_edge316

._crit_edge316:                                   ; preds = %bb.p, %bb.m
  %.lcssa = phi ptr [ %i.z, %bb.m ], [ %scevgep, %bb.p ]
  store ptr %.lcssa, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.q:                                             ; preds = %bb.b
  %i.ao = getelementptr i8, ptr %1, i64 1
  %i.ap = tail call fastcc i32 @normal_scanPercent(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef nonnull %2, ptr noundef %3)
  br label %.loopexit

bb.r:                                             ; preds = %bb.b
  %i.aq = getelementptr i8, ptr %1, i64 1
  store ptr %i.aq, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.s:                                             ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %1, i64 1
  store ptr %i.ar, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.t:                                             ; preds = %bb.b
  %i.as = getelementptr i8, ptr %1, i64 1         ; 3 uses
  %i.at = ptrtoint ptr %2 to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !13
  %i.ay = icmp eq i8 %i.ax, 93
  br i1 %i.ay, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not276 = icmp eq i64 %i.av, 1
  br i1 %.not276, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = getelementptr i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = icmp eq i8 %i.ba, 62
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr i8, ptr %1, i64 3
  store ptr %i.bc, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.y:                                             ; preds = %bb.w, %bb.u
  store ptr %i.as, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.z:                                             ; preds = %bb.b
  %i.bd = getelementptr i8, ptr %1, i64 1
  store ptr %i.bd, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.aa:                                            ; preds = %bb.b
  %i.be = getelementptr i8, ptr %1, i64 1         ; 4 uses
  %i.bf = ptrtoint ptr %2 to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  switch i8 %i.bm, label %bb.ag [
    i8 33, label %bb.ac
    i8 15, label %bb.ad
    i8 34, label %bb.ae
    i8 9, label %bb.af
    i8 10, label %bb.af
    i8 21, label %bb.af
    i8 11, label %bb.af
    i8 35, label %bb.af
    i8 36, label %bb.af
    i8 32, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bn = getelementptr i8, ptr %1, i64 2
  store ptr %i.bn, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.bo = getelementptr i8, ptr %1, i64 2
  store ptr %i.bo, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ab
  %i.bp = getelementptr i8, ptr %1, i64 2
  store ptr %i.bp, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.af:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  store ptr %i.be, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ab
  store ptr %i.be, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.ah:                                            ; preds = %bb.b
  %i.bq = getelementptr i8, ptr %1, i64 1
  store ptr %i.bq, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.ai:                                            ; preds = %bb.b
  %i.br = getelementptr i8, ptr %1, i64 1
  store ptr %i.br, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.aj:                                            ; preds = %bb.b
  %i.bs = getelementptr i8, ptr %1, i64 1
  %i.bt = tail call fastcc i32 @normal_scanPoundName(ptr noundef nonnull %0, ptr noundef %i.bs, ptr noundef nonnull %2, ptr noundef %3)
  br label %.loopexit

bb.ak:                                            ; preds = %bb.b
  %i.bu = ptrtoint ptr %2 to i64
  %i.bv = sub i64 %i.bu, %4
  %i.bw = icmp slt i64 %i.bv, 2
  br i1 %i.bw, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = getelementptr i8, ptr %0, i64 440
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not261 = icmp eq i32 %i.bz, 0
  br i1 %.not261, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.ca = getelementptr i8, ptr %0, i64 416
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !60
  %i.cc = tail call i32 %i.cb(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not262 = icmp eq i32 %i.cc, 0
  br i1 %.not262, label %bb.ao, label %bb.be

bb.ao:                                            ; preds = %bb.an
  %i.cd = getelementptr i8, ptr %0, i64 392
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !61
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not263 = icmp eq i32 %i.cf, 0
  br i1 %.not263, label %bb.ap, label %bb.be

bb.ap:                                            ; preds = %bb.ao
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.aq:                                            ; preds = %bb.b
  %i.cg = ptrtoint ptr %2 to i64
  %i.ch = sub i64 %i.cg, %4
  %i.ci = icmp slt i64 %i.ch, 3
  br i1 %i.ci, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cj = getelementptr i8, ptr %0, i64 448
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !62
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not258 = icmp eq i32 %i.cl, 0
  br i1 %.not258, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  %i.cm = getelementptr i8, ptr %0, i64 424
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !63
  %i.co = tail call i32 %i.cn(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not259 = icmp eq i32 %i.co, 0
  br i1 %.not259, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.cp = getelementptr i8, ptr %0, i64 400
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !64
  %i.cr = tail call i32 %i.cq(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not260 = icmp eq i32 %i.cr, 0
  br i1 %.not260, label %bb.av, label %bb.be

bb.av:                                            ; preds = %bb.au
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.aw:                                            ; preds = %bb.b
  %i.cs = ptrtoint ptr %2 to i64
  %i.ct = sub i64 %i.cs, %4
  %i.cu = icmp slt i64 %i.ct, 4
  br i1 %i.cu, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cv = getelementptr i8, ptr %0, i64 456
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !65
  %i.cx = tail call i32 %i.cw(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not255 = icmp eq i32 %i.cx, 0
  br i1 %.not255, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.az:                                            ; preds = %bb.ax
  %i.cy = getelementptr i8, ptr %0, i64 432
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !66
  %i.da = tail call i32 %i.cz(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not256 = icmp eq i32 %i.da, 0
  br i1 %.not256, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.db = getelementptr i8, ptr %0, i64 408
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !67
  %i.dd = tail call i32 %i.dc(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not257 = icmp eq i32 %i.dd, 0
  br i1 %.not257, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.bc:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.be

bb.bd:                                            ; preds = %bb.b
  store ptr %1, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.be:                                            ; preds = %bb.b, %bb.b, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.ao, %bb.an, %bb.bc
  %.sink = phi i64 [ 1, %bb.bc ], [ 4, %bb.ba ], [ 4, %bb.az ], [ 3, %bb.au ], [ 3, %bb.at ], [ 2, %bb.ao ], [ 2, %bb.an ], [ 1, %bb.b ], [ 1, %bb.b ]
  %.0 = phi i32 [ 19, %bb.bc ], [ 19, %bb.ba ], [ 18, %bb.az ], [ 19, %bb.au ], [ 18, %bb.at ], [ 19, %bb.ao ], [ 18, %bb.an ], [ 18, %bb.b ], [ 18, %bb.b ] ; 2 uses
  %i.de = getelementptr i8, ptr %1, i64 %.sink    ; 2 uses
  %i.df = ptrtoint ptr %2 to i64                  ; 5 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.be
  %i.dj = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.dk = getelementptr i8, ptr %0, i64 408       ; 2 uses
  %i.dl = getelementptr i8, ptr %0, i64 448       ; 2 uses
  %i.dm = getelementptr i8, ptr %0, i64 400       ; 2 uses
  %i.dn = getelementptr i8, ptr %0, i64 440       ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 392       ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.cw
  %i.dp = phi i64 [ %i.dh, %.lr.ph ], [ %i.ge, %bb.cw ] ; 3 uses
  %.1312 = phi i32 [ %.0, %.lr.ph ], [ %.2, %bb.cw ] ; 22 uses
  %.2249311 = phi ptr [ %i.de, %.lr.ph ], [ %.3, %bb.cw ] ; 28 uses
  %i.dq = load i8, ptr %.2249311, align 1, !tbaa !13
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr i8, ptr %i.a, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  switch i8 %i.dt, label %bb.cv [
    i8 29, label %bb.bi
    i8 22, label %bb.bj
    i8 24, label %bb.bj
    i8 25, label %bb.bj
    i8 26, label %bb.bj
    i8 27, label %bb.bj
    i8 5, label %bb.bk
    i8 6, label %bb.bp
    i8 7, label %bb.bu
    i8 11, label %bb.bz
    i8 32, label %bb.bz
    i8 35, label %bb.bz
    i8 36, label %bb.bz
    i8 20, label %bb.bz
    i8 30, label %bb.bz
    i8 21, label %bb.bz
    i8 9, label %bb.bz
    i8 10, label %bb.bz
    i8 23, label %bb.ca
    i8 34, label %bb.cs
    i8 33, label %bb.ct
    i8 15, label %bb.cu
  ]

bb.bg:                                            ; preds = %bb.cx
  %i.du = load i8, ptr %i.gg, align 1, !tbaa !13
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr i8, ptr %i.a, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  switch i8 %i.dx, label %bb.cv [
    i8 29, label %bb.bi
    i8 22, label %bb.bj
    i8 24, label %bb.bj
    i8 25, label %bb.bj
    i8 26, label %bb.bj
    i8 27, label %bb.bj
    i8 5, label %bb.bk
    i8 6, label %bb.bp
    i8 7, label %bb.bu
    i8 11, label %bb.bz
    i8 32, label %bb.bz
    i8 35, label %bb.bz
    i8 36, label %bb.bz
    i8 20, label %bb.bz
    i8 30, label %bb.bz
    i8 21, label %bb.bz
    i8 9, label %bb.bz
    i8 10, label %bb.bz
    i8 23, label %bb.cb
    i8 34, label %.thread381
    i8 33, label %.thread389
    i8 15, label %.thread397
  ]

bb.bh:                                            ; preds = %bb.cy
  %i.dy = load i8, ptr %.3.jt19, align 1, !tbaa !13
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr i8, ptr %i.a, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  switch i8 %i.eb, label %bb.cv [
    i8 29, label %bb.bi
    i8 22, label %bb.bj
    i8 24, label %bb.bj
    i8 25, label %bb.bj
    i8 26, label %bb.bj
    i8 27, label %bb.bj
    i8 5, label %bb.bk
    i8 6, label %bb.bp
    i8 7, label %bb.bu
    i8 11, label %bb.bz
    i8 32, label %bb.bz
    i8 35, label %bb.bz
    i8 36, label %bb.bz
    i8 20, label %bb.bz
    i8 30, label %bb.bz
    i8 21, label %bb.bz
    i8 9, label %bb.bz
    i8 10, label %bb.bz
    i8 23, label %bb.cc
    i8 34, label %.thread
    i8 33, label %.thread385
    i8 15, label %.thread393
  ]

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.2249311369 = phi ptr [ %i.gg, %bb.bg ], [ %.3.jt19, %bb.bh ], [ %.2249311, %bb.bf ]
  store ptr %.2249311369, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %.2249311370 = phi ptr [ %i.gg, %bb.bg ], [ %i.gg, %bb.bg ], [ %i.gg, %bb.bg ], [ %i.gg, %bb.bg ], [ %i.gg, %bb.bg ], [ %.3.jt19, %bb.bh ], [ %.3.jt19, %bb.bh ], [ %.3.jt19, %bb.bh ], [ %.3.jt19, %bb.bh ], [ %.3.jt19, %bb.bh ], [ %.2249311, %bb.bf ], [ %.2249311, %bb.bf ], [ %.2249311, %bb.bf ], [ %.2249311, %bb.bf ], [ %.2249311, %bb.bf ]
  %.1312360 = phi i32 [ 41, %bb.bg ], [ 41, %bb.bg ], [ 41, %bb.bg ], [ 41, %bb.bg ], [ 41, %bb.bg ], [ 19, %bb.bh ], [ 19, %bb.bh ], [ 19, %bb.bh ], [ 19, %bb.bh ], [ 19, %bb.bh ], [ %.1312, %bb.bf ], [ %.1312, %bb.bf ], [ %.1312, %bb.bf ], [ %.1312, %bb.bf ], [ %.1312, %bb.bf ]
  %i.ec = getelementptr i8, ptr %.2249311370, i64 1
  br label %bb.cw

bb.bk:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.2249311371 = phi ptr [ %i.gg, %bb.bg ], [ %.3.jt19, %bb.bh ], [ %.2249311, %bb.bf ] ; 4 uses
  %.1312361 = phi i32 [ 41, %bb.bg ], [ 19, %bb.bh ], [ %.1312, %bb.bf ]
  %i.ed = phi i64 [ %i.gi, %bb.bg ], [ %i.gl, %bb.bh ], [ %i.dp, %bb.bf ]
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ef = load ptr, ptr %i.dn, align 8, !tbaa !59
  %i.eg = tail call i32 %i.ef(ptr noundef nonnull %0, ptr noundef nonnull %.2249311371) #13
  %.not274 = icmp eq i32 %i.eg, 0
  br i1 %.not274, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.eh = load ptr, ptr %i.do, align 8, !tbaa !61
  %i.ei = tail call i32 %i.eh(ptr noundef nonnull %0, ptr noundef nonnull %.2249311371) #13
  %.not275 = icmp eq i32 %i.ei, 0
  br i1 %.not275, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  store ptr %.2249311371, ptr %3, align 8, !tbaa !10
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bm
  %i.ej = getelementptr i8, ptr %.2249311371, i64 2
  br label %bb.cw

bb.bp:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.2249311372 = phi ptr [ %i.gg, %bb.bg ], [ %.3.jt19, %bb.bh ], [ %.2249311, %bb.bf ] ; 4 uses
  %.1312362 = phi i32 [ 41, %bb.bg ], [ 19, %bb.bh ], [ %.1312, %bb.bf ]
  %i.ek = phi i64 [ %i.gi, %bb.bg ], [ %i.gl, %bb.bh ], [ %i.dp, %bb.bf ]
  %i.el = icmp samesign ult i64 %i.ek, 3
  br i1 %i.el, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.em = load ptr, ptr %i.dl, align 8, !tbaa !62
  %i.en = tail call i32 %i.em(ptr noundef nonnull %0, ptr noundef nonnull %.2249311372) #13
  %.not272 = icmp eq i32 %i.en, 0
end_hunk_1
begin_hunk_2_@normal_scanAtts:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr i8, ptr %i.da, i64 4      ; 2 uses
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !10
  br label %select.unfold

bb.as:                                            ; preds = %bb.ai
  %i.ds = getelementptr i8, ptr %i.da, i64 1
  %i.dt = call fastcc i32 @normal_scanRef(ptr noundef nonnull %0, ptr noundef %i.ds, ptr noundef %2, ptr noundef nonnull %i.a) ; 3 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.select.unfold_crit_edge, label %bb.at

.select.unfold_crit_edge:                         ; preds = %bb.as
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %select.unfold

bb.at:                                            ; preds = %bb.as
  %i.dv = icmp eq i32 %i.dt, 0
  br i1 %i.dv, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %.thread.sink.split

bb.av:                                            ; preds = %bb.ai
  %i.dx = getelementptr i8, ptr %i.da, i64 1      ; 2 uses
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !10
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.al, %bb.ao, %bb.ar, %bb.av
  %i.dy = phi ptr [ %.pre, %.select.unfold_crit_edge ], [ %i.dj, %bb.al ], [ %i.dn, %bb.ao ], [ %i.dr, %bb.ar ], [ %i.dx, %bb.av ] ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.b, %i.dz                     ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, 0
  br i1 %i.eb, label %.lr.ph323, label %.thread

.thread161:                                       ; preds = %.lr.ph323
  %i.ec = getelementptr i8, ptr %i.da, i64 1      ; 7 uses
  store ptr %i.ec, ptr %i.a, align 8, !tbaa !10
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.b, %i.ed
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %.thread161
  %i.eg = load i8, ptr %i.ec, align 1, !tbaa !13
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr i8, ptr %i.f, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !13
  switch i8 %i.ej, label %.thread.sink.split [
    i8 21, label %bb.ax
    i8 9, label %bb.ax
    i8 10, label %bb.ax
    i8 17, label %.loopexit181
    i8 11, label %.loopexit182
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw
  %i.ek = getelementptr i8, ptr %i.da, i64 2      ; 2 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.b, %i.el                     ; 2 uses
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %.lr.ph343, label %.thread

.lr.ph343:                                        ; preds = %bb.ax, %bb.bl
  %i.eo = phi i64 [ %i.fq, %bb.bl ], [ %i.em, %bb.ax ] ; 3 uses
  %i.ep = phi ptr [ %i.fo, %bb.bl ], [ %i.ek, %bb.ax ] ; 18 uses
  %i.eq = phi ptr [ %i.ep, %bb.bl ], [ %i.ec, %bb.ax ] ; 4 uses
  %i.er = load i8, ptr %i.ep, align 1, !tbaa !13
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr i8, ptr %i.f, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !13
  switch i8 %i.eu, label %.thread.sink.split [
    i8 17, label %.loopexit181
    i8 22, label %bb.ay
    i8 24, label %bb.ay
    i8 5, label %bb.az
    i8 6, label %bb.bd
    i8 7, label %bb.bh
    i8 21, label %bb.bl
    i8 9, label %bb.bl
    i8 10, label %bb.bl
    i8 11, label %.loopexit182
  ]

bb.ay:                                            ; preds = %.lr.ph343, %.lr.ph343
  %i.ev = getelementptr i8, ptr %i.eq, i64 2
  br label %bb.bn

bb.az:                                            ; preds = %.lr.ph343
  %i.ew = icmp eq i64 %i.eo, 1
  br i1 %i.ew, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.ey = tail call i32 %i.ex(ptr noundef nonnull %0, ptr noundef nonnull %i.ep) #13
  %.not137 = icmp eq i32 %i.ey, 0
  br i1 %.not137, label %bb.bb, label %.thread.sink.split

bb.bb:                                            ; preds = %bb.ba
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.fa = tail call i32 %i.ez(ptr noundef nonnull %0, ptr noundef nonnull %i.ep) #13
  %.not138 = icmp eq i32 %i.fa, 0
  br i1 %.not138, label %.thread.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fb = getelementptr i8, ptr %i.eq, i64 3
  br label %bb.bn

bb.bd:                                            ; preds = %.lr.ph343
  %i.fc = icmp samesign ult i64 %i.eo, 3
  br i1 %i.fc, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fd = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.fe = tail call i32 %i.fd(ptr noundef nonnull %0, ptr noundef nonnull %i.ep) #13
  %.not135 = icmp eq i32 %i.fe, 0
  br i1 %.not135, label %bb.bf, label %.thread.sink.split

bb.bf:                                            ; preds = %bb.be
  %i.ff = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.fg = tail call i32 %i.ff(ptr noundef nonnull %0, ptr noundef nonnull %i.ep) #13
  %.not136 = icmp eq i32 %i.fg, 0
  br i1 %.not136, label %.thread.sink.split, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fh = getelementptr i8, ptr %i.eq, i64 4
  br label %bb.bn

bb.bh:                                            ; preds = %.lr.ph343
  %i.fi = icmp samesign ult i64 %i.eo, 4
  br i1 %i.fi, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fj = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.fk = tail call i32 %i.fj(ptr noundef nonnull %0, ptr noundef nonnull %i.ep) #13
  %.not133 = icmp eq i32 %i.fk, 0
  br i1 %.not133, label %bb.bj, label %.thread.sink.split

bb.bj:                                            ; preds = %bb.bi
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.fm = tail call i32 %i.fl(ptr noundef nonnull %0, ptr noundef nonnull %i.ep) #13
  %.not134 = icmp eq i32 %i.fm, 0
  br i1 %.not134, label %.thread.sink.split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fn = getelementptr i8, ptr %i.eq, i64 5
  br label %bb.bn

bb.bl:                                            ; preds = %.lr.ph343, %.lr.ph343, %.lr.ph343
  %i.fo = getelementptr i8, ptr %i.ep, i64 1      ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.b, %i.fp                     ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, 0
  br i1 %i.fr, label %.lr.ph343, label %.thread

.loopexit182:                                     ; preds = %bb.aw, %.lr.ph343
  %i.fs = phi ptr [ %i.ep, %.lr.ph343 ], [ %i.ec, %bb.aw ]
  %i.ft = getelementptr i8, ptr %i.fs, i64 1
  br label %.thread.sink.split

.loopexit181:                                     ; preds = %bb.aw, %.lr.ph343
  %i.fu = phi ptr [ %i.ep, %.lr.ph343 ], [ %i.ec, %bb.aw ] ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 1      ; 4 uses
  store ptr %i.fv, ptr %i.a, align 8, !tbaa !10
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.b, %i.fw
  %i.fy = icmp sgt i64 %i.fx, 0
  br i1 %i.fy, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %.loopexit181
  %i.fz = load i8, ptr %i.fv, align 1, !tbaa !13
  %i.ga = icmp eq i8 %i.fz, 62                    ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 2
  %spec.select = select i1 %i.ga, ptr %i.gb, ptr %i.fv
  %spec.select639 = select i1 %i.ga, i32 3, i32 0
  br label %.thread.sink.split

bb.bn:                                            ; preds = %bb.ay, %bb.bc, %bb.bg, %bb.bk, %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.o, %bb.k, %bb.g, %bb.c
  %.sink = phi ptr [ %i.ev, %bb.ay ], [ %i.fb, %bb.bc ], [ %i.fh, %bb.bg ], [ %i.fn, %bb.bk ], [ %i.av, %bb.s ], [ %i.bb, %bb.w ], [ %i.bh, %bb.aa ], [ %i.bn, %bb.ae ], [ %i.am, %bb.o ], [ %i.ag, %bb.k ], [ %i.aa, %bb.g ], [ %i.u, %bb.c ] ; 3 uses
  %.1118 = phi i32 [ 0, %bb.ay ], [ 0, %bb.bc ], [ 0, %bb.bg ], [ 0, %bb.bk ], [ 1, %bb.s ], [ 1, %bb.w ], [ 1, %bb.aa ], [ 1, %bb.ae ], [ %.0117347, %bb.o ], [ %.0117347, %bb.k ], [ %.0117347, %bb.g ], [ %.0117347, %bb.c ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !10
  %i.gc = ptrtoint ptr %.sink to i64
  %i.gd = sub i64 %i.b, %i.gc                     ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 0
  br i1 %i.ge, label %bb.b, label %.thread, !llvm.loop !99

.thread.sink.split:                               ; preds = %bb.b, %bb.bi, %bb.bj, %bb.be, %bb.bf, %bb.ba, %bb.bb, %bb.aw, %bb.r, %bb.ac, %bb.ad, %bb.y, %bb.z, %bb.u, %bb.v, %bb.p, %bb.m, %bb.n, %bb.i, %bb.j, %bb.e, %bb.f, %.lr.ph, %.lr.ph699, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.aq, %bb.an, %bb.ak, %.lr.ph343, %bb.bm, %.loopexit182, %bb.au
  %.sink638 = phi ptr [ %i.dw, %bb.au ], [ %spec.select, %bb.bm ], [ %i.da, %bb.ai ], [ %i.ft, %.loopexit182 ], [ %i.ep, %.lr.ph343 ], [ %i.cq, %.lr.ph699 ], [ %i.bs, %.lr.ph ], [ %i.da, %bb.ak ], [ %i.da, %bb.an ], [ %i.da, %bb.aq ], [ %i.da, %bb.ai ], [ %i.da, %bb.ai ], [ %i.da, %bb.ai ], [ %i.ep, %bb.ba ], [ %i.ep, %bb.bf ], [ %i.ec, %bb.aw ], [ %i.an, %bb.ad ], [ %i.ep, %bb.bj ], [ %i.an, %bb.ac ], [ %i.an, %bb.y ], [ %i.an, %bb.u ], [ %i.an, %bb.r ], [ %.promoted, %bb.p ], [ %.promoted, %bb.m ], [ %.promoted, %bb.i ], [ %.promoted, %bb.e ], [ %.promoted, %bb.b ], [ %.promoted, %bb.f ], [ %.promoted, %bb.n ], [ %i.an, %bb.v ], [ %i.an, %bb.z ], [ %i.ep, %bb.bi ], [ %i.ep, %bb.bb ], [ %i.ep, %bb.be ], [ %.promoted, %bb.j ]
  %.10.ph = phi i32 [ 0, %bb.au ], [ %spec.select639, %bb.bm ], [ 0, %bb.ai ], [ 1, %.loopexit182 ], [ 0, %.lr.ph343 ], [ 0, %.lr.ph699 ], [ 0, %.lr.ph ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.ai ], [ 0, %bb.ai ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.r ], [ 0, %bb.aw ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.b ]
  store ptr %.sink638, ptr %3, align 8, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.h, %bb.l, %bb.q, %bb.t, %bb.x, %bb.ab, %bb.bn, %bb.az, %bb.bd, %bb.bh, %.thread161, %.lr.ph320._crit_edge, %bb.af, %.thread154, %bb.ax, %bb.ag, %bb.ah, %select.unfold, %bb.ap, %bb.aj, %bb.am, %bb.bl, %.thread.sink.split, %bb.a, %bb.at, %.loopexit181
  %.10 = phi i32 [ -1, %bb.ag ], [ -1, %bb.ah ], [ %i.dt, %bb.at ], [ -1, %bb.a ], [ -1, %.loopexit181 ], [ -1, %select.unfold ], [ -1, %bb.bl ], [ %.10.ph, %.thread.sink.split ], [ -2, %bb.ap ], [ -2, %bb.aj ], [ -2, %bb.am ], [ -2, %bb.x ], [ -1, %.thread161 ], [ -1, %.lr.ph320._crit_edge ], [ -1, %bb.ax ], [ -1, %.thread154 ], [ -1, %bb.af ], [ -2, %bb.h ], [ -1, %bb.bn ], [ -2, %bb.az ], [ -2, %bb.bd ], [ -2, %bb.bh ], [ -2, %bb.ab ], [ -1, %bb.q ], [ -2, %bb.l ], [ -2, %bb.d ], [ -2, %bb.t ]
  ret i32 %.10
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @utf8_toUtf8(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 5 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp sgt i64 %i.d, %i.h                  ; 2 uses
  %i.j = getelementptr i8, ptr %i.a, i64 %i.h
  %spec.select = select i1 %i.i, ptr %i.j, ptr %2 ; 6 uses
  %i.k = icmp ugt ptr %spec.select, %i.a
  br i1 %i.k, label %.lr.ph.preheader.i, label %_INTERNAL_trim_to_complete_utf8_characters.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %5 = ptrtoint ptr %spec.select to i64
  %i.l = sub i64 %i.c, %5
  %scevgep.i = getelementptr i8, ptr %spec.select, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.01831.i = phi ptr [ %i.m, %bb.k ], [ %spec.select, %.lr.ph.preheader.i ] ; 5 uses
  %.01930.i = phi i64 [ %i.af, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.m = getelementptr i8, ptr %.01831.i, i64 -1  ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = and i32 %i.o, 248
  %i.q = icmp eq i32 %i.p, 240
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add i64 %.01930.i, -3
  %i.s = icmp ult i64 %i.r, -4
  br i1 %i.s, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %.01831.i, i64 3
  br label %_INTERNAL_trim_to_complete_utf8_characters.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = and i32 %i.o, 240
  %i.v = icmp eq i32 %i.u, 224
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %.01930.i, -2
  %i.x = icmp ult i64 %i.w, -3
  br i1 %i.x, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %.01831.i, i64 2
  br label %_INTERNAL_trim_to_complete_utf8_characters.exit

bb.g:                                             ; preds = %bb.d
  %i.z = and i32 %i.o, 224
  %i.aa = icmp eq i32 %i.z, 192
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = add i64 %.01930.i, -1
  %i.ac = icmp ult i64 %i.ab, -2
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %.01831.i, i64 1
  br label %_INTERNAL_trim_to_complete_utf8_characters.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = icmp sgt i8 %i.n, -1
  br i1 %i.ae, label %_INTERNAL_trim_to_complete_utf8_characters.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e, %bb.b
  %.221.ph.i = phi i64 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.b ], [ %.01930.i, %bb.j ]
  %i.af = add i64 %.221.ph.i, 1
  %i.ag = icmp ugt ptr %i.m, %i.a
  br i1 %i.ag, label %.lr.ph.i, label %_INTERNAL_trim_to_complete_utf8_characters.exit, !llvm.loop !14

_INTERNAL_trim_to_complete_utf8_characters.exit:  ; preds = %bb.j, %bb.k, %bb.a, %bb.c, %bb.f, %bb.i
  %.2.i = phi ptr [ %i.y, %bb.f ], [ %i.t, %bb.c ], [ %i.ad, %bb.i ], [ %spec.select, %bb.a ], [ %.01831.i, %bb.j ], [ %scevgep.i, %bb.k ] ; 2 uses
  %i.ah = icmp ult ptr %.2.i, %spec.select
  %i.ai = ptrtoint ptr %.2.i to i64
  %i.aj = sub i64 %i.ai, %i.c                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.a, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %1, align 8, !tbaa !10
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.aj
  store ptr %i.al, ptr %1, align 8, !tbaa !10
  %i.am = load ptr, ptr %3, align 8, !tbaa !10
  %i.an = getelementptr i8, ptr %i.am, i64 %i.aj
  store ptr %i.an, ptr %3, align 8, !tbaa !10
  %. = zext i1 %i.ah to i32
  %.0 = select i1 %i.i, i32 2, i32 %.
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @utf8_toUtf16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp ult ptr %i.b, %2                    ; 2 uses
  %i.d = icmp ult ptr %i.a, %4
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 136
  %i.g = ptrtoint ptr %4 to i64
  %i.h = ptrtoint ptr %2 to i64                   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.04769 = phi ptr [ %i.b, %.lr.ph ], [ %.2, %bb.k ] ; 18 uses
  %.04868 = phi ptr [ %i.a, %.lr.ph ], [ %.250, %bb.k ] ; 14 uses
  %i.i = load i8, ptr %.04769, align 1, !tbaa !13 ; 5 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  switch i8 %i.l, label %bb.j [
    i8 5, label %bb.c
    i8 6, label %bb.e
    i8 7, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %.04769 to i64
  %i.n = sub i64 %i.h, %i.m
  %i.o = icmp slt i64 %i.n, 2
  br i1 %i.o, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i8 %i.i, 31
  %i.q = zext nneg i8 %i.p to i16
  %i.r = shl nuw nsw i16 %i.q, 6
  %i.s = getelementptr i8, ptr %.04769, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i16
  %i.w = or disjoint i16 %i.r, %i.v
  %i.x = getelementptr i8, ptr %.04868, i64 2
  store i16 %i.w, ptr %.04868, align 2, !tbaa !16
  %i.y = getelementptr i8, ptr %.04769, i64 2
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.z = ptrtoint ptr %.04769 to i64
  %i.aa = sub i64 %i.h, %i.z
  %i.ab = icmp slt i64 %i.aa, 3
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = zext i8 %i.i to i16
  %i.ad = shl i16 %i.ac, 12
  %i.ae = getelementptr i8, ptr %.04769, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = and i8 %i.af, 63
  %i.ah = zext nneg i8 %i.ag to i16
  %i.ai = shl nuw nsw i16 %i.ah, 6
  %i.aj = or disjoint i16 %i.ai, %i.ad
  %i.ak = getelementptr i8, ptr %.04769, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = and i8 %i.al, 63
  %i.an = zext nneg i8 %i.am to i16
  %i.ao = or disjoint i16 %i.aj, %i.an
  %i.ap = getelementptr i8, ptr %.04868, i64 2
  store i16 %i.ao, ptr %.04868, align 2, !tbaa !16
  %i.aq = getelementptr i8, ptr %.04769, i64 3
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.ar = ptrtoint ptr %.04868 to i64
  %i.as = sub i64 %i.g, %i.ar
  %i.at = icmp slt i64 %i.as, 3
  br i1 %i.at, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = ptrtoint ptr %.04769 to i64
  %i.av = sub i64 %i.h, %i.au
  %i.aw = icmp slt i64 %i.av, 4
  br i1 %i.aw, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = and i8 %i.i, 7
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 18
  %i.ba = getelementptr i8, ptr %.04769, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 12
  %i.bf = getelementptr i8, ptr %.04769, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 6                ; 2 uses
  %i.bk = getelementptr i8, ptr %.04769, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = and i8 %i.bl, 63
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.az, 16711680
  %i.bp = add nuw nsw i64 %i.bo, %i.be
  %i.bq = or disjoint i64 %i.bp, %i.bj
  %i.br = lshr i64 %i.bq, 10
  %i.bs = trunc nuw nsw i64 %i.br to i16
  %i.bt = or i16 %i.bs, -10240
  store i16 %i.bt, ptr %.04868, align 2, !tbaa !16
  %i.bu = or disjoint i64 %i.bj, %i.bn
  %i.bv = trunc nuw nsw i64 %i.bu to i16
  %i.bw = or i16 %i.bv, -9216
  %i.bx = getelementptr i8, ptr %.04868, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !16
  %i.by = getelementptr i8, ptr %.04868, i64 4
  %i.bz = getelementptr i8, ptr %.04769, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.ca = getelementptr i8, ptr %.04769, i64 1
  %i.cb = sext i8 %i.i to i16
end_hunk_2
