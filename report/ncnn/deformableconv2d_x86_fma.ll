Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_fma?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.nt = phi fast <4 x float> [ %i.ns, %bb.ac ], [ zeroinitializer, %bb.ab ]
  %i.nu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nj, <4 x float> nofpclass(nan inf) %i.sm, <4 x float> nofpclass(nan inf) %i.ne)
  %i.nv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.no, <4 x float> nofpclass(nan inf) %i.so, <4 x float> nofpclass(nan inf) %i.nu)
  %i.nw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nt, <4 x float> nofpclass(nan inf) %i.sq, <4 x float> nofpclass(nan inf) %i.nv)
  %spec.select848.us.us = fmul reassoc nsz arcp contract afn <4 x float> %i.sv, %i.nw
  %i.nx = load <4 x float>, ptr %.5287865.us.us, align 16, !tbaa !63
  %i.ny = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %spec.select848.us.us, <4 x float> nofpclass(nan inf) %i.nx, <4 x float> nofpclass(nan inf) %.5829864.us.us) ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.5287865.us.us, i64 16
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %exitcond962.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count961
  br i1 %exitcond962.not, label %.loopexit854.us.loopexit, label %.lr.ph868.split.us.us, !llvm.loop !164

.loopexit854.us.loopexit:                         ; preds = %bb.ad
  %scevgep958 = getelementptr i8, ptr %.4286.us, i64 16
  %i.oa = add nsw i32 %i.ln, -1
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = shl nuw nsw i64 %i.ob, 4
  %scevgep959 = getelementptr i8, ptr %scevgep958, i64 %i.oc
  br label %.loopexit854.us

.loopexit854.us.loopexit934.unr-lcssa:            ; preds = %.lr.ph868.split.us916
  %lcmp.mod1127.not = icmp eq i32 %xtraiter1125, 0
  br i1 %lcmp.mod1127.not, label %.loopexit854.us.loopexit934, label %.lr.ph868.split.us916.epil.preheader

.lr.ph868.split.us916.epil.preheader:             ; preds = %.loopexit854.us.loopexit934.unr-lcssa, %.lr.ph868.split.us916.preheader
  %.5287865.us919.epil.init = phi ptr [ %.4286.us, %.lr.ph868.split.us916.preheader ], [ %i.mz, %.loopexit854.us.loopexit934.unr-lcssa ]
  %.5829864.us920.epil.init = phi <4 x float> [ %.4828880.us, %.lr.ph868.split.us916.preheader ], [ %i.my, %.loopexit854.us.loopexit934.unr-lcssa ]
  %lcmp.mod1129 = icmp ne i32 %xtraiter1125, 0
  call void @llvm.assume(i1 %lcmp.mod1129)
  br label %.lr.ph868.split.us916.epil

.lr.ph868.split.us916.epil:                       ; preds = %.lr.ph868.split.us916.epil, %.lr.ph868.split.us916.epil.preheader
  %.5287865.us919.epil = phi ptr [ %i.of, %.lr.ph868.split.us916.epil ], [ %.5287865.us919.epil.init, %.lr.ph868.split.us916.epil.preheader ] ; 2 uses
  %.5829864.us920.epil = phi <4 x float> [ %i.oe, %.lr.ph868.split.us916.epil ], [ %.5829864.us920.epil.init, %.lr.ph868.split.us916.epil.preheader ]
  %epil.iter1126 = phi i32 [ %epil.iter1126.next, %.lr.ph868.split.us916.epil ], [ 0, %.lr.ph868.split.us916.epil.preheader ]
  %i.od = load <4 x float>, ptr %.5287865.us919.epil, align 16, !tbaa !63
  %i.oe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %spec.select848.us917, <4 x float> nofpclass(nan inf) %i.od, <4 x float> nofpclass(nan inf) %.5829864.us920.epil) ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.5287865.us919.epil, i64 16
  %epil.iter1126.next = add i32 %epil.iter1126, 1 ; 2 uses
  %epil.iter1126.cmp.not = icmp eq i32 %epil.iter1126.next, %xtraiter1125
  br i1 %epil.iter1126.cmp.not, label %.loopexit854.us.loopexit934, label %.lr.ph868.split.us916.epil, !llvm.loop !165

.loopexit854.us.loopexit934:                      ; preds = %.lr.ph868.split.us916.epil, %.loopexit854.us.loopexit934.unr-lcssa
  %.lcssa1115 = phi <4 x float> [ %i.my, %.loopexit854.us.loopexit934.unr-lcssa ], [ %i.oe, %.lr.ph868.split.us916.epil ]
  %scevgep953 = getelementptr i8, ptr %.4286.us, i64 16
  %i.og = add nsw i32 %i.ln, -1
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = shl nuw nsw i64 %i.oh, 4
  %scevgep954 = getelementptr i8, ptr %scevgep953, i64 %i.oi
  br label %.loopexit.us

.loopexit854.us:                                  ; preds = %.loopexit854.us.loopexit, %.loopexit855.us
  %.6830.us = phi nsz <4 x float> [ %.4828880.us, %.loopexit855.us ], [ %i.ny, %.loopexit854.us.loopexit ] ; 3 uses
  %.6.us = phi ptr [ %.4286.us, %.loopexit855.us ], [ %scevgep959, %.loopexit854.us.loopexit ] ; 8 uses
  br i1 %i.st, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %.loopexit854.us
  %i.oj = load i32, ptr %26, align 4, !tbaa !56   ; 9 uses
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %iter.check, label %.loopexit.us

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.am
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %bb.am ], [ %indvars.iv963.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %.4874.us = phi float [ %i.pg, %bb.am ], [ %.4874.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.7873.us = phi ptr [ %i.ph, %bb.am ], [ %.7873.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  br i1 %i.ip, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %vec.epilog.scalar.ph
  br i1 %.0269.us, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv963
  %i.om = load float, ptr %i.ol, align 4, !tbaa !38
  %i.on = fmul fast float %i.om, %.0273.us
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.oo = phi float [ %i.on, %bb.af ], [ 0.000000e+00, %bb.ae ] ; 2 uses
  br i1 %.0268.us, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv963
  %i.oq = load float, ptr %i.op, align 4, !tbaa !38
  %i.or = fmul fast float %i.oq, %.0272.us
  %i.os = fadd fast float %i.or, %i.oo
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ot = phi float [ %i.os, %bb.ah ], [ %i.oo, %bb.ag ] ; 2 uses
  br i1 %.0267.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv963
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !38
  %i.ow = fmul fast float %i.ov, %.0271.us
  %i.ox = fadd fast float %i.ow, %i.ot
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.oy = phi float [ %i.ox, %bb.aj ], [ %i.ot, %bb.ai ] ; 2 uses
  br i1 %.0266.us, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv963
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !38
  %i.pb = fmul fast float %i.pa, %.0270.us
  %i.pc = fadd fast float %i.pb, %i.oy
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %vec.epilog.scalar.ph
  %.0.us = phi nsz float [ 0.000000e+00, %vec.epilog.scalar.ph ], [ %i.pc, %bb.al ], [ %i.oy, %bb.ak ] ; 2 uses
  %i.pd = fmul fast float %.0.us, %.1275.us
  %spec.select.us = select nsz i1 %i.by, float %i.pd, float %.0.us
  %i.pe = load float, ptr %.7873.us, align 4, !tbaa !38
  %i.pf = fmul fast float %spec.select.us, %i.pe
  %i.pg = fadd fast float %i.pf, %.4874.us        ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.7873.us, i64 4
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %exitcond969.not = icmp eq i64 %indvars.iv.next964, %wide.trip.count968
  br i1 %exitcond969.not, label %.loopexit.us.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !166

.loopexit.us.loopexit:                            ; preds = %bb.am, %vec.epilog.middle.block, %middle.block
  %.lcssa1036 = phi float [ %i.rw, %vec.epilog.middle.block ], [ %i.re, %middle.block ], [ %i.pg, %bb.am ]
  %scevgep965 = getelementptr i8, ptr %.6.us, i64 4
  %i.pi = add nsw i32 %i.oj, -1
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = shl nuw nsw i64 %i.pj, 2
  %scevgep966 = getelementptr i8, ptr %scevgep965, i64 %i.pk
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.m, %.loopexit855.us.loopexit935, %bb.v, %.loopexit854.us.loopexit934, %.loopexit.us.loopexit, %.preheader.us, %.loopexit854.us
  %.6830.us1026 = phi <4 x float> [ %.6830.us, %.loopexit854.us ], [ %.6830.us, %.preheader.us ], [ %.6830.us, %.loopexit.us.loopexit ], [ %.4828880.us, %bb.v ], [ %.lcssa1115, %.loopexit854.us.loopexit934 ], [ %.4828880.us, %.loopexit855.us.loopexit935 ], [ %.4828880.us, %bb.m ] ; 2 uses
  %.6837.us10211025 = phi <8 x float> [ %.6837.us, %.loopexit854.us ], [ %.6837.us, %.preheader.us ], [ %.6837.us, %.loopexit.us.loopexit ], [ %.6837.us, %bb.v ], [ %.6837.us, %.loopexit854.us.loopexit934 ], [ %.lcssa, %.loopexit855.us.loopexit935 ], [ %.4835879.us, %bb.m ] ; 2 uses
  %.8.us = phi ptr [ %.6.us, %.loopexit854.us ], [ %.6.us, %.preheader.us ], [ %scevgep966, %.loopexit.us.loopexit ], [ %.4286.us, %bb.v ], [ %scevgep954, %.loopexit854.us.loopexit934 ], [ %scevgep948, %.loopexit855.us.loopexit935 ], [ %.2284881.us, %bb.m ] ; 2 uses
  %.5.us = phi nsz float [ %.3882.us, %.loopexit854.us ], [ %.3882.us, %.preheader.us ], [ %.lcssa1036, %.loopexit.us.loopexit ], [ %.3882.us, %bb.v ], [ %.3882.us, %.loopexit854.us.loopexit934 ], [ %.3882.us, %.loopexit855.us.loopexit935 ], [ %.3882.us, %bb.m ] ; 2 uses
  %indvars.iv.next971 = add nuw nsw i64 %indvars.iv970, 1 ; 2 uses
  %exitcond974.not = icmp eq i64 %indvars.iv.next971, %wide.trip.count973
  br i1 %exitcond974.not, label %._crit_edge.us, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !167

._crit_edge.us:                                   ; preds = %.loopexit.us, %.thread846.us
  %.4835.lcssa.us = phi <8 x float> [ %.3834888.us, %.thread846.us ], [ %.6837.us10211025, %.loopexit.us ] ; 3 uses
  %.4828.lcssa.us = phi <4 x float> [ %.3827889.us, %.thread846.us ], [ %.6830.us1026, %.loopexit.us ] ; 3 uses
  %.2284.lcssa.us = phi ptr [ %.1283890.us, %.thread846.us ], [ %.8.us, %.loopexit.us ] ; 2 uses
  %.3.lcssa.us = phi float [ %.2891.us, %.thread846.us ], [ %.5.us, %.loopexit.us ] ; 3 uses
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1 ; 2 uses
  %exitcond979.not = icmp eq i64 %indvars.iv.next976, %i.cd
  br i1 %exitcond979.not, label %._crit_edge894.us, label %bb.f, !llvm.loop !168

iter.check:                                       ; preds = %.preheader.us
  %i.pl = mul nsw i32 %i.oj, %.1265.us
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.pm ; 3 uses
  %i.po = mul nsw i32 %i.oj, %.1263.us
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.pp ; 3 uses
  %i.pr = mul nsw i32 %i.oj, %.1261.us
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ps ; 3 uses
  %i.pu = mul nsw i32 %i.oj, %.1259.us
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.pv ; 3 uses
  %wide.trip.count968 = zext nneg i32 %i.oj to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.oj, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1039 = icmp ult i32 %i.oj, 16
  br i1 %min.iters.check1039, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.px = and i64 %wide.trip.count968, 8
  %n.vec = and i64 %wide.trip.count968, 2147483632 ; 5 uses
  %i.py = shl nuw nsw i64 %n.vec, 2
  %i.pz = getelementptr i8, ptr %.6.us, i64 %i.py
  %i.qa = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.3882.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x float> [ %i.qa, %vector.ph ], [ %i.rb, %vector.body ]
  %vec.phi1058 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.rc, %vector.body ]
  %i.qb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.6.us, i64 %i.qb ; 2 uses
  %i.qc = getelementptr [4 x i8], ptr %i.pn, i64 %index ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 32
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qc, <8 x i1> %i.sw, <8 x float> poison), !tbaa !38
  %wide.masked.load1059 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qd, <8 x i1> %i.sw, <8 x float> poison), !tbaa !38
  %i.qe = fmul fast <8 x float> %wide.masked.load, %broadcast.splat1049
  %i.qf = fmul fast <8 x float> %wide.masked.load1059, %broadcast.splat1049
  %predphi = select i1 %.0269.us, <8 x float> %i.qe, <8 x float> zeroinitializer
  %predphi1060 = select i1 %.0269.us, <8 x float> %i.qf, <8 x float> zeroinitializer
  %i.qg = getelementptr [4 x i8], ptr %i.pq, i64 %index ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 32
  %wide.masked.load1061 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qg, <8 x i1> %i.sx, <8 x float> poison), !tbaa !38
  %wide.masked.load1062 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qh, <8 x i1> %i.sx, <8 x float> poison), !tbaa !38
  %i.qi = fmul fast <8 x float> %wide.masked.load1061, %broadcast.splat1051
  %i.qj = fmul fast <8 x float> %wide.masked.load1062, %broadcast.splat1051
  %i.qk = select ninf i1 %.0268.us, <8 x float> %i.qi, <8 x float> splat (float -0.000000e+00)
  %predphi1063 = fadd reassoc arcp contract afn <8 x float> %predphi, %i.qk ; 2 uses
  %i.ql = select ninf i1 %.0268.us, <8 x float> %i.qj, <8 x float> splat (float -0.000000e+00)
  %predphi1064 = fadd reassoc arcp contract afn <8 x float> %predphi1060, %i.ql ; 2 uses
  %i.qm = getelementptr [4 x i8], ptr %i.pt, i64 %index ; 2 uses
  %i.qn = getelementptr i8, ptr %i.qm, i64 32
  %wide.masked.load1065 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qm, <8 x i1> %i.sy, <8 x float> poison), !tbaa !38
  %wide.masked.load1066 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qn, <8 x i1> %i.sy, <8 x float> poison), !tbaa !38
  %i.qo = fmul fast <8 x float> %wide.masked.load1065, %broadcast.splat1053
  %i.qp = fmul fast <8 x float> %wide.masked.load1066, %broadcast.splat1053
  %29 = fadd fast <8 x float> %i.qo, %predphi1063
  %predphi1067.a = fadd fast <8 x float> %i.qp, %predphi1064
  %i.qq = select i1 %.0267.us, <8 x float> %29, <8 x float> %predphi1063 ; 2 uses
  %predphi1068 = select i1 %.0267.us, <8 x float> %predphi1067.a, <8 x float> %predphi1064 ; 2 uses
  %i.qr = getelementptr [4 x i8], ptr %i.pw, i64 %index ; 2 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 32
  %wide.masked.load1069 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qr, <8 x i1> %i.sz, <8 x float> poison), !tbaa !38
  %wide.masked.load1070 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qs, <8 x i1> %i.sz, <8 x float> poison), !tbaa !38
  %i.qt = fmul fast <8 x float> %wide.masked.load1069, %broadcast.splat1055
  %i.qu = fmul fast <8 x float> %wide.masked.load1070, %broadcast.splat1055
  %30 = fadd fast <8 x float> %i.qt, %i.qq
  %predphi1071.a = fadd fast <8 x float> %i.qu, %predphi1068
  %predphi1072.a = select nsz <8 x i1> %i.sz, <8 x float> %30, <8 x float> %i.qq
  %i.qv = select nsz i1 %i.ip, <8 x float> %predphi1072.a, <8 x float> zeroinitializer ; 2 uses
  %predphi1073 = select nsz <8 x i1> %i.sz, <8 x float> %predphi1071.a, <8 x float> %predphi1068
  %predphi1074 = select nsz i1 %i.ip, <8 x float> %predphi1073, <8 x float> zeroinitializer ; 2 uses
  %i.qw = fmul fast <8 x float> %i.qv, %broadcast.splat1057
  %i.qx = fmul fast <8 x float> %predphi1074, %broadcast.splat1057
  %31 = select nsz i1 %i.by, <8 x float> %i.qw, <8 x float> %i.qv
  %32 = select nsz i1 %i.by, <8 x float> %i.qx, <8 x float> %predphi1074
  %i.qy = getelementptr i8, ptr %next.gep, i64 32
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !38
  %wide.load1075 = load <8 x float>, ptr %i.qy, align 4, !tbaa !38
  %i.qz = fmul fast <8 x float> %31, %wide.load
  %i.ra = fmul fast <8 x float> %32, %wide.load1075
  %i.rb = fadd fast <8 x float> %i.qz, %vec.phi   ; 2 uses
  %i.rc = fadd fast <8 x float> %i.ra, %vec.phi1058 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rd = icmp eq i64 %index.next, %n.vec
  br i1 %i.rd, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.rc, %i.rb
  %i.re = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count968
  br i1 %cmp.n, label %.loopexit.us.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.px, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !181

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.re, %vec.epilog.iter.check ], [ %.3882.us, %vector.main.loop.iter.check ]
  %n.vec1076 = and i64 %wide.trip.count968, 2147483640 ; 4 uses
  %i.rf = shl nuw nsw i64 %n.vec1076, 2
  %i.rg = getelementptr i8, ptr %.6.us, i64 %i.rf
  %i.rh = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1097 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1110, %vec.epilog.vector.body ] ; 6 uses
  %vec.phi1098 = phi <8 x float> [ %i.rh, %vec.epilog.ph ], [ %i.ru, %vec.epilog.vector.body ]
  %i.ri = shl i64 %index1097, 2
  %next.gep1099 = getelementptr i8, ptr %.6.us, i64 %i.ri
  %i.rj = getelementptr [4 x i8], ptr %i.pn, i64 %index1097
  %wide.masked.load1100 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.rj, <8 x i1> %i.ta, <8 x float> poison), !tbaa !38
  %i.rk = fmul fast <8 x float> %wide.masked.load1100, %broadcast.splat1088
  %predphi1101 = select i1 %.0269.us, <8 x float> %i.rk, <8 x float> zeroinitializer
  %i.rl = getelementptr [4 x i8], ptr %i.pq, i64 %index1097
  %wide.masked.load1102 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.rl, <8 x i1> %i.tb, <8 x float> poison), !tbaa !38
  %i.rm = fmul fast <8 x float> %wide.masked.load1102, %broadcast.splat1090
  %i.rn = select ninf i1 %.0268.us, <8 x float> %i.rm, <8 x float> splat (float -0.000000e+00)
  %predphi1103 = fadd reassoc arcp contract afn <8 x float> %predphi1101, %i.rn ; 2 uses
  %i.ro = getelementptr [4 x i8], ptr %i.pt, i64 %index1097
  %wide.masked.load1104 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ro, <8 x i1> %i.tc, <8 x float> poison), !tbaa !38
  %i.rp = fmul fast <8 x float> %wide.masked.load1104, %broadcast.splat1092
  %33 = fadd fast <8 x float> %i.rp, %predphi1103
  %predphi1105 = select i1 %.0267.us, <8 x float> %33, <8 x float> %predphi1103 ; 2 uses
  %i.rq = getelementptr [4 x i8], ptr %i.pw, i64 %index1097
  %wide.masked.load1106 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.rq, <8 x i1> %i.td, <8 x float> poison), !tbaa !38
  %i.rr = fmul fast <8 x float> %wide.masked.load1106, %broadcast.splat1094
  %34 = fadd fast <8 x float> %i.rr, %predphi1105
  %predphi1107 = select nsz <8 x i1> %i.td, <8 x float> %34, <8 x float> %predphi1105
  %predphi1108 = select nsz i1 %i.ip, <8 x float> %predphi1107, <8 x float> zeroinitializer ; 2 uses
  %i.rs = fmul fast <8 x float> %predphi1108, %broadcast.splat1096
  %35 = select nsz i1 %i.by, <8 x float> %i.rs, <8 x float> %predphi1108
  %wide.load1109 = load <8 x float>, ptr %next.gep1099, align 4, !tbaa !38
  %i.rt = fmul fast <8 x float> %35, %wide.load1109
  %i.ru = fadd fast <8 x float> %i.rt, %vec.phi1098 ; 2 uses
  %index.next1110 = add nuw i64 %index1097, 8     ; 2 uses
  %i.rv = icmp eq i64 %index.next1110, %n.vec1076
  br i1 %i.rv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.rw = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ru) ; 2 uses
  %cmp.n1111 = icmp eq i64 %n.vec1076, %wide.trip.count968
  br i1 %cmp.n1111, label %.loopexit.us.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv963.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1076, %vec.epilog.middle.block ]
  %.4874.us.ph = phi float [ %.3882.us, %iter.check ], [ %i.re, %vec.epilog.iter.check ], [ %i.rw, %vec.epilog.middle.block ]
  %.7873.us.ph = phi ptr [ %.6.us, %iter.check ], [ %i.pz, %vec.epilog.iter.check ], [ %i.rg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %.thread846.us
  %i.rx = load ptr, ptr %25, align 8, !tbaa !19, !noalias !182
  %i.ry = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !182
  %i.rz = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !182
  %factor.op.mul.us = mul i64 %i.ry, %i.rz
  %i.sa = load i32, ptr %12, align 4, !tbaa !56   ; 3 uses
  %i.sb = icmp eq i32 %i.sa, 8
  %i.sc = insertelement <8 x float> poison, float %.0272.us, i64 0
  %i.sd = shufflevector <8 x float> %i.sc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.se = insertelement <8 x float> poison, float %.0271.us, i64 0
  %i.sf = shufflevector <8 x float> %i.se, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sg = insertelement <8 x float> poison, float %.0270.us, i64 0
  %i.sh = shufflevector <8 x float> %i.sg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.si = insertelement <8 x float> poison, float %.1275.us, i64 0
  %i.sj = shufflevector <8 x float> %i.si, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sk = icmp eq i32 %i.sa, 4
  %i.sl = insertelement <4 x float> poison, float %.0272.us, i64 0
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sn = insertelement <4 x float> poison, float %.0271.us, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sp = insertelement <4 x float> poison, float %.0270.us, i64 0
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sr = insertelement <4 x float> poison, float %.1275.us, i64 0
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.st = icmp eq i32 %i.sa, 1
  %i.su = select ninf nsz i1 %i.ce, <8 x float> %i.sj, <8 x float> splat (float 1.000000e+00) ; 2 uses
  %spec.select847.us909 = fmul reassoc nsz arcp contract afn <8 x float> %i.su, zeroinitializer ; 9 uses
  %i.sv = select ninf nsz i1 %i.cf, <4 x float> %i.ss, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %spec.select848.us917 = fmul reassoc nsz arcp contract afn <4 x float> %i.sv, zeroinitializer ; 9 uses
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %.0266.us, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1040 = insertelement <8 x i1> poison, i1 %.0267.us, i64 0
  %broadcast.splat1041 = shufflevector <8 x i1> %broadcast.splatinsert1040, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1042 = insertelement <8 x i1> poison, i1 %.0268.us, i64 0
  %broadcast.splat1043 = shufflevector <8 x i1> %broadcast.splatinsert1042, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1044 = insertelement <8 x i1> poison, i1 %.0269.us, i64 0
  %broadcast.splat1045 = shufflevector <8 x i1> %broadcast.splatinsert1044, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1046 = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1047 = shufflevector <8 x i1> %broadcast.splatinsert1046, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.sw = select <8 x i1> %broadcast.splat1047, <8 x i1> %broadcast.splat1045, <8 x i1> zeroinitializer ; 2 uses
  %i.sx = select <8 x i1> %broadcast.splat1047, <8 x i1> %broadcast.splat1043, <8 x i1> zeroinitializer ; 2 uses
  %i.sy = select <8 x i1> %broadcast.splat1047, <8 x i1> %broadcast.splat1041, <8 x i1> zeroinitializer ; 2 uses
  %i.sz = select <8 x i1> %broadcast.splat1047, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer ; 4 uses
  %broadcast.splatinsert1048 = insertelement <8 x float> poison, float %.0273.us, i64 0
  %broadcast.splat1049 = shufflevector <8 x float> %broadcast.splatinsert1048, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1050 = insertelement <8 x float> poison, float %.0272.us, i64 0
  %broadcast.splat1051 = shufflevector <8 x float> %broadcast.splatinsert1050, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1052 = insertelement <8 x float> poison, float %.0271.us, i64 0
  %broadcast.splat1053 = shufflevector <8 x float> %broadcast.splatinsert1052, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1054 = insertelement <8 x float> poison, float %.0270.us, i64 0
  %broadcast.splat1055 = shufflevector <8 x float> %broadcast.splatinsert1054, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1056 = insertelement <8 x float> poison, float %.1275.us, i64 0
  %broadcast.splat1057 = shufflevector <8 x float> %broadcast.splatinsert1056, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1077 = insertelement <8 x i1> poison, i1 %.0266.us, i64 0
  %broadcast.splat1078 = shufflevector <8 x i1> %broadcast.splatinsert1077, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1079 = insertelement <8 x i1> poison, i1 %.0267.us, i64 0
  %broadcast.splat1080 = shufflevector <8 x i1> %broadcast.splatinsert1079, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1081 = insertelement <8 x i1> poison, i1 %.0268.us, i64 0
  %broadcast.splat1082 = shufflevector <8 x i1> %broadcast.splatinsert1081, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1083 = insertelement <8 x i1> poison, i1 %.0269.us, i64 0
  %broadcast.splat1084 = shufflevector <8 x i1> %broadcast.splatinsert1083, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1085 = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1086 = shufflevector <8 x i1> %broadcast.splatinsert1085, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ta = select <8 x i1> %broadcast.splat1086, <8 x i1> %broadcast.splat1084, <8 x i1> zeroinitializer
  %i.tb = select <8 x i1> %broadcast.splat1086, <8 x i1> %broadcast.splat1082, <8 x i1> zeroinitializer
  %i.tc = select <8 x i1> %broadcast.splat1086, <8 x i1> %broadcast.splat1080, <8 x i1> zeroinitializer
  %i.td = select <8 x i1> %broadcast.splat1086, <8 x i1> %broadcast.splat1078, <8 x i1> zeroinitializer ; 2 uses
  %broadcast.splatinsert1087 = insertelement <8 x float> poison, float %.0273.us, i64 0
  %broadcast.splat1088 = shufflevector <8 x float> %broadcast.splatinsert1087, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1089 = insertelement <8 x float> poison, float %.0272.us, i64 0
  %broadcast.splat1090 = shufflevector <8 x float> %broadcast.splatinsert1089, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1091 = insertelement <8 x float> poison, float %.0271.us, i64 0
  %broadcast.splat1092 = shufflevector <8 x float> %broadcast.splatinsert1091, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1093 = insertelement <8 x float> poison, float %.0270.us, i64 0
  %broadcast.splat1094 = shufflevector <8 x float> %broadcast.splatinsert1093, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1095 = insertelement <8 x float> poison, float %.1275.us, i64 0
  %broadcast.splat1096 = shufflevector <8 x float> %broadcast.splatinsert1095, <8 x float> poison, <8 x i32> zeroinitializer
  br label %_ZN4ncnn3MatD2Ev.exit.us

._crit_edge894.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1 ; 2 uses
  %exitcond984.not = icmp eq i64 %indvars.iv.next981, %wide.trip.count983
  br i1 %exitcond984.not, label %._crit_edge904, label %.preheader856.us, !llvm.loop !173

._crit_edge904:                                   ; preds = %._crit_edge894.us, %.preheader856.lr.ph, %.thread842
  %.2833.lcssa = phi <8 x float> [ %.1832, %.thread842 ], [ %.1832, %.preheader856.lr.ph ], [ %.4835.lcssa.us, %._crit_edge894.us ] ; 10 uses
  %.2826.lcssa = phi <4 x float> [ %.1825, %.thread842 ], [ %.1825, %.preheader856.lr.ph ], [ %.4828.lcssa.us, %._crit_edge894.us ] ; 10 uses
  %.1281.lcssa = phi float [ %.0280, %.thread842 ], [ %.0280, %.preheader856.lr.ph ], [ %.3.lcssa.us, %._crit_edge894.us ] ; 13 uses
  %i.te = load i32, ptr %12, align 4, !tbaa !56   ; 2 uses
  %i.tf = icmp eq i32 %i.te, 8
  br i1 %i.tf, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %._crit_edge904
  %i.tg = load i32, ptr %27, align 4, !tbaa !56
  switch i32 %i.tg, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ao
    i32 2, label %.noexc368
    i32 3, label %bb.ap
    i32 4, label %.noexc369
    i32 5, label %.noexc370
    i32 6, label %.noexc371
  ]

bb.ao:                                            ; preds = %bb.an
  %i.th = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc368:                                        ; preds = %bb.an
  %i.ti = load ptr, ptr %28, align 8, !tbaa !19
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !38
  %i.tk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2833.lcssa)
  %i.tl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2833.lcssa)
  %i.tm = insertelement <8 x float> poison, float %i.tj, i64 0
  %i.tn = shufflevector <8 x float> %i.tm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.to = fmul fast <8 x float> %i.tn, %i.tl
  %i.tp = fadd fast <8 x float> %i.to, %i.tk
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ap:                                            ; preds = %bb.an
  %i.tq = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !38
  %i.ts = insertelement <8 x float> poison, float %i.tr, i64 0
  %i.tt = shufflevector <8 x float> %i.ts, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !38
  %i.tw = insertelement <8 x float> poison, float %i.tv, i64 0
  %i.tx = shufflevector <8 x float> %i.tw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ty = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> nofpclass(nan inf) %i.tt)
  %i.tz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ty, <8 x float> nofpclass(nan inf) %i.tx)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc369:                                        ; preds = %bb.an
  %i.ua = fneg fast <8 x float> %.2833.lcssa
  %i.ub = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ua, <8 x float> splat (float f0x42B0C0A5))
  %i.uc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ub, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ud = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uc, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ue = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ud, i32 1) ; 2 uses
  %i.uf = fcmp fast ogt <8 x float> %i.ue, %i.ud
  %i.ug = select <8 x i1> %i.uf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.uh = fsub fast <8 x float> %i.ue, %i.ug      ; 2 uses
  %i.ui = fneg fast <8 x float> %i.uh             ; 2 uses
  %i.uj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ui, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.uc)
  %i.uk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ui, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.uj) ; 8 uses
  %i.ul = fmul fast <8 x float> %i.uk, %i.uk
  %i.um = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uk, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.un = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.um, <8 x float> nofpclass(nan inf) %i.uk, <8 x float> splat (float f0x3C088908))
  %i.uo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.un, <8 x float> nofpclass(nan inf) %i.uk, <8 x float> splat (float f0x3D2AA9C1))
  %i.up = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uo, <8 x float> nofpclass(nan inf) %i.uk, <8 x float> splat (float f0x3E2AAAAA))
  %i.uq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.up, <8 x float> nofpclass(nan inf) %i.uk, <8 x float> splat (float 5.000000e-01))
  %i.ur = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uq, <8 x float> nofpclass(nan inf) %i.ul, <8 x float> nofpclass(nan inf) %i.uk)
  %i.us = fadd fast <8 x float> %i.ur, splat (float 1.000000e+00)
  %i.ut = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uh)
  %i.uu = shl <8 x i32> %i.ut, splat (i32 23)
  %i.uv = add <8 x i32> %i.uu, splat (i32 1065353216)
  %i.uw = bitcast <8 x i32> %i.uv to <8 x float>
  %i.ux = fmul fast <8 x float> %i.us, %i.uw
  %i.uy = fadd fast <8 x float> %i.ux, splat (float 1.000000e+00)
  %i.uz = fdiv fast <8 x float> splat (float 1.000000e+00), %i.uy
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc370:                                        ; preds = %bb.an
  %i.va = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.vb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.va, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vb, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.vd = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.vc, i32 1) ; 2 uses
  %i.ve = fcmp fast ogt <8 x float> %i.vd, %i.vc
  %i.vf = select <8 x i1> %i.ve, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.vg = fsub fast <8 x float> %i.vd, %i.vf      ; 2 uses
  %i.vh = fneg fast <8 x float> %i.vg             ; 2 uses
  %i.vi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.vh, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.vb)
  %i.vj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.vh, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.vi) ; 8 uses
  %i.vk = fmul fast <8 x float> %i.vj, %i.vj
  %i.vl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vj, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.vm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vl, <8 x float> nofpclass(nan inf) %i.vj, <8 x float> splat (float f0x3C088908))
  %i.vn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vm, <8 x float> nofpclass(nan inf) %i.vj, <8 x float> splat (float f0x3D2AA9C1))
  %i.vo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vn, <8 x float> nofpclass(nan inf) %i.vj, <8 x float> splat (float f0x3E2AAAAA))
  %i.vp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> nofpclass(nan inf) %i.vj, <8 x float> splat (float 5.000000e-01))
  %i.vq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vp, <8 x float> nofpclass(nan inf) %i.vk, <8 x float> nofpclass(nan inf) %i.vj)
  %i.vr = fadd fast <8 x float> %i.vq, splat (float 1.000000e+00)
  %i.vs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vg)
  %i.vt = shl <8 x i32> %i.vs, splat (i32 23)
  %i.vu = add <8 x i32> %i.vt, splat (i32 1065353216)
  %i.vv = bitcast <8 x i32> %i.vu to <8 x float>
  %i.vw = fmul fast <8 x float> %i.vr, %i.vv
  %i.vx = fadd fast <8 x float> %i.vw, splat (float 1.000000e+00) ; 2 uses
  %i.vy = fcmp fast ole <8 x float> %i.vx, zeroinitializer
  %i.vz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vx, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.wa = bitcast <8 x float> %i.vz to <8 x i32>
  %i.wb = bitcast <8 x float> %i.vz to <8 x i32>
  %i.wc = and <8 x i32> %i.wb, splat (i32 -2139095041)
  %i.wd = or disjoint <8 x i32> %i.wc, splat (i32 1056964608)
  %i.we = bitcast <8 x i32> %i.wd to <8 x float>  ; 3 uses
  %i.wf = lshr <8 x i32> %i.wa, splat (i32 23)
  %i.wg = add nsw <8 x i32> %i.wf, splat (i32 -127)
  %i.wh = sitofp fast <8 x i32> %i.wg to <8 x float> ; 2 uses
  %i.wi = fadd fast <8 x float> %i.wh, splat (float 1.000000e+00)
  %i.wj = fcmp fast olt <8 x float> %i.we, splat (float f0x3F3504F3) ; 2 uses
  %i.wk = select <8 x i1> %i.wj, <8 x float> %i.we, <8 x float> zeroinitializer
  %i.wl = fadd fast <8 x float> %i.we, splat (float -1.000000e+00)
  %i.wm = select fast <8 x i1> %i.wj, <8 x float> %i.wh, <8 x float> %i.wi ; 2 uses
  %i.wn = fadd fast <8 x float> %i.wl, %i.wk      ; 12 uses
  %i.wo = fmul fast <8 x float> %i.wn, %i.wn      ; 2 uses
  %i.wp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wn, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.wq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wp, <8 x float> nofpclass(nan inf) %i.wn, <8 x float> splat (float f0x3DEF251A))
  %i.wr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wq, <8 x float> nofpclass(nan inf) %i.wn, <8 x float> splat (float f0xBDFE5D4F))
  %i.ws = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wr, <8 x float> nofpclass(nan inf) %i.wn, <8 x float> splat (float f0x3E11E9BF))
  %i.wt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ws, <8 x float> nofpclass(nan inf) %i.wn, <8 x float> splat (float f0xBE2AAE50))
  %i.wu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wt, <8 x float> nofpclass(nan inf) %i.wn, <8 x float> splat (float f0x3E4CCEAC))
  %i.wv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wu, <8 x float> nofpclass(nan inf) %i.wn, <8 x float> splat (float f0xBE7FFFFC))
  %i.ww = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wv, <8 x float> nofpclass(nan inf) %i.wn, <8 x float> splat (float f0x3EAAAAAA))
  %i.wx = fmul fast <8 x float> %i.wo, %i.wn
  %i.wy = fmul fast <8 x float> %i.wx, %i.ww
  %i.wz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.wy)
  %i.xa = fneg fast <8 x float> %i.wo
  %i.xb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xa, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.wz)
  %i.xc = fadd fast <8 x float> %i.xb, %i.wn
  %i.xd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.xc)
  %.neg = fmul fast <8 x float> %i.xd, splat (float -2.000000e+00)
  %i.xe = select fast <8 x i1> %i.vy, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.xf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xe, <8 x float> splat (float f0x42B0C0A5))
  %i.xg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xg, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.xi = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.xh, i32 1) ; 2 uses
  %i.xj = fcmp fast ogt <8 x float> %i.xi, %i.xh
  %i.xk = select <8 x i1> %i.xj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.xl = fsub fast <8 x float> %i.xi, %i.xk      ; 2 uses
  %i.xm = fneg fast <8 x float> %i.xl             ; 2 uses
  %i.xn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.xg)
  %i.xo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.xn) ; 8 uses
  %i.xp = fmul fast <8 x float> %i.xo, %i.xo
  %i.xq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xo, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.xr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xq, <8 x float> nofpclass(nan inf) %i.xo, <8 x float> splat (float f0x3C088908))
  %i.xs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xr, <8 x float> nofpclass(nan inf) %i.xo, <8 x float> splat (float f0x3D2AA9C1))
  %i.xt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xs, <8 x float> nofpclass(nan inf) %i.xo, <8 x float> splat (float f0x3E2AAAAA))
  %i.xu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xt, <8 x float> nofpclass(nan inf) %i.xo, <8 x float> splat (float 5.000000e-01))
  %i.xv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xu, <8 x float> nofpclass(nan inf) %i.xp, <8 x float> nofpclass(nan inf) %i.xo)
  %i.xw = fadd fast <8 x float> %i.xv, splat (float 1.000000e+00)
  %i.xx = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xl)
  %i.xy = shl <8 x i32> %i.xx, splat (i32 23)
  %i.xz = add <8 x i32> %i.xy, splat (i32 1065353216)
  %i.ya = bitcast <8 x i32> %i.xz to <8 x float>
  %i.yb = fmul fast <8 x float> %i.xw, %i.ya
  %i.yc = fadd fast <8 x float> %i.yb, splat (float 1.000000e+00)
  %i.yd = fdiv fast <8 x float> splat (float 1.000000e+00), %i.yc
  %i.ye = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yd, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.yf = fmul fast <8 x float> %i.ye, %.2833.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc371:                                        ; preds = %bb.an
  %i.yg = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !38
  %i.yi = insertelement <8 x float> poison, float %i.yh, i64 0
  %i.yj = shufflevector <8 x float> %i.yi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 4
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !38
  %i.ym = insertelement <8 x float> poison, float %i.yl, i64 0
  %i.yn = shufflevector <8 x float> %i.ym, <8 x float> poison, <8 x i32> zeroinitializer
  %i.yo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> nofpclass(nan inf) %i.yj, <8 x float> nofpclass(nan inf) %i.yn)
  %i.yp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yo, <8 x float> zeroinitializer)
  %i.yq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.yp, <8 x float> splat (float 1.000000e+00))
  %i.yr = fmul fast <8 x float> %i.yq, %.2833.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc371, %.noexc370, %.noexc369, %bb.ap, %.noexc368, %bb.ao, %bb.an
  %.0.i = phi nsz <8 x float> [ %i.yr, %.noexc371 ], [ %i.th, %bb.ao ], [ %i.tp, %.noexc368 ], [ %i.tz, %bb.ap ], [ %i.uz, %.noexc369 ], [ %i.yf, %.noexc370 ], [ %.2833.lcssa, %bb.an ]
  %i.ys = load i32, ptr %3, align 4, !tbaa !56
  %i.yt = mul nsw i32 %i.ys, %i.ae
  %i.yu = add nsw i32 %i.yt, %i.aj
  %i.yv = shl nsw i32 %i.yu, 3
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.yw
  store <8 x float> %.0.i, ptr %i.yx, align 32, !tbaa !63
  %.pr = load i32, ptr %12, align 4, !tbaa !56
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %._crit_edge904
  %i.yy = phi i32 [ %.pr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.te, %._crit_edge904 ] ; 2 uses
end_hunk_0
