Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_avx?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a
  %i.lj = load float, ptr %i.li, align 1, !tbaa !62
  %.scalar994 = fmul fast float %i.lj, %.0272.us
  %i.lk = insertelement <4 x float> poison, float %.scalar994, i64 0
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lm = fadd fast <4 x float> %i.ll, %i.lh
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ln = phi <4 x float> [ %i.lm, %bb.y ], [ %i.lh, %bb.x ] ; 2 uses
  br i1 %.0267.us, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv951
  %i.lp = load float, ptr %i.lo, align 1, !tbaa !62
  %.scalar995 = fmul fast float %i.lp, %.0271.us
  %i.lq = insertelement <4 x float> poison, float %.scalar995, i64 0
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = fadd fast <4 x float> %i.lr, %i.ln
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.lt = phi <4 x float> [ %i.ls, %bb.aa ], [ %i.ln, %bb.z ] ; 2 uses
  br i1 %.0266.us, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv951
  %i.lv = load float, ptr %i.lu, align 1, !tbaa !62
  %.scalar996 = fmul fast float %i.lv, %.0270.us
  %i.lw = insertelement <4 x float> poison, float %.scalar996, i64 0
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = fadd fast <4 x float> %i.lx, %i.lt
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0821.us.us = phi nsz <4 x float> [ %i.lt, %bb.ab ], [ %i.ly, %bb.ac ] ; 2 uses
  %i.lz = fmul fast <4 x float> %.0821.us.us, %i.qe
  %spec.select848.us.us = select nsz i1 %i.cf, <4 x float> %i.lz, <4 x float> %.0821.us.us
  %i.ma = load <4 x float>, ptr %.5287871.us.us, align 16, !tbaa !62
  %i.mb = fmul fast <4 x float> %spec.select848.us.us, %i.ma
  %i.mc = fadd fast <4 x float> %i.mb, %.5829870.us.us ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.5287871.us.us, i64 16
  %indvars.iv.next952 = add nuw nsw i64 %indvars.iv951, 1 ; 2 uses
  %exitcond957.not = icmp eq i64 %indvars.iv.next952, %wide.trip.count956
  br i1 %exitcond957.not, label %.loopexit861.us.loopexit, label %.lr.ph873.split.us.us, !llvm.loop !163

.loopexit861.us.loopexit:                         ; preds = %bb.ad
  %scevgep953 = getelementptr i8, ptr %.4286.us, i64 16
  %i.me = add nsw i32 %i.km, -1
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw nsw i64 %i.mf, 4
  %scevgep954 = getelementptr i8, ptr %scevgep953, i64 %i.mg
  br label %.loopexit861.us

.loopexit861.us:                                  ; preds = %.loopexit861.us.loopexit, %.loopexit862.us
  %.6830.us = phi nsz <4 x float> [ %.4828885.us, %.loopexit862.us ], [ %i.mc, %.loopexit861.us.loopexit ] ; 3 uses
  %.6.us = phi ptr [ %.4286.us, %.loopexit862.us ], [ %scevgep954, %.loopexit861.us.loopexit ] ; 8 uses
  br i1 %i.qf, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %.loopexit861.us
  %i.mh = load i32, ptr %26, align 4, !tbaa !55   ; 9 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %iter.check, label %.loopexit.us

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.am
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %bb.am ], [ %indvars.iv958.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %.4879.us = phi float [ %i.ne, %bb.am ], [ %.4879.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.7878.us = phi ptr [ %i.nf, %bb.am ], [ %.7878.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  br i1 %i.ip, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %vec.epilog.scalar.ph
  br i1 %.0269.us, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv958
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !38
  %i.ml = fmul fast float %i.mk, %.0273.us
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.mm = phi float [ %i.ml, %bb.af ], [ 0.000000e+00, %bb.ae ] ; 2 uses
  br i1 %.0268.us, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv958
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !38
  %i.mp = fmul fast float %i.mo, %.0272.us
  %i.mq = fadd fast float %i.mp, %i.mm
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.mr = phi float [ %i.mq, %bb.ah ], [ %i.mm, %bb.ag ] ; 2 uses
  br i1 %.0267.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv958
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !38
  %i.mu = fmul fast float %i.mt, %.0271.us
  %i.mv = fadd fast float %i.mu, %i.mr
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.mw = phi float [ %i.mv, %bb.aj ], [ %i.mr, %bb.ai ] ; 2 uses
  br i1 %.0266.us, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv958
  %i.my = load float, ptr %i.mx, align 4, !tbaa !38
  %i.mz = fmul fast float %i.my, %.0270.us
  %i.na = fadd fast float %i.mz, %i.mw
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %vec.epilog.scalar.ph
  %.0.us = phi nsz float [ 0.000000e+00, %vec.epilog.scalar.ph ], [ %i.na, %bb.al ], [ %i.mw, %bb.ak ] ; 2 uses
  %i.nb = fmul fast float %.0.us, %.1275.us
  %spec.select.us = select nsz i1 %i.by, float %i.nb, float %.0.us
  %i.nc = load float, ptr %.7878.us, align 4, !tbaa !38
  %i.nd = fmul fast float %spec.select.us, %i.nc
  %i.ne = fadd fast float %i.nd, %.4879.us        ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.7878.us, i64 4
  %indvars.iv.next959 = add nuw nsw i64 %indvars.iv958, 1 ; 2 uses
  %exitcond964.not = icmp eq i64 %indvars.iv.next959, %wide.trip.count963
  br i1 %exitcond964.not, label %.loopexit.us.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !164

.loopexit.us.loopexit:                            ; preds = %bb.am, %vec.epilog.middle.block, %middle.block
  %.lcssa1033 = phi float [ %i.pu, %vec.epilog.middle.block ], [ %i.pc, %middle.block ], [ %i.ne, %bb.am ]
  %scevgep960 = getelementptr i8, ptr %.6.us, i64 4
  %i.ng = add nsw i32 %i.mh, -1
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, 2
  %scevgep961 = getelementptr i8, ptr %scevgep960, i64 %i.ni
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.m, %.lr.ph.split.us912.preheader, %bb.v, %.lr.ph873.split.us917.preheader, %.loopexit.us.loopexit, %.preheader.us, %.loopexit861.us
  %.6830.us1027 = phi <4 x float> [ %.6830.us, %.loopexit861.us ], [ %.6830.us, %.preheader.us ], [ %.6830.us, %.loopexit.us.loopexit ], [ %.4828885.us, %.lr.ph873.split.us917.preheader ], [ %.4828885.us, %bb.v ], [ %.4828885.us, %.lr.ph.split.us912.preheader ], [ %.4828885.us, %bb.m ] ; 2 uses
  %.6837.us10221026 = phi <8 x float> [ %.6837.us, %.loopexit861.us ], [ %.6837.us, %.preheader.us ], [ %.6837.us, %.loopexit.us.loopexit ], [ %.6837.us, %.lr.ph873.split.us917.preheader ], [ %.6837.us, %bb.v ], [ %.4835884.us, %.lr.ph.split.us912.preheader ], [ %.4835884.us, %bb.m ] ; 2 uses
  %.8.us = phi ptr [ %.6.us, %.loopexit861.us ], [ %.6.us, %.preheader.us ], [ %scevgep961, %.loopexit.us.loopexit ], [ %scevgep950, %.lr.ph873.split.us917.preheader ], [ %.4286.us, %bb.v ], [ %scevgep945, %.lr.ph.split.us912.preheader ], [ %.2284886.us, %bb.m ] ; 2 uses
  %.5.us = phi nsz float [ %.3887.us, %.loopexit861.us ], [ %.3887.us, %.preheader.us ], [ %.lcssa1033, %.loopexit.us.loopexit ], [ %.3887.us, %.lr.ph873.split.us917.preheader ], [ %.3887.us, %bb.v ], [ %.3887.us, %.lr.ph.split.us912.preheader ], [ %.3887.us, %bb.m ] ; 2 uses
  %indvars.iv.next966 = add nuw nsw i64 %indvars.iv965, 1 ; 2 uses
  %exitcond969.not = icmp eq i64 %indvars.iv.next966, %wide.trip.count968
  br i1 %exitcond969.not, label %._crit_edge.us, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !165

._crit_edge.us:                                   ; preds = %.loopexit.us, %.thread846.us
  %.4835.lcssa.us = phi <8 x float> [ %.3834892.us, %.thread846.us ], [ %.6837.us10221026, %.loopexit.us ] ; 3 uses
  %.4828.lcssa.us = phi <4 x float> [ %.3827893.us, %.thread846.us ], [ %.6830.us1027, %.loopexit.us ] ; 3 uses
  %.2284.lcssa.us = phi ptr [ %.1283894.us, %.thread846.us ], [ %.8.us, %.loopexit.us ] ; 2 uses
  %.3.lcssa.us = phi float [ %.2895.us, %.thread846.us ], [ %.5.us, %.loopexit.us ] ; 3 uses
  %indvars.iv.next971 = add nuw nsw i64 %indvars.iv970, 1 ; 2 uses
  %exitcond974.not = icmp eq i64 %indvars.iv.next971, %i.cd
  br i1 %exitcond974.not, label %._crit_edge898.us, label %bb.f, !llvm.loop !166

iter.check:                                       ; preds = %.preheader.us
  %i.nj = mul nsw i32 %i.mh, %.1265.us
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.nk ; 3 uses
  %i.nm = mul nsw i32 %i.mh, %.1263.us
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.nn ; 3 uses
  %i.np = mul nsw i32 %i.mh, %.1261.us
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.nq ; 3 uses
  %i.ns = mul nsw i32 %i.mh, %.1259.us
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.nt ; 3 uses
  %wide.trip.count963 = zext nneg i32 %i.mh to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.mh, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1036 = icmp ult i32 %i.mh, 16
  br i1 %min.iters.check1036, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nv = and i64 %wide.trip.count963, 8
  %n.vec = and i64 %wide.trip.count963, 2147483632 ; 5 uses
  %i.nw = shl nuw nsw i64 %n.vec, 2
  %i.nx = getelementptr i8, ptr %.6.us, i64 %i.nw
  %i.ny = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.3887.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x float> [ %i.ny, %vector.ph ], [ %i.oz, %vector.body ]
  %vec.phi1055 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.pa, %vector.body ]
  %i.nz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.6.us, i64 %i.nz ; 2 uses
  %i.oa = getelementptr [4 x i8], ptr %i.nl, i64 %index ; 2 uses
  %i.ob = getelementptr i8, ptr %i.oa, i64 32
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.oa, <8 x i1> %i.qg, <8 x float> poison), !tbaa !38
  %wide.masked.load1056 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ob, <8 x i1> %i.qg, <8 x float> poison), !tbaa !38
  %i.oc = fmul fast <8 x float> %wide.masked.load, %broadcast.splat1046
  %i.od = fmul fast <8 x float> %wide.masked.load1056, %broadcast.splat1046
  %predphi = select i1 %.0269.us, <8 x float> %i.oc, <8 x float> zeroinitializer
  %predphi1057 = select i1 %.0269.us, <8 x float> %i.od, <8 x float> zeroinitializer
  %i.oe = getelementptr [4 x i8], ptr %i.no, i64 %index ; 2 uses
  %i.of = getelementptr i8, ptr %i.oe, i64 32
  %wide.masked.load1058 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.oe, <8 x i1> %i.qh, <8 x float> poison), !tbaa !38
  %wide.masked.load1059 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.of, <8 x i1> %i.qh, <8 x float> poison), !tbaa !38
  %i.og = fmul fast <8 x float> %wide.masked.load1058, %broadcast.splat1048
  %i.oh = fmul fast <8 x float> %wide.masked.load1059, %broadcast.splat1048
  %i.oi = select ninf i1 %.0268.us, <8 x float> %i.og, <8 x float> splat (float -0.000000e+00)
  %predphi1060 = fadd reassoc arcp contract afn <8 x float> %predphi, %i.oi ; 2 uses
  %i.oj = select ninf i1 %.0268.us, <8 x float> %i.oh, <8 x float> splat (float -0.000000e+00)
  %predphi1061 = fadd reassoc arcp contract afn <8 x float> %predphi1057, %i.oj ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.nr, i64 %index ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 32
  %wide.masked.load1062 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ok, <8 x i1> %i.qi, <8 x float> poison), !tbaa !38
  %wide.masked.load1063 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ol, <8 x i1> %i.qi, <8 x float> poison), !tbaa !38
  %i.om = fmul fast <8 x float> %wide.masked.load1062, %broadcast.splat1050
  %i.on = fmul fast <8 x float> %wide.masked.load1063, %broadcast.splat1050
  %29 = fadd fast <8 x float> %i.om, %predphi1060
  %predphi1064.a = fadd fast <8 x float> %i.on, %predphi1061
  %i.oo = select i1 %.0267.us, <8 x float> %29, <8 x float> %predphi1060 ; 2 uses
  %predphi1065 = select i1 %.0267.us, <8 x float> %predphi1064.a, <8 x float> %predphi1061 ; 2 uses
  %i.op = getelementptr [4 x i8], ptr %i.nu, i64 %index ; 2 uses
  %i.oq = getelementptr i8, ptr %i.op, i64 32
  %wide.masked.load1066 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.op, <8 x i1> %i.qj, <8 x float> poison), !tbaa !38
  %wide.masked.load1067 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.oq, <8 x i1> %i.qj, <8 x float> poison), !tbaa !38
  %i.or = fmul fast <8 x float> %wide.masked.load1066, %broadcast.splat1052
  %i.os = fmul fast <8 x float> %wide.masked.load1067, %broadcast.splat1052
  %30 = fadd fast <8 x float> %i.or, %i.oo
  %predphi1068.a = fadd fast <8 x float> %i.os, %predphi1065
  %predphi1069.a = select nsz <8 x i1> %i.qj, <8 x float> %30, <8 x float> %i.oo
  %i.ot = select nsz i1 %i.ip, <8 x float> %predphi1069.a, <8 x float> zeroinitializer ; 2 uses
  %predphi1070 = select nsz <8 x i1> %i.qj, <8 x float> %predphi1068.a, <8 x float> %predphi1065
  %predphi1071 = select nsz i1 %i.ip, <8 x float> %predphi1070, <8 x float> zeroinitializer ; 2 uses
  %i.ou = fmul fast <8 x float> %i.ot, %broadcast.splat1054
  %i.ov = fmul fast <8 x float> %predphi1071, %broadcast.splat1054
  %31 = select nsz i1 %i.by, <8 x float> %i.ou, <8 x float> %i.ot
  %32 = select nsz i1 %i.by, <8 x float> %i.ov, <8 x float> %predphi1071
  %i.ow = getelementptr i8, ptr %next.gep, i64 32
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !38
  %wide.load1072 = load <8 x float>, ptr %i.ow, align 4, !tbaa !38
  %i.ox = fmul fast <8 x float> %31, %wide.load
  %i.oy = fmul fast <8 x float> %32, %wide.load1072
  %i.oz = fadd fast <8 x float> %i.ox, %vec.phi   ; 2 uses
  %i.pa = fadd fast <8 x float> %i.oy, %vec.phi1055 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.pb = icmp eq i64 %index.next, %n.vec
  br i1 %i.pb, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.pa, %i.oz
  %i.pc = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count963
  br i1 %cmp.n, label %.loopexit.us.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.nv, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.pc, %vec.epilog.iter.check ], [ %.3887.us, %vector.main.loop.iter.check ]
  %n.vec1073 = and i64 %wide.trip.count963, 2147483640 ; 4 uses
  %i.pd = shl nuw nsw i64 %n.vec1073, 2
  %i.pe = getelementptr i8, ptr %.6.us, i64 %i.pd
  %i.pf = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1094 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1107, %vec.epilog.vector.body ] ; 6 uses
  %vec.phi1095 = phi <8 x float> [ %i.pf, %vec.epilog.ph ], [ %i.ps, %vec.epilog.vector.body ]
  %i.pg = shl i64 %index1094, 2
  %next.gep1096 = getelementptr i8, ptr %.6.us, i64 %i.pg
  %i.ph = getelementptr [4 x i8], ptr %i.nl, i64 %index1094
  %wide.masked.load1097 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ph, <8 x i1> %i.qk, <8 x float> poison), !tbaa !38
  %i.pi = fmul fast <8 x float> %wide.masked.load1097, %broadcast.splat1085
  %predphi1098 = select i1 %.0269.us, <8 x float> %i.pi, <8 x float> zeroinitializer
  %i.pj = getelementptr [4 x i8], ptr %i.no, i64 %index1094
  %wide.masked.load1099 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.pj, <8 x i1> %i.ql, <8 x float> poison), !tbaa !38
  %i.pk = fmul fast <8 x float> %wide.masked.load1099, %broadcast.splat1087
  %i.pl = select ninf i1 %.0268.us, <8 x float> %i.pk, <8 x float> splat (float -0.000000e+00)
  %predphi1100 = fadd reassoc arcp contract afn <8 x float> %predphi1098, %i.pl ; 2 uses
  %i.pm = getelementptr [4 x i8], ptr %i.nr, i64 %index1094
  %wide.masked.load1101 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.pm, <8 x i1> %i.qm, <8 x float> poison), !tbaa !38
  %i.pn = fmul fast <8 x float> %wide.masked.load1101, %broadcast.splat1089
  %33 = fadd fast <8 x float> %i.pn, %predphi1100
  %predphi1102 = select i1 %.0267.us, <8 x float> %33, <8 x float> %predphi1100 ; 2 uses
  %i.po = getelementptr [4 x i8], ptr %i.nu, i64 %index1094
  %wide.masked.load1103 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.po, <8 x i1> %i.qn, <8 x float> poison), !tbaa !38
  %i.pp = fmul fast <8 x float> %wide.masked.load1103, %broadcast.splat1091
  %34 = fadd fast <8 x float> %i.pp, %predphi1102
  %predphi1104 = select nsz <8 x i1> %i.qn, <8 x float> %34, <8 x float> %predphi1102
  %predphi1105 = select nsz i1 %i.ip, <8 x float> %predphi1104, <8 x float> zeroinitializer ; 2 uses
  %i.pq = fmul fast <8 x float> %predphi1105, %broadcast.splat1093
  %35 = select nsz i1 %i.by, <8 x float> %i.pq, <8 x float> %predphi1105
  %wide.load1106 = load <8 x float>, ptr %next.gep1096, align 4, !tbaa !38
  %i.pr = fmul fast <8 x float> %35, %wide.load1106
  %i.ps = fadd fast <8 x float> %i.pr, %vec.phi1095 ; 2 uses
  %index.next1107 = add nuw i64 %index1094, 8     ; 2 uses
  %i.pt = icmp eq i64 %index.next1107, %n.vec1073
  br i1 %i.pt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !168

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.pu = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ps) ; 2 uses
  %cmp.n1108 = icmp eq i64 %n.vec1073, %wide.trip.count963
  br i1 %cmp.n1108, label %.loopexit.us.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv958.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1073, %vec.epilog.middle.block ]
  %.4879.us.ph = phi float [ %.3887.us, %iter.check ], [ %i.pc, %vec.epilog.iter.check ], [ %i.pu, %vec.epilog.middle.block ]
  %.7878.us.ph = phi ptr [ %.6.us, %iter.check ], [ %i.nx, %vec.epilog.iter.check ], [ %i.pe, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %.thread846.us
  %i.pv = load ptr, ptr %25, align 8, !tbaa !19, !noalias !180
  %i.pw = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !180
  %i.px = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !180
  %factor.op.mul.us = mul i64 %i.pw, %i.px
  %i.py = load i32, ptr %12, align 4, !tbaa !55   ; 3 uses
  %i.pz = icmp eq i32 %i.py, 8
  %i.qa = insertelement <8 x float> poison, float %.1275.us, i64 0
  %i.qb = shufflevector <8 x float> %i.qa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qc = icmp eq i32 %i.py, 4
  %i.qd = insertelement <4 x float> poison, float %.1275.us, i64 0
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qf = icmp eq i32 %i.py, 1
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %.0266.us, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1037 = insertelement <8 x i1> poison, i1 %.0267.us, i64 0
  %broadcast.splat1038 = shufflevector <8 x i1> %broadcast.splatinsert1037, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1039 = insertelement <8 x i1> poison, i1 %.0268.us, i64 0
  %broadcast.splat1040 = shufflevector <8 x i1> %broadcast.splatinsert1039, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1041 = insertelement <8 x i1> poison, i1 %.0269.us, i64 0
  %broadcast.splat1042 = shufflevector <8 x i1> %broadcast.splatinsert1041, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1043 = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1044 = shufflevector <8 x i1> %broadcast.splatinsert1043, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qg = select <8 x i1> %broadcast.splat1044, <8 x i1> %broadcast.splat1042, <8 x i1> zeroinitializer ; 2 uses
  %i.qh = select <8 x i1> %broadcast.splat1044, <8 x i1> %broadcast.splat1040, <8 x i1> zeroinitializer ; 2 uses
  %i.qi = select <8 x i1> %broadcast.splat1044, <8 x i1> %broadcast.splat1038, <8 x i1> zeroinitializer ; 2 uses
  %i.qj = select <8 x i1> %broadcast.splat1044, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer ; 4 uses
  %broadcast.splatinsert1045 = insertelement <8 x float> poison, float %.0273.us, i64 0
  %broadcast.splat1046 = shufflevector <8 x float> %broadcast.splatinsert1045, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1047 = insertelement <8 x float> poison, float %.0272.us, i64 0
  %broadcast.splat1048 = shufflevector <8 x float> %broadcast.splatinsert1047, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1049 = insertelement <8 x float> poison, float %.0271.us, i64 0
  %broadcast.splat1050 = shufflevector <8 x float> %broadcast.splatinsert1049, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1051 = insertelement <8 x float> poison, float %.0270.us, i64 0
  %broadcast.splat1052 = shufflevector <8 x float> %broadcast.splatinsert1051, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1053 = insertelement <8 x float> poison, float %.1275.us, i64 0
  %broadcast.splat1054 = shufflevector <8 x float> %broadcast.splatinsert1053, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1074 = insertelement <8 x i1> poison, i1 %.0266.us, i64 0
  %broadcast.splat1075 = shufflevector <8 x i1> %broadcast.splatinsert1074, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1076 = insertelement <8 x i1> poison, i1 %.0267.us, i64 0
  %broadcast.splat1077 = shufflevector <8 x i1> %broadcast.splatinsert1076, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1078 = insertelement <8 x i1> poison, i1 %.0268.us, i64 0
  %broadcast.splat1079 = shufflevector <8 x i1> %broadcast.splatinsert1078, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1080 = insertelement <8 x i1> poison, i1 %.0269.us, i64 0
  %broadcast.splat1081 = shufflevector <8 x i1> %broadcast.splatinsert1080, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1082 = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1083 = shufflevector <8 x i1> %broadcast.splatinsert1082, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qk = select <8 x i1> %broadcast.splat1083, <8 x i1> %broadcast.splat1081, <8 x i1> zeroinitializer
  %i.ql = select <8 x i1> %broadcast.splat1083, <8 x i1> %broadcast.splat1079, <8 x i1> zeroinitializer
  %i.qm = select <8 x i1> %broadcast.splat1083, <8 x i1> %broadcast.splat1077, <8 x i1> zeroinitializer
  %i.qn = select <8 x i1> %broadcast.splat1083, <8 x i1> %broadcast.splat1075, <8 x i1> zeroinitializer ; 2 uses
  %broadcast.splatinsert1084 = insertelement <8 x float> poison, float %.0273.us, i64 0
  %broadcast.splat1085 = shufflevector <8 x float> %broadcast.splatinsert1084, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1086 = insertelement <8 x float> poison, float %.0272.us, i64 0
  %broadcast.splat1087 = shufflevector <8 x float> %broadcast.splatinsert1086, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1088 = insertelement <8 x float> poison, float %.0271.us, i64 0
  %broadcast.splat1089 = shufflevector <8 x float> %broadcast.splatinsert1088, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1090 = insertelement <8 x float> poison, float %.0270.us, i64 0
  %broadcast.splat1091 = shufflevector <8 x float> %broadcast.splatinsert1090, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1092 = insertelement <8 x float> poison, float %.1275.us, i64 0
  %broadcast.splat1093 = shufflevector <8 x float> %broadcast.splatinsert1092, <8 x float> poison, <8 x i32> zeroinitializer
  br label %_ZN4ncnn3MatD2Ev.exit.us

._crit_edge898.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1 ; 2 uses
  %exitcond979.not = icmp eq i64 %indvars.iv.next976, %wide.trip.count978
  br i1 %exitcond979.not, label %._crit_edge908, label %.preheader863.us, !llvm.loop !171

._crit_edge908:                                   ; preds = %._crit_edge898.us, %.preheader863.lr.ph, %.thread842
  %.2833.lcssa = phi <8 x float> [ %.1832, %.thread842 ], [ %.1832, %.preheader863.lr.ph ], [ %.4835.lcssa.us, %._crit_edge898.us ] ; 10 uses
  %.2826.lcssa = phi <4 x float> [ %.1825, %.thread842 ], [ %.1825, %.preheader863.lr.ph ], [ %.4828.lcssa.us, %._crit_edge898.us ] ; 10 uses
  %.1281.lcssa = phi float [ %.0280, %.thread842 ], [ %.0280, %.preheader863.lr.ph ], [ %.3.lcssa.us, %._crit_edge898.us ] ; 13 uses
  %i.qo = load i32, ptr %12, align 4, !tbaa !55   ; 2 uses
  %i.qp = icmp eq i32 %i.qo, 8
  br i1 %i.qp, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %._crit_edge908
  %i.qq = load i32, ptr %27, align 4, !tbaa !55
  switch i32 %i.qq, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ao
    i32 2, label %.noexc368
    i32 3, label %bb.ap
    i32 4, label %.noexc369
    i32 5, label %.noexc370
    i32 6, label %.noexc371
  ]

bb.ao:                                            ; preds = %bb.an
  %i.qr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc368:                                        ; preds = %bb.an
  %i.qs = load ptr, ptr %28, align 8, !tbaa !19
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !38
  %i.qu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2833.lcssa)
  %i.qv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2833.lcssa)
  %i.qw = insertelement <8 x float> poison, float %i.qt, i64 0
  %i.qx = shufflevector <8 x float> %i.qw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qy = fmul fast <8 x float> %i.qx, %i.qv
  %i.qz = fadd fast <8 x float> %i.qy, %i.qu
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ap:                                            ; preds = %bb.an
  %i.ra = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !38
  %i.rc = insertelement <8 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <8 x float> %i.rc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rf = load float, ptr %i.re, align 4, !tbaa !38
  %i.rg = insertelement <8 x float> poison, float %i.rf, i64 0
  %i.rh = shufflevector <8 x float> %i.rg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ri = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> nofpclass(nan inf) %i.rd)
  %i.rj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ri, <8 x float> nofpclass(nan inf) %i.rh)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc369:                                        ; preds = %bb.an
  %i.rk = fneg fast <8 x float> %.2833.lcssa
  %i.rl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.rk, <8 x float> splat (float f0x42B0C0A5))
  %i.rm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.rl, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rn = fmul fast <8 x float> %i.rm, splat (float f0x3FB8AA3B)
  %i.ro = fadd fast <8 x float> %i.rn, splat (float 5.000000e-01) ; 2 uses
  %i.rp = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ro, i32 1) ; 2 uses
  %i.rq = fcmp fast ogt <8 x float> %i.rp, %i.ro
  %i.rr = select <8 x i1> %i.rq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.rs = fsub fast <8 x float> %i.rp, %i.rr      ; 2 uses
  %i.rt = fmul fast <8 x float> %i.rs, splat (float f0x3F317218)
  %i.ru = fsub fast <8 x float> %i.rm, %i.rt      ; 8 uses
  %i.rv = fmul fast <8 x float> %i.ru, %i.ru
  %i.rw = fmul fast <8 x float> %i.ru, splat (float f0x39506967)
  %i.rx = fadd fast <8 x float> %i.rw, splat (float f0x3AB743CE)
  %i.ry = fmul fast <8 x float> %i.rx, %i.ru
  %i.rz = fadd fast <8 x float> %i.ry, splat (float f0x3C088908)
  %i.sa = fmul fast <8 x float> %i.rz, %i.ru
  %i.sb = fadd fast <8 x float> %i.sa, splat (float f0x3D2AA9C1)
  %i.sc = fmul fast <8 x float> %i.sb, %i.ru
  %i.sd = fadd fast <8 x float> %i.sc, splat (float f0x3E2AAAAA)
  %i.se = fmul fast <8 x float> %i.sd, %i.ru
  %i.sf = fadd fast <8 x float> %i.se, splat (float 5.000000e-01)
  %i.sg = fmul fast <8 x float> %i.rv, %i.sf
  %i.sh = fadd fast <8 x float> %i.ru, splat (float 1.000000e+00)
  %i.si = fadd fast <8 x float> %i.sh, %i.sg
  %i.sj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rs)
  %i.sk = shl <8 x i32> %i.sj, splat (i32 23)
  %i.sl = add <8 x i32> %i.sk, splat (i32 1065353216)
  %i.sm = bitcast <8 x i32> %i.sl to <8 x float>
  %i.sn = fmul fast <8 x float> %i.si, %i.sm
  %i.so = fadd fast <8 x float> %i.sn, splat (float 1.000000e+00)
  %i.sp = fdiv fast <8 x float> splat (float 1.000000e+00), %i.so
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc370:                                        ; preds = %bb.an
  %i.sq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.sr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.sq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ss = fmul fast <8 x float> %i.sr, splat (float f0x3FB8AA3B)
  %i.st = fadd fast <8 x float> %i.ss, splat (float 5.000000e-01) ; 2 uses
  %i.su = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.st, i32 1) ; 2 uses
  %i.sv = fcmp fast ogt <8 x float> %i.su, %i.st
  %i.sw = select <8 x i1> %i.sv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.sx = fsub fast <8 x float> %i.su, %i.sw      ; 2 uses
  %i.sy = fmul fast <8 x float> %i.sx, splat (float f0x3F317218)
  %i.sz = fsub fast <8 x float> %i.sr, %i.sy      ; 8 uses
  %i.ta = fmul fast <8 x float> %i.sz, %i.sz
  %i.tb = fmul fast <8 x float> %i.sz, splat (float f0x39506967)
  %i.tc = fadd fast <8 x float> %i.tb, splat (float f0x3AB743CE)
  %i.td = fmul fast <8 x float> %i.tc, %i.sz
  %i.te = fadd fast <8 x float> %i.td, splat (float f0x3C088908)
  %i.tf = fmul fast <8 x float> %i.te, %i.sz
  %i.tg = fadd fast <8 x float> %i.tf, splat (float f0x3D2AA9C1)
  %i.th = fmul fast <8 x float> %i.tg, %i.sz
  %i.ti = fadd fast <8 x float> %i.th, splat (float f0x3E2AAAAA)
  %i.tj = fmul fast <8 x float> %i.ti, %i.sz
  %i.tk = fadd fast <8 x float> %i.tj, splat (float 5.000000e-01)
  %i.tl = fmul fast <8 x float> %i.ta, %i.tk
  %i.tm = fadd fast <8 x float> %i.sz, splat (float 1.000000e+00)
  %i.tn = fadd fast <8 x float> %i.tm, %i.tl
  %i.to = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sx)
  %i.tp = shl <8 x i32> %i.to, splat (i32 23)
  %i.tq = add <8 x i32> %i.tp, splat (i32 1065353216)
  %i.tr = bitcast <8 x i32> %i.tq to <8 x float>
  %i.ts = fmul fast <8 x float> %i.tn, %i.tr
  %i.tt = fadd fast <8 x float> %i.ts, splat (float 1.000000e+00) ; 2 uses
  %i.tu = fcmp fast ole <8 x float> %i.tt, zeroinitializer
  %i.tv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tt, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.tw = bitcast <8 x float> %i.tv to <8 x i32>
  %i.tx = bitcast <8 x float> %i.tv to <8 x i32>
  %i.ty = and <8 x i32> %i.tx, splat (i32 -2139095041)
  %i.tz = or disjoint <8 x i32> %i.ty, splat (i32 1056964608)
  %i.ua = bitcast <8 x i32> %i.tz to <8 x float>  ; 3 uses
  %i.ub = lshr <8 x i32> %i.tw, splat (i32 23)
  %i.uc = add nsw <8 x i32> %i.ub, splat (i32 -127)
  %i.ud = sitofp fast <8 x i32> %i.uc to <8 x float> ; 2 uses
  %i.ue = fadd fast <8 x float> %i.ud, splat (float 1.000000e+00)
  %i.uf = fcmp fast olt <8 x float> %i.ua, splat (float f0x3F3504F3) ; 2 uses
  %i.ug = select <8 x i1> %i.uf, <8 x float> %i.ua, <8 x float> zeroinitializer
  %i.uh = fadd fast <8 x float> %i.ua, splat (float -1.000000e+00)
  %i.ui = select fast <8 x i1> %i.uf, <8 x float> %i.ud, <8 x float> %i.ue
  %i.uj = fadd fast <8 x float> %i.uh, %i.ug      ; 12 uses
  %i.uk = fmul fast <8 x float> %i.uj, %i.uj
  %i.ul = fmul fast <8 x float> %i.uj, splat (float f0x3D9021BB)
  %i.um = fadd fast <8 x float> %i.ul, splat (float f0xBDEBD1B8)
  %i.un = fmul fast <8 x float> %i.um, %i.uj
  %i.uo = fadd fast <8 x float> %i.un, splat (float f0x3DEF251A)
  %i.up = fmul fast <8 x float> %i.uo, %i.uj
  %i.uq = fadd fast <8 x float> %i.up, splat (float f0xBDFE5D4F)
  %i.ur = fmul fast <8 x float> %i.uq, %i.uj
  %i.us = fadd fast <8 x float> %i.ur, splat (float f0x3E11E9BF)
  %i.ut = fmul fast <8 x float> %i.us, %i.uj
  %i.uu = fadd fast <8 x float> %i.ut, splat (float f0xBE2AAE50)
  %i.uv = fmul fast <8 x float> %i.uu, %i.uj
  %i.uw = fadd fast <8 x float> %i.uv, splat (float f0x3E4CCEAC)
  %i.ux = fmul fast <8 x float> %i.uw, %i.uj
  %i.uy = fadd fast <8 x float> %i.ux, splat (float f0xBE7FFFFC)
  %i.uz = fmul fast <8 x float> %i.uy, %i.uj
  %i.va = fadd fast <8 x float> %i.uz, splat (float f0x3EAAAAAA)
  %i.vb = fmul fast <8 x float> %i.va, %i.uj
  %reass.mul = fmul fast <8 x float> %i.ui, splat (float f0x3F317218)
  %reass.add855 = fadd fast <8 x float> %i.vb, splat (float -5.000000e-01)
  %reass.mul856 = fmul fast <8 x float> %i.uk, %reass.add855
  %i.vc = fadd fast <8 x float> %reass.mul, %i.uj
  %i.vd = fadd fast <8 x float> %i.vc, %reass.mul856
  %.neg = fmul fast <8 x float> %i.vd, splat (float -2.000000e+00)
  %i.ve = select fast <8 x i1> %i.tu, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.vf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ve, <8 x float> splat (float f0x42B0C0A5))
  %i.vg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vh = fmul fast <8 x float> %i.vg, splat (float f0x3FB8AA3B)
  %i.vi = fadd fast <8 x float> %i.vh, splat (float 5.000000e-01) ; 2 uses
  %i.vj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.vi, i32 1) ; 2 uses
  %i.vk = fcmp fast ogt <8 x float> %i.vj, %i.vi
  %i.vl = select <8 x i1> %i.vk, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.vm = fsub fast <8 x float> %i.vj, %i.vl      ; 2 uses
  %i.vn = fmul fast <8 x float> %i.vm, splat (float f0x3F317218)
  %i.vo = fsub fast <8 x float> %i.vg, %i.vn      ; 8 uses
  %i.vp = fmul fast <8 x float> %i.vo, %i.vo
  %i.vq = fmul fast <8 x float> %i.vo, splat (float f0x39506967)
  %i.vr = fadd fast <8 x float> %i.vq, splat (float f0x3AB743CE)
  %i.vs = fmul fast <8 x float> %i.vr, %i.vo
  %i.vt = fadd fast <8 x float> %i.vs, splat (float f0x3C088908)
  %i.vu = fmul fast <8 x float> %i.vt, %i.vo
  %i.vv = fadd fast <8 x float> %i.vu, splat (float f0x3D2AA9C1)
  %i.vw = fmul fast <8 x float> %i.vv, %i.vo
  %i.vx = fadd fast <8 x float> %i.vw, splat (float f0x3E2AAAAA)
  %i.vy = fmul fast <8 x float> %i.vx, %i.vo
  %i.vz = fadd fast <8 x float> %i.vy, splat (float 5.000000e-01)
  %i.wa = fmul fast <8 x float> %i.vp, %i.vz
  %i.wb = fadd fast <8 x float> %i.vo, splat (float 1.000000e+00)
  %i.wc = fadd fast <8 x float> %i.wb, %i.wa
  %i.wd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vm)
  %i.we = shl <8 x i32> %i.wd, splat (i32 23)
  %i.wf = add <8 x i32> %i.we, splat (i32 1065353216)
  %i.wg = bitcast <8 x i32> %i.wf to <8 x float>
  %i.wh = fmul fast <8 x float> %i.wc, %i.wg
  %i.wi = fadd fast <8 x float> %i.wh, splat (float 1.000000e+00)
  %i.wj = fdiv fast <8 x float> splat (float 2.000000e+00), %i.wi
  %i.wk = fadd fast <8 x float> %i.wj, splat (float -1.000000e+00)
  %i.wl = fmul fast <8 x float> %i.wk, %.2833.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc371:                                        ; preds = %bb.an
  %i.wm = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !38
  %i.wo = insertelement <8 x float> poison, float %i.wn, i64 0
end_hunk_0
