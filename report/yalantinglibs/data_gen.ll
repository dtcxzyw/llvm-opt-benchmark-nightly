Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZSt13__invoke_implIvZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_JS5_EET_St14__invoke_otherOT0_DpOT1_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !310
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !311
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !263
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #36, !inline_history !2
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #36, !inline_history !2
  br label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i4 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !291

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #36
  br label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  resume { ptr, i32 } %i.aa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail14do_throw_errorERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::system_error", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.sroa.0.0.copyload = load i32, ptr %0, align 8, !tbaa !280 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !759 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = load ptr, ptr %.sroa.21.0.copyload, align 8, !tbaa !263, !noalias !5782
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !5782
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.21.0.copyload, i32 noundef %.sroa.0.0.copyload), !inline_history !5781
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !286    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt12system_errorC2ESt10error_code.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !279
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #50
  br label %_ZNSt12system_errorC2ESt10error_code.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !286    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !279
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

common.resume:                                    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %common.resume

_ZNSt12system_errorC2ESt10error_code.exit:        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %2, align 8, !tbaa !263
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %.sroa.0.0.copyload, ptr %i.o, align 8, !tbaa !280
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.21.0.copyload, ptr %.sroa.35.0..sroa_idx.i, align 8, !tbaa !759
  %i.p = call ptr @__cxa_allocate_exception(i64 32) #36 ; 4 uses
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %i.p, align 8, !tbaa !263
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !760
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #52
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZNSt12system_errorC2ESt10error_code.exit
  unreachable

bb.d:                                             ; preds = %_ZNSt12system_errorC2ESt10error_code.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12system_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = load ptr, ptr %2, align 8, !tbaa !263, !noalias !5785
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !5785
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !inline_history !35
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !286    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !279
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %0, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.i, align 8, !tbaa !280
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.35.0..sroa_idx, align 8, !tbaa !759
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !286    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !279
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.j
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not52 = icmp eq ptr %i.a, null
  br i1 %.not52, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.b = icmp eq i64 %.128, 0
  br i1 %i.b, label %.critedge, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02243 = phi ptr [ %i.q, %.lr.ph ], [ %i.a, %bb.a ] ; 4 uses
  %.02342 = phi i64 [ %spec.select35, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02441 = phi ptr [ %.226, %.lr.ph ], [ null, %bb.a ]
  %.02740 = phi i64 [ %.128, %.lr.ph ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.02243, i64 32
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02243, i64 40
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = sub i64 %i.f, %i.d
  %i.h = icmp ugt i64 %i.g, -9223372036854775808
  %i.i = sub i64 %i.d, %i.f
  %i.j = select i1 %i.h, i64 %i.i, i64 0          ; 3 uses
  %.not34 = icmp ne i64 %i.j, 0                   ; 2 uses
  %i.k = icmp ugt i64 %i.j, %.02342
  %spec.select35 = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %.02342)
  %i.l = zext i1 %.not34 to i64
  %.128 = add nuw nsw i64 %.02740, %i.l           ; 3 uses
  %i.m = select i1 %.not34, i1 %i.k, i1 false
  %.226 = select i1 %i.m, ptr %.02243, ptr %.02441 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02243, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1498 ; 2 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.r = icmp samesign ult i64 %.128, 3
  %i.s = and i1 %i.r, %i.p
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !5786

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.226, i64 72
  %i.u = load i8, ptr %i.t, align 8, !tbaa !1497, !range !414, !noundef !366
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.split, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit

.split:                                           ; preds = %bb.b
  %i.w = tail call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.226, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.w, label %.critedge, label %bb.c

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit: ; preds = %bb.b
  %i.x = tail call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.226, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.x, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.split, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit
  %i.y = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not3245 = icmp eq ptr %i.y, null
  br i1 %.not3245, label %.critedge, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.c, %select.unfold
  %.046 = phi ptr [ %i.ah, %select.unfold ], [ %i.y, %bb.c ] ; 5 uses
  %.not33 = icmp eq ptr %.046, %.226
  br i1 %.not33, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %.lr.ph48
  %i.z = getelementptr inbounds nuw i8, ptr %.046, i64 72
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1497, !range !414, !noundef !366
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.split38, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit37

.split38:                                         ; preds = %bb.d
  %i.ac = tail call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.046, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.ac, label %.critedge, label %select.unfold

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit37: ; preds = %bb.d
  %i.ad = tail call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.046, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.ad, label %.critedge, label %select.unfold

select.unfold:                                    ; preds = %.split38, %.lr.ph48, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit37
  %i.ae = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1498 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8
  br i1 %i.ag, label %.critedge, label %.lr.ph48

.critedge:                                        ; preds = %.split38, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit37, %select.unfold, %bb.a, %bb.c, %._crit_edge, %.split, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit
  %.130 = phi i1 [ true, %.split ], [ false, %._crit_edge ], [ true, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit ], [ false, %bb.c ], [ false, %bb.a ], [ true, %.split38 ], [ false, %select.unfold ], [ true, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS9_EEbRT_.exit37 ]
  ret i1 %.130
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1526   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1527 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !1459 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZNKSt14default_deleteIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i, ptr noundef nonnull %i.d)
  br label %_ZSt8_DestroyISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !95

_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1526
  br label %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1528
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #50
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.d, %i.b
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, -9223372036854775808
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.j = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.k = load atomic i64, ptr %i.a acquire, align 8
  %i.l = add i64 %i.d, %i.k
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ugt i64 %i.m, -9223372036854775808
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = atomicrmw add ptr %i.o, i64 1 acq_rel, align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load atomic ptr, ptr %i.q acquire, align 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1507 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1520
  %i.y = and i64 %i.p, -32
  %i.z = sub i64 %i.y, %i.x
  %i.aa = sdiv i64 %i.z, 32
  %i.ab = add i64 %i.aa, %i.t
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !1506
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1521 ; 2 uses
  %i.ai = and i64 %i.p, 31                        ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1459
  store ptr null, ptr %i.aj, align 8, !tbaa !1459
  %i.al = load ptr, ptr %1, align 8, !tbaa !1459  ; 2 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !1459
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS2_EEaSEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt14default_deleteIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.al)
  br label %_ZNSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !1459 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS2_EEaSEOS5_.exit
  tail call void @_ZNKSt14default_deleteIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.am)
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS2_EEaSEOS5_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  %i.ao = xor i64 %i.ai, 31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store atomic i8 1, ptr %i.ap release, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.aq = atomicrmw add ptr %i.c, i64 1 release, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %.thread
  %.1 = phi i1 [ true, %.thread ], [ false, %bb.f ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.d, %i.b
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, -9223372036854775808
  br i1 %i.i, label %bb.b, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE22add_block_to_free_listEPNSB_5BlockE.exit.thread

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.j = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.k = load atomic i64, ptr %i.a acquire, align 8
end_hunk_0
