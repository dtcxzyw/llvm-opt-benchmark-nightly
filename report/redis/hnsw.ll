inline.NumInlined: 98
inline.NumDeleted: 4
begin_hunk_0_@hnsw_reconnect_nodes:bb.a
  %i.il = zext i32 %3 to i64                      ; 3 uses
  %i.im = icmp sgt i32 %2, 2
  %i.in = add nsw i32 %2, -1
  %i.io = uitofp nneg i32 %i.in to float          ; 2 uses
  %i.ip = add nsw i32 %2, -2
  %i.iq = uitofp nneg i32 %i.ip to float          ; 2 uses
  br i1 %i.im, label %.preheader378.us.us, label %.preheader378.us

.preheader378.us.us:                              ; preds = %.preheader378.lr.ph, %._crit_edge412.split.us.us.us
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %._crit_edge412.split.us.us.us ], [ 0, %.preheader378.lr.ph ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv509
  %i.is = mul nuw nsw i64 %indvars.iv509, %i.c    ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv509
end_hunk_0
begin_hunk_1_@hnsw_reconnect_nodes:bb.a
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !27 ; 2 uses
  %i.ja = load float, ptr %i.it, align 4, !tbaa !27
  %i.jb = fneg float %i.iz                        ; 2 uses
  %4 = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.io, float %i.jb)
  %5 = fdiv float %4, %i.iq
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv504
  %7 = load float, ptr %6, align 4, !tbaa !27
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %i.io, float %i.jb)
  %9 = fdiv float %8, %i.iq
  %10 = fadd float %5, %9
  %i.jc = fmul float %10, 5.000000e-01
  %i.jd = fmul float %i.jc, 0x3FD3333340000000
  %i.je = fsub float 2.000000e+00, %i.iz
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float 0x3FE6666660000000, float %i.jd)
end_hunk_1
