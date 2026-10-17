Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/sigh?download=true
inline.NumInlined: 3418
inline.NumDeleted: 1100
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7testing8internal15TestFactoryImplI31SigH_UnboundMemberFunction_TestED0Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI31SigH_UnboundMemberFunction_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV31SigH_UnboundMemberFunction_Test, i64 16), ptr %i.a, align 8, !tbaa !59
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI34SigH_ConnectAndAutoDisconnect_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI34SigH_ConnectAndAutoDisconnect_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV34SigH_ConnectAndAutoDisconnect_Test, i64 16), ptr %i.a, align 8, !tbaa !59
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI25SigH_CustomAllocator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI25SigH_CustomAllocator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV25SigH_CustomAllocator_Test, i64 16), ptr %i.a, align 8, !tbaa !59
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_ZN13sigh_listener1fES1_EEEEvvENUlPKvS1_E_8__invokeES7_S1_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !103
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %1, align 4, !tbaa !103
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1fES7_EEEEvS1_EEEEvvENUlPKvS1_E_8__invokeESF_S1_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !48     ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1fES7_EEEEvS1_EEEEvvENKUlPKvS1_E_clESF_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_ZN13sigh_listener1fES1_EEEEvvENUlPKvS1_E_8__invokeES7_S1_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, null
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !52
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !47
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1fES7_EEEEvS1_EEEEvvENKUlPKvS1_E_clESF_S1_.exit, label %bb.b, !llvm.loop !1

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1fES7_EEEEvS1_EEEEvvENKUlPKvS1_E_clESF_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_Z27connect_and_auto_disconnectRNS_4sighIS2_SaIvEEERKiEES7_EEvRT0_ENUlPKvS1_E_8__invokeESE_S1_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.entt::sink", align 8        ; 5 uses
  %3 = alloca %"class.entt::connection", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4entt4sinkINS_4sighIFvRiESaIvEEEE7connectITnDaXadL_ZN13sigh_listener1fES2_EEEENS_10connectionEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !412
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.a = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_Z27connect_and_auto_disconnectRNS_4sighIS2_SaIvEEERKiEES7_EEvRT0_ENKUlPKvS1_E_clESE_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.k, %bb.d ]
  %i.k = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = icmp eq ptr %i.n, @_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_Z27connect_and_auto_disconnectRNS_4sighIS2_SaIvEEERKiEES7_EEvRT0_ENUlPKvS1_E_8__invokeESE_S1_
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.p, %0
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !52
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !47
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.u, %bb.c ], [ %i.i, %bb.b ]
  %i.w = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_Z27connect_and_auto_disconnectRNS_4sighIS2_SaIvEEERKiEES7_EEvRT0_ENKUlPKvS1_E_clESE_S1_.exit, label %bb.b, !llvm.loop !0

_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_Z27connect_and_auto_disconnectRNS_4sighIS2_SaIvEEERKiEES7_EEvRT0_ENKUlPKvS1_E_clESE_S1_.exit: ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4entt8delegateIFvvEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !123    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %i.i = load ptr, ptr %0, align 8, !tbaa !123    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE11_M_allocateEm.exit.i, !prof !116

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 3 uses
  %3 = icmp eq ptr %i.c, %i.b
  br i1 %3, label %_ZNSt6vectorIN4entt8delegateIFvvEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN4entt8delegateIFvvEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN4entt8delegateIFvvEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4entt8delegateIFvvEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4entt8delegateIFvvEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !124
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.f, 16
  br i1 %i.x, label %bb.h, label %bb.i, !prof !187

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.f, 16
  br i1 %i.y, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !52
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.w, 16
  br i1 %i.z, label %bb.l, label %bb.m, !prof !187

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %i.w, 16
  br i1 %i.aa, label %bb.n, label %_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !52
  br label %_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = load ptr, ptr %1, align 8, !tbaa !123
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !122 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !123
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !52
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !413

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4entt8delegateIFvvEEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4entt8delegateIFvvEEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !123
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !122
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFvvEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_ZN13sigh_listener1gEiEES5_EEvRT0_ENUlPKvS1_E_8__invokeES9_S1_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !72, !range !109, !noundef !110
  %i.b = xor i8 %i.a, 1
  store i8 %i.b, ptr %0, align 1, !tbaa !72
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENUlPKvS1_E_8__invokeESI_S1_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !48     ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENKUlPKvS1_E_clESI_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_ZN13sigh_listener1gEiEES5_EEvRT0_ENUlPKvS1_E_8__invokeES9_S1_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !52
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !47
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENKUlPKvS1_E_clESI_S1_.exit, label %bb.b, !llvm.loop !6

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENKUlPKvS1_E_clESI_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN7testing13PrintToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIjmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIjmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIjmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !84     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !79
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.f = load ptr, ptr %5, align 8, !tbaa !84     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIjmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !84     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !79
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

end_hunk_0
begin_hunk_1_@_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFRbR13sigh_listenerESaIvEEEE7releaseITnDaXadL_ZNS8_3valEEEEEvS1_EEEEvvENUlPKvS1_E_8__invokeESG_S1_:bb.a
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFRbR13sigh_listenerEE7connectITnDaXadL_ZNS2_3valEEEEEvvENUlPKvS3_E_8__invokeES8_S3_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, null
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !52
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !165
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !166
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFRbR13sigh_listenerESaIvEEEE7releaseITnDaXadL_ZNS8_3valEEEEEvS1_EEEEvvENKUlPKvS1_E_clESG_S1_.exit, label %bb.b, !llvm.loop !28

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFRbR13sigh_listenerESaIvEEEE7releaseITnDaXadL_ZNS8_3valEEEEEvS1_EEEEvvENKUlPKvS1_E_clESG_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvP13sigh_listeneriEE7connectITnDaXadL_ZNS1_1gEiEEEEvvENUlPKvS2_iE_8__invokeES7_S2_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !72, !range !109, !noundef !110
  %i.b = xor i8 %i.a, 1
  store i8 %i.b, ptr %1, align 1, !tbaa !72
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvP13sigh_listeneriESaIvEEEE7releaseITnDaXadL_ZNS7_1gEiEEEEvS1_EEEEvvENUlPKvS1_E_8__invokeESF_S1_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !176    ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvP13sigh_listeneriESaIvEEEE7releaseITnDaXadL_ZNS7_1gEiEEEEvS1_EEEEvvENKUlPKvS1_E_clESF_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !178
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvP13sigh_listeneriEE7connectITnDaXadL_ZNS1_1gEiEEEEvvENUlPKvS2_iE_8__invokeES7_S2_i
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, null
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !52
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !175
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !176
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvP13sigh_listeneriESaIvEEEE7releaseITnDaXadL_ZNS7_1gEiEEEEvS1_EEEEvvENKUlPKvS1_E_clESF_S1_.exit, label %bb.b, !llvm.loop !29

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvP13sigh_listeneriESaIvEEEE7releaseITnDaXadL_ZNS7_1gEiEEEEvS1_EEEEvvENKUlPKvS1_E_clESF_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_Z27connect_and_auto_disconnectRSA_RKiEESD_EEvT0_S1_EESA_EEvRSG_ENUlPKvS1_E_8__invokeESJ_S1_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !48     ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_Z27connect_and_auto_disconnectRSA_RKiEESD_EEvT0_S1_EESA_EEvRSG_ENKUlPKvS1_E_clESJ_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRiEE7connectITnDaXadL_Z27connect_and_auto_disconnectRNS_4sighIS2_SaIvEEERKiEES7_EEvRT0_ENUlPKvS1_E_8__invokeESE_S1_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !52
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !47
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_Z27connect_and_auto_disconnectRSA_RKiEESD_EEvT0_S1_EESA_EEvRSG_ENKUlPKvS1_E_clESJ_S1_.exit, label %bb.b, !llvm.loop !0

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRiESaIvEEEE7releaseITnDaXadL_Z27connect_and_auto_disconnectRSA_RKiEESD_EEvT0_S1_EESA_EEvRSG_ENKUlPKvS1_E_clESJ_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFviESaIPS7_EEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENUlPKvS1_E_8__invokeESI_S1_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !152    ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFviESaIPS7_EEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENKUlPKvS1_E_clESI_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFviEE7connectITnDaXadL_ZN13sigh_listener1gEiEES4_EEvRT0_ENUlPKviE_8__invokeES8_i
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !52
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !151
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !152
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFviESaIPS7_EEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENKUlPKvS1_E_clESI_S1_.exit, label %bb.b, !llvm.loop !30

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFviESaIPS7_EEEE7releaseITnDaXadL_ZN13sigh_listener1gEiEERSD_EEvT0_S1_EESD_EEvRSF_ENKUlPKvS1_E_clESI_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4entt8delegateIFviEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !152    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157
  %i.i = load ptr, ptr %0, align 8, !tbaa !152    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE11_M_allocateEm.exit.i, !prof !116

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 3 uses
  %3 = icmp eq ptr %i.c, %i.b
  br i1 %3, label %_ZNSt6vectorIN4entt8delegateIFviEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN4entt8delegateIFviEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN4entt8delegateIFviEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4entt8delegateIFviEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4entt8delegateIFviEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !152
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !157
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !151
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.f, 16
  br i1 %i.x, label %bb.h, label %bb.i, !prof !187

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.f, 16
  br i1 %i.y, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !52
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.w, 16
  br i1 %i.z, label %bb.l, label %bb.m, !prof !187

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %i.w, 16
  br i1 %i.aa, label %bb.n, label %_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !52
  br label %_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = load ptr, ptr %1, align 8, !tbaa !152
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !151 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !152
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !52
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !435

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4entt8delegateIFviEEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4entt8delegateIFviEEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !152
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !151
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8delegateIFviEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_sigh.cpp() #19 section ".text.startup" personality ptr @__gxx_personality_v0 {
.noexc11.i:
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %5 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %6 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %8 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %9 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %11 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %12 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %13 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %15 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %17 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.a = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(52) ptr @_Znwm(i64 noundef 52) #26 ; 3 uses
  store ptr %i.b, ptr %17, align 8, !tbaa !84
  store i64 51, ptr %i.a, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.b, ptr noundef nonnull align 1 dereferenceable(51) @.str.2, i64 51, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 51, ptr %i.c, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  store i8 0, ptr %i.d, align 1, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i32 56, ptr %i.e, align 8, !tbaa !437
  %i.f = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %.noexc11.i
  %i.g = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 56)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 56)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI35SinkDeathTest_DISABLED_Invalid_TestEE, i64 16), ptr %i.i, align 8, !tbaa !59
  %i.j = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef nonnull %i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %17, align 8, !tbaa !84    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.m = load i64, ptr %i.a, align 8, !tbaa !79
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %__cxx_global_var_init.exit

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %.noexc11.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %17, align 8, !tbaa !84    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !tbaa !79
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i111
  %.sink290 = phi i64 [ %i.md, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i111 ], [ %i.lk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i104 ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i97 ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i90 ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i83 ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i76 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i69 ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i62 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i55 ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i48 ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i41 ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34 ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27 ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ]
  %.sink = phi ptr [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i111 ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i104 ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i97 ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i90 ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i83 ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i76 ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i69 ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i62 ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i55 ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i48 ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i41 ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34 ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13 ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i111 ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i104 ], [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i97 ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i90 ], [ %i.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i83 ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i76 ], [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i69 ], [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i62 ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i55 ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i48 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i41 ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34 ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20 ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ]
  %i.s = add i64 %.sink290, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.s) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.dd, %bb.cx, %bb.cr, %bb.cl, %bb.cf, %bb.bz, %bb.bt, %bb.bn, %bb.bh, %bb.bb, %bb.av, %bb.ap, %bb.aj, %bb.ad, %bb.x, %bb.r, %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ij, %bb.bz ], [ %i.lh, %bb.cx ], [ %i.o, %bb.f ], [ %i.fl, %bb.bb ], [ %i.ai, %bb.l ], [ %i.ko, %bb.cr ], [ %i.bb, %bb.r ], [ %i.gx, %bb.bn ], [ %i.bu, %bb.x ], [ %i.jv, %bb.cl ], [ %i.cn, %bb.ad ], [ %i.ge, %bb.bh ], [ %i.dg, %bb.aj ], [ %i.jc, %bb.cf ], [ %i.dz, %bb.ap ], [ %i.hq, %bb.bt ], [ %i.es, %bb.av ], [ %i.ma, %bb.dd ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr %i.j, ptr @_ZN35SinkDeathTest_DISABLED_Invalid_Test10test_info_E, align 8, !tbaa !439
  %i.t = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN35SinkDeathTest_DISABLED_Invalid_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.v = call noalias noundef nonnull dereferenceable(52) ptr @_Znwm(i64 noundef 52) #26 ; 3 uses
  store ptr %i.v, ptr %16, align 8, !tbaa !84
  store i64 51, ptr %i.u, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.v, ptr noundef nonnull align 1 dereferenceable(51) @.str.2, i64 51, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 51, ptr %i.w, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 51
  store i8 0, ptr %i.x, align 1, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 75, ptr %i.y, align 8, !tbaa !437
  %i.z = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %__cxx_global_var_init.exit
  %i.aa = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 75)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 75)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI18SigH_Lifetime_TestEE, i64 16), ptr %i.ac, align 8, !tbaa !59
  %i.ad = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %16, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef nonnull %i.ac)
          to label %bb.k unwind label %bb.l

end_hunk_1
