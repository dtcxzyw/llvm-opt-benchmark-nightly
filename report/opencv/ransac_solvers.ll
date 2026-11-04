Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ransac_solvers?download=true
inline.NumInlined: 3298
inline.NumDeleted: 1330
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv4usac15UniversalRANSAC21getIndependentInliersERKNS_3MatERKSt6vectorIiSaIiEERS7_i:bb.a
  %i.qe = fadd float %.pre292, %i.qd
  %i.qf = fmul float %i.pp, %i.qe
  %i.qg = extractelement <2 x float> %i.qc, i64 0
  %i.qh = fmul float %i.qg, %i.qf
  %i.qi = fcmp olt float %i.qh, 0.000000e+00
  %i.qj = zext i1 %i.qi to i32
  %spec.select.us = add nsw i32 %.083253.us, %i.qj
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.2.us = phi i32 [ %.083253.us, %bb.bd ], [ %spec.select.us, %bb.be ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count277
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.bd, !llvm.loop !777

._crit_edge.us:                                   ; preds = %bb.bf
  %.not134.us = icmp slt i32 %.2.us, %i.oq        ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  %or.cond303 = select i1 %.not134.us, i1 true, i1 %exitcond278.not
  br i1 %or.cond303, label %.loopexit244, label %.lr.ph255.us, !llvm.loop !778

.loopexit244:                                     ; preds = %._crit_edge.us, %.loopexit246
  %.399 = phi i1 [ false, %.loopexit246 ], [ %.not134.us, %._crit_edge.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #28
  %i.qk = sub nsw i32 %4, %.4                     ; 2 uses
  store i32 %i.qk, ptr %i.y, align 4, !tbaa !62
  %i.ql = icmp slt i32 %i.qk, 1
  br i1 %i.ql, label %bb.bp, label %bb.bg

bb.bg:                                            ; preds = %.loopexit244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #28
  %i.qm = sub nsw i32 %4, %.0119
  store i32 %i.qm, ptr %i.z, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store ptr %i.y, ptr %21, align 8, !tbaa !58
  %i.qn = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %3, ptr %i.qn, align 8, !tbaa !229
  %i.qo = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.f, ptr %i.qo, align 8, !tbaa !786
  %i.qp = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %i.a, ptr %i.qp, align 8, !tbaa !233
  %i.qq = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %i.n, ptr %i.qq, align 8, !tbaa !227
  %i.qr = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr %i.u, ptr %i.qr, align 8, !tbaa !786
  %i.qs = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %i.o, ptr %i.qs, align 8, !tbaa !227
  %i.qt = getelementptr inbounds nuw i8, ptr %21, i64 56
  store ptr %i.p, ptr %i.qt, align 8, !tbaa !227
  %i.qu = getelementptr inbounds nuw i8, ptr %21, i64 64
  store ptr %i.k, ptr %i.qu, align 8, !tbaa !227
  %i.qv = getelementptr inbounds nuw i8, ptr %21, i64 72
  store ptr %i.l, ptr %i.qv, align 8, !tbaa !227
  %i.qw = getelementptr inbounds nuw i8, ptr %21, i64 80
  store ptr %i.m, ptr %i.qw, align 8, !tbaa !227
  %i.qx = getelementptr inbounds nuw i8, ptr %21, i64 88
  store ptr %i.v, ptr %i.qx, align 8, !tbaa !233
  %i.qy = getelementptr inbounds nuw i8, ptr %21, i64 96
  store ptr %i.q, ptr %i.qy, align 8, !tbaa !227
  %i.qz = getelementptr inbounds nuw i8, ptr %21, i64 104
  store ptr %i.r, ptr %i.qz, align 8, !tbaa !227
  %i.ra = getelementptr inbounds nuw i8, ptr %21, i64 112
  store ptr %i.i, ptr %i.ra, align 8, !tbaa !227
  %i.rb = getelementptr inbounds nuw i8, ptr %21, i64 120
  store ptr %i.w, ptr %i.rb, align 8, !tbaa !233
  %i.rc = getelementptr inbounds nuw i8, ptr %21, i64 128
  store ptr %i.s, ptr %i.rc, align 8, !tbaa !227
  %i.rd = getelementptr inbounds nuw i8, ptr %21, i64 136
  store ptr %i.t, ptr %i.rd, align 8, !tbaa !227
  %i.re = getelementptr inbounds nuw i8, ptr %21, i64 144
  store ptr %i.z, ptr %i.re, align 8, !tbaa !58
  %i.rf = getelementptr inbounds nuw i8, ptr %21, i64 152
  store ptr %i.c, ptr %i.rf, align 8, !tbaa !58
  %i.rg = getelementptr inbounds nuw i8, ptr %21, i64 160
  store ptr %i.g, ptr %i.rg, align 8, !tbaa !227
  %i.rh = getelementptr inbounds nuw i8, ptr %21, i64 168
  store ptr %i.e, ptr %i.rh, align 8, !tbaa !58
  %i.ri = getelementptr inbounds nuw i8, ptr %21, i64 176
  store ptr %i.j, ptr %i.ri, align 8, !tbaa !227
  %i.rj = getelementptr inbounds nuw i8, ptr %21, i64 184
  store ptr %i.x, ptr %i.rj, align 8, !tbaa !786
  %i.rk = getelementptr inbounds nuw i8, ptr %21, i64 192
  store ptr %i.d, ptr %i.rk, align 8, !tbaa !58
  %i.rl = getelementptr inbounds nuw i8, ptr %21, i64 200
  store ptr %i.b, ptr %i.rl, align 8, !tbaa !58
  %i.rm = getelementptr inbounds nuw i8, ptr %21, i64 208
  store ptr %i.h, ptr %i.rm, align 8, !tbaa !227
  %i.rn = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 2 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !49
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 88
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = invoke noundef zeroext i1 %i.rq(ptr noundef nonnull align 8 dereferenceable(8) %i.rn)
          to label %bb.bh unwind label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.rr, label %.preheader, label %bb.bl

.preheader:                                       ; preds = %bb.bh
  %i.rs = load i32, ptr %i.y, align 4, !tbaa !62  ; 2 uses
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %.lr.ph271, label %.loopexit243

.lr.ph271:                                        ; preds = %.preheader
  %.promoted = load i32, ptr %i.z, align 4
  %i.ru = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.rv = load ptr, ptr %i.f, align 8, !tbaa !227 ; 2 uses
  %i.rw = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %i.rx = sext i32 %i.rw to i64
  %wide.trip.count289 = zext nneg i32 %i.rs to i64
  %wide.trip.count284 = zext i32 %i.rw to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph271, %.loopexit
  %indvars.iv286 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next287, %.loopexit ] ; 2 uses
  %indvars.iv279 = phi i64 [ 1, %.lr.ph271 ], [ %indvars.iv.next280, %.loopexit ] ; 2 uses
  %i.ry = phi i32 [ %.promoted, %.lr.ph271 ], [ %i.tg, %.loopexit ] ; 3 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv286
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !62
  %i.sb = mul nsw i32 %i.sa, 5
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.sc ; 3 uses
  %i.se = load <2 x float>, ptr %i.sd, align 4, !tbaa !186
  %i.sf = getelementptr i8, ptr %i.sd, i64 8
  %i.sg = load <2 x float>, ptr %i.sf, align 4, !tbaa !186
  %i.sh = getelementptr i8, ptr %i.sd, i64 16
  %i.si = load float, ptr %i.sh, align 4, !tbaa !186
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 3 uses
  %i.sj = icmp slt i64 %indvars.iv.next287, %i.rx
  br i1 %i.sj, label %.lr.ph269, label %.loopexit

bb.bj:                                            ; preds = %bb.bk
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count284
  br i1 %exitcond285.not, label %.loopexit, label %.lr.ph269, !llvm.loop !779

.lr.ph269:                                        ; preds = %bb.bi, %bb.bj
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %bb.bj ], [ %indvars.iv279, %bb.bi ] ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv281
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !62
  %i.sm = mul nsw i32 %i.sl, 5
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.sn ; 3 uses
  %i.sp = load <2 x float>, ptr %i.so, align 4, !tbaa !186
  %i.sq = fsub <2 x float> %i.se, %i.sp
  %i.sr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.sq)
  %i.ss = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.sr)
  %i.st = fcmp olt float %i.ss, 4.000000e+00
  br i1 %i.st, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph269
  %i.su = getelementptr i8, ptr %i.so, i64 8
  %i.sv = load <2 x float>, ptr %i.su, align 4, !tbaa !186
  %i.sw = fsub <2 x float> %i.sg, %i.sv
  %i.sx = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.sw) ; 2 uses
  %shift305 = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop306 = fadd <2 x float> %i.sx, %shift305
  %i.sy = extractelement <2 x float> %foldExtExtBinop306, i64 0
  %i.sz = getelementptr i8, ptr %i.so, i64 16
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !186
  %i.tb = fsub float %i.si, %i.ta
  %i.tc = call float @llvm.fabs.f32(float %i.tb)
  %i.td = fadd float %i.sy, %i.tc
  %i.te = fcmp olt float %i.td, 4.000000e+00
  br i1 %i.te, label %.critedge, label %bb.bj

.critedge:                                        ; preds = %bb.bk, %.lr.ph269
  %i.tf = add nsw i32 %i.ry, -1                   ; 2 uses
  store i32 %i.tf, ptr %i.z, align 4, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bj, %bb.bi, %.critedge
  %i.tg = phi i32 [ %i.tf, %.critedge ], [ %i.ry, %bb.bi ], [ %i.ry, %bb.bj ]
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %.loopexit243, label %bb.bi, !llvm.loop !780

bb.bl:                                            ; preds = %bb.bh
  %i.th = load i8, ptr %i.v, align 1, !tbaa !224, !range !223, !noundef !213
  %i.ti = trunc nuw i8 %i.th to i1
  %i.tj = load i8, ptr %i.w, align 1, !range !223
  %i.tk = trunc nuw i8 %i.tj to i1
  %i.tl = select i1 %i.ti, i1 true, i1 %i.tk
  %i.tm = xor i1 %i.tl, true
  call fastcc void @"_ZZN2cv4usac15UniversalRANSAC21getIndependentInliersERKNS_3MatERKSt6vectorIiSaIiEERS7_iENK3$_0clEbb"(ptr noundef nonnull align 8 dereferenceable(216) %21, i1 noundef zeroext %.399, i1 noundef zeroext %i.tm)
  %i.tn = load i8, ptr %i.a, align 1, !tbaa !224, !range !223, !noundef !213
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %bb.bm, label %.loopexit243

bb.bm:                                            ; preds = %bb.bl
  %i.tp = load i32, ptr %i.d, align 4, !tbaa !62
  %i.tq = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %i.tr = sitofp i32 %i.tq to double
  %i.ts = load i32, ptr %i.c, align 4, !tbaa !62
  %i.tt = insertelement <2 x i32> poison, i32 %i.ts, i64 0
  %i.tu = insertelement <2 x i32> %i.tt, i32 %i.tp, i64 1
  %i.tv = sitofp <2 x i32> %i.tu to <2 x double>
  %i.tw = insertelement <2 x double> poison, double %i.tr, i64 0
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ty = fdiv <2 x double> %i.tv, %i.tx
  %22 = fcmp olt <2 x double> %i.ty, splat (double 6.000000e-01) ; 2 uses
  %23 = extractelement <2 x i1> %22, i64 0        ; 2 uses
  %24 = extractelement <2 x i1> %22, i64 1        ; 2 uses
  %or.cond = select i1 %23, i1 %24, i1 false
  br i1 %or.cond, label %.loopexit243, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tz = sub nsw i32 %i.tq, %.0119
  store i32 %i.tz, ptr %i.z, align 4, !tbaa !62
  store i32 0, ptr %i.c, align 4, !tbaa !62
  store i32 0, ptr %i.d, align 4, !tbaa !62
  call fastcc void @"_ZZN2cv4usac15UniversalRANSAC21getIndependentInliersERKNS_3MatERKSt6vectorIiSaIiEERS7_iENK3$_0clEbb"(ptr noundef nonnull align 8 dereferenceable(216) %21, i1 noundef zeroext %24, i1 noundef zeroext %23)
  br label %.loopexit243

bb.bo:                                            ; preds = %bb.bg
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  br label %bb.bq

.loopexit243:                                     ; preds = %.loopexit, %.preheader, %bb.bn, %bb.bm, %bb.bl
  %i.ub = load i32, ptr %i.z, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #28
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit244, %.loopexit243
  %.0120 = phi i32 [ %i.ub, %.loopexit243 ], [ 0, %.loopexit244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo, %bb.av, %bb.au, %bb.at
  %.pn135.pn = phi { ptr, i32 } [ %i.ua, %bb.bo ], [ %i.nk, %bb.av ], [ %i.nj, %bb.au ], [ %i.ni, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.as
  %.pn135.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.bq ], [ %i.nh, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.bt

bb.bs:                                            ; preds = %bb.ag, %bb.bp
  %.1121 = phi i32 [ %.0120, %bb.bp ], [ 0, %bb.ag ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.1121

bb.bt:                                            ; preds = %bb.br, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w, %bb.d
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn.pn, %bb.br ], [ %i.ng, %bb.ar ], [ %.pn125.pn.pn, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn
}

declare noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN2cv4usac5Utils15getRightEpipoleERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::Vec.346") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

declare void @_ZN2cv4usac5Utils14getLeftEpipoleERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::Vec.346") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZZN2cv4usac15UniversalRANSAC21getIndependentInliersERKNS_3MatERKSt6vectorIiSaIiEERS7_iENK3$_0clEbb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !213, !align !234 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !791, !nonnull !213, !align !235
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !792, !nonnull !213, !align !235
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !227  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !793, !nonnull !213
  %i.l = load i8, ptr %i.k, align 1, !tbaa !224, !range !223, !noundef !213
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !213, !align !235
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !213, !align !234 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !213, !align !234 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !213, !align !234 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !213, !align !234 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !213, !align !234 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !213, !align !234 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !213
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !213, !align !234
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !213, !align !234
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !213, !align !234
  %i.as = load ptr, ptr %i.ah, align 8, !nonnull !213
  %i.at = load ptr, ptr %i.ai, align 8, !nonnull !213, !align !234
  %i.au = load ptr, ptr %i.aj, align 8, !nonnull !213, !align !234
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !213, !align !234
  %i.aw = load ptr, ptr %i.an, align 8, !nonnull !213, !align !234
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !213, !align !235
  %i.ay = load ptr, ptr %i.aq, align 8, !nonnull !213, !align !234
  %i.az = load ptr, ptr %i.ak, align 8, !nonnull !213, !align !234 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph65, %.critedge
  %indvars.iv76 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next77, %.critedge ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph65 ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv76
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !62
  %i.bc = shl nsw i32 %i.bb, 2                    ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bd ; 2 uses
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !186 ; 5 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 8
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !186 ; 5 uses
  br i1 %i.m, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !227 ; 11 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !186
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !186
  %i.bm = extractelement <2 x float> %i.bf, i64 1 ; 4 uses
  %i.bn = fmul float %i.bm, %i.bl
  %i.bo = extractelement <2 x float> %i.bf, i64 0 ; 3 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bo, float %i.bn)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !186
  %i.bs = fadd float %i.br, %i.bp
  store float %i.bs, ptr %i.q, align 4, !tbaa !186
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 3 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !186
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !186
  %i.bx = fmul float %i.bm, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bo, float %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 20 ; 2 uses
end_hunk_0
