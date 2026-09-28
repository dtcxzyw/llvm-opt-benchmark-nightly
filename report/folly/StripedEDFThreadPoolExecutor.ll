Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/StripedEDFThreadPoolExecutor?download=true
inline.NumInlined: 1775
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly28StripedEDFThreadPoolExecutor3addESt6vectorINS_8FunctionIFvvEEESaIS4_EEm:bb.a
bb.f:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i.i7, label %_ZN5folly8FunctionIFvvEED2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call noundef i64 %i.t(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #34, !inline_history !0 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit8

_ZN5folly8FunctionIFvvEED2Ev.exit8:               ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N5folly28StripedEDFThreadPoolExecutorD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN5folly21CPUThreadPoolExecutorD2Ev(ptr noundef nonnull align 64 dereferenceable(2588) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5folly28StripedEDFThreadPoolExecutorE, i64 24)) #34, !inline_history !127
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N5folly28StripedEDFThreadPoolExecutorD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64
  tail call void @_ZN5folly21CPUThreadPoolExecutorD2Ev(ptr noundef nonnull align 64 dereferenceable(2588) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5folly28StripedEDFThreadPoolExecutorE, i64 24)) #34, !inline_history !895
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull align 64 dereferenceable(2652) %i.a, i64 noundef 2688, i64 noundef 64) #43, !inline_history !896
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn560_N5folly28StripedEDFThreadPoolExecutorD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -496
  tail call void @_ZN5folly21CPUThreadPoolExecutorD2Ev(ptr noundef nonnull align 64 dereferenceable(2588) %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5folly28StripedEDFThreadPoolExecutorE, i64 24)) #34, !inline_history !127
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn560_N5folly28StripedEDFThreadPoolExecutorD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -560
  %i.b = getelementptr inbounds i8, ptr %0, i64 -496
  tail call void @_ZN5folly21CPUThreadPoolExecutorD2Ev(ptr noundef nonnull align 64 dereferenceable(2588) %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5folly28StripedEDFThreadPoolExecutorE, i64 24)) #34, !inline_history !895
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull align 64 dereferenceable(2652) %i.a, i64 noundef 2688, i64 noundef 64) #43, !inline_history !896
  ret void
}

; Function Attrs: uwtable
declare noundef ptr @_ZThn496_N5folly21CPUThreadPoolExecutor20getThreadIdCollectorEv(ptr noundef) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly28StripedEDFThreadPoolExecutorC2ESt4pairImmESt10shared_ptrINS_13ThreadFactoryEERKNS0_7OptionsE(ptr noundef nonnull align 64 dereferenceable(2652) initializes((0, 8)) %0, ptr noundef %1, i64 %2, i64 %3, ptr nofree noundef align 8 captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.21", align 8 ; 4 uses
  %7 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %0, align 64, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -72
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call fastcc void @_ZN5folly12_GLOBAL__N_19makeQueueERKNS_28StripedEDFThreadPoolExecutor7OptionsE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(9) %5)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load <2 x ptr>, ptr %4, align 8, !tbaa !218
  store ptr null, ptr %i.i, align 8, !tbaa !126
  store <2 x ptr> %i.j, ptr %7, align 16, !tbaa !218
  store ptr null, ptr %4, align 8, !tbaa !899
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN5folly21CPUThreadPoolExecutorC2ESt4pairImmESt10unique_ptrINS_13BlockingQueueINS0_7CPUTaskEEESt14default_deleteIS6_EESt10shared_ptrINS_13ThreadFactoryEENS0_7OptionsE(ptr noundef nonnull align 64 dereferenceable(2588) %i.h, ptr noundef nonnull %i.k, i64 %2, i64 %3, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, i32 1)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126  ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !117
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !call_target !135, !inline_history !34
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !call_target !150, !inline_history !34
  br label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !198

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34
  br label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ac = load ptr, ptr %6, align 8, !tbaa !901   ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #34, !call_target !906, !inline_history !80
  br label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i
  %i.ag = load ptr, ptr %1, align 8               ; 2 uses
  store ptr %i.ag, ptr %0, align 64, !tbaa !119
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ag, i64 -72
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %i.h, align 64, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly28StripedEDFThreadPoolExecutorE, i64 400), ptr %i.ao, align 16, !tbaa !119
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #34
  %i.aq = load ptr, ptr %6, align 8, !tbaa !901   ; 3 uses
  %.not.i8 = icmp eq ptr %i.aq, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit10, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i9

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i9: ; preds = %bb.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !119
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #34, !call_target !906, !inline_history !80
  br label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit10

_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit10: ; preds = %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i9, %bb.i
  resume { ptr, i32 } %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_19makeQueueERKNS_28StripedEDFThreadPoolExecutor7OptionsE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !3592, !range !1665, !noundef !184
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly17LLCAccessSpreader3getEv()
  %i.h = tail call noundef i64 @_ZNK5folly17LLCAccessSpreader10numStripesEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42, !noalias !3593 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE, i64 16), ptr %i.j, align 8, !tbaa !119, !noalias !3593
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 10 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly17LLCAccessSpreader3getEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !3593

.noexc.i:                                         ; preds = %bb.c
  %i.m = invoke noundef i64 @_ZNK5folly17LLCAccessSpreader10numStripesEv(ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !noalias !3593 ; 4 uses

.noexc2.i:                                        ; preds = %.noexc.i
  store i64 %i.m, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !3593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !3593
  store i64 %i.m, ptr %i.b, align 8, !tbaa !1669, !noalias !3593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34, !noalias !3593
  store i32 0, ptr %i.c, align 4, !tbaa !197, !noalias !3593
  %.not2.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not2.i.i.i, label %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i, label %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i, !prof !198

_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !3593
  br label %bb.d

_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i: ; preds = %.noexc2.i
  %i.n = invoke noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull @.str)
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !noalias !3593 ; 2 uses

.noexc3.i:                                        ; preds = %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i
  store ptr %i.n, ptr %3, align 8, !tbaa !1672, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !3593
  %.not3.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not3.i.i.i, label %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i, label %.noexc7.i.i

_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i: ; preds = %.noexc3.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i, %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i
  %i.o = phi i64 [ %.pre.i.i.i, %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i ], [ %i.m, %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !3593
  %i.p = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 384) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i.i.i.i, label %bb.e, !prof !198

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @_ZN5folly6detail16throw_exception_ISt20bad_array_new_lengthJEEEvDpT0_() #18
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !noalias !3593

.noexc4.i:                                        ; preds = %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { i64, i1 } %i.p, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !3593
  store ptr null, ptr %i.a, align 8, !tbaa !218, !noalias !3593
  %i.s = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.r) #34, !noalias !3593 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %i.u = tail call ptr @__errno_location() #44    ; 2 uses
  br i1 %i.t, label %_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i, label %_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i.i.i

_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i.i.i: ; preds = %bb.e
  store i32 %i.s, ptr %i.u, align 4, !tbaa !197, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3593
  br label %.noexc6.i.i

_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i:      ; preds = %bb.e
  store i32 0, ptr %i.u, align 4, !tbaa !197, !noalias !3593
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !218, !noalias !3593 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3593
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.noexc6.i.i, label %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i

.noexc6.i.i:                                      ; preds = %_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i, %_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i.i.i
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !noalias !3593

.noexc5.i:                                        ; preds = %.noexc6.i.i
  unreachable

_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i: ; preds = %_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !1673, !noalias !3593
  %5 = load i64, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  %.not4.i.i.i = icmp eq i64 %5, 0
  br i1 %.not4.i.i.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i, label %.lr.ph.i.i.i

.noexc7.i.i:                                      ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !3593
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.1, i32 noundef 92, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc6.i unwind label %.loopexit.split-lp.i, !noalias !3593

.noexc6.i:                                        ; preds = %.noexc7.i.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.f unwind label %bb.g, !noalias !3593 ; 0 uses

bb.f:                                             ; preds = %.noexc6.i
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #41, !noalias !3593
  unreachable

bb.g:                                             ; preds = %.noexc6.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #41, !noalias !3593
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i ], [ %i.v, %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i ] ; 12 uses
  %.val.i.i.i = load i64, ptr %1, align 8, !tbaa !1669, !noalias !3593
  store i32 0, ptr %.05.i.i.i, align 4, !tbaa !3594, !noalias !3593
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 %.val.i.i.i, ptr %i.z, align 64, !tbaa !1669, !noalias !3593
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128
  store i64 0, ptr %i.aa, align 64, !tbaa !125, !noalias !3593
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 192
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !3593

.noexc7.i:                                        ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !noalias !3593
  store ptr %i.ad, ptr %i.ad, align 16, !tbaa !1676, !noalias !3593
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 216
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1677, !noalias !3593
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 256
  store i64 0, ptr %i.af, align 64, !noalias !3593
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 320 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !3595, !noalias !3593
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i unwind label %bb.h, !noalias !3593

bb.h:                                             ; preds = %.noexc7.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1676, !noalias !3596 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.06.013.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.06.013.i.i.i.i.i.i.i.i, align 8, !tbaa !1676, !noalias !3593 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !3593
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !81

_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i: ; preds = %.noexc7.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !3595, !noalias !3593
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 384 ; 2 uses
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !1673, !noalias !3593
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  %i.ap = getelementptr inbounds nuw [384 x i8], ptr %i.an, i64 %i.ao
  %.not.i.i.i = icmp eq ptr %i.am, %i.ap
  br i1 %.not.i.i.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3578

_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i: ; preds = %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i, %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i
  invoke void @_ZN5folly31StripedThrottledLifoSemBalancer12ensureWorkerEv()
          to label %.noexc10.i.i unwind label %bb.aa, !noalias !3593

.noexc10.i.i:                                     ; preds = %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5folly31StripedThrottledLifoSemBalancer8instanceEv()
          to label %.noexc11.i.i unwind label %bb.aa, !noalias !3593 ; 8 uses

.noexc11.i.i:                                     ; preds = %.noexc10.i.i
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #34, !noalias !3593 ; 2 uses
  %.not.i.i.i9.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i9.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc11.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #45
          to label %.noexc12.i.i unwind label %bb.aa, !noalias !3593

.noexc12.i.i:                                     ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %.noexc11.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 3 uses
  %i.at = ptrtoint ptr %i.k to i64                ; 2 uses
  %i.au = zext i64 %i.at to i128
  %i.av = mul nuw i128 %i.au, 14181476777654086739
  %i.aw = lshr i128 %i.av, 64
  %i.ax = trunc nuw i128 %i.aw to i64
  %i.ay = mul i64 %i.at, -4265267296055464877
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, -4265267296055464877     ; 2 uses
  %i.bb = lshr i64 %i.ba, 14
  %i.bc = and i64 %i.bb, 255
  %i.bd = lshr i64 %i.ba, 22                      ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1) ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 104 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1680, !noalias !3597 ; 4 uses
  %i.bg = lshr i64 %i.bf, 8                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %..thread34_crit_edge.i.i.i.i.i.i, label %bb.j

..thread34_crit_edge.i.i.i.i.i.i:                 ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !1686, !noalias !3597
  %.pre57.i.i.i.i.i.i = shl nuw i64 1, %i.bf
  br label %.thread34.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.bh = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  %i.bj = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  %i.bk = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bm = and i64 %i.bf, 255                      ; 4 uses
  %i.bn = shl nuw i64 1, %i.bm                    ; 3 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bm
  %i.bo = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1686, !noalias !3597 ; 3 uses
  %i.br = load ptr, ptr %i.as, align 8, !noalias !3597
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.023.i47.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.j ], [ %i.cr, %bb.m ]
  %.025.i46.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.j ], [ %i.cs, %bb.m ] ; 2 uses
  %i.bs = and i64 %.025.i46.i.i.i.i.i.i, %i.bo
  %i.bt = shl nuw nsw i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt ; 3 uses
  %i.bv = load <16 x i8>, ptr %i.bu, align 16, !noalias !3597 ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, %i.bl
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = and i32 %i.by, 4095
  %.not36.i.i.i.i.i.i = icmp eq i32 %i.bz, 0
  %i.ca = extractelement <16 x i8> %i.bv, i64 15
  br i1 %.not36.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.k
  %i.cb = icmp ne ptr %i.bu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cb)
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.09.0.i.i.i.i.i.i = phi i32 [ %i.co, %.critedge.i.i.i.i.i.i.i ], [ %i.by, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.cc = icmp ne i32 %.sroa.09.0.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cc)
  %i.cd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.0.i.i.i.i.i.i, i1 true)
  %i.ce = shl nuw nsw i32 %i.cd, 2
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !197, !noalias !3597
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %i.br, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !218, !noalias !3597
  %i.cm = icmp eq ptr %i.k, %i.cl
  br i1 %i.cm, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_EEESt4pairINS1_23VectorContainerIteratorIPSP_IKS4_S7_EEEbEOS4_DpOT_.exit.i.i.i, label %.critedge.i.i.i.i.i.i.i, !prof !1687

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.l
  %i.cn = add nsw i32 %.sroa.09.0.i.i.i.i.i.i, -1
  %i.co = and i32 %i.cn, %.sroa.09.0.i.i.i.i.i.i  ; 2 uses
  %i.cp = and i32 %i.co, 4094
  %.not37.i.i.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not37.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.l, !llvm.loop !82

.loopexit.i.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %i.cq = icmp eq i8 %i.ca, 0
  br i1 %i.cq, label %.thread34.i.i.i.i.i.i, label %bb.m, !prof !1687

bb.m:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.cr = add i64 %.023.i47.i.i.i.i.i.i, -1       ; 2 uses
  %i.cs = add i64 %i.bi, %.025.i46.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.thread34.i.i.i.i.i.i, label %bb.k, !llvm.loop !83

.thread34.i.i.i.i.i.i:                            ; preds = %bb.m, %.loopexit.i.i.i.i.i.i, %..thread34_crit_edge.i.i.i.i.i.i
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i.i, %..thread34_crit_edge.i.i.i.i.i.i ], [ %i.bn, %.loopexit.i.i.i.i.i.i ], [ %i.bn, %bb.m ] ; 2 uses
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.bf, %..thread34_crit_edge.i.i.i.i.i.i ], [ %i.bm, %.loopexit.i.i.i.i.i.i ], [ %i.bm, %bb.m ]
  %i.ct = phi ptr [ %.pre.i.i.i.i.i.i, %..thread34_crit_edge.i.i.i.i.i.i ], [ %i.bq, %.loopexit.i.i.i.i.i.i ], [ %i.bq, %bb.m ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %.0.copyload.i.i.i.i.i.i.i.i = load i16, ptr %i.cu, align 1, !noalias !3597
  %i.cv = zext i16 %.0.copyload.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.cw = add i64 %.pre-phi58.i.i.i.i.i.i, -1
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = add nuw nsw i64 %i.cx, 1
  %i.cz = mul i64 %i.cy, %i.cv                    ; 2 uses
  %.not.i32.i.i.i.i.i.i = icmp ult i64 %i.bg, %i.cz
  br i1 %.not.i32.i.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i, label %bb.n

end_hunk_0
begin_hunk_1_@_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m:bb.a
  %.not.i = icmp samesign ult i64 %i.n, %i.o
  br i1 %.not.i, label %.lr.ph.i.preheader.i.i, label %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.n, 1
  %i.q = and i64 %i.m, -4294967296
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = cmpxchg weak ptr %i.l, i64 %i.m, i64 %i.r seq_cst monotonic, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %.lr.ph.i._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i
  %i.u = add nuw nsw i64 %i.ab, 1
  %i.v = and i64 %i.aa, -4294967296
  %i.w = add nuw nsw i64 %i.u, %i.v
  %i.x = cmpxchg weak ptr %i.l, i64 %i.aa, i64 %i.w seq_cst monotonic, align 8 ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %.lr.ph.i._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %i.z = phi { i64, i1 } [ %i.x, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i ]
  %i.aa = extractvalue { i64, i1 } %i.z, 0        ; 5 uses
  %i.ab = and i64 %i.aa, 4294967295               ; 2 uses
  %i.ac = lshr i64 %i.aa, 33
  %.not11.i = icmp samesign ult i64 %i.ab, %i.ac
  br i1 %.not11.i, label %.lr.ph.i.i.i, label %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i

.lr.ph.i._crit_edge.i.i:                          ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %.02131.i.lcssa.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.m, %.lr.ph.i.preheader.i.i ]
  %i.ad = and i64 %.02131.i.lcssa.i.i, 4294967296
  %.not14.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not14.i.i.i, label %bb.c, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE4postEm.exit

bb.c:                                             ; preds = %.lr.ph.i._crit_edge.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  tail call void @_ZN5folly16ThrottledLifoSem21maybeStartWakingChainEv(ptr noundef nonnull align 64 dereferenceable(200) %i.ae)
  br label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE4postEm.exit

_ZN5folly16ThrottledLifoSem8try_postEj.exit.i:    ; preds = %.lr.ph.i.i, %bb.b
  %i.af = add i64 %.0.i, 1                        ; 2 uses
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !1668
  %i.ah = icmp eq i64 %i.af, %i.ag
  %spec.store.select.i = select i1 %i.ah, i64 0, i64 %i.af ; 2 uses
  %i.ai = icmp eq i64 %spec.store.select.i, %i.b
  br i1 %i.ai, label %bb.d, label %bb.b, !llvm.loop !3607

bb.d:                                             ; preds = %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !1673
  %i.ak = getelementptr inbounds nuw [384 x i8], ptr %i.aj, i64 %i.b ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 3 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8 ; 4 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %.sroa.speculated20.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 4294967295)
  %i.aq = and i64 %i.an, -4294967296
  %i.ar = or disjoint i64 %.sroa.speculated20.i.i.i, %i.aq
  %i.as = cmpxchg weak ptr %i.am, i64 %i.an, i64 %i.ar seq_cst monotonic, align 8 ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %._crit_edge.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i: ; preds = %bb.d, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i
  %i.au = phi { i64, i1 } [ %i.ba, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ], [ %i.as, %bb.d ]
  %i.av = extractvalue { i64, i1 } %i.au, 0       ; 4 uses
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 4294967295)
  %i.ay = and i64 %i.av, -4294967296
  %i.az = or disjoint i64 %.sroa.speculated.i.i.i, %i.ay
  %i.ba = cmpxchg weak ptr %i.am, i64 %i.av, i64 %i.az seq_cst monotonic, align 8 ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bb, label %._crit_edge.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i, %bb.d
  %.0.lcssa19.i.i.i = phi i64 [ %i.an, %bb.d ], [ %i.av, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ] ; 2 uses
  %.lcssa18.i.i.i = phi i64 [ %i.ap, %bb.d ], [ %i.ax, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ]
  %i.bc = lshr i64 %.0.lcssa19.i.i.i, 33          ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  %i.bd = and i64 %.0.lcssa19.i.i.i, 4294967296
  %.not10.i.i.i = icmp eq i64 %i.bd, 0
  %or.cond.i.i.i = and i1 %.not.i.i.i, %.not10.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN5folly16ThrottledLifoSem4postEj.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN5folly16ThrottledLifoSem21maybeStartWakingChainEv(ptr noundef nonnull align 64 dereferenceable(200) %i.al)
  br label %_ZN5folly16ThrottledLifoSem4postEj.exit.i

_ZN5folly16ThrottledLifoSem4postEj.exit.i:        ; preds = %bb.e, %._crit_edge.i.i.i
  %i.be = icmp samesign ule i64 %.lcssa18.i.i.i, %i.bc
  %i.bf = zext i1 %i.be to i8
  br label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE4postEm.exit

_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE4postEm.exit: ; preds = %.lr.ph.i._crit_edge.i.i, %bb.c, %_ZN5folly16ThrottledLifoSem4postEj.exit.i
  %.08.i = phi i8 [ %i.bf, %_ZN5folly16ThrottledLifoSem4postEj.exit.i ], [ 1, %.lr.ph.i._crit_edge.i.i ], [ 1, %bb.c ]
  ret i8 %.08.i
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #14

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !3610
  %i.b = load i64, ptr %0, align 8, !tbaa !1669
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !197
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.h
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt20bad_array_new_lengthJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_array_new_length", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %0, align 8, !tbaa !119
  invoke void @_ZN5folly15throw_exceptionISt20bad_array_new_lengthEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt20bad_array_new_lengthEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %i.a, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #45
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #20

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !119
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable
}

declare void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #34 ; 0 uses
  tail call void @_ZSt9terminatev() #41
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #24

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN5folly31StripedThrottledLifoSemBalancer12ensureWorkerEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN5folly31StripedThrottledLifoSemBalancer8instanceEv() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1680
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.111", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !1669
  store i64 %2, ptr %i.b, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1686 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6                            ; 2 uses
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i53 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i53, ptr %i.g, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i53
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = mul i64 %i.x, 80
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #47 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1707
  %i.ah = load ptr, ptr %0, align 8, !tbaa !1692  ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i
  %.020.i.i = phi i64 [ %i.av, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i ], [ 0, %bb.a ]
  %.01419.i.i = phi ptr [ %i.aw, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i ], [ %i.ah, %bb.a ] ; 5 uses
  %.01518.i.i = phi ptr [ %i.ax, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i ], [ %i.aj, %bb.a ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01518.i.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5folly28StripedEDFThreadPoolExecutorC1ESt4pairImmESt10shared_ptrINS_13ThreadFactoryEERKNS0_7OptionsE:bb.a
_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.u = load ptr, ptr %5, align 8, !tbaa !901    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #34, !call_target !906, !inline_history !80
  br label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i
  store ptr getelementptr inbounds nuw inrange(-72, 72) (i8, ptr @_ZTVN5folly28StripedEDFThreadPoolExecutorE, i64 72), ptr %0, align 64, !tbaa !119
  store ptr getelementptr inbounds nuw inrange(-72, 168) (i8, ptr @_ZTVN5folly28StripedEDFThreadPoolExecutorE, i64 216), ptr %i.a, align 64, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly28StripedEDFThreadPoolExecutorE, i64 400), ptr %i.y, align 16, !tbaa !119
  ret void

bb.i:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #34
  %i.aa = load ptr, ptr %5, align 8, !tbaa !901   ; 3 uses
  %.not.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit9, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i8

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i8: ; preds = %bb.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #34, !call_target !906, !inline_history !80
  br label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit9

_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit9: ; preds = %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i8, %bb.i
  resume { ptr, i32 } %i.z
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.67") align 8) local_unnamed_addr #1

declare void @_ZN5folly21CPUThreadPoolExecutor7CPUTaskC1EONS_8FunctionIFvvEEESt10shared_ptrINS_14RequestContextEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES5_a(ptr noundef nonnull align 16 dereferenceable(120), ptr noundef nonnull align 16 dereferenceable(64), ptr noundef align 8, i64, ptr noundef nonnull align 16 dereferenceable(64), i8 noundef signext) unnamed_addr #1

declare noundef ptr @_ZN5folly21CPUThreadPoolExecutor16getQueueObserverEa(ptr noundef nonnull align 64 dereferenceable(2588), i8 noundef signext) local_unnamed_addr #1

declare void @_ZN5folly18ThreadPoolExecutor19registerTaskEnqueueERKNS0_4TaskE(ptr noundef nonnull align 64 dereferenceable(496), ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5folly18ThreadPoolExecutor19ensureActiveThreadsEv(ptr noundef nonnull align 64 dereferenceable(496)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly8Executor21invokeCatchingExnsLogEPKc(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5folly21CPUThreadPoolExecutor12getTaskQueueEv(ptr noundef nonnull align 64 dereferenceable(2588)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5folly18ThreadPoolExecutor6ThreadEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !119
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 64 dead_on_return(57) dereferenceable(57) %i.a) #34, !call_target !3801, !inline_history !3797
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4584 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !196
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor6ThreadD2Ev(ptr noundef nonnull align 64 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly18ThreadPoolExecutor6ThreadE, i64 16), ptr %0, align 64, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !1669
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #41
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor6ThreadD0Ev(ptr noundef nonnull align 64 dereferenceable(57) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly18ThreadPoolExecutor6ThreadE, i64 16), ptr %0, align 64, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !1669
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %_ZN5folly18ThreadPoolExecutor6ThreadD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #41, !inline_history !4585
  unreachable

_ZN5folly18ThreadPoolExecutor6ThreadD2Ev.exit:    ; preds = %bb.a
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 64) #43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #39

; Function Attrs: nounwind
declare void @_ZN5folly21CPUThreadPoolExecutorD2Ev(ptr noundef nonnull align 64 dereferenceable(2588), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nofree noreturn }
attributes #24 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree nounwind }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind }
attributes #35 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { noreturn nounwind }
attributes #42 = { builtin allocsize(0) }
attributes #43 = { builtin nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { cold noreturn nounwind }
attributes #47 = { allocsize(0) }
attributes #48 = { cold nounwind }
attributes #49 = { nounwind allocsize(0) }

!llvm.module.flags = !{!97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}
!llvm.errno.tbaa = !{!108}

!0 = distinct !{null, null}
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !136, file: !183, line: 92, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt9type_info")
!2 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !188, file: !187, line: 49, baseType: !189, size: 32, elements: !193, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Mutex_base<(__gnu_cxx::_Lock_policy)2>", scope: !136, file: !131, line: 106, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !186, identifier: "_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !136, file: !131, line: 125, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !182, vtableHolder: !4, templateParams: !195, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!5 = distinct !{ptr @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !216, file: !215, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!7 = distinct !{ptr @_ZN5folly18ThreadPoolExecutor4TaskD2Ev, null, null}
!8 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !136, file: !300, line: 111, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!9 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !302, file: !225, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CoerceTag", scope: !302, file: !225, line: 248, size: 8, flags: DIFlagTypePassByValue, elements: !184, identifier: "_ZTSN5folly6detail8function9CoerceTagE")
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void () const>", scope: !216, file: !225, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFvvEEE")
!12 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Op", scope: !302, file: !225, line: 234, baseType: !138, size: 32, flags: DIFlagEnumClass, elements: !306, identifier: "_ZTSN5folly6detail8function2OpE")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aligned_storage<48UL, 16UL>", scope: !301, file: !309, line: 652, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !315, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EEE")
!14 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "byte", scope: !136, file: !321, line: 69, baseType: !322, size: 8, flags: DIFlagEnumClass, elements: !184, identifier: "_ZTSSt4byte")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type", scope: !13, file: !309, line: 653, size: 384, flags: DIFlagTypePassByValue, elements: !320, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EE4typeE")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BigTrivialLayout", scope: !17, file: !225, line: 237, size: 192, flags: DIFlagTypePassByValue, elements: !326, identifier: "_ZTSN5folly6detail8function4Data16BigTrivialLayoutE")
!17 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Data", scope: !302, file: !225, line: 236, size: 384, flags: DIFlagTypePassByValue, elements: !312, identifier: "_ZTSN5folly6detail8function4DataE")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FunctionTraits<void ()>", scope: !302, file: !225, line: 351, size: 8, flags: DIFlagTypePassByValue, elements: !332, templateParams: !336, identifier: "_ZTSN5folly6detail8function14FunctionTraitsIFvvEEE")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void ()>", scope: !216, file: !225, line: 630, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !299, templateParams: !336, identifier: "_ZTSN5folly8FunctionIFvvEEE")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratio<1L, 1000000000L>", scope: !136, file: !429, line: 266, size: 8, flags: DIFlagTypePassByValue, elements: !433, templateParams: !436, identifier: "_ZTSSt5ratioILl1ELl1000000000EE")
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long, std::ratio<1L, 1000000000L> >", scope: !354, file: !348, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !425, templateParams: !428, identifier: "_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE")
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "WaitOptions", scope: !216, file: !353, line: 30, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !373, identifier: "_ZTSN5folly11WaitOptionsE")
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1L, 1000000000L> > >", scope: !354, file: !348, line: 922, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !470, templateParams: !473, identifier: "_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "steady_clock", scope: !474, file: !348, line: 1267, size: 8, flags: DIFlagTypePassByValue, elements: !479, identifier: "_ZTSNSt6chrono3_V212steady_clockE")
!25 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !136, file: !511, line: 62, baseType: !138, size: 32, flags: DIFlagEnumClass, elements: !641, identifier: "_ZTSSt12memory_order")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned int>", scope: !136, file: !511, line: 341, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !634, templateParams: !643, identifier: "_ZTSSt13__atomic_baseIjE")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned int>", scope: !136, file: !484, line: 845, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !510, templateParams: !645, identifier: "_ZTSSt6atomicIjE")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long>", scope: !136, file: !511, line: 341, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !797, templateParams: !799, identifier: "_ZTSSt13__atomic_baseImE")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned long>", scope: !136, file: !484, line: 891, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !674, templateParams: !801, identifier: "_ZTSSt6atomicImE")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nothrow_t", scope: !136, file: !803, line: 92, size: 8, flags: DIFlagTypePassByValue, elements: !808, identifier: "_ZTSSt9nothrow_t")
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__weak_count<(__gnu_cxx::_Lock_policy)2>", scope: !136, file: !131, line: 1140, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !892, templateParams: !195, identifier: "_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE")
!32 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count<(__gnu_cxx::_Lock_policy)2>", scope: !136, file: !131, line: 893, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !852, templateParams: !195, identifier: "_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE")
!33 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CPUThreadPoolExecutor", scope: !216, file: !894, line: 61, size: 20992, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly21CPUThreadPoolExecutorE")
!34 = distinct !{ptr @_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratio<1L, 1000L>", scope: !136, file: !429, line: 266, size: 8, flags: DIFlagTypePassByValue, elements: !985, templateParams: !987, identifier: "_ZTSSt5ratioILl1ELl1000EE")
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long, std::ratio<1L, 1000L> >", scope: !354, file: !348, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !980, templateParams: !982, identifier: "_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OptionalEmptyTag", scope: !301, file: !988, line: 84, size: 8, flags: DIFlagTypePassByValue, elements: !184, identifier: "_ZTSN5folly6detail16OptionalEmptyTagE")
!38 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "optional<folly::CPUThreadPoolExecutor::CPUTask>", scope: !136, file: !1096, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8optionalIN5folly21CPUThreadPoolExecutor7CPUTaskEE")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OptionalPromiseReturn<folly::CPUThreadPoolExecutor::CPUTask>", scope: !301, file: !988, line: 88, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail21OptionalPromiseReturnINS_21CPUThreadPoolExecutor7CPUTaskEEE")
!40 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_secret", scope: !41, file: !988, line: 220, baseType: !138, size: 32, flags: DIFlagEnumClass, elements: !1103, identifier: "_ZTSN5folly4None7_secretE")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !216, file: !988, line: 219, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1101, identifier: "_ZTSN5folly4NoneE")
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !43, file: !988, line: 106, size: 1024, flags: DIFlagExportSymbols | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1185, identifier: "_ZTSN5folly6detail39OptionalStorageNonTriviallyDestructibleINS_21CPUThreadPoolExecutor7CPUTaskEEUt_E")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OptionalStorageNonTriviallyDestructible<folly::CPUThreadPoolExecutor::CPUTask>", scope: !301, file: !988, line: 105, size: 1152, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1182, templateParams: !1187, identifier: "_ZTSN5folly6detail39OptionalStorageNonTriviallyDestructibleINS_21CPUThreadPoolExecutor7CPUTaskEEE")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OptionalStorageTriviallyDestructible<folly::CPUThreadPoolExecutor::CPUTask>", scope: !301, file: !988, line: 92, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINS_21CPUThreadPoolExecutor7CPUTaskEEE")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, folly::detail::OptionalStorageTriviallyDestructible<folly::CPUThreadPoolExecutor::CPUTask>, folly::detail::OptionalStorageNonTriviallyDestructible<folly::CPUThreadPoolExecutor::CPUTask> >", scope: !136, file: !339, line: 2240, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !1191, identifier: "_ZTSSt11conditionalILb0EN5folly6detail36OptionalStorageTriviallyDestructibleINS0_21CPUThreadPoolExecutor7CPUTaskEEENS1_39OptionalStorageNonTriviallyDestructibleIS4_EEE")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OptionalStorage<folly::CPUThreadPoolExecutor::CPUTask>", scope: !301, file: !988, line: 136, size: 1152, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1157, templateParams: !1187, identifier: "_ZTSN5folly6detail15OptionalStorageINS_21CPUThreadPoolExecutor7CPUTaskEEE")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OptionalCopyBase<folly::CPUThreadPoolExecutor::CPUTask, false>", scope: !301, file: !988, line: 166, size: 1152, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1149, templateParams: !1192, identifier: "_ZTSN5folly6detail16OptionalCopyBaseINS_21CPUThreadPoolExecutor7CPUTaskELb0EEE")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OptionalCopyAssignBase<folly::CPUThreadPoolExecutor::CPUTask, false>", scope: !301, file: !988, line: 195, size: 1152, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1126, templateParams: !1192, identifier: "_ZTSN5folly6detail22OptionalCopyAssignBaseINS_21CPUThreadPoolExecutor7CPUTaskELb0EEE")
!49 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Optional<folly::CPUThreadPoolExecutor::CPUTask>", scope: !216, file: !988, line: 241, size: 1152, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1095, templateParams: !1187, identifier: "_ZTSN5folly8OptionalINS_21CPUThreadPoolExecutor7CPUTaskEEE")
!50 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "weak_ptr<folly::RequestContext>", scope: !136, file: !131, line: 398, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8weak_ptrIN5folly14RequestContextEE")
!51 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__weak_ptr<folly::RequestContext, (__gnu_cxx::_Lock_policy)2>", scope: !136, file: !131, line: 389, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt10__weak_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE")
!52 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RequestContext", scope: !216, file: !1289, line: 159, size: 512, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly14RequestContextE")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_extent<folly::RequestContext>", scope: !136, file: !339, line: 1990, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !1291, identifier: "_ZTSSt13remove_extentIN5folly14RequestContextEE")
!54 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_ptr_access<folly::RequestContext, (__gnu_cxx::_Lock_policy)2, false, false>", scope: !136, file: !131, line: 1341, size: 8, flags: DIFlagTypePassByValue, elements: !1304, templateParams: !1305, identifier: "_ZTSSt19__shared_ptr_accessIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE")
!55 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_ptr<folly::RequestContext, (__gnu_cxx::_Lock_policy)2>", scope: !136, file: !131, line: 1422, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1288, templateParams: !1306, identifier: "_ZTSSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE")
!56 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "shared_ptr<folly::RequestContext>", scope: !136, file: !802, line: 175, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1234, templateParams: !1291, identifier: "_ZTSSt10shared_ptrIN5folly14RequestContextEE")
!57 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ThreadPoolExecutor", scope: !216, file: !1307, line: 70, size: 4096, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly18ThreadPoolExecutorE")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<folly::ThreadPoolExecutor::Task::Expiration>", scope: !136, file: !1324, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !1397, templateParams: !1399, identifier: "_ZTSSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEE")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<folly::ThreadPoolExecutor::Task::Expiration, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration>, void>", scope: !70, file: !1324, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !1403, identifier: "_ZTSNSt15__uniq_ptr_implIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EE4_PtrIS3_S5_vEE")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !136, file: !339, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !1474, identifier: "_ZTSSt13__conditionalILb1EE")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !63, file: !1548, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !1556, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !136, file: !1548, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !184, identifier: "_ZTSSt17__uses_alloc_base")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !136, file: !1548, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !1551, identifier: "_ZTSSt13__uses_alloc0")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !136, file: !1548, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !1561, identifier: "_ZTSSt15allocator_arg_t")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, folly::ThreadPoolExecutor::Task::Expiration *, false>", scope: !136, file: !1445, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1547, templateParams: !1564, identifier: "_ZTSSt10_Head_baseILm0EPN5folly18ThreadPoolExecutor4Task10ExpirationELb0EE")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration>, true>", scope: !136, file: !1445, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1623, templateParams: !1627, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEELb1EE")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration> >", scope: !136, file: !1445, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1595, templateParams: !1631, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEEE")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, folly::ThreadPoolExecutor::Task::Expiration *, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration> >", scope: !136, file: !1445, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1519, templateParams: !1635, identifier: "_ZTSSt11_Tuple_implILm0EJPN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EEE")
!69 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<folly::ThreadPoolExecutor::Task::Expiration *, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration> >", scope: !136, file: !1445, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1472, templateParams: !1636, identifier: "_ZTSSt5tupleIJPN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EEE")
!70 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<folly::ThreadPoolExecutor::Task::Expiration, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration> >", scope: !136, file: !1324, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1444, templateParams: !1638, identifier: "_ZTSSt15__uniq_ptr_implIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EE")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Expiration", scope: !76, file: !1307, line: 269, size: 640, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1641, identifier: "_ZTSN5folly18ThreadPoolExecutor4Task10ExpirationE")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<folly::ThreadPoolExecutor::Task::Expiration, void>", scope: !136, file: !339, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !1642, identifier: "_ZTSSt29__add_lvalue_reference_helperIN5folly18ThreadPoolExecutor4Task10ExpirationEvE")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<folly::ThreadPoolExecutor::Task::Expiration>", scope: !136, file: !339, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !184, templateParams: !1399, identifier: "_ZTSSt20add_lvalue_referenceIN5folly18ThreadPoolExecutor4Task10ExpirationEE")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<folly::ThreadPoolExecutor::Task::Expiration, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration>, true, true>", scope: !136, file: !1324, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1653, templateParams: !1654, identifier: "_ZTSSt15__uniq_ptr_dataIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_ELb1ELb1EE")
!75 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<folly::ThreadPoolExecutor::Task::Expiration, std::default_delete<folly::ThreadPoolExecutor::Task::Expiration> >", scope: !136, file: !1324, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1387, templateParams: !1656, identifier: "_ZTSSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EE")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Task", scope: !57, file: !1307, line: 268, size: 896, flags: DIFlagProtected | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1323, identifier: "_ZTSN5folly18ThreadPoolExecutor4TaskE")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CPUTask", scope: !33, file: !894, line: 163, size: 1024, flags: DIFlagPublic | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1204, identifier: "_ZTSN5folly21CPUThreadPoolExecutor7CPUTaskE")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BlockingQueueAddResult", scope: !216, file: !902, line: 39, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1662, identifier: "_ZTSN5folly22BlockingQueueAddResultE")
!79 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BlockingQueue<folly::CPUThreadPoolExecutor::CPUTask>", scope: !216, file: !902, line: 45, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !933, vtableHolder: !79, templateParams: !1664, identifier: "_ZTSN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE")
!80 = distinct !{null, null}
!81 = distinct !{!81, !1678}
!82 = distinct !{!82, !1678}
!83 = distinct !{!83, !1678}
!84 = distinct !{!84, !1678}
!85 = distinct !{null, null}
!86 = distinct !{!86, !1678}
!87 = distinct !{null, null, null, null, null, null}
!88 = distinct !{!88, !1678}
!89 = distinct !{null, null, null, null, null}
!90 = distinct !{null, null, null, null, null}
!91 = distinct !{!91, !1678}
!92 = distinct !{!92, !1678}
!93 = distinct !{!93, !1678}
!94 = distinct !{null, ptr @_ZN5folly18ThreadPoolExecutor4TaskD2Ev, null, null, null, null, null}
!95 = distinct !{null, ptr @_ZN5folly18ThreadPoolExecutor4TaskD2Ev, ptr @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!96 = distinct !{null, ptr @_ZN5folly18ThreadPoolExecutor4TaskD2Ev, null, null}
!97 = !{i32 7, !"Dwarf Version", i32 5}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{i32 7, !"openmp", i32 51}
!100 = !{i32 8, !"PIC Level", i32 2}
!101 = !{i32 7, !"uwtable", i32 2}
!102 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!103 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!104 = !{!"Simple C++ TBAA"}
!105 = !{!"omnipotent char", !104, i64 0}
!106 = !{!"int", !105, i64 0}
!107 = !{!"__libc_errno", !106, i64 0}
!108 = !{!107, !106, i64 0}
!109 = !{!"any pointer", !105, i64 0}
!110 = !{!"p1 _ZTSN5folly24DefaultKeepAliveExecutor12ControlBlockE", !109, i64 0}
!111 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0}
!112 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !111, i64 0}
!113 = !{!"_ZTSSt12__shared_ptrIN5folly24DefaultKeepAliveExecutor12ControlBlockELN9__gnu_cxx12_Lock_policyE2EE", !110, i64 0, !112, i64 8}
!114 = !{!113, !110, i64 0}
!115 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !106, i64 8, !106, i64 12}
!116 = !{!115, !106, i64 8}
!117 = !{!115, !106, i64 12}
!118 = !{!"vtable pointer", !104, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"long", !105, i64 0}
!121 = !{!"_ZTSSt13__atomic_baseImE", !120, i64 0}
!122 = !{!"_ZTSSt6atomicImE", !121, i64 0}
!123 = !{!"bool", !105, i64 0}
!124 = !{!"_ZTSSt13__atomic_baseIjE", !106, i64 0}
!125 = !{!121, !120, i64 0}
!126 = !{!112, !111, i64 0}
!127 = !{ptr @_ZN5folly28StripedEDFThreadPoolExecutorD1Ev}
!128 = !{!"_ZTSN5folly8FunctionIFvvEEE", !105, i64 0, !109, i64 48, !109, i64 56}
!129 = !{!128, !109, i64 48}
!130 = !{!128, !109, i64 56}
!131 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!133 = !{null, !132}
!134 = !DISubroutineType(types: !133)
!135 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !4, file: !131, line: 139, type: !134, scopeLine: 139, containingType: !4, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!136 = !DINamespace(name: "std", scope: null)
!137 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4, baseType: !3, flags: DIFlagPublic, extraData: i32 0)
!138 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!139 = !{!138}
!140 = !DISubroutineType(types: !139)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !140, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$_Sp_counted_base", scope: !131, file: !131, baseType: !142, size: 64, flags: DIFlagArtificial)
!144 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/atomic_word.h", directory: "", checksumkind: CSK_MD5, checksum: "a57b0e58df4838e6bdf466cbd75ee448")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !144, line: 32, baseType: !138)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_M_use_count", scope: !4, file: !131, line: 237, baseType: !145, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_M_weak_count", scope: !4, file: !131, line: 238, baseType: !145, size: 32, offset: 96)
!148 = !DISubprogram(name: "_Sp_counted_base", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC4Ev", scope: !4, file: !131, line: 129, type: !134, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubprogram(name: "~_Sp_counted_base", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED4Ev", scope: !4, file: !131, line: 133, type: !134, scopeLine: 133, containingType: !4, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!150 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !4, file: !131, line: 143, type: !134, scopeLine: 143, containingType: !4, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1)
!153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !152, size: 64)
!154 = !{!151, !132, !153}
!155 = !DISubroutineType(types: !154)
!156 = !DISubprogram(name: "_M_get_deleter", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info", scope: !4, file: !131, line: 147, type: !155, scopeLine: 147, containingType: !4, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!157 = !DISubprogram(name: "_M_add_ref_copy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv", scope: !4, file: !131, line: 151, type: !134, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubprogram(name: "_M_add_ref_lock", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_lockEv", scope: !4, file: !131, line: 156, type: !134, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!160 = !{!159, !132}
!161 = !DISubroutineType(types: !160)
!162 = !DISubprogram(name: "_M_add_ref_lock_nothrow", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv", scope: !4, file: !131, line: 269, type: !161, scopeLine: 269, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv", scope: !4, file: !131, line: 317, type: !134, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubprogram(name: "_M_release_last_use", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv", scope: !4, file: !131, line: 172, type: !134, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
end_hunk_2
