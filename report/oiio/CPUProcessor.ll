inline.NumInlined: 2245
inline.NumDeleted: 1176
begin_hunk_0_@__clang_call_terminate:bb.a
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl18hasDynamicPropertyENS_19DynamicPropertyTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %.loopexit15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250  ; 2 uses
  %.not16 = icmp eq ptr %i.g, %i.i
  br i1 %.not16, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.017, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.011.017 = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.011.017, align 8, !tbaa !192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %1)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.o, label %.loopexit15, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !192  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %1)
          to label %.loopexit15 unwind label %.loopexit.split-lp

.loopexit15:                                      ; preds = %bb.e, %._crit_edge, %bb.b
  %.3 = phi i1 [ true, %bb.b ], [ %i.u, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.3

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.a, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.v = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.v) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl18getDynamicPropertyENS_19DynamicPropertyTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.192") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !192    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250  ; 2 uses
  %.not19 = icmp eq ptr %i.g, %i.i
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.014.020 = phi ptr [ %i.o, %.critedge ], [ %i.g, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.014.020, align 8, !tbaa !192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %2)
  br i1 %i.n, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !192  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %2)
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.v) #20
  resume { ptr, i32 } %i.w

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.a
  %.sink28.in = phi ptr [ %1, %bb.a ], [ %i.p, %._crit_edge ], [ %.sroa.014.020, %.lr.ph ]
  %.sink28 = load ptr, ptr %.sink28.in, align 8, !tbaa !192 ; 2 uses
  %i.x = load ptr, ptr %.sink28, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %.sink28, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517FinalizeOpsForCPUERNS_10OpRcPtrVecERKS0_NS_8BitDepthES4_NS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !251
  store i32 %3, ptr %i.b, align 4, !tbaa !251
  %i.c = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN16OpenColorIO_v2_510OpRcPtrVecaSERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !253
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !253
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16OpenColorIO_v2_510OpRcPtrVec8finalizeEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  tail call void @_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %4)
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVec19optimizeForBitdepthERKNS_8BitDepthES3_NS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef %4)
  %.pre = load ptr, ptr %0, align 8, !tbaa !253
  %.pre11 = load ptr, ptr %i.e, align 8, !tbaa !253
  %i.h = icmp eq ptr %.pre, %.pre11
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_ZN16OpenColorIO_v2_522CreateIdentityMatrixOpERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = and i64 %4, 268435456
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVec25validateDynamicPropertiesEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(144) ptr @_ZN16OpenColorIO_v2_510OpRcPtrVecaSERKS0_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVec8finalizeEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVec19optimizeForBitdepthERKNS_8BitDepthES3_NS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i64 noundef) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_522CreateIdentityMatrixOpERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVec25validateDynamicPropertiesEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_512CPUProcessor4Impl8finalizeERKNS_10OpRcPtrVecENS_8BitDepthES5_NS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #21
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %bb.c unwind label %bb.an

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN16OpenColorIO_v2_517FinalizeOpsForCPUERNS_10OpRcPtrVecERKS0_NS_8BitDepthES4_NS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4)
          to label %bb.d unwind label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %2, ptr %i.c, align 8, !tbaa !254
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %3, ptr %i.d, align 4, !tbaa !267
  %i.e = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510OpRcPtrVec6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(144) %5) #20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.g = zext i1 %i.e to i8
  store i8 %i.g, ptr %i.f, align 1, !tbaa !268
  %i.h = load i32, ptr %i.c, align 8
  %i.i = load i32, ptr %i.d, align 4
  %i.j = icmp eq i32 %i.h, %i.i
  %narrow = select i1 %i.e, i1 %i.j, i1 false
  %i.k = zext i1 %narrow to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.k, ptr %i.l, align 8, !tbaa !269
  %i.m = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510OpRcPtrVec19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(144) %5) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 2, !tbaa !270
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !234  ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i25, label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !198  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !12
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !272
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !272
  br label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i, !prof !231

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20
  br label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !273

_ZSt8_DestroyIPSt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !234
  br label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEESaIS4_EE5clearEv.exit

_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEESaIS4_EE5clearEv.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEES4_EvT_S6_RSaIT0_E.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !198 ; 8 uses
  store ptr null, ptr %i.al, align 8, !tbaa !198
  %.not.i.i.i.i26 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i26, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEESaIS4_EE5clearEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.an, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !12
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #20, !inline_history !230
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #20, !inline_history !230
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.n ], [ %i.ba, %bb.o ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.p, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !231

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l, %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEESaIS4_EE5clearEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !274
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !198 ; 8 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !198
  %.not.i.i.i.i28 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i28, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bf, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !12
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !230
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !230
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37

bb.s:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i.i.i29 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30

bb.u:                                             ; preds = %bb.s
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i31 = phi i32 [ %i.bi, %bb.t ], [ %i.bs, %bb.u ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i31, 1
  br i1 %i.bt, label %bb.v, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37, !prof !231

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30, %bb.r, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN16OpenColorIO_v2_515CreateCPUEngineERKNS_10OpRcPtrVecENS_8BitDepthES3_NS_17OptimizationFlagsERSt10shared_ptrIKNS_5OpCPUEERSt6vectorIS8_SaIS8_EES9_(ptr noundef nonnull align 8 dereferenceable(144) %5, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %bb.w unwind label %bb.ao

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.x unwind label %bb.ap

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.2, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.x
  %i.bw = invoke noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef %2)
          to label %bb.y unwind label %bb.aq      ; 3 uses

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !275
  %i.cd = or i32 %i.cc, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ca, i32 noundef %i.cd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.aq

bb.aa:                                            ; preds = %bb.y
  %i.ce = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #20
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.bw, i64 noundef %i.ce)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.z, %bb.aa
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.3, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ch = invoke noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef %3)
          to label %bb.ab unwind label %bb.aq     ; 3 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %.not.i42 = icmp eq ptr %i.ch, null
  br i1 %.not.i42, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %i.bu, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !275
  %i.co = or i32 %i.cn, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cl, i32 noundef %i.co)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.aq

bb.ad:                                            ; preds = %bb.ab
  %i.cp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ch) #20
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.ch, i64 noundef %i.cp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %bb.ac, %bb.ad
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.4, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %4)
          to label %_ZNSolsEm.exit unwind label %bb.aq ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNK16OpenColorIO_v2_510OpRcPtrVec10getCacheIDB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %bb.ae unwind label %bb.ar

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.cu = load ptr, ptr %7, align 8, !tbaa !284
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !285
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.as ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ae
  %i.cy = load ptr, ptr %7, align 8, !tbaa !284   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !208
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.dd, ptr %8, align 8, !tbaa !292, !alias.scope !293
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.de, align 8, !tbaa !285, !alias.scope !293
  store i8 0, ptr %i.dd, align 8, !tbaa !208, !alias.scope !293
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !294, !noalias !293 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dg, null
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !293 ; 2 uses
  %i.dj = icmp ugt ptr %i.dg, %i.di
  %.08.i.i.i = select i1 %i.dj, ptr %i.dg, ptr %i.di ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i52 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i52, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !296, !noalias !293 ; 2 uses
  %i.dm = ptrtoint ptr %.08.i.i.i to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.dl, i64 noundef %i.do)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %8, align 8, !tbaa !284, !alias.scope !293 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dd
  br i1 %i.ds, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ag
  %i.dt = load i64, ptr %i.dd, align 8, !tbaa !208, !alias.scope !293
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #22
  br label %.body

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ag

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ah, %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !284 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  %i.ea = load ptr, ptr %8, align 8, !tbaa !284   ; 6 uses
  %i.eb = icmp eq ptr %i.ea, %i.dd                ; 2 uses
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.eb, label %bb.ai, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.eb, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ec = load i64, ptr %i.de, align 8, !tbaa !285 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %.not21.i = icmp eq ptr %8, %i.dw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %9, !prof !231

9:                                                ; preds = %bb.ai
  switch i64 %i.ec, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %9
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !208
  store i8 %i.ee, ptr %i.dx, align 1, !tbaa !208
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ak:                                            ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.ea, i64 %i.ec, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ak, %bb.aj, %9
  %i.ef = load i64, ptr %i.de, align 8, !tbaa !285 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !285
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !284
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !208
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !284
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !284
  %i.ek = load <2 x i64>, ptr %i.de, align 8, !tbaa !208
  store <2 x i64> %i.ek, ptr %i.ej, align 8, !tbaa !208
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.el = load i64, ptr %i.dy, align 8, !tbaa !208
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !284
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.en = load <2 x i64>, ptr %i.de, align 8, !tbaa !208
  store <2 x i64> %i.en, ptr %i.em, align 8, !tbaa !208
  %.not.i53 = icmp eq ptr %i.dx, null
  br i1 %.not.i53, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dx, ptr %8, align 8, !tbaa !284
  store i64 %i.el, ptr %i.dd, align 8, !tbaa !208
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dd, ptr %8, align 8, !tbaa !284
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.al, %bb.am
  %10 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dx, %bb.al ], [ %i.dd, %bb.am ], [ %i.ea, %bb.ai ]
  store i64 0, ptr %i.de, align 8, !tbaa !285
  store i8 0, ptr %10, align 1, !tbaa !208
  %i.eo = load ptr, ptr %8, align 8, !tbaa !284   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.dd
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.eq = load i64, ptr %i.dd, align 8, !tbaa !208
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.es = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.es, ptr %6, align 8, !tbaa !13
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.eu = getelementptr i8, ptr %i.es, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr %6, i64 %i.ev
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !13
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ex, ptr %i.bu, align 8, !tbaa !13
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ey, align 8, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !284 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !208
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ey, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ff) #20
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fg, ptr %6, align 8, !tbaa !13
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fi = getelementptr i8, ptr %i.fg, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %6, i64 %i.fj
  store ptr %i.fh, ptr %i.fk, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fl, align 8, !tbaa !297
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fm) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.fn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20 ; 0 uses
  ret void

bb.an:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37, %bb.c
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ap:                                            ; preds = %bb.w
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aq:                                            ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %bb.ad, %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %bb.aa, %bb.z, %bb.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.as:                                            ; preds = %bb.ae
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %7, align 8, !tbaa !284   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.as
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !208
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.ar ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.ft, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.at

.body:                                            ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.at

bb.at:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.aq
  %.pn20 = phi { ptr, i32 } [ %i.dq, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.fr, %bb.aq ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ap
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.at ], [ %i.fq, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ao
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.au ], [ %i.fp, %bb.ao ]
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #20
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.an
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %bb.av ], [ %i.fo, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.fz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20 ; 0 uses
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_510OpRcPtrVec6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_510OpRcPtrVec19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef) local_unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_510OpRcPtrVec10getCacheIDB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #20
  %i.b = load ptr, ptr %0, align 8, !tbaa !202    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !12
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20, !inline_history !299
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20, !inline_history !299
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
end_hunk_0
