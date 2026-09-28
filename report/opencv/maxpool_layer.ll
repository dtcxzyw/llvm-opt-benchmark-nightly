Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/maxpool_layer?download=true
inline.NumInlined: 761
inline.NumDeleted: 370
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv3dnn16MaxPoolLayerImplD0Ev:bb.a
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22, !inline_history !61
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22, !inline_history !61
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i:                 ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5.i, label %_ZN2cv3dnn14dnn5_v2026060512MaxPoolLayerD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22, !inline_history !61
  br label %_ZN2cv3dnn14dnn5_v2026060512MaxPoolLayerD2Ev.exit

_ZN2cv3dnn14dnn5_v2026060512MaxPoolLayerD2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i, %bb.e
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(268) %0) #19, !inline_history !61
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9subgraphsEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16MaxPoolLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer7forwardERSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EESB_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"struct.cv::MatShape", align 4    ; 12 uses
  %22 = alloca %"struct.cv::MatShape", align 4    ; 4 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %24 = alloca %"class.std::vector", align 8      ; 11 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.15, i32 noundef 550) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %8, align 8, !tbaa !53     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !48
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bx

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZNK2cv11_InputArray5shapeEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  %i.k = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.l = icmp eq i32 %i.k, 327680
  switch i32 %i.k, label %bb.h [
    i32 720896, label %bb.m
    i32 327680, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.15, i32 noundef 556) #20
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %11, align 8, !tbaa !53    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !48
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.k
  %.pn59 = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bw

bb.m:                                             ; preds = %bb.g, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 2                  ; 13 uses
  %i.ab = icmp eq i64 %i.z, 8                     ; 4 uses
  %i.ac = add nsw i64 %i.aa, -1
  %or.cond3 = icmp ult i64 %i.ac, 2
  br i1 %or.cond3, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.15, i32 noundef 559) #20
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.r:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.r
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !48
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.q
  %.pn61 = phi { ptr, i32 } [ %i.ad, %bb.q ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.ae, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bw

bb.s:                                             ; preds = %bb.m
  br i1 %i.ab, label %bb.t, label %bb.al

bb.t:                                             ; preds = %bb.s
  %i.ak = icmp eq i32 %i.j, 5
  br i1 %i.ak, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.15, i32 noundef 563) #20
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.y:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %15, align 8, !tbaa !53   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.y
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !48
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.x
  %.pn63 = phi { ptr, i32 } [ %i.al, %bb.x ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.am, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.bw

bb.z:                                             ; preds = %bb.t
  %i.as = load i32, ptr %10, align 4, !tbaa !66
  %i.at = icmp eq i32 %i.as, 4
  br i1 %i.at, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.15, i32 noundef 564) #20
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ae:                                            ; preds = %bb.ab
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %17, align 8, !tbaa !53   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ae
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ad
  %.pn65 = phi { ptr, i32 } [ %i.au, %bb.ad ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.av, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.bw

bb.af:                                            ; preds = %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !158
  %.not = icmp eq i32 %i.bc, 7
  br i1 %.not, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.15, i32 noundef 566) #20
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.ak:                                            ; preds = %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ak
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !48
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.aj
  %.pn67 = phi { ptr, i32 } [ %i.bd, %bb.aj ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.be, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.bw

bb.al:                                            ; preds = %bb.af, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %22)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !58, !range !67, !noundef !68
  %i.bs = trunc nuw i8 %i.br to i1
  call void @_ZN2cv3dnn14dnn5_v2026060514convInferShapeERKNS_8MatShapeES4_RKSt6vectorIiSaIiEEiS9_S9_S9_NS1_11AutoPaddingEb(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %21, ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i32 noundef %i.bp, i1 noundef zeroext %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.bt = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !159 ; 0 uses
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  br i1 %i.l, label %bb.am, label %bb.ay

bb.am:                                            ; preds = %bb.al
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn16MaxPoolLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 208               ; 3 uses
  %i.cl = icmp ugt i64 %i.aa, %i.ck
  br i1 %i.cl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cm = sub nuw nsw i64 %i.aa, %i.ck
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef %i.cm)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.cn = icmp ult i64 %i.aa, %i.ck
  br i1 %i.cn, label %bb.at, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.at:                                            ; preds = %bb.as
  %i.co = getelementptr inbounds nuw [208 x i8], ptr %i.cg, i64 %i.aa ; 3 uses
  %.not.i.i = icmp eq ptr %i.cf, %i.co
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.at, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %i.co, %bb.at ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #19
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cf
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !69
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.at, %bb.as, %bb.ar
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !70
  invoke void @_ZN2cv3Mat3fitERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.cq, ptr noundef nonnull align 4 dereferenceable(52) %21, i32 noundef %i.j)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  br i1 %i.ab, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !70
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 208
  invoke void @_ZN2cv3Mat3fitERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.cs, ptr noundef nonnull align 4 dereferenceable(52) %21, i32 noundef 11)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.ar, %bb.an, %bb.am, %bb.ax, %bb.av, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.av, %bb.au
  invoke void @_ZN2cv3dnn16MaxPoolLayerImpl10runForwardERKNS_3MatERSt6vectorIS2_SaIS2_EERKNS_8MatShapeESB_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %21)
          to label %bb.bv unwind label %bb.aw

bb.ay:                                            ; preds = %bb.al
  %i.cu = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc100 unwind label %bb.bi

.noexc100:                                        ; preds = %bb.ay
  %i.cv = icmp eq i32 %i.cu, 720896
  br i1 %i.cv, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.noexc100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc101 unwind label %bb.bi

.noexc101:                                        ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv12_OutputArray13getUMatVecRefEv, ptr noundef nonnull @.str.22, i32 noundef 419) #20
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc101
  unreachable

bb.bb:                                            ; preds = %.noexc101
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %bb.bb
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !48
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.bc:                                            ; preds = %.noexc100
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !162 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !73 ; 3 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !74 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 184               ; 3 uses
  %i.dl = icmp ugt i64 %i.aa, %i.dk
  br i1 %i.dl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dm = sub nuw nsw i64 %i.aa, %i.dk
  invoke void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 noundef %i.dm)
          to label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit unwind label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.dn = icmp ult i64 %i.aa, %i.dk
  br i1 %i.dn, label %bb.bf, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit

bb.bf:                                            ; preds = %bb.be
  %i.do = getelementptr inbounds nuw [184 x i8], ptr %i.dg, i64 %i.aa ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.df, %i.do
  br i1 %.not.i.i104, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i105

.lr.ph.i.i.i.i105:                                ; preds = %bb.bf, %.lr.ph.i.i.i.i105
  %.05.i.i.i.i106 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i105 ], [ %i.do, %bb.bf ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i106) #19
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i106, i64 184 ; 2 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.dp, %i.df
  br i1 %.not.i.i.i.i107, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i105, !llvm.loop !1

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i105
  store ptr %i.do, ptr %i.de, align 8, !tbaa !73
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit:    ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.bf, %bb.be, %bb.bd
  %i.dq = load ptr, ptr %i.dd, align 8, !tbaa !74
  invoke void @_ZN2cv4UMat3fitERKNS_8MatShapeEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.dq, ptr noundef nonnull align 4 dereferenceable(52) %21, i32 noundef %i.j, i32 noundef 0)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit
  br i1 %i.ab, label %bb.bh, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.dr = load ptr, ptr %i.dd, align 8, !tbaa !74
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 184
  invoke void @_ZN2cv4UMat3fitERKNS_8MatShapeEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.ds, ptr noundef nonnull align 4 dereferenceable(52) %21, i32 noundef 11, i32 noundef 0)
          to label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bd, %bb.az, %bb.ay, %bb.bh, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.du = mul nuw nsw i64 %i.aa, 208
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #18
          to label %.noexc111 unwind label %bb.bm ; 5 uses

.noexc111:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.dv, ptr %24, align 8, !tbaa !70
  %i.dw = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw [208 x i8], ptr %i.dv, i64 %i.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !75
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc111
  %.08.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %i.dv, %.noexc111 ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.noexc111 ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #19
  %i.dz = add i64 %.057.i.i.i.i.i, -1             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i, label %bb.bj, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !69
  invoke void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.dv, ptr noundef nonnull align 4 dereferenceable(52) %21, i32 noundef %i.j)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.ab, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 208
  invoke void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.eb, ptr noundef nonnull align 4 dereferenceable(52) %21, i32 noundef 11)
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bo, %bb.bl, %bb.bj
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  invoke void @_ZN2cv3dnn16MaxPoolLayerImpl10runForwardERKNS_3MatERSt6vectorIS2_SaIS2_EERKNS_8MatShapeESB_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %21)
          to label %.lr.ph unwind label %bb.bn

.lr.ph:                                           ; preds = %bb.bo
  %i.ee = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %25, i64 16
  br label %bb.bq

._crit_edge:                                      ; preds = %bb.br
  %i.eg = load ptr, ptr %24, align 8, !tbaa !70   ; 3 uses
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i ], [ %i.eg, %._crit_edge ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #19
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ei, %i.eh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %24, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ej = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.eg, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !75
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.bv

bb.bq:                                            ; preds = %.lr.ph, %bb.br
  %.0112 = phi i64 [ 0, %.lr.ph ], [ %i.es, %bb.br ] ; 3 uses
  %i.eo = load ptr, ptr %24, align 8, !tbaa !70
  %i.ep = getelementptr inbounds nuw [208 x i8], ptr %i.eo, i64 %.0112
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.eq = load ptr, ptr %i.dd, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw [184 x i8], ptr %i.eq, i64 %.0112
  store i64 0, ptr %i.ef, align 8
  store i32 34209792, ptr %25, align 8, !tbaa !163
  store ptr %i.er, ptr %i.ee, align 8, !tbaa !162
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.es = add nuw i64 %.0112, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.es, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %bb.bq, !llvm.loop !157

bb.bs:                                            ; preds = %bb.bq
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bn
  %.pn69.pn = phi { ptr, i32 } [ %i.et, %bb.bs ], [ %i.ed, %bb.bn ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #19
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bm
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %bb.bt ], [ %i.ec, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %.body

bb.bv:                                            ; preds = %bb.ax, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret void

.body:                                            ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bu
  %.pn74 = phi { ptr, i32 } [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn69.pn.pn, %bb.bu ], [ %i.ct, %bb.aw ], [ %i.dt, %bb.bi ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn74, %.body ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn, %bb.bw ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16MaxPoolLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(268) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  ret i1 %i.a
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16MaxPoolLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"struct.cv::MatShape", align 4     ; 4 uses
  %10 = alloca %"struct.cv::MatShape", align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.off = add nsw i64 %i.h, -1
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv3dnn16MaxPoolLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 516) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !48
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.r = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.u, 52
  br i1 %i.v, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

end_hunk_1
