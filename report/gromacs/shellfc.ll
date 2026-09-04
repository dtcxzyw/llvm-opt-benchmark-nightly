Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/shellfc?download=true
inline.NumInlined: 1435
inline.NumDeleted: 676
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZL9init_adirP13gmx_shellfc_tPN3gmx11ConstraintsEPK10t_inputrecPK9t_commrecilRK9t_mdatomsiNS1_19ArrayRefWithPaddingINS1_11BasicVectorIfEEEENS1_8ArrayRefISF_EESG_SI_SI_PA3_KfNSH_ISJ_EEPf:bb.a
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !84
  %i.az = fsub float %i.aw, %i.ay
  %i.ba = fsub float %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store float %i.ba, ptr %i.bb, align 4, !tbaa !84
  %i.bc = load float, ptr %i.at, align 4, !tbaa !84
  %i.bd = load float, ptr %i.ax, align 4, !tbaa !84
  %i.be = fneg float %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bc, float 2.000000e+00, float %i.be)
  %i.bg = fpext float %i.bf to double
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !84
  %i.bj = fpext float %i.bi to double
  %i.bk = fmul double %i.ad, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.k, double %i.bg)
  %i.bm = fptrunc double %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store float %i.bm, ptr %i.bn, align 4, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !84
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !84
  %i.bu = fsub float %i.br, %i.bt
  %i.bv = fsub float %i.bp, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store float %i.bv, ptr %i.bw, align 4, !tbaa !84
  %i.bx = load float, ptr %i.bo, align 4, !tbaa !84
  %i.by = load float, ptr %i.bs, align 4, !tbaa !84
  %i.bz = fneg float %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bx, float 2.000000e+00, float %i.bz)
  %i.cb = fpext float %i.ca to double
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !84
  %i.ce = fpext float %i.cd to double
  %i.cf = fmul double %i.ad, %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.k, double %i.cb)
  %i.ch = fptrunc double %i.cg to float
  br label %.split9.us

.split.us:                                        ; preds = %bb.b, %bb.b
  %i.ci = load float, ptr %i.u, align 4, !tbaa !84 ; 2 uses
  store float %i.ci, ptr %i.v, align 4, !tbaa !84
  store float %i.ci, ptr %i.w, align 4, !tbaa !84
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !84 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store float %i.ck, ptr %i.cm, align 4, !tbaa !84
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !84 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store float %i.co, ptr %i.cp, align 4, !tbaa !84
  br label %.split9.us

.split9.us:                                       ; preds = %.split.us, %.split.preheader
  %.sink = phi float [ %i.co, %.split.us ], [ %i.ch, %.split.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store float %.sink, ptr %i.cq, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !543

._crit_edge:                                      ; preds = %.split9.us, %bb.a
  store ptr %i.g, ptr %12, align 8, !tbaa !187
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !188
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !188
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.i, ptr %i.cu, align 8, !tbaa !189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !87, !noalias !560
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.d, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !192, !noalias !560
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cy
  %i.df = getelementptr inbounds i8, ptr %i.d, i64 %i.de
  store ptr %i.d, ptr %13, align 8, !tbaa !187, !alias.scope !560
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.da, ptr %i.dg, align 8, !tbaa !188, !alias.scope !560
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !189, !alias.scope !560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.di = inttoptr i64 %.0.val3 to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !84
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.dm = call noundef zeroext i1 @_ZN3gmx11Constraints5applyEblifNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEES4_NS_8ArrayRefIS3_EEPA3_KffPfS4_bPA3_fNS_18ConstraintVariableE(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false, i64 noundef %4, i32 noundef 0, float noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull byval(%"class.gmx::ArrayRef.319") align 8 %14, ptr noundef %10, float noundef %i.dk, ptr noundef nonnull %i.dl, ptr noundef nonnull align 8 dead_on_return %15, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) ; 0 uses
  %i.dn = load <2 x ptr>, ptr %8, align 8, !tbaa !87
  store <2 x ptr> %i.dn, ptr %16, align 16, !tbaa !87
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !189
  store ptr %i.dp, ptr %i.do, align 16, !tbaa !189
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !190, !noalias !561 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !87, !noalias !561
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.dq, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !192, !noalias !561
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.du
  %i.eb = getelementptr inbounds i8, ptr %i.dq, i64 %i.ea
  store ptr %i.dq, ptr %17, align 8, !tbaa !187, !alias.scope !561
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.dw, ptr %i.ec, align 8, !tbaa !188, !alias.scope !561
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !189, !alias.scope !561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.ee = load float, ptr %i.dj, align 4, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ef = call noundef zeroext i1 @_ZN3gmx11Constraints5applyEblifNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEES4_NS_8ArrayRefIS3_EEPA3_KffPfS4_bPA3_fNS_18ConstraintVariableE(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false, i64 noundef %4, i32 noundef 0, float noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull byval(%"class.gmx::ArrayRef.319") align 8 %18, ptr noundef %10, float noundef %i.ee, ptr noundef nonnull %i.dl, ptr noundef nonnull align 8 dead_on_return %19, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) ; 0 uses
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge.._crit_edge13_crit_edge

._crit_edge.._crit_edge13_crit_edge:              ; preds = %._crit_edge
  %.pre = load ptr, ptr %9, align 8, !tbaa !195
  br label %._crit_edge13

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.eg = fmul double %i.k, %i.k                  ; 4 uses
  %i.eh = inttoptr i64 %.0.val1 to ptr            ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !559 ; 5 uses
  %i.ek = load i64, ptr %9, align 8
  %i.el = inttoptr i64 %i.ek to ptr               ; 10 uses
  %wide.trip.count25 = zext nneg i32 %6 to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %6, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.em = mul nuw nsw i64 %wide.trip.count25, 12  ; 5 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.em ; 5 uses
  %scevgep28 = getelementptr i8, ptr %i.el, i64 %i.em ; 5 uses
  %scevgep29 = getelementptr i8, ptr %i.g, i64 %i.em ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.d, i64 %i.em ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.eh, i64 %i.em ; 2 uses
  %i.en = shl nuw nsw i64 %wide.trip.count25, 2
  %scevgep32 = getelementptr i8, ptr %i.ej, i64 %i.en ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep28
  %bound1 = icmp ugt ptr %scevgep, %i.el
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %i.e, %scevgep29
  %bound134 = icmp ult ptr %i.g, %scevgep
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %i.e, %scevgep30
  %bound137 = icmp ult ptr %i.d, %scevgep
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  %bound040 = icmp ult ptr %i.e, %scevgep31
  %bound141 = icmp ugt ptr %scevgep, %i.eh
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  %bound044 = icmp ult ptr %i.e, %scevgep32
  %bound145 = icmp ult ptr %i.ej, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  %bound048 = icmp ugt ptr %scevgep29, %i.el
  %bound149 = icmp ult ptr %i.g, %scevgep28
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  %bound052 = icmp ugt ptr %scevgep30, %i.el
  %bound153 = icmp ult ptr %i.d, %scevgep28
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx51, %found.conflict54
  %bound056 = icmp ugt ptr %scevgep31, %i.el
  %bound157 = icmp ugt ptr %scevgep28, %i.eh
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  %bound060 = icmp ugt ptr %scevgep32, %i.el
  %bound161 = icmp ult ptr %i.ej, %scevgep28
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  br i1 %conflict.rdx63, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count25, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x double> poison, double %i.eg, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <8 x i32> zeroinitializer
  %i.eo = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %index
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %index
  %i.er = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.eh, i64 %index
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.ep, align 4, !tbaa !84, !alias.scope !562 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec64 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec65 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec66 = load <24 x float>, ptr %i.eq, align 4, !tbaa !84, !alias.scope !563 ; 3 uses
  %i.eu = fneg <24 x float> %wide.vec66
  %i.ev = shufflevector <24 x float> %i.eu, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.ew = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> splat (float 2.000000e+00), <8 x float> %i.ev)
  %wide.vec70 = load <24 x float>, ptr %i.er, align 4, !tbaa !84, !alias.scope !564, !noalias !565 ; 3 uses
  %strided.vec71 = shufflevector <24 x float> %wide.vec70, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec72 = shufflevector <24 x float> %wide.vec70, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec73 = shufflevector <24 x float> %wide.vec70, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ex = fsub <8 x float> %i.ew, %strided.vec71
  %wide.vec74 = load <24 x float>, ptr %i.es, align 4, !tbaa !84, !alias.scope !566 ; 3 uses
  %strided.vec75 = shufflevector <24 x float> %wide.vec74, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec76 = shufflevector <24 x float> %wide.vec74, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec77 = shufflevector <24 x float> %wide.vec74, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.load = load <8 x float>, ptr %i.et, align 4, !tbaa !84, !alias.scope !567 ; 2 uses
  %i.ey = fmul <8 x float> %strided.vec75, %wide.load
  %i.ez = fneg <24 x float> %wide.vec66
  %i.fa = shufflevector <24 x float> %i.ez, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.fb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec64, <8 x float> splat (float 2.000000e+00), <8 x float> %i.fa)
  %i.fc = fsub <8 x float> %i.fb, %strided.vec72
  %i.fd = fmul <8 x float> %strided.vec76, %wide.load
  %i.fe = fneg <24 x float> %wide.vec66
  %i.ff = shufflevector <24 x float> %i.fe, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.fg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec65, <8 x float> splat (float 2.000000e+00), <8 x float> %i.ff)
  %i.fh = fsub <8 x float> %i.fg, %strided.vec73
  %i.fi = fneg <8 x float> %i.fh
  %i.fj = fpext <8 x float> %i.fi to <8 x double>
  %i.fk = fdiv <8 x double> %i.fj, %broadcast.splat
  %wide.load79 = load <8 x float>, ptr %i.et, align 4, !tbaa !84, !alias.scope !567
  %i.fl = fmul <8 x float> %strided.vec77, %wide.load79
  %i.fm = fpext <8 x float> %i.fl to <8 x double>
  %i.fn = fsub <8 x double> %i.fk, %i.fm
  %i.fo = fptrunc <8 x double> %i.fn to <8 x float>
  %i.fp = shufflevector <8 x float> %i.ex, <8 x float> %i.fc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fq = fneg <16 x float> %i.fp
  %i.fr = fpext <16 x float> %i.fq to <16 x double>
  %i.fs = fdiv <16 x double> %i.fr, %i.eo
  %i.ft = shufflevector <8 x float> %i.ey, <8 x float> %i.fd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fu = fpext <16 x float> %i.ft to <16 x double>
  %i.fv = fsub <16 x double> %i.fs, %i.fu
  %i.fw = fptrunc <16 x double> %i.fv to <16 x float>
  %i.fx = shufflevector <8 x float> %i.fo, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.fw, <16 x float> %i.fx, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.er, align 4, !tbaa !84, !alias.scope !564, !noalias !565
  %i.fy = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %index
  store <24 x float> zeroinitializer, ptr %i.fy, align 4, !tbaa !84, !alias.scope !568, !noalias !569
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count25
  br i1 %cmp.n, label %._crit_edge13, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block
  %indvars.iv22.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.preheader ], [ %indvars.iv22.ph, %.preheader.preheader ] ; 7 uses
  %i.ga = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv22 ; 3 uses
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv22 ; 3 uses
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv22 ; 4 uses
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.eh, i64 %indvars.iv22 ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv22 ; 3 uses
  %i.gf = load float, ptr %i.ga, align 4, !tbaa !84
  %i.gg = load float, ptr %i.gb, align 4, !tbaa !84
  %i.gh = fneg float %i.gg
  %i.gi = call float @llvm.fmuladd.f32(float %i.gf, float 2.000000e+00, float %i.gh)
  %i.gj = load float, ptr %i.gc, align 4, !tbaa !84
  %i.gk = fsub float %i.gi, %i.gj
  %i.gl = fneg float %i.gk
  %i.gm = fpext float %i.gl to double
  %i.gn = fdiv double %i.gm, %i.eg
  %i.go = load float, ptr %i.gd, align 4, !tbaa !84
  %i.gp = load float, ptr %i.ge, align 4, !tbaa !84
  %i.gq = fmul float %i.go, %i.gp
  %i.gr = fpext float %i.gq to double
  %i.gs = fsub double %i.gn, %i.gr
  %i.gt = fptrunc double %i.gs to float
  store float %i.gt, ptr %i.gc, align 4, !tbaa !84
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !84
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !84
  %i.gy = fneg float %i.gx
  %i.gz = call float @llvm.fmuladd.f32(float %i.gv, float 2.000000e+00, float %i.gy)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !84
  %i.hc = fsub float %i.gz, %i.hb
  %i.hd = fneg float %i.hc
  %i.he = fpext float %i.hd to double
  %i.hf = fdiv double %i.he, %i.eg
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !84
  %i.hi = load float, ptr %i.ge, align 4, !tbaa !84
  %i.hj = fmul float %i.hh, %i.hi
  %i.hk = fpext float %i.hj to double
  %i.hl = fsub double %i.hf, %i.hk
  %i.hm = fptrunc double %i.hl to float
  store float %i.hm, ptr %i.ha, align 4, !tbaa !84
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !84
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !84
  %i.hr = fneg float %i.hq
  %i.hs = call float @llvm.fmuladd.f32(float %i.ho, float 2.000000e+00, float %i.hr)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !84
  %i.hv = fsub float %i.hs, %i.hu
  %i.hw = fneg float %i.hv
  %i.hx = fpext float %i.hw to double
  %i.hy = fdiv double %i.hx, %i.eg
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !84
  %i.ib = load float, ptr %i.ge, align 4, !tbaa !84
  %i.ic = fmul float %i.ia, %i.ib
  %i.id = fpext float %i.ic to double
  %i.ie = fsub double %i.hy, %i.id
  %i.if = fptrunc double %i.ie to float
  store float %i.if, ptr %i.ht, align 4, !tbaa !84
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %indvars.iv22 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.ig, align 4, !tbaa !84
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store float 0.000000e+00, ptr %i.ih, align 4, !tbaa !84
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %._crit_edge13, label %.preheader, !llvm.loop !556

._crit_edge13:                                    ; preds = %.preheader, %middle.block, %._crit_edge.._crit_edge13_crit_edge
  %i.ii = phi ptr [ %.pre, %._crit_edge.._crit_edge13_crit_edge ], [ %i.el, %middle.block ], [ %i.el, %.preheader ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ik = load <2 x ptr>, ptr %7, align 8, !tbaa !87
  store <2 x ptr> %i.ik, ptr %20, align 16, !tbaa !87
  %i.il = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.im = load ptr, ptr %i.ij, align 8, !tbaa !189
  store ptr %i.im, ptr %i.il, align 16, !tbaa !189
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.in = load ptr, ptr %i.c, align 8, !tbaa !190, !noalias !570 ; 4 uses
  %i.io = load ptr, ptr %i.dr, align 8, !tbaa !87, !noalias !570
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64               ; 2 uses
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.in, i64 %i.ir
  %i.it = load ptr, ptr %i.dx, align 8, !tbaa !192, !noalias !570
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = sub i64 %i.iu, %i.iq
  %i.iw = getelementptr inbounds i8, ptr %i.in, i64 %i.iv
  store ptr %i.in, ptr %21, align 8, !tbaa !187, !alias.scope !570
  %i.ix = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.is, ptr %i.ix, align 8, !tbaa !188, !alias.scope !570
  %i.iy = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.iw, ptr %i.iy, align 8, !tbaa !189, !alias.scope !570
  store ptr %i.ii, ptr %22, align 8, !tbaa !195
  %i.iz = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !195
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.ii to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.je
  store ptr %i.jf, ptr %i.iz, align 8, !tbaa !195
  %i.jg = load float, ptr %i.dj, align 4, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.jh = call noundef zeroext i1 @_ZN3gmx11Constraints5applyEblifNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEES4_NS_8ArrayRefIS3_EEPA3_KffPfS4_bPA3_fNS_18ConstraintVariableE(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false, i64 noundef %4, i32 noundef 0, float noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull byval(%"class.gmx::ArrayRef.319") align 8 %22, ptr noundef %10, float noundef %i.jg, ptr noundef nonnull %i.dl, ptr noundef nonnull align 8 dead_on_return %23, i1 noundef zeroext false, ptr noundef null, i32 noundef 3) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #20

declare void @_Z27accumulatePotentialEnergiesP14gmx_enerdata_tN3gmx8ArrayRefIKfEEPK8t_lambda(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z12gmx_step_strlPc(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZNK3gmx19VirtualSitesHandler9constructENS_8ArrayRefINS_11BasicVectorIfEEEES4_PA3_KfNS_14VSiteOperationE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, ptr, ptr, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.d = load ptr, ptr %0, align 8, !tbaa !190
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 12
  %i.o = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.n) ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !92
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !192  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !89, !alias.scope !574
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
end_hunk_0
