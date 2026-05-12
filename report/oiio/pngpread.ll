inline.NumInlined: 25
begin_hunk_0_@png_app_warning
; Function Attrs: nounwind uwtable
define void @png_push_read_sig(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 629 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !51    ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = sub nsw i64 8, %i.c
end_hunk_0
begin_hunk_1_@png_push_read_sig:bb.a

png_push_fill_buffer.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  %i.z = trunc i64 %spec.select to i8
  %i.aa = add i8 %i.b, %i.z
  store i8 %i.aa, ptr %i.a, align 1, !tbaa !51
  %i.ab = tail call i32 @png_sig_cmp(ptr noundef nonnull %i.g, i64 noundef %i.c, i64 noundef %spec.select) #11
  %.not = icmp eq i32 %i.ab, 0
end_hunk_1
begin_hunk_2_@png_push_read_sig:bb.a
  unreachable

bb.j:                                             ; preds = %png_push_fill_buffer.exit
  %2 = load i8, ptr %i.a, align 1, !tbaa !51
  %i.af = icmp ugt i8 %2, 7
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_2
