Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-runtime?download=true
inline.NumInlined: 12
inline.NumDeleted: 12
begin_hunk_0
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
define dso_local i64 @helper_mulsh_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = sext i64 %0 to i128
  %i.b = sext i64 %1 to i128
  %i.c = mul nsw i128 %i.b, %i.a
  %i.d = lshr i128 %i.c, 64
  %i.e = trunc nuw i128 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, -1) i64 @helper_muluh_i64(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = zext i64 %0 to i128
  %i.b = zext i64 %1 to i128
  %i.c = mul nuw i128 %i.b, %i.a
  %i.d = lshr i128 %i.c, 64
  %i.e = trunc nuw i128 %i.d to i64
  ret i64 %i.e
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

declare i64 @helper_atomic_fetch_uminq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_uminq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_smaxb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_smaxw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_smaxw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_smaxl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_smaxl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_smaxq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_smaxq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_umaxb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_umaxw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_umaxw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_umaxl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_fetch_umaxl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_umaxq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_fetch_umaxq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_add_fetchb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_add_fetchw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_add_fetchw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_add_fetchl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_add_fetchl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @helper_atomic_add_fetchq_le(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @helper_atomic_add_fetchq_be(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @helper_atomic_and_fetchb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_and_fetchw_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_and_fetchw_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_and_fetchl_le(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @helper_atomic_and_fetchl_be(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1
end_hunk_0
