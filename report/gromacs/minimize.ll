Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/minimize?download=true
inline.NumInlined: 1769
inline.NumDeleted: 812
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN12_GLOBAL__N_115EnergyEvaluator3runEP8em_statePfPA3_fS5_lbl:bb.a
  %i.lk = load ptr, ptr %i.gn, align 8, !tbaa !191, !noalias !724
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = getelementptr inbounds i8, ptr %i.lj, i64 %i.ln
  %i.lp = load ptr, ptr %i.gt, align 8, !tbaa !479, !noalias !724
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = sub i64 %i.lq, %i.lm
  %i.ls = getelementptr inbounds i8, ptr %i.lj, i64 %i.lr
  store ptr %i.lj, ptr %17, align 8, !tbaa !325, !alias.scope !724
  %i.lt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.lo, ptr %i.lt, align 8, !tbaa !514, !alias.scope !724
  %i.lu = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.ls, ptr %i.lu, align 8, !tbaa !515, !alias.scope !724
  %i.lv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lw = load <2 x ptr>, ptr %i.li, align 8, !tbaa !191, !noalias !725
  store <2 x ptr> %i.lw, ptr %i.lv, align 8, !tbaa !191
  %i.lx = load <2 x ptr>, ptr %i.hb, align 8, !tbaa !191, !noalias !725
  %i.ly = load ptr, ptr %i.hb, align 8, !tbaa !325, !noalias !725
  store ptr %i.ly, ptr %18, align 8, !tbaa !325
  store <2 x ptr> %i.lx, ptr %19, align 16
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ma = load float, ptr %i.lz, align 8, !tbaa !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.mb = call noundef zeroext i1 @_ZN3gmx11Constraints5applyEblifNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEES4_NS_8ArrayRefIS3_EEPA3_KffPfS4_bPA3_fNS_18ConstraintVariableE(ptr noundef nonnull align 8 dereferenceable(8) %i.lh, i1 noundef zeroext false, i64 noundef %5, i32 noundef 0, float noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull byval(%"class.gmx::ArrayRef.334") align 8 %19, ptr noundef nonnull %i.gk, float noundef %i.ma, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dead_on_return %20, i1 noundef zeroext true, ptr noundef nonnull %i.f, i32 noundef 5) ; 0 uses
  %i.mc = load float, ptr %i.h, align 4, !tbaa !333
  %i.md = load ptr, ptr %i.he, align 8, !tbaa !253
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 348 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !333
  %i.mg = fadd float %i.mc, %i.mf
  store float %i.mg, ptr %i.me, align 4, !tbaa !333
  %i.mh = load <4 x float>, ptr %i.e, align 16, !tbaa !333
  %i.mi = load <4 x float>, ptr %i.f, align 16, !tbaa !333
  %i.mj = fadd <4 x float> %i.mh, %i.mi
  store <4 x float> %i.mj, ptr %3, align 4, !tbaa !333
  %i.mk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ml = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mn = load <2 x float>, ptr %i.mk, align 16, !tbaa !333
  %i.mo = load <2 x float>, ptr %i.ml, align 16, !tbaa !333
  %i.mp = fadd <2 x float> %i.mn, %i.mo
  store <2 x float> %i.mp, ptr %i.mm, align 4, !tbaa !333
  %i.mq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.mr = load float, ptr %i.mq, align 8, !tbaa !333
  %i.ms = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.mt = load float, ptr %i.ms, align 8, !tbaa !333
  %i.mu = fadd float %i.mr, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.mu, ptr %i.mv, align 4, !tbaa !333
  %i.mw = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.mx = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.my = load <2 x float>, ptr %i.mw, align 4, !tbaa !333
  %i.mz = load <2 x float>, ptr %i.mx, align 4, !tbaa !333
  %i.na = fadd <2 x float> %i.my, %i.mz
  br label %bb.ag

bb.af:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit
  %i.nb = load <4 x float>, ptr %i.e, align 16, !tbaa !333
  store <4 x float> %i.nb, ptr %3, align 4, !tbaa !333
  %i.nc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ne = load <2 x float>, ptr %i.nc, align 16, !tbaa !333
  store <2 x float> %i.ne, ptr %i.nd, align 4, !tbaa !333
  %i.nf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nh = load float, ptr %i.nf, align 8, !tbaa !333
  store float %i.nh, ptr %i.ng, align 4, !tbaa !333
  %i.ni = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.nj = load <2 x float>, ptr %i.ni, align 4, !tbaa !333
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.nk = phi <2 x float> [ %i.nj, %bb.af ], [ %i.na, %bb.ae ]
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 28
  store <2 x float> %i.nk, ptr %i.nl, align 4, !tbaa !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  %i.nm = load ptr, ptr %i.eg, align 8, !tbaa !712
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !726
  %i.np = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 560
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !727
  %i.ns = call noundef float @_Z9calc_pres7PbcTypeiPA3_KfS2_S2_PA3_f(i32 noundef %i.no, i32 noundef %i.nr, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.g, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.nt = load ptr, ptr %i.he, align 8, !tbaa !253 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 344
  store float %i.ns, ptr %i.nu, align 4, !tbaa !333
  %i.nv = load ptr, ptr %i.i, align 8, !tbaa !244 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 420
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !507
  %.not58 = icmp eq i32 %i.nx, 0
  br i1 %.not58, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 424
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !508
  call void @_Z33accumulateKineticLambdaComponentsP14gmx_enerdata_tN3gmx8ArrayRefIKfEERK8t_lambda(ptr noundef nonnull %i.nt, ptr nonnull %i.hg, ptr nonnull %i.gk, ptr noundef nonnull align 8 dereferenceable(288) %i.nz)
  %.pre108 = load ptr, ptr %i.i, align 8, !tbaa !244
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.oa = phi ptr [ %.pre108, %bb.ah ], [ %i.nv, %bb.ag ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !511
  switch i32 %i.oc, label %bb.ak [
    i32 1, label %bb.aj
    i32 2, label %bb.aj
    i32 6, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  %i.od = load ptr, ptr %i.ft, align 8, !tbaa !519
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 744
  %i.of = load ptr, ptr %i.ek, align 8, !tbaa !703
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !180
  %i.oh = load ptr, ptr %i.hb, align 8, !tbaa !325
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 988
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 996
  call fastcc void @_ZL14get_f_norm_maxPK9t_commrecPK9t_grpoptsP9t_mdatomsPKN3gmx11BasicVectorIfEEPfSC_Pi(ptr noundef readonly %i.od, ptr noundef nonnull readonly %i.oe, ptr noundef readonly %i.og, ptr noundef %i.oh, ptr noundef nonnull %i.oi, ptr noundef nonnull %i.oj, ptr noundef nonnull %i.ok)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  ret void
}

declare void @_ZN3gmx18ObservablesReducer19markAsReadyToReduceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN3gmx12EnergyOutput19addDataAtEnergyStepEbbdfPK14gmx_enerdata_tPK8t_lambdaPA3_KfNS_16PTCouplingArraysEiS9_S9_PK14gmx_ekindata_tPS7_PKNS_11ConstraintsE(ptr noundef nonnull align 8 dereferenceable(392), i1 noundef zeroext, i1 noundef zeroext, double noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"struct.gmx::PTCouplingArrays") align 8, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN3gmx12EnergyOutput11printHeaderEP8_IO_FILEld(ptr noundef, i64 noundef, double noundef) local_unnamed_addr #6

declare void @_ZN3gmx12EnergyOutput21printStepToEnergyFileEP9ener_filebbbP8_IO_FILEldP8t_fcdataPNS_3AwhE(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i64 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14get_f_norm_maxPK9t_commrecPK9t_grpoptsP9t_mdatomsPKN3gmx11BasicVectorIfEEPfSC_Pi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.b = load i32, ptr %i.a, align 8, !tbaa !327  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !328  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !328
  %i.g = icmp eq ptr %i.d, %i.f
  %i.h = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.g, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %.preheader119
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !483
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %i.h, label %.lr.ph133.preheader, label %.loopexit.thread

.lr.ph133.preheader:                              ; preds = %.preheader
  %wide.trip.count150 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count150, 1
  %i.k = icmp eq i32 %i.b, 1
  br i1 %i.k, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter = and i64 %wide.trip.count150, 2147483646
  br label %.lr.ph133

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.071126 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ag, %bb.h ]
  %.072125 = phi float [ 0.000000e+00, %.lr.ph ], [ %spec.select99, %bb.h ] ; 2 uses
  %.078124 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.h ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2, !tbaa !331
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !332
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load float, ptr %i.p, align 4, !tbaa !333 ; 2 uses
  %i.s = fmul float %i.r, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.177 = phi float [ 0.000000e+00, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !332
  %.not.1 = icmp eq i32 %i.u, 0
  br i1 %.not.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !333 ; 2 uses
  %i.x = fmul float %i.w, %i.w
  %i.y = fadd float %.177, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.177.1 = phi float [ %.177, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !332
  %.not.2 = icmp eq i32 %i.aa, 0
  br i1 %.not.2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !333 ; 2 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = fadd float %.177.1, %i.ad
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.177.2 = phi float [ %.177.1, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  %i.af = fpext float %.177.2 to double
  %i.ag = fadd double %.071126, %i.af             ; 2 uses
  %i.ah = fcmp ogt float %.177.2, %.072125        ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.ah, i32 %i.ai, i32 %.078124 ; 2 uses
  %spec.select99 = select i1 %i.ah, float %.177.2, float %.072125 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !728

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %indvars.iv147 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %indvars.iv.next148.1, %.lr.ph133 ] ; 4 uses
  %.1132 = phi double [ 0.000000e+00, %.lr.ph133.preheader.new ], [ %i.aw, %.lr.ph133 ]
  %.274131 = phi float [ 0.000000e+00, %.lr.ph133.preheader.new ], [ %spec.select101.1, %.lr.ph133 ] ; 2 uses
  %.280130 = phi i32 [ -1, %.lr.ph133.preheader.new ], [ %spec.select100.1, %.lr.ph133 ]
  %niter = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter.next.1, %.lr.ph133 ]
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv147 ; 2 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.aj, align 4 ; 3 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !19 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.07.0.copyload, %.sroa.07.0.copyload
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.al = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %.sroa.28.0.copyload, float %i.al) ; 3 uses
  %i.an = fpext float %i.am to double
  %i.ao = fadd double %.1132, %i.an
  %i.ap = fcmp ogt float %i.am, %.274131          ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv147 to i32
  %spec.select100 = select i1 %i.ap, i32 %i.aq, i32 %.280130
  %spec.select101 = select i1 %i.ap, float %i.am, float %.274131 ; 2 uses
  %indvars.iv.next148 = or disjoint i64 %indvars.iv147, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next148 ; 2 uses
  %.sroa.07.0.copyload.1 = load <2 x float>, ptr %i.ar, align 4 ; 3 uses
  %.sroa.28.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.28.0.copyload.1 = load float, ptr %.sroa.28.0..sroa_idx.1, align 4, !tbaa !19 ; 2 uses
  %.sroa.0.0.vec.extract.i.1 = extractelement <2 x float> %.sroa.07.0.copyload.1, i64 0 ; 2 uses
  %foldExtExtBinop.1 = fmul <2 x float> %.sroa.07.0.copyload.1, %.sroa.07.0.copyload.1
  %i.as = extractelement <2 x float> %foldExtExtBinop.1, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.1, float %.sroa.0.0.vec.extract.i.1, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.1, float %.sroa.28.0.copyload.1, float %i.at) ; 3 uses
  %i.av = fpext float %i.au to double
  %i.aw = fadd double %i.ao, %i.av                ; 3 uses
  %i.ax = fcmp ogt float %i.au, %spec.select101   ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv.next148 to i32
  %spec.select100.1 = select i1 %i.ax, i32 %i.ay, i32 %spec.select100 ; 3 uses
  %spec.select101.1 = select i1 %i.ax, float %i.au, float %spec.select101 ; 3 uses
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !729

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph133
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph133.preheader
  %indvars.iv147.epil.init = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next148.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.1132.epil.init = phi double [ 0.000000e+00, %.lr.ph133.preheader ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %.274131.epil.init = phi float [ 0.000000e+00, %.lr.ph133.preheader ], [ %spec.select101.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.280130.epil.init = phi i32 [ -1, %.lr.ph133.preheader ], [ %spec.select100.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv147.epil.init ; 2 uses
  %.sroa.07.0.copyload.epil = load <2 x float>, ptr %i.az, align 4 ; 3 uses
  %.sroa.28.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.28.0.copyload.epil = load float, ptr %.sroa.28.0..sroa_idx.epil, align 4, !tbaa !19 ; 2 uses
  %.sroa.0.0.vec.extract.i.epil = extractelement <2 x float> %.sroa.07.0.copyload.epil, i64 0 ; 2 uses
  %foldExtExtBinop.epil = fmul <2 x float> %.sroa.07.0.copyload.epil, %.sroa.07.0.copyload.epil
  %i.ba = extractelement <2 x float> %foldExtExtBinop.epil, i64 1
  %i.bb = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.epil, float %.sroa.0.0.vec.extract.i.epil, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.epil, float %.sroa.28.0.copyload.epil, float %i.bb) ; 3 uses
  %i.bd = fpext float %i.bc to double
  %i.be = fadd double %.1132.epil.init, %i.bd
  %i.bf = fcmp ogt float %i.bc, %.274131.epil.init ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv147.epil.init to i32
  %spec.select100.epil = select i1 %i.bf, i32 %i.bg, i32 %.280130.epil.init
  %spec.select101.epil = select i1 %i.bf, float %i.bc, float %.274131.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.lr.ph133.epil.preheader, %.loopexit.loopexit.unr-lcssa
  %.482 = phi i32 [ %spec.select100.epil, %.lr.ph133.epil.preheader ], [ %spec.select100.1, %.loopexit.loopexit.unr-lcssa ], [ %spec.select, %bb.h ] ; 4 uses
  %.4 = phi float [ %spec.select101.epil, %.lr.ph133.epil.preheader ], [ %spec.select101.1, %.loopexit.loopexit.unr-lcssa ], [ %spec.select99, %bb.h ] ; 3 uses
  %.2 = phi double [ %i.be, %.lr.ph133.epil.preheader ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ], [ %i.ag, %bb.h ] ; 3 uses
  %i.bh = icmp sgt i32 %.482, -1
  br i1 %i.bh, label %bb.i, label %.loopexit.thread

bb.i:                                             ; preds = %.loopexit
  %i.bi = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !391 ; 2 uses
  %.not117 = icmp eq ptr %.val, null
  br i1 %.not117, label %.loopexit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 896
  %i.bk = zext nneg i32 %.482 to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !732
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !332
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader119, %.preheader, %.loopexit, %bb.i, %bb.j
  %.2168 = phi double [ %.2, %bb.j ], [ %.2, %bb.i ], [ %.2, %.loopexit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader119 ] ; 2 uses
  %.4167 = phi float [ %.4, %bb.j ], [ %.4, %bb.i ], [ %.4, %.loopexit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader119 ] ; 5 uses
  %.087 = phi i32 [ %i.bn, %bb.j ], [ %.482, %bb.i ], [ %.482, %.loopexit ], [ -1, %.preheader ], [ -1, %.preheader119 ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67, !nonnull !68, !align !69 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !516 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.s

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit.thread
  %i.bt = shl nuw nsw i32 %i.br, 1
  %i.bu = or disjoint i32 %i.bt, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 5 uses
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #35 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i8 0, i64 %i.bw, i1 false), !tbaa !326
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  %i.bz = fpext float %.4167 to double
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !79
  %i.cc = shl nsw i32 %i.cb, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.bx, i64 %i.cd ; 2 uses
  store double %i.bz, ptr %i.ce, align 8, !tbaa !326
  %i.cf = sitofp i32 %.087 to double
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !326
  %i.ch = load i32, ptr %i.bq, align 8, !tbaa !516
  %i.ci = shl nsw i32 %i.ch, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cj
  store double %.2168, ptr %i.ck, align 8, !tbaa !326
  %i.cl = load ptr, ptr %i.bo, align 8, !tbaa !67, !nonnull !68, !align !69
  invoke void @_ZNK3gmx7MpiComm9sumReduceENS_8ArrayRefIdEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr nonnull %i.bx, ptr nonnull %i.by)
          to label %bb.k unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cm = load i32, ptr %i.bq, align 8, !tbaa !516 ; 4 uses
  %i.cn = shl nsw i32 %i.cm, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !326
  %i.cr = icmp sgt i32 %i.cm, 0
  br i1 %i.cr, label %.lr.ph140.preheader, label %_ZNSt6vectorIdSaIdEED2Ev.exit104

.lr.ph140.preheader:                              ; preds = %bb.k
  %wide.trip.count155 = zext nneg i32 %i.cm to i64 ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count155, 3   ; 3 uses
  %i.cs = icmp ult i32 %i.cm, 4
  br i1 %i.cs, label %.lr.ph140.epil.preheader, label %.lr.ph140.preheader.new

.lr.ph140.preheader.new:                          ; preds = %.lr.ph140.preheader
  %unroll_iter185 = and i64 %wide.trip.count155, 2147483644
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.p, %.lr.ph140.preheader.new
  %indvars.iv152 = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %indvars.iv.next153.3, %bb.p ] ; 5 uses
  %.5139 = phi float [ %.4167, %.lr.ph140.preheader.new ], [ %.6.3, %bb.p ] ; 2 uses
  %.188137 = phi i32 [ %.087, %.lr.ph140.preheader.new ], [ %.289.3, %bb.p ]
  %niter186 = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %niter186.next.3, %bb.p ]
  %.idx = shl nuw nsw i64 %indvars.iv152, 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !326 ; 2 uses
  %i.cv = fpext float %.5139 to double
  %i.cw = fcmp ogt double %i.cu, %i.cv
  br i1 %i.cw, label %bb.l, label %.lr.ph140.1

bb.l:                                             ; preds = %.lr.ph140
  %i.cx = fptrunc double %i.cu to float
end_hunk_0
