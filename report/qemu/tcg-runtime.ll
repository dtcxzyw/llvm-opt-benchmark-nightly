Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-runtime?download=true
inline.NumInlined: 12
inline.NumDeleted: 12
begin_hunk_0
@.str.249 = private unnamed_addr constant [12 x i8] c"gvec_sar32i\00", align 1
@helper_info_gvec_sar32i = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_sar32i, ptr @.str.249, i64 0, i8 -80, i8 5, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.250 = private unnamed_addr constant [12 x i8] c"gvec_sar64i\00", align 1
@helper_info_gvec_sar64i = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_sar64i, ptr @.str.250, i64 0, i8 -80, i8 5, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.251 = private unnamed_addr constant [12 x i8] c"gvec_rotl8i\00", align 1
@helper_info_gvec_rotl8i = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl8i, ptr @.str.251, i64 0, i8 -80, i8 5, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.252 = private unnamed_addr constant [13 x i8] c"gvec_rotl16i\00", align 1
@helper_info_gvec_rotl16i = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl16i, ptr @.str.252, i64 0, i8 -80, i8 5, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.253 = private unnamed_addr constant [13 x i8] c"gvec_rotl32i\00", align 1
@helper_info_gvec_rotl32i = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl32i, ptr @.str.253, i64 0, i8 -80, i8 5, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.254 = private unnamed_addr constant [13 x i8] c"gvec_rotl64i\00", align 1
@helper_info_gvec_rotl64i = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl64i, ptr @.str.254, i64 0, i8 -80, i8 5, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.255 = private unnamed_addr constant [11 x i8] c"gvec_shl8v\00", align 1
@helper_info_gvec_shl8v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shl8v, ptr @.str.255, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.256 = private unnamed_addr constant [12 x i8] c"gvec_shl16v\00", align 1
@helper_info_gvec_shl16v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shl16v, ptr @.str.256, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.257 = private unnamed_addr constant [12 x i8] c"gvec_shl32v\00", align 1
@helper_info_gvec_shl32v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shl32v, ptr @.str.257, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.258 = private unnamed_addr constant [12 x i8] c"gvec_shl64v\00", align 1
@helper_info_gvec_shl64v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shl64v, ptr @.str.258, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.259 = private unnamed_addr constant [11 x i8] c"gvec_shr8v\00", align 1
@helper_info_gvec_shr8v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shr8v, ptr @.str.259, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.260 = private unnamed_addr constant [12 x i8] c"gvec_shr16v\00", align 1
@helper_info_gvec_shr16v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shr16v, ptr @.str.260, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.261 = private unnamed_addr constant [12 x i8] c"gvec_shr32v\00", align 1
@helper_info_gvec_shr32v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shr32v, ptr @.str.261, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.262 = private unnamed_addr constant [12 x i8] c"gvec_shr64v\00", align 1
@helper_info_gvec_shr64v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_shr64v, ptr @.str.262, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.263 = private unnamed_addr constant [11 x i8] c"gvec_sar8v\00", align 1
@helper_info_gvec_sar8v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_sar8v, ptr @.str.263, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.264 = private unnamed_addr constant [12 x i8] c"gvec_sar16v\00", align 1
@helper_info_gvec_sar16v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_sar16v, ptr @.str.264, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.265 = private unnamed_addr constant [12 x i8] c"gvec_sar32v\00", align 1
@helper_info_gvec_sar32v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_sar32v, ptr @.str.265, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.266 = private unnamed_addr constant [12 x i8] c"gvec_sar64v\00", align 1
@helper_info_gvec_sar64v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_sar64v, ptr @.str.266, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.267 = private unnamed_addr constant [12 x i8] c"gvec_rotl8v\00", align 1
@helper_info_gvec_rotl8v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl8v, ptr @.str.267, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.268 = private unnamed_addr constant [13 x i8] c"gvec_rotl16v\00", align 1
@helper_info_gvec_rotl16v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl16v, ptr @.str.268, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.269 = private unnamed_addr constant [13 x i8] c"gvec_rotl32v\00", align 1
@helper_info_gvec_rotl32v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl32v, ptr @.str.269, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.270 = private unnamed_addr constant [13 x i8] c"gvec_rotl64v\00", align 1
@helper_info_gvec_rotl64v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotl64v, ptr @.str.270, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.271 = private unnamed_addr constant [12 x i8] c"gvec_rotr8v\00", align 1
@helper_info_gvec_rotr8v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotr8v, ptr @.str.271, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.272 = private unnamed_addr constant [13 x i8] c"gvec_rotr16v\00", align 1
@helper_info_gvec_rotr16v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotr16v, ptr @.str.272, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.273 = private unnamed_addr constant [13 x i8] c"gvec_rotr32v\00", align 1
@helper_info_gvec_rotr32v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotr32v, ptr @.str.273, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.274 = private unnamed_addr constant [13 x i8] c"gvec_rotr64v\00", align 1
@helper_info_gvec_rotr64v = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_rotr64v, ptr @.str.274, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.275 = private unnamed_addr constant [9 x i8] c"gvec_eq8\00", align 1
@helper_info_gvec_eq8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eq8, ptr @.str.275, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.276 = private unnamed_addr constant [10 x i8] c"gvec_eq16\00", align 1
@helper_info_gvec_eq16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eq16, ptr @.str.276, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.277 = private unnamed_addr constant [10 x i8] c"gvec_eq32\00", align 1
@helper_info_gvec_eq32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eq32, ptr @.str.277, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.278 = private unnamed_addr constant [10 x i8] c"gvec_eq64\00", align 1
@helper_info_gvec_eq64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eq64, ptr @.str.278, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.279 = private unnamed_addr constant [9 x i8] c"gvec_ne8\00", align 1
@helper_info_gvec_ne8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ne8, ptr @.str.279, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.280 = private unnamed_addr constant [10 x i8] c"gvec_ne16\00", align 1
@helper_info_gvec_ne16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ne16, ptr @.str.280, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.281 = private unnamed_addr constant [10 x i8] c"gvec_ne32\00", align 1
@helper_info_gvec_ne32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ne32, ptr @.str.281, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.282 = private unnamed_addr constant [10 x i8] c"gvec_ne64\00", align 1
@helper_info_gvec_ne64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ne64, ptr @.str.282, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.283 = private unnamed_addr constant [9 x i8] c"gvec_lt8\00", align 1
@helper_info_gvec_lt8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lt8, ptr @.str.283, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.284 = private unnamed_addr constant [10 x i8] c"gvec_lt16\00", align 1
@helper_info_gvec_lt16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lt16, ptr @.str.284, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.285 = private unnamed_addr constant [10 x i8] c"gvec_lt32\00", align 1
@helper_info_gvec_lt32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lt32, ptr @.str.285, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.286 = private unnamed_addr constant [10 x i8] c"gvec_lt64\00", align 1
@helper_info_gvec_lt64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lt64, ptr @.str.286, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.287 = private unnamed_addr constant [9 x i8] c"gvec_le8\00", align 1
@helper_info_gvec_le8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_le8, ptr @.str.287, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.288 = private unnamed_addr constant [10 x i8] c"gvec_le16\00", align 1
@helper_info_gvec_le16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_le16, ptr @.str.288, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.289 = private unnamed_addr constant [10 x i8] c"gvec_le32\00", align 1
@helper_info_gvec_le32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_le32, ptr @.str.289, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.290 = private unnamed_addr constant [10 x i8] c"gvec_le64\00", align 1
@helper_info_gvec_le64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_le64, ptr @.str.290, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.291 = private unnamed_addr constant [10 x i8] c"gvec_ltu8\00", align 1
@helper_info_gvec_ltu8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltu8, ptr @.str.291, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.292 = private unnamed_addr constant [11 x i8] c"gvec_ltu16\00", align 1
@helper_info_gvec_ltu16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltu16, ptr @.str.292, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.293 = private unnamed_addr constant [11 x i8] c"gvec_ltu32\00", align 1
@helper_info_gvec_ltu32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltu32, ptr @.str.293, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.294 = private unnamed_addr constant [11 x i8] c"gvec_ltu64\00", align 1
@helper_info_gvec_ltu64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltu64, ptr @.str.294, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.295 = private unnamed_addr constant [10 x i8] c"gvec_leu8\00", align 1
@helper_info_gvec_leu8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leu8, ptr @.str.295, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.296 = private unnamed_addr constant [11 x i8] c"gvec_leu16\00", align 1
@helper_info_gvec_leu16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leu16, ptr @.str.296, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.297 = private unnamed_addr constant [11 x i8] c"gvec_leu32\00", align 1
@helper_info_gvec_leu32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leu32, ptr @.str.297, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.298 = private unnamed_addr constant [11 x i8] c"gvec_leu64\00", align 1
@helper_info_gvec_leu64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leu64, ptr @.str.298, i64 0, i8 -80, i8 45, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.299 = private unnamed_addr constant [10 x i8] c"gvec_eqs8\00", align 1
@helper_info_gvec_eqs8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eqs8, ptr @.str.299, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.300 = private unnamed_addr constant [11 x i8] c"gvec_eqs16\00", align 1
@helper_info_gvec_eqs16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eqs16, ptr @.str.300, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.301 = private unnamed_addr constant [11 x i8] c"gvec_eqs32\00", align 1
@helper_info_gvec_eqs32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eqs32, ptr @.str.301, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.302 = private unnamed_addr constant [11 x i8] c"gvec_eqs64\00", align 1
@helper_info_gvec_eqs64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_eqs64, ptr @.str.302, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.303 = private unnamed_addr constant [10 x i8] c"gvec_lts8\00", align 1
@helper_info_gvec_lts8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lts8, ptr @.str.303, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.304 = private unnamed_addr constant [11 x i8] c"gvec_lts16\00", align 1
@helper_info_gvec_lts16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lts16, ptr @.str.304, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.305 = private unnamed_addr constant [11 x i8] c"gvec_lts32\00", align 1
@helper_info_gvec_lts32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lts32, ptr @.str.305, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.306 = private unnamed_addr constant [11 x i8] c"gvec_lts64\00", align 1
@helper_info_gvec_lts64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_lts64, ptr @.str.306, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.307 = private unnamed_addr constant [10 x i8] c"gvec_les8\00", align 1
@helper_info_gvec_les8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_les8, ptr @.str.307, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.308 = private unnamed_addr constant [11 x i8] c"gvec_les16\00", align 1
@helper_info_gvec_les16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_les16, ptr @.str.308, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.309 = private unnamed_addr constant [11 x i8] c"gvec_les32\00", align 1
@helper_info_gvec_les32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_les32, ptr @.str.309, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.310 = private unnamed_addr constant [11 x i8] c"gvec_les64\00", align 1
@helper_info_gvec_les64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_les64, ptr @.str.310, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.311 = private unnamed_addr constant [11 x i8] c"gvec_ltus8\00", align 1
@helper_info_gvec_ltus8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltus8, ptr @.str.311, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.312 = private unnamed_addr constant [12 x i8] c"gvec_ltus16\00", align 1
@helper_info_gvec_ltus16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltus16, ptr @.str.312, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.313 = private unnamed_addr constant [12 x i8] c"gvec_ltus32\00", align 1
@helper_info_gvec_ltus32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltus32, ptr @.str.313, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.314 = private unnamed_addr constant [12 x i8] c"gvec_ltus64\00", align 1
@helper_info_gvec_ltus64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_ltus64, ptr @.str.314, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.315 = private unnamed_addr constant [11 x i8] c"gvec_leus8\00", align 1
@helper_info_gvec_leus8 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leus8, ptr @.str.315, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.316 = private unnamed_addr constant [12 x i8] c"gvec_leus16\00", align 1
@helper_info_gvec_leus16 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leus16, ptr @.str.316, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.317 = private unnamed_addr constant [12 x i8] c"gvec_leus32\00", align 1
@helper_info_gvec_leus32 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leus32, ptr @.str.317, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.318 = private unnamed_addr constant [12 x i8] c"gvec_leus64\00", align 1
@helper_info_gvec_leus64 = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_leus64, ptr @.str.318, i64 0, i8 -80, i8 41, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8
@.str.319 = private unnamed_addr constant [12 x i8] c"gvec_bitsel\00", align 1
@helper_info_gvec_bitsel = dso_local local_unnamed_addr global { ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.TCGCallArgumentLoc] } { ptr @helper_gvec_bitsel, ptr @.str.319, i64 0, i8 -80, i8 109, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, [14 x %struct.TCGCallArgumentLoc] zeroinitializer }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @helper_div_i32(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sdiv i32 %0, %1
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @helper_rem_i32(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = srem i32 %0, %1
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @helper_divu_i32(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = udiv i32 %0, %1
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, -1) i32 @helper_remu_i32(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = urem i32 %0, %1
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @helper_div_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = sdiv i64 %0, %1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -9223372036854775807, -9223372036854775808) i64 @helper_rem_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = srem i64 %0, %1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @helper_divu_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = udiv i64 %0, %1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, -1) i64 @helper_remu_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = urem i64 %0, %1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @helper_mulsh_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = tail call i64 @llvm.smulh.i64(i64 %1, i64 %0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, -1) i64 @helper_muluh_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = tail call i64 @llvm.umulh.i64(i64 %1, i64 %0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_clz_i32(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %0, i1 true)
  %spec.select = select i1 %.not, i32 %1, i32 %i.a
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_ctz_i32(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  %i.a = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %0, i1 true)
  %spec.select = select i1 %.not, i32 %1, i32 %i.a
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_clz_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %spec.select = select i1 %.not, i64 %1, i64 %i.a
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_ctz_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  %i.a = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %0, i1 true)
  %spec.select = select i1 %.not, i64 %1, i64 %i.a
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 32) i32 @helper_clrsb_i32(i32 noundef %0) #0 {
bb.a:
  %.lobit.i = ashr i32 %0, 31
  %i.a = xor i32 %.lobit.i, %0
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false)
  %i.c = add nsw i32 %i.b, -1
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 64) i64 @helper_clrsb_i64(i64 noundef %0) #0 {
bb.a:
  %.lobit.i = ashr i64 %0, 63
  %i.a = xor i64 %.lobit.i, %0
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 false)
  %i.c = add nsw i64 %i.b, -1
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 33) i32 @helper_ctpop_i32(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 65) i64 @helper_ctpop_i64(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  ret i64 %i.a
}

declare ptr @helper_lookup_tb_ptr(ptr noundef) #1

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define dso_local void @helper_exit_atomic(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.b = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.c = ptrtoint ptr %i.b to i64
  tail call void @cpu_loop_exit_atomic(ptr noundef nonnull %i.a, i64 noundef %i.c) #8
  unreachable
}

; Function Attrs: alwaysinline nobuiltin nounwind sspstrong uwtable
declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) #3

declare i128 @helper_ld_i128(ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_st_i128(ptr noundef, i64 noundef, i128 noundef, i32 noundef) #1

declare i32 @helper_atomic_cmpxchgb(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_cmpxchgw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_cmpxchgw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_cmpxchgl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_cmpxchgl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_cmpxchgq_be(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_cmpxchgq_le(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i128 @helper_atomic_cmpxchgo_be(ptr noundef, i64 noundef, i128 noundef, i128 noundef, i32 noundef) #1

declare i128 @helper_atomic_cmpxchgo_le(ptr noundef, i64 noundef, i128 noundef, i128 noundef, i32 noundef) #1

declare i128 @helper_atomic_xchgo_be(ptr noundef, i64 noundef, i128 noundef, i32 noundef) #1

declare i128 @helper_atomic_xchgo_le(ptr noundef, i64 noundef, i128 noundef, i32 noundef) #1

declare i128 @helper_atomic_fetch_ando_be(ptr noundef, i64 noundef, i128 noundef, i32 noundef) #1

declare i128 @helper_atomic_fetch_ando_le(ptr noundef, i64 noundef, i128 noundef, i32 noundef) #1

declare i128 @helper_atomic_fetch_oro_be(ptr noundef, i64 noundef, i128 noundef, i32 noundef) #1

declare i128 @helper_atomic_fetch_oro_le(ptr noundef, i64 noundef, i128 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_addb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_addw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_addw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_addl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_addl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_addq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_addq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_andb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_andw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_andw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_andl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_andl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_andq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_andq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_orb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_orw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_orw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_orl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_orl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_orq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_orq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_xorb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_xorw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_xorw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_xorl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_xorl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_xorq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_xorq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_sminb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_sminw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_sminw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_sminl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_sminl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_sminq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_sminq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_uminb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_uminw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_uminw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_uminl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_uminl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1
end_hunk_0
begin_hunk_1_@helper_gvec_nand
declare void @helper_gvec_nand(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_nor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_eqv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ands(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_andcs(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_xors(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_ors(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_shl8i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shl16i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shl32i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shl64i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr8i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr16i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr32i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr64i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar8i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar16i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar32i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar64i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl8i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl16i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl32i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl64i(ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shl8v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shl16v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shl32v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shl64v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr8v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr16v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr32v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_shr64v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar8v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar16v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar32v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_sar64v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl8v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl16v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl32v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotl64v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotr8v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotr16v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotr32v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_rotr64v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_eq8(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_eq16(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_eq32(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_eq64(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ne8(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ne16(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ne32(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ne64(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_lt8(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_lt16(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_lt32(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_lt64(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_le8(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_le16(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_le32(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_le64(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ltu8(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ltu16(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ltu32(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_ltu64(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_leu8(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_leu16(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_leu32(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_leu64(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @helper_gvec_eqs8(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_eqs16(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_eqs32(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_eqs64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_lts8(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_lts16(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_lts32(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_lts64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_les8(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_les16(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_les32(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_les64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_ltus8(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_ltus16(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_ltus32(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_ltus64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_leus8(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_leus16(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_leus32(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_leus64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare void @helper_gvec_bitsel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noreturn
declare void @cpu_loop_exit_atomic(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smulh.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { noinline noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { alwaysinline nobuiltin nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
end_hunk_1
