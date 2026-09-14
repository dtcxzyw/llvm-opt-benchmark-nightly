Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/eltwise_layer?download=true
inline.NumInlined: 915
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn16EltwiseLayerImpl14supportBackendEi
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16EltwiseLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 5
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i32, ptr %i.b, align 8, !tbaa !70
  switch i32 %i.c, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 0, label %switch.edge
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %switch.edge

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112
  %i.k = icmp eq ptr %i.h, %i.j
  br label %switch.edge

bb.e:                                             ; preds = %bb.b
  br label %switch.edge

bb.f:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %1, 3
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.e
  %.0 = phi i1 [ %i.l, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ %i.k, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16EltwiseLayerImpl13setActivationERKNS_3PtrINS0_14dnn5_v2026060515ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !88   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.j, align 4, !tbaa !92
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !92
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !88
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.o = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %.pr.pre.i.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.p, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !91
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !184
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !184
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i9.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i9.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.j ], [ %i.ac, %bb.k ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !93

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.h, ptr %i.f, align 8, !tbaa !88
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit

_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit: ; preds = %bb.b, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.ae = phi ptr [ %i.d, %bb.b ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ]
  %i.af = icmp ne ptr %i.ae, null
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit
  %.0 = phi i1 [ %i.af, %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
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
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !117    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52                  ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 193) #25
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
  %i.k = load ptr, ptr %15, align 8, !tbaa !59    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !53
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.c, align 4, !tbaa !103
  %.fr299 = freeze i32 %i.p                       ; 8 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %.fr299, i32 0) ; 6 uses
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 4 uses
  %i.q = icmp slt i32 %.fr299, 1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.x, %i.w
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = icmp eq i64 %i.z, %i.g
  br i1 %i.aa, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 199) #25
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %17, align 8, !tbaa !59   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !53
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.n
  %.pn93 = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.ac, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %common.resume

.thread:                                          ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !50
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 200) #25
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.t:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %19, align 8, !tbaa !59   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !53
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.s
  %.pn95 = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.am, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %common.resume

.lr.ph:                                           ; preds = %.thread, %bb.i
  %i.as = icmp ne i32 %.fr299, 1                  ; 4 uses
  %.in.v = select i1 %i.as, i64 16, i64 12
  %.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.in.v
  %i.at = load i32, ptr %.in, align 4, !tbaa !92  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !92 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.069261.us = phi i64 [ %i.bg, %bb.y ], [ 1, %.lr.ph ] ; 2 uses
  %.070260.us = phi i1 [ %spec.select.us, %bb.y ], [ false, %.lr.ph ]
  %.0213259.us = phi i32 [ %.1.us, %bb.y ], [ %i.at, %.lr.ph ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.069261.us ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !92
  %i.ba = icmp eq i32 %i.av, %i.az
  br i1 %i.ba, label %bb.u, label %.split.us

bb.u:                                             ; preds = %.lr.ph.split.us
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !103
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %_ZNK2cv8MatShapeixEm.exit159.us, label %.split264.us

_ZNK2cv8MatShapeixEm.exit159.us:                  ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !92 ; 3 uses
  %.not104.us = icmp ne i32 %.0213259.us, %i.be   ; 2 uses
  %spec.select.us = select i1 %.not104.us, i1 true, i1 %.070260.us ; 2 uses
  %i.bf = load i32, ptr %i.aw, align 8, !tbaa !70
  switch i32 %i.bf, label %.split266.us [
    i32 0, label %bb.x
    i32 1, label %bb.w
    i32 2, label %bb.y
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit159.us
  %.sroa.speculated.us = tail call i32 @llvm.smax.i32(i32 %.0213259.us, i32 %i.be)
  br label %bb.y

bb.w:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit159.us
  %.not107.us = icmp slt i32 %.0213259.us, %i.be
  br i1 %.not107.us, label %.split268.us, label %bb.y

bb.x:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit159.us
  br i1 %.not104.us, label %.split270.us, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %_ZNK2cv8MatShapeixEm.exit159.us
  %.1.us = phi i32 [ %.0213259.us, %bb.x ], [ %.0213259.us, %bb.w ], [ %.0213259.us, %_ZNK2cv8MatShapeixEm.exit159.us ], [ %.sroa.speculated.us, %bb.v ] ; 2 uses
  %i.bg = add nuw i64 %.069261.us, 1              ; 2 uses
  %exitcond324.not.a = icmp eq i64 %i.bg, %i.g
  br i1 %exitcond324.not.a, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !185

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157
  %common.resume.op = phi { ptr, i32 } [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177 ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ]
  resume { ptr, i32 } %common.resume.op

._crit_edge:                                      ; preds = %bb.av, %bb.y
  %.0213.lcssa = phi i32 [ %.1.us, %bb.y ], [ %.1, %bb.av ] ; 2 uses
  %.070.lcssa = phi i1 [ %spec.select.us, %bb.y ], [ %spec.select, %bb.av ]
  br i1 %.070.lcssa, label %bb.aw, label %bb.ax

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.av
  %.069261 = phi i64 [ %i.cu, %bb.av ], [ 1, %.lr.ph ] ; 2 uses
  %.070260 = phi i1 [ %spec.select, %bb.av ], [ false, %.lr.ph ]
  %.0213259 = phi i32 [ %.1, %bb.av ], [ %i.at, %.lr.ph ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.069261
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !92
  %i.bk = icmp eq i32 %i.av, %i.bj
  br i1 %i.bk, label %bb.ad, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 208) #25
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %.split.us
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ac:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %21, align 8, !tbaa !59   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.ac
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ab
  %.pn101 = phi { ptr, i32 } [ %i.bl, %bb.ab ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.bm, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %common.resume

bb.ad:                                            ; preds = %.lr.ph.split
  %.not104 = icmp ne i32 %.0213259, %i.av         ; 2 uses
  %spec.select = select i1 %.not104, i1 true, i1 %.070260 ; 2 uses
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !70
  switch i32 %i.bs, label %.split266.us [
    i32 0, label %bb.ag
    i32 1, label %bb.al
    i32 2, label %bb.av
    i32 3, label %bb.aq
  ]

.split264.us:                                     ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.split264.us
  unreachable

bb.af:                                            ; preds = %.split264.us
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156: ; preds = %bb.af
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ag:                                            ; preds = %bb.ad
  br i1 %.not104, label %.split270.us, label %bb.av

.split270.us:                                     ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %.split270.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 216) #25
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %.split270.us
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.ak:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %23, align 8, !tbaa !59   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.ak
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !53
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.aj
  %.pn110 = phi { ptr, i32 } [ %i.bz, %bb.aj ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.ca, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %common.resume

bb.al:                                            ; preds = %bb.ad
  %.not107 = icmp slt i32 %.0213259, %i.av
  br i1 %.not107, label %.split268.us, label %bb.av

.split268.us:                                     ; preds = %bb.al, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.split268.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 220) #25
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %.split268.us
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

bb.ap:                                            ; preds = %bb.am
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %25, align 8, !tbaa !59   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ap
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !53
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.ao
  %.pn108 = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %i.ch, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %common.resume

bb.aq:                                            ; preds = %bb.ad
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0213259, i32 %i.av)
  br label %bb.av

.split266.us:                                     ; preds = %bb.ad, %_ZNK2cv8MatShapeixEm.exit159.us
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.split266.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 232) #25
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %.split266.us
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.au:                                            ; preds = %bb.ar
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %27, align 8, !tbaa !59   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.au
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !53
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.at
  %.pn105 = phi { ptr, i32 } [ %i.cn, %bb.at ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %i.co, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %common.resume

bb.av:                                            ; preds = %bb.ad, %bb.al, %bb.aq, %bb.ag
  %.1 = phi i32 [ %i.av, %bb.ag ], [ %.0213259, %bb.al ], [ %.0213259, %bb.ad ], [ %.sroa.speculated, %bb.aq ] ; 2 uses
  %i.cu = add nuw i64 %.069261, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !185

bb.aw:                                            ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !70
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge, %bb.aw
  %i.cx = phi i32 [ %i.cw, %bb.aw ], [ 0, %._crit_edge ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.0213.lcssa, ptr %i.cz, align 8, !tbaa !48
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %i.da = load ptr, ptr %3, align 8, !tbaa !117   ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !103
  %narrow.i169 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1) ; 2 uses
  %i.dc = zext i1 %i.as to i32
  %i.dd = icmp samesign ugt i32 %narrow.i169, %i.dc
  br i1 %i.dd, label %_ZN2cv8MatShapeixEm.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 97) #25
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.ba
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !53
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.ax
  %i.dk = zext i1 %i.as to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  store i32 %.0213.lcssa, ptr %i.dm, align 4, !tbaa !92
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  %i.do = load ptr, ptr %1, align 8, !tbaa !117   ; 7 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 52                ; 3 uses
  %.not = icmp eq ptr %i.dn, %i.do
  br i1 %.not, label %.loopexit, label %.lr.ph277

.lr.ph277:                                        ; preds = %_ZN2cv8MatShapeixEm.exit
  %.not97 = icmp eq i32 %.fr299, 1
  %i.dt = select i1 %.not97, i32 1, i32 2         ; 2 uses
  %.not.i = icmp slt i32 %.fr299, %i.dt
  %i.du = icmp samesign ugt i32 %.fr299, 2
  br i1 %.not.i, label %bb.bf, label %.lr.ph277.split

.lr.ph277.split:                                  ; preds = %.lr.ph277
  %.not28.i = icmp samesign ugt i32 %.fr299, %i.dt
  br i1 %.not28.i, label %.lr.ph277.split.split.us, label %.lr.ph277.split.split

.lr.ph277.split.split.us:                         ; preds = %.lr.ph277.split
  br i1 %i.du, label %.lr.ph277.split.split.us.split.us, label %.lr.ph277.split.split.us.split

.lr.ph277.split.split.us.split.us:                ; preds = %.lr.ph277.split.split.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us
  %.065276.us.us = phi i64 [ %i.el, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ 0, %.lr.ph277.split.split.us ] ; 5 uses
  %.066275.us.us = phi i8 [ %spec.select117222.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %.067274.us.us = phi i64 [ %spec.select116221.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.065276.us.us ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !103 ; 2 uses
  %.not23.i.us.us = icmp sgt i32 %narrow.i, %i.dw
  br i1 %.not23.i.us.us, label %.split283.us, label %.preheader.split.i.us.us

.preheader.split.i.us.us:                         ; preds = %.lr.ph277.split.split.us.split.us
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  br label %_ZNK2cv8MatShapeixEm.exit.i.us.us

_ZNK2cv8MatShapeixEm.exit.i.us.us:                ; preds = %bb.bb, %.preheader.split.i.us.us
  %indvars.iv.i.us.us = phi i64 [ 2, %.preheader.split.i.us.us ], [ %indvars.iv.next.i.us.us, %bb.bb ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i.us.us
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !92
  %.not24.i.us.us = icmp eq i32 %i.dz, 1
  br i1 %.not24.i.us.us, label %bb.bb, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us

bb.bb:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %spec.select.i
  br i1 %exitcond.not.i.us.us, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us, label %_ZNK2cv8MatShapeixEm.exit.i.us.us, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.us
  %i.ea = trunc nuw i8 %.066275.us.us to i1
  %spec.select116.us.us = select i1 %i.ea, i64 %.067274.us.us, i64 %.065276.us.us ; 3 uses
  %.not98.us.us = icmp eq i64 %.065276.us.us, %spec.select116.us.us
  br i1 %.not98.us.us, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us, label %.preheader223.us.us

.preheader223.us.us:                              ; preds = %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us
  %i.eb = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %spec.select116.us.us ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !103
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ee = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 2)
  %umax329 = zext nneg i32 %i.ee to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %.preheader223.us.us
  %.064272.us.us = phi i64 [ 2, %.preheader223.us.us ], [ %i.ek, %bb.bd ] ; 4 uses
  %exitcond330.not = icmp eq i64 %.064272.us.us, %umax329
  br i1 %exitcond330.not, label %.split286.us, label %_ZNK2cv8MatShapeixEm.exit179.us.us

_ZNK2cv8MatShapeixEm.exit179.us.us:               ; preds = %bb.bc
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.064272.us.us
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !92
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.064272.us.us
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !92
  %i.ej = icmp eq i32 %i.eg, %i.ei
  br i1 %i.ej, label %bb.bd, label %.split288.us

bb.bd:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit179.us.us
  %i.ek = add nuw nsw i64 %.064272.us.us, 1       ; 2 uses
  %exitcond331.not.a = icmp eq i64 %i.ek, %spec.select.i
  br i1 %exitcond331.not.a, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us, label %bb.bc, !llvm.loop !186

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us: ; preds = %bb.bb, %bb.bd, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us
  %spec.select117222.us.us = phi i8 [ 1, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us ], [ 1, %bb.bd ], [ %.066275.us.us, %bb.bb ] ; 2 uses
  %spec.select116221.us.us = phi i64 [ %.065276.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us ], [ %spec.select116.us.us, %bb.bd ], [ %.067274.us.us, %bb.bb ] ; 2 uses
  %i.el = add nuw i64 %.065276.us.us, 1           ; 2 uses
  %exitcond333.not = icmp eq i64 %i.el, %i.ds
  br i1 %exitcond333.not, label %._crit_edge278, label %.lr.ph277.split.split.us.split.us, !llvm.loop !187

.lr.ph277.split.split.us.split:                   ; preds = %.lr.ph277.split.split.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us
  %.065276.us = phi i64 [ %i.es, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ], [ 0, %.lr.ph277.split.split.us ] ; 3 uses
  %.066275.us = phi i8 [ %spec.select117222.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %.067274.us = phi i64 [ %spec.select116221.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %i.em = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.065276.us ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !103 ; 2 uses
  %.not23.i.us = icmp sgt i32 %narrow.i, %i.en
  br i1 %.not23.i.us, label %.split283.us, label %.preheader.split.i.us

.preheader.split.i.us:                            ; preds = %.lr.ph277.split.split.us.split
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  br label %_ZNK2cv8MatShapeixEm.exit.i.us

_ZNK2cv8MatShapeixEm.exit.i.us:                   ; preds = %bb.be, %.preheader.split.i.us
  %indvars.iv.i.us = phi i64 [ 2, %.preheader.split.i.us ], [ %indvars.iv.next.i.us, %bb.be ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.i.us
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !92
  %.not24.i.us = icmp eq i32 %i.eq, 1
  br i1 %.not24.i.us, label %bb.be, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us

bb.be:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %spec.select.i
  br i1 %exitcond.not.i.us, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us, label %_ZNK2cv8MatShapeixEm.exit.i.us, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %i.er = trunc nuw i8 %.066275.us to i1
  %spec.select116.us = select i1 %i.er, i64 %.067274.us, i64 %.065276.us
  br label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us: ; preds = %bb.be, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us
  %spec.select117222.us = phi i8 [ 1, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us ], [ %.066275.us, %bb.be ] ; 2 uses
  %spec.select116221.us = phi i64 [ %spec.select116.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us ], [ %.067274.us, %bb.be ] ; 2 uses
  %i.es = add nuw i64 %.065276.us, 1              ; 2 uses
  %exitcond328.not = icmp eq i64 %i.es, %i.ds
  br i1 %exitcond328.not, label %._crit_edge278, label %.lr.ph277.split.split.us.split, !llvm.loop !187

._crit_edge278:                                   ; preds = %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us
  %.067.lcssa = phi i64 [ %spec.select116221.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ %spec.select116221.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ]
  %.066.lcssa = phi i8 [ %spec.select117222.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ %spec.select117222.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !70
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = trunc nuw i8 %.066.lcssa to i1
  %or.cond3 = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = icmp sgt i32 %.fr299, 2
  %or.cond = and i1 %or.cond3, %i.ex
  br i1 %or.cond, label %.lr.ph298, label %.loopexit

.lr.ph298:                                        ; preds = %._crit_edge278
  %i.ey = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.067.lcssa ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %spec.select.i196 = zext nneg i32 %narrow.i169 to i64
  br label %bb.bm

.lr.ph277.split.split:                            ; preds = %.lr.ph277.split, %.preheader.split.i
  %.065276 = phi i64 [ %i.fc, %.preheader.split.i ], [ 0, %.lr.ph277.split ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.065276
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i:bb.a

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i, ptr noundef nonnull @.str.9, i32 noundef 319) #25
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %15, align 8, !tbaa !59    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.n = load i64, ptr %i.l, align 8, !tbaa !53
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.i, %bb.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.k:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = sext i32 %2 to i64
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i, ptr noundef nonnull @.str.9, i32 noundef 320) #25
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.q:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %17, align 8, !tbaa !59   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.q
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !53
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.p
  %.pn127 = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.ab, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %common.resume

bb.r:                                             ; preds = %bb.l, %bb.k
  %i.ah = icmp sgt i32 %2, 1
  br i1 %i.ah, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_iE15__cv_check__321) #25
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ai = icmp samesign ugt i32 %i.d, 1
  br i1 %i.ai, label %bb.u, label %_ZNKSt6vectorIPKN2cv3MatESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !103
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 97) #25
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !53
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn152.pn.pn, %.body ], [ %.pn129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = load i32, ptr %i.as, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !92
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %_ZNKSt6vectorIPKN2cv3MatESaIS3_EE12_M_check_lenEmPKc.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i, ptr noundef nonnull @.str.9, i32 noundef 324) #25
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

bb.ac:                                            ; preds = %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %19, align 8, !tbaa !59   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.ac
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.ab
  %.pn129 = phi { ptr, i32 } [ %i.ax, %bb.ab ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %i.ay, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %common.resume

_ZNKSt6vectorIPKN2cv3MatESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZN2cv8MatShapeixEm.exit, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16EltwiseLayerImpl14EltwiseInvokerE, i64 16), ptr %21, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !196
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %21, i64 112 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !130
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 120 ; 4 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !131
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 4 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bf, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bg, i8 0, i64 36, i1 false)
  %i.bk = zext nneg i32 %2 to i64                 ; 10 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3                ; 2 uses
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #21
          to label %.noexc235 unwind label %bb.aj ; 4 uses

.noexc235:                                        ; preds = %_ZNKSt6vectorIPKN2cv3MatESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr null, ptr %i.bm, align 8, !tbaa !133
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.bl, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !133
  store ptr %i.bm, ptr %i.bf, align 8, !tbaa !134
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !197
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !135
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109 ; 4 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !107 ; 5 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = ashr exact i64 %i.bx, 2                 ; 6 uses
  %i.bz = icmp ult i64 %i.by, %i.bk
  br i1 %i.bz, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %.noexc235
  %i.ca = sub nuw nsw i64 %i.bk, %i.by            ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !108
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bv
  %i.cf = ashr exact i64 %i.ce, 2                 ; 2 uses
  %i.cg = xor i64 %i.by, 2305843009213693951
  %i.ch = icmp ule i64 %i.cf, %i.cg
  tail call void @llvm.assume(i1 %i.ch)
  %.not28.i237 = icmp ult i64 %i.cf, %i.ca
  br i1 %.not28.i237, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.bt, align 4, !tbaa !92
  %i.ci = getelementptr i8, ptr %i.bt, i64 4      ; 3 uses
  %i.cj = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.ae
  %.idx.i.i.i.i.i.i238 = shl nuw nsw i64 %i.cj, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %.idx.i.i.i.i.i.i238, i1 false), !tbaa !92
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i.i.i.i.i.i238
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.ae
  %.0.i.i.i.i239 = phi ptr [ %i.cl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ci, %bb.ae ]
  store ptr %.0.i.i.i.i239, ptr %i.bs, align 8, !tbaa !109
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ad
  %.sroa.speculated.i.i240 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.ca)
  %i.cm = add nuw nsw i64 %.sroa.speculated.i.i240, %i.by ; 2 uses
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #21
          to label %.noexc244 unwind label %bb.aj ; 4 uses

.noexc244:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bx ; 3 uses
  store i32 0, ptr %i.cp, align 4, !tbaa !92
  %i.cq = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc244
  %i.cs = getelementptr i8, ptr %i.cp, i64 4
  %.idx.i.i.i.i.i31.i241 = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cs, i8 0, i64 %.idx.i.i.i.i.i31.i241, i1 false), !tbaa !92
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc244
  %i.ct = icmp sgt i64 %i.bx, 0
  br i1 %i.ct, label %bb.af, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.af:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 4 %i.bu, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.af, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i242 = icmp eq ptr %i.bu, null
  br i1 %.not.i35.i242, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cu = load ptr, ptr %i.cb, align 8, !tbaa !108
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.cw) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.co, ptr %i.br, align 8, !tbaa !107
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ca
  store ptr %i.cx, ptr %i.bs, align 8, !tbaa !109
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cy, ptr %i.cb, align 8, !tbaa !108
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ah:                                            ; preds = %.noexc235
  %i.cz = icmp ugt i64 %i.by, %i.bk
  br i1 %i.cz, label %bb.ai, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bk ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.bt, %i.da
  br i1 %.not.i.i165, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ai
  store ptr %i.da, ptr %i.bs, align 8, !tbaa !109
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.ai, %bb.ah, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %21, i64 80 ; 4 uses
  %i.dc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.lr.ph289 unwind label %bb.aj ; 0 uses

.lr.ph289:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.de = icmp eq i32 %i.b, 1
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 88
  br label %bb.ak

._crit_edge:                                      ; preds = %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 64
  store i32 %2, ptr %i.dj, align 8, !tbaa !136
  store ptr %3, ptr %i.bg, align 8, !tbaa !137
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 104
  store i32 %4, ptr %i.dk, align 8, !tbaa !138
  %i.dl = load i32, ptr %i.c, align 4, !tbaa !102
  %i.dm = icmp sgt i32 %i.dl, 3
  br i1 %i.dm, label %bb.dm, label %bb.dr

bb.aj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIPKN2cv3MatESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %.lr.ph289, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph289 ], [ %indvars.iv.next, %.loopexit ] ; 9 uses
  %.098285 = phi i1 [ false, %.lr.ph289 ], [ %.199403, %.loopexit ]
  %i.do = getelementptr inbounds nuw [208 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.dp = load ptr, ptr %i.bf, align 8, !tbaa !134
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !133
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !102 ; 3 uses
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !102 ; 2 uses
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_iE15__cv_check__335) #25
          to label %bb.am unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  unreachable

.loopexit253:                                     ; preds = %bb.bg, %bb.bo, %bb.cc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.al, %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.ak
  %i.dv = load i32, ptr %i.do, align 8, !tbaa !110 ; 2 uses
  %i.dw = and i32 %i.dv, 16384
  %.not247 = icmp eq i32 %i.dw, 0
  br i1 %.not247, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i, ptr noundef nonnull @.str.9, i32 noundef 336) #25
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.as:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %22, align 8, !tbaa !59   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.as
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !53
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.ar
  %.pn133 = phi { ptr, i32 } [ %i.dx, %bb.ar ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.dy, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.body

bb.at:                                            ; preds = %bb.an
  %i.ee = load i32, ptr %3, align 8, !tbaa !110
  %i.ef = xor i32 %i.ee, %i.dv
  %i.eg = and i32 %i.ef, 4095
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i, ptr noundef nonnull @.str.9, i32 noundef 337) #25
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.ay:                                            ; preds = %bb.av
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %24, align 8, !tbaa !59   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.ay
  %i.en = load i64, ptr %i.el, align 8, !tbaa !53
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.ax
  %.pn135 = phi { ptr, i32 } [ %i.ei, %bb.ax ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.ej, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.body

bb.az:                                            ; preds = %bb.at
  %i.ep = icmp sgt i32 %i.ds, 3
  br i1 %i.ep, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.eq = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !103
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc178 unwind label %.loopexit.split-lp

.noexc178:                                        ; preds = %bb.bb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.noexc178
  unreachable

bb.bd:                                            ; preds = %.noexc178
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175: ; preds = %bb.bd
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !53
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body

bb.be:                                            ; preds = %bb.ba
  %i.ez = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !92
  br label %bb.bf

bb.bf:                                            ; preds = %bb.az, %bb.be
  %i.fb = phi i32 [ %i.fa, %bb.be ], [ 1, %bb.az ] ; 3 uses
  %i.fc = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !92
  %i.fe = load i32, ptr %i.dd, align 4, !tbaa !71
  switch i32 %i.fe, label %bb.cv [
    i32 0, label %bb.bg
    i32 1, label %bb.bn
    i32 2, label %bb.cb
    i32 3, label %bb.cj
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.ff = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.fg = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.ff, ptr noundef nonnull align 4 dereferenceable(52) %i.dh)
          to label %bb.bh unwind label %.loopexit253
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i:bb.a

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_i, ptr noundef nonnull @.str.9, i32 noundef 365) #25
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  unreachable

bb.cy:                                            ; preds = %bb.cv
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

bb.cz:                                            ; preds = %bb.cw
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %38, align 8, !tbaa !59   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.cz
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !53
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %bb.cy
  %.pn137 = phi { ptr, i32 } [ %i.he, %bb.cy ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %i.hf, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %.body

bb.da:                                            ; preds = %bb.cp, %bb.cb, %bb.bv, %bb.bh
  %.199 = phi i1 [ %.098285, %bb.bh ], [ true, %bb.cb ], [ true, %bb.bv ], [ true, %bb.cp ] ; 6 uses
  %i.hl = icmp ne i64 %indvars.iv, 0
  %or.cond293 = and i1 %.199, %i.hl
  br i1 %or.cond293, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.da
  %i.hm = load ptr, ptr %i.bf, align 8, !tbaa !134 ; 4 uses
  %i.hn = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.ho = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.hp = load ptr, ptr %i.di, align 8
  %i.hq = icmp eq ptr %i.ho, %i.hp
  %.fr = freeze i1 %i.hq
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.dd
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %bb.dd ], [ %indvars.iv, %.lr.ph ] ; 3 uses
  %indvars.iv.next334 = add nsw i64 %indvars.iv333, -1 ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.next334 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !133 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !103
  %i.hv = icmp sgt i32 %i.hu, 1
  br i1 %i.hv, label %bb.db, label %.split.us

bb.db:                                            ; preds = %.lr.ph.split.us
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv333 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !133 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !103
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.dc, label %.split284.us

bb.dc:                                            ; preds = %bb.db
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 88
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !92
  %i.id = load i32, ptr %i.df, align 8, !tbaa !92
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 88
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !92
  %i.ig = call i32 @llvm.smin.i32(i32 %i.if, i32 %i.id)
  %i.ih = icmp slt i32 %i.ic, %i.ig
  br i1 %i.ih, label %bb.dd, label %.loopexit

bb.dd:                                            ; preds = %bb.dc
  store ptr %i.hx, ptr %i.hr, align 8, !tbaa !133
  store ptr %i.hs, ptr %i.hw, align 8, !tbaa !133
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next334 ; 2 uses
  %i.ij = load <2 x i32>, ptr %i.ii, align 4, !tbaa !92
  %i.ik = shufflevector <2 x i32> %i.ij, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ik, ptr %i.ii, align 4, !tbaa !92
  %i.il = icmp sgt i64 %indvars.iv333, 1
  br i1 %i.il, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !193

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.dk
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %bb.dk ], [ %indvars.iv, %.lr.ph ] ; 3 uses
  %indvars.iv.next331 = add nsw i64 %indvars.iv330, -1 ; 4 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.next331 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !133 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 72
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !103
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.dg, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc205 unwind label %bb.dl

.noexc205:                                        ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %.noexc205
  unreachable

bb.df:                                            ; preds = %.noexc205
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202: ; preds = %bb.df
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !53
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.body

bb.dg:                                            ; preds = %.lr.ph.split
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv330 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !133 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 72
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !103
  %i.jb = icmp sgt i32 %i.ja, 1
  br i1 %i.jb, label %bb.dj, label %.split284.us

.split284.us:                                     ; preds = %bb.dg, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc214 unwind label %bb.dl

.noexc214:                                        ; preds = %.split284.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.dh unwind label %bb.di

bb.dh:                                            ; preds = %.noexc214
  unreachable

bb.di:                                            ; preds = %.noexc214
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211: ; preds = %bb.di
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !53
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.dj:                                            ; preds = %bb.dg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.in, i64 88
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !92
  %i.jk = load i32, ptr %i.df, align 8, !tbaa !92
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iy, i64 88
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !92
  %i.jn = call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.jk)
  %i.jo = icmp slt i32 %i.jj, %i.jn
  br i1 %i.jo, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.iy, ptr %i.im, align 8, !tbaa !133
  store ptr %i.in, ptr %i.ix, align 8, !tbaa !133
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next331 ; 2 uses
  %i.jq = load <2 x i32>, ptr %i.jp, align 4, !tbaa !92
  %i.jr = shufflevector <2 x i32> %i.jq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.jr, ptr %i.jp, align 4, !tbaa !92
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next331 ; 2 uses
  %i.jt = load <2 x float>, ptr %i.js, align 4, !tbaa !69
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ju, ptr %i.js, align 4, !tbaa !69
  %i.jv = icmp sgt i64 %indvars.iv330, 1
  br i1 %i.jv, label %.lr.ph.split, label %.loopexit, !llvm.loop !193

bb.dl:                                            ; preds = %.split284.us, %.split.us
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.dj, %bb.dk, %bb.dc, %bb.dd, %bb.cd, %bb.da
  %.199403 = phi i1 [ true, %bb.cd ], [ %.199, %bb.dc ], [ %.199, %bb.da ], [ %.199, %bb.dd ], [ %.199, %bb.dk ], [ %.199, %bb.dj ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bk
  br i1 %exitcond.not, label %._crit_edge, label %bb.ak, !llvm.loop !194

bb.dm:                                            ; preds = %._crit_edge
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !103
  %i.jz = icmp sgt i32 %i.jy, 1
  br i1 %i.jz, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc224 unwind label %bb.du

.noexc224:                                        ; preds = %bb.dn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 97) #25
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %.noexc224
  unreachable

bb.dp:                                            ; preds = %.noexc224
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221: ; preds = %bb.dp
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !53
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.dq:                                            ; preds = %bb.dm
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !92
  br label %bb.dr

bb.dr:                                            ; preds = %._crit_edge, %bb.dq
  %i.ki = phi i32 [ 2, %bb.dq ], [ 1, %._crit_edge ]
  %i.kj = phi i32 [ %i.kh, %bb.dq ], [ 1, %._crit_edge ]
  store i32 %i.kj, ptr %i.bi, align 8, !tbaa !131
  %i.kk = invoke noundef i64 @_ZNK2cv3Mat5totalEii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %i.ki, i32 noundef 2147483647)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  store i64 %i.kk, ptr %i.bj, align 8, !tbaa !132
  %i.kl = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !92
  %i.kp = load i32, ptr %i.bi, align 8, !tbaa !131
  %i.kq = mul nsw i32 %i.kp, %i.ko
  %i.kr = sext i32 %i.kq to i64
  %i.ks = load i64, ptr %i.bj, align 8, !tbaa !132
  %i.kt = mul i64 %i.ks, %i.kr
  %i.ku = icmp eq i64 %i.kl, %i.kt
  br i1 %i.ku, label %bb.dz, label %bb.dv

bb.du:                                            ; preds = %bb.dn, %bb.dx, %bb.dw, %bb.dv, %bb.ds, %bb.dr
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dv:                                            ; preds = %bb.dt
  %i.kw = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.dw unwind label %bb.du

bb.dw:                                            ; preds = %bb.dv
  %i.kx = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.km, i64 noundef 0)
          to label %bb.dx unwind label %bb.du

bb.dx:                                            ; preds = %bb.dw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !92
  %i.kz = load i32, ptr %i.bi, align 8, !tbaa !131
  %i.la = mul nsw i32 %i.kz, %i.ky
  %i.lb = sext i32 %i.la to i64
  %i.lc = load i64, ptr %i.bj, align 8, !tbaa !132
  %i.ld = mul i64 %i.lc, %i.lb
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.kw, i64 noundef %i.ld, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_iE15__cv_check__392) #25
          to label %bb.dy unwind label %bb.du

bb.dy:                                            ; preds = %bb.dx
  unreachable

bb.dz:                                            ; preds = %bb.dt
  %i.le = icmp eq i32 %i.b, 1
  %.pre339 = load ptr, ptr %i.db, align 8, !tbaa !112 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %21, i64 88
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !112 ; 2 uses
  %i.lh = icmp eq ptr %.pre339, %i.lg             ; 2 uses
  br i1 %i.le, label %bb.ea, label %.critedge

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.lh, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %.pre339 to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = ashr exact i64 %i.lk, 2                 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, %i.bk
  br i1 %i.lm, label %.lr.ph292, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ll, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn16EltwiseLayerImpl14EltwiseInvoker3runERS1_PKNS_3MatEiRS4_iE15__cv_check__397) #25
          to label %bb.ed unwind label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.ec
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ef:                                            ; preds = %.lr.ph292
  %i.lo = add nuw i64 %.0291, 1                   ; 2 uses
  %exitcond336.not = icmp eq i64 %i.lo, %i.bk
  br i1 %exitcond336.not, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, label %.lr.ph292, !llvm.loop !195

.lr.ph292:                                        ; preds = %bb.eb, %bb.ef
  %.0291 = phi i64 [ %i.lo, %bb.ef ], [ 0, %bb.eb ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.pre339, i64 %.0291
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !69
  %i.lr = fcmp une float %i.lq, 1.000000e+00
  br i1 %i.lr, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %bb.ef

.critedge:                                        ; preds = %bb.dz
  br i1 %i.lh, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ef, %.critedge
  %i.ls = getelementptr inbounds nuw i8, ptr %21, i64 88
  store ptr %.pre339, ptr %i.ls, align 8, !tbaa !66
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %.lr.ph292, %bb.ea, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %.critedge
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !113
  store ptr %i.lu, ptr %i.bh, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  store i32 0, ptr %40, align 4, !tbaa !140
  %i.lv = getelementptr inbounds nuw i8, ptr %40, i64 4
  store i32 %4, ptr %i.lv, align 4, !tbaa !141
  %i.lw = sitofp i32 %4 to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %21, double noundef %i.lw)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16EltwiseLayerImpl14EltwiseInvokerE, i64 16), ptr %21, align 8, !tbaa !17
  %i.lx = load ptr, ptr %i.db, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ly = getelementptr inbounds nuw i8, ptr %21, i64 96
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !72
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.lx to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mc) #22, !inline_history !142
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.eh, %bb.eg
  %i.md = load ptr, ptr %i.br, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !108
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mi) #22, !inline_history !142
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.ei, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.mj = load ptr, ptr %i.bf, align 8, !tbaa !134 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i2.i, label %_ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvokerD2Ev.exit, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.mk = load ptr, ptr %i.bn, align 8, !tbaa !135
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mj to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.mn) #22, !inline_history !142
  br label %_ZN2cv3dnn16EltwiseLayerImpl14EltwiseInvokerD2Ev.exit
end_hunk_2
