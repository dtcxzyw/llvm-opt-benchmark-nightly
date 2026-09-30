Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/omnidir?download=true
inline.NumInlined: 4032
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i:bb.a
  %i.qo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.qq = getelementptr inbounds nuw i8, ptr %52, i64 128
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.qt = getelementptr inbounds nuw i8, ptr %53, i64 128
  %i.qu = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.qv = fmul <2 x double> %i.qu, splat (double 2.000000e+00) ; 2 uses
  %i.qw = extractelement <2 x double> %i.mg, i64 0
  %i.qx = extractelement <2 x double> %i.mg, i64 1
  %i.qy = extractelement <4 x double> %i.fl, i64 0
  %i.qz = extractelement <4 x double> %i.fl, i64 2
  %i.ra = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rb = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.rc = extractelement <2 x double> %i.qv, i64 0
  %i.rd = extractelement <2 x double> %i.qv, i64 1
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph683, %._crit_edge681
  %indvars.iv694 = phi i64 [ 0, %.lr.ph683 ], [ %indvars.iv.next695, %._crit_edge681 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  %i.re = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !289
  %i.rf = icmp eq i32 %i.re, 65536
  br i1 %i.rf, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.rg = load ptr, ptr %i.qo, align 8, !tbaa !18, !noalias !289
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %52, ptr noundef nonnull align 8 dereferenceable(208) %i.rg)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

bb.dw:                                            ; preds = %bb.du
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %52, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

_ZNK2cv11_InputArray6getMatEi.exit462:            ; preds = %bb.dv, %bb.dw
  %i.rh = load ptr, ptr %i.qp, align 8, !tbaa !34
  %i.ri = load i64, ptr %i.qq, align 8, !tbaa !38
  %i.rj = mul i64 %i.ri, %indvars.iv694
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rj ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  %i.rl = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8), !noalias !290
  %i.rm = icmp eq i32 %i.rl, 65536
  br i1 %i.rm, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  %i.rn = load ptr, ptr %i.qr, align 8, !tbaa !18, !noalias !290
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 8 dereferenceable(208) %i.rn)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

bb.dy:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

_ZNK2cv11_InputArray6getMatEi.exit463:            ; preds = %bb.dx, %bb.dy
  %i.ro = load ptr, ptr %i.qs, align 8, !tbaa !34
  %i.rp = load i64, ptr %i.qt, align 8, !tbaa !38
  %i.rq = mul i64 %i.rp, %indvars.iv694
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  %i.rs = load i32, ptr %5, align 4, !tbaa !44    ; 2 uses
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %_ZNK2cv11_InputArray6getMatEi.exit463
  %i.ru = trunc nuw nsw i64 %indvars.iv694 to i32
  %i.rv = uitofp nneg i32 %i.ru to double         ; 2 uses
  %i.rw = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.rx = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ry = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> %i.md, <2 x double> %i.me)
  %i.rz = call double @llvm.fmuladd.f64(double %i.rv, double %i.qw, double %.sroa.6512.0)
  %wide.trip.count692 = zext nneg i32 %i.rs to i64
  br label %.lr.ph680

._crit_edge681:                                   ; preds = %bb.ec, %_ZNK2cv11_InputArray6getMatEi.exit463
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %i.sa = load i32, ptr %i.ql, align 4, !tbaa !43
  %i.sb = sext i32 %i.sa to i64
  %i.sc = icmp slt i64 %indvars.iv.next695, %i.sb
  br i1 %i.sc, label %bb.du, label %.loopexit, !llvm.loop !265

.lr.ph680:                                        ; preds = %.lr.ph680.preheader, %bb.ec
  %indvars.iv689 = phi i64 [ 0, %.lr.ph680.preheader ], [ %indvars.iv.next690, %bb.ec ] ; 5 uses
  %.0335676 = phi double [ %i.rz, %.lr.ph680.preheader ], [ %i.ur, %bb.ec ] ; 4 uses
  %i.sd = phi <2 x double> [ %i.ry, %.lr.ph680.preheader ], [ %i.us, %bb.ec ] ; 5 uses
  %i.se = extractelement <2 x double> %i.sd, i64 0
  %foldExtExtBinop725 = fmul <2 x double> %i.sd, %i.sd
  %i.sf = extractelement <2 x double> %foldExtExtBinop725, i64 0
  %i.sg = call double @llvm.fmuladd.f64(double %.0335676, double %.0335676, double %i.sf)
  %i.sh = extractelement <2 x double> %i.sd, i64 1 ; 3 uses
  %i.si = call double @llvm.fmuladd.f64(double %i.sh, double %i.sh, double %i.sg)
  %sqrt = call double @llvm.sqrt.f64(double %i.si) ; 3 uses
  %i.sj = fdiv double %i.se, %sqrt
  %i.sk = fdiv double %i.sh, %sqrt
  %i.sl = fadd double %i.gc, %i.sk                ; 2 uses
  %i.sm = fdiv double %.0335676, %sqrt
  %i.sn = fdiv double %i.sm, %i.sl                ; 7 uses
  %i.so = fdiv double %i.sj, %i.sl                ; 7 uses
  %i.sp = fmul double %i.so, %i.so
  %i.sq = fmul double %i.rc, %i.sn
  %i.sr = fmul double %i.so, %i.sq
  %i.ss = fmul double %i.sn, 2.000000e+00
  %i.st = insertelement <2 x double> %i.ra, double %i.sn, i64 1
  %i.su = fmul double %i.so, 2.000000e+00
  %i.sv = call double @llvm.fmuladd.f64(double %i.sn, double %i.sn, double %i.sp) ; 5 uses
  %i.sw = fmul double %i.sv, %i.sv
  %i.sx = call double @llvm.fmuladd.f64(double %i.qy, double %i.sv, double 1.000000e+00)
  %i.sy = insertelement <2 x double> poison, double %i.sw, i64 0
  %i.sz = insertelement <2 x double> %i.sy, double %i.ss, i64 1
  %i.ta = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.tb = insertelement <2 x double> %i.ta, double %i.sv, i64 1
  %i.tc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> %i.sz, <2 x double> %i.tb) ; 2 uses
  %i.td = extractelement <2 x double> %i.tc, i64 0 ; 2 uses
  %i.te = call double @llvm.fmuladd.f64(double %i.td, double %i.sn, double %i.sr)
  %i.tf = insertelement <2 x double> %i.rb, double %i.su, i64 1
  %i.tg = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.th = insertelement <2 x double> %i.tg, double %i.so, i64 1
  %i.ti = insertelement <2 x double> poison, double %i.te, i64 0
  %i.tj = insertelement <2 x double> %i.ti, double %i.sv, i64 1
  %i.tk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.th, <2 x double> %i.tj) ; 2 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 1
  %i.tm = fmul double %i.qz, %i.tl
  %i.tn = call double @llvm.fmuladd.f64(double %i.td, double %i.so, double %i.tm)
  %i.to = fmul double %i.rd, %i.sn
  %i.tp = call double @llvm.fmuladd.f64(double %i.to, double %i.so, double %i.tn) ; 2 uses
  %i.tq = fmul double %.0318, %i.tp
  %i.tr = extractelement <2 x double> %i.tk, i64 0
  %i.ts = call double @llvm.fmuladd.f64(double %.sroa.0562.0, double %i.tr, double %i.tq)
  %i.tt = fadd double %.sroa.0558.0, %i.ts        ; 2 uses
  %i.tu = call double @llvm.fmuladd.f64(double %.sroa.8564.0, double %i.tp, double %.sroa.8560.0) ; 2 uses
  br i1 %i.a, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph680
  %i.tv = fmul double %i.tt, 3.200000e+01
  %i.tw = insertelement <2 x double> poison, double %i.tv, i64 0
  %i.tx = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.tw) ; 2 uses
  %i.ty = fmul double %i.tu, 3.200000e+01
  %i.tz = insertelement <2 x double> poison, double %i.ty, i64 0
  %i.ua = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.tz) ; 2 uses
  %i.ub = lshr i32 %i.tx, 5
  %i.uc = trunc i32 %i.ub to i16
  %.idx721 = shl nuw nsw i64 %indvars.iv689, 2
  %i.ud = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx721 ; 2 uses
  store i16 %i.uc, ptr %i.ud, align 2, !tbaa !292
  %i.ue = lshr i32 %i.ua, 5
  %i.uf = trunc i32 %i.ue to i16
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 2
  store i16 %i.uf, ptr %i.ug, align 2, !tbaa !292
  %i.uh = shl i32 %i.ua, 5
  %i.ui = and i32 %i.uh, 992
  %i.uj = and i32 %i.tx, 31
  %i.uk = or disjoint i32 %i.ui, %i.uj
  %i.ul = trunc nuw nsw i32 %i.uk to i16
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %indvars.iv689
  store i16 %i.ul, ptr %i.um, align 2, !tbaa !292
  br label %bb.ec

bb.ea:                                            ; preds = %.lr.ph680
  br i1 %i.b, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.un = fptrunc double %i.tt to float
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv689
  store float %i.un, ptr %i.uo, align 4, !tbaa !36
  %i.up = fptrunc double %i.tu to float
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %indvars.iv689
  store float %i.up, ptr %i.uq, align 4, !tbaa !36
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb, %bb.dz
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 2 uses
  %i.ur = fadd double %i.qx, %.0335676
  %i.us = fadd <2 x double> %i.mf, %i.sd
  %exitcond693.not = icmp eq i64 %indvars.iv.next690, %wide.trip.count692
  br i1 %exitcond693.not, label %._crit_edge681, label %.lr.ph680, !llvm.loop !266

bb.ed:                                            ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461
  %i.ut = and i32 %9, 6
  %or.cond11 = icmp eq i32 %i.ut, 2
  %or.cond13 = or i1 %i.cp, %or.cond11
  br i1 %or.cond13, label %.preheader669, label %.loopexit

.preheader669:                                    ; preds = %bb.ed
  %i.uu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !43
  %i.uw = icmp sgt i32 %i.uv, 0
  br i1 %i.uw, label %.lr.ph675, label %.loopexit

.lr.ph675:                                        ; preds = %.preheader669
  %i.ux = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.uy = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.uz = getelementptr inbounds nuw i8, ptr %54, i64 128
  %i.va = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.vb = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.vc = getelementptr inbounds nuw i8, ptr %55, i64 128
  %i.vd = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ve = fmul <2 x double> %i.vd, splat (double 2.000000e+00) ; 2 uses
  %i.vf = extractelement <4 x double> %i.fl, i64 0
  %i.vg = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vh = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %56 = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.vi = insertelement <2 x double> %i.ve, double 2.000000e+00, i64 1
  %57 = shufflevector <2 x double> %56, <2 x double> %i.ve, <2 x i32> <i32 0, i32 3>
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph675, %._crit_edge
  %indvars.iv686 = phi i64 [ 0, %.lr.ph675 ], [ %indvars.iv.next687, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  %i.vj = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !293
  %i.vk = icmp eq i32 %i.vj, 65536
  br i1 %i.vk, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.vl = load ptr, ptr %i.ux, align 8, !tbaa !18, !noalias !293
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(208) %i.vl)
  br label %_ZNK2cv11_InputArray6getMatEi.exit464

bb.eg:                                            ; preds = %bb.ee
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %54, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit464

_ZNK2cv11_InputArray6getMatEi.exit464:            ; preds = %bb.ef, %bb.eg
  %i.vm = load ptr, ptr %i.uy, align 8, !tbaa !34
  %i.vn = load i64, ptr %i.uz, align 8, !tbaa !38
  %i.vo = mul i64 %i.vn, %indvars.iv686
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.vo ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  %i.vq = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8), !noalias !294
  %i.vr = icmp eq i32 %i.vq, 65536
  br i1 %i.vr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit464
  %i.vs = load ptr, ptr %i.va, align 8, !tbaa !18, !noalias !294
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %55, ptr noundef nonnull align 8 dereferenceable(208) %i.vs)
  br label %_ZNK2cv11_InputArray6getMatEi.exit465

bb.ei:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit464
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit465

_ZNK2cv11_InputArray6getMatEi.exit465:            ; preds = %bb.eh, %bb.ei
  %i.vt = load ptr, ptr %i.vb, align 8, !tbaa !34
  %i.vu = load i64, ptr %i.vc, align 8, !tbaa !38
  %i.vv = mul i64 %i.vu, %indvars.iv686
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vv ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  %i.vx = load i32, ptr %5, align 4, !tbaa !44    ; 2 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2cv11_InputArray6getMatEi.exit465
  %i.vz = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.wa = uitofp nneg i32 %i.vz to double
  %i.wb = insertelement <2 x double> poison, double %i.wa, i64 0
  %i.wc = shufflevector <2 x double> %i.wb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.nx, <2 x double> %i.ny)
  %wide.trip.count = zext nneg i32 %i.vx to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.er, %_ZNK2cv11_InputArray6getMatEi.exit465
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.we = load i32, ptr %i.uu, align 4, !tbaa !43
  %i.wf = sext i32 %i.we to i64
  %i.wg = icmp slt i64 %indvars.iv.next687, %i.wf
  br i1 %i.wg, label %bb.ee, label %.loopexit, !llvm.loop !271

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.er
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.er ] ; 5 uses
  %i.wh = phi <2 x double> [ %i.wd, %.lr.ph.preheader ], [ %i.abb, %bb.er ] ; 11 uses
  switch i32 %9, label %bb.el [
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.ej:                                            ; preds = %.lr.ph
  %i.wi = extractelement <2 x double> %i.wh, i64 0 ; 2 uses
  %i.wj = call double @cos(double noundef %i.wi) #22
  %i.wk = call double @sin(double noundef %i.wi) #22
  %i.wl = extractelement <2 x double> %i.wh, i64 1
  br label %bb.en

bb.ek:                                            ; preds = %.lr.ph
  %i.wm = extractelement <2 x double> %i.wh, i64 0 ; 3 uses
  %i.wn = call double @cos(double noundef %i.wm) #22
  %i.wo = fneg double %i.wn
  %i.wp = call double @sin(double noundef %i.wm) #22
  %i.wq = fneg double %i.wp
  %i.wr = extractelement <2 x double> %i.wh, i64 1 ; 2 uses
  %i.ws = call double @cos(double noundef %i.wr) #22
  %i.wt = fmul double %i.ws, %i.wq
  %i.wu = call double @sin(double noundef %i.wm) #22
  %i.wv = call double @sin(double noundef %i.wr) #22
  %i.ww = fmul double %i.wu, %i.wv
  br label %bb.en

bb.el:                                            ; preds = %.lr.ph
  br i1 %i.cp, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.wx = extractelement <2 x double> %i.wh, i64 1
  %i.wy = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wz = fmul <2 x double> %i.wy, <double 1.000000e+00, double -2.000000e+00>
  %i.xa = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xb = fmul <2 x double> %i.xa, <double 1.000000e+00, double 2.000000e+00>
  %i.xc = fneg <2 x double> %i.wh
  %i.xd = shufflevector <2 x double> %i.wh, <2 x double> %i.xc, <2 x i32> <i32 1, i32 3>
  %i.xe = fmul <2 x double> %i.xb, %i.xd
  %i.xf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wz, <2 x double> %i.wy, <2 x double> %i.xe) ; 2 uses
  %i.xg = extractelement <2 x double> %i.xf, i64 0 ; 2 uses
  %i.xh = fadd double %i.xg, 4.000000e+00         ; 2 uses
  %i.xi = fadd double %i.xg, -4.000000e+00
  %i.xj = extractelement <2 x double> %i.xf, i64 1 ; 3 uses
  %i.xk = fneg double %i.xj
  %i.xl = fmul double %i.xh, 4.000000e+00
  %i.xm = fneg double %i.xi
  %i.xn = fmul double %i.xl, %i.xm
  %i.xo = call double @llvm.fmuladd.f64(double %i.xj, double %i.xj, double %i.xn)
  %i.xp = call double @sqrt(double noundef %i.xo) #22
  %i.xq = fsub double %i.xk, %i.xp
  %i.xr = fmul double %i.xh, 2.000000e+00
  %i.xs = fdiv double %i.xq, %i.xr                ; 2 uses
  %i.xt = fsub double 1.000000e+00, %i.xs         ; 2 uses
  %i.xu = extractelement <2 x double> %i.wh, i64 0
  %i.xv = fmul double %i.xu, %i.xt
  %i.xw = fmul double %i.xv, 5.000000e-01
  %i.xx = fmul double %i.wx, %i.xt
  %i.xy = fmul double %i.xx, 5.000000e-01
  br label %bb.en

bb.en:                                            ; preds = %bb.ek, %bb.em, %bb.el, %bb.ej
  %.0325 = phi double [ %i.wj, %bb.ej ], [ %i.wo, %bb.ek ], [ %i.xw, %bb.em ], [ 0.000000e+00, %bb.el ] ; 2 uses
  %.0324 = phi double [ %i.wk, %bb.ej ], [ %i.wt, %bb.ek ], [ %i.xs, %bb.em ], [ 0.000000e+00, %bb.el ] ; 2 uses
  %.0323 = phi double [ %i.wl, %bb.ej ], [ %i.ww, %bb.ek ], [ %i.xy, %bb.em ], [ 0.000000e+00, %bb.el ] ; 2 uses
  %i.xz = insertelement <2 x double> poison, double %.0324, i64 0
  %i.ya = shufflevector <2 x double> %i.xz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yb = fmul <2 x double> %i.qj, %i.ya
  %i.yc = insertelement <2 x double> poison, double %.0325, i64 0
  %i.yd = shufflevector <2 x double> %i.yc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ye = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> %i.yd, <2 x double> %i.yb)
  %i.yf = insertelement <2 x double> poison, double %.0323, i64 0
  %i.yg = shufflevector <2 x double> %i.yf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.yg, <2 x double> %i.ye) ; 5 uses
  %i.yi = shufflevector <2 x double> %i.qk, <2 x double> %i.yh, <2 x i32> <i32 0, i32 3>
  %i.yj = insertelement <2 x double> %i.yh, double %.0324, i64 0
  %i.yk = fmul <2 x double> %i.yi, %i.yj
  %i.yl = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ym = shufflevector <2 x double> %i.qk, <2 x double> %i.yh, <2 x i32> <i32 1, i32 2>
  %i.yn = insertelement <2 x double> %i.yl, double %.0325, i64 0
  %i.yo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ym, <2 x double> %i.yn, <2 x double> %i.yk) ; 2 uses
  %i.yp = extractelement <2 x double> %i.yo, i64 0
  %i.yq = call double @llvm.fmuladd.f64(double %.sroa.12.0, double %.0323, double %i.yp) ; 3 uses
  %i.yr = extractelement <2 x double> %i.yo, i64 1
  %i.ys = call double @llvm.fmuladd.f64(double %i.yq, double %i.yq, double %i.yr)
  %sqrt668 = call double @llvm.sqrt.f64(double %i.ys) ; 2 uses
  %i.yt = insertelement <2 x double> poison, double %sqrt668, i64 0
  %i.yu = shufflevector <2 x double> %i.yt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yv = fdiv <2 x double> %i.yh, %i.yu
  %i.yw = fdiv double %i.yq, %sqrt668
  %i.yx = fadd double %i.gc, %i.yw
  %i.yy = insertelement <2 x double> poison, double %i.yx, i64 0
  %i.yz = shufflevector <2 x double> %i.yy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.za = fdiv <2 x double> %i.yv, %i.yz          ; 6 uses
  %i.zb = extractelement <2 x double> %i.za, i64 1 ; 5 uses
  %i.zc = extractelement <2 x double> %i.za, i64 0 ; 4 uses
  %i.zd = fmul double %i.zb, %i.zb
  %i.ze = fmul <2 x double> %i.vi, %i.za          ; 2 uses
  %i.zf = extractelement <2 x double> %i.ze, i64 0
  %i.zg = fmul double %i.zb, %i.zf
  %i.zh = fmul double %i.zc, 2.000000e+00
  %i.zi = shufflevector <2 x double> %i.vg, <2 x double> %i.za, <2 x i32> <i32 0, i32 2>
  %i.zj = call double @llvm.fmuladd.f64(double %i.zc, double %i.zc, double %i.zd) ; 5 uses
  %i.zk = fmul double %i.zj, %i.zj
  %i.zl = call double @llvm.fmuladd.f64(double %i.vf, double %i.zj, double 1.000000e+00)
  %i.zm = insertelement <2 x double> poison, double %i.zk, i64 0
  %i.zn = insertelement <2 x double> %i.zm, double %i.zh, i64 1
  %i.zo = insertelement <2 x double> poison, double %i.zl, i64 0
  %i.zp = insertelement <2 x double> %i.zo, double %i.zj, i64 1
  %i.zq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zi, <2 x double> %i.zn, <2 x double> %i.zp) ; 2 uses
  %i.zr = extractelement <2 x double> %i.zq, i64 0 ; 2 uses
  %i.zs = call double @llvm.fmuladd.f64(double %i.zr, double %i.zc, double %i.zg)
  %i.zt = shufflevector <2 x double> %i.vh, <2 x double> %i.ze, <2 x i32> <i32 0, i32 3>
  %i.zu = shufflevector <2 x double> %i.zq, <2 x double> %i.za, <2 x i32> <i32 1, i32 3>
  %i.zv = insertelement <2 x double> poison, double %i.zs, i64 0
  %i.zw = insertelement <2 x double> %i.zv, double %i.zj, i64 1
  %i.zx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.zu, <2 x double> %i.zw) ; 2 uses
  %58 = shufflevector <2 x double> %i.zx, <2 x double> %i.za, <2 x i32> <i32 1, i32 2>
  %59 = fmul <2 x double> %57, %58                ; 2 uses
  %60 = extractelement <2 x double> %59, i64 0
  %61 = call double @llvm.fmuladd.f64(double %i.zr, double %i.zb, double %60)
  %i.zy = extractelement <2 x double> %59, i64 1
  %i.zz = call double @llvm.fmuladd.f64(double %i.zy, double %i.zb, double %61) ; 2 uses
  %i.aaa = fmul double %.0318, %i.zz
  %i.aab = extractelement <2 x double> %i.zx, i64 0
  %i.aac = call double @llvm.fmuladd.f64(double %.sroa.0562.0, double %i.aab, double %i.aaa)
  %i.aad = fadd double %.sroa.0558.0, %i.aac      ; 2 uses
  %i.aae = call double @llvm.fmuladd.f64(double %.sroa.8564.0, double %i.zz, double %.sroa.8560.0) ; 2 uses
  br i1 %i.a, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.aaf = fmul double %i.aad, 3.200000e+01
  %i.aag = insertelement <2 x double> poison, double %i.aaf, i64 0
  %i.aah = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.aag) ; 2 uses
  %i.aai = fmul double %i.aae, 3.200000e+01
  %i.aaj = insertelement <2 x double> poison, double %i.aai, i64 0
  %i.aak = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.aaj) ; 2 uses
  %i.aal = lshr i32 %i.aah, 5
  %i.aam = trunc i32 %i.aal to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.aan = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx ; 2 uses
  store i16 %i.aam, ptr %i.aan, align 2, !tbaa !292
  %i.aao = lshr i32 %i.aak, 5
  %i.aap = trunc i32 %i.aao to i16
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 2
  store i16 %i.aap, ptr %i.aaq, align 2, !tbaa !292
  %i.aar = shl i32 %i.aak, 5
  %i.aas = and i32 %i.aar, 992
  %i.aat = and i32 %i.aah, 31
  %i.aau = or disjoint i32 %i.aas, %i.aat
  %i.aav = trunc nuw nsw i32 %i.aau to i16
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.vw, i64 %indvars.iv
  store i16 %i.aav, ptr %i.aaw, align 2, !tbaa !292
  br label %bb.er

bb.ep:                                            ; preds = %bb.en
  br i1 %i.b, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aax = fptrunc double %i.aad to float
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv
  store float %i.aax, ptr %i.aay, align 4, !tbaa !36
  %i.aaz = fptrunc double %i.aae to float
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv
  store float %i.aaz, ptr %i.aba, align 4, !tbaa !36
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq, %bb.eo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.abb = fadd <2 x double> %i.nz, %i.wh
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge681, %.preheader669, %.preheader, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  ret void

bb.es:                                            ; preds = %bb.dp, %bb.dk
  %.pn373 = phi { ptr, i32 } [ %i.ia, %bb.dp ], [ %.pn370.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.dc, %bb.cu
  %.pn373.pn = phi { ptr, i32 } [ %.pn373, %bb.es ], [ %i.hi, %bb.dc ], [ %.pn365.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.critedge394

.critedge394:                                     ; preds = %bb.bs, %bb.bx, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn373.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ], [ %.pn354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ], [ %.pn350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ], [ %.pn348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.pn346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ], [ %i.et, %bb.bx ], [ %i.ef, %bb.bs ], [ %.pn373.pn, %bb.et ]
  resume { ptr, i32 } %.pn373.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN2cv7omnidir14undistortImageERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_S3_iS3_RKNS_5Size_IiEES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Size_", align 8         ; 5 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = load i32, ptr %7, align 4, !tbaa !44
  %i.b = icmp slt i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 1
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %7, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  store i64 %storemerge, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !17
  store ptr %10, ptr %i.i, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !17
  store ptr %11, ptr %i.k, align 8, !tbaa !18
  invoke void @_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %5)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !43
  store i32 16842752, ptr %14, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %10, ptr %i.o, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !43
  store i32 16842752, ptr %15, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %11, ptr %i.r, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7omnidir8internal21initializeCalibrationERKNS_11_InputArrayES4_NS_5Size_IiEERKNS_12_OutputArrayES9_S9_RdS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
end_hunk_0
