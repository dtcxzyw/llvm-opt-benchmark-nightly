begin_hunk_0
  %i.f = getelementptr i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 4 uses
  %i.h = getelementptr i8, ptr %i.c, i64 56
  %.val = load i64, ptr %i.h, align 8, !tbaa !180 ; 7 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !186  ; 20 uses
  %i.k = inttoptr i64 %i.a to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = and i64 %i.l, 8192
end_hunk_0
begin_hunk_1
bb.aj:                                            ; preds = %._crit_edge, %bb.ai
  %i.ee = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.e, ptr %i.ee, align 8, !tbaa !181
  %i.ef = getelementptr i8, ptr %i.e, i64 360     ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !182 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eg, null
end_hunk_1
