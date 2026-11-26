Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv22getUndistortRectanglesERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEERNS_5Rect_IdEES7_:.split.us.8
  %i.eb = add nsw i32 %.5.1, 1
  %i.ec = sext i32 %.5.1 to i64
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ec
  %i.ee = load <2 x double>, ptr %i.ed, align 8, !tbaa !31 ; 4 uses
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.eg = extractelement <2 x double> %i.ee, i64 1 ; 2 uses
  %i.eh = fcmp ogt <4 x double> %i.ea, %i.ef
  %i.ei = fcmp olt <4 x double> %i.ea, %i.ef
  %i.ej = shufflevector <4 x i1> %i.ei, <4 x i1> %i.eh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ek = select <4 x i1> %i.ej, <4 x double> %i.ef, <4 x double> %i.ea
  %i.el = fcmp ogt <2 x double> %i.dz, %i.ee
  %i.em = insertelement <2 x i1> <i1 false, i1 poison>, i1 %i.bx, i64 1
  %i.en = select <2 x i1> %i.em, <2 x i1> %i.el, <2 x i1> zeroinitializer
  %i.eo = fcmp olt double %.3104.1, %i.eg
  %i.ep = select i1 %i.bw, i1 %i.eo, i1 false
  %.2103.2 = select i1 %i.ep, double %i.eg, double %.3104.1
  %i.eq = select <2 x i1> %i.en, <2 x double> %i.ee, <2 x double> %i.dz
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.5.2 = phi i32 [ %.5.1, %bb.f ], [ %i.eb, %bb.g ] ; 3 uses
  %.3104.2 = phi double [ %.3104.1, %bb.f ], [ %.2103.2, %bb.g ] ; 3 uses
  %i.er = phi <2 x double> [ %i.dz, %bb.f ], [ %i.eq, %bb.g ] ; 3 uses
  %i.es = phi <4 x double> [ %i.ea, %bb.f ], [ %i.ek, %bb.g ] ; 4 uses
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.et = add nsw i32 %.5.2, 1
  %i.eu = sext i32 %.5.2 to i64
  %i.ev = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.eu
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !31 ; 4 uses
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ey = extractelement <2 x double> %i.ew, i64 1 ; 2 uses
  %i.ez = fcmp ogt <4 x double> %i.es, %i.ex
  %i.fa = fcmp olt <4 x double> %i.es, %i.ex
  %i.fb = shufflevector <4 x i1> %i.fa, <4 x i1> %i.ez, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fc = select <4 x i1> %i.fb, <4 x double> %i.ex, <4 x double> %i.es
  %i.fd = fcmp ogt <2 x double> %i.er, %i.ew
  %i.fe = insertelement <2 x i1> <i1 false, i1 poison>, i1 %i.bx, i64 1
  %i.ff = select <2 x i1> %i.fe, <2 x i1> %i.fd, <2 x i1> zeroinitializer
  %i.fg = fcmp olt double %.3104.2, %i.ey
  %i.fh = select i1 %i.bw, i1 %i.fg, i1 false
  %.2103.3 = select i1 %i.fh, double %i.ey, double %.3104.2
  %i.fi = select <2 x i1> %i.ff, <2 x double> %i.ew, <2 x double> %i.er
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.5.3 = phi i32 [ %.5.2, %bb.h ], [ %i.et, %bb.i ] ; 3 uses
  %.3104.3 = phi double [ %.3104.2, %bb.h ], [ %.2103.3, %bb.i ] ; 3 uses
  %i.fj = phi <2 x double> [ %i.er, %bb.h ], [ %i.fi, %bb.i ] ; 3 uses
  %i.fk = phi <4 x double> [ %i.es, %bb.h ], [ %i.fc, %bb.i ] ; 4 uses
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fl = add nsw i32 %.5.3, 1
  %i.fm = sext i32 %.5.3 to i64
  %i.fn = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.fm
  %i.fo = load <2 x double>, ptr %i.fn, align 8, !tbaa !31 ; 4 uses
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fq = extractelement <2 x double> %i.fo, i64 1 ; 2 uses
  %i.fr = fcmp ogt <4 x double> %i.fk, %i.fp
  %i.fs = fcmp olt <4 x double> %i.fk, %i.fp
  %i.ft = shufflevector <4 x i1> %i.fs, <4 x i1> %i.fr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fu = select <4 x i1> %i.ft, <4 x double> %i.fp, <4 x double> %i.fk
  %i.fv = fcmp ogt <2 x double> %i.fj, %i.fo
  %i.fw = insertelement <2 x i1> <i1 false, i1 poison>, i1 %i.bx, i64 1
  %i.fx = select <2 x i1> %i.fw, <2 x i1> %i.fv, <2 x i1> zeroinitializer
  %i.fy = fcmp olt double %.3104.3, %i.fq
  %i.fz = select i1 %i.bw, i1 %i.fy, i1 false
  %.2103.4 = select i1 %i.fz, double %i.fq, double %.3104.3
  %i.ga = select <2 x i1> %i.fx, <2 x double> %i.fo, <2 x double> %i.fj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.4 = phi i32 [ %.5.3, %bb.j ], [ %i.fl, %bb.k ] ; 3 uses
  %.3104.4 = phi double [ %.3104.3, %bb.j ], [ %.2103.4, %bb.k ] ; 3 uses
  %i.gb = phi <2 x double> [ %i.fj, %bb.j ], [ %i.ga, %bb.k ] ; 3 uses
  %i.gc = phi <4 x double> [ %i.fk, %bb.j ], [ %i.fu, %bb.k ] ; 4 uses
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gd = add nsw i32 %.5.4, 1
  %i.ge = sext i32 %.5.4 to i64
  %i.gf = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ge
  %i.gg = load <2 x double>, ptr %i.gf, align 8, !tbaa !31 ; 4 uses
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.gi = extractelement <2 x double> %i.gg, i64 1 ; 2 uses
  %i.gj = fcmp ogt <4 x double> %i.gc, %i.gh
  %i.gk = fcmp olt <4 x double> %i.gc, %i.gh
  %i.gl = shufflevector <4 x i1> %i.gk, <4 x i1> %i.gj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gm = select <4 x i1> %i.gl, <4 x double> %i.gh, <4 x double> %i.gc
  %i.gn = fcmp ogt <2 x double> %i.gb, %i.gg
  %i.go = insertelement <2 x i1> <i1 false, i1 poison>, i1 %i.bx, i64 1
  %i.gp = select <2 x i1> %i.go, <2 x i1> %i.gn, <2 x i1> zeroinitializer
  %i.gq = fcmp olt double %.3104.4, %i.gi
  %i.gr = select i1 %i.bw, i1 %i.gq, i1 false
  %.2103.5 = select i1 %i.gr, double %i.gi, double %.3104.4
  %i.gs = select <2 x i1> %i.gp, <2 x double> %i.gg, <2 x double> %i.gb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5.5 = phi i32 [ %.5.4, %bb.l ], [ %i.gd, %bb.m ] ; 3 uses
  %.3104.5 = phi double [ %.3104.4, %bb.l ], [ %.2103.5, %bb.m ] ; 3 uses
  %i.gt = phi <2 x double> [ %i.gb, %bb.l ], [ %i.gs, %bb.m ] ; 3 uses
  %i.gu = phi <4 x double> [ %i.gc, %bb.l ], [ %i.gm, %bb.m ] ; 4 uses
  br i1 %.not, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.gv = add nsw i32 %.5.5, 1
  %i.gw = sext i32 %.5.5 to i64
  %i.gx = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.gw
  %i.gy = load <2 x double>, ptr %i.gx, align 8, !tbaa !31 ; 4 uses
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ha = extractelement <2 x double> %i.gy, i64 1 ; 2 uses
  %i.hb = fcmp ogt <4 x double> %i.gu, %i.gz
  %i.hc = fcmp olt <4 x double> %i.gu, %i.gz
  %i.hd = shufflevector <4 x i1> %i.hc, <4 x i1> %i.hb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.he = select <4 x i1> %i.hd, <4 x double> %i.gz, <4 x double> %i.gu
  %i.hf = fcmp ogt <2 x double> %i.gt, %i.gy
  %i.hg = insertelement <2 x i1> <i1 false, i1 poison>, i1 %i.bx, i64 1
  %i.hh = select <2 x i1> %i.hg, <2 x i1> %i.hf, <2 x i1> zeroinitializer
  %i.hi = fcmp olt double %.3104.5, %i.ha
  %i.hj = select i1 %i.bw, i1 %i.hi, i1 false
  %.2103.6 = select i1 %i.hj, double %i.ha, double %.3104.5
  %i.hk = select <2 x i1> %i.hh, <2 x double> %i.gy, <2 x double> %i.gt
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.o
  %.5.6 = phi i32 [ %.5.5, %bb.n ], [ %i.gv, %bb.o ] ; 2 uses
  %.3104.6 = phi double [ %.3104.5, %bb.n ], [ %.2103.6, %bb.o ] ; 2 uses
  %i.hl = phi <2 x double> [ %i.gt, %bb.n ], [ %i.hk, %bb.o ] ; 2 uses
  %i.hm = phi <4 x double> [ %i.gu, %bb.n ], [ %i.he, %bb.o ] ; 3 uses
  %i.hn = add nsw i32 %.5.6, 1
  %i.ho = sext i32 %.5.6 to i64
  %i.hp = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ho
  %i.hq = load <2 x double>, ptr %i.hp, align 8, !tbaa !31 ; 4 uses
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hs = extractelement <2 x double> %i.hq, i64 1 ; 2 uses
  %i.ht = fcmp ogt <4 x double> %i.hm, %i.hr
  %i.hu = fcmp olt <4 x double> %i.hm, %i.hr
  %i.hv = shufflevector <4 x i1> %i.hu, <4 x i1> %i.ht, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hw = select <4 x i1> %i.hv, <4 x double> %i.hr, <4 x double> %i.hm ; 5 uses
  %i.hx = fcmp ogt <2 x double> %i.hl, %i.hq
  %i.hy = insertelement <2 x i1> <i1 true, i1 poison>, i1 %i.bx, i64 1
  %i.hz = select <2 x i1> %i.hy, <2 x i1> %i.hx, <2 x i1> zeroinitializer
  %i.ia = fcmp olt double %.3104.6, %i.hs
  %i.ib = select i1 %i.bw, i1 %i.ia, i1 false
  %.2103.7 = select i1 %i.ib, double %i.hs, double %.3104.6 ; 3 uses
  %i.ic = select <2 x i1> %i.hz, <2 x double> %i.hq, <2 x double> %i.hl ; 2 uses
  %i.id = add nuw nsw i32 %.1122149, 1            ; 2 uses
  %exitcond203.not = icmp eq i32 %i.id, 9
  br i1 %exitcond203.not, label %bb.p, label %.peel.next, !llvm.loop !286

bb.p:                                             ; preds = %.loopexit
  %i.ie = insertelement <2 x double> poison, double %.2111.peel, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %.2103.7, i64 1
  %i.ig = fsub <2 x double> %i.ic, %i.if
  store double %.2111.peel, ptr %5, align 8, !tbaa !31
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %.2103.7, ptr %.sroa.4129.0..sroa_idx, align 8, !tbaa !31
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x double> %i.ig, ptr %.sroa.5130.0..sroa_idx, align 8, !tbaa !31
  %i.ih = extractelement <4 x double> %i.hw, i64 2
  %i.ii = extractelement <4 x double> %i.hw, i64 3
  %i.ij = shufflevector <4 x double> %i.hw, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ik = shufflevector <4 x double> %i.hw, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.il = fsub <2 x double> %i.ij, %i.ik          ; 2 uses
  store double %i.ih, ptr %6, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.ii, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.im = extractelement <2 x double> %i.il, i64 0
  store double %i.im, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.in = extractelement <2 x double> %i.il, i64 1
  store double %i.in, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv25getOptimalNewCameraMatrixERKNS_11_InputArrayES2_NS_5Size_IiEEdS4_PNS_5Rect_IiEEb(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, double noundef %4, i64 %5, ptr nofree noundef writeonly captures(address_is_null) %6, i1 noundef zeroext %7) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::Rect_", align 16        ; 13 uses
  %9 = alloca %"class.cv::Rect_", align 16        ; 11 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %.sroa.5.0.extract.shift = lshr i64 %3, 32
  %.sroa.8.0.extract.shift = lshr i64 %5, 32
  %.sroa.080.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.sroa.0322.0.extract.trunc = trunc i64 %5 to i32 ; 2 uses
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %24 = mul nsw i32 %.sroa.7.0.extract.trunc, %.sroa.0322.0.extract.trunc
  %.not = icmp eq i32 %24, 0                      ; 2 uses
  %..copy.fca.0.load.sroa.speculated = select i1 %.not, i32 %.sroa.080.0.extract.trunc, i32 %.sroa.0322.0.extract.trunc ; 8 uses
  %..copy.fca.1.load.sroa.speculated = select i1 %.not, i32 %.sroa.8.0.extract.trunc, i32 %.sroa.7.0.extract.trunc ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !289
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !289
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.f, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !50
  store ptr %0, ptr %i.e, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.g = load i32, ptr %0, align 8, !tbaa !20
  %i.h = and i32 %i.g, 16384
  %.not320 = icmp eq i32 %i.h, 0
  br i1 %.not320, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv25getOptimalNewCameraMatrixERKNS_11_InputArrayES2_NS_5Size_IiEEdS4_PNS_5Rect_IiEEb, ptr noundef nonnull @.str.1, i32 noundef 1550) #21
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %12, align 8, !tbaa !24    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.o = load i64, ptr %i.m, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn87 = phi { ptr, i32 } [ %i.j, %bb.j ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ah

bb.l:                                             ; preds = %bb.e
  br i1 %7, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !290
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !31
  %i.x = icmp slt i32 %i.r, 2
  %i.y = load i64, ptr %i.u, align 8
  %.sink.idx.i = select i1 %i.x, i64 0, i64 %i.y
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink.idx.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !31
  %25 = insertelement <2 x i32> poison, i32 %..copy.fca.0.load.sroa.speculated, i64 0
  %26 = insertelement <2 x i32> %25, i32 %..copy.fca.1.load.sroa.speculated, i64 1
  %i.ab = add nsw <2 x i32> %26, splat (i32 -1)
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>
  %i.ad = fmul nnan <2 x double> %i.ac, splat (double 5.000000e-01) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !52
  store i32 16842752, ptr %14, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %i.ag, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.ai, align 4, !tbaa !52
  store i32 16842752, ptr %16, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %10, ptr %i.aj, align 8, !tbaa !12
  invoke void @_ZN2cv22getUndistortRectanglesERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEERNS_5Rect_IdEES7_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.ak = load <2 x double>, ptr %8, align 16, !tbaa !31 ; 3 uses
  %i.al = extractelement <2 x double> %i.ad, i64 0
  %i.am = extractelement <2 x double> %i.ad, i64 1
  %i.an = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.aa, i64 1 ; 5 uses
  %i.ap = fsub <2 x double> %i.ao, %i.ak
  %i.aq = fdiv <2 x double> %i.ad, %i.ap          ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0 ; 2 uses
  %i.as = extractelement <2 x double> %i.aq, i64 1 ; 2 uses
  %i.at = fcmp olt double %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.speculated297 = select i1 %i.at, double %i.as, double %i.ar ; 2 uses
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !31 ; 3 uses
  %i.aw = fadd <2 x double> %i.ak, %i.av
  %i.ax = fsub <2 x double> %i.aw, %i.ao
  %i.ay = fdiv <2 x double> %i.ad, %i.ax          ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0 ; 2 uses
  %i.ba = fcmp olt double %.sroa.speculated297, %i.az
  %.sroa.speculated290 = select i1 %i.ba, double %i.az, double %.sroa.speculated297 ; 2 uses
  %i.bb = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.bc = fcmp olt double %.sroa.speculated290, %i.bb
  %.sroa.speculated286 = select i1 %i.bc, double %i.bb, double %.sroa.speculated290
  %i.bd = load <2 x double>, ptr %9, align 16, !tbaa !31 ; 2 uses
  %i.be = fsub <2 x double> %i.ao, %i.bd
  %i.bf = fdiv <2 x double> %i.ad, %i.be          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0 ; 2 uses
  %i.bh = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bi = fcmp olt double %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.speculated281 = select i1 %i.bi, double %i.bh, double %i.bg ; 2 uses
  %i.bk = load <2 x double>, ptr %i.bj, align 16, !tbaa !31
  %i.bl = fadd <2 x double> %i.bd, %i.bk
  %i.bm = fsub <2 x double> %i.bl, %i.ao
  %i.bn = fdiv <2 x double> %i.ad, %i.bm          ; 2 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.bp = fcmp olt double %i.bo, %.sroa.speculated281
  %.sroa.speculated276 = select i1 %i.bp, double %i.bo, double %.sroa.speculated281 ; 2 uses
  %i.bq = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.br = fcmp olt double %i.bq, %.sroa.speculated276
  %.sroa.speculated275 = select i1 %i.br, double %i.bq, double %.sroa.speculated276
  %i.bs = fsub double 1.000000e+00, %4
  %i.bt = fmul double %4, %.sroa.speculated275
  %i.bu = call double @llvm.fmuladd.f64(double %.sroa.speculated286, double %i.bs, double %i.bt) ; 5 uses
  %i.bv = load i32, ptr %i.q, align 4, !tbaa !290
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !29  ; 5 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !31
  %i.by = fmul double %i.bx, %i.bu
  store double %i.by, ptr %i.bw, align 8, !tbaa !31
  %i.bz = icmp slt i32 %i.bv, 2                   ; 2 uses
  %i.ca = load i64, ptr %i.u, align 8
  %.sink.idx.i116 = select i1 %i.bz, i64 0, i64 %i.ca
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sink.idx.i116
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink.i117, i64 8 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !31
  %i.cd = fmul double %i.cc, %i.bu
  store double %i.cd, ptr %i.cb, align 8, !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store double %i.al, ptr %i.ce, align 8, !tbaa !31
  %i.cf = load i64, ptr %i.u, align 8
  %.sink.idx.i120 = select i1 %i.bz, i64 0, i64 %i.cf
  %.sink.i121 = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sink.idx.i120
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink.i121, i64 16
  store double %i.am, ptr %i.cg, align 8, !tbaa !31
  %.not102 = icmp eq ptr %6, null
  br i1 %.not102, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = fsub <2 x double> %i.ak, %i.ao
  %i.ci = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.ad) ; 2 uses
  %i.cl = extractelement <2 x double> %i.av, i64 0
  %i.cm = fmul double %i.cl, %i.bu
  %i.cn = extractelement <2 x double> %i.av, i64 1
  %i.co = fmul double %i.cn, %i.bu
  %i.cp = extractelement <2 x double> %i.ck, i64 0
  %i.cq = call double @llvm.ceil.f64(double %i.cp)
  %i.cr = fptosi double %i.cq to i32              ; 3 uses
  %i.cs = extractelement <2 x double> %i.ck, i64 1
  %i.ct = call double @llvm.ceil.f64(double %i.cs)
  %i.cu = fptosi double %i.ct to i32              ; 3 uses
  %i.cv = call double @llvm.floor.f64(double %i.cm)
  %i.cw = fptosi double %i.cv to i32              ; 4 uses
  %i.cx = call double @llvm.floor.f64(double %i.co)
  %i.cy = fptosi double %i.cx to i32              ; 3 uses
  %i.cz = icmp slt i32 %i.cw, 1
  %i.da = icmp slt i32 %i.cy, 1
  %i.db = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %i.db, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = icmp slt i32 %..copy.fca.0.load.sroa.speculated, 1
  %i.dd = icmp slt i32 %..copy.fca.1.load.sroa.speculated, 1
  %i.de = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %i.de, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = icmp slt i32 %i.cr, 0                   ; 3 uses
  %i.dg = call i32 @llvm.smin.i32(i32 %i.cr, i32 0) ; 2 uses
  %i.dh = call i32 @llvm.smax.i32(i32 %i.cr, i32 0) ; 3 uses
  %i.di = add nsw i32 %i.dg, %i.cw
  %i.dj = icmp slt i32 %i.di, %i.dh
  %or.cond = select i1 %i.df, i1 %i.dj, i1 false
  br i1 %or.cond, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = icmp slt i32 %i.cu, 0
  br i1 %i.dk, label %bb.s, label %._crit_edge.i

bb.s:                                             ; preds = %bb.r
  %i.dl = add nsw i32 %i.cy, %i.cu                ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.r, %bb.s
  %.sroa.speculated233 = phi i32 [ %..copy.fca.1.load.sroa.speculated, %bb.s ], [ %i.cy, %bb.r ]
  %.neg49.pre-phi.i = phi i32 [ %i.dl, %bb.s ], [ %..copy.fca.1.load.sroa.speculated, %bb.r ]
  %i.dn = phi i32 [ 0, %bb.s ], [ %i.cu, %bb.r ]  ; 2 uses
  %.sroa.speculated245 = select i1 %i.df, i32 %i.cw, i32 %..copy.fca.0.load.sroa.speculated
  %.neg.i = sub i32 %i.dg, %i.dh
  %i.do = add i32 %.neg.i, %.sroa.speculated245
  %.sroa.speculated239 = select i1 %i.df, i32 %..copy.fca.0.load.sroa.speculated, i32 %i.cw
  %.sroa.speculated53.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated239, i32 %i.do) ; 2 uses
  %i.dp = sub nsw i32 %.neg49.pre-phi.i, %i.dn
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated233, i32 %i.dp) ; 2 uses
  %i.dq = icmp slt i32 %.sroa.speculated53.i, 1
  %i.dr = icmp slt i32 %.sroa.speculated.i, 1
  %i.ds = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %i.ds, label %bb.t, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit

bb.t:                                             ; preds = %._crit_edge.i
  br label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit

_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit:         ; preds = %bb.q, %bb.t, %._crit_edge.i, %bb.p, %bb.o, %bb.s
  %.sroa.0260.0 = phi i32 [ %i.dh, %._crit_edge.i ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.q ]
  %.sroa.10261.0 = phi i32 [ %i.dn, %._crit_edge.i ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.q ]
  %.sroa.16.0 = phi i32 [ %.sroa.speculated53.i, %._crit_edge.i ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.q ]
  %.sroa.22.0 = phi i32 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.q ]
  store i32 %.sroa.0260.0, ptr %6, align 4, !tbaa !41
  %.sroa.10261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.10261.0, ptr %.sroa.10261.0..sroa_idx, align 4, !tbaa !41
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !41
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !41
  br label %bb.ag

bb.u:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ah

bb.v:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #20
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.du, align 8, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.dv, align 4, !tbaa !52
  store i32 16842752, ptr %17, align 8, !tbaa !50
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %18, ptr %i.dw, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %20) #20
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.dx, align 8, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.dy, align 4, !tbaa !52
  store i32 16842752, ptr %19, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %20, ptr %i.dz, align 8, !tbaa !12
  invoke void @_ZN2cv22getUndistortRectanglesERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEERNS_5Rect_IdEES7_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %27 = insertelement <2 x i32> poison, i32 %..copy.fca.0.load.sroa.speculated, i64 0
  %28 = insertelement <2 x i32> %27, i32 %..copy.fca.1.load.sroa.speculated, i64 1
  %i.ea = add nsw <2 x i32> %28, splat (i32 -1)
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ec = sitofp <2 x i32> %i.ea to <2 x double>  ; 2 uses
  %i.ed = load <2 x double>, ptr %i.eb, align 16, !tbaa !31
  %i.ee = fdiv <2 x double> %i.ec, %i.ed          ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.eh = load <2 x double>, ptr %i.eg, align 16, !tbaa !31
  %i.ei = fdiv <2 x double> %i.ec, %i.eh          ; 2 uses
  %i.ej = fsub double 1.000000e+00, %4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !290
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !29 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ep = icmp slt i32 %i.el, 2                   ; 2 uses
  %i.eq = insertelement <2 x double> poison, double %4, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fmul <2 x double> %i.er, %i.ei
  %i.et = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.eu, <2 x double> %i.es) ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  store double %i.ew, ptr %i.en, align 8, !tbaa !31
  %i.ex = load i64, ptr %i.eo, align 8
  %.sink.idx.i124 = select i1 %i.ep, i64 0, i64 %i.ex
  %.sink.i125 = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sink.idx.i124
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink.i125, i64 8
  %i.ez = extractelement <2 x double> %i.ev, i64 1
  store double %i.ez, ptr %i.ey, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.fb = fneg <2 x double> %i.ee
  %i.fc = load <2 x double>, ptr %8, align 16, !tbaa !31
  %i.fd = fmul <2 x double> %i.fc, %i.fb
  %i.fe = fneg <2 x double> %i.ei
  %i.ff = load <2 x double>, ptr %9, align 16, !tbaa !31
  %i.fg = fmul <2 x double> %i.ff, %i.fe
  %i.fh = fmul <2 x double> %i.er, %i.fg
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.eu, <2 x double> %i.fh) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0
  store double %i.fj, ptr %i.fa, align 8, !tbaa !31
  %i.fk = load i64, ptr %i.eo, align 8
  %.sink.idx.i128 = select i1 %i.ep, i64 0, i64 %i.fk
  %.sink.i129 = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sink.idx.i128
  %i.fl = getelementptr inbounds nuw i8, ptr %.sink.i129, i64 16
  %i.fm = extractelement <2 x double> %i.fi, i64 1
  store double %i.fm, ptr %i.fl, align 8, !tbaa !31
  %.not92 = icmp eq ptr %6, null
  br i1 %.not92, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #20
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.fn, align 8, !tbaa !51
  %i.fo = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.fo, align 4, !tbaa !52
  store i32 16842752, ptr %21, align 8, !tbaa !50
  %i.fp = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %22, ptr %i.fp, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.fq, align 8, !tbaa !51
  %i.fr = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.fr, align 4, !tbaa !52
  store i32 16842752, ptr %23, align 8, !tbaa !50
  %i.fs = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %0, ptr %i.fs, align 8, !tbaa !12
  invoke void @_ZN2cv22getUndistortRectanglesERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEERNS_5Rect_IdEES7_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.ft = load <2 x double>, ptr %8, align 16
  %i.fu = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ft) ; 3 uses
  %i.fv = load <2 x double>, ptr %i.ef, align 8
  %i.fw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fv) ; 3 uses
  %i.fx = load <2 x double>, ptr %i.eb, align 16  ; 2 uses
  %i.fy = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fx) ; 4 uses
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ga = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fz) ; 3 uses
  %i.gb = icmp slt i32 %i.fy, 1
  %i.gc = icmp slt i32 %i.ga, 1
  %i.gd = or i1 %i.gb, %i.gc
  br i1 %i.gd, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ge = icmp slt i32 %..copy.fca.0.load.sroa.speculated, 1
  %i.gf = icmp slt i32 %..copy.fca.1.load.sroa.speculated, 1
  %i.gg = select i1 %i.ge, i1 true, i1 %i.gf
  br i1 %i.gg, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gh = icmp slt i32 %i.fu, 0                   ; 3 uses
  %i.gi = call i32 @llvm.smin.i32(i32 %i.fu, i32 0) ; 2 uses
  %i.gj = call i32 @llvm.smax.i32(i32 %i.fu, i32 0) ; 3 uses
  %i.gk = add nsw i32 %i.fy, %i.gi
  %i.gl = icmp slt i32 %i.gk, %i.gj
  %or.cond323 = select i1 %i.gh, i1 %i.gl, i1 false
  br i1 %or.cond323, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = icmp slt i32 %i.fw, 0
  br i1 %i.gm, label %bb.ac, label %._crit_edge.i130

bb.ac:                                            ; preds = %bb.ab
  %i.gn = add nsw i32 %i.ga, %i.fw                ; 2 uses
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138, label %._crit_edge.i130

._crit_edge.i130:                                 ; preds = %bb.ab, %bb.ac
  %.sroa.speculated = phi i32 [ %..copy.fca.1.load.sroa.speculated, %bb.ac ], [ %i.ga, %bb.ab ]
  %.neg49.pre-phi.i134 = phi i32 [ %i.gn, %bb.ac ], [ %..copy.fca.1.load.sroa.speculated, %bb.ab ]
  %i.gp = phi i32 [ 0, %bb.ac ], [ %i.fw, %bb.ab ] ; 2 uses
  %.sroa.speculated172 = select i1 %i.gh, i32 %i.fy, i32 %..copy.fca.0.load.sroa.speculated
  %.neg.i135 = sub i32 %i.gi, %i.gj
  %i.gq = add i32 %.neg.i135, %.sroa.speculated172
  %.sroa.speculated166 = select i1 %i.gh, i32 %..copy.fca.0.load.sroa.speculated, i32 %i.fy
  %.sroa.speculated53.i136 = call i32 @llvm.smin.i32(i32 %.sroa.speculated166, i32 %i.gq) ; 2 uses
  %.sroa.15189.8.insert.ext = zext nneg i32 %.sroa.speculated53.i136 to i64
  %i.gr = sub nsw i32 %.neg49.pre-phi.i134, %i.gp
  %.sroa.speculated.i137 = call i32 @llvm.smin.i32(i32 %.sroa.speculated, i32 %i.gr) ; 2 uses
  %.sroa.15189.12.insert.ext = zext nneg i32 %.sroa.speculated.i137 to i64
  %.sroa.15189.12.insert.shift = shl nuw nsw i64 %.sroa.15189.12.insert.ext, 32
  %.sroa.15189.12.insert.insert = or disjoint i64 %.sroa.15189.12.insert.shift, %.sroa.15189.8.insert.ext
  %i.gs = icmp slt i32 %.sroa.speculated53.i136, 1
  %i.gt = icmp slt i32 %.sroa.speculated.i137, 1
  %i.gu = select i1 %i.gs, i1 true, i1 %i.gt
  br i1 %i.gu, label %bb.ad, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138

bb.ad:                                            ; preds = %._crit_edge.i130
  br label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138

_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138:      ; preds = %bb.aa, %bb.ad, %._crit_edge.i130, %bb.z, %bb.y, %bb.ac
  %.sroa.0187.sroa.0.0 = phi i32 [ %i.gj, %._crit_edge.i130 ], [ 0, %bb.y ], [ 0, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.aa ]
  %.sroa.0187.sroa.10.0 = phi i32 [ %i.gp, %._crit_edge.i130 ], [ 0, %bb.y ], [ 0, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.aa ]
  %.sroa.15189.0 = phi i64 [ %.sroa.15189.12.insert.insert, %._crit_edge.i130 ], [ 0, %bb.y ], [ 0, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.aa ]
  %.sroa.0187.sroa.10.0.insert.ext = zext nneg i32 %.sroa.0187.sroa.10.0 to i64
  %.sroa.0187.sroa.10.0.insert.shift = shl nuw nsw i64 %.sroa.0187.sroa.10.0.insert.ext, 32
  %.sroa.0187.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0187.sroa.0.0 to i64
  %.sroa.0187.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0187.sroa.10.0.insert.shift, %.sroa.0187.sroa.0.0.insert.ext
  store i64 %.sroa.0187.sroa.0.0.insert.insert, ptr %6, align 4, !tbaa !41
  %.sroa.15189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.15189.0, ptr %.sroa.15189.0..sroa_idx, align 4, !tbaa !41
  br label %bb.ag

bb.ae:                                            ; preds = %bb.v
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ah

bb.af:                                            ; preds = %bb.x
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit, %bb.n, %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit138, %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void

bb.ah:                                            ; preds = %bb.af, %bb.u, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn103.pn.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.gw, %bb.af ], [ %i.gv, %bb.ae ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dt, %bb.u ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  resume { ptr, i32 } %.pn103.pn.pn.pn.pn
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !291
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !41   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !291
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN2cv17_InputOutputArrayERKNS0_12_OutputArrayES6_EZNS0_26findExtrinsicCameraParams2ERKNS0_3MatESA_SA_SA_RS8_SB_iE3$_0E9_M_invokeERKSt9_Any_dataS3_S6_S6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Range", align 4         ; 5 uses
  %6 = alloca %"class.cv::Range", align 8         ; 4 uses
  %7 = alloca %"class.cv::Range", align 4         ; 5 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !68    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !302
  %i.d = icmp eq i32 %i.c, 65536
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12, !noalias !302
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.f)
  br label %_ZNK2cv11_InputArray6getMatEi.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit.i.i.i

_ZNK2cv11_InputArray6getMatEi.exit.i.i.i:         ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26
  %i.i = icmp eq i32 %i.h, 1
end_hunk_0
