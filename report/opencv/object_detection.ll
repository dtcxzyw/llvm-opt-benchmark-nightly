Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/object_detection?download=true
inline.NumInlined: 2870
inline.NumDeleted: 1012
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
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
  %.0171758 = phi i64 [ %i.es, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ 0, %bb.l ] ; 2 uses
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
  %i.bj = sub nsw <2 x i32> %i.bi, %i.bg          ; 2 uses
  %i.bk = icmp slt <2 x i32> %i.bj, splat (i32 2) ; 2 uses
  %i.bl = extractelement <2 x i1> %i.bk, i64 0
  %i.bm = extractelement <2 x i1> %i.bk, i64 1
  %or.cond = select i1 %i.bl, i1 true, i1 %i.bm
  %i.bn = shufflevector <2 x i32> %i.bg, <2 x i32> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = load <2 x i32>, ptr %i.w, align 8, !tbaa !67
  %i.bp = sitofp <2 x i32> %i.bo to <2 x float>
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.br = fmul <2 x float> %i.bf, %i.bq
  %i.bs = fptosi <2 x float> %i.br to <2 x i32>   ; 2 uses
  %i.bt = fmul <2 x float> %i.bh, %i.bq
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>
  %i.bv = sub nsw <2 x i32> %i.bu, %i.bs
  %i.bw = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bx = phi <4 x i32> [ %i.bw, %bb.n ], [ %i.bn, %bb.m ] ; 2 uses
  %i.by = add nsw <4 x i32> %i.bx, <i32 0, i32 0, i32 1, i32 1>
  %i.bz = getelementptr i8, ptr %i.ay, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !61
  %i.cb = fptosi float %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cd = load ptr, ptr %i.x, align 8, !tbaa !103 ; 4 uses
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !125
  %.not.i.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.cf, ptr %i.x, align 8, !tbaa !103
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.q:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %3, align 8, !tbaa !102   ; 4 uses
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775804
  br i1 %i.ck, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.cl = ashr exact i64 %i.cj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 2305843009213693951)
  %i.cp = select i1 %i.cn, i64 2305843009213693951, i64 %i.co ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #31 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store i32 %i.cc, ptr %i.cs, align 4, !tbaa !67
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cx) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cr, ptr %3, align 8, !tbaa !102
  store ptr %i.cu, ptr %i.x, align 8, !tbaa !103
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cy, ptr %i.y, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.cz = load ptr, ptr %i.z, align 8, !tbaa !111 ; 6 uses
  %i.da = load ptr, ptr %i.aa, align 8, !tbaa !123
  %.not.i.i202 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i.i202, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %71 = add nsw <4 x i32> %i.bx, <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %71, ptr %i.cz, align 4, !tbaa !67
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.db, ptr %i.z, align 8, !tbaa !111
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.dc = load ptr, ptr %5, align 8, !tbaa !110   ; 5 uses
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775792
  br i1 %i.dg, label %bb.w, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #28
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.dh = ashr exact i64 %i.df, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i203 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i.i203, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 576460752303423487)
  %i.dl = select i1 %i.dj, i64 576460752303423487, i64 %i.dk ; 3 uses
  %.not.i.i.i.i204 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i204)
  %i.dm = shl nuw nsw i64 %i.dl, 4
  %i.dn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #31 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df
  store <4 x i32> %i.by, ptr %i.do, align 4, !tbaa !67
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %i.dn, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %i.dc, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !148, !alias.scope !493
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dp, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !444

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dn, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dq, %.lr.ph.i.i.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ds = load ptr, ptr %i.aa, align 8, !tbaa !123
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.du) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.dn, ptr %5, align 8, !tbaa !110
  store ptr %i.dr, ptr %i.z, align 8, !tbaa !111
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.dv, ptr %i.aa, align 8, !tbaa !123
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.u, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.dw = load ptr, ptr %i.ab, align 8, !tbaa !107 ; 4 uses
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !124
  %.not.i = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit
  store float %i.ba, ptr %i.dw, align 4, !tbaa !61
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store ptr %i.dy, ptr %i.ab, align 8, !tbaa !107
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit
  %i.dz = load ptr, ptr %4, align 8, !tbaa !106   ; 4 uses
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 5 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775804
  br i1 %i.ed, label %bb.aa, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #28
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.ee = ashr exact i64 %i.ec, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 2305843009213693951)
  %i.ei = select i1 %i.eg, i64 2305843009213693951, i64 %i.eh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ei, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #31 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ec ; 2 uses
  store float %i.ba, ptr %i.el, align 4, !tbaa !61
  %i.em = icmp sgt i64 %i.ec, 0
  br i1 %i.em, label %bb.ab, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.dz, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.eo = load ptr, ptr %i.ac, align 8, !tbaa !124
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eq) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.ek, ptr %4, align 8, !tbaa !106
  store ptr %i.en, ptr %i.ab, align 8, !tbaa !107
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.er, ptr %i.ac, align 8, !tbaa !124
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.y, %.lr.ph760
  %i.es = add i64 %.0171758, 7                    ; 2 uses
  %i.et = load ptr, ptr %1, align 8, !tbaa !120
  %i.eu = getelementptr inbounds nuw [208 x i8], ptr %i.et, i64 %.0165762
  %i.ev = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.eu)
  %i.ew = icmp ult i64 %i.es, %i.ev
  br i1 %i.ew, label %.lr.ph760, label %._crit_edge761, !llvm.loop !445

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit206: ; preds = %bb.e
  %i.ex = load ptr, ptr %6, align 8, !tbaa !27    ; 6 uses
  %i.ey = load i32, ptr %i.ex, align 1
  %i.ez = xor i32 %i.ey, 1869377401
  %i.fa = getelementptr i8, ptr %i.ex, i64 4
  %i.fb = load i16, ptr %i.fa, align 1
  %i.fc = zext i16 %i.fb to i32
  %i.fd = xor i32 %i.fc, 13430
  %i.fe = or i32 %i.ez, %i.fd
  %i.ff = icmp ne i32 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit206.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit280

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit206.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit206
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !121
  %i.fk = load ptr, ptr %1, align 8, !tbaa !120   ; 12 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 208
  switch i64 %i.fo, label %.critedge.thread561 [
    i64 2, label %bb.ad
    i64 3, label %bb.ai
  ]

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit206.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !494
  %i.fr = icmp eq i32 %i.fq, 4
  br i1 %i.fr, label %bb.ae, label %.critedge.thread561

bb.ae:                                            ; preds = %bb.ad
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !495
  %.not593 = icmp slt i32 %i.ft, 4
  br i1 %.not593, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(1) %49)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.123, i32 noundef 103) #28
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %48, align 8, !tbaa !27   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !26
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %.loopexit.split-lp608, %_ZNSt6vectorIfSaIfEED2Ev.exit356, %bb.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i210 ], [ %i.py, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i277 ], [ %.pn199, %.loopexit.split-lp608 ], [ %.pn191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn185.pn.pn.pn, %bb.cm ], [ %i.ad, %bb.f ], [ %i.apy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.pn175.pn585, %_ZNSt6vectorIfSaIfEED2Ev.exit356 ], [ %.pn175.pn585, %bb.hu ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
