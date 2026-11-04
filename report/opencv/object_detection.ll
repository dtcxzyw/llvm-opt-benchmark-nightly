Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/object_detection?download=true
inline.NumInlined: 2870
inline.NumDeleted: 1012
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %11 = alloca %"class.cv::Range", align 8        ; 4 uses
  %12 = alloca %"class.cv::Range", align 4        ; 5 uses
  %13 = alloca %"class.cv::Range", align 4        ; 5 uses
  %14 = alloca %"class.cv::Range", align 8        ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::vector.21", align 8   ; 14 uses
  %22 = alloca %"class.std::vector.62", align 8   ; 16 uses
  %23 = alloca %"class.std::vector.43", align 8   ; 22 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.std::vector.16", align 8   ; 12 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.std::vector.16", align 8   ; 12 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %39 = alloca %"class.cv::Point_", align 4       ; 8 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.std::vector.16", align 8   ; 11 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::allocator", align 1   ; 3 uses
  %44 = alloca %"class.cv::Range", align 4        ; 5 uses
  %45 = alloca %"class.cv::Range", align 8        ; 4 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::allocator", align 1   ; 3 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::allocator", align 1   ; 3 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::allocator", align 1   ; 3 uses
  %52 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %54 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %55 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %56 = alloca %"class.cv::Point_", align 4       ; 8 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %57 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %58 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %59 = alloca %"struct.cv::dnn::dnn5_v20260605::Image2BlobParams", align 8 ; 10 uses
  %60 = alloca %"class.cv::Size_", align 8        ; 4 uses
  %61 = alloca %"struct.cv::dnn::dnn5_v20260605::Image2BlobParams", align 8 ; 11 uses
  %62 = alloca %"class.cv::Size_", align 8        ; 5 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::map.68", align 8      ; 11 uses
  %65 = alloca %"class.std::vector.26", align 8   ; 13 uses
  %66 = alloca %"class.std::vector.21", align 8   ; 13 uses
  %67 = alloca %"class.std::vector.16", align 8   ; 13 uses
  %68 = alloca %"class.std::vector.26", align 8   ; 12 uses
  %69 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %70 = alloca %"class.std::vector.16", align 8   ; 10 uses
  %i.c = load atomic i8, ptr @_ZGVZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9outLayers acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9outLayers) #26
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK2cv3dnn14dnn5_v202606053Net23getUnconnectedOutLayersEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.16") align 8 @_ZZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9outLayers, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9outLayers, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9outLayers) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  switch i64 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282.thread564 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit206
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.i = load ptr, ptr %6, align 8, !tbaa !27     ; 2 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = xor i16 %i.j, 29555
  %i.l = getelementptr i8, ptr %i.i, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  %i.o = xor i16 %i.n, 100
  %i.p = or i16 %i.k, %i.o
  %i.q = icmp ne i16 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282.thread564

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121
  %i.v = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %.not190 = icmp eq ptr %i.u, %i.v
  br i1 %.not190, label %bb.g, label %.lr.ph763

.lr.ph763:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9outLayers) #26
  br label %common.resume

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @.str.114, ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @__func__._ZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.80, i32 noundef 521) #28
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %50, align 8, !tbaa !27   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn191 = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  br label %common.resume

bb.l:                                             ; preds = %.lr.ph763, %._crit_edge761
  %i.al = phi ptr [ %i.v, %.lr.ph763 ], [ %i.as, %._crit_edge761 ]
  %.0165762 = phi i64 [ 0, %.lr.ph763 ], [ %i.aq, %._crit_edge761 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [208 x i8], ptr %i.al, i64 %.0165762 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !492
  %i.ap = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.am)
  %.not783 = icmp eq i64 %i.ap, 0
  br i1 %.not783, label %._crit_edge761, label %.lr.ph760

._crit_edge761:                                   ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %bb.l
  %i.aq = add nuw i64 %.0165762, 1                ; 2 uses
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !121
  %i.as = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 208
  %i.ax = icmp ult i64 %i.aq, %i.aw
  br i1 %i.ax, label %bb.l, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !440

.lr.ph760:                                        ; preds = %bb.l, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.0171758 = phi i64 [ %i.ep, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ 0, %bb.l ] ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %.0171758 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !61 ; 3 uses
  %i.bb = load float, ptr @confThreshold, align 4, !tbaa !61
  %i.bc = fcmp ogt float %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.m:                                             ; preds = %.lr.ph760
  %i.bd = getelementptr i8, ptr %i.ay, i64 12
  %i.be = getelementptr i8, ptr %i.ay, i64 20
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !61 ; 2 uses
  %i.bg = fptosi <2 x float> %i.bf to <2 x i32>   ; 2 uses
  %i.bh = load <2 x float>, ptr %i.be, align 4, !tbaa !61 ; 2 uses
  %i.bi = fptosi <2 x float> %i.bh to <2 x i32>
  %i.bj = sub nsw <2 x i32> %i.bi, %i.bg
  %.fr = freeze <2 x i32> %i.bj                   ; 2 uses
  %71 = icmp slt <2 x i32> %.fr, splat (i32 2)
  %72 = bitcast <2 x i1> %71 to i2
  %or.cond.not = icmp eq i2 %72, 0
  %i.bk = shufflevector <2 x i32> %i.bg, <2 x i32> %.fr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %or.cond.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load <2 x i32>, ptr %i.w, align 8, !tbaa !67
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bo = fmul <2 x float> %i.bf, %i.bn
  %i.bp = fptosi <2 x float> %i.bo to <2 x i32>   ; 2 uses
  %i.bq = fmul <2 x float> %i.bh, %i.bn
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>
  %i.bs = sub nsw <2 x i32> %i.br, %i.bp
  %i.bt = shufflevector <2 x i32> %i.bp, <2 x i32> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bu = phi <4 x i32> [ %i.bt, %bb.n ], [ %i.bk, %bb.m ]
  %i.bv = add nsw <4 x i32> %i.bu, <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ay, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !61
  %i.by = fptosi float %i.bx to i32
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  %i.ca = load ptr, ptr %i.x, align 8, !tbaa !103 ; 4 uses
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !125
  %.not.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store ptr %i.cc, ptr %i.x, align 8, !tbaa !103
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.q:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %3, align 8, !tbaa !102   ; 4 uses
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 5 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775804
  br i1 %i.ch, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ci = ashr exact i64 %i.cg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 2305843009213693951)
  %i.cm = select i1 %i.ck, i64 2305843009213693951, i64 %i.cl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #31 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store i32 %i.bz, ptr %i.cp, align 4, !tbaa !67
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 4 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cu) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.co, ptr %3, align 8, !tbaa !102
  store ptr %i.cr, ptr %i.x, align 8, !tbaa !103
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cv, ptr %i.y, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.cw = load ptr, ptr %i.z, align 8, !tbaa !111 ; 6 uses
  %i.cx = load ptr, ptr %i.aa, align 8, !tbaa !123
  %.not.i.i202 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i202, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store <4 x i32> %i.bv, ptr %i.cw, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.cy, ptr %i.z, align 8, !tbaa !111
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.cz = load ptr, ptr %5, align 8, !tbaa !110   ; 5 uses
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775792
  br i1 %i.dd, label %bb.w, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #28
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.de = ashr exact i64 %i.dc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i203 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i203, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i.i.i.i204 = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i204)
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #31 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dc
  store <4 x i32> %i.bv, ptr %i.dl, align 4, !tbaa !67
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cw
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %i.dk, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i ], [ %i.cz, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !148, !alias.scope !493
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.cw
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !444

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dk, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dn, %.lr.ph.i.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.dp = load ptr, ptr %i.aa, align 8, !tbaa !123
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.db
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dr) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.dk, ptr %5, align 8, !tbaa !110
  store ptr %i.do, ptr %i.z, align 8, !tbaa !111
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.ds, ptr %i.aa, align 8, !tbaa !123
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.u, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.dt = load ptr, ptr %i.ab, align 8, !tbaa !107 ; 4 uses
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !124
  %.not.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit
  store float %i.ba, ptr %i.dt, align 4, !tbaa !61
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store ptr %i.dv, ptr %i.ab, align 8, !tbaa !107
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit
  %i.dw = load ptr, ptr %4, align 8, !tbaa !106   ; 4 uses
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 5 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775804
  br i1 %i.ea, label %bb.aa, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #28
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.eb = ashr exact i64 %i.dz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 2305843009213693951)
  %i.ef = select i1 %i.ed, i64 2305843009213693951, i64 %i.ee ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ef, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #31 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.dz ; 2 uses
  store float %i.ba, ptr %i.ei, align 4, !tbaa !61
  %i.ej = icmp sgt i64 %i.dz, 0
  br i1 %i.ej, label %bb.ab, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr align 4 %i.dw, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.ac

end_hunk_0
