Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZN2cv4usac26CovarianceAffineSolverImplC2ERKNS_3MatERKNS_4MatxIdLi3ELi3EEES8_:bb.a
  %storemerge.idx.i.i.i.i.i = select i1 %i.ad, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ab, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.ae = and i32 %i.k, 63                        ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %.idx.i, i1 false)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !95  ; 2 uses
  %.not.i.i15 = icmp eq ptr %.pre, null
  br i1 %.not.i.i15, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !99  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %.pre to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ai) #19
  store ptr null, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 8
  store ptr null, ptr %i.f, align 8
  store i32 0, ptr %i.g, align 8
  store ptr null, ptr %i.h, align 8
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.b, %bb.d, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.sroa.1822.035 = phi ptr [ %i.z, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.z, %bb.d ], [ null, %bb.b ]
  %.sroa.019.034 = phi ptr [ %i.v, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.v, %bb.d ], [ null, %bb.b ]
  %.sroa.1221.033 = phi ptr [ %storemerge.i.i.i.i.i, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %storemerge.i.i.i.i.i, %bb.d ], [ null, %bb.b ]
  %.sroa.15.032 = phi i32 [ %i.ae, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.ae, %bb.d ], [ 0, %bb.b ]
  store ptr %.sroa.019.034, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 8
  store ptr %.sroa.1221.033, ptr %i.f, align 8
  store i32 %.sroa.15.032, ptr %i.g, align 8
  store ptr %.sroa.1822.035, ptr %i.h, align 8
  ret void

bb.e:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !99  ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.x to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.as
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aq) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit18

_ZNSt13_Bvector_baseISaIbEED2Ev.exit18:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, %bb.f
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit18, %bb.e
  %.pn = phi { ptr, i32 } [ %i.w, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit18 ], [ %i.am, %bb.e ]
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac26CovarianceAffineSolverImplD2Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv4usac26CovarianceAffineSolverImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #18
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac26CovarianceAffineSolverImplD0Ev(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv4usac26CovarianceAffineSolverImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN2cv4usac26CovarianceAffineSolverImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #19, !inline_history !232
  br label %_ZN2cv4usac26CovarianceAffineSolverImplD2Ev.exit

_ZN2cv4usac26CovarianceAffineSolverImplD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #18, !inline_history !232
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(768) %0) #18, !inline_history !232
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 768) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac26CovarianceAffineSolverImpl28getMinimumRequiredSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac26CovarianceAffineSolverImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv4usac26CovarianceAffineSolverImpl8estimateERKSt6vectorIbSaIbEERS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %6 = alloca %"class.cv::Vec.109", align 16      ; 9 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::Matx.111", align 16     ; 23 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::Vec.109", align 16     ; 6 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %12 = alloca [1 x %"class.cv::Mat"], align 16   ; 12 uses
  %13 = alloca %"class.cv::Matx", align 16        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.f = load ptr, ptr %1, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.am = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 488
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 608
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !61 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 664
  store double %i.bg, ptr %i.bh, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 672
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double %i.bk, ptr %i.bl, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, i8 0, i64 48, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bm = load double, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.bn = load <2 x double>, ptr %i.an, align 8, !tbaa !61
  store double %i.bm, ptr %i.ap, align 8, !tbaa !61
  store <2 x double> %i.bn, ptr %8, align 16, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = load <2 x double>, ptr %i.aq, align 8, !tbaa !61 ; 3 uses
  %17 = extractelement <2 x double> %i.bp, i64 0  ; 2 uses
  store double %17, ptr %i.ar, align 8, !tbaa !61
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  store double %i.bq, ptr %i.au, align 8, !tbaa !61
  store <2 x double> %i.bp, ptr %i.bo, align 16, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bs = load <2 x double>, ptr %i.ay, align 8, !tbaa !61 ; 3 uses
  %18 = extractelement <2 x double> %i.bs, i64 0
  store double %18, ptr %i.az, align 8, !tbaa !61
  %i.bt = extractelement <2 x double> %i.bs, i64 1
  store double %i.bt, ptr %i.be, align 8, !tbaa !61
  store <2 x double> %i.bs, ptr %i.br, align 16, !tbaa !61
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 48
  store double %i.bm, ptr %i.bu, align 16, !tbaa !61
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bx = load double, ptr %i.as, align 8, !tbaa !61 ; 2 uses
  %i.by = load <2 x double>, ptr %i.bv, align 8, !tbaa !61
  store double %i.bx, ptr %i.at, align 8, !tbaa !61
  store <2 x double> %i.by, ptr %i.bw, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ca = load <2 x double>, ptr %i.av, align 8, !tbaa !61 ; 3 uses
  %19 = extractelement <2 x double> %i.ca, i64 0
  store double %19, ptr %14, align 8, !tbaa !61
  %20 = extractelement <2 x double> %i.ca, i64 1
  store double %20, ptr %15, align 8, !tbaa !61
  store <2 x double> %i.ca, ptr %i.bz, align 8, !tbaa !61
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 88
  store double %i.bg, ptr %i.cb, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 96
  store double %17, ptr %i.cc, align 16, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 104
  store double %i.bx, ptr %i.cd, align 8, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.cg = load double, ptr %i.aw, align 8, !tbaa !61
  %i.ch = load <2 x double>, ptr %i.ce, align 8, !tbaa !61
  store double %i.cg, ptr %i.ax, align 8, !tbaa !61
  store <2 x double> %i.ch, ptr %i.cf, align 16, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.cj = load <2 x double>, ptr %i.ba, align 8, !tbaa !61 ; 3 uses
  %21 = extractelement <2 x double> %i.cj, i64 0
  store double %21, ptr %i.bb, align 8, !tbaa !61
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  store double %i.ck, ptr %i.bi, align 8, !tbaa !61
  store <2 x double> %i.cj, ptr %i.ci, align 16, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.cn = load <2 x double>, ptr %i.cl, align 8, !tbaa !61
  store <2 x double> %i.cn, ptr %i.cm, align 16, !tbaa !61
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.cq = load <2 x double>, ptr %i.co, align 8, !tbaa !61
  store <2 x double> %i.cq, ptr %i.cp, align 16, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.cs = load <2 x double>, ptr %i.bc, align 8, !tbaa !61 ; 3 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  store double %i.ct, ptr %i.bd, align 8, !tbaa !61
  %22 = extractelement <2 x double> %i.cs, i64 1
  store double %22, ptr %16, align 8, !tbaa !61
  store <2 x double> %i.cs, ptr %i.cr, align 16, !tbaa !61
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.cw = load <2 x double>, ptr %i.cu, align 8, !tbaa !61
  store <2 x double> %i.cw, ptr %i.cv, align 16, !tbaa !61
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.cz = load <2 x double>, ptr %i.cx, align 8, !tbaa !61
  store <2 x double> %i.cz, ptr %i.cy, align 16, !tbaa !61
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.dc = load <2 x double>, ptr %i.da, align 8, !tbaa !61
  store <2 x double> %i.dc, ptr %i.db, align 16, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.df = load <2 x double>, ptr %i.dd, align 8, !tbaa !61
  store <2 x double> %i.df, ptr %i.de, align 16, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.di = load <2 x double>, ptr %i.dg, align 8, !tbaa !61
  store <2 x double> %i.di, ptr %i.dh, align 16, !tbaa !61
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.dl = load <2 x double>, ptr %i.dj, align 8, !tbaa !61
  store <2 x double> %i.dl, ptr %i.dk, align 16, !tbaa !61
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %8, ptr %i.dn, align 8, !tbaa !79
  store i64 25769803782, ptr %i.dm, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.dp = load <2 x double>, ptr %i.do, align 8, !tbaa !61
  store <2 x double> %i.dp, ptr %10, align 16, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ds = load <2 x double>, ptr %i.dq, align 8, !tbaa !61
  store <2 x double> %i.ds, ptr %i.dr, align 16, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dv = load <2 x double>, ptr %i.dt, align 8, !tbaa !61
  store <2 x double> %i.dv, ptr %i.du, align 16, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833530, ptr %9, align 8, !tbaa !78
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %10, ptr %i.dx, align 8, !tbaa !79
  store i64 25769803777, ptr %i.dw, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056314, ptr %11, align 8, !tbaa !78
  store ptr %6, ptr %i.dy, align 8, !tbaa !79
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 25769803777, ptr %i.dz, align 8, !tbaa !52
  %i.ea = call noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.ea, label %.noexc, label %bb.j

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %i.eb = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.eb, 67108863                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.zext
  %i.ed = and i64 %indvars.iv, 63
  %i.ee = shl nuw i64 1, %i.ed                    ; 2 uses
  %i.ef = load i64, ptr %i.ec, align 8, !tbaa !89
  %i.eg = and i64 %i.ef, %i.ee
  %i.eh = icmp ne i64 %i.eg, 0                    ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.zext
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !89
  %i.ek = and i64 %i.ej, %i.ee
  %i.el = icmp ne i64 %i.ek, 0
  %i.em = xor i1 %i.eh, %i.el
  br i1 %i.em, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %i.eo = load <2 x float>, ptr %i.en, align 4, !tbaa !67
  %i.ep = fpext <2 x float> %i.eo to <2 x double> ; 21 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 1 ; 10 uses
  %i.er = extractelement <2 x double> %i.ep, i64 0 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.et = load <2 x float>, ptr %i.es, align 4, !tbaa !67
  %i.eu = fpext <2 x float> %i.et to <2 x double> ; 9 uses
  br i1 %i.eh, label %.preheader131, label %.preheader130.preheader

.preheader130.preheader:                          ; preds = %bb.c
  %i.ev = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.ep, <2 x double> zeroinitializer)
  %i.ex = load <2 x double>, ptr %i.i, align 8, !tbaa !61
  %i.ey = fadd <2 x double> %i.ex, %i.ew
  store <2 x double> %i.ey, ptr %i.i, align 8, !tbaa !61
  %i.ez = fadd <2 x double> %i.ep, zeroinitializer ; 2 uses
  %i.fa = fmul <2 x double> %i.ep, zeroinitializer ; 4 uses
  %i.fb = load <2 x double>, ptr %i.j, align 8, !tbaa !61
  %i.fc = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fa, <2 x i32> <i32 3, i32 1>
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> zeroinitializer, <2 x double> %i.fc)
  %i.fe = load <2 x double>, ptr %i.k, align 8, !tbaa !61
  %i.ff = fadd <2 x double> %i.fe, %i.fd
  store <2 x double> %i.ff, ptr %i.k, align 8, !tbaa !61
  %i.fg = insertelement <2 x double> %i.ep, double 0.000000e+00, i64 0
  %i.fh = insertelement <2 x double> %i.fa, double 0.000000e+00, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.fg, <2 x double> %i.fh) ; 2 uses
  %i.fj = shufflevector <2 x double> %i.ez, <2 x double> %i.fi, <2 x i32> <i32 0, i32 2>
  %i.fk = fadd <2 x double> %i.fb, %i.fj
  store <2 x double> %i.fk, ptr %i.j, align 8, !tbaa !61
  %i.fl = load <2 x double>, ptr %i.l, align 8, !tbaa !61
  %i.fm = shufflevector <2 x double> %i.fi, <2 x double> %i.ez, <2 x i32> <i32 1, i32 3>
  %i.fn = fadd <2 x double> %i.fl, %i.fm
  store <2 x double> %i.fn, ptr %i.l, align 8, !tbaa !61
  %i.fo = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> zeroinitializer, <2 x double> %i.fa)
  %i.fq = load <2 x double>, ptr %i.m, align 8, !tbaa !61
  %i.fr = fadd <2 x double> %i.fq, %i.fp
  store <2 x double> %i.fr, ptr %i.m, align 8, !tbaa !61
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.eq, double 0.000000e+00, double 0.000000e+00)
  %i.ft = load double, ptr %i.n, align 8, !tbaa !61
  %i.fu = fadd double %i.ft, %i.fs
  store double %i.fu, ptr %i.n, align 8, !tbaa !61
  %i.fv = load <2 x double>, ptr %i.p, align 8, !tbaa !61
  %i.fw = fadd <2 x double> %i.fa, zeroinitializer ; 2 uses
  %i.fx = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.fw, <2 x i32> <i32 0, i32 2>
  %i.fy = fadd <2 x double> %i.fv, %i.fx
  store <2 x double> %i.fy, ptr %i.p, align 8, !tbaa !61
  %i.fz = load <2 x double>, ptr %i.q, align 8, !tbaa !61
  %i.ga = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fw, <2 x i32> <i32 3, i32 1>
  %i.gb = fadd <2 x double> %i.fz, %i.ga
  store <2 x double> %i.gb, ptr %i.q, align 8, !tbaa !61
  %i.gc = extractelement <2 x double> %i.eu, i64 0
  %i.gd = load <2 x double>, ptr %i.o, align 8, !tbaa !61
  %i.ge = fmul <2 x double> %i.ev, %i.ep
  %i.gf = fadd <2 x double> %i.ge, <double -0.000000e+00, double 0.000000e+00>
  %i.gg = load <2 x double>, ptr %i.r, align 8, !tbaa !61
  %i.gh = fadd <2 x double> %i.gg, %i.gf
  store <2 x double> %i.gh, ptr %i.r, align 8, !tbaa !61
  %i.gi = fadd double %i.er, 0.000000e+00
  %i.gj = load double, ptr %i.s, align 8, !tbaa !61
  %i.gk = fadd double %i.gj, %i.gi
  store double %i.gk, ptr %i.s, align 8, !tbaa !61
  %i.gl = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gm = fmul <2 x double> %i.gl, %i.ep
  %i.gn = fmul double %i.eq, %i.eq
  %i.go = fadd double %i.eq, 0.000000e+00
  %i.gp = load <2 x double>, ptr %i.u, align 8, !tbaa !61
  %i.gq = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.go, i64 1
  %i.gs = fadd <2 x double> %i.gp, %i.gr
  store <2 x double> %i.gs, ptr %i.u, align 8, !tbaa !61
  %i.gt = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> zeroinitializer, <2 x double> %i.gm)
  %i.gv = load <2 x double>, ptr %i.t, align 8, !tbaa !61
  %i.gw = fadd <2 x double> %i.gv, %i.gu
  store <2 x double> %i.gw, ptr %i.t, align 8, !tbaa !61
  %i.gx = load <2 x double>, ptr %i.v, align 8, !tbaa !61
  %i.gy = fmul <2 x double> %i.gl, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.gz = extractelement <2 x double> %i.gy, i64 0
  %foldExtExtBinop = fadd <2 x double> %i.gy, %i.eu
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.gc, double %i.gz)
  %i.hb = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.hd = fadd <2 x double> %i.gd, %i.hc
  store <2 x double> %i.hd, ptr %i.o, align 8, !tbaa !61
  %i.he = shufflevector <2 x double> %i.ep, <2 x double> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.hf = insertelement <2 x double> %i.eu, double 0.000000e+00, i64 1
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.hf, <2 x double> %i.gy) ; 2 uses
  %i.hh = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.hg, <2 x i32> <i32 0, i32 2>
  %i.hi = fadd <2 x double> %i.gx, %i.hh
  store <2 x double> %i.hi, ptr %i.v, align 8, !tbaa !61
  %i.hj = load double, ptr %i.w, align 8, !tbaa !61
  %i.hk = extractelement <2 x double> %i.hg, i64 1
  %i.hl = fadd double %i.hj, %i.hk
  store double %i.hl, ptr %i.w, align 8, !tbaa !61
  br label %.loopexit

.preheader131:                                    ; preds = %bb.c
  %i.hm = extractelement <2 x double> %i.eu, i64 1 ; 2 uses
  %i.hn = fneg double %i.hm                       ; 2 uses
  %i.ho = fneg <2 x double> %i.ep                 ; 3 uses
  %i.hp = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x double> %i.hp, %i.ep
  %i.hr = load <2 x double>, ptr %i.i, align 8, !tbaa !61
  %i.hs = fsub <2 x double> %i.hr, %i.hq
  store <2 x double> %i.hs, ptr %i.i, align 8, !tbaa !61
  %i.ht = fmul <2 x double> %i.ep, splat (double -0.000000e+00) ; 4 uses
  %i.hu = load <2 x double>, ptr %i.x, align 8, !tbaa !61 ; 2 uses
  %i.hv = fmul double %i.er, -0.000000e+00
  %i.hw = extractelement <2 x double> %i.ht, i64 1
  %i.hx = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> zeroinitializer, <2 x double> %i.ht) ; 2 uses
  %i.hz = shufflevector <2 x double> %i.ep, <2 x double> %i.hy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ia = fsub <2 x double> %i.hu, %i.hz
  %i.ib = fadd <2 x double> %i.hu, %i.hz
  %i.ic = shufflevector <2 x double> %i.ia, <2 x double> %i.ib, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ic, ptr %i.x, align 8, !tbaa !61
  %i.id = load <2 x double>, ptr %i.y, align 8, !tbaa !61
end_hunk_0
