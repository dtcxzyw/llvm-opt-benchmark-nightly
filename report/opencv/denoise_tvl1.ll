Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/denoise_tvl1?download=true
inline.NumInlined: 187
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv12denoise_TVL1ERKSt6vectorINS_3MatESaIS1_EERS1_di:bb.a

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.q
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %.loopexit301

_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #17
          to label %.noexc214 unwind label %bb.x  ; 5 uses

.noexc214:                                        ; preds = %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.bg, ptr %20, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !21
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc214
  %.08.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.bg, %.noexc214 ] ; 4 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc214 ]
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #14
  %i.bk = load i32, ptr %.08.i.i.i.i.i, align 8, !tbaa !93
  %i.bl = and i32 %i.bk, -4096
  %i.bm = or disjoint i32 %i.bl, 6
  store i32 %i.bm, ptr %.08.i.i.i.i.i, align 8, !tbaa !93
  %i.bn = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit301, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

.loopexit301:                                     ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.bp = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bg, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bq = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bo, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bs = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 208               ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph330, label %.lr.ph359

.lr.ph330:                                        ; preds = %.loopexit301
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 432
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 224
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 16
  %wide.trip.count375 = and i64 %i.bv, 2147483647
  br label %bb.s

.lr.ph359:                                        ; preds = %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit, %.loopexit301
  %i.cb = icmp sgt i32 %i.u, 0                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.ce = add i32 %i.u, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 2 uses
  %i.ch = add i32 %i.w, -1                        ; 3 uses
  %i.ci = icmp sgt i32 %i.w, 1                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %26, i64 432
  %i.da = getelementptr inbounds nuw i8, ptr %26, i64 224
  %i.db = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.dl = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %32, i64 16
  %wide.trip.count385 = zext i32 %i.u to i64      ; 2 uses
  %wide.trip.count380 = zext i32 %i.ch to i64     ; 5 uses
  %wide.trip.count413 = zext nneg i32 %i.u to i64
  %wide.trip.count398 = zext i32 %i.w to i64      ; 4 uses
  %wide.trip.count408 = zext nneg i32 %i.w to i64
  %i.dq = shl nuw nsw i64 %wide.trip.count398, 4
  %i.dr = add nsw i64 %wide.trip.count385, -1     ; 4 uses
  %i.ds = shl nuw nsw i64 %wide.trip.count398, 3
  %i.dt = shl nuw nsw i64 %wide.trip.count380, 3  ; 2 uses
  %i.du = shl nuw nsw i64 %wide.trip.count380, 4
  %min.iters.check523 = icmp eq i32 %i.w, 2
  %n.vec535 = and i64 %wide.trip.count380, 4294967294 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec535, %wide.trip.count380
  %min.iters.check = icmp ult i32 %i.w, 6
  %i.dv = and i64 %wide.trip.count398, 2147483646 ; 2 uses
  %i.dw = add nsw i64 %i.dv, -1
  %i.dx = add nsw i64 %i.dv, -4
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph330, %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit
  %indvars.iv372 = phi i64 [ 0, %.lr.ph330 ], [ %indvars.iv.next373, %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, i32 noundef %i.u, i32 noundef %i.w, i32 noundef 6)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw [208 x i8], ptr %i.bp, i64 %indvars.iv372
  %i.dz = load ptr, ptr %21, align 8, !tbaa !85   ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !88
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.dy, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit unwind label %bb.z, !inline_history !27

_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit:             ; preds = %bb.t
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.by) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bz) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ca) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count375
  br i1 %exitcond376.not, label %.lr.ph359, label %bb.s, !llvm.loop !28

bb.u:                                             ; preds = %._crit_edge
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.u
  %.pn184 = phi { ptr, i32 } [ %i.ar, %.body ], [ %i.ed, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %bb.ch

bb.w:                                             ; preds = %bb.p
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.cg

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i, %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.y:                                             ; preds = %bb.s
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn201 = phi { ptr, i32 } [ %i.eh, %bb.z ], [ %i.eg, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  br label %.body240

bb.ab:                                            ; preds = %.lr.ph359, %._crit_edge357
  %i.ei = phi ptr [ %i.bp, %.lr.ph359 ], [ %i.hl, %._crit_edge357 ] ; 3 uses
  %i.ej = phi ptr [ %.0.lcssa.i.i.i.i.i, %.lr.ph359 ], [ %i.hm, %._crit_edge357 ] ; 2 uses
  %.1152358 = phi i32 [ 0, %.lr.ph359 ], [ %i.ue, %._crit_edge357 ] ; 2 uses
  %i.ek = icmp eq i32 %.1152358, 0
  %i.el = select i1 %i.ek, double 7.250000e+00, double 6.250000e+00 ; 3 uses
  br i1 %i.cb, label %.lr.ph337, label %.preheader296

.lr.ph337:                                        ; preds = %bb.ab
  %i.em = load ptr, ptr %i.cc, align 8, !tbaa !94 ; 5 uses
  %i.en = load i64, ptr %i.cd, align 8, !tbaa !22 ; 4 uses
  %i.eo = load ptr, ptr %i.cf, align 8, !tbaa !94 ; 4 uses
  %i.ep = load i64, ptr %i.cg, align 8, !tbaa !22 ; 3 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 %i.dt
  %scevgep517 = getelementptr i8, ptr %i.em, i64 %i.dt
  %scevgep519 = getelementptr i8, ptr %scevgep517, i64 8
  %34 = mul i64 %i.dr, %i.en
  %scevgep519.a = getelementptr i8, ptr %scevgep519, i64 %34
  %scevgep520 = getelementptr i8, ptr %i.eo, i64 %i.du
  %i.er = mul i64 %i.dr, %i.ep
  %scevgep521 = getelementptr i8, ptr %scevgep520, i64 %i.er ; 2 uses
  %bound0529 = icmp ult ptr %i.eo, %scevgep519.a
  %bound1530 = icmp ult ptr %i.em, %scevgep521
  %found.conflict531 = and i1 %bound0529, %bound1530
  %35 = or i64 %i.en, %i.ep
  %36 = icmp slt i64 %35, 0
  %invariant.op = or i1 %found.conflict531, %36
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.el, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = insertelement <2 x double> poison, double %i.el, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ac

.preheader296:                                    ; preds = %._crit_edge334, %bb.ab
  %i.eu = ptrtoint ptr %i.ej to i64
  %i.ev = ptrtoint ptr %i.ei to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = sdiv exact i64 %i.ew, 208
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph339, label %.preheader295

bb.ac:                                            ; preds = %.lr.ph337, %._crit_edge334
  %indvars.iv382 = phi i64 [ 0, %.lr.ph337 ], [ %indvars.iv.next383, %._crit_edge334 ] ; 3 uses
  %i.fa = mul i64 %i.en, %indvars.iv382
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fa ; 5 uses
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 3 uses
  %i.fc = trunc i64 %indvars.iv.next383 to i32
  %.sroa.speculated288 = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.fc)
  %i.fd = sext i32 %.sroa.speculated288 to i64
  %i.fe = mul i64 %i.en, %i.fd                    ; 2 uses
  %i.ff = getelementptr i8, ptr %i.em, i64 %i.fe  ; 4 uses
  %i.fg = mul i64 %i.ep, %indvars.iv382
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fg ; 3 uses
  br i1 %i.ci, label %.lr.ph333.preheader, label %._crit_edge334

.lr.ph333.preheader:                              ; preds = %bb.ac
  br i1 %min.iters.check523, label %.lr.ph333.preheader550, label %vector.memcheck524

vector.memcheck524:                               ; preds = %.lr.ph333.preheader
  %i.fi = getelementptr i8, ptr %i.eq, i64 %i.fe
  %bound0525 = icmp ult ptr %i.eo, %i.fi
  %bound1526 = icmp ult ptr %i.ff, %scevgep521
  %found.conflict527 = and i1 %bound0525, %bound1526
  %conflict.rdx533.reass = or i1 %invariant.op, %found.conflict527
  br i1 %conflict.rdx533.reass, label %.lr.ph333.preheader550, label %vector.body536

vector.body536:                                   ; preds = %vector.memcheck524, %vector.body536
  %index537 = phi i64 [ %index.next544, %vector.body536 ], [ 0, %vector.memcheck524 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index537
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %wide.load538 = load <2 x double>, ptr %i.fk, align 8, !tbaa !71, !alias.scope !95
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index537
  %wide.load539 = load <2 x double>, ptr %i.fl, align 8, !tbaa !71, !alias.scope !95 ; 2 uses
  %i.fm = fsub <2 x double> %wide.load538, %wide.load539
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %index537 ; 2 uses
  %wide.vec540 = load <4 x double>, ptr %i.fn, align 8, !tbaa !71, !alias.scope !96, !noalias !97 ; 2 uses
  %strided.vec541 = shufflevector <4 x double> %wide.vec540, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec542 = shufflevector <4 x double> %wide.vec540, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %broadcast.splat, <2 x double> %strided.vec541) ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %index537
  %wide.load543 = load <2 x double>, ptr %i.fp, align 8, !tbaa !71, !alias.scope !98
  %i.fq = fsub <2 x double> %wide.load543, %wide.load539
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %broadcast.splat, <2 x double> %strided.vec542) ; 3 uses
  %i.fs = fmul <2 x double> %i.fr, %i.fr
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fo, <2 x double> %i.fs)
  %i.fu = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ft) ; 2 uses
  %i.fv = fcmp olt <2 x double> %i.fu, splat (double 1.000000e+00)
  %i.fw = select <2 x i1> %i.fv, <2 x double> splat (double 1.000000e+00), <2 x double> %i.fu
  %i.fx = fdiv <2 x double> splat (double 1.000000e+00), %i.fw ; 2 uses
  %i.fy = fmul <2 x double> %i.fo, %i.fx
  %i.fz = fmul <2 x double> %i.fr, %i.fx
  %interleaved.vec = shufflevector <2 x double> %i.fy, <2 x double> %i.fz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.fn, align 8, !tbaa !71, !alias.scope !96, !noalias !97
  %index.next544 = add nuw i64 %index537, 2       ; 2 uses
  %i.ga = icmp eq i64 %index.next544, %n.vec535
  br i1 %i.ga, label %middle.block545, label %vector.body536, !llvm.loop !33

middle.block545:                                  ; preds = %vector.body536
  br i1 %cmp.n, label %._crit_edge334, label %.lr.ph333.preheader550

.lr.ph333.preheader550:                           ; preds = %vector.memcheck524, %.lr.ph333.preheader, %middle.block545
  %indvars.iv377.ph = phi i64 [ 0, %vector.memcheck524 ], [ 0, %.lr.ph333.preheader ], [ %n.vec535, %middle.block545 ]
  br label %.lr.ph333

.lr.ph333:                                        ; preds = %.lr.ph333.preheader550, %.lr.ph333
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %.lr.ph333 ], [ %indvars.iv377.ph, %.lr.ph333.preheader550 ] ; 4 uses
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next378
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !71
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv377
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !71
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv377 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv377
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !71
  %i.gi = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gh, i64 1
  %i.gk = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fsub <2 x double> %i.gj, %i.gl
  %i.gn = load <2 x double>, ptr %i.gf, align 8, !tbaa !71
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.et, <2 x double> %i.gn) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.go, %i.go
  %i.gp = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.gq = extractelement <2 x double> %i.go, i64 0 ; 2 uses
  %i.gr = call double @llvm.fmuladd.f64(double %i.gq, double %i.gq, double %i.gp)
  %sqrt = call double @llvm.sqrt.f64(double %i.gr) ; 2 uses
  %i.gs = fcmp olt double %sqrt, 1.000000e+00
  %.sroa.speculated283 = select i1 %i.gs, double 1.000000e+00, double %sqrt
  %i.gt = fdiv double 1.000000e+00, %.sroa.speculated283
  %i.gu = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %i.go, %i.gv
  store <2 x double> %i.gw, ptr %i.gf, align 8, !tbaa !71
  %exitcond381.not = icmp eq i64 %indvars.iv.next378, %wide.trip.count380
  br i1 %exitcond381.not, label %._crit_edge334, label %.lr.ph333, !llvm.loop !34

._crit_edge334:                                   ; preds = %.lr.ph333, %middle.block545, %bb.ac
  %.0149.lcssa.shrunk = phi i32 [ 0, %bb.ac ], [ %i.ch, %middle.block545 ], [ %i.ch, %.lr.ph333 ]
  %.0149.lcssa = zext i32 %.0149.lcssa.shrunk to i64 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.0149.lcssa
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !71
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.0149.lcssa
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !71
  %i.hb = fsub double %i.gy, %i.ha
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %.0149.lcssa ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !102
  %i.hf = call double @llvm.fmuladd.f64(double %i.hb, double %i.el, double %i.he) ; 2 uses
  %i.hg = call noundef double @llvm.fabs.f64(double %i.hf) ; 2 uses
  %i.hh = fcmp olt double %i.hg, 1.000000e+00
  %.sroa.speculated281 = select i1 %i.hh, double 1.000000e+00, double %i.hg
  %i.hi = fdiv double 1.000000e+00, %.sroa.speculated281
  store double 0.000000e+00, ptr %i.hc, align 8, !tbaa !103
  %i.hj = fmul double %i.hf, %i.hi
  store double %i.hj, ptr %i.hd, align 8, !tbaa !102
  %exitcond386.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count385
  br i1 %exitcond386.not, label %.preheader296, label %bb.ac, !llvm.loop !35

.preheader295.loopexit:                           ; preds = %bb.bu
  %i.hk = trunc i64 %i.oc to i32
  br label %.preheader295

.preheader295:                                    ; preds = %.preheader295.loopexit, %.preheader296
  %i.hl = phi ptr [ %i.ei, %.preheader296 ], [ %i.ja, %.preheader295.loopexit ] ; 10 uses
  %i.hm = phi ptr [ %i.ej, %.preheader296 ], [ %i.ny, %.preheader295.loopexit ] ; 3 uses
  %.lcssa = phi i32 [ %i.ey, %.preheader296 ], [ %i.hk, %.preheader295.loopexit ] ; 4 uses
  br i1 %i.cb, label %.lr.ph356, label %._crit_edge357

.lr.ph356:                                        ; preds = %.preheader295
  %i.hn = load ptr, ptr %i.cc, align 8, !tbaa !94 ; 3 uses
  %i.ho = load i64, ptr %i.cd, align 8, !tbaa !22 ; 3 uses
  %i.hp = load ptr, ptr %i.cf, align 8, !tbaa !94 ; 5 uses
  %i.hq = load i64, ptr %i.cg, align 8, !tbaa !22 ; 4 uses
  %i.hr = icmp sgt i32 %.lcssa, 0                 ; 2 uses
  %wide.trip.count393 = zext i32 %.lcssa to i64   ; 5 uses
  %scevgep = getelementptr i8, ptr %i.hp, i64 %i.dq ; 2 uses
  %scevgep492 = getelementptr i8, ptr %i.hp, i64 24
  %37 = mul i64 %i.dr, %i.hq
  %scevgep492.a = getelementptr i8, ptr %scevgep, i64 %37
  %scevgep493 = getelementptr i8, ptr %i.hn, i64 %i.ds
  %i.hs = mul i64 %i.dr, %i.ho
  %scevgep494 = getelementptr i8, ptr %scevgep493, i64 %i.hs ; 2 uses
  %scevgep495 = getelementptr i8, ptr %i.hn, i64 8 ; 2 uses
  %i.ht = add nsw i64 %wide.trip.count393, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count393, 1
  %i.hu = icmp eq i64 %i.ht, 0
  %unroll_iter = and i64 %wide.trip.count393, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod571 = trunc i32 %.lcssa to i1
  %bound0496 = icmp ult ptr %scevgep495, %scevgep492.a
  %bound1497 = icmp ult ptr %i.hp, %scevgep494
  %found.conflict498 = and i1 %bound0496, %bound1497
  %38 = or i64 %i.hq, %i.ho
  %39 = icmp slt i64 %38, 0
  %invariant.op594 = or i1 %found.conflict498, %39
  %xtraiter572 = and i64 %wide.trip.count393, 1
  %i.hv = icmp eq i64 %i.ht, 0
  %unroll_iter576 = and i64 %wide.trip.count393, 2147483646
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  %lcmp.mod575 = trunc i32 %.lcssa to i1
  br label %bb.ca

.lr.ph339:                                        ; preds = %.preheader296, %bb.bu
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %bb.bu ], [ 0, %.preheader296 ] ; 4 uses
  %i.hw = phi ptr [ %i.ja, %bb.bu ], [ %i.ei, %.preheader296 ]
  %i.hx = getelementptr inbounds nuw [208 x i8], ptr %i.hw, i64 %indvars.iv387 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.hy = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.hx)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !106

.noexc218:                                        ; preds = %.lr.ph339
  br i1 %i.hy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 0, i64 40, i1 false), !alias.scope !106
  br label %_ZN2cv4Mat_IdE5beginEv.exit

bb.ae:                                            ; preds = %.noexc218
  store ptr %i.hx, ptr %22, align 8, !tbaa !108
  %i.hz = load i32, ptr %i.hx, align 8, !tbaa !93 ; 3 uses
  %i.ia = lshr i32 %i.hz, 5
  %i.ib = and i32 %i.ia, 127
  %i.ic = add nuw nsw i32 %i.ib, 1
  %i.id = shl i32 %i.hz, 2
  %i.ie = and i32 %i.id, 124
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = lshr i64 1275511473185297, %i.if
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 15
  %i.ij = mul nuw nsw i32 %i.ii, %i.ic
  %i.ik = zext nneg i32 %i.ij to i64
  store i64 %i.ik, ptr %i.cj, align 8, !tbaa !109
  %i.il = and i32 %i.hz, 16384
  %.not.i = icmp eq i32 %i.il, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.im = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.hx)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %bb.af
  br i1 %i.im, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.noexc238
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc239:                                        ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv16MatConstIteratorC2EPKNS_3MatE, ptr noundef nonnull @.str.6, i32 noundef 2491) #15
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc239
  unreachable

bb.ai:                                            ; preds = %.noexc239
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !15
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %.body240

bb.aj:                                            ; preds = %.noexc238
  %i.it = load ptr, ptr %22, align 8, !tbaa !108  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !94 ; 2 uses
  store ptr %i.iv, ptr %i.cl, align 8, !tbaa !110
  %i.iw = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.it)
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %bb.aj
  %i.ix = load i64, ptr %i.cj, align 8, !tbaa !109
  %i.iy = mul i64 %i.ix, %i.iw
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iy
  store ptr %i.iz, ptr %i.cm, align 8, !tbaa !111
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc242, %bb.ae
  invoke void @_ZN2cv16MatConstIterator4seekEPKib(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef null, i1 noundef zeroext false)
          to label %_ZN2cv4Mat_IdE5beginEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv4Mat_IdE5beginEv.exit:                      ; preds = %bb.ad, %bb.ak
  %i.ja = load ptr, ptr %20, align 8, !tbaa !19   ; 4 uses
  %i.jb = getelementptr inbounds nuw [208 x i8], ptr %i.ja, i64 %indvars.iv387 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.jc = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.jb)
          to label %.noexc221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !114

.noexc221:                                        ; preds = %_ZN2cv4Mat_IdE5beginEv.exit
  br i1 %i.jc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.noexc221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %23, i8 0, i64 40, i1 false), !alias.scope !114
  br label %_ZN2cv4Mat_IdE3endEv.exit

bb.am:                                            ; preds = %.noexc221
  store ptr %i.jb, ptr %23, align 8, !tbaa !108
  %i.jd = load i32, ptr %i.jb, align 8, !tbaa !93 ; 3 uses
  %i.je = lshr i32 %i.jd, 5
  %i.jf = and i32 %i.je, 127
  %i.jg = add nuw nsw i32 %i.jf, 1
  %i.jh = shl i32 %i.jd, 2
  %i.ji = and i32 %i.jh, 124
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = lshr i64 1275511473185297, %i.jj
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = and i32 %i.jl, 15
  %i.jn = mul nuw nsw i32 %i.jm, %i.jg
  %i.jo = zext nneg i32 %i.jn to i64
  store i64 %i.jo, ptr %i.cn, align 8, !tbaa !109
  %i.jp = and i32 %i.jd, 16384
  %.not.i244 = icmp eq i32 %i.jp, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  br i1 %.not.i244, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jq = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.jb)
          to label %.noexc248 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc248:                                        ; preds = %bb.an
  br i1 %i.jq, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %.noexc248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc249 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc249:                                        ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv16MatConstIteratorC2EPKNS_3MatE, ptr noundef nonnull @.str.6, i32 noundef 2491) #15
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc249
  unreachable

bb.aq:                                            ; preds = %.noexc249
  %i.jr = landingpad { ptr, i32 }
          cleanup
  %i.js = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245: ; preds = %bb.aq
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !15
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i246: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.body240

bb.ar:                                            ; preds = %.noexc248
  %i.jx = load ptr, ptr %23, align 8, !tbaa !108  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !94 ; 2 uses
  store ptr %i.jz, ptr %i.cp, align 8, !tbaa !110
  %i.ka = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.jx)
          to label %.noexc252 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc252:                                        ; preds = %bb.ar
  %i.kb = load i64, ptr %i.cn, align 8, !tbaa !109
  %i.kc = mul i64 %i.kb, %i.ka
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kc
  store ptr %i.kd, ptr %i.cq, align 8, !tbaa !111
  br label %bb.as

bb.as:                                            ; preds = %.noexc252, %bb.am
  invoke void @_ZN2cv16MatConstIterator4seekEPKib(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef null, i1 noundef zeroext false)
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc222:                                        ; preds = %bb.as
  %i.ke = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.jb)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc223:                                        ; preds = %.noexc222
  %i.kf = load ptr, ptr %23, align 8, !tbaa !108, !alias.scope !114
end_hunk_0
begin_hunk_1_@_ZN2cv12denoise_TVL1ERKSt6vectorINS_3MatESaIS1_EERS1_di:bb.a

bb.bs:                                            ; preds = %bb.br
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cz) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.da) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.db) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  store i32 0, ptr %i.dc, align 8, !tbaa !121
  store i32 0, ptr %i.dd, align 4, !tbaa !122
  store i32 -2130640890, ptr %27, align 8, !tbaa !91
  store ptr %i.jb, ptr %i.de, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  store i32 -1056833530, ptr %28, align 8, !tbaa !91
  store ptr %i.a, ptr %i.dg, align 8, !tbaa !92
  store i64 4294967297, ptr %i.df, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  store i64 0, ptr %i.di, align 8
  store i32 -2113863674, ptr %29, align 8, !tbaa !91
  store ptr %i.jb, ptr %i.dh, align 8, !tbaa !92
  invoke void @_ZN2cv3minERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  store i32 0, ptr %i.dj, align 8, !tbaa !121
  store i32 0, ptr %i.dk, align 4, !tbaa !122
  store i32 -2130640890, ptr %30, align 8, !tbaa !91
  store ptr %i.jb, ptr %i.dl, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.nw = load double, ptr %i.a, align 8, !tbaa !71
  %i.nx = fneg double %i.nw
  store double %i.nx, ptr %i.b, align 8, !tbaa !71
  store i32 -1056833530, ptr %31, align 8, !tbaa !91
  store ptr %i.b, ptr %i.dn, align 8, !tbaa !92
  store i64 4294967297, ptr %i.dm, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #14
  store i64 0, ptr %i.dp, align 8
  store i32 -2113863674, ptr %32, align 8, !tbaa !91
  store ptr %i.jb, ptr %i.do, align 8, !tbaa !92
  invoke void @_ZN2cv3maxERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.ny = load ptr, ptr %i.br, align 8, !tbaa !20 ; 2 uses
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %i.ja to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = sdiv exact i64 %i.ob, 208               ; 2 uses
  %sext = shl i64 %i.oc, 32
  %i.od = ashr exact i64 %sext, 32
  %i.oe = icmp slt i64 %indvars.iv.next388, %i.od
  br i1 %i.oe, label %.lr.ph339, label %.preheader295.loopexit, !llvm.loop !54

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bq, %bb.bo, %bb.bm, %.lr.ph339, %_ZN2cv4Mat_IdE5beginEv.exit, %.noexc222, %bb.au, %_ZN2cv4Mat_IdE3endEv.exit, %_ZNK2cv3Mat5beginIhEENS_17MatConstIterator_IT_EEv.exit, %bb.af, %bb.aj, %bb.ak, %bb.an, %bb.ar, %bb.as, %bb.ax, %bb.bb, %bb.bc, %bb.bf, %bb.bj, %bb.bk, %._crit_edge360, %bb.ag, %bb.ao, %bb.ay, %bb.bg
  %lpad.loopexit.split-lp552 = landingpad { ptr, i32 }
          cleanup
  br label %.body240

bb.bv:                                            ; preds = %.loopexit294
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.br
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %26) #14
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn190 = phi { ptr, i32 } [ %i.og, %bb.bw ], [ %i.of, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %.body240

bb.by:                                            ; preds = %bb.bs
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %.body240

bb.bz:                                            ; preds = %bb.bt
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  br label %.body240

bb.ca:                                            ; preds = %.lr.ph356, %._crit_edge354
  %indvars.iv410 = phi i64 [ 0, %.lr.ph356 ], [ %indvars.iv.next411, %._crit_edge354 ] ; 10 uses
  %i.oj = mul i64 %i.ho, %indvars.iv410
  %i.ok = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.oj ; 5 uses
  %i.ol = mul i64 %i.hq, %indvars.iv410
  %i.om = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ol ; 5 uses
  %i.on = trunc i64 %indvars.iv410 to i32
  %i.oo = call i32 @llvm.smax.i32(i32 %i.on, i32 1)
  %.sroa.speculated = add nsw i32 %i.oo, -1
  %i.op = zext i32 %.sroa.speculated to i64
  %i.oq = mul i64 %i.hq, %i.op                    ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.oq ; 5 uses
  br i1 %i.hr, label %.lr.ph345.preheader, label %._crit_edge346

.lr.ph345.preheader:                              ; preds = %bb.ca
  br i1 %i.hu, label %.lr.ph345.epil.preheader, label %.lr.ph345

.lr.ph345:                                        ; preds = %.lr.ph345.preheader, %.lr.ph345
  %indvars.iv390 = phi i64 [ %indvars.iv.next391.1, %.lr.ph345 ], [ 0, %.lr.ph345.preheader ] ; 3 uses
  %.0153342 = phi double [ %i.pn, %.lr.ph345 ], [ 0.000000e+00, %.lr.ph345.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph345 ], [ 0, %.lr.ph345.preheader ]
  %i.os = getelementptr inbounds nuw [208 x i8], ptr %i.hl, i64 %indvars.iv390 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !124
  %i.ov = icmp slt i32 %i.ou, 2
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !94
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 128
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = mul i64 %i.oz, %indvars.iv410
  %.sink.idx.i = select i1 %i.ov, i64 0, i64 %i.pa
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sink.idx.i
  %i.pb = load double, ptr %.sink.i, align 8, !tbaa !71
  %i.pc = fadd double %.0153342, %i.pb
  %i.pd = getelementptr inbounds nuw [208 x i8], ptr %i.hl, i64 %indvars.iv390 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 212
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !124
  %i.pg = icmp slt i32 %i.pf, 2
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 232
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !94
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pd, i64 336
  %i.pk = load i64, ptr %i.pj, align 8
  %i.pl = mul i64 %i.pk, %indvars.iv410
  %.sink.idx.i.1 = select i1 %i.pg, i64 0, i64 %i.pl
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.sink.idx.i.1
  %i.pm = load double, ptr %.sink.i.1, align 8, !tbaa !71
  %i.pn = fadd double %i.pc, %i.pm                ; 3 uses
  %indvars.iv.next391.1 = add nuw nsw i64 %indvars.iv390, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge346.loopexit.unr-lcssa, label %.lr.ph345, !llvm.loop !55

._crit_edge346.loopexit.unr-lcssa:                ; preds = %.lr.ph345
  br i1 %lcmp.mod.not, label %._crit_edge346, label %.lr.ph345.epil.preheader

.lr.ph345.epil.preheader:                         ; preds = %._crit_edge346.loopexit.unr-lcssa, %.lr.ph345.preheader
  %indvars.iv390.epil.init = phi i64 [ 0, %.lr.ph345.preheader ], [ %indvars.iv.next391.1, %._crit_edge346.loopexit.unr-lcssa ]
  %.0153342.epil.init = phi double [ 0.000000e+00, %.lr.ph345.preheader ], [ %i.pn, %._crit_edge346.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod571)
  %i.po = getelementptr inbounds nuw [208 x i8], ptr %i.hl, i64 %indvars.iv390.epil.init ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !124
  %i.pr = icmp slt i32 %i.pq, 2
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !94
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 128
  %i.pv = load i64, ptr %i.pu, align 8
  %i.pw = mul i64 %i.pv, %indvars.iv410
  %.sink.idx.i.epil = select i1 %i.pr, i64 0, i64 %i.pw
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.pt, i64 %.sink.idx.i.epil
  %i.px = load double, ptr %.sink.i.epil, align 8, !tbaa !71
  %i.py = fadd double %.0153342.epil.init, %i.px
  br label %._crit_edge346

._crit_edge346:                                   ; preds = %.lr.ph345.epil.preheader, %._crit_edge346.loopexit.unr-lcssa, %bb.ca
  %.0153.lcssa = phi double [ 0.000000e+00, %bb.ca ], [ %i.pn, %._crit_edge346.loopexit.unr-lcssa ], [ %i.py, %.lr.ph345.epil.preheader ]
  %i.pz = load double, ptr %i.ok, align 8, !tbaa !71 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !102
  %i.qc = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !102
  %i.qe = fsub double %i.qb, %i.qd
  %i.qf = call double @llvm.fmuladd.f64(double %i.qe, double 2.000000e-02, double %i.pz)
  %i.qg = call double @llvm.fmuladd.f64(double %.0153.lcssa, double -2.000000e-02, double %i.qf) ; 2 uses
  %i.qh = fsub double %i.qg, %i.pz
  %i.qi = fadd double %i.qg, %i.qh
  store double %i.qi, ptr %i.ok, align 8, !tbaa !71
  br i1 %i.ci, label %.preheader.lr.ph, label %._crit_edge354

.preheader.lr.ph:                                 ; preds = %._crit_edge346
  br i1 %i.hr, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  br i1 %min.iters.check, label %.preheader.preheader548, label %vector.memcheck

.preheader.preheader548:                          ; preds = %vector.body, %vector.memcheck, %.preheader.preheader
  %indvars.iv395.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.preheader ], [ %i.dw, %vector.body ]
  br label %.preheader

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.qj = getelementptr i8, ptr %scevgep492, i64 %i.oq
  %i.qk = getelementptr i8, ptr %scevgep, i64 %i.oq
  %bound0 = icmp ult ptr %scevgep495, %i.qk
  %bound1 = icmp ult ptr %i.qj, %scevgep494
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %invariant.op594, %found.conflict
  br i1 %conflict.rdx.reass, label %.preheader.preheader548, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ql = or disjoint i64 %index, 1               ; 3 uses
  %i.qm = add i64 %index, 2                       ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.ql ; 2 uses
  %wide.load = load <2 x double>, ptr %i.qn, align 8, !tbaa !71, !alias.scope !125, !noalias !126 ; 2 uses
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.om, i64 %i.ql ; 2 uses
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.om, i64 %i.qm
  %wide.vec = load <4 x double>, ptr %i.qo, align 8, !tbaa !71, !alias.scope !127 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec500 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.qq = getelementptr i8, ptr %i.qo, i64 -16
  %i.qr = getelementptr i8, ptr %i.qp, i64 -16
  %i.qs = load double, ptr %i.qq, align 8, !tbaa !103, !alias.scope !127
  %i.qt = load double, ptr %i.qr, align 8, !tbaa !103, !alias.scope !127
  %i.qu = insertelement <2 x double> poison, double %i.qs, i64 0
  %i.qv = insertelement <2 x double> %i.qu, double %i.qt, i64 1
  %i.qw = fsub <2 x double> %strided.vec, %i.qv
  %i.qx = fadd <2 x double> %i.qw, %strided.vec500
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %i.ql
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %i.qm
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rc = load double, ptr %i.ra, align 8, !tbaa !102, !alias.scope !128
  %i.rd = load double, ptr %i.rb, align 8, !tbaa !102, !alias.scope !128
  %i.re = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.rf = insertelement <2 x double> %i.re, double %i.rd, i64 1
  %i.rg = fsub <2 x double> %i.qx, %i.rf
  %i.rh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rg, <2 x double> splat (double 2.000000e-02), <2 x double> %wide.load) ; 2 uses
  %i.ri = fsub <2 x double> %i.rh, %wide.load
  %i.rj = fadd <2 x double> %i.rh, %i.ri
  store <2 x double> %i.rj, ptr %i.qn, align 8, !tbaa !71, !alias.scope !125, !noalias !126
  %index.next = add nuw i64 %index, 2
  %i.rk = icmp eq i64 %index, %i.dx
  br i1 %i.rk, label %.preheader.preheader548, label %vector.body, !llvm.loop !60

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge351.us
  %indvars.iv405 = phi i64 [ %indvars.iv.next406, %._crit_edge351.us ], [ 1, %.preheader.lr.ph ] ; 7 uses
  br i1 %i.hv, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv400 = phi i64 [ %indvars.iv.next401.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.1154348.us = phi double [ %i.si, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter577 = phi i64 [ %niter577.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.rl = getelementptr inbounds nuw [208 x i8], ptr %i.hl, i64 %indvars.iv400 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !124
  %i.ro = icmp slt i32 %i.rn, 2
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !94
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rl, i64 128
  %i.rs = load i64, ptr %i.rr, align 8
  %i.rt = mul i64 %i.rs, %indvars.iv410
  %.sink.idx.i235.us = select i1 %i.ro, i64 0, i64 %i.rt
  %.sink.i236.us = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.sink.idx.i235.us
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %.sink.i236.us, i64 %indvars.iv405
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !71
  %i.rw = fadd double %.1154348.us, %i.rv
  %i.rx = getelementptr inbounds nuw [208 x i8], ptr %i.hl, i64 %indvars.iv400 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 212
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !124
  %i.sa = icmp slt i32 %i.rz, 2
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 232
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !94
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rx, i64 336
  %i.se = load i64, ptr %i.sd, align 8
  %i.sf = mul i64 %i.se, %indvars.iv410
  %.sink.idx.i235.us.1 = select i1 %i.sa, i64 0, i64 %i.sf
  %.sink.i236.us.1 = getelementptr inbounds nuw i8, ptr %i.sc, i64 %.sink.idx.i235.us.1
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i236.us.1, i64 %indvars.iv405
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !71
  %i.si = fadd double %i.rw, %i.sh                ; 3 uses
  %indvars.iv.next401.1 = add nuw nsw i64 %indvars.iv400, 2 ; 2 uses
  %niter577.next.1 = add i64 %niter577, 2         ; 2 uses
  %niter577.ncmp.1 = icmp eq i64 %niter577.next.1, %unroll_iter576
  br i1 %niter577.ncmp.1, label %._crit_edge351.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !61

._crit_edge351.us.unr-lcssa:                      ; preds = %.preheader.us.new
  br i1 %lcmp.mod573.not, label %._crit_edge351.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge351.us.unr-lcssa, %.preheader.us
  %indvars.iv400.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next401.1, %._crit_edge351.us.unr-lcssa ]
  %.1154348.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.si, %._crit_edge351.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod575)
  %i.sj = getelementptr inbounds nuw [208 x i8], ptr %i.hl, i64 %indvars.iv400.epil.init ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !124
  %i.sm = icmp slt i32 %i.sl, 2
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !94
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 128
  %i.sq = load i64, ptr %i.sp, align 8
  %i.sr = mul i64 %i.sq, %indvars.iv410
  %.sink.idx.i235.us.epil = select i1 %i.sm, i64 0, i64 %i.sr
  %.sink.i236.us.epil = getelementptr inbounds nuw i8, ptr %i.so, i64 %.sink.idx.i235.us.epil
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %.sink.i236.us.epil, i64 %indvars.iv405
  %i.st = load double, ptr %i.ss, align 8, !tbaa !71
  %i.su = fadd double %.1154348.us.epil.init, %i.st
  br label %._crit_edge351.us

._crit_edge351.us:                                ; preds = %._crit_edge351.us.unr-lcssa, %.epil.preheader
  %.lcssa566 = phi double [ %i.si, %._crit_edge351.us.unr-lcssa ], [ %i.su, %.epil.preheader ]
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %indvars.iv405 ; 2 uses
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !71 ; 2 uses
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.om, i64 %indvars.iv405 ; 3 uses
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !103
  %i.sz = getelementptr i8, ptr %i.sx, i64 -16
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !103
  %i.tb = fsub double %i.sy, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.td = load double, ptr %i.tc, align 8, !tbaa !102
  %i.te = fadd double %i.tb, %i.td
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %indvars.iv405
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load double, ptr %i.tg, align 8, !tbaa !102
  %i.ti = fsub double %i.te, %i.th
  %i.tj = call double @llvm.fmuladd.f64(double %i.ti, double 2.000000e-02, double %i.sw)
  %i.tk = call double @llvm.fmuladd.f64(double %.lcssa566, double -2.000000e-02, double %i.tj) ; 2 uses
  %i.tl = fsub double %i.tk, %i.sw
  %i.tm = fadd double %i.tk, %i.tl
  store double %i.tm, ptr %i.sv, align 8, !tbaa !71
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %exitcond409.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count408
  br i1 %exitcond409.not, label %._crit_edge354, label %.preheader.us, !llvm.loop !62

.preheader:                                       ; preds = %.preheader.preheader548, %.preheader
  %indvars.iv395 = phi i64 [ %indvars.iv.next396, %.preheader ], [ %indvars.iv395.ph, %.preheader.preheader548 ] ; 4 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %indvars.iv395 ; 2 uses
  %i.to = load double, ptr %i.tn, align 8, !tbaa !71 ; 2 uses
  %i.tp = getelementptr inbounds nuw [16 x i8], ptr %i.om, i64 %indvars.iv395 ; 3 uses
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !103
  %i.tr = getelementptr i8, ptr %i.tp, i64 -16
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !103
  %i.tt = fsub double %i.tq, %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !102
  %i.tw = fadd double %i.tt, %i.tv
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %indvars.iv395
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !102
  %i.ua = fsub double %i.tw, %i.tz
  %i.ub = call double @llvm.fmuladd.f64(double %i.ua, double 2.000000e-02, double %i.to) ; 2 uses
  %i.uc = fsub double %i.ub, %i.to
  %i.ud = fadd double %i.ub, %i.uc
  store double %i.ud, ptr %i.tn, align 8, !tbaa !71
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond399.not = icmp eq i64 %indvars.iv.next396, %wide.trip.count398
  br i1 %exitcond399.not, label %._crit_edge354, label %.preheader, !llvm.loop !63

._crit_edge354:                                   ; preds = %.preheader, %._crit_edge351.us, %._crit_edge346
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 2 uses
  %exitcond414.not = icmp eq i64 %indvars.iv.next411, %wide.trip.count413
  br i1 %exitcond414.not, label %._crit_edge357, label %bb.ca, !llvm.loop !64

._crit_edge357:                                   ; preds = %._crit_edge354, %.preheader295
  %i.ue = add nuw nsw i32 %.1152358, 1            ; 2 uses
  %exitcond415.not = icmp eq i32 %i.ue, %3
  br i1 %exitcond415.not, label %._crit_edge360, label %bb.ab, !llvm.loop !65

._crit_edge360:                                   ; preds = %._crit_edge357
  %i.uf = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !78
  %i.uh = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !79
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.ug, i32 noundef %i.ui, i32 noundef 0)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %._crit_edge360
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #14
  %i.uj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.uk = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 0, ptr %i.uk, align 8
  store i32 33619968, ptr %33, align 8, !tbaa !91
  store ptr %1, ptr %i.uj, align 8, !tbaa !92
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %33, i32 noundef 0, double noundef 2.550000e+02, double noundef 0.000000e+00)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #14
  %.not4.i.i.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cc, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ul, %.lr.ph.i.i.i ], [ %i.hl, %bb.cc ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #14
  %i.ul = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %i.ul, %i.hm
  br i1 %.not.i.i.i237, label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.cc
  %i.um = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.hl, %bb.cc ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.um, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EED2Ev.exit, label %bb.cd

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EED2Ev:bb.a
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #16
  br label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv16MatConstIterator4seekEPKib(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTSN2cv4Mat_IdEE", !9, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!18, !17, i64 16}
!22 = !{!12, !12, i64 0}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!25 = distinct !{!25, !24, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!26 = distinct !{!26, !16}
!27 = distinct !{null}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !16, !99, !100}
!34 = distinct !{!34, !16, !99}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, i1 true, !"_ZN2cv4Mat_IdE5beginEv"}
!37 = distinct !{!37, !36, !"_ZN2cv4Mat_IdE5beginEv: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv"}
!39 = distinct !{!39, !38, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZN2cv4Mat_IdE3endEv"}
!41 = distinct !{!41, !40, !"_ZN2cv4Mat_IdE3endEv: argument 0"}
!42 = distinct !{!42, i1 true, !"_ZN2cv3Mat3endIdEENS_12MatIterator_IT_EEv"}
!43 = distinct !{!43, !42, !"_ZN2cv3Mat3endIdEENS_12MatIterator_IT_EEv: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZNK2cv3Mat5beginIhEENS_17MatConstIterator_IT_EEv"}
!45 = distinct !{!45, !44, !"_ZNK2cv3Mat5beginIhEENS_17MatConstIterator_IT_EEv: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZN2cv4Mat_IdE5beginEv"}
!47 = distinct !{!47, !46, !"_ZN2cv4Mat_IdE5beginEv: argument 0"}
!48 = distinct !{!48, i1 true, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv"}
!49 = distinct !{!49, !48, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZSt9transformIN2cv12MatIterator_IdEENS0_17MatConstIterator_IhEES2_NS0_20AddFloatToCharScaledEET1_T_S7_T0_S6_T2_"}
!51 = distinct !{!51, !50, !"_ZSt9transformIN2cv12MatIterator_IdEENS0_17MatConstIterator_IhEES2_NS0_20AddFloatToCharScaledEET1_T_S7_T0_S6_T2_: argument 0"}
!52 = distinct !{!52, !16}
!53 = distinct !{null}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !16, !99, !100}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16, !99}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = !{!"p1 _ZTSN2cv3MatE", !9, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!67, !66, i64 0}
!70 = !{!"double", !5, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!73 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!74 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!75 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !74, i64 4, !6, i64 8, !5, i64 12}
!76 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!77 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !72, i64 56, !73, i64 64, !75, i64 72, !76, i64 128}
!78 = !{!77, !6, i64 8}
!79 = !{!77, !6, i64 12}
!80 = !{!"p1 _ZTSN2cv5MatOpE", !9, i64 0}
!81 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !5, i64 0}
!82 = !{!"_ZTSN2cv3VecIdLi4EEE", !81, i64 0}
!83 = !{!"_ZTSN2cv7Scalar_IdEE", !82, i64 0}
!84 = !{!"_ZTSN2cv7MatExprE", !80, i64 0, !6, i64 8, !77, i64 16, !77, i64 224, !77, i64 432, !70, i64 640, !70, i64 648, !83, i64 656}
!85 = !{!84, !80, i64 0}
!86 = !{!25}
!87 = !{!"vtable pointer", !4, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!90 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !89, i64 16}
!91 = !{!90, !6, i64 0}
!92 = !{!90, !9, i64 8}
!93 = !{!77, !6, i64 0}
!94 = !{!77, !10, i64 24}
!95 = !{!30}
!96 = !{!31}
!97 = !{!30, !32}
!98 = !{!32}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!"_ZTSN2cv6Point_IdEE", !70, i64 0, !70, i64 8}
!102 = !{!101, !70, i64 8}
!103 = !{!101, !70, i64 0}
!104 = !{!37}
!105 = !{!39}
!106 = !{!39, !37}
!107 = !{!"_ZTSN2cv16MatConstIteratorE", !66, i64 0, !12, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!108 = !{!107, !66, i64 0}
!109 = !{!107, !12, i64 8}
!110 = !{!107, !10, i64 24}
!111 = !{!107, !10, i64 32}
!112 = !{!41}
!113 = !{!43}
!114 = !{!43, !41}
!115 = !{!107, !10, i64 16}
!116 = !{!45}
!117 = !{!47}
!118 = !{!49}
!119 = !{!49, !47}
!120 = !{!51}
!121 = !{!89, !6, i64 0}
!122 = !{!89, !6, i64 4}
!123 = !{!6, !6, i64 0}
!124 = !{!77, !6, i64 4}
!125 = !{!57}
!126 = !{!59, !58}
!127 = !{!59}
!128 = !{!58}
!129 = !{!11, !10, i64 0}
!130 = !{!13, !12, i64 8}
end_hunk_2
