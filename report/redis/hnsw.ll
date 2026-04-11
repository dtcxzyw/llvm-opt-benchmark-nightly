inline.NumInlined: 98
inline.NumDeleted: 4
begin_hunk_0_@hnsw_reconnect_nodes:bb.a
  %i.il = zext i32 %3 to i64                      ; 3 uses
  %i.im = icmp sgt i32 %2, 2
  %i.in = add nsw i32 %2, -1
  %i.io = uitofp nneg i32 %i.in to float
  %i.ip = add nsw i32 %2, -2
  %i.iq = uitofp nneg i32 %i.ip to float
  br i1 %i.im, label %.preheader378.us.us.preheader, label %.preheader378.us

.preheader378.us.us.preheader:                    ; preds = %.preheader378.lr.ph
  %4 = insertelement <2 x float> poison, float %i.io, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x float> poison, float %i.iq, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader378.us.us

.preheader378.us.us:                              ; preds = %.preheader378.us.us.preheader, %._crit_edge412.split.us.us.us
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %._crit_edge412.split.us.us.us ], [ 0, %.preheader378.us.us.preheader ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv509
  %i.is = mul nuw nsw i64 %indvars.iv509, %i.c    ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv509
end_hunk_0
begin_hunk_1_@hnsw_reconnect_nodes:bb.a
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !27 ; 2 uses
  %i.ja = load float, ptr %i.it, align 4, !tbaa !27
  %i.jb = fneg float %i.iz
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv504
  %9 = load float, ptr %8, align 4, !tbaa !27
  %10 = insertelement <2 x float> poison, float %i.ja, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = insertelement <2 x float> poison, float %i.jb, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %5, <2 x float> %13)
  %15 = fdiv <2 x float> %14, %7                  ; 2 uses
  %shift = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %15, %shift
  %16 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jc = fmul float %16, 5.000000e-01
  %i.jd = fmul float %i.jc, 0x3FD3333340000000
  %i.je = fsub float 2.000000e+00, %i.iz
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float 0x3FE6666660000000, float %i.jd)
end_hunk_1
