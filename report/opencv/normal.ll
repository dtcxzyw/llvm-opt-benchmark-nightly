Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/normal?download=true
inline.NumInlined: 1999
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2cv7LINEMODIfE11computeImplIffEENS_3MatERKNS_4Mat_IT_EERS3_:.preheader
  %i.ky = add nsw i64 %.sroa.725.1.us.6, 25
  %i.kz = add nuw nsw i64 %.sroa.15.1.us.7, 25
  %i.la = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lb, <2 x float> splat (float 5.000000e+00), <2 x float> %i.kq)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.15.1.us.8 = phi i64 [ %i.kz, %bb.g ], [ %.sroa.15.1.us.7, %bb.f ] ; 2 uses
  %.sroa.725.1.us.8 = phi i64 [ %i.ky, %bb.g ], [ %.sroa.725.1.us.6, %bb.f ] ; 4 uses
  %.sroa.022.1.us.8 = phi i64 [ %i.kx, %bb.g ], [ %.sroa.022.1.us.6, %bb.f ] ; 2 uses
  %i.ld = phi <2 x float> [ %i.lc, %bb.g ], [ %i.kq, %bb.f ] ; 2 uses
  %i.le = mul nuw nsw i64 %.sroa.022.1.us.8, %.sroa.15.1.us.8
  %i.lf = mul nsw i64 %.sroa.725.1.us.8, %.sroa.725.1.us.8
  %i.lg = sub nsw i64 %i.le, %i.lf
  %i.lh = uitofp nneg i64 %.sroa.15.1.us.8 to float
  %i.li = sitofp i64 %.sroa.725.1.us.8 to float
  %i.lj = fneg float %i.li
  %i.lk = extractelement <2 x float> %i.ld, i64 0 ; 2 uses
  %i.ll = fmul float %i.lk, %i.lj
  %i.lm = extractelement <2 x float> %i.ld, i64 1 ; 2 uses
  %i.ln = call float @llvm.fmuladd.f32(float %i.lh, float %i.lm, float %i.ll) ; 6 uses
  %i.lo = sub nsw i64 0, %.sroa.725.1.us.8
  %i.lp = sitofp i64 %i.lo to float
  %i.lq = uitofp nneg i64 %.sroa.022.1.us.8 to float
  %i.lr = fmul float %i.lk, %i.lq
  %i.ls = sitofp i64 %i.lg to float               ; 2 uses
  %i.lt = add nuw nsw i32 %.080117.us, 1          ; 2 uses
  %i.lu = uitofp nneg i32 %i.lt to float
  %i.lv = fmul float %i.ln, %i.lu
  %i.lw = call float @llvm.fmuladd.f32(float %i.hk, float %i.ls, float %i.lv)
  %i.lx = fmul float %i.ln, %i.cg                 ; 2 uses
  %i.ly = fmul float %i.r, %i.lx
  %i.lz = call float @llvm.fmuladd.f32(float %i.k, float %i.lw, float %i.ly)
  %i.ma = call float @llvm.fmuladd.f32(float %i.z, float %i.ln, float %i.lz) ; 2 uses
  %i.mb = fmul float %i.ac, %i.ln
  %i.mc = call float @llvm.fmuladd.f32(float %i.aa, float %i.lx, float %i.mb) ; 2 uses
  %i.md = uitofp nneg i32 %.080117.us to float
  %i.me = call float @llvm.fmuladd.f32(float %i.lp, float %i.lm, float %i.lr) ; 6 uses
  %i.mf = fmul float %i.me, %i.md
  %i.mg = fmul float %i.me, %i.ci
  %i.mh = call float @llvm.fmuladd.f32(float %i.hk, float %i.ls, float %i.mg) ; 2 uses
  %i.mi = fmul float %i.r, %i.mh
  %i.mj = call float @llvm.fmuladd.f32(float %i.k, float %i.mf, float %i.mi)
  %i.mk = call float @llvm.fmuladd.f32(float %i.z, float %i.me, float %i.mj) ; 2 uses
  %i.ml = fmul float %i.ac, %i.me
  %i.mm = call float @llvm.fmuladd.f32(float %i.aa, float %i.mh, float %i.ml) ; 2 uses
  %i.mn = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mo = insertelement <2 x float> %i.mn, float %i.me, i64 1
  %i.mp = fneg <2 x float> %i.mo
  %i.mq = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.mr = insertelement <2 x float> %i.mq, float %i.ma, i64 1
  %i.ms = fmul <2 x float> %i.mr, %i.mp
  %i.mt = insertelement <2 x float> poison, float %i.mc, i64 0
  %i.mu = insertelement <2 x float> %i.mt, float %i.ln, i64 1
  %i.mv = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mw = insertelement <2 x float> %i.mv, float %i.mk, i64 1
  %i.mx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.mw, <2 x float> %i.ms) ; 8 uses
  %i.my = fneg float %i.mk
  %i.mz = fmul float %i.mc, %i.my
  %i.na = call float @llvm.fmuladd.f32(float %i.ma, float %i.mm, float %i.mz) ; 7 uses
  %i.nb = fcmp ogt float %i.na, 0.000000e+00
  br i1 %i.nb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %foldExtExtBinop = fmul <2 x float> %i.mx, %i.mx
  %i.nc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.nd = extractelement <2 x float> %i.mx, i64 0 ; 2 uses
  %i.ne = call float @llvm.fmuladd.f32(float %i.nd, float %i.nd, float %i.nc)
  %i.nf = call float @llvm.fmuladd.f32(float %i.na, float %i.na, float %i.ne)
  %sqrt.i9.i.us = call noundef float @llvm.sqrt.f32(float %i.nf)
  %i.ng = fdiv float 1.000000e+00, %sqrt.i9.i.us  ; 2 uses
  %i.nh = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x float> %i.mx, %i.ni
  %i.nk = fmul float %i.na, %i.ng
  br label %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

bb.j:                                             ; preds = %bb.h
  %i.nl = fneg <2 x float> %i.mx
  %i.nm = fneg float %i.na
  %foldExtExtBinop272 = fmul <2 x float> %i.mx, %i.mx
  %i.nn = extractelement <2 x float> %foldExtExtBinop272, i64 1
  %i.no = extractelement <2 x float> %i.mx, i64 0 ; 2 uses
  %i.np = call float @llvm.fmuladd.f32(float %i.no, float %i.no, float %i.nn)
  %i.nq = call float @llvm.fmuladd.f32(float %i.na, float %i.na, float %i.np)
  %sqrt.i.i.us = call noundef float @llvm.sqrt.f32(float %i.nq)
  %i.nr = fdiv float 1.000000e+00, %sqrt.i.i.us   ; 2 uses
  %i.ns = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = fmul <2 x float> %i.nt, %i.nl
  %i.nv = fmul float %i.nr, %i.nm
  br label %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us: ; preds = %bb.j, %bb.i
  %.sroa.9.0.i.us = phi float [ %i.nv, %bb.j ], [ %i.nk, %bb.i ]
  %i.nw = phi <2 x float> [ %i.nu, %bb.j ], [ %i.nj, %bb.i ]
  store <2 x float> %i.nw, ptr %.081116.us, align 4, !tbaa !65
  %i.nx = getelementptr inbounds nuw i8, ptr %.081116.us, i64 8
  store float %.sroa.9.0.i.us, ptr %i.nx, align 4, !tbaa !65
  %i.ny = getelementptr inbounds nuw i8, ptr %.081116.us, i64 12
  store float 0.000000e+00, ptr %i.ny, align 4, !tbaa !65
  %i.nz = getelementptr inbounds nuw i8, ptr %.082115.us, i64 4
  %i.oa = getelementptr inbounds nuw i8, ptr %.081116.us, i64 16
  %exitcond.not = icmp eq i32 %.080117.us, %i.be
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !267

._crit_edge.us:                                   ; preds = %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us, %middle.block
  %exitcond145.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond145.not, label %._crit_edge121, label %.lr.ph120.split.us, !llvm.loop !268

._crit_edge121:                                   ; preds = %._crit_edge.us, %.lr.ph120, %.preheader
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7LINEMODIfE11computeImplIddEENS_3MatERKNS_4Mat_IT_EERS3_(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %4 = alloca %"class.cv::Matx.38", align 8       ; 9 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = mul nsw i64 %i.d, -5                     ; 4 uses
  %i.f = mul nsw i64 %i.d, 5                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 36, i1 false), !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1040056315, ptr %5, align 8, !tbaa !59
  store ptr %4, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 12884901891, ptr %i.i, align 8, !tbaa !36
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.m = load <2 x float>, ptr %4, align 8, !tbaa !65 ; 3 uses
  %i.n = load float, ptr %i.j, align 4, !tbaa !65
  %i.o = load <2 x float>, ptr %i.k, align 8, !tbaa !65 ; 4 uses
  %i.p = load float, ptr %i.l, align 4, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load float, ptr %i.q, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.t = load double, ptr %i.s, align 8, !tbaa !45 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double +qnan, ptr %i.a, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.v, align 8, !tbaa !21
  store i64 4294967297, ptr %i.u, align 8, !tbaa !36
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52   ; 2 uses
  %i.aa = add nsw i32 %i.z, -6
  %i.ab = icmp sgt i32 %i.z, 11
  br i1 %i.ab, label %.lr.ph120, label %._crit_edge121

.lr.ph120:                                        ; preds = %.preheader
  %i.ac = shufflevector <2 x float> %i.m, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.ad = fneg <2 x float> %i.ac
  %i.ae = shufflevector <2 x float> %i.m, <2 x float> %i.o, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.af = fdiv <2 x float> splat (float 1.000000e+00), %i.ae
  %i.ag = extractelement <2 x float> %i.o, i64 0
  %i.ah = fneg float %i.ag
  %i.ai = fmul float %i.r, %i.ah
  %i.aj = call float @llvm.fmuladd.f32(float %i.n, float %i.p, float %i.ai)
  %foldExtExtBinop = fmul <2 x float> %i.m, %i.o  ; 2 uses
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = fdiv float %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.an = fdiv <2 x float> %i.ad, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !61
  %i.aq = icmp slt i32 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !61
  %i.ax = icmp slt i32 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !53  ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 11
  %i.be = fpext float %i.al to double             ; 3 uses
  %i.bf = fpext <2 x float> %i.af to <2 x double> ; 5 uses
  %i.bg = fpext <2 x float> %i.an to <2 x double> ; 4 uses
  br i1 %i.bd, label %.lr.ph120.split.us.preheader, label %._crit_edge121

.lr.ph120.split.us.preheader:                     ; preds = %.lr.ph120
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.bh = add nsw i32 %i.bc, -7
  %i.bi = load i64, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %i.bk = add nsw i32 %i.bc, -11                  ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.bk, 2
  %n.vec = and i64 %i.bl, 4294967294              ; 5 uses
  %i.bm = trunc nuw i64 %n.vec to i32
  %i.bn = add i32 %i.bm, 5
  %i.bo = shl nuw nsw i64 %n.vec, 4
  %i.bp = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer ; 9 uses
  %broadcast.splat202 = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat204 = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert205 = insertelement <2 x double> poison, double %i.be, i64 0
  %broadcast.splat206 = shufflevector <2 x double> %broadcast.splatinsert205, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat208 = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat210 = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bl
  %7 = extractelement <2 x double> %i.bf, i64 0
  %8 = extractelement <2 x double> %i.bf, i64 1
  br label %.lr.ph120.split.us

.lr.ph120.split.us:                               ; preds = %.lr.ph120.split.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ 5, %.lr.ph120.split.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 4 uses
  br i1 %i.aq, label %_ZNK2cv3Mat3ptrEii.exit.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph120.split.us
  %i.bq = mul i64 %i.bi, %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bq
  %i.bs = load i64, ptr %i.au, align 8, !tbaa !49
  br label %_ZNK2cv3Mat3ptrEii.exit.us

_ZNK2cv3Mat3ptrEii.exit.us:                       ; preds = %.lr.ph120.split.us, %bb.a
  %.sink193 = phi i64 [ %i.bs, %bb.a ], [ %i.bi, %.lr.ph120.split.us ]
  %.sink = phi ptr [ %i.br, %bb.a ], [ %i.as, %.lr.ph120.split.us ]
  %i.bt = mul i64 %.sink193, 5
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bt ; 3 uses
  br i1 %i.ax, label %_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv3Mat3ptrEii.exit.us
  %i.bv = mul i64 %i.bj, %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bv
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !49
  br label %_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us

_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us:    ; preds = %_ZNK2cv3Mat3ptrEii.exit.us, %bb.b
  %.sink196 = phi i64 [ %i.bx, %bb.b ], [ %i.bj, %_ZNK2cv3Mat3ptrEii.exit.us ]
  %.sink194 = phi ptr [ %i.bw, %bb.b ], [ %i.az, %_ZNK2cv3Mat3ptrEii.exit.us ]
  %i.by = mul i64 %.sink196, 5
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink194, i64 %i.by ; 3 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv to i32
  %i.cb = uitofp nneg i32 %i.ca to double         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cd = uitofp nneg i32 %i.cc to double         ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us
  %i.ce = getelementptr i8, ptr %i.bz, i64 %i.bo
  %i.cf = getelementptr i8, ptr %i.bu, i64 %i.bp
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 5, i32 6>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.cg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cg
  %i.ch = shl i64 %index, 3
  %next.gep211 = getelementptr i8, ptr %i.bu, i64 %i.ch ; 5 uses
  %wide.load = load <2 x double>, ptr %next.gep211, align 8, !tbaa !91 ; 12 uses
  %i.ci = getelementptr [8 x i8], ptr %next.gep211, i64 %i.e ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -40
  %wide.load212 = load <2 x double>, ptr %i.cj, align 8, !tbaa !91
  %i.ck = fsub <2 x double> %wide.load212, %wide.load ; 2 uses
  %i.cl = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ck)
  %i.cm = fcmp ogt <2 x double> %i.cl, %broadcast.splat200 ; 2 uses
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> splat (double -5.000000e+00), <2 x double> zeroinitializer)
  %i.co = select <2 x i1> %i.cm, <2 x i64> zeroinitializer, <2 x i64> splat (i64 25) ; 5 uses
  %i.cp = select <2 x i1> %i.cm, <2 x double> zeroinitializer, <2 x double> %i.cn ; 4 uses
  %wide.load213 = load <2 x double>, ptr %i.ci, align 8, !tbaa !91
  %i.cq = fsub <2 x double> %wide.load213, %wide.load ; 3 uses
  %i.cr = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cq)
  %i.cs = fcmp ogt <2 x double> %i.cr, %broadcast.splat200 ; 3 uses
  %i.ct = add nuw nsw <2 x i64> %i.co, splat (i64 25) ; 2 uses
  %i.cu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> zeroinitializer, <2 x double> %i.cp)
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> splat (double -5.000000e+00), <2 x double> %i.cp)
  %predphi = select <2 x i1> %i.cs, <2 x i64> %i.co, <2 x i64> %i.ct ; 2 uses
  %predphi214 = select <2 x i1> %i.cs, <2 x double> %i.cp, <2 x double> %i.cv ; 2 uses
  %predphi215 = select <2 x i1> %i.cs, <2 x double> %i.cp, <2 x double> %i.cu ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ci, i64 40
  %wide.load216 = load <2 x double>, ptr %i.cw, align 8, !tbaa !91
  %i.cx = fsub <2 x double> %wide.load216, %wide.load ; 3 uses
  %i.cy = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cx)
  %i.cz = fcmp ogt <2 x double> %i.cy, %broadcast.splat200 ; 5 uses
  %i.da = add nsw <2 x i64> %i.co, splat (i64 -25)
  %i.db = add nuw nsw <2 x i64> %predphi, splat (i64 25)
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> splat (double 5.000000e+00), <2 x double> %predphi215)
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> splat (double -5.000000e+00), <2 x double> %predphi214)
  %predphi217 = select <2 x i1> %i.cz, <2 x i64> %predphi, <2 x i64> %i.db ; 2 uses
  %predphi218 = select <2 x i1> %i.cz, <2 x i64> %i.co, <2 x i64> %i.da ; 2 uses
  %predphi219 = select <2 x i1> %i.cz, <2 x i64> %i.co, <2 x i64> %i.ct ; 2 uses
  %predphi220 = select <2 x i1> %i.cz, <2 x double> %predphi214, <2 x double> %i.dd ; 2 uses
  %predphi221 = select <2 x i1> %i.cz, <2 x double> %predphi215, <2 x double> %i.dc ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %next.gep211, i64 -40
  %wide.load222 = load <2 x double>, ptr %i.de, align 8, !tbaa !91
  %i.df = fsub <2 x double> %wide.load222, %wide.load ; 3 uses
  %i.dg = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.df)
  %i.dh = fcmp ogt <2 x double> %i.dg, %broadcast.splat200 ; 3 uses
  %i.di = add nuw nsw <2 x i64> %predphi219, splat (i64 25)
  %i.dj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> splat (double -5.000000e+00), <2 x double> %predphi221)
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> zeroinitializer, <2 x double> %predphi220)
  %predphi223 = select <2 x i1> %i.dh, <2 x i64> %predphi219, <2 x i64> %i.di ; 2 uses
  %predphi224 = select <2 x i1> %i.dh, <2 x double> %predphi220, <2 x double> %i.dk ; 2 uses
  %predphi225 = select <2 x i1> %i.dh, <2 x double> %predphi221, <2 x double> %i.dj ; 2 uses
  %i.dl = fsub <2 x double> %wide.load, %wide.load ; 3 uses
  %i.dm = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dl)
  %i.dn = fcmp ogt <2 x double> %i.dm, %broadcast.splat200 ; 2 uses
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> zeroinitializer, <2 x double> %predphi225)
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> zeroinitializer, <2 x double> %predphi224)
  %i.dq = select <2 x i1> %i.dn, <2 x double> %predphi224, <2 x double> %i.dp ; 2 uses
  %i.dr = select <2 x i1> %i.dn, <2 x double> %predphi225, <2 x double> %i.do ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %next.gep211, i64 40
  %wide.load226 = load <2 x double>, ptr %i.ds, align 8, !tbaa !91
  %i.dt = fsub <2 x double> %wide.load226, %wide.load ; 3 uses
  %i.du = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dt)
  %i.dv = fcmp ogt <2 x double> %i.du, %broadcast.splat200 ; 3 uses
  %i.dw = add nuw nsw <2 x i64> %predphi223, splat (i64 25)
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> splat (double 5.000000e+00), <2 x double> %i.dr)
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> zeroinitializer, <2 x double> %i.dq)
  %predphi227 = select <2 x i1> %i.dv, <2 x i64> %predphi223, <2 x i64> %i.dw ; 2 uses
  %predphi228 = select <2 x i1> %i.dv, <2 x double> %i.dq, <2 x double> %i.dy ; 2 uses
  %predphi229 = select <2 x i1> %i.dv, <2 x double> %i.dr, <2 x double> %i.dx ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %next.gep211, i64 %i.f ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -40
  %wide.load230 = load <2 x double>, ptr %i.ea, align 8, !tbaa !91
  %i.eb = fsub <2 x double> %wide.load230, %wide.load ; 3 uses
  %i.ec = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eb)
  %i.ed = fcmp ogt <2 x double> %i.ec, %broadcast.splat200 ; 5 uses
  %i.ee = add nuw nsw <2 x i64> %predphi227, splat (i64 25)
  %i.ef = add nsw <2 x i64> %predphi218, splat (i64 -25)
  %i.eg = add nuw nsw <2 x i64> %predphi217, splat (i64 25)
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> splat (double -5.000000e+00), <2 x double> %predphi229)
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> splat (double 5.000000e+00), <2 x double> %predphi228)
  %predphi231 = select <2 x i1> %i.ed, <2 x i64> %predphi217, <2 x i64> %i.eg ; 2 uses
  %predphi232 = select <2 x i1> %i.ed, <2 x i64> %predphi218, <2 x i64> %i.ef ; 2 uses
  %predphi233 = select <2 x i1> %i.ed, <2 x i64> %predphi227, <2 x i64> %i.ee ; 2 uses
  %predphi234 = select <2 x i1> %i.ed, <2 x double> %predphi228, <2 x double> %i.ei ; 2 uses
  %predphi235 = select <2 x i1> %i.ed, <2 x double> %predphi229, <2 x double> %i.eh ; 2 uses
  %wide.load236 = load <2 x double>, ptr %i.dz, align 8, !tbaa !91
  %i.ej = fsub <2 x double> %wide.load236, %wide.load ; 3 uses
  %i.ek = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ej)
  %i.el = fcmp ogt <2 x double> %i.ek, %broadcast.splat200 ; 3 uses
  %i.em = add nuw nsw <2 x i64> %predphi231, splat (i64 25)
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> zeroinitializer, <2 x double> %predphi235)
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> splat (double 5.000000e+00), <2 x double> %predphi234)
  %predphi237 = select <2 x i1> %i.el, <2 x i64> %predphi231, <2 x i64> %i.em ; 2 uses
  %predphi238 = select <2 x i1> %i.el, <2 x double> %predphi234, <2 x double> %i.eo ; 2 uses
  %predphi239 = select <2 x i1> %i.el, <2 x double> %predphi235, <2 x double> %i.en ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dz, i64 40
  %wide.load240 = load <2 x double>, ptr %i.ep, align 8, !tbaa !91
  %i.eq = fsub <2 x double> %wide.load240, %wide.load ; 3 uses
  %i.er = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eq)
  %i.es = fcmp ogt <2 x double> %i.er, %broadcast.splat200 ; 5 uses
  %i.et = add nuw nsw <2 x i64> %predphi233, splat (i64 25)
  %i.eu = add nsw <2 x i64> %predphi232, splat (i64 25)
  %i.ev = add nuw nsw <2 x i64> %predphi237, splat (i64 25)
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> splat (double 5.000000e+00), <2 x double> %predphi239)
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> splat (double 5.000000e+00), <2 x double> %predphi238)
  %predphi241 = select <2 x i1> %i.es, <2 x i64> %predphi237, <2 x i64> %i.ev ; 2 uses
  %predphi242 = select <2 x i1> %i.es, <2 x i64> %predphi232, <2 x i64> %i.eu ; 4 uses
  %predphi243 = select <2 x i1> %i.es, <2 x i64> %predphi233, <2 x i64> %i.et ; 2 uses
  %predphi244 = select <2 x i1> %i.es, <2 x double> %predphi238, <2 x double> %i.ex ; 2 uses
  %predphi245 = select <2 x i1> %i.es, <2 x double> %predphi239, <2 x double> %i.ew ; 2 uses
  %i.ey = mul nuw nsw <2 x i64> %predphi243, %predphi241
  %i.ez = mul nsw <2 x i64> %predphi242, %predphi242
  %i.fa = sub nsw <2 x i64> %i.ey, %i.ez
  %i.fb = uitofp nneg <2 x i64> %predphi241 to <2 x double>
  %i.fc = sitofp <2 x i64> %predphi242 to <2 x double>
  %i.fd = fneg <2 x double> %i.fc
  %i.fe = fmul <2 x double> %predphi244, %i.fd
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %predphi245, <2 x double> %i.fe) ; 5 uses
  %i.fg = sub nsw <2 x i64> zeroinitializer, %predphi242
  %i.fh = sitofp <2 x i64> %i.fg to <2 x double>
  %i.fi = uitofp nneg <2 x i64> %predphi243 to <2 x double>
  %i.fj = fmul <2 x double> %predphi244, %i.fi
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %predphi245, <2 x double> %i.fj) ; 5 uses
  %i.fl = sitofp <2 x i64> %i.fa to <2 x double>  ; 2 uses
  %i.fm = add nuw nsw <2 x i32> %vec.ind, splat (i32 1)
  %i.fn = uitofp nneg <2 x i32> %i.fm to <2 x double>
  %i.fo = fmul <2 x double> %i.ff, %i.fn
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.fl, <2 x double> %i.fo)
  %i.fq = fmul <2 x double> %i.ff, %broadcast.splat ; 2 uses
  %i.fr = fmul <2 x double> %i.fq, %broadcast.splat202
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat204, <2 x double> %i.fp, <2 x double> %i.fr)
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat206, <2 x double> %i.ff, <2 x double> %i.fs)
  %i.fu = fptrunc <2 x double> %i.ft to <2 x float> ; 2 uses
  %i.fv = fmul <2 x double> %i.ff, %broadcast.splat208
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat210, <2 x double> %i.fq, <2 x double> %i.fv)
  %i.fx = fptrunc <2 x double> %i.fw to <2 x float> ; 2 uses
  %i.fy = fptrunc <2 x double> %i.ff to <2 x float> ; 2 uses
  %i.fz = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ga = fmul <2 x double> %i.fk, %i.fz
  %i.gb = fmul <2 x double> %i.fk, %broadcast.splat198
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.fl, <2 x double> %i.gb) ; 2 uses
  %i.gd = fmul <2 x double> %i.gc, %broadcast.splat202
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat204, <2 x double> %i.ga, <2 x double> %i.gd)
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat206, <2 x double> %i.fk, <2 x double> %i.ge)
  %i.gg = fptrunc <2 x double> %i.gf to <2 x float> ; 2 uses
  %i.gh = fmul <2 x double> %i.fk, %broadcast.splat208
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat210, <2 x double> %i.gc, <2 x double> %i.gh)
  %i.gj = fptrunc <2 x double> %i.gi to <2 x float> ; 2 uses
  %i.gk = fptrunc <2 x double> %i.fk to <2 x float> ; 2 uses
  %i.gl = fneg <2 x float> %i.gj
  %i.gm = fmul <2 x float> %i.fy, %i.gl
  %i.gn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.gk, <2 x float> %i.gm) ; 4 uses
  %i.go = fneg <2 x float> %i.gk
end_hunk_0
begin_hunk_1_@_ZNK2cv7LINEMODIfE11computeImplIddEENS_3MatERKNS_4Mat_IT_EERS3_:.preheader
  %i.gy = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gx)
  %i.gz = fdiv <2 x float> splat (float 1.000000e+00), %i.gy ; 2 uses
  %i.ha = fneg <2 x float> %i.gt
  %predphi246.v = select <2 x i1> %i.gu, <2 x float> %i.ha, <2 x float> %i.gt
  %predphi246 = fmul <2 x float> %i.gz, %predphi246.v
  %i.hb = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hc = shufflevector <2 x i1> %i.gu, <2 x i1> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hd = shufflevector <2 x float> %i.gn, <2 x float> %i.gq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.he = fneg <4 x float> %i.hd
  %i.hf = shufflevector <2 x float> %i.gn, <2 x float> %i.gq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hg = select <4 x i1> %i.hc, <4 x float> %i.he, <4 x float> %i.hf
  %i.hh = fmul <4 x float> %i.hb, %i.hg
  %i.hi = shufflevector <2 x float> %predphi246, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.hh, <4 x float> %i.hi, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us, %middle.block
  %.080117.us.ph = phi i32 [ 5, %_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us ], [ %i.bn, %middle.block ]
  %.081116.us.ph = phi ptr [ %i.bz, %_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us ], [ %i.ce, %middle.block ]
  %.082115.us.ph = phi ptr [ %i.bu, %_ZN2cv3Mat3ptrINS_3VecIfLi4EEEEEPT_ii.exit.us ], [ %i.cf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us
  %.080117.us = phi i32 [ %i.lt, %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us ], [ %.080117.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.081116.us = phi ptr [ %i.oj, %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us ], [ %.081116.us.ph, %scalar.ph.preheader ] ; 4 uses
  %.082115.us = phi ptr [ %i.oi, %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us ], [ %.082115.us.ph, %scalar.ph.preheader ] ; 10 uses
  %i.hk = load double, ptr %.082115.us, align 8, !tbaa !91 ; 12 uses
  %i.hl = getelementptr [8 x i8], ptr %.082115.us, i64 %i.e
  %i.hm = getelementptr i8, ptr %i.hl, i64 -40
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !91
  %i.ho = fsub double %i.hn, %i.hk                ; 2 uses
  %i.hp = call noundef double @llvm.fabs.f64(double %i.ho)
  %i.hq = fcmp ogt double %i.hp, %i.t             ; 2 uses
  %i.hr = call double @llvm.fmuladd.f64(double %i.ho, double -5.000000e+00, double 0.000000e+00)
  %.sroa.15.1.us = select i1 %i.hq, i64 0, i64 25 ; 6 uses
  %.sroa.7.1.us = select i1 %i.hq, double 0.000000e+00, double %i.hr
  %i.hs = getelementptr inbounds [8 x i8], ptr %.082115.us, i64 %i.e
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !91
  %i.hu = fsub double %i.ht, %i.hk                ; 2 uses
  %i.hv = call noundef double @llvm.fabs.f64(double %i.hu)
  %i.hw = fcmp ogt double %i.hv, %i.t             ; 2 uses
  %i.hx = insertelement <2 x double> poison, double %.sroa.7.1.us, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hz = add nuw nsw i64 %.sroa.15.1.us, 25
  %i.ia = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> <double -5.000000e+00, double 0.000000e+00>, <2 x double> %i.hy)
  %.sroa.15.1.us.1 = select i1 %i.hw, i64 %.sroa.15.1.us, i64 %i.hz ; 2 uses
  %i.id = select i1 %i.hw, <2 x double> %i.hy, <2 x double> %i.ic ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %.082115.us, i64 %i.e
  %i.if = getelementptr i8, ptr %i.ie, i64 40
  %i.ig = load double, ptr %i.if, align 8, !tbaa !91
  %i.ih = fsub double %i.ig, %i.hk                ; 2 uses
  %i.ii = call noundef double @llvm.fabs.f64(double %i.ih)
  %i.ij = fcmp ogt double %i.ii, %i.t
  br i1 %i.ij, label %bb.d, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.ik = add nuw nsw i64 %.sroa.15.1.us, 25
  %i.il = add nsw i64 %.sroa.15.1.us, -25
  %i.im = add nuw nsw i64 %.sroa.15.1.us.1, 25
  %i.in = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> <double -5.000000e+00, double 5.000000e+00>, <2 x double> %i.id)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %scalar.ph
  %.sroa.15.1.us.2 = phi i64 [ %i.im, %bb.c ], [ %.sroa.15.1.us.1, %scalar.ph ] ; 2 uses
  %.sroa.725.1.us.2 = phi i64 [ %i.il, %bb.c ], [ %.sroa.15.1.us, %scalar.ph ] ; 2 uses
  %.sroa.022.1.us.2 = phi i64 [ %i.ik, %bb.c ], [ %.sroa.15.1.us, %scalar.ph ] ; 2 uses
  %i.iq = phi <2 x double> [ %i.ip, %bb.c ], [ %i.id, %scalar.ph ] ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.082115.us, i64 -40
  %i.is = load double, ptr %i.ir, align 8, !tbaa !91
  %i.it = fsub double %i.is, %i.hk                ; 2 uses
  %i.iu = call noundef double @llvm.fabs.f64(double %i.it)
  %i.iv = fcmp ogt double %i.iu, %i.t             ; 2 uses
  %i.iw = add nuw nsw i64 %.sroa.022.1.us.2, 25
  %i.ix = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> <double 0.000000e+00, double -5.000000e+00>, <2 x double> %i.iq)
  %.sroa.022.1.us.3 = select i1 %i.iv, i64 %.sroa.022.1.us.2, i64 %i.iw ; 2 uses
  %i.ja = select i1 %i.iv, <2 x double> %i.iq, <2 x double> %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.082115.us, i64 40
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !91
  %i.jd = fsub double %i.hk, %i.hk                ; 2 uses
  %i.je = call noundef double @llvm.fabs.f64(double %i.jd)
  %i.jf = fcmp ogt double %i.je, %i.t
  %i.jg = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> zeroinitializer, <2 x double> %i.ja)
  %i.jj = insertelement <2 x i1> poison, i1 %i.jf, i64 0
  %i.jk = shufflevector <2 x i1> %i.jj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jl = select <2 x i1> %i.jk, <2 x double> %i.ja, <2 x double> %i.ji ; 2 uses
  %i.jm = fsub double %i.jc, %i.hk                ; 2 uses
  %i.jn = call noundef double @llvm.fabs.f64(double %i.jm)
  %i.jo = fcmp ogt double %i.jn, %i.t             ; 2 uses
  %i.jp = add nuw nsw i64 %.sroa.022.1.us.3, 25
  %i.jq = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> <double 0.000000e+00, double 5.000000e+00>, <2 x double> %i.jl)
  %.sroa.022.1.us.5 = select i1 %i.jo, i64 %.sroa.022.1.us.3, i64 %i.jp ; 2 uses
  %i.jt = select i1 %i.jo, <2 x double> %i.jl, <2 x double> %i.js ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %.082115.us, i64 %i.f
  %i.jv = getelementptr i8, ptr %i.ju, i64 -40
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !91
  %i.jx = fsub double %i.jw, %i.hk                ; 2 uses
  %i.jy = call noundef double @llvm.fabs.f64(double %i.jx)
  %i.jz = fcmp ogt double %i.jy, %i.t
  br i1 %i.jz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ka = add nuw nsw i64 %.sroa.022.1.us.5, 25
  %i.kb = add nsw i64 %.sroa.725.1.us.2, -25
  %i.kc = add nuw nsw i64 %.sroa.15.1.us.2, 25
  %i.kd = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> <double 5.000000e+00, double -5.000000e+00>, <2 x double> %i.jt)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.15.1.us.6 = phi i64 [ %i.kc, %bb.e ], [ %.sroa.15.1.us.2, %bb.d ] ; 2 uses
  %.sroa.725.1.us.6 = phi i64 [ %i.kb, %bb.e ], [ %.sroa.725.1.us.2, %bb.d ] ; 2 uses
  %.sroa.022.1.us.6 = phi i64 [ %i.ka, %bb.e ], [ %.sroa.022.1.us.5, %bb.d ] ; 2 uses
  %i.kg = phi <2 x double> [ %i.kf, %bb.e ], [ %i.jt, %bb.d ] ; 2 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %.082115.us, i64 %i.f
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !91
  %i.kj = fsub double %i.ki, %i.hk                ; 2 uses
  %i.kk = call noundef double @llvm.fabs.f64(double %i.kj)
  %i.kl = fcmp ogt double %i.kk, %i.t             ; 2 uses
  %i.km = add nuw nsw i64 %.sroa.15.1.us.6, 25
  %i.kn = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> <double 5.000000e+00, double 0.000000e+00>, <2 x double> %i.kg)
  %.sroa.15.1.us.7 = select i1 %i.kl, i64 %.sroa.15.1.us.6, i64 %i.km ; 2 uses
  %i.kq = select i1 %i.kl, <2 x double> %i.kg, <2 x double> %i.kp ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %.082115.us, i64 %i.f
  %i.ks = getelementptr i8, ptr %i.kr, i64 40
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !91
  %i.ku = fsub double %i.kt, %i.hk                ; 2 uses
  %i.kv = call noundef double @llvm.fabs.f64(double %i.ku)
  %i.kw = fcmp ogt double %i.kv, %i.t
  br i1 %i.kw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.kx = add nuw nsw i64 %.sroa.022.1.us.6, 25
  %i.ky = add nsw i64 %.sroa.725.1.us.6, 25
  %i.kz = add nuw nsw i64 %.sroa.15.1.us.7, 25
  %i.la = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> splat (double 5.000000e+00), <2 x double> %i.kq)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.15.1.us.8 = phi i64 [ %i.kz, %bb.g ], [ %.sroa.15.1.us.7, %bb.f ] ; 2 uses
  %.sroa.725.1.us.8 = phi i64 [ %i.ky, %bb.g ], [ %.sroa.725.1.us.6, %bb.f ] ; 4 uses
  %.sroa.022.1.us.8 = phi i64 [ %i.kx, %bb.g ], [ %.sroa.022.1.us.6, %bb.f ] ; 2 uses
  %i.ld = phi <2 x double> [ %i.lc, %bb.g ], [ %i.kq, %bb.f ] ; 2 uses
  %i.le = mul nuw nsw i64 %.sroa.022.1.us.8, %.sroa.15.1.us.8
  %i.lf = mul nsw i64 %.sroa.725.1.us.8, %.sroa.725.1.us.8
  %i.lg = sub nsw i64 %i.le, %i.lf
  %i.lh = uitofp nneg i64 %.sroa.15.1.us.8 to double
  %i.li = sitofp i64 %.sroa.725.1.us.8 to double
  %i.lj = fneg double %i.li
  %i.lk = extractelement <2 x double> %i.ld, i64 0 ; 2 uses
  %i.ll = fmul double %i.lk, %i.lj
  %i.lm = extractelement <2 x double> %i.ld, i64 1 ; 2 uses
  %i.ln = call double @llvm.fmuladd.f64(double %i.lh, double %i.lm, double %i.ll) ; 6 uses
  %i.lo = sub nsw i64 0, %.sroa.725.1.us.8
  %i.lp = sitofp i64 %i.lo to double
  %i.lq = uitofp nneg i64 %.sroa.022.1.us.8 to double
  %i.lr = fmul double %i.lk, %i.lq
  %i.ls = sitofp i64 %i.lg to double              ; 2 uses
  %i.lt = add nuw nsw i32 %.080117.us, 1          ; 2 uses
  %i.lu = uitofp nneg i32 %i.lt to double
  %i.lv = fmul double %i.ln, %i.lu
  %i.lw = call double @llvm.fmuladd.f64(double %i.hk, double %i.ls, double %i.lv)
  %i.lx = fmul double %i.ln, %i.cb                ; 2 uses
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %i.ln, i64 1
  %i.ma = fmul <2 x double> %i.lz, %i.bg
  %i.mb = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.lx, i64 1
  %i.md = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.mc, <2 x double> %i.ma) ; 2 uses
  %i.me = extractelement <2 x double> %i.md, i64 0
  %i.mf = call double @llvm.fmuladd.f64(double %i.be, double %i.ln, double %i.me) ; 2 uses
  %i.mg = uitofp nneg i32 %.080117.us to double
  %i.mh = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mi = insertelement <2 x double> %i.mh, double %i.ln, i64 1
  %i.mj = fptrunc <2 x double> %i.mi to <2 x float> ; 2 uses
  %i.mk = fptrunc double %i.mf to float
  %i.ml = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.mf, i64 1
  %i.mn = fptrunc <2 x double> %i.mm to <2 x float>
  %i.mo = call double @llvm.fmuladd.f64(double %i.lp, double %i.lm, double %i.lr) ; 6 uses
  %i.mp = fmul double %i.mo, %i.mg
  %i.mq = fmul double %i.mo, %i.cd
  %i.mr = call double @llvm.fmuladd.f64(double %i.hk, double %i.ls, double %i.mq) ; 2 uses
  %i.ms = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.mo, i64 1
  %i.mu = fmul <2 x double> %i.mt, %i.bg          ; 2 uses
  %9 = extractelement <2 x double> %i.mu, i64 0
  %10 = call double @llvm.fmuladd.f64(double %7, double %i.mp, double %9)
  %11 = call double @llvm.fmuladd.f64(double %i.be, double %i.mo, double %10) ; 2 uses
  %i.mv = extractelement <2 x double> %i.mu, i64 1
  %i.mw = call double @llvm.fmuladd.f64(double %8, double %i.mr, double %i.mv)
  %i.mx = fptrunc double %11 to float
  %i.my = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mz = insertelement <2 x double> %i.my, double %11, i64 1
  %i.na = fptrunc <2 x double> %i.mz to <2 x float>
  %12 = insertelement <2 x double> poison, double %i.mw, i64 0
  %13 = insertelement <2 x double> %12, double %i.mo, i64 1
  %i.nb = fptrunc <2 x double> %13 to <2 x float> ; 2 uses
  %i.nc = fneg <2 x float> %i.nb
  %i.nd = fmul <2 x float> %i.mn, %i.nc
  %i.ne = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.na, <2 x float> %i.nd) ; 8 uses
  %i.nf = fneg float %i.mx
  %i.ng = extractelement <2 x float> %i.mj, i64 0
  %i.nh = fmul float %i.ng, %i.nf
  %i.ni = extractelement <2 x float> %i.nb, i64 0
  %i.nj = call float @llvm.fmuladd.f32(float %i.mk, float %i.ni, float %i.nh) ; 7 uses
  %i.nk = fcmp ogt float %i.nj, 0.000000e+00
  br i1 %i.nk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %foldExtExtBinop252 = fmul <2 x float> %i.ne, %i.ne
  %i.nl = extractelement <2 x float> %foldExtExtBinop252, i64 1
  %i.nm = extractelement <2 x float> %i.ne, i64 0 ; 2 uses
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %i.nm, float %i.nl)
  %i.no = call float @llvm.fmuladd.f32(float %i.nj, float %i.nj, float %i.nn)
  %sqrt.i9.i.us = call noundef float @llvm.sqrt.f32(float %i.no)
  %i.np = fdiv float 1.000000e+00, %sqrt.i9.i.us  ; 2 uses
  %i.nq = insertelement <2 x float> poison, float %i.np, i64 0
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ns = fmul <2 x float> %i.ne, %i.nr
  %i.nt = fmul float %i.nj, %i.np
  br label %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

bb.j:                                             ; preds = %bb.h
  %i.nu = fneg <2 x float> %i.ne
  %i.nv = fneg float %i.nj
  %foldExtExtBinop254 = fmul <2 x float> %i.ne, %i.ne
  %i.nw = extractelement <2 x float> %foldExtExtBinop254, i64 1
  %i.nx = extractelement <2 x float> %i.ne, i64 0 ; 2 uses
  %i.ny = call float @llvm.fmuladd.f32(float %i.nx, float %i.nx, float %i.nw)
  %i.nz = call float @llvm.fmuladd.f32(float %i.nj, float %i.nj, float %i.ny)
  %sqrt.i.i.us = call noundef float @llvm.sqrt.f32(float %i.nz)
  %i.oa = fdiv float 1.000000e+00, %sqrt.i.i.us   ; 2 uses
  %i.ob = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.od = fmul <2 x float> %i.oc, %i.nu
  %i.oe = fmul float %i.oa, %i.nv
  br label %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us: ; preds = %bb.j, %bb.i
  %.sroa.9.0.i.us = phi float [ %i.oe, %bb.j ], [ %i.nt, %bb.i ]
  %i.of = phi <2 x float> [ %i.od, %bb.j ], [ %i.ns, %bb.i ]
  store <2 x float> %i.of, ptr %.081116.us, align 4, !tbaa !65
  %i.og = getelementptr inbounds nuw i8, ptr %.081116.us, i64 8
  store float %.sroa.9.0.i.us, ptr %i.og, align 4, !tbaa !65
  %i.oh = getelementptr inbounds nuw i8, ptr %.081116.us, i64 12
  store float 0.000000e+00, ptr %i.oh, align 4, !tbaa !65
  %i.oi = getelementptr inbounds nuw i8, ptr %.082115.us, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %.081116.us, i64 16
  %exitcond.not = icmp eq i32 %.080117.us, %i.bh
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !275

._crit_edge.us:                                   ; preds = %_ZN2cv10signNormalIfEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us, %middle.block
  %exitcond145.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond145.not, label %._crit_edge121, label %.lr.ph120.split.us, !llvm.loop !276

._crit_edge121:                                   ; preds = %._crit_edge.us, %.lr.ph120, %.preheader
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_ItEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !33
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 2
  store i32 %i.d, ptr %0, align 8, !tbaa !33
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !61
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_ItEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.o = and i32 %i.e, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4Mat_ItEaSERKNS_3MatE, ptr noundef nonnull @.str.13, i32 noundef 1630) #21
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.n ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.r

bb.p:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 -2113863678, ptr %5, align 8, !tbaa !59
  store ptr %0, ptr %i.y, align 8, !tbaa !21
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 2, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.d, %bb.b
  %.014 = phi ptr [ %0, %bb.b ], [ %0, %bb.d ], [ %i.m, %bb.g ], [ %0, %bb.p ]
  ret ptr %.014

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn16 = phi { ptr, i32 } [ %i.n, %bb.h ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn16
}

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_ItEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !33
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 2
  store i32 %i.d, ptr %0, align 8, !tbaa !33
end_hunk_1
begin_hunk_2_@_ZNK2cv7LINEMODIdE11computeImplIffEENS_3MatERKNS_4Mat_IT_EERS3_:.preheader
bb.f:                                             ; preds = %bb.e
  %i.es = add nuw nsw i64 %.sroa.022.1.us.5, 25
  %i.et = add nsw i64 %.sroa.725.1.us.2, -25
  %i.eu = add nuw nsw i64 %.sroa.15.1.us.2, 25
  %i.ev = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> <float 5.000000e+00, float -5.000000e+00>, <2 x float> %i.el)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.15.1.us.6 = phi i64 [ %i.eu, %bb.f ], [ %.sroa.15.1.us.2, %bb.e ] ; 2 uses
  %.sroa.725.1.us.6 = phi i64 [ %i.et, %bb.f ], [ %.sroa.725.1.us.2, %bb.e ] ; 2 uses
  %.sroa.022.1.us.6 = phi i64 [ %i.es, %bb.f ], [ %.sroa.022.1.us.5, %bb.e ] ; 2 uses
  %i.ey = phi <2 x float> [ %i.ex, %bb.f ], [ %i.el, %bb.e ] ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %.082115.us, i64 %i.f
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !65
  %i.fb = fsub float %i.fa, %i.cc                 ; 2 uses
  %i.fc = call noundef float @llvm.fabs.f32(float %i.fb)
  %i.fd = fcmp ogt float %i.fc, %i.ak             ; 2 uses
  %i.fe = add nuw nsw i64 %.sroa.15.1.us.6, 25
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> <float 5.000000e+00, float 0.000000e+00>, <2 x float> %i.ey)
  %.sroa.15.1.us.7 = select i1 %i.fd, i64 %.sroa.15.1.us.6, i64 %i.fe ; 2 uses
  %i.fi = select i1 %i.fd, <2 x float> %i.ey, <2 x float> %i.fh ; 2 uses
  %i.fj = getelementptr [4 x i8], ptr %.082115.us, i64 %i.f
  %i.fk = getelementptr i8, ptr %i.fj, i64 20
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !65
  %i.fm = fsub float %i.fl, %i.cc                 ; 2 uses
  %i.fn = call noundef float @llvm.fabs.f32(float %i.fm)
  %i.fo = fcmp ogt float %i.fn, %i.ak
  br i1 %i.fo, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fp = add nuw nsw i64 %.sroa.022.1.us.6, 25
  %i.fq = add nsw i64 %.sroa.725.1.us.6, 25
  %i.fr = add nuw nsw i64 %.sroa.15.1.us.7, 25
  %i.fs = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> splat (float 5.000000e+00), <2 x float> %i.fi)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.15.1.us.8 = phi i64 [ %i.fr, %bb.h ], [ %.sroa.15.1.us.7, %bb.g ] ; 2 uses
  %.sroa.725.1.us.8 = phi i64 [ %i.fq, %bb.h ], [ %.sroa.725.1.us.6, %bb.g ] ; 4 uses
  %.sroa.022.1.us.8 = phi i64 [ %i.fp, %bb.h ], [ %.sroa.022.1.us.6, %bb.g ] ; 2 uses
  %i.fv = phi <2 x float> [ %i.fu, %bb.h ], [ %i.fi, %bb.g ] ; 2 uses
  %i.fw = mul nuw nsw i64 %.sroa.022.1.us.8, %.sroa.15.1.us.8
  %i.fx = mul nsw i64 %.sroa.725.1.us.8, %.sroa.725.1.us.8
  %i.fy = sub nsw i64 %i.fw, %i.fx
  %i.fz = uitofp nneg i64 %.sroa.15.1.us.8 to float
  %i.ga = sitofp i64 %.sroa.725.1.us.8 to float
  %i.gb = fneg float %i.ga
  %i.gc = extractelement <2 x float> %i.fv, i64 0 ; 2 uses
  %i.gd = fmul float %i.gc, %i.gb
  %i.ge = extractelement <2 x float> %i.fv, i64 1 ; 2 uses
  %i.gf = call float @llvm.fmuladd.f32(float %i.fz, float %i.ge, float %i.gd) ; 3 uses
  %i.gg = sub nsw i64 0, %.sroa.725.1.us.8
  %i.gh = sitofp i64 %i.gg to float
  %i.gi = uitofp nneg i64 %.sroa.022.1.us.8 to float
  %i.gj = fmul float %i.gc, %i.gi
  %i.gk = sitofp i64 %i.fy to float               ; 2 uses
  %i.gl = add nuw nsw i32 %.080117.us, 1          ; 2 uses
  %i.gm = uitofp nneg i32 %i.gl to float
  %i.gn = fmul float %i.gf, %i.gm
  %i.go = fmul float %i.gf, %i.bz
  %i.gp = uitofp nneg i32 %.080117.us to float
  %i.gq = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.go, i64 1
  %i.gs = fpext <2 x float> %i.gr to <2 x double> ; 4 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0 ; 2 uses
  %i.gu = fmul double %i.ah, %i.gt
  %i.gv = call float @llvm.fmuladd.f32(float %i.cc, float %i.gk, float %i.gn)
  %i.gw = call float @llvm.fmuladd.f32(float %i.gh, float %i.ge, float %i.gj) ; 3 uses
  %i.gx = fmul float %i.gw, %i.gp
  %i.gy = fmul float %i.gw, %i.cb
  %i.gz = call float @llvm.fmuladd.f32(float %i.cc, float %i.gk, float %i.gy)
  %i.ha = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hb = insertelement <2 x float> %i.ha, float %i.gx, i64 1
  %i.hc = fpext <2 x float> %i.hb to <2 x double>
  %i.hd = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.gz, i64 1
  %i.hf = fpext <2 x float> %i.he to <2 x double> ; 4 uses
  %i.hg = shufflevector <2 x double> %i.gs, <2 x double> %i.hf, <2 x i32> <i32 1, i32 3>
  %i.hh = fmul <2 x double> %i.bn, %i.hg
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.hc, <2 x double> %i.hh) ; 2 uses
  %i.hj = insertelement <2 x double> %i.hi, double %i.gu, i64 1
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.gs, <2 x double> %i.hj) ; 3 uses
  %i.hl = extractelement <2 x double> %i.hf, i64 0 ; 2 uses
  %i.hm = fmul double %i.ah, %i.hl
  %i.hn = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ho = insertelement <2 x double> %i.hn, double %i.hm, i64 1
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.hf, <2 x double> %i.ho) ; 3 uses
  %i.hq = extractelement <2 x double> %i.hp, i64 1
  %i.hr = fneg double %i.hq
  %i.hs = fmul double %i.gt, %i.hr
  %i.ht = extractelement <2 x double> %i.hk, i64 1
  %i.hu = call double @llvm.fmuladd.f64(double %i.ht, double %i.hl, double %i.hs) ; 6 uses
  %i.hv = shufflevector <2 x double> %i.hf, <2 x double> %i.hp, <2 x i32> <i32 0, i32 2>
  %i.hw = fneg <2 x double> %i.hv
  %i.hx = fmul <2 x double> %i.hk, %i.hw
  %i.hy = shufflevector <2 x double> %i.gs, <2 x double> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hp, <2 x double> %i.hx) ; 7 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 1 ; 5 uses
  %i.ib = fcmp ogt double %i.ia, 0.000000e+00
  br i1 %i.ib, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop = fmul <2 x double> %i.hz, %i.hz
  %i.ic = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.id = call double @llvm.fmuladd.f64(double %i.hu, double %i.hu, double %i.ic)
  %i.ie = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %i.id)
  %sqrt.i9.i.us = call noundef double @llvm.sqrt.f64(double %i.ie)
  %i.if = fdiv double 1.000000e+00, %sqrt.i9.i.us ; 2 uses
  %i.ig = fmul double %i.hu, %i.if
  %i.ih = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.hz, %i.ii
  br label %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

bb.k:                                             ; preds = %bb.i
  %i.ik = fneg double %i.hu
  %i.il = fneg <2 x double> %i.hz
  %foldExtExtBinop198 = fmul <2 x double> %i.hz, %i.hz
  %i.im = extractelement <2 x double> %foldExtExtBinop198, i64 0
  %i.in = call double @llvm.fmuladd.f64(double %i.hu, double %i.hu, double %i.im)
  %i.io = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %i.in)
  %sqrt.i.i.us = call noundef double @llvm.sqrt.f64(double %i.io)
  %i.ip = fdiv double 1.000000e+00, %sqrt.i.i.us  ; 2 uses
  %i.iq = fmul double %i.ip, %i.ik
  %i.ir = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x double> %i.is, %i.il
  br label %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us: ; preds = %bb.k, %bb.j
  %.sroa.015.0.i.us = phi double [ %i.iq, %bb.k ], [ %i.ig, %bb.j ]
  %i.iu = phi <2 x double> [ %i.it, %bb.k ], [ %i.ij, %bb.j ]
  store double %.sroa.015.0.i.us, ptr %.081116.us, align 8, !tbaa !91
  %i.iv = getelementptr inbounds nuw i8, ptr %.081116.us, i64 8
  store <2 x double> %i.iu, ptr %i.iv, align 8, !tbaa !91
  %i.iw = getelementptr inbounds nuw i8, ptr %.081116.us, i64 24
  store double 0.000000e+00, ptr %i.iw, align 8, !tbaa !91
  %i.ix = getelementptr inbounds nuw i8, ptr %.082115.us, i64 4
  %i.iy = getelementptr inbounds nuw i8, ptr %.081116.us, i64 32
  %exitcond.not = icmp eq i32 %.080117.us, %i.bj
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !280

._crit_edge.us:                                   ; preds = %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us
  %exitcond145.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond145.not, label %._crit_edge121, label %.lr.ph120.split.us, !llvm.loop !281

._crit_edge121:                                   ; preds = %._crit_edge.us, %.lr.ph120, %.preheader
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7LINEMODIdE11computeImplIddEENS_3MatERKNS_4Mat_IT_EERS3_(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %4 = alloca %"class.cv::Matx.61", align 16      ; 9 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = mul nsw i64 %i.d, -5                     ; 3 uses
  %i.f = mul nsw i64 %i.d, 5                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %4, i8 0, i64 72, i1 false), !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1040056314, ptr %5, align 8, !tbaa !59
  store ptr %4, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 12884901891, ptr %i.i, align 8, !tbaa !36
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load double, ptr %i.m, align 16, !tbaa !91
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !91 ; 3 uses
  %i.p = load double, ptr %i.j, align 8, !tbaa !91
  %i.q = load <2 x double>, ptr %i.k, align 16, !tbaa !91 ; 5 uses
  %i.r = load double, ptr %i.l, align 8, !tbaa !91
  %i.s = extractelement <2 x double> %i.q, i64 0
  %foldExtExtBinop = fmul <2 x double> %i.o, %i.q ; 2 uses
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.u = shufflevector <2 x double> %i.o, <2 x double> %i.q, <2 x i32> <i32 1, i32 3>
  %i.v = fneg <2 x double> %i.u
  %i.w = fneg double %i.s
  %i.x = fmul double %i.n, %i.w
  %i.y = call double @llvm.fmuladd.f64(double %i.p, double %i.r, double %i.x)
  %i.z = fdiv double %i.y, %i.t                   ; 2 uses
  %i.aa = shufflevector <2 x double> %i.o, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.ab = fdiv <2 x double> splat (double 1.000000e+00), %i.aa ; 3 uses
  %i.ac = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.ad = fdiv <2 x double> %i.v, %i.ac           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.af = load double, ptr %i.ae, align 8, !tbaa !48 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double +qnan, ptr %i.a, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.ah, align 8, !tbaa !21
  store i64 4294967297, ptr %i.ag, align 8, !tbaa !36
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.aj = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %i.am = add nsw i32 %i.al, -6
  %i.an = icmp sgt i32 %i.al, 11
  br i1 %i.an, label %.lr.ph120, label %._crit_edge121

.lr.ph120:                                        ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !61
  %i.aq = icmp slt i32 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !61
  %i.ax = icmp slt i32 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !86  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 11
  br i1 %i.bd, label %.lr.ph120.split.us.preheader, label %._crit_edge121

.lr.ph120.split.us.preheader:                     ; preds = %.lr.ph120
  %wide.trip.count = zext nneg i32 %i.am to i64
  %i.be = add nsw i32 %i.bc, -7
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %7 = extractelement <2 x double> %i.ab, i64 0
  %8 = extractelement <2 x double> %i.ab, i64 1
  br label %.lr.ph120.split.us

.lr.ph120.split.us:                               ; preds = %.lr.ph120.split.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ 5, %.lr.ph120.split.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 4 uses
  br i1 %i.aq, label %_ZNK2cv3Mat3ptrEii.exit.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph120.split.us
  %i.bh = mul i64 %i.bf, %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bh
  %i.bj = load i64, ptr %i.au, align 8, !tbaa !49
  br label %_ZNK2cv3Mat3ptrEii.exit.us

_ZNK2cv3Mat3ptrEii.exit.us:                       ; preds = %.lr.ph120.split.us, %bb.a
  %.sink193 = phi i64 [ %i.bj, %bb.a ], [ %i.bf, %.lr.ph120.split.us ]
  %.sink = phi ptr [ %i.bi, %bb.a ], [ %i.as, %.lr.ph120.split.us ]
  %i.bk = mul i64 %.sink193, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.bk
  br i1 %i.ax, label %_ZN2cv3Mat3ptrINS_3VecIdLi4EEEEEPT_ii.exit.us, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv3Mat3ptrEii.exit.us
  %i.bm = mul i64 %i.bg, %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bm
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !49
  br label %_ZN2cv3Mat3ptrINS_3VecIdLi4EEEEEPT_ii.exit.us

_ZN2cv3Mat3ptrINS_3VecIdLi4EEEEEPT_ii.exit.us:    ; preds = %_ZNK2cv3Mat3ptrEii.exit.us, %bb.b
  %.sink196 = phi i64 [ %i.bo, %bb.b ], [ %i.bg, %_ZNK2cv3Mat3ptrEii.exit.us ]
  %.sink194 = phi ptr [ %i.bn, %bb.b ], [ %i.az, %_ZNK2cv3Mat3ptrEii.exit.us ]
  %i.bp = mul i64 %.sink196, 5
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink194, i64 %i.bp
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = uitofp nneg i32 %i.br to double
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bu = uitofp nneg i32 %i.bt to double
  br label %bb.c

bb.c:                                             ; preds = %_ZN2cv3Mat3ptrINS_3VecIdLi4EEEEEPT_ii.exit.us, %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us
  %.080117.us = phi i32 [ 5, %_ZN2cv3Mat3ptrINS_3VecIdLi4EEEEEPT_ii.exit.us ], [ %i.ge, %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us ] ; 3 uses
  %.081116.us = phi ptr [ %i.bq, %_ZN2cv3Mat3ptrINS_3VecIdLi4EEEEEPT_ii.exit.us ], [ %i.io, %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us ] ; 4 uses
  %.082115.us = phi ptr [ %i.bl, %_ZN2cv3Mat3ptrINS_3VecIdLi4EEEEEPT_ii.exit.us ], [ %i.in, %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us ] ; 10 uses
  %i.bv = load double, ptr %.082115.us, align 8, !tbaa !91 ; 12 uses
  %i.bw = getelementptr [8 x i8], ptr %.082115.us, i64 %i.e
  %i.bx = getelementptr i8, ptr %i.bw, i64 -40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !91
  %i.bz = fsub double %i.by, %i.bv                ; 2 uses
  %i.ca = call noundef double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ogt double %i.ca, %i.af            ; 2 uses
  %i.cc = call double @llvm.fmuladd.f64(double %i.bz, double -5.000000e+00, double 0.000000e+00)
  %.sroa.15.1.us = select i1 %i.cb, i64 0, i64 25 ; 6 uses
  %.sroa.7.1.us = select i1 %i.cb, double 0.000000e+00, double %i.cc
  %i.cd = getelementptr inbounds [8 x i8], ptr %.082115.us, i64 %i.e
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !91
  %i.cf = fsub double %i.ce, %i.bv                ; 2 uses
  %i.cg = call noundef double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp ogt double %i.cg, %i.af            ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %.sroa.7.1.us, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.15.1.us, 25
  %i.cl = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> <double -5.000000e+00, double 0.000000e+00>, <2 x double> %i.cj)
  %.sroa.15.1.us.1 = select i1 %i.ch, i64 %.sroa.15.1.us, i64 %i.ck ; 2 uses
  %i.co = select i1 %i.ch, <2 x double> %i.cj, <2 x double> %i.cn ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %.082115.us, i64 %i.e
  %i.cq = getelementptr i8, ptr %i.cp, i64 40
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !91
  %i.cs = fsub double %i.cr, %i.bv                ; 2 uses
  %i.ct = call noundef double @llvm.fabs.f64(double %i.cs)
  %i.cu = fcmp ogt double %i.ct, %i.af
  br i1 %i.cu, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cv = add nuw nsw i64 %.sroa.15.1.us, 25
  %i.cw = add nsw i64 %.sroa.15.1.us, -25
  %i.cx = add nuw nsw i64 %.sroa.15.1.us.1, 25
  %i.cy = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> <double -5.000000e+00, double 5.000000e+00>, <2 x double> %i.co)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.15.1.us.2 = phi i64 [ %i.cx, %bb.d ], [ %.sroa.15.1.us.1, %bb.c ] ; 2 uses
  %.sroa.725.1.us.2 = phi i64 [ %i.cw, %bb.d ], [ %.sroa.15.1.us, %bb.c ] ; 2 uses
  %.sroa.022.1.us.2 = phi i64 [ %i.cv, %bb.d ], [ %.sroa.15.1.us, %bb.c ] ; 2 uses
  %i.db = phi <2 x double> [ %i.da, %bb.d ], [ %i.co, %bb.c ] ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.082115.us, i64 -40
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !91
  %i.de = fsub double %i.dd, %i.bv                ; 2 uses
  %i.df = call noundef double @llvm.fabs.f64(double %i.de)
  %i.dg = fcmp ogt double %i.df, %i.af            ; 2 uses
  %i.dh = add nuw nsw i64 %.sroa.022.1.us.2, 25
  %i.di = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> <double 0.000000e+00, double -5.000000e+00>, <2 x double> %i.db)
  %.sroa.022.1.us.3 = select i1 %i.dg, i64 %.sroa.022.1.us.2, i64 %i.dh ; 2 uses
  %i.dl = select i1 %i.dg, <2 x double> %i.db, <2 x double> %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.082115.us, i64 40
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !91
  %i.do = fsub double %i.bv, %i.bv                ; 2 uses
  %i.dp = call noundef double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp ogt double %i.dp, %i.af
  %i.dr = insertelement <2 x double> poison, double %i.do, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> zeroinitializer, <2 x double> %i.dl)
  %i.du = insertelement <2 x i1> poison, i1 %i.dq, i64 0
  %i.dv = shufflevector <2 x i1> %i.du, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dw = select <2 x i1> %i.dv, <2 x double> %i.dl, <2 x double> %i.dt ; 2 uses
  %i.dx = fsub double %i.dn, %i.bv                ; 2 uses
  %i.dy = call noundef double @llvm.fabs.f64(double %i.dx)
  %i.dz = fcmp ogt double %i.dy, %i.af            ; 2 uses
  %i.ea = add nuw nsw i64 %.sroa.022.1.us.3, 25
  %i.eb = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> <double 0.000000e+00, double 5.000000e+00>, <2 x double> %i.dw)
  %.sroa.022.1.us.5 = select i1 %i.dz, i64 %.sroa.022.1.us.3, i64 %i.ea ; 2 uses
  %i.ee = select i1 %i.dz, <2 x double> %i.dw, <2 x double> %i.ed ; 2 uses
  %i.ef = getelementptr [8 x i8], ptr %.082115.us, i64 %i.f
  %i.eg = getelementptr i8, ptr %i.ef, i64 -40
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !91
  %i.ei = fsub double %i.eh, %i.bv                ; 2 uses
  %i.ej = call noundef double @llvm.fabs.f64(double %i.ei)
  %i.ek = fcmp ogt double %i.ej, %i.af
  br i1 %i.ek, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.el = add nuw nsw i64 %.sroa.022.1.us.5, 25
  %i.em = add nsw i64 %.sroa.725.1.us.2, -25
  %i.en = add nuw nsw i64 %.sroa.15.1.us.2, 25
  %i.eo = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> <double 5.000000e+00, double -5.000000e+00>, <2 x double> %i.ee)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.15.1.us.6 = phi i64 [ %i.en, %bb.f ], [ %.sroa.15.1.us.2, %bb.e ] ; 2 uses
  %.sroa.725.1.us.6 = phi i64 [ %i.em, %bb.f ], [ %.sroa.725.1.us.2, %bb.e ] ; 2 uses
  %.sroa.022.1.us.6 = phi i64 [ %i.el, %bb.f ], [ %.sroa.022.1.us.5, %bb.e ] ; 2 uses
  %i.er = phi <2 x double> [ %i.eq, %bb.f ], [ %i.ee, %bb.e ] ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %.082115.us, i64 %i.f
  %i.et = load double, ptr %i.es, align 8, !tbaa !91
  %i.eu = fsub double %i.et, %i.bv                ; 2 uses
  %i.ev = call noundef double @llvm.fabs.f64(double %i.eu)
  %i.ew = fcmp ogt double %i.ev, %i.af            ; 2 uses
  %i.ex = add nuw nsw i64 %.sroa.15.1.us.6, 25
  %i.ey = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> <double 5.000000e+00, double 0.000000e+00>, <2 x double> %i.er)
  %.sroa.15.1.us.7 = select i1 %i.ew, i64 %.sroa.15.1.us.6, i64 %i.ex ; 2 uses
  %i.fb = select i1 %i.ew, <2 x double> %i.er, <2 x double> %i.fa ; 2 uses
  %i.fc = getelementptr [8 x i8], ptr %.082115.us, i64 %i.f
  %i.fd = getelementptr i8, ptr %i.fc, i64 40
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !91
  %i.ff = fsub double %i.fe, %i.bv                ; 2 uses
  %i.fg = call noundef double @llvm.fabs.f64(double %i.ff)
  %i.fh = fcmp ogt double %i.fg, %i.af
  br i1 %i.fh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fi = add nuw nsw i64 %.sroa.022.1.us.6, 25
  %i.fj = add nsw i64 %.sroa.725.1.us.6, 25
  %i.fk = add nuw nsw i64 %.sroa.15.1.us.7, 25
  %i.fl = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> splat (double 5.000000e+00), <2 x double> %i.fb)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.15.1.us.8 = phi i64 [ %i.fk, %bb.h ], [ %.sroa.15.1.us.7, %bb.g ] ; 2 uses
  %.sroa.725.1.us.8 = phi i64 [ %i.fj, %bb.h ], [ %.sroa.725.1.us.6, %bb.g ] ; 4 uses
  %.sroa.022.1.us.8 = phi i64 [ %i.fi, %bb.h ], [ %.sroa.022.1.us.6, %bb.g ] ; 2 uses
  %i.fo = phi <2 x double> [ %i.fn, %bb.h ], [ %i.fb, %bb.g ] ; 2 uses
  %i.fp = mul nuw nsw i64 %.sroa.022.1.us.8, %.sroa.15.1.us.8
  %i.fq = mul nsw i64 %.sroa.725.1.us.8, %.sroa.725.1.us.8
  %i.fr = sub nsw i64 %i.fp, %i.fq
  %i.fs = uitofp nneg i64 %.sroa.15.1.us.8 to double
  %i.ft = sitofp i64 %.sroa.725.1.us.8 to double
  %i.fu = fneg double %i.ft
  %i.fv = extractelement <2 x double> %i.fo, i64 0 ; 2 uses
  %i.fw = fmul double %i.fv, %i.fu
  %i.fx = extractelement <2 x double> %i.fo, i64 1 ; 2 uses
  %i.fy = call double @llvm.fmuladd.f64(double %i.fs, double %i.fx, double %i.fw) ; 6 uses
  %i.fz = sub nsw i64 0, %.sroa.725.1.us.8
  %i.ga = sitofp i64 %i.fz to double
  %i.gb = uitofp nneg i64 %.sroa.022.1.us.8 to double
  %i.gc = fmul double %i.fv, %i.gb
  %i.gd = sitofp i64 %i.fr to double              ; 2 uses
  %i.ge = add nuw nsw i32 %.080117.us, 1          ; 2 uses
  %i.gf = uitofp nneg i32 %i.ge to double
  %i.gg = fmul double %i.fy, %i.gf
  %i.gh = call double @llvm.fmuladd.f64(double %i.bv, double %i.gd, double %i.gg)
  %i.gi = fmul double %i.fy, %i.bs                ; 2 uses
  %i.gj = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.fy, i64 1
  %i.gl = fmul <2 x double> %i.ad, %i.gk
  %i.gm = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gi, i64 1
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.gn, <2 x double> %i.gl) ; 3 uses
  %i.gp = extractelement <2 x double> %i.go, i64 0
  %i.gq = call double @llvm.fmuladd.f64(double %i.z, double %i.fy, double %i.gp) ; 2 uses
  %i.gr = uitofp nneg i32 %.080117.us to double
  %i.gs = call double @llvm.fmuladd.f64(double %i.ga, double %i.fx, double %i.gc) ; 6 uses
  %i.gt = fmul double %i.gs, %i.gr
  %i.gu = fmul double %i.gs, %i.bu
  %i.gv = call double @llvm.fmuladd.f64(double %i.bv, double %i.gd, double %i.gu) ; 2 uses
  %i.gw = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gs, i64 1
  %i.gy = fmul <2 x double> %i.ad, %i.gx          ; 2 uses
  %9 = extractelement <2 x double> %i.gy, i64 0
  %10 = call double @llvm.fmuladd.f64(double %7, double %i.gt, double %9)
  %11 = call double @llvm.fmuladd.f64(double %i.z, double %i.gs, double %10) ; 2 uses
  %i.gz = extractelement <2 x double> %i.gy, i64 1
  %i.ha = call double @llvm.fmuladd.f64(double %8, double %i.gv, double %i.gz) ; 2 uses
  %12 = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hb = insertelement <2 x double> %12, double %i.gs, i64 1
  %i.hc = fneg <2 x double> %i.hb
  %i.hd = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.gq, i64 1
  %i.hf = fmul <2 x double> %i.he, %i.hc
  %i.hg = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hh = insertelement <2 x double> %i.hg, double %i.fy, i64 1
  %i.hi = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %11, i64 1
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hj, <2 x double> %i.hf) ; 8 uses
  %i.hl = fneg double %11
  %i.hm = extractelement <2 x double> %i.go, i64 1
  %i.hn = fmul double %i.hm, %i.hl
  %i.ho = call double @llvm.fmuladd.f64(double %i.gq, double %i.ha, double %i.hn) ; 7 uses
  %i.hp = fcmp ogt double %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop198 = fmul <2 x double> %i.hk, %i.hk
  %i.hq = extractelement <2 x double> %foldExtExtBinop198, i64 1
  %i.hr = extractelement <2 x double> %i.hk, i64 0 ; 2 uses
  %i.hs = call double @llvm.fmuladd.f64(double %i.hr, double %i.hr, double %i.hq)
  %i.ht = call double @llvm.fmuladd.f64(double %i.ho, double %i.ho, double %i.hs)
  %sqrt.i9.i.us = call noundef double @llvm.sqrt.f64(double %i.ht)
  %i.hu = fdiv double 1.000000e+00, %sqrt.i9.i.us ; 2 uses
  %i.hv = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %i.hk, %i.hw
  %i.hy = fmul double %i.ho, %i.hu
  br label %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

bb.k:                                             ; preds = %bb.i
  %i.hz = fneg <2 x double> %i.hk
  %i.ia = fneg double %i.ho
  %foldExtExtBinop200 = fmul <2 x double> %i.hk, %i.hk
  %i.ib = extractelement <2 x double> %foldExtExtBinop200, i64 1
  %i.ic = extractelement <2 x double> %i.hk, i64 0 ; 2 uses
  %i.id = call double @llvm.fmuladd.f64(double %i.ic, double %i.ic, double %i.ib)
  %i.ie = call double @llvm.fmuladd.f64(double %i.ho, double %i.ho, double %i.id)
  %sqrt.i.i.us = call noundef double @llvm.sqrt.f64(double %i.ie)
  %i.if = fdiv double 1.000000e+00, %sqrt.i.i.us  ; 2 uses
  %i.ig = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x double> %i.ih, %i.hz
  %i.ij = fmul double %i.if, %i.ia
  br label %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us

_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us: ; preds = %bb.k, %bb.j
  %.sroa.9.0.i.us = phi double [ %i.ij, %bb.k ], [ %i.hy, %bb.j ]
  %i.ik = phi <2 x double> [ %i.ii, %bb.k ], [ %i.hx, %bb.j ]
  store <2 x double> %i.ik, ptr %.081116.us, align 8, !tbaa !91
  %i.il = getelementptr inbounds nuw i8, ptr %.081116.us, i64 16
  store double %.sroa.9.0.i.us, ptr %i.il, align 8, !tbaa !91
  %i.im = getelementptr inbounds nuw i8, ptr %.081116.us, i64 24
  store double 0.000000e+00, ptr %i.im, align 8, !tbaa !91
  %i.in = getelementptr inbounds nuw i8, ptr %.082115.us, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %.081116.us, i64 32
  %exitcond.not = icmp eq i32 %.080117.us, %i.be
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !282

._crit_edge.us:                                   ; preds = %_ZN2cv10signNormalIdEEvRKNS_3VecIT_Li3EEERNS1_IS2_Li4EEE.exit.us
  %exitcond145.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond145.not, label %._crit_edge121, label %.lr.ph120.split.us, !llvm.loop !283

._crit_edge121:                                   ; preds = %._crit_edge.us, %.lr.ph120, %.preheader
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(2760) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2760) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(2760) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(2744) dereferenceable(2744) %i.a) #20, !inline_history !284
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(2760) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2760) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(2760) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3SRIIfEC2EiiiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(2744) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv15RgbdNormalsImplIfEC2EiiiRKNS_3MatENS_11RgbdNormals17RgbdNormalsMethodE(ptr noundef nonnull align 8 dereferenceable(441) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv3SRIIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #20
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 261
  store i32 %i.d, ptr %i.a, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <2 x float> zeroinitializer, ptr %i.e, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 3 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.j) #20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !33
  %i.l = and i32 %i.k, -4096
  %i.m = or disjoint i32 %i.l, 37
  store i32 %i.m, ptr %i.j, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 3 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.p) #20
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = and i32 %i.q, -4096
  %i.s = or disjoint i32 %i.r, 37
  store i32 %i.s, ptr %i.p, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.t) #20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2536
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.u) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3SRIIfED2Ev(ptr noundef nonnull align 8 dead_on_return(2744) dereferenceable(2744) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv3SRIIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2536
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2120
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1496
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #20
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #20, !inline_history !60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #20, !inline_history !60
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3SRIIfED0Ev(ptr noundef nonnull align 8 dereferenceable(2744) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv3SRIIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2536
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !285
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !285
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2120
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20, !inline_history !285
end_hunk_2
