inline.NumInlined: 220
inline.NumDeleted: 32
begin_hunk_0_@ossl_ocspreq_initialize_copy:bb.a
; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspreq_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
end_hunk_0
begin_hunk_1_@ossl_ocspreq_initialize:bb.a
.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp eq i32 %0, 1
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
end_hunk_1
begin_hunk_2_@ossl_ocspreq_initialize:bb.a
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ab = tail call i64 @ossl_to_der_if_possible(i64 noundef %i.d) #5
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !10
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10
end_hunk_2
begin_hunk_3_@ossl_ocspres_initialize_copy:bb.a
; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspres_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
end_hunk_3
begin_hunk_4_@ossl_ocspres_initialize:bb.a
.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp eq i32 %0, 1
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
end_hunk_4
begin_hunk_5_@ossl_ocspres_initialize:bb.a
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ab = tail call i64 @ossl_to_der_if_possible(i64 noundef %i.d) #5
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !10
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10
end_hunk_5
begin_hunk_6_@ossl_ocspbres_initialize_copy:bb.a
; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspbres_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
end_hunk_6
begin_hunk_7_@ossl_ocspbres_initialize:bb.a
.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp eq i32 %0, 1
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
end_hunk_7
begin_hunk_8_@ossl_ocspbres_initialize:bb.a
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ab = tail call i64 @ossl_to_der_if_possible(i64 noundef %i.d) #5
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !10
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10
end_hunk_8
