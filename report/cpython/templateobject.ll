inline.NumInlined: 40
inline.NumDeleted: 10
begin_hunk_0_@_PyTemplate_Concat:bb.a
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %.val36.i.i = load i64, ptr %i.g, align 8, !tbaa !37 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 32       ; 4 uses
  %i.i = add i64 %.val36.i.i, -1                  ; 7 uses
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr i8, ptr %i.f, i64 16
end_hunk_0
begin_hunk_1_@_PyTemplate_Concat:bb.a
  br i1 %i.p, label %template_concat_templates.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = add i64 %.val36.i.i, %.val.i.i
  %i.q = add i64 %2, -1
  %i.r = tail call ptr @PyTuple_New(i64 noundef %i.q) #3, !inline_history !38 ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.preheader.i.i
end_hunk_1
