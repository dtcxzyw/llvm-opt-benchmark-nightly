Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZN2cv4usac30HomographyNonMinimalSolverImplD0Ev:bb.a
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #18, !inline_history !201
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(384) %0) #18, !inline_history !201
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac16NonMinimalSolver8estimateERKNS_3MatERKSt6vectorIiSaIiEEiRS5_IS2_SaIS2_EERKS5_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac30HomographyNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Matx", align 8          ; 8 uses
  %9 = alloca %"class.cv::Matx", align 8          ; 8 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %12 = alloca %"class.std::vector", align 8      ; 12 uses
  %13 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %14 = alloca %"class.cv::Matx.78", align 8      ; 7 uses
  %15 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %17 = alloca %"class.cv::Matx.78", align 16     ; 53 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::Mat_", align 8         ; 11 uses
  %21 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %22 = alloca [1 x %"class.cv::Mat"], align 16   ; 12 uses
  %23 = alloca %"class.cv::Matx", align 16        ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(384) %0)
  %i.e = icmp slt i32 %2, %i.d
  br i1 %i.e, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.e:                                             ; preds = %bb.c
  %.pre = load i8, ptr %i.f, align 8, !tbaa !42, !range !68
  %i.o = trunc nuw i8 %.pre to i1
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.q, %bb.f ], [ %i.s, %.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43, !range !68, !noundef !69
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.x = invoke noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #17
          to label %.noexc unwind label %bb.i     ; 106 uses

.noexc:                                           ; preds = %bb.h
  store ptr %i.x, ptr %12, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 576 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %i.x, i8 0, i64 576, i1 false), !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !62
  %i.ab = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.ae = icmp eq ptr %i.ab, %i.ad
  %i.af = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ae, label %.preheader428, label %.preheader431

.preheader431:                                    ; preds = %.noexc
  br i1 %i.af, label %.lr.ph455, label %.loopexit

.lr.ph455:                                        ; preds = %.preheader431
  %wide.trip.count509 = zext nneg i32 %2 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 128 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 160 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 240 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 256 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 320 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 400 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 408
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 480 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 496 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 560 ; 2 uses
  br label %bb.l

.preheader428:                                    ; preds = %.noexc
  br i1 %i.af, label %.lr.ph459, label %.loopexit

.lr.ph459:                                        ; preds = %.preheader428
  %i.be = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.bf = trunc nuw i8 %i.be to i1
  %wide.trip.count522 = zext nneg i32 %2 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 128 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 160 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 240 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 256 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 320 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 400 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 408 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 416 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 480 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 496 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 560 ; 2 uses
  %i.ce = load <2 x double>, ptr %i.x, align 8, !tbaa !61
  %i.cf = load <2 x double>, ptr %i.bg, align 8, !tbaa !61
  %i.cg = load <2 x double>, ptr %i.bh, align 8, !tbaa !61
  %i.ch = load <2 x double>, ptr %i.bi, align 8, !tbaa !61
  %.promoted1112 = load double, ptr %i.bj, align 8, !tbaa !61
  %i.ci = load <2 x double>, ptr %i.bk, align 8, !tbaa !61
  %i.cj = load <2 x double>, ptr %i.bl, align 8, !tbaa !61
  %i.ck = load <2 x double>, ptr %i.bm, align 8, !tbaa !61
  %i.cl = load <2 x double>, ptr %i.bn, align 8, !tbaa !61
  %i.cm = load <2 x double>, ptr %i.bo, align 8, !tbaa !61
  %.promoted1134 = load double, ptr %i.bp, align 8, !tbaa !61
  %i.cn = load <2 x double>, ptr %i.bq, align 8, !tbaa !61
  %.promoted1140 = load double, ptr %i.br, align 8, !tbaa !61
  %i.co = load <2 x double>, ptr %i.bs, align 8, !tbaa !61
  %i.cp = load <2 x double>, ptr %i.bt, align 8, !tbaa !61
  %i.cq = load <2 x double>, ptr %i.bu, align 8, !tbaa !61
  %i.cr = load <2 x double>, ptr %i.bv, align 8, !tbaa !61
  %i.cs = load <2 x double>, ptr %i.bw, align 8
  %i.ct = load <2 x double>, ptr %i.bx, align 8, !tbaa !61
  %.promoted1164 = load double, ptr %i.by, align 8, !tbaa !61
  %.promoted1166 = load double, ptr %i.bz, align 8, !tbaa !61
  %i.cu = load <2 x double>, ptr %i.ca, align 8, !tbaa !61
  %i.cv = load <2 x double>, ptr %i.cb, align 8, !tbaa !61
  %24 = load <1 x double>, ptr %i.cc, align 8
  %i.cw = shufflevector <1 x double> %24, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cx = load <2 x double>, ptr %i.cd, align 8, !tbaa !61
  %i.cy = insertelement <2 x double> %i.cs, double %.promoted1166, i64 1
  %i.cz = insertelement <4 x double> %i.cw, double %.promoted1164, i64 1
  %i.da = insertelement <4 x double> %i.cz, double %.promoted1140, i64 2
  %i.db = insertelement <4 x double> %i.da, double %.promoted1134, i64 3
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit384

bb.j:                                             ; preds = %.lr.ph459, %.preheader427
  %i.dd = phi double [ %.promoted1112, %.lr.ph459 ], [ %i.fz, %.preheader427 ]
  %indvars.iv519 = phi i64 [ 0, %.lr.ph459 ], [ %indvars.iv.next520, %.preheader427 ] ; 3 uses
  %i.de = phi <2 x double> [ %i.cy, %.lr.ph459 ], [ %i.hj, %.preheader427 ]
  %i.df = phi <2 x double> [ %i.ce, %.lr.ph459 ], [ %i.em, %.preheader427 ]
  %i.dg = phi <2 x double> [ %i.cf, %.lr.ph459 ], [ %i.fk, %.preheader427 ]
  %i.dh = phi <2 x double> [ %i.cg, %.lr.ph459 ], [ %i.fp, %.preheader427 ]
  %i.di = phi <2 x double> [ %i.ch, %.lr.ph459 ], [ %i.fg, %.preheader427 ]
  %i.dj = phi <2 x double> [ %i.ci, %.lr.ph459 ], [ %i.ey, %.preheader427 ]
  %i.dk = phi <2 x double> [ %i.cj, %.lr.ph459 ], [ %i.fs, %.preheader427 ]
  %i.dl = phi <2 x double> [ %i.ck, %.lr.ph459 ], [ %i.fu, %.preheader427 ]
  %i.dm = phi <2 x double> [ %i.cl, %.lr.ph459 ], [ %i.gc, %.preheader427 ]
  %i.dn = phi <2 x double> [ %i.cm, %.lr.ph459 ], [ %i.ge, %.preheader427 ]
  %i.do = phi <2 x double> [ %i.cn, %.lr.ph459 ], [ %i.gg, %.preheader427 ]
  %i.dp = phi <2 x double> [ %i.co, %.lr.ph459 ], [ %i.gk, %.preheader427 ]
  %i.dq = phi <2 x double> [ %i.cp, %.lr.ph459 ], [ %i.hb, %.preheader427 ]
  %i.dr = phi <2 x double> [ %i.cq, %.lr.ph459 ], [ %i.gq, %.preheader427 ]
  %i.ds = phi <2 x double> [ %i.cr, %.lr.ph459 ], [ %i.gv, %.preheader427 ]
  %i.dt = phi <2 x double> [ %i.ct, %.lr.ph459 ], [ %i.he, %.preheader427 ]
  %i.du = phi <2 x double> [ %i.cu, %.lr.ph459 ], [ %i.hm, %.preheader427 ]
  %i.dv = phi <2 x double> [ %i.cv, %.lr.ph459 ], [ %i.hp, %.preheader427 ]
  %i.dw = phi <2 x double> [ %i.cx, %.lr.ph459 ], [ %i.ib, %.preheader427 ]
  %i.dx = phi <4 x double> [ %i.db, %.lr.ph459 ], [ %i.hw, %.preheader427 ]
  %i.dy = trunc nuw nsw i64 %indvars.iv519 to i32
  br i1 %i.bf, label %.preheader427, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dz = load ptr, ptr %1, align 8, !tbaa !65
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv519
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !52
  br label %.preheader427

.preheader427:                                    ; preds = %bb.j, %bb.k
  %.in377 = phi i32 [ %i.eb, %bb.k ], [ %i.dy, %bb.j ]
  %i.ec = shl nsw i32 %.in377, 2
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load <2 x float>, ptr %i.ee, align 4, !tbaa !67
  %i.eh = fpext <2 x float> %i.eg to <2 x double> ; 11 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 0
  %i.ej = extractelement <2 x double> %i.eh, i64 1 ; 5 uses
  %i.ek = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.eh, <2 x double> zeroinitializer)
  %i.em = fadd <2 x double> %i.df, %i.el          ; 2 uses
  %i.en = load <2 x float>, ptr %i.ef, align 4, !tbaa !67
  %i.eo = fpext <2 x float> %i.en to <2 x double> ; 7 uses
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ep, %i.eh          ; 8 uses
  %i.er = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x double> %i.er, %i.eh          ; 7 uses
  %i.et = fmul <2 x double> %i.es, zeroinitializer ; 4 uses
  %i.eu = extractelement <2 x double> %i.eo, i64 0 ; 3 uses
  %i.ev = call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double 0.000000e+00)
  %i.ew = fadd <2 x double> %i.eh, zeroinitializer ; 2 uses
  %i.ex = insertelement <2 x double> %i.ew, double %i.ev, i64 0
  %i.ey = fadd <2 x double> %i.dj, %i.ex          ; 2 uses
  %i.ez = fmul <2 x double> %i.eh, splat (double -0.000000e+00) ; 5 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0
  %i.fb = fmul <2 x double> %i.eh, splat (double -0.000000e+00) ; 2 uses
  %i.fc = extractelement <2 x double> %i.eq, i64 0 ; 2 uses
  %i.fd = fneg <2 x double> %i.eh                 ; 5 uses
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.eq, <2 x double> %i.et)
  %i.fg = fadd <2 x double> %i.di, %i.ff          ; 2 uses
  %i.fh = extractelement <2 x double> %i.fd, i64 0 ; 2 uses
  %i.fi = call double @llvm.fmuladd.f64(double %i.fh, double 0.000000e+00, double %i.fa)
  %i.fj = insertelement <2 x double> %i.ew, double %i.fi, i64 1
  %i.fk = fadd <2 x double> %i.dg, %i.fj          ; 2 uses
  %i.fl = shufflevector <2 x double> %i.eq, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.fm = shufflevector <2 x double> %i.ez, <2 x double> %i.et, <2 x i32> <i32 1, i32 2>
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fl, <2 x double> %i.fm) ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.fp = fadd <2 x double> %i.dh, %i.fo          ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> zeroinitializer, <2 x double> %i.ez)
  %i.fs = fadd <2 x double> %i.dk, %i.fr          ; 2 uses
  %i.ft = shufflevector <2 x double> %i.fb, <2 x double> %i.fn, <2 x i32> <i32 1, i32 3>
  %i.fu = fadd <2 x double> %i.dl, %i.ft          ; 2 uses
  %i.fv = shufflevector <2 x double> %i.et, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fw = fmul <2 x double> %i.fv, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1 ; 2 uses
  %i.fy = call double @llvm.fmuladd.f64(double %i.fh, double %i.eu, double %i.fx)
  %i.fz = fadd double %i.dd, %i.fy                ; 2 uses
  %i.ga = shufflevector <2 x double> %i.eq, <2 x double> %i.eo, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.ga, <2 x double> %i.fw)
  %i.gc = fadd <2 x double> %i.dm, %i.gb          ; 2 uses
  %i.gd = shufflevector <2 x double> %i.ez, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ge = fadd <2 x double> %i.dn, %i.gd          ; 2 uses
  %i.gf = fsub <2 x double> %i.et, %i.eq
  %i.gg = fadd <2 x double> %i.do, %i.gf          ; 2 uses
  %i.gh = fsub double %i.fx, %i.eu
  %i.gi = fmul <2 x double> %i.ek, %i.eh
  %i.gj = fadd <2 x double> %i.gi, <double -0.000000e+00, double 0.000000e+00>
  %i.gk = fadd <2 x double> %i.dp, %i.gj          ; 2 uses
  %i.gl = fadd double %i.ei, 0.000000e+00
  %i.gm = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gn = shufflevector <2 x double> %i.es, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.go = fmul <2 x double> %i.gn, %i.fe
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.go)
  %i.gq = fadd <2 x double> %i.dr, %i.gp          ; 3 uses
  %i.gr = fmul double %i.ej, %i.ej
  %i.gs = fadd double %i.ej, 0.000000e+00
  %i.gt = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gs, i64 1
  %i.gv = fadd <2 x double> %i.ds, %i.gu          ; 3 uses
  %i.gw = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gx = fmul <2 x double> %i.gw, %i.fd          ; 2 uses
  %i.gy = extractelement <2 x double> %i.gx, i64 0
  %i.gz = call double @llvm.fmuladd.f64(double %i.fc, double 0.000000e+00, double %i.gy)
  %i.ha = insertelement <2 x double> %i.gm, double %i.gz, i64 1
  %i.hb = fadd <2 x double> %i.dq, %i.ha          ; 2 uses
  %i.hc = fmul <2 x double> %i.gn, %i.fq
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.hc)
  %i.he = fadd <2 x double> %i.dt, %i.hd          ; 2 uses
  %i.hf = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hg = fneg <2 x double> %i.es
  %i.hh = shufflevector <2 x double> %i.gx, <2 x double> %i.hg, <2 x i32> <i32 1, i32 2>
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> zeroinitializer, <2 x double> %i.hh)
  %i.hj = fadd <2 x double> %i.de, %i.hi          ; 4 uses
  %i.hk = fneg <2 x double> %i.gn
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.hk)
  %i.hm = fadd <2 x double> %i.du, %i.hl          ; 2 uses
  %i.hn = fmul <2 x double> %i.gw, %i.es
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.eq, <2 x double> %i.hn)
  %i.hp = fadd <2 x double> %i.dv, %i.ho          ; 2 uses
  %shift = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.es, %shift
  %i.hq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hr = call double @llvm.fmuladd.f64(double %i.fc, double %i.eu, double %i.hq)
  %i.hs = shufflevector <2 x double> %i.ez, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ht = shufflevector <4 x double> %i.hs, <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, <4 x i32> <i32 poison, i32 5, i32 poison, i32 1>
  %i.hu = insertelement <4 x double> %i.ht, double %i.hr, i64 0
  %i.hv = insertelement <4 x double> %i.hu, double %i.gh, i64 2
  %i.hw = fadd <4 x double> %i.dx, %i.hv          ; 5 uses
  %i.hx = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = fmul <2 x double> %i.hx, %i.gn
  %i.hz = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ga, <2 x double> %i.hy)
  %i.ib = fadd <2 x double> %i.dw, %i.ia          ; 2 uses
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %.loopexit.loopexit, label %bb.j, !llvm.loop !202

bb.l:                                             ; preds = %.lr.ph455, %.loopexit430
  %i.ic = phi double [ 0.000000e+00, %.lr.ph455 ], [ %i.or, %.loopexit430 ]
  %i.id = phi double [ 0.000000e+00, %.lr.ph455 ], [ %i.os, %.loopexit430 ]
  %indvars.iv506 = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next507, %.loopexit430 ] ; 4 uses
  %i.ie = phi <2 x double> [ zeroinitializer, %.lr.ph455 ], [ %i.ot, %.loopexit430 ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv506
  %i.ig = load double, ptr %i.if, align 8, !tbaa !61 ; 8 uses
  %i.ih = fcmp olt double %i.ig, f0x3E80000000000000
  br i1 %i.ih, label %.loopexit430, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ii = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = trunc nuw nsw i64 %indvars.iv506 to i32
  br i1 %i.ij, label %.preheader429, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.il = load ptr, ptr %1, align 8, !tbaa !65
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv506
  %i.in = load i32, ptr %i.im, align 4, !tbaa !52
  br label %.preheader429

.preheader429:                                    ; preds = %bb.m, %bb.n
  %.in368 = phi i32 [ %i.in, %bb.n ], [ %i.ik, %bb.m ]
  %i.io = shl nsw i32 %.in368, 2
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ip ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  %i.is = load <2 x double>, ptr %i.aj, align 8
  %i.it = load double, ptr %i.ar, align 8, !tbaa !61
  %i.iu = load <2 x double>, ptr %i.aw, align 8
  %i.iv = load <2 x double>, ptr %i.ay, align 8
  %i.iw = load double, ptr %i.az, align 8, !tbaa !61
  %i.ix = load <2 x float>, ptr %i.ir, align 4, !tbaa !67
  %i.iy = fpext <2 x float> %i.ix to <2 x double>
  %i.iz = insertelement <2 x double> poison, double %i.ig, i64 0 ; 2 uses
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x double> %i.ja, %i.iy          ; 9 uses
  %i.jc = load <2 x float>, ptr %i.iq, align 4, !tbaa !67
  %i.jd = fpext <2 x float> %i.jc to <2 x double> ; 3 uses
  %i.je = fneg double %i.ig                       ; 8 uses
  %i.jf = extractelement <2 x double> %i.jd, i64 1 ; 2 uses
  %i.jg = fmul double %i.jf, %i.je                ; 5 uses
  %i.jh = insertelement <2 x double> %i.jb, double %i.je, i64 0
end_hunk_0
begin_hunk_1_@_ZNK2cv4usac30HomographyNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  %.sroa.181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 352
  %i.ame = extractelement <4 x double> %i.alv, i64 2 ; 2 uses
  store double %i.ame, ptr %.sroa.181.0..sroa_idx, align 16, !tbaa !61
  %.sroa.186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 360
  %i.amf = shufflevector <2 x double> %i.ald, <2 x double> %i.alh, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.amf, ptr %.sroa.186.0..sroa_idx, align 8, !tbaa !61
  %.sroa.188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 376
  %i.amg = shufflevector <2 x double> %i.alk, <2 x double> %i.aln, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.amg, ptr %.sroa.188.0..sroa_idx, align 8, !tbaa !61
  %.sroa.190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 392
  %i.amh = extractelement <2 x double> %i.alp, i64 1
  store double %i.amh, ptr %.sroa.190.0..sroa_idx, align 8, !tbaa !61
  %.sroa.191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 400
  store <2 x double> %i.alr, ptr %.sroa.191.0..sroa_idx, align 16, !tbaa !61
  %.sroa.200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 416
  store <2 x double> %i.als, ptr %.sroa.200.0..sroa_idx, align 16, !tbaa !61
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 432
  %i.ami = shufflevector <2 x double> %i.ale, <2 x double> %i.alh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ami, ptr %.sroa.210.0..sroa_idx, align 16, !tbaa !61
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 448
  %i.amj = shufflevector <2 x double> %i.all, <2 x double> %i.aln, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.amj, ptr %.sroa.212.0..sroa_idx, align 16, !tbaa !61
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 464
  %i.amk = shufflevector <2 x double> %i.alq, <2 x double> %i.alr, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.amk, ptr %.sroa.214.0..sroa_idx, align 16, !tbaa !61
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 480
  store <2 x double> %i.alt, ptr %.sroa.216.0..sroa_idx, align 16, !tbaa !61
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 496
  %i.aml = extractelement <4 x double> %i.alv, i64 3 ; 2 uses
  store double %i.aml, ptr %.sroa.225.0..sroa_idx, align 16, !tbaa !61
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 504
  %i.amm = shufflevector <2 x double> %i.ale, <2 x double> %i.ali, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.amm, ptr %.sroa.230.0..sroa_idx, align 8, !tbaa !61
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 520
  %i.amn = shufflevector <2 x double> %i.all, <2 x double> %i.alo, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.amn, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !61
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 536
  %i.amo = shufflevector <2 x double> %i.alq, <2 x double> %i.als, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.amo, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !61
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 552
  %i.amp = extractelement <2 x double> %i.alt, i64 1
  store double %i.amp, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !61
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 560
  store <2 x double> %i.alu, ptr %.sroa.237.0..sroa_idx, align 16, !tbaa !61
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 576
  store double %i.alw, ptr %.sroa.246.0..sroa_idx, align 16, !tbaa !61
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 584
  %i.amq = extractelement <2 x double> %i.ali, i64 1
  store double %i.amq, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !61
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 592
  store double %i.alz, ptr %.sroa.248.0..sroa_idx, align 16, !tbaa !61
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 600
  %i.amr = extractelement <2 x double> %i.alo, i64 1
  store double %i.amr, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !61
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 608
  store double %i.ame, ptr %.sroa.250.0..sroa_idx, align 16, !tbaa !61
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 616
  %i.ams = extractelement <2 x double> %i.als, i64 1
  store double %i.ams, ptr %.sroa.251.0..sroa_idx, align 8, !tbaa !61
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 624
  store double %i.aml, ptr %.sroa.252.0..sroa_idx, align 16, !tbaa !61
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 632
  %i.amt = extractelement <2 x double> %i.alu, i64 1
  store double %i.amt, ptr %.sroa.253.0..sroa_idx, align 8, !tbaa !61
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 640
  store double %.sroa.254.3, ptr %.sroa.254.0..sroa_idx, align 16, !tbaa !61
  %i.amu = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 -1056833530, ptr %16, align 8, !tbaa !78
  %i.amv = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %i.amv, align 8, !tbaa !79
  store i64 38654705673, ptr %i.amu, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.amw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 -1040056314, ptr %18, align 8, !tbaa !78
  store ptr %15, ptr %i.amw, align 8, !tbaa !79
  %i.amx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 38654705665, ptr %i.amx, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.amy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 -1040056314, ptr %19, align 8, !tbaa !78
  store ptr %14, ptr %i.amy, align 8, !tbaa !79
  %i.amz = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 38654705673, ptr %i.amz, align 8, !tbaa !52
  %i.ana = invoke noundef zeroext i1 @_ZN2cv5eigenERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.loopexit436
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %i.ana, label %bb.ae, label %.critedge381

bb.ad:                                            ; preds = %.loopexit436
  %i.anb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.anc = getelementptr inbounds nuw i8, ptr %14, i64 576
  invoke void @_ZN2cv3MatC2EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.anc, i64 noundef 0)
          to label %_ZN2cv4Mat_IdEC2EiiPdm.exit unwind label %bb.ah

_ZN2cv4Mat_IdEC2EiiPdm.exit:                      ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !208
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %.noexc386 unwind label %bb.ai

.noexc386:                                        ; preds = %_ZN2cv4Mat_IdEC2EiiPdm.exit
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %20) #18
  %i.and = load i32, ptr %20, align 8, !tbaa !84, !alias.scope !208
  %i.ane = and i32 %i.and, -4096
  %i.anf = or disjoint i32 %i.ane, 6
  store i32 %i.anf, ptr %20, align 8, !tbaa !84, !alias.scope !208
  %i.ang = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.af unwind label %.body.i   ; 0 uses

.body.i:                                          ; preds = %.noexc386
  %i.anh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !208
  br label %.body

bb.af:                                            ; preds = %.noexc386
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !208
  %i.ani = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.ag unwind label %bb.aj     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #18
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.am

bb.ah:                                            ; preds = %bb.ae
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN2cv4Mat_IdEC2EiiPdm.exit
  %i.ank = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.af
  %i.anl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #18
  br label %.body

.body:                                            ; preds = %bb.ai, %.body.i, %bb.aj
  %.pn363 = phi { ptr, i32 } [ %i.anl, %bb.aj ], [ %i.ank, %bb.ai ], [ %i.anh, %.body.i ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #18
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.ah
  %.pn363.pn = phi { ptr, i32 } [ %.pn363, %.body ], [ %i.anj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ad
  %.pn363.pn.pn = phi { ptr, i32 } [ %.pn363.pn, %bb.ak ], [ %i.anb, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.aw

_ZNSt6vectorIdSaIdEED2Ev.exit388:                 ; preds = %._crit_edge.7
  %i.anm = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ann = ptrtoint ptr %i.anm to i64
  %i.ano = ptrtoint ptr %i.yi to i64
  %i.anp = sub i64 %i.ann, %i.ano
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.anp) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %_ZNSt6vectorIdSaIdEED2Ev.exit388
  %i.anq = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !55 ; 6 uses
  %i.ans = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.ant = trunc nuw i8 %i.ans to i1              ; 6 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.sel295 = select i1 %i.ant, ptr %8, ptr %i.anu
  %i.anv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.sel = select i1 %i.ant, ptr %9, ptr %i.anv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %25 = load <1 x double>, ptr %.sroa.sel295, align 8
  %26 = load <1 x double>, ptr %.sroa.sel, align 8
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anr, i64 48
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.gep412 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.sel.sroa.sel = select i1 %i.ant, ptr %.sroa.gep, ptr %.sroa.gep412
  %27 = load <1 x double>, ptr %.sroa.sel.sroa.sel, align 8 ; 2 uses
  %28 = shufflevector <1 x double> %27, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anr, i64 16
  %i.any = load double, ptr %i.anx, align 8, !tbaa !61
  %.sroa.gep416 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.gep417 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.sel295.sroa.sel = select i1 %i.ant, ptr %.sroa.gep416, ptr %.sroa.gep417
  %i.anz = load double, ptr %.sroa.sel295.sroa.sel, align 8, !tbaa !61 ; 2 uses
  %.sroa.gep418 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.gep419 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.sel295.sroa.sel420 = select i1 %i.ant, ptr %.sroa.gep418, ptr %.sroa.gep419
  %i.aoa = load double, ptr %.sroa.sel295.sroa.sel420, align 8, !tbaa !61 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anr, i64 64
  %i.aoc = load double, ptr %i.aob, align 8, !tbaa !61 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anr, i64 24
  %.sroa.gep413 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.sroa.gep414 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.sroa.sel.sroa.sel415 = select i1 %i.ant, ptr %.sroa.gep413, ptr %.sroa.gep414
  %i.aoe = load double, ptr %.sroa.sel.sroa.sel415, align 8, !tbaa !61 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anr, i64 40
  %i.aog = load double, ptr %i.aof, align 8, !tbaa !61
  %i.aoh = load <2 x double>, ptr %i.anr, align 8, !tbaa !61
  %i.aoi = shufflevector <1 x double> %26, <1 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.aoj = fdiv <2 x double> %i.aoh, %i.aoi
  %i.aok = load <2 x double>, ptr %i.anw, align 8, !tbaa !61 ; 5 uses
  %i.aol = shufflevector <1 x double> %27, <1 x double> poison, <2 x i32> zeroinitializer
  %i.aom = fmul <2 x double> %i.aol, %i.aok
  %i.aon = fdiv <2 x double> %i.aom, %i.aoi
  %i.aoo = fsub <2 x double> %i.aoj, %i.aon       ; 3 uses
  %i.aop = shufflevector <1 x double> %25, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aoq = fmul <2 x double> %i.aop, %i.aoo
  %i.aor = extractelement <2 x double> %i.aok, i64 0
  %i.aos = extractelement <2 x double> %i.aok, i64 1
  %i.aot = call double @llvm.fmuladd.f64(double %i.aor, double %i.anz, double %i.aoc)
  %i.aou = call double @llvm.fmuladd.f64(double %i.aos, double %i.aoa, double %i.aot)
  store <2 x double> %i.aoq, ptr %23, align 16, !tbaa !61
  %i.aov = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.aow = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.aox = load <2 x double>, ptr %i.aod, align 8, !tbaa !61
  %i.aoy = fdiv <2 x double> %i.aox, %i.aoi
  %i.aoz = insertelement <2 x double> poison, double %i.aoe, i64 0
  %i.apa = shufflevector <2 x double> %i.aoz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apb = fmul <2 x double> %i.aok, %i.apa
  %i.apc = fdiv <2 x double> %i.apb, %i.aoi
  %i.apd = fsub <2 x double> %i.aoy, %i.apc       ; 3 uses
  %i.ape = fmul <2 x double> %i.aop, %i.apd
  %i.apf = insertelement <2 x double> poison, double %i.any, i64 0
  %i.apg = insertelement <2 x double> %i.apf, double %i.aog, i64 1
  %i.aph = fdiv <2 x double> %i.apg, %i.aoi
  %i.api = insertelement <2 x double> poison, double %i.aoc, i64 0
  %i.apj = shufflevector <2 x double> %i.api, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apk = insertelement <2 x double> %28, double %i.aoe, i64 1
  %i.apl = fmul <2 x double> %i.apj, %i.apk
  %i.apm = fdiv <2 x double> %i.apl, %i.aoi
  %i.apn = insertelement <2 x double> poison, double %i.anz, i64 0
  %i.apo = shufflevector <2 x double> %i.apn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.app = shufflevector <2 x double> %i.aoo, <2 x double> %i.apd, <2 x i32> <i32 0, i32 2>
  %i.apq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apo, <2 x double> %i.app, <2 x double> %i.aph)
  %i.apr = insertelement <2 x double> poison, double %i.aoa, i64 0
  %i.aps = shufflevector <2 x double> %i.apr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apt = shufflevector <2 x double> %i.aoo, <2 x double> %i.apd, <2 x i32> <i32 1, i32 3>
  %i.apu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aps, <2 x double> %i.apt, <2 x double> %i.apq)
  %i.apv = fsub <2 x double> %i.apu, %i.apm       ; 2 uses
  %i.apw = extractelement <2 x double> %i.apv, i64 0
  store double %i.apw, ptr %i.aov, align 16, !tbaa !61
  store <2 x double> %i.ape, ptr %i.aow, align 8, !tbaa !61
  %i.apx = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.apy = extractelement <2 x double> %i.apv, i64 1
  store double %i.apy, ptr %i.apx, align 8, !tbaa !61
  %i.apz = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.aqa = fmul <2 x double> %i.aop, %i.aok
  store <2 x double> %i.aqa, ptr %i.apz, align 16, !tbaa !61
  %i.aqb = getelementptr inbounds nuw i8, ptr %23, i64 64
  store double %i.aou, ptr %i.aqb, align 16, !tbaa !61
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %22, align 16, !tbaa !52
  %i.aqc = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 153, ptr %i.aqc, align 16, !tbaa !85
  %i.aqd = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aqe = getelementptr inbounds nuw i8, ptr %22, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aqd, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.aqe, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc389 unwind label %bb.at

.noexc389:                                        ; preds = %bb.am
  %i.aqf = getelementptr inbounds nuw i8, ptr %22, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aqf, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %23, i64 noundef 0)
          to label %.noexc390 unwind label %bb.at

.noexc390:                                        ; preds = %.noexc389
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.aqg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aqh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.aqh, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !78
  store ptr %22, ptr %i.aqg, align 8, !tbaa !79
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %.noexc390
  %i.aqi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body391

bb.ao:                                            ; preds = %.noexc390
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.aqj = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #17
          to label %.noexc402 unwind label %.body403.thread ; 4 uses

.noexc402:                                        ; preds = %bb.ao
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aqj, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc402
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 208 ; 2 uses
  %i.aql = load ptr, ptr %3, align 8, !tbaa !72   ; 5 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !73 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !74
  store ptr %i.aqj, ptr %3, align 8, !tbaa !72
  store ptr %i.aqk, ptr %i.aqm, align 8, !tbaa !73
  store ptr %i.aqk, ptr %i.aqo, align 8, !tbaa !74
  %.not4.i.i.i.i.i = icmp eq ptr %i.aql, %i.aqn
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i:   ; preds = %.noexc402
  %i.aqq = landingpad { ptr, i32 }
          catch ptr null
  %i.aqr = extractvalue { ptr, i32 } %i.aqq, 0
  %i.aqs = call ptr @__cxa_begin_catch(ptr %i.aqr) #18 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body403 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aqu = landingpad { ptr, i32 }
          catch ptr null
  %i.aqv = extractvalue { ptr, i32 } %i.aqu, 0
  call void @__clang_call_terminate(ptr %i.aqv) #20
  unreachable

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body403.thread:                                  ; preds = %bb.ao
  %i.aqw = landingpad { ptr, i32 }
          cleanup
  br label %.body394

.body403:                                         ; preds = %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.aqj, i64 noundef 208) #19
  br label %.body394

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aqx, %.lr.ph.i.i.i.i.i ], [ %i.aql, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #18
  %i.aqx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aqx, %i.aqn
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.not.i.i1.i.i.i = icmp eq ptr %i.aql, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.aqy = ptrtoint ptr %i.aqp to i64
  %i.aqz = ptrtoint ptr %i.aql to i64
  %i.ara = sub i64 %i.aqy, %i.aqz
  call void @_ZdlPvm(ptr noundef nonnull %i.aql, i64 noundef %i.ara) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.as
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.av

bb.at:                                            ; preds = %.noexc389, %bb.am
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %.body391

.body394:                                         ; preds = %.body403, %.body403.thread
  %eh.lpad-body395 = phi { ptr, i32 } [ %i.aqt, %.body403 ], [ %i.aqw, %.body403.thread ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #18
  br label %.body391

.body391:                                         ; preds = %.body394, %bb.at, %bb.an
  %.pn373 = phi { ptr, i32 } [ %i.aqi, %bb.an ], [ %i.arb, %bb.at ], [ %eh.lpad-body395, %.body394 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.aw

.critedge:                                        ; preds = %bb.o
  %i.arc = load ptr, ptr %12, align 8, !tbaa !58  ; 3 uses
  %.not.i.i.i398 = icmp eq ptr %i.arc, null
  br i1 %.not.i.i.i398, label %_ZNSt6vectorIdSaIdEED2Ev.exit399, label %bb.au

bb.au:                                            ; preds = %.critedge
  %i.ard = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.are = ptrtoint ptr %i.ard to i64
  %i.arf = ptrtoint ptr %i.arc to i64
  %i.arg = sub i64 %i.are, %i.arf
  call void @_ZdlPvm(ptr noundef nonnull %i.arc, i64 noundef %i.arg) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit399

_ZNSt6vectorIdSaIdEED2Ev.exit399:                 ; preds = %.critedge, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.av

.critedge381:                                     ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %.critedge381, %_ZNSt6vectorIdSaIdEED2Ev.exit399, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %.5 = phi i32 [ 1, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ 0, %.critedge381 ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit399 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ay

bb.aw:                                            ; preds = %.body391, %bb.al, %_ZNSt6vectorIdSaIdEED2Ev.exit384
  %.pn373.pn = phi { ptr, i32 } [ %.pn373, %.body391 ], [ %.pn369.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit384 ], [ %.pn363.pn.pn, %bb.al ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.d
  %.pn373.pn.pn = phi { ptr, i32 } [ %.pn373.pn, %bb.aw ], [ %i.n, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  resume { ptr, i32 } %.pn373.pn.pn

bb.ay:                                            ; preds = %bb.a, %bb.av
end_hunk_1
