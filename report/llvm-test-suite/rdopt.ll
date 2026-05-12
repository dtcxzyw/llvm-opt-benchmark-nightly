inline.NumInlined: 29
inline.NumDeleted: 4
begin_hunk_0_@Mode_Decision_for_Intra4x4Macroblock:bb.a
; Function Attrs: nounwind uwtable
define dso_local double @RDCost_for_8x8blocks(ptr noundef captures(none) %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.syntaxelement, align 8      ; 6 uses
end_hunk_0
begin_hunk_1_@RDCost_for_8x8blocks:bb.a
  br i1 %i.mc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %9 = load i32, ptr %i.a, align 4, !tbaa !4
  call void @ue_linfo(i32 noundef %i.q, i32 noundef %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #14
  %i.md = load i32, ptr %i.b, align 4, !tbaa !4
  br label %bb.q

end_hunk_1
begin_hunk_2_@RDCost_for_macroblocks
define dso_local range(i32 0, 2) i32 @RDCost_for_macroblocks(double noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 13 uses
end_hunk_2
begin_hunk_3_@RDCost_for_macroblocks:bb.a
  %i.itq = getelementptr inbounds nuw i8, ptr %i.itp, i64 144
  %i.itr = load i32, ptr %i.itq, align 8, !tbaa !218 ; 2 uses
  %i.its = call i32 @writeMBLayer(i32 noundef 1, ptr noundef nonnull %i.c) #14
  store i32 %i.its, ptr %i.b, align 4, !tbaa !4
  %i.itt = load i32, ptr %i.e, align 4, !tbaa !4
  call void @ue_linfo(i32 noundef %i.itr, i32 noundef %i.itt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14
  %i.itu = load i32, ptr %i.d, align 4, !tbaa !4
  %5 = load i32, ptr %i.b, align 4, !tbaa !4
  %i.itv = sub nsw i32 %5, %i.itu
  store i32 %i.itv, ptr %i.b, align 4, !tbaa !4
  %i.itw = load ptr, ptr @img, align 8, !tbaa !16
  %i.itx = getelementptr inbounds nuw i8, ptr %i.itw, i64 144
end_hunk_3
