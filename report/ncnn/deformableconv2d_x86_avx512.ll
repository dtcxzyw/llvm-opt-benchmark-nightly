Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_avx512?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a
  %i.rb = phi fast <4 x float> [ %i.ra, %bb.am ], [ zeroinitializer, %bb.al ]
  %i.rc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qr, <4 x float> nofpclass(nan inf) %i.wd, <4 x float> nofpclass(nan inf) %i.qm)
  %i.rd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qw, <4 x float> nofpclass(nan inf) %i.wf, <4 x float> nofpclass(nan inf) %i.rc)
  %i.re = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rb, <4 x float> nofpclass(nan inf) %i.wh, <4 x float> nofpclass(nan inf) %i.rd)
  %spec.select912.us.us = fmul reassoc nsz arcp contract afn <4 x float> %i.wn, %i.re
  %i.rf = load <4 x float>, ptr %.7940.us.us, align 16, !tbaa !63
  %i.rg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %spec.select912.us.us, <4 x float> nofpclass(nan inf) %i.rf, <4 x float> nofpclass(nan inf) %.5884939.us.us) ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.7940.us.us, i64 16
  %indvars.iv.next1062 = add nuw nsw i64 %indvars.iv1061, 1 ; 2 uses
  %exitcond1067.not = icmp eq i64 %indvars.iv.next1062, %wide.trip.count1066
  br i1 %exitcond1067.not, label %.loopexit919.us.loopexit, label %.lr.ph943.split.us.us, !llvm.loop !189

.loopexit919.us.loopexit:                         ; preds = %bb.an
  %scevgep1063 = getelementptr i8, ptr %.6348.us, i64 16
  %i.ri = add nsw i32 %i.ov, -1
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = shl nuw nsw i64 %i.rj, 4
  %scevgep1064 = getelementptr i8, ptr %scevgep1063, i64 %i.rk
  br label %.loopexit919.us

.loopexit919.us.loopexit1024.unr-lcssa:           ; preds = %.lr.ph943.split.us1005
  %lcmp.mod1256.not = icmp eq i32 %xtraiter1254, 0
  br i1 %lcmp.mod1256.not, label %.loopexit919.us.loopexit1024, label %.lr.ph943.split.us1005.epil.preheader

.lr.ph943.split.us1005.epil.preheader:            ; preds = %.loopexit919.us.loopexit1024.unr-lcssa, %.lr.ph943.split.us1005.preheader
  %.7940.us1008.epil.init = phi ptr [ %.6348.us, %.lr.ph943.split.us1005.preheader ], [ %i.qh, %.loopexit919.us.loopexit1024.unr-lcssa ]
  %.5884939.us1009.epil.init = phi <4 x float> [ %.4883955.us, %.lr.ph943.split.us1005.preheader ], [ %i.qg, %.loopexit919.us.loopexit1024.unr-lcssa ]
  %lcmp.mod1258 = icmp ne i32 %xtraiter1254, 0
  call void @llvm.assume(i1 %lcmp.mod1258)
  br label %.lr.ph943.split.us1005.epil

.lr.ph943.split.us1005.epil:                      ; preds = %.lr.ph943.split.us1005.epil, %.lr.ph943.split.us1005.epil.preheader
  %.7940.us1008.epil = phi ptr [ %i.rn, %.lr.ph943.split.us1005.epil ], [ %.7940.us1008.epil.init, %.lr.ph943.split.us1005.epil.preheader ] ; 2 uses
  %.5884939.us1009.epil = phi <4 x float> [ %i.rm, %.lr.ph943.split.us1005.epil ], [ %.5884939.us1009.epil.init, %.lr.ph943.split.us1005.epil.preheader ]
  %epil.iter1255 = phi i32 [ %epil.iter1255.next, %.lr.ph943.split.us1005.epil ], [ 0, %.lr.ph943.split.us1005.epil.preheader ]
  %i.rl = load <4 x float>, ptr %.7940.us1008.epil, align 16, !tbaa !63
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %spec.select912.us1006, <4 x float> nofpclass(nan inf) %i.rl, <4 x float> nofpclass(nan inf) %.5884939.us1009.epil) ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.7940.us1008.epil, i64 16
  %epil.iter1255.next = add i32 %epil.iter1255, 1 ; 2 uses
  %epil.iter1255.cmp.not = icmp eq i32 %epil.iter1255.next, %xtraiter1254
  br i1 %epil.iter1255.cmp.not, label %.loopexit919.us.loopexit1024, label %.lr.ph943.split.us1005.epil, !llvm.loop !190

.loopexit919.us.loopexit1024:                     ; preds = %.lr.ph943.split.us1005.epil, %.loopexit919.us.loopexit1024.unr-lcssa
  %.lcssa1237 = phi <4 x float> [ %i.qg, %.loopexit919.us.loopexit1024.unr-lcssa ], [ %i.rm, %.lr.ph943.split.us1005.epil ]
  %scevgep1058 = getelementptr i8, ptr %.6348.us, i64 16
  %i.ro = add nsw i32 %i.ov, -1
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = shl nuw nsw i64 %i.rp, 4
  %scevgep1059 = getelementptr i8, ptr %scevgep1058, i64 %i.rq
  br label %.loopexit.us

.loopexit919.us:                                  ; preds = %.loopexit919.us.loopexit, %.loopexit920.us
  %.6885.us = phi nsz <4 x float> [ %.4883955.us, %.loopexit920.us ], [ %i.rg, %.loopexit919.us.loopexit ] ; 3 uses
  %.8.us = phi ptr [ %.6348.us, %.loopexit920.us ], [ %scevgep1064, %.loopexit919.us.loopexit ] ; 8 uses
  br i1 %i.wk, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %.loopexit919.us
  %i.rr = load i32, ptr %26, align 4, !tbaa !58   ; 9 uses
  %i.rs = icmp sgt i32 %i.rr, 0
  br i1 %i.rs, label %iter.check, label %.loopexit.us

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.aw
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %bb.aw ], [ %indvars.iv1068.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %.4949.us = phi float [ %i.so, %bb.aw ], [ %.4949.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.9948.us = phi ptr [ %i.sp, %bb.aw ], [ %.9948.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  br i1 %i.jb, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %vec.epilog.scalar.ph
  br i1 %.0323.us, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv1068
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !38
  %i.rv = fmul fast float %i.ru, %.0327.us
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.rw = phi float [ %i.rv, %bb.ap ], [ 0.000000e+00, %bb.ao ] ; 2 uses
  br i1 %.0322.us, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv1068
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !38
  %i.rz = fmul fast float %i.ry, %.0326.us
  %i.sa = fadd fast float %i.rz, %i.rw
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.sb = phi float [ %i.sa, %bb.ar ], [ %i.rw, %bb.aq ] ; 2 uses
  br i1 %.0321.us, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv1068
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !38
  %i.se = fmul fast float %i.sd, %.0325.us
  %i.sf = fadd fast float %i.se, %i.sb
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.sg = phi float [ %i.sf, %bb.at ], [ %i.sb, %bb.as ] ; 2 uses
  br i1 %.0320.us, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv1068
  %i.si = load float, ptr %i.sh, align 4, !tbaa !38
  %i.sj = fmul fast float %i.si, %.0324.us
  %i.sk = fadd fast float %i.sj, %i.sg
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %vec.epilog.scalar.ph
  %.0.us = phi nsz float [ 0.000000e+00, %vec.epilog.scalar.ph ], [ %i.sk, %bb.av ], [ %i.sg, %bb.au ] ; 2 uses
  %i.sl = fmul fast float %.0.us, %.1329.us
  %spec.select.us = select nsz i1 %i.cd, float %i.sl, float %.0.us
  %i.sm = load float, ptr %.9948.us, align 4, !tbaa !38
  %i.sn = fmul fast float %spec.select.us, %i.sm
  %i.so = fadd fast float %i.sn, %.4949.us        ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.9948.us, i64 4
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %exitcond1074.not = icmp eq i64 %indvars.iv.next1069, %wide.trip.count1073
  br i1 %exitcond1074.not, label %.loopexit.us.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !191

.loopexit.us.loopexit:                            ; preds = %bb.aw, %vec.epilog.middle.block, %middle.block
  %.lcssa1156 = phi float [ %i.ve, %vec.epilog.middle.block ], [ %i.um, %middle.block ], [ %i.so, %bb.aw ]
  %scevgep1070 = getelementptr i8, ptr %.8.us, i64 4
  %i.sq = add nsw i32 %i.rr, -1
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = shl nuw nsw i64 %i.sr, 2
  %scevgep1071 = getelementptr i8, ptr %scevgep1070, i64 %i.ss
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.n, %.loopexit921.us.loopexit1026, %bb.w, %.loopexit920.us.loopexit1025, %bb.af, %.loopexit919.us.loopexit1024, %.loopexit.us.loopexit, %.preheader.us, %.loopexit919.us
  %.6885.us1142 = phi <4 x float> [ %.6885.us, %.loopexit919.us ], [ %.6885.us, %.preheader.us ], [ %.6885.us, %.loopexit.us.loopexit ], [ %.4883955.us, %bb.af ], [ %.lcssa1237, %.loopexit919.us.loopexit1024 ], [ %.4883955.us, %.loopexit920.us.loopexit1025 ], [ %.4883955.us, %bb.w ], [ %.4883955.us, %.loopexit921.us.loopexit1026 ], [ %.4883955.us, %bb.n ] ; 2 uses
  %.6.us113011341141 = phi <16 x float> [ %.6.us, %.loopexit919.us ], [ %.6.us, %.preheader.us ], [ %.6.us, %.loopexit.us.loopexit ], [ %.6.us, %bb.af ], [ %.6.us, %.loopexit919.us.loopexit1024 ], [ %.6.us, %.loopexit920.us.loopexit1025 ], [ %.6.us, %bb.w ], [ %.lcssa, %.loopexit921.us.loopexit1026 ], [ %.4340957.us, %bb.n ] ; 2 uses
  %.6892.us11351140 = phi <8 x float> [ %.6892.us, %.loopexit919.us ], [ %.6892.us, %.preheader.us ], [ %.6892.us, %.loopexit.us.loopexit ], [ %.6892.us, %bb.af ], [ %.6892.us, %.loopexit919.us.loopexit1024 ], [ %.lcssa1235, %.loopexit920.us.loopexit1025 ], [ %.4890954.us, %bb.w ], [ %.4890954.us, %.loopexit921.us.loopexit1026 ], [ %.4890954.us, %bb.n ] ; 2 uses
  %.10.us = phi ptr [ %.8.us, %.loopexit919.us ], [ %.8.us, %.preheader.us ], [ %scevgep1071, %.loopexit.us.loopexit ], [ %.6348.us, %bb.af ], [ %scevgep1059, %.loopexit919.us.loopexit1024 ], [ %scevgep1049, %.loopexit920.us.loopexit1025 ], [ %.4346.us, %bb.w ], [ %scevgep1043, %.loopexit921.us.loopexit1026 ], [ %.2344956.us, %bb.n ] ; 2 uses
  %.5.us = phi nsz float [ %.3958.us, %.loopexit919.us ], [ %.3958.us, %.preheader.us ], [ %.lcssa1156, %.loopexit.us.loopexit ], [ %.3958.us, %bb.af ], [ %.3958.us, %.loopexit919.us.loopexit1024 ], [ %.3958.us, %.loopexit920.us.loopexit1025 ], [ %.3958.us, %bb.w ], [ %.3958.us, %.loopexit921.us.loopexit1026 ], [ %.3958.us, %bb.n ] ; 2 uses
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 1 ; 2 uses
  %exitcond1079.not = icmp eq i64 %indvars.iv.next1076, %wide.trip.count1078
  br i1 %exitcond1079.not, label %._crit_edge.us, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !192

._crit_edge.us:                                   ; preds = %.loopexit.us, %.thread908.us
  %.4890.lcssa.us = phi <8 x float> [ %.3889965.us, %.thread908.us ], [ %.6892.us11351140, %.loopexit.us ] ; 3 uses
  %.4883.lcssa.us = phi <4 x float> [ %.3882966.us, %.thread908.us ], [ %.6885.us1142, %.loopexit.us ] ; 3 uses
  %.2344.lcssa.us = phi ptr [ %.1343967.us, %.thread908.us ], [ %.10.us, %.loopexit.us ] ; 2 uses
  %.4340.lcssa.us = phi <16 x float> [ %.3339968.us, %.thread908.us ], [ %.6.us113011341141, %.loopexit.us ] ; 3 uses
  %.3.lcssa.us = phi float [ %.2969.us, %.thread908.us ], [ %.5.us, %.loopexit.us ] ; 3 uses
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 1 ; 2 uses
  %exitcond1084.not = icmp eq i64 %indvars.iv.next1081, %i.ci
  br i1 %exitcond1084.not, label %._crit_edge972.us, label %bb.g, !llvm.loop !193

iter.check:                                       ; preds = %.preheader.us
  %i.st = mul nsw i32 %i.rr, %.1319.us
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.su ; 3 uses
  %i.sw = mul nsw i32 %i.rr, %.1317.us
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.sx ; 3 uses
  %i.sz = mul nsw i32 %i.rr, %.1315.us
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.ta ; 3 uses
  %i.tc = mul nsw i32 %i.rr, %.1313.us
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.td ; 3 uses
  %wide.trip.count1073 = zext nneg i32 %i.rr to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.rr, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1159 = icmp ult i32 %i.rr, 32
  br i1 %min.iters.check1159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tf = and i64 %wide.trip.count1073, 24
  %n.vec = and i64 %wide.trip.count1073, 2147483616 ; 5 uses
  %i.tg = shl nuw nsw i64 %n.vec, 2
  %i.th = getelementptr i8, ptr %.8.us, i64 %i.tg
  %i.ti = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.3958.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <16 x float> [ %i.ti, %vector.ph ], [ %i.uj, %vector.body ]
  %vec.phi1178 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.uk, %vector.body ]
  %i.tj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.8.us, i64 %i.tj ; 2 uses
  %i.tk = getelementptr [4 x i8], ptr %i.sv, i64 %index ; 2 uses
  %i.tl = getelementptr i8, ptr %i.tk, i64 64
  %wide.masked.load = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.tk, <16 x i1> %i.wo, <16 x float> poison), !tbaa !38
  %wide.masked.load1179 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.tl, <16 x i1> %i.wo, <16 x float> poison), !tbaa !38
  %i.tm = fmul fast <16 x float> %wide.masked.load, %broadcast.splat1169
  %i.tn = fmul fast <16 x float> %wide.masked.load1179, %broadcast.splat1169
  %predphi = select i1 %.0323.us, <16 x float> %i.tm, <16 x float> zeroinitializer
  %predphi1180 = select i1 %.0323.us, <16 x float> %i.tn, <16 x float> zeroinitializer
  %i.to = getelementptr [4 x i8], ptr %i.sy, i64 %index ; 2 uses
  %i.tp = getelementptr i8, ptr %i.to, i64 64
  %wide.masked.load1181 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.to, <16 x i1> %i.wp, <16 x float> poison), !tbaa !38
  %wide.masked.load1182 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.tp, <16 x i1> %i.wp, <16 x float> poison), !tbaa !38
  %i.tq = fmul fast <16 x float> %wide.masked.load1181, %broadcast.splat1171
  %i.tr = fmul fast <16 x float> %wide.masked.load1182, %broadcast.splat1171
  %i.ts = select ninf i1 %.0322.us, <16 x float> %i.tq, <16 x float> splat (float -0.000000e+00)
  %predphi1183 = fadd reassoc arcp contract afn <16 x float> %predphi, %i.ts ; 2 uses
  %i.tt = select ninf i1 %.0322.us, <16 x float> %i.tr, <16 x float> splat (float -0.000000e+00)
  %predphi1184 = fadd reassoc arcp contract afn <16 x float> %predphi1180, %i.tt ; 2 uses
  %i.tu = getelementptr [4 x i8], ptr %i.tb, i64 %index ; 2 uses
  %i.tv = getelementptr i8, ptr %i.tu, i64 64
  %wide.masked.load1185 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.tu, <16 x i1> %i.wq, <16 x float> poison), !tbaa !38
  %wide.masked.load1186 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.tv, <16 x i1> %i.wq, <16 x float> poison), !tbaa !38
  %i.tw = fmul fast <16 x float> %wide.masked.load1185, %broadcast.splat1173
  %i.tx = fmul fast <16 x float> %wide.masked.load1186, %broadcast.splat1173
  %29 = fadd fast <16 x float> %i.tw, %predphi1183
  %predphi1187.a = fadd fast <16 x float> %i.tx, %predphi1184
  %i.ty = select i1 %.0321.us, <16 x float> %29, <16 x float> %predphi1183 ; 2 uses
  %predphi1188 = select i1 %.0321.us, <16 x float> %predphi1187.a, <16 x float> %predphi1184 ; 2 uses
  %i.tz = getelementptr [4 x i8], ptr %i.te, i64 %index ; 2 uses
  %i.ua = getelementptr i8, ptr %i.tz, i64 64
  %wide.masked.load1189 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.tz, <16 x i1> %i.wr, <16 x float> poison), !tbaa !38
  %wide.masked.load1190 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 4 %i.ua, <16 x i1> %i.wr, <16 x float> poison), !tbaa !38
  %i.ub = fmul fast <16 x float> %wide.masked.load1189, %broadcast.splat1175
  %i.uc = fmul fast <16 x float> %wide.masked.load1190, %broadcast.splat1175
  %30 = fadd fast <16 x float> %i.ub, %i.ty
  %predphi1191.a = fadd fast <16 x float> %i.uc, %predphi1188
  %predphi1192.a = select nsz <16 x i1> %i.wr, <16 x float> %30, <16 x float> %i.ty
  %i.ud = select nsz i1 %i.jb, <16 x float> %predphi1192.a, <16 x float> zeroinitializer ; 2 uses
  %predphi1193 = select nsz <16 x i1> %i.wr, <16 x float> %predphi1191.a, <16 x float> %predphi1188
  %predphi1194 = select nsz i1 %i.jb, <16 x float> %predphi1193, <16 x float> zeroinitializer ; 2 uses
  %i.ue = fmul fast <16 x float> %i.ud, %broadcast.splat1177
  %i.uf = fmul fast <16 x float> %predphi1194, %broadcast.splat1177
  %31 = select nsz i1 %i.cd, <16 x float> %i.ue, <16 x float> %i.ud
  %32 = select nsz i1 %i.cd, <16 x float> %i.uf, <16 x float> %predphi1194
  %i.ug = getelementptr i8, ptr %next.gep, i64 64
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !38
  %wide.load1195 = load <16 x float>, ptr %i.ug, align 4, !tbaa !38
  %i.uh = fmul fast <16 x float> %31, %wide.load
  %i.ui = fmul fast <16 x float> %32, %wide.load1195
  %i.uj = fadd fast <16 x float> %i.uh, %vec.phi  ; 2 uses
  %i.uk = fadd fast <16 x float> %i.ui, %vec.phi1178 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ul = icmp eq i64 %index.next, %n.vec
  br i1 %i.ul, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.uk, %i.uj
  %i.um = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1073
  br i1 %cmp.n, label %.loopexit.us.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !206

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.um, %vec.epilog.iter.check ], [ %.3958.us, %vector.main.loop.iter.check ]
  %n.vec1196 = and i64 %wide.trip.count1073, 2147483640 ; 4 uses
  %i.un = shl nuw nsw i64 %n.vec1196, 2
  %i.uo = getelementptr i8, ptr %.8.us, i64 %i.un
  %i.up = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1230, %vec.epilog.vector.body ] ; 6 uses
  %vec.phi1218 = phi <8 x float> [ %i.up, %vec.epilog.ph ], [ %i.vc, %vec.epilog.vector.body ]
  %i.uq = shl i64 %index1217, 2
  %next.gep1219 = getelementptr i8, ptr %.8.us, i64 %i.uq
  %i.ur = getelementptr [4 x i8], ptr %i.sv, i64 %index1217
  %wide.masked.load1220 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ur, <8 x i1> %i.ws, <8 x float> poison), !tbaa !38
  %i.us = fmul fast <8 x float> %wide.masked.load1220, %broadcast.splat1208
  %predphi1221 = select i1 %.0323.us, <8 x float> %i.us, <8 x float> zeroinitializer
  %i.ut = getelementptr [4 x i8], ptr %i.sy, i64 %index1217
  %wide.masked.load1222 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ut, <8 x i1> %i.wt, <8 x float> poison), !tbaa !38
  %i.uu = fmul fast <8 x float> %wide.masked.load1222, %broadcast.splat1210
  %i.uv = select ninf i1 %.0322.us, <8 x float> %i.uu, <8 x float> splat (float -0.000000e+00)
  %predphi1223 = fadd reassoc arcp contract afn <8 x float> %predphi1221, %i.uv ; 2 uses
  %i.uw = getelementptr [4 x i8], ptr %i.tb, i64 %index1217
  %wide.masked.load1224 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.uw, <8 x i1> %i.wu, <8 x float> poison), !tbaa !38
  %i.ux = fmul fast <8 x float> %wide.masked.load1224, %broadcast.splat1212
  %33 = fadd fast <8 x float> %i.ux, %predphi1223
  %predphi1225 = select i1 %.0321.us, <8 x float> %33, <8 x float> %predphi1223 ; 2 uses
  %i.uy = getelementptr [4 x i8], ptr %i.te, i64 %index1217
  %wide.masked.load1226 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.uy, <8 x i1> %i.wv, <8 x float> poison), !tbaa !38
  %i.uz = fmul fast <8 x float> %wide.masked.load1226, %broadcast.splat1214
  %34 = fadd fast <8 x float> %i.uz, %predphi1225
  %predphi1227 = select nsz <8 x i1> %i.wv, <8 x float> %34, <8 x float> %predphi1225
  %predphi1228 = select nsz i1 %i.jb, <8 x float> %predphi1227, <8 x float> zeroinitializer ; 2 uses
  %i.va = fmul fast <8 x float> %predphi1228, %broadcast.splat1216
  %35 = select nsz i1 %i.cd, <8 x float> %i.va, <8 x float> %predphi1228
  %wide.load1229 = load <8 x float>, ptr %next.gep1219, align 4, !tbaa !38
  %i.vb = fmul fast <8 x float> %35, %wide.load1229
  %i.vc = fadd fast <8 x float> %i.vb, %vec.phi1218 ; 2 uses
  %index.next1230 = add nuw i64 %index1217, 8     ; 2 uses
  %i.vd = icmp eq i64 %index.next1230, %n.vec1196
  br i1 %i.vd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !195

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ve = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.vc) ; 2 uses
  %cmp.n1231 = icmp eq i64 %n.vec1196, %wide.trip.count1073
  br i1 %cmp.n1231, label %.loopexit.us.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1068.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1196, %vec.epilog.middle.block ]
  %.4949.us.ph = phi float [ %.3958.us, %iter.check ], [ %i.um, %vec.epilog.iter.check ], [ %i.ve, %vec.epilog.middle.block ]
  %.9948.us.ph = phi ptr [ %.8.us, %iter.check ], [ %i.th, %vec.epilog.iter.check ], [ %i.uo, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %.thread908.us
  %i.vf = load ptr, ptr %25, align 8, !tbaa !19, !noalias !207
  %i.vg = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !207
  %i.vh = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !207
  %factor.op.mul.us = mul i64 %i.vg, %i.vh
  %i.vi = load i32, ptr %12, align 4, !tbaa !58   ; 4 uses
  %i.vj = icmp eq i32 %i.vi, 16
  %i.vk = insertelement <16 x float> poison, float %.0326.us, i64 0
  %i.vl = shufflevector <16 x float> %i.vk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vm = insertelement <16 x float> poison, float %.0325.us, i64 0
  %i.vn = shufflevector <16 x float> %i.vm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vo = insertelement <16 x float> poison, float %.0324.us, i64 0
  %i.vp = shufflevector <16 x float> %i.vo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vq = insertelement <16 x float> poison, float %.1329.us, i64 0
  %i.vr = shufflevector <16 x float> %i.vq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vs = icmp eq i32 %i.vi, 8
  %i.vt = insertelement <8 x float> poison, float %.0326.us, i64 0
  %i.vu = shufflevector <8 x float> %i.vt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vv = insertelement <8 x float> poison, float %.0325.us, i64 0
  %i.vw = shufflevector <8 x float> %i.vv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vx = insertelement <8 x float> poison, float %.0324.us, i64 0
  %i.vy = shufflevector <8 x float> %i.vx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vz = insertelement <8 x float> poison, float %.1329.us, i64 0
  %i.wa = shufflevector <8 x float> %i.vz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wb = icmp eq i32 %i.vi, 4
  %i.wc = insertelement <4 x float> poison, float %.0326.us, i64 0
  %i.wd = shufflevector <4 x float> %i.wc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.we = insertelement <4 x float> poison, float %.0325.us, i64 0
  %i.wf = shufflevector <4 x float> %i.we, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wg = insertelement <4 x float> poison, float %.0324.us, i64 0
  %i.wh = shufflevector <4 x float> %i.wg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wi = insertelement <4 x float> poison, float %.1329.us, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = icmp eq i32 %i.vi, 1
  %i.wl = select ninf nsz i1 %i.cj, <16 x float> %i.vr, <16 x float> splat (float 1.000000e+00) ; 2 uses
  %spec.select910.us990 = fmul reassoc nsz arcp contract afn <16 x float> %i.wl, zeroinitializer ; 9 uses
  %i.wm = select ninf nsz i1 %i.ck, <8 x float> %i.wa, <8 x float> splat (float 1.000000e+00) ; 2 uses
  %spec.select911.us998 = fmul reassoc nsz arcp contract afn <8 x float> %i.wm, zeroinitializer ; 9 uses
  %i.wn = select ninf nsz i1 %i.cl, <4 x float> %i.wj, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %spec.select912.us1006 = fmul reassoc nsz arcp contract afn <4 x float> %i.wn, zeroinitializer ; 9 uses
  %broadcast.splatinsert = insertelement <16 x i1> poison, i1 %.0320.us, i64 0
  %broadcast.splat = shufflevector <16 x i1> %broadcast.splatinsert, <16 x i1> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1160 = insertelement <16 x i1> poison, i1 %.0321.us, i64 0
  %broadcast.splat1161 = shufflevector <16 x i1> %broadcast.splatinsert1160, <16 x i1> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <16 x i1> poison, i1 %.0322.us, i64 0
  %broadcast.splat1163 = shufflevector <16 x i1> %broadcast.splatinsert1162, <16 x i1> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1164 = insertelement <16 x i1> poison, i1 %.0323.us, i64 0
  %broadcast.splat1165 = shufflevector <16 x i1> %broadcast.splatinsert1164, <16 x i1> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1166 = insertelement <16 x i1> poison, i1 %i.jb, i64 0
  %broadcast.splat1167 = shufflevector <16 x i1> %broadcast.splatinsert1166, <16 x i1> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.wo = select <16 x i1> %broadcast.splat1167, <16 x i1> %broadcast.splat1165, <16 x i1> zeroinitializer ; 2 uses
  %i.wp = select <16 x i1> %broadcast.splat1167, <16 x i1> %broadcast.splat1163, <16 x i1> zeroinitializer ; 2 uses
  %i.wq = select <16 x i1> %broadcast.splat1167, <16 x i1> %broadcast.splat1161, <16 x i1> zeroinitializer ; 2 uses
  %i.wr = select <16 x i1> %broadcast.splat1167, <16 x i1> %broadcast.splat, <16 x i1> zeroinitializer ; 4 uses
  %broadcast.splatinsert1168 = insertelement <16 x float> poison, float %.0327.us, i64 0
  %broadcast.splat1169 = shufflevector <16 x float> %broadcast.splatinsert1168, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1170 = insertelement <16 x float> poison, float %.0326.us, i64 0
  %broadcast.splat1171 = shufflevector <16 x float> %broadcast.splatinsert1170, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1172 = insertelement <16 x float> poison, float %.0325.us, i64 0
  %broadcast.splat1173 = shufflevector <16 x float> %broadcast.splatinsert1172, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1174 = insertelement <16 x float> poison, float %.0324.us, i64 0
  %broadcast.splat1175 = shufflevector <16 x float> %broadcast.splatinsert1174, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1176 = insertelement <16 x float> poison, float %.1329.us, i64 0
  %broadcast.splat1177 = shufflevector <16 x float> %broadcast.splatinsert1176, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1197 = insertelement <8 x i1> poison, i1 %.0320.us, i64 0
  %broadcast.splat1198 = shufflevector <8 x i1> %broadcast.splatinsert1197, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1199 = insertelement <8 x i1> poison, i1 %.0321.us, i64 0
  %broadcast.splat1200 = shufflevector <8 x i1> %broadcast.splatinsert1199, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1201 = insertelement <8 x i1> poison, i1 %.0322.us, i64 0
  %broadcast.splat1202 = shufflevector <8 x i1> %broadcast.splatinsert1201, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1203 = insertelement <8 x i1> poison, i1 %.0323.us, i64 0
  %broadcast.splat1204 = shufflevector <8 x i1> %broadcast.splatinsert1203, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1205 = insertelement <8 x i1> poison, i1 %i.jb, i64 0
  %broadcast.splat1206 = shufflevector <8 x i1> %broadcast.splatinsert1205, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ws = select <8 x i1> %broadcast.splat1206, <8 x i1> %broadcast.splat1204, <8 x i1> zeroinitializer
  %i.wt = select <8 x i1> %broadcast.splat1206, <8 x i1> %broadcast.splat1202, <8 x i1> zeroinitializer
  %i.wu = select <8 x i1> %broadcast.splat1206, <8 x i1> %broadcast.splat1200, <8 x i1> zeroinitializer
  %i.wv = select <8 x i1> %broadcast.splat1206, <8 x i1> %broadcast.splat1198, <8 x i1> zeroinitializer ; 2 uses
  %broadcast.splatinsert1207 = insertelement <8 x float> poison, float %.0327.us, i64 0
  %broadcast.splat1208 = shufflevector <8 x float> %broadcast.splatinsert1207, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1209 = insertelement <8 x float> poison, float %.0326.us, i64 0
  %broadcast.splat1210 = shufflevector <8 x float> %broadcast.splatinsert1209, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1211 = insertelement <8 x float> poison, float %.0325.us, i64 0
  %broadcast.splat1212 = shufflevector <8 x float> %broadcast.splatinsert1211, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1213 = insertelement <8 x float> poison, float %.0324.us, i64 0
  %broadcast.splat1214 = shufflevector <8 x float> %broadcast.splatinsert1213, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1215 = insertelement <8 x float> poison, float %.1329.us, i64 0
  %broadcast.splat1216 = shufflevector <8 x float> %broadcast.splatinsert1215, <8 x float> poison, <8 x i32> zeroinitializer
  br label %_ZN4ncnn3MatD2Ev.exit.us

._crit_edge972.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 1 ; 2 uses
  %exitcond1089.not = icmp eq i64 %indvars.iv.next1086, %wide.trip.count1088
  br i1 %exitcond1089.not, label %._crit_edge984, label %.preheader922.us, !llvm.loop !198

._crit_edge984:                                   ; preds = %._crit_edge972.us, %.preheader922.lr.ph, %.thread903
  %.2888.lcssa = phi <8 x float> [ %.1887, %.thread903 ], [ %.1887, %.preheader922.lr.ph ], [ %.4890.lcssa.us, %._crit_edge972.us ] ; 10 uses
  %.2881.lcssa = phi <4 x float> [ %.1880, %.thread903 ], [ %.1880, %.preheader922.lr.ph ], [ %.4883.lcssa.us, %._crit_edge972.us ] ; 10 uses
  %.2338.lcssa = phi <16 x float> [ %.1337, %.thread903 ], [ %.1337, %.preheader922.lr.ph ], [ %.4340.lcssa.us, %._crit_edge972.us ] ; 10 uses
  %.1335.lcssa = phi float [ %.0334, %.thread903 ], [ %.0334, %.preheader922.lr.ph ], [ %.3.lcssa.us, %._crit_edge972.us ] ; 13 uses
  %i.ww = load i32, ptr %12, align 4, !tbaa !58   ; 2 uses
  %i.wx = icmp eq i32 %i.ww, 16
  br i1 %i.wx, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %._crit_edge984
  %i.wy = load i32, ptr %27, align 4, !tbaa !58
  switch i32 %i.wy, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ay
    i32 2, label %.noexc429
    i32 3, label %bb.az
    i32 4, label %.noexc430
    i32 5, label %.noexc431
    i32 6, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.wz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.2338.lcssa, <16 x float> zeroinitializer, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc429:                                        ; preds = %bb.ax
  %i.xa = load ptr, ptr %28, align 8, !tbaa !19
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !38
  %i.xc = fcmp fast olt <16 x float> %.2338.lcssa, zeroinitializer
  %i.xd = insertelement <16 x float> poison, float %i.xb, i64 0
  %i.xe = shufflevector <16 x float> %i.xd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xf = select fast <16 x i1> %i.xc, <16 x float> %i.xe, <16 x float> splat (float 1.000000e+00)
  %i.xg = fmul fast <16 x float> %i.xf, %.2338.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

bb.az:                                            ; preds = %bb.ax
  %i.xh = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !38
  %i.xj = insertelement <16 x float> poison, float %i.xi, i64 0
  %i.xk = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !38
  %i.xn = insertelement <16 x float> poison, float %i.xm, i64 0
  %i.xo = shufflevector <16 x float> %i.xn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.2338.lcssa, <16 x float> nofpclass(nan inf) %i.xk, i32 4)
  %i.xq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.xp, <16 x float> nofpclass(nan inf) %i.xo, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc430:                                        ; preds = %bb.ax
  %i.xr = fneg fast <16 x float> %.2338.lcssa
  %i.xs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.xr, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.xt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.xs, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.xu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xt, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.xv = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.xu, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.xw = fcmp fast ogt <16 x float> %i.xv, %i.xu
  %i.xx = fadd fast <16 x float> %i.xv, splat (float -1.000000e+00)
  %i.xy = select fast <16 x i1> %i.xw, <16 x float> %i.xx, <16 x float> %i.xv ; 2 uses
  %i.xz = fneg fast <16 x float> %i.xy            ; 2 uses
  %i.ya = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.xz, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.xt)
  %i.yb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.xz, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ya) ; 8 uses
  %i.yc = fmul fast <16 x float> %i.yb, %i.yb
  %i.yd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.yb, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ye = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.yd, <16 x float> nofpclass(nan inf) %i.yb, <16 x float> splat (float f0x3C088908))
  %i.yf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ye, <16 x float> nofpclass(nan inf) %i.yb, <16 x float> splat (float f0x3D2AA9C1))
  %i.yg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.yf, <16 x float> nofpclass(nan inf) %i.yb, <16 x float> splat (float f0x3E2AAAAA))
  %i.yh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.yg, <16 x float> nofpclass(nan inf) %i.yb, <16 x float> splat (float 5.000000e-01))
  %i.yi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.yh, <16 x float> nofpclass(nan inf) %i.yc, <16 x float> nofpclass(nan inf) %i.yb)
  %i.yj = fadd fast <16 x float> %i.yi, splat (float 1.000000e+00)
  %i.yk = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xy, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yl = shl <16 x i32> %i.yk, splat (i32 23)
  %i.ym = add <16 x i32> %i.yl, splat (i32 1065353216)
  %i.yn = bitcast <16 x i32> %i.ym to <16 x float>
  %i.yo = fmul fast <16 x float> %i.yj, %i.yn
  %i.yp = fadd fast <16 x float> %i.yo, splat (float 1.000000e+00)
  %i.yq = fdiv fast <16 x float> splat (float 1.000000e+00), %i.yp
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc431:                                        ; preds = %bb.ax
  %i.yr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %.2338.lcssa, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ys = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.yr, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.yt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ys, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.yu = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.yt, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.yv = fcmp fast ogt <16 x float> %i.yu, %i.yt
  %i.yw = fadd fast <16 x float> %i.yu, splat (float -1.000000e+00)
  %i.yx = select fast <16 x i1> %i.yv, <16 x float> %i.yw, <16 x float> %i.yu ; 2 uses
  %i.yy = fneg fast <16 x float> %i.yx            ; 2 uses
  %i.yz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.yy, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ys)
  %i.za = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.yy, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.yz) ; 8 uses
  %i.zb = fmul fast <16 x float> %i.za, %i.za
  %i.zc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.za, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.zd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zc, <16 x float> nofpclass(nan inf) %i.za, <16 x float> splat (float f0x3C088908))
  %i.ze = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zd, <16 x float> nofpclass(nan inf) %i.za, <16 x float> splat (float f0x3D2AA9C1))
  %i.zf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ze, <16 x float> nofpclass(nan inf) %i.za, <16 x float> splat (float f0x3E2AAAAA))
  %i.zg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zf, <16 x float> nofpclass(nan inf) %i.za, <16 x float> splat (float 5.000000e-01))
  %i.zh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zg, <16 x float> nofpclass(nan inf) %i.zb, <16 x float> nofpclass(nan inf) %i.za)
  %i.zi = fadd fast <16 x float> %i.zh, splat (float 1.000000e+00)
  %i.zj = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zk = shl <16 x i32> %i.zj, splat (i32 23)
  %i.zl = add <16 x i32> %i.zk, splat (i32 1065353216)
  %i.zm = bitcast <16 x i32> %i.zl to <16 x float>
  %i.zn = fmul fast <16 x float> %i.zi, %i.zm
  %i.zo = fadd fast <16 x float> %i.zn, splat (float 1.000000e+00) ; 2 uses
  %i.zp = fcmp fast ole <16 x float> %i.zo, zeroinitializer
  %i.zq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.zo, <16 x float> splat (float f0x00800000), i32 4)
  %i.zr = bitcast <16 x float> %i.zq to <16 x i32> ; 2 uses
  %i.zs = lshr <16 x i32> %i.zr, splat (i32 23)
  %i.zt = and <16 x i32> %i.zr, splat (i32 -2139095041)
  %i.zu = or disjoint <16 x i32> %i.zt, splat (i32 1056964608)
  %i.zv = bitcast <16 x i32> %i.zu to <16 x float> ; 3 uses
  %i.zw = add nsw <16 x i32> %i.zs, splat (i32 -127)
  %i.zx = sitofp fast <16 x i32> %i.zw to <16 x float> ; 2 uses
  %i.zy = fadd fast <16 x float> %i.zx, splat (float 1.000000e+00)
  %i.zz = fcmp fast olt <16 x float> %i.zv, splat (float f0x3F3504F3) ; 2 uses
  %i.aaa = fadd fast <16 x float> %i.zv, splat (float -1.000000e+00)
  %i.aab = select fast <16 x i1> %i.zz, <16 x float> %i.zx, <16 x float> %i.zy ; 2 uses
  %i.aac = select fast <16 x i1> %i.zz, <16 x float> %i.zv, <16 x float> zeroinitializer
  %i.aad = fadd fast <16 x float> %i.aaa, %i.aac  ; 12 uses
  %i.aae = fmul fast <16 x float> %i.aad, %i.aad  ; 2 uses
  %i.aaf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.aag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aaf, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0x3DEF251A))
  %i.aah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aag, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0xBDFE5D4F))
  %i.aai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aah, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0x3E11E9BF))
  %i.aaj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aai, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0xBE2AAE50))
  %i.aak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aaj, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0x3E4CCEAC))
  %i.aal = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aak, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0xBE7FFFFC))
  %i.aam = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aal, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0x3EAAAAAA))
  %i.aan = fmul fast <16 x float> %i.aae, %i.aad
  %i.aao = fmul fast <16 x float> %i.aan, %i.aam
  %i.aap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aab, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.aao)
  %i.aaq = fneg fast <16 x float> %i.aae
  %i.aar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aaq, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.aap)
  %i.aas = fadd fast <16 x float> %i.aar, %i.aad
  %i.aat = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aab, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.aas)
  %.neg = fmul fast <16 x float> %i.aat, splat (float -2.000000e+00)
  %i.aau = select fast <16 x i1> %i.zp, <16 x float> splat (float +nan(0x3FFFFF)), <16 x float> %.neg
  %i.aav = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.aau, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.aaw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aav, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.aax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aaw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aay = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aax, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aaz = fcmp fast ogt <16 x float> %i.aay, %i.aax
  %i.aba = fadd fast <16 x float> %i.aay, splat (float -1.000000e+00)
  %i.abb = select fast <16 x i1> %i.aaz, <16 x float> %i.aba, <16 x float> %i.aay ; 2 uses
  %i.abc = fneg fast <16 x float> %i.abb          ; 2 uses
  %i.abd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.abc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.aaw)
  %i.abe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.abc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.abd) ; 8 uses
  %i.abf = fmul fast <16 x float> %i.abe, %i.abe
  %i.abg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abe, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.abh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abg, <16 x float> nofpclass(nan inf) %i.abe, <16 x float> splat (float f0x3C088908))
  %i.abi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abh, <16 x float> nofpclass(nan inf) %i.abe, <16 x float> splat (float f0x3D2AA9C1))
  %i.abj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abi, <16 x float> nofpclass(nan inf) %i.abe, <16 x float> splat (float f0x3E2AAAAA))
  %i.abk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abj, <16 x float> nofpclass(nan inf) %i.abe, <16 x float> splat (float 5.000000e-01))
  %i.abl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abk, <16 x float> nofpclass(nan inf) %i.abf, <16 x float> nofpclass(nan inf) %i.abe)
  %i.abm = fadd fast <16 x float> %i.abl, splat (float 1.000000e+00)
  %i.abn = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.abb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.abo = shl <16 x i32> %i.abn, splat (i32 23)
  %i.abp = add <16 x i32> %i.abo, splat (i32 1065353216)
  %i.abq = bitcast <16 x i32> %i.abp to <16 x float>
  %i.abr = fmul fast <16 x float> %i.abm, %i.abq
  %i.abs = fadd fast <16 x float> %i.abr, splat (float 1.000000e+00)
  %i.abt = fdiv fast <16 x float> splat (float 1.000000e+00), %i.abs
  %i.abu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abt, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.abv = fmul fast <16 x float> %i.abu, %.2338.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

bb.ba:                                            ; preds = %bb.ax
  %i.abw = load ptr, ptr %28, align 8, !tbaa !19  ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !38
  %i.aby = insertelement <16 x float> poison, float %i.abx, i64 0
  %i.abz = shufflevector <16 x float> %i.aby, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !38
  %i.acc = insertelement <16 x float> poison, float %i.acb, i64 0
  %i.acd = shufflevector <16 x float> %i.acc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ace = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.2338.lcssa, <16 x float> nofpclass(nan inf) %i.abz, <16 x float> nofpclass(nan inf) %i.acd)
  %i.acf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ace, <16 x float> zeroinitializer, i32 4)
  %i.acg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.acf, <16 x float> splat (float 1.000000e+00), i32 4)
  %i.ach = fmul fast <16 x float> %i.acg, %.2338.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit:  ; preds = %bb.ba, %.noexc431, %.noexc430, %bb.az, %.noexc429, %bb.ay, %bb.ax
  %.0.i = phi nsz <16 x float> [ %i.ach, %bb.ba ], [ %i.wz, %bb.ay ], [ %i.xg, %.noexc429 ], [ %i.xq, %bb.az ], [ %i.yq, %.noexc430 ], [ %i.abv, %.noexc431 ], [ %.2338.lcssa, %bb.ax ]
  %i.aci = load i32, ptr %3, align 4, !tbaa !58
  %i.acj = mul nsw i32 %i.aci, %i.ae
  %i.ack = add nsw i32 %i.acj, %i.aj
  %i.acl = shl nsw i32 %i.ack, 4
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.acm
  store <16 x float> %.0.i, ptr %i.acn, align 64, !tbaa !63
  %.pr = load i32, ptr %12, align 4, !tbaa !58
  br label %bb.bb

bb.bb:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %._crit_edge984
  %i.aco = phi i32 [ %.pr, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ], [ %i.ww, %._crit_edge984 ] ; 2 uses
  %i.acp = icmp eq i32 %i.aco, 8
end_hunk_0
