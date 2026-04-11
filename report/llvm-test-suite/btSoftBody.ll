inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN15btSoftColliders12CollideCL_RS7ProcessEPK10btDbvtNode:bb.a
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !677
  %i.cw = and i32 %i.cv, 3
  %.not26 = icmp eq i32 %i.cw, 0                  ; 2 uses
  %i.cx = load ptr, ptr %i.au, align 8, !tbaa !654 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 92 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !614
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.cx, i64 364
  %9 = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %.sink35.in = select i1 %.not26, ptr %8, ptr %9
  %.sink = select i1 %.not26, i64 376, i64 380
  %.sink35 = load float, ptr %.sink35.in, align 4, !tbaa !159
  %i.db = fmul float %.sink35, %i.cz
  store float %i.db, ptr %i.cy, align 4, !tbaa !614
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sink
  %.sink30 = load float, ptr %i.dc, align 4, !tbaa !159
  %i.dd = load float, ptr %i.da, align 8, !tbaa !305
  %i.de = fmul float %.sink30, %i.dd
end_hunk_0
