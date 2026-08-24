Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nbayes?download=true
inline.NumInlined: 455
inline.NumDeleted: 174
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv2ml25NormalBayesClassifierImpl4readERKNS_8FileNodeE:bb.a
bb.an:                                            ; preds = %._crit_edge
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %common.resume

_ZN2cvrsINS_3MatEEEvRKNS_8FileNodeERT_.exit78:    ; preds = %._crit_edge
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  ret void
}

declare noundef zeroext i1 @_ZNK2cv2ml9StatModel5emptyEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml25NormalBayesClassifierImpl14getDefaultNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(784) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 16, ptr %i.a, align 8, !tbaa !84
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !48
  %i.d = load i64, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.20, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !44
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv2ml25NormalBayesClassifierImpl11getVarCountEv(ptr noundef nonnull align 8 dereferenceable(784) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv2ml25NormalBayesClassifierImpl9isTrainedEv(ptr noundef nonnull align 8 dereferenceable(784) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv2ml25NormalBayesClassifierImpl12isClassifierEv(ptr noundef nonnull align 8 dereferenceable(784) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv2ml25NormalBayesClassifierImpl5trainERKNS_3PtrINS0_9TrainDataEEEi(ptr noundef nonnull align 8 dereferenceable(784) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %20 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %22 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 9 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 9 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator", align 1   ; 3 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %31 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %35 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %42 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !86     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv2ml25NormalBayesClassifierImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.17, i32 noundef 57) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %11, align 8, !tbaa !48    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !47
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn278 = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ey

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.n = load ptr, ptr %1, align 8, !tbaa !86     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.h unwind label %bb.an

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.r = load ptr, ptr %1, align 8, !tbaa !86     ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.i unwind label %bb.ao

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.v = load ptr, ptr %1, align 8, !tbaa !86     ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.ap

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.k unwind label %bb.aq      ; 4 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !86    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.l unwind label %bb.ar      ; 24 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %1, align 8, !tbaa !86    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.m unwind label %bb.as      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.al = and i32 %2, 1
  %.not = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.bo

bb.n:                                             ; preds = %bb.m
  store i32 %i.ak, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %sext = shl i64 %i.z, 32
  %i.ao = ashr exact i64 %sext, 32                ; 24 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65 ; 3 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 208               ; 3 uses
  %i.aw = icmp ugt i64 %i.ao, %i.av
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = sub nuw nsw i64 %i.ao, %i.av
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.ax)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.at

bb.p:                                             ; preds = %bb.n
  %i.ay = icmp ult i64 %i.ao, %i.av
  br i1 %i.ay, label %bb.q, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw [208 x i8], ptr %i.ar, i64 %i.ao ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.az, %bb.q ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.aq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !66

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !65
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.q, %bb.p, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !65 ; 3 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !64 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 208               ; 3 uses
  %i.bj = icmp ugt i64 %i.ao, %i.bi
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.bk = sub nuw nsw i64 %i.ao, %i.bi
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bk)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit300 unwind label %bb.at

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.bl = icmp ult i64 %i.ao, %i.bi
  br i1 %i.bl, label %bb.t, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit300

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw [208 x i8], ptr %i.be, i64 %i.ao ; 3 uses
  %.not.i.i294 = icmp eq ptr %i.bd, %i.bm
  br i1 %.not.i.i294, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit300, label %.lr.ph.i.i.i.i295

.lr.ph.i.i.i.i295:                                ; preds = %bb.t, %.lr.ph.i.i.i.i295
  %.05.i.i.i.i296 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i295 ], [ %i.bm, %bb.t ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i296) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i296, i64 208 ; 2 uses
  %.not.i.i.i.i297 = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i.i.i.i297, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i298, label %.lr.ph.i.i.i.i295, !llvm.loop !66

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i298: ; preds = %.lr.ph.i.i.i.i295
  store ptr %i.bm, ptr %i.bc, align 8, !tbaa !65
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit300

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit300:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i298, %bb.t, %bb.s, %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !65 ; 3 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !64 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 208               ; 3 uses
  %i.bw = icmp ugt i64 %i.ao, %i.bv
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit300
  %i.bx = sub nuw nsw i64 %i.ao, %i.bv
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.bx)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit307 unwind label %bb.at

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit300
  %i.by = icmp ult i64 %i.ao, %i.bv
  br i1 %i.by, label %bb.w, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit307

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [208 x i8], ptr %i.br, i64 %i.ao ; 3 uses
  %.not.i.i301 = icmp eq ptr %i.bq, %i.bz
  br i1 %.not.i.i301, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit307, label %.lr.ph.i.i.i.i302

.lr.ph.i.i.i.i302:                                ; preds = %bb.w, %.lr.ph.i.i.i.i302
  %.05.i.i.i.i303 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i302 ], [ %i.bz, %bb.w ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i303) #19
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i303, i64 208 ; 2 uses
  %.not.i.i.i.i304 = icmp eq ptr %i.ca, %i.bq
  br i1 %.not.i.i.i.i304, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i305, label %.lr.ph.i.i.i.i302, !llvm.loop !66

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i305: ; preds = %.lr.ph.i.i.i.i302
  store ptr %i.bz, ptr %i.bp, align 8, !tbaa !65
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit307

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit307:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i305, %bb.w, %bb.v, %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !65 ; 3 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !64 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 208               ; 3 uses
  %i.cj = icmp ugt i64 %i.ao, %i.ci
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit307
  %i.ck = sub nuw nsw i64 %i.ao, %i.ci
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 noundef %i.ck)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit314 unwind label %bb.at

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit307
  %i.cl = icmp ult i64 %i.ao, %i.ci
  br i1 %i.cl, label %bb.z, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit314

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw [208 x i8], ptr %i.ce, i64 %i.ao ; 3 uses
  %.not.i.i308 = icmp eq ptr %i.cd, %i.cm
  br i1 %.not.i.i308, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit314, label %.lr.ph.i.i.i.i309

.lr.ph.i.i.i.i309:                                ; preds = %bb.z, %.lr.ph.i.i.i.i309
  %.05.i.i.i.i310 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i309 ], [ %i.cm, %bb.z ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i310) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i310, i64 208 ; 2 uses
  %.not.i.i.i.i311 = icmp eq ptr %i.cn, %i.cd
  br i1 %.not.i.i.i.i311, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i312, label %.lr.ph.i.i.i.i309, !llvm.loop !66

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i312: ; preds = %.lr.ph.i.i.i.i309
  store ptr %i.cm, ptr %i.cc, align 8, !tbaa !65
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit314

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit314:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i312, %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !65 ; 3 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !64 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 208               ; 3 uses
  %i.cw = icmp ugt i64 %i.ao, %i.cv
  br i1 %i.cw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit314
  %i.cx = sub nuw nsw i64 %i.ao, %i.cv
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 noundef %i.cx)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit321 unwind label %bb.at

bb.ab:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit314
  %i.cy = icmp ult i64 %i.ao, %i.cv
  br i1 %i.cy, label %bb.ac, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit321

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw [208 x i8], ptr %i.cr, i64 %i.ao ; 3 uses
  %.not.i.i315 = icmp eq ptr %i.cq, %i.cz
  br i1 %.not.i.i315, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit321, label %.lr.ph.i.i.i.i316

.lr.ph.i.i.i.i316:                                ; preds = %bb.ac, %.lr.ph.i.i.i.i316
  %.05.i.i.i.i317 = phi ptr [ %i.da, %.lr.ph.i.i.i.i316 ], [ %i.cz, %bb.ac ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i317) #19
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i317, i64 208 ; 2 uses
  %.not.i.i.i.i318 = icmp eq ptr %i.da, %i.cq
  br i1 %.not.i.i.i.i318, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i319, label %.lr.ph.i.i.i.i316, !llvm.loop !66

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i319: ; preds = %.lr.ph.i.i.i.i316
end_hunk_0
begin_hunk_1_@_ZN2cv2ml25NormalBayesClassifierImpl5trainERKNS_3PtrINS0_9TrainDataEEEi:bb.a

bb.cs:                                            ; preds = %.noexc376
  unreachable

bb.ct:                                            ; preds = %.noexc376
  %i.ju = landingpad { ptr, i32 }
          cleanup
  %i.jv = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367: ; preds = %bb.ct
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !47
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body364

bb.cu:                                            ; preds = %bb.cq
  %i.ka = icmp sgt i32 %i.js, 0
  br i1 %i.ka, label %bb.cv, label %.thread.i370

.thread.i370:                                     ; preds = %bb.cu
  %i.kb = icmp eq i32 %i.js, 0
  %i.kc = zext i1 %i.kb to i32
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.kd = getelementptr inbounds nuw i8, ptr %14, i64 84
  %i.ke = icmp eq i32 %i.js, 2
  %.sroa.gep396 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %.sroa.gep396.val = load i32, ptr %.sroa.gep396, align 8
  %.val406 = load i32, ptr %i.kd, align 4         ; 2 uses
  %i.kf = select i1 %i.ke, i32 %.sroa.gep396.val, i32 %.val406 ; 2 uses
  %.not.i375 = icmp eq i32 %i.js, 1
  br i1 %.not.i375, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %.thread.i370
  %i.kg = phi i32 [ %i.kc, %.thread.i370 ], [ %i.kf, %bb.cv ]
  %i.kh = icmp sgt i32 %i.js, -1
  %i.ki = zext i1 %i.kh to i32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.kj = phi i32 [ %i.kg, %bb.cw ], [ %i.kf, %bb.cv ]
  %i.kk = phi i32 [ %i.ki, %bb.cw ], [ %.val406, %bb.cv ]
  %i.kl = icmp ne i32 %i.jp, %i.kj
  %i.km = icmp ne i32 %i.jq, %i.kk
  %.not6.i380 = select i1 %i.kl, i1 true, i1 %i.km
  br i1 %.not6.i380, label %.critedge286.thread405, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.kn = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.kn, align 8, !tbaa !99
  %i.ko = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.ko, align 4, !tbaa !101
  store i32 16842752, ptr %25, align 8, !tbaa !102
  %i.kp = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.it, ptr %i.kp, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.kq, align 8, !tbaa !99
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 0, ptr %i.kr, align 4, !tbaa !101
  store i32 16842752, ptr %26, align 8, !tbaa !102
  %i.ks = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %14, ptr %i.ks, align 8, !tbaa !104
  %i.kt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.cz unwind label %bb.dh

bb.cz:                                            ; preds = %bb.cy
  %i.ku = invoke noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %.critedge286 unwind label %bb.dh

.critedge286.thread405:                           ; preds = %bb.ch, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %.critedge286.thread

.critedge286:                                     ; preds = %bb.cz
  %i.kv = fcmp une double %i.ku, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br i1 %i.kv, label %.critedge286.thread, label %bb.dk

.critedge286.thread:                              ; preds = %bb.ce, %bb.bo, %.critedge286.thread405, %.critedge286
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.da unwind label %bb.di

bb.da:                                            ; preds = %.critedge286.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv2ml25NormalBayesClassifierImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.17, i32 noundef 105) #20
          to label %bb.db unwind label %bb.dj

bb.db:                                            ; preds = %bb.da
  unreachable

bb.dc:                                            ; preds = %bb.bq
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dd:                                            ; preds = %bb.by
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.de:                                            ; preds = %bb.cg, %bb.cf
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.body364

bb.df:                                            ; preds = %bb.cj
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %.body364

bb.dg:                                            ; preds = %bb.cr
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body364

bb.dh:                                            ; preds = %bb.cz, %bb.cy
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %.body364

.body364:                                         ; preds = %bb.de, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368, %bb.dg, %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i355
  %.pn235.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368 ], [ %i.ky, %bb.de ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i355 ], [ %i.kz, %bb.df ], [ %i.lb, %bb.dh ], [ %i.la, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %.body

bb.di:                                            ; preds = %.critedge286.thread
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

bb.dj:                                            ; preds = %bb.da
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = load ptr, ptr %27, align 8, !tbaa !48   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %bb.dj
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !47
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381, %bb.di
  %.pn269 = phi { ptr, i32 } [ %i.lc, %bb.di ], [ %i.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381 ], [ %i.ld, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body

bb.dk:                                            ; preds = %.critedge286, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %29, i32 noundef %i.af, i32 noundef %i.af, i32 noundef 6)
          to label %bb.dl unwind label %bb.dt

bb.dl:                                            ; preds = %bb.dk
  %i.lj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !105 ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph415, label %._crit_edge416

.lr.ph415:                                        ; preds = %bb.dl
  %i.lm = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ln = getelementptr inbounds nuw i8, ptr %13, i64 84
  %i.lo = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.lp = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.lq = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8            ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.lt = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !64
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !64
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !64
  %i.ma = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !106
  %i.mc = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !84
  %i.me = icmp sgt i32 %i.af, 0
  %43 = sext i32 %i.af to i64
  %wide.trip.count471.a = zext nneg i32 %i.lk to i64
  %wide.trip.count466 = zext i32 %i.af to i64     ; 3 uses
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph415, %._crit_edge412
  %indvars.iv468 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next469, %._crit_edge412 ] ; 6 uses
  %i.mf = load i32, ptr %i.lm, align 4, !tbaa !107
  %i.mg = icmp slt i32 %i.mf, 2
  br i1 %i.mg, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv468
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.do:                                            ; preds = %bb.dm
  %i.mi = load i32, ptr %13, align 8, !tbaa !108
  %i.mj = and i32 %i.mi, 16384
  %i.mk = icmp ne i32 %i.mj, 0
  %i.ml = load i32, ptr %i.ln, align 4
  %i.mm = icmp eq i32 %i.ml, 1
  %or.cond.i = select i1 %i.mk, i1 true, i1 %i.mm
  br i1 %or.cond.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv468
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.dq:                                            ; preds = %bb.do
  %i.mo = load i32, ptr %i.lo, align 8, !tbaa !57
  %i.mp = icmp eq i32 %i.mo, 1
  br i1 %i.mp, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.mq = mul i64 %i.lt, %indvars.iv468
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.mq
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.ds:                                            ; preds = %bb.dq
  %i.ms = load i32, ptr %i.lp, align 4, !tbaa !109 ; 3 uses
  %i.mt = trunc nuw nsw i64 %indvars.iv468 to i32 ; 2 uses
  %i.mu = sdiv i32 %i.mt, %i.ms                   ; 2 uses
  %i.mv = mul nsw i32 %i.mu, %i.ms                ; 0 uses
  %.recomposed = srem i32 %i.mt, %i.ms
  %i.mw = sext i32 %i.mu to i64
  %i.mx = mul i64 %i.lt, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.mx
  %i.mz = sext i32 %.recomposed to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.mz
  br label %_ZN2cv3Mat2atIiEERT_i.exit

_ZN2cv3Mat2atIiEERT_i.exit:                       ; preds = %bb.ds, %bb.dr, %bb.dp, %bb.dn
  %.0.i = phi ptr [ %i.mh, %bb.dn ], [ %i.mn, %bb.dp ], [ %i.mr, %bb.dr ], [ %i.na, %bb.ds ]
  %i.nb = load i32, ptr %.0.i, align 4, !tbaa !57
  %i.nc = sext i32 %i.nb to i64                   ; 3 uses
  %i.nd = getelementptr inbounds nuw [208 x i8], ptr %i.lv, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !106
  %i.ng = getelementptr inbounds nuw [208 x i8], ptr %i.lx, i64 %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !106
  %i.nj = mul i64 %i.md, %indvars.iv468
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.nj ; 3 uses
  br i1 %i.me, label %.lr.ph411.preheader, label %._crit_edge412

.lr.ph411.preheader:                              ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.nl = getelementptr inbounds nuw [208 x i8], ptr %i.lz, i64 %i.nc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !106
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.loopexit
  %indvars.iv458 = phi i64 [ 0, %.lr.ph411.preheader ], [ %indvars.iv.next459, %.loopexit ] ; 8 uses
  %.0161410 = phi ptr [ %i.nn, %.lr.ph411.preheader ], [ %i.oq, %.loopexit ] ; 3 uses
  %i.no = sub nsw i64 %wide.trip.count466, %indvars.iv458 ; 3 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv458
  %i.nq = load float, ptr %i.np, align 4, !tbaa !110
  %i.nr = fpext float %i.nq to double             ; 3 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv458 ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !112
  %i.nu = fadd double %i.nt, %i.nr
  store double %i.nu, ptr %i.ns, align 8, !tbaa !112
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv458 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !57
  %i.nx = add nsw i32 %i.nw, 1
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !57
  %min.iters.check = icmp ult i64 %i.no, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph411
  %n.vec = and i64 %i.no, -4                      ; 3 uses
  %i.ny = add i64 %indvars.iv458, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.nr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nz = add nuw i64 %indvars.iv458, %index      ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.nz ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %wide.load = load <2 x float>, ptr %i.oa, align 4, !tbaa !110
  %wide.load583 = load <2 x float>, ptr %i.ob, align 4, !tbaa !110
  %i.oc = fpext <2 x float> %wide.load to <2 x double>
  %i.od = fpext <2 x float> %wide.load583 to <2 x double>
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.0161410, i64 %i.nz ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16 ; 2 uses
  %wide.load584 = load <2 x double>, ptr %i.oe, align 8, !tbaa !112
  %wide.load585 = load <2 x double>, ptr %i.of, align 8, !tbaa !112
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %broadcast.splat, <2 x double> %wide.load584)
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %broadcast.splat, <2 x double> %wide.load585)
  store <2 x double> %i.og, ptr %i.oe, align 8, !tbaa !112
  store <2 x double> %i.oh, ptr %i.of, align 8, !tbaa !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oi = icmp eq i64 %index.next, %n.vec
  br i1 %i.oi, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.no, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph411, %middle.block
  %indvars.iv460.ph = phi i64 [ %indvars.iv458, %.lr.ph411 ], [ %i.ny, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv460 = phi i64 [ %indvars.iv.next461, %scalar.ph ], [ %indvars.iv460.ph, %scalar.ph.preheader ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv460
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !110
  %i.ol = fpext float %i.ok to double
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %.0161410, i64 %indvars.iv460 ; 2 uses
  %i.on = load double, ptr %i.om, align 8, !tbaa !112
  %i.oo = call double @llvm.fmuladd.f64(double %i.ol, double %i.nr, double %i.on)
  store double %i.oo, ptr %i.om, align 8, !tbaa !112
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count466
  br i1 %exitcond464.not, label %.loopexit, label %scalar.ph, !llvm.loop !116

bb.dt:                                            ; preds = %bb.dk
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %.0161410, i64 %43
  %exitcond467.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge412, label %.lr.ph411, !llvm.loop !117

._crit_edge412:                                   ; preds = %.loopexit, %_ZN2cv3Mat2atIiEERT_i.exit
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471.a
  br i1 %exitcond472.not, label %._crit_edge416, label %bb.dm, !llvm.loop !118

._crit_edge416:                                   ; preds = %._crit_edge412, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %30) #19
  %i.or = icmp sgt i32 %i.aa, 0
  br i1 %i.or, label %.lr.ph447, label %._crit_edge448

.lr.ph447:                                        ; preds = %._crit_edge416
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.oz = icmp sgt i32 %i.af, 0                   ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.pb = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.pc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.pg = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.po = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.ps = getelementptr inbounds nuw i8, ptr %38, i64 20
  %i.pt = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.pw = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %41, i64 20
  %i.qa = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %wide.trip.count518 = and i64 %i.z, 2147483647
  %wide.trip.count497 = zext i32 %i.af to i64     ; 9 uses
  %xtraiter = and i64 %wide.trip.count497, 1
  %i.qk = icmp eq i32 %i.af, 1
  %unroll_iter = and i64 %wide.trip.count497, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod665 = trunc i32 %i.af to i1
  %xtraiter666 = and i32 %i.af, 1
  %i.ql = icmp eq i32 %i.af, 1
  %unroll_iter670 = and i32 %i.af, 2147483646
  %lcmp.mod667.not = icmp eq i32 %xtraiter666, 0
  %lcmp.mod669 = trunc i32 %i.af to i1
  %xtraiter672 = and i64 %wide.trip.count497, 3   ; 3 uses
  %i.qm = icmp ult i32 %i.af, 4
  %unroll_iter676 = and i64 %wide.trip.count497, 2147483644
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  %lcmp.mod675 = icmp ne i64 %xtraiter672, 0
  %xtraiter678 = and i64 %wide.trip.count497, 7   ; 3 uses
  %i.qn = icmp ult i32 %i.af, 8
  %unroll_iter683 = and i64 %wide.trip.count497, 2147483640
  %lcmp.mod680.not = icmp eq i64 %xtraiter678, 0
  %lcmp.mod682 = icmp ne i64 %xtraiter678, 0
  %xtraiter685 = and i64 %wide.trip.count497, 7   ; 3 uses
  %i.qo = icmp ult i32 %i.af, 8
  %unroll_iter690 = and i64 %wide.trip.count497, 2147483640
  %lcmp.mod687.not = icmp eq i64 %xtraiter685, 0
  %lcmp.mod689 = icmp ne i64 %xtraiter685, 0
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph447, %_ZN2cv3Mat2atIdEERT_i.exit388
  %indvars.iv515 = phi i64 [ 0, %.lr.ph447 ], [ %indvars.iv.next516, %_ZN2cv3Mat2atIdEERT_i.exit388 ] ; 16 uses
  %i.qp = load ptr, ptr %i.os, align 8, !tbaa !64
  %i.qq = getelementptr inbounds nuw [208 x i8], ptr %i.qp, i64 %indvars.iv515 ; 12 uses
  %i.qr = load ptr, ptr %i.ot, align 8, !tbaa !64
  %i.qs = getelementptr inbounds nuw [208 x i8], ptr %i.qr, i64 %indvars.iv515
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !106 ; 3 uses
  %i.qv = load ptr, ptr %i.ou, align 8, !tbaa !64
  %i.qw = getelementptr inbounds nuw [208 x i8], ptr %i.qv, i64 %indvars.iv515
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !106 ; 3 uses
  %i.qz = load ptr, ptr %i.ov, align 8, !tbaa !64
  %i.ra = getelementptr inbounds nuw [208 x i8], ptr %i.qz, i64 %indvars.iv515
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !106 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.rd = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.re = getelementptr inbounds nuw [208 x i8], ptr %i.rd, i64 %indvars.iv515
  store i64 0, ptr %i.oy, align 8
  store i32 50397184, ptr %31, align 8, !tbaa !102
  store ptr %i.re, ptr %i.ox, align 8, !tbaa !104
  invoke void @_ZN2cv12completeSymmERKNS_17_InputOutputArrayEb(ptr noundef nonnull align 8 dereferenceable(24) %31, i1 noundef zeroext false)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br i1 %i.oz, label %.lr.ph419.preheader, label %._crit_edge420

.lr.ph419.preheader:                              ; preds = %bb.dv
  br i1 %i.qk, label %.lr.ph419.epil.preheader, label %.lr.ph419

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.dy
  %indvars.iv473 = phi i64 [ %indvars.iv.next474.1, %bb.dy ], [ 0, %.lr.ph419.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.dy ], [ 0, %.lr.ph419.preheader ]
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv473
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !57 ; 2 uses
  %.not265 = icmp eq i32 %i.rg, 0
  br i1 %.not265, label %.lr.ph419.1, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph419
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv473
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !112
  %i.rj = sitofp i32 %i.rg to double
  %i.rk = fdiv double %i.ri, %i.rj
  br label %.lr.ph419.1

.lr.ph419.1:                                      ; preds = %.lr.ph419, %bb.dw
  %i.rl = phi double [ %i.rk, %bb.dw ], [ 0.000000e+00, %.lr.ph419 ]
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv473
  store double %i.rl, ptr %i.rm, align 8, !tbaa !112
  %indvars.iv.next474 = or disjoint i64 %indvars.iv473, 1 ; 3 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next474
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !57 ; 2 uses
  %.not265.1 = icmp eq i32 %i.ro, 0
  br i1 %.not265.1, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph419.1
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv.next474
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !112
  %i.rr = sitofp i32 %i.ro to double
  %i.rs = fdiv double %i.rq, %i.rr
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.lr.ph419.1
  %i.rt = phi double [ %i.rs, %bb.dx ], [ 0.000000e+00, %.lr.ph419.1 ]
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next474
  store double %i.rt, ptr %i.ru, align 8, !tbaa !112
  %indvars.iv.next474.1 = add nuw nsw i64 %indvars.iv473, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge420.loopexit.unr-lcssa, label %.lr.ph419, !llvm.loop !119

bb.dz:                                            ; preds = %bb.du
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.et

._crit_edge420.loopexit.unr-lcssa:                ; preds = %bb.dy
  br i1 %lcmp.mod.not, label %._crit_edge420, label %.lr.ph419.epil.preheader

.lr.ph419.epil.preheader:                         ; preds = %._crit_edge420.loopexit.unr-lcssa, %.lr.ph419.preheader
  %indvars.iv473.epil.init = phi i64 [ 0, %.lr.ph419.preheader ], [ %indvars.iv.next474.1, %._crit_edge420.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod665)
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv473.epil.init
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !57 ; 2 uses
  %.not265.epil = icmp eq i32 %i.rx, 0
  br i1 %.not265.epil, label %._crit_edge420.loopexit.epilog-lcssa, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph419.epil.preheader
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv473.epil.init
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !112
  %i.sa = sitofp i32 %i.rx to double
  %i.sb = fdiv double %i.rz, %i.sa
  br label %._crit_edge420.loopexit.epilog-lcssa

._crit_edge420.loopexit.epilog-lcssa:             ; preds = %bb.ea, %.lr.ph419.epil.preheader
  %i.sc = phi double [ %i.sb, %bb.ea ], [ 0.000000e+00, %.lr.ph419.epil.preheader ]
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv473.epil.init
  store double %i.sc, ptr %i.sd, align 8, !tbaa !112
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %._crit_edge420.loopexit.epilog-lcssa, %._crit_edge420.loopexit.unr-lcssa, %bb.dv
  %i.se = load ptr, ptr %i.ot, align 8, !tbaa !64
  %i.sf = getelementptr inbounds nuw [208 x i8], ptr %i.se, i64 %indvars.iv515
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !106
  %i.si = load ptr, ptr %i.ou, align 8, !tbaa !64
  %i.sj = getelementptr inbounds nuw [208 x i8], ptr %i.si, i64 %indvars.iv515
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !106 ; 9 uses
  %i.sm = load ptr, ptr %i.ov, align 8, !tbaa !64
  %i.sn = getelementptr inbounds nuw [208 x i8], ptr %i.sm, i64 %indvars.iv515
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !106 ; 9 uses
  br i1 %i.oz, label %.lr.ph426, label %._crit_edge427

end_hunk_1
