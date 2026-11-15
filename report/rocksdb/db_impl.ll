Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18355
inline.NumDeleted: 8074
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN7rocksdb10autovectorINS0_IPNS_11VersionEditELm8EEELm8EED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1039 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %.pr.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !1025
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i
  store i64 0, ptr %.05.i.i.i, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1030 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1037
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1037
  br label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i

_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1031
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.m) #40
  br label %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !1038
  br label %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1040
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #40
  br label %_ZNSt6vectorIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEESaIS4_EED2Ev.exit

_ZNSt6vectorIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1141, !noalias !2442 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1153, !noalias !2442 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1143, !noalias !2442 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1141, !noalias !2443 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1142, !noalias !2443 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1143, !noalias !2443 ; 3 uses
  %.021.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = icmp ult ptr %.021.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.not.i.i = icmp eq ptr %i.f, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.022.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.021.i.i, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %.022.i.i, align 8, !tbaa !1027
  tail call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %i.n) #43
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8 ; 2 uses
  %i.o = icmp ult ptr %.0.i.i, %i.l
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2440

bb.b:                                             ; preds = %._crit_edge.i.i
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11VersionEditEEvT_S3_.exit9.i.i, label %.lr.ph.i.i6.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.b, %.lr.ph.i.i6.i.i
  %.05.i.i7.i.i = phi ptr [ %i.p, %.lr.ph.i.i6.i.i ], [ %i.b, %bb.b ] ; 2 uses
  tail call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %.05.i.i7.i.i) #43
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i7.i.i, i64 7456 ; 2 uses
  %.not.i.i8.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i8.i.i, label %_ZSt8_DestroyIPN7rocksdb11VersionEditEEvT_S3_.exit9.i.i, label %.lr.ph.i.i6.i.i, !llvm.loop !2441

_ZSt8_DestroyIPN7rocksdb11VersionEditEEvT_S3_.exit9.i.i: ; preds = %.lr.ph.i.i6.i.i, %bb.b
  %.not4.i.i10.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not4.i.i10.i.i, label %_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %_ZSt8_DestroyIPN7rocksdb11VersionEditEEvT_S3_.exit9.i.i, %.lr.ph.i.i11.i.i
  %.05.i.i12.i.i = phi ptr [ %i.q, %.lr.ph.i.i11.i.i ], [ %i.j, %_ZSt8_DestroyIPN7rocksdb11VersionEditEEvT_S3_.exit9.i.i ] ; 2 uses
  tail call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %.05.i.i12.i.i) #43
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i12.i.i, i64 7456 ; 2 uses
  %.not.i.i13.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i13.i.i, label %_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i11.i.i, !llvm.loop !2441

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not4.i.i15.i.i = icmp eq ptr %i.b, %i.h
  br i1 %.not4.i.i15.i.i, label %_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i16.i.i

.lr.ph.i.i16.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i16.i.i
  %.05.i.i17.i.i = phi ptr [ %i.r, %.lr.ph.i.i16.i.i ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %.05.i.i17.i.i) #43
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i17.i.i, i64 7456 ; 2 uses
  %.not.i.i18.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i18.i.i, label %_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i16.i.i, !llvm.loop !2441

_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit: ; preds = %.lr.ph.i.i11.i.i, %.lr.ph.i.i16.i.i, %bb.c, %_ZSt8_DestroyIPN7rocksdb11VersionEditEEvT_S3_.exit9.i.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !1154   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !1155 ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !1156 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i1, label %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

.lr.ph.i.i1:                                      ; preds = %bb.d, %.lr.ph.i.i1
  %.06.i.i = phi ptr [ %i.y, %.lr.ph.i.i1 ], [ %i.t, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %.06.i.i, align 8, !tbaa !1027
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef 7456) #40
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.z = icmp ult ptr %.06.i.i, %i.u
  br i1 %i.z, label %.lr.ph.i.i1, label %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i, !llvm.loop !54

_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i: ; preds = %.lr.ph.i.i1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1154
  br label %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i: ; preds = %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i, %bb.d
  %i.aa = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i ], [ %i.s, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1157
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #40
  br label %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EED2Ev.exit

_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EED2Ev.exit: ; preds = %_ZNSt5dequeIN7rocksdb11VersionEditESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, %_ZNSt11_Deque_baseIN7rocksdb11VersionEditESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl11CloseHelperEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %3 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.447", align 8   ; 6 uses
  %6 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.57", align 8 ; 5 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 27 uses
  %9 = alloca %"struct.rocksdb::DBImpl::UnpublishedWAL", align 8 ; 7 uses
  %10 = alloca %"struct.rocksdb::DBImpl::FlushRequest", align 8 ; 9 uses
  %11 = alloca %"struct.rocksdb::JobContext", align 8 ; 20 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %21 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %22 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 13 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6892
  store atomic i8 1, ptr %i.b seq_cst, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2144
  tail call void @_ZN7rocksdb12ErrorHandler30CancelErrorRecoveryForShutDownEv(ptr noundef nonnull align 8 dereferenceable(288) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2299
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2297 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3112 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit.thread, %bb.a
  %i.h = load ptr, ptr %i.e, align 16, !tbaa !741
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.h)
  %i.i = load i8, ptr %i.f, align 1, !tbaa !826, !range !638, !noundef !639
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit.thread, label %_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit

_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit: ; preds = %bb.b
  %i.k = load i8, ptr %i.d, align 1, !tbaa !2462, !range !638, !noundef !639
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit.thread

_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit.thread: ; preds = %bb.b, %_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit
  tail call void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.g)
  br label %bb.b, !llvm.loop !2444

bb.c:                                             ; preds = %_ZN7rocksdb12ErrorHandler16ReadyForShutdownEv.exit
  tail call void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43, !noalias !2463
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !737, !noalias !2463 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNK7rocksdb12ErrorHandler16GetRecoveryErrorEv.exit.thread, label %_ZNK7rocksdb12ErrorHandler16GetRecoveryErrorEv.exit

_ZNK7rocksdb12ErrorHandler16GetRecoveryErrorEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43, !noalias !2463
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZNK7rocksdb12ErrorHandler16GetRecoveryErrorEv.exit: ; preds = %bb.c
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.57") align 8 %7, ptr noundef nonnull %i.n), !noalias !2463
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !737, !noalias !2463 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43, !noalias !2463
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNK7rocksdb12ErrorHandler16GetRecoveryErrorEv.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #40
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNK7rocksdb12ErrorHandler16GetRecoveryErrorEv.exit.thread, %_ZNK7rocksdb12ErrorHandler16GetRecoveryErrorEv.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @_ZN7rocksdb6DBImpl23CancelAllBackgroundWorkEb(ptr noundef nonnull align 64 dereferenceable(7336) %1, i1 noundef zeroext false)
  %i.o = call noundef zeroext i1 @_ZN7rocksdb6DBImpl26HasPendingManualCompactionEv(ptr noundef nonnull align 64 dereferenceable(7336) %1)
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.p = load ptr, ptr %1, align 64, !tbaa !243
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 808
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 64 dereferenceable(7336) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN7rocksdb6StatusD2Ev.exit
  call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !624  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !243
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 384
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !624  ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !243
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 384
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull %1, i32 noundef 1) ; 0 uses
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !624 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull %1, i32 noundef 2) ; 0 uses
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !624 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !243
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull %i.aj, i32 noundef 0) ; 0 uses
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !624 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !243
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 384
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull %i.aj, i32 noundef 1) ; 0 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !624 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !243
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull %i.aj, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 13 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !623, !alias.scope !2464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 6, i1 false), !alias.scope !2464
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 5872
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 5876
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5888
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 5896 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 5900
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 5904
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 5905 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 6012 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %i.bh = load i32, ptr %i.az, align 16, !tbaa !830
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !831
  %.not55 = icmp eq i32 %i.bi, 0
  br i1 %.not55, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bj = load i32, ptr %i.bb, align 64, !tbaa !832
  %.not56 = icmp eq i32 %i.bj, 0
  br i1 %.not56, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !1158
  %.not57 = icmp eq i32 %i.bk, 0
  br i1 %.not57, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %i.bd, align 4, !tbaa !833
  %.not58 = icmp eq i32 %i.bl, 0
  br i1 %.not58, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.be, align 16, !tbaa !1098
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.bf, align 1, !tbaa !2465
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.bg, align 4, !tbaa !693
  %.not59 = icmp eq i32 %i.bq, 0
  br i1 %.not59, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.br = load i8, ptr %i.f, align 1, !tbaa !826, !range !638, !noundef !639
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.critedge, label %_ZN7rocksdb6DBImpl14UnpublishedWALC2EOS1_.exit

.critedge:                                        ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.n
  call void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.g), !llvm.loop !2449
  br label %bb.f

_ZN7rocksdb6DBImpl14UnpublishedWALC2EOS1_.exit:   ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 5912 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !2466
  store i64 %i.bv, ptr %9, align 8, !tbaa !2466
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 5920
  %i.bx = load ptr, ptr %i.bw, align 32, !tbaa !772 ; 4 uses
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !772
  store i8 0, ptr %i.bf, align 1, !tbaa !2465
  %.not249 = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  br i1 %.not249, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7rocksdb6DBImpl14UnpublishedWALC2EOS1_.exit
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb6DBImpl14UnpublishedWAL5ResetEv.exit unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb6DBImpl14UnpublishedWAL5ResetEv.exit:  ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN7rocksdb3log6WriterD1Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656) %i.bx) #43
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 656) #40
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %bb.p unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN7rocksdb6DBImpl14UnpublishedWAL5ResetEv.exit, %_ZN7rocksdb6DBImpl14UnpublishedWALC2EOS1_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !1159, !range !638, !noundef !639
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.q, label %_ZNK7rocksdb6DBImpl23EraseThreadStatusDbInfoEv.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7rocksdb16ThreadStatusUtil17EraseDatabaseInfoEPKNS_2DBE(ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %_ZNK7rocksdb6DBImpl23EraseThreadStatusDbInfoEv.exit unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK7rocksdb6DBImpl23EraseThreadStatusDbInfoEv.exit: ; preds = %bb.p, %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 5096
  invoke void @_ZN7rocksdb14FlushScheduler5ClearEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %bb.r unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZNK7rocksdb6DBImpl23EraseThreadStatusDbInfoEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 5104
  invoke void @_ZN7rocksdb20TrimHistoryScheduler5ClearEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cc)
          to label %.preheader261 unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader261:                                    ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 5480 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 5448 ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !1160
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !1160
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %.preheader, label %.lr.ph270

.lr.ph270:                                        ; preds = %.preheader261
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 56
  br label %bb.s

.preheader:                                       ; preds = %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit, %.preheader261
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 5560
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 5528
  br label %bb.x

bb.s:                                             ; preds = %.lr.ph270, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  invoke void @_ZN7rocksdb6DBImpl22PopFirstFromFlushQueueEv(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::DBImpl::FlushRequest") align 8 %10, ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %bb.t unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !1162 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v
  %.pre = load ptr, ptr %i.cj, align 8, !tbaa !1162 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.cq = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !733 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #40
  %.not.i.i.i.i.i105 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i105, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.t, %._crit_edge
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !1163
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !1164
  %i.ct = shl i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 0, i64 %i.ct, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  %i.cu = load ptr, ptr %i.ci, align 8, !tbaa !1163 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cl
  br i1 %i.cv, label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.cw = load i64, ptr %i.ck, align 8, !tbaa !1164
  %i.cx = shl i64 %i.cw, 3
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #40
  br label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit

_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit:        ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !1160
  %i.cz = load ptr, ptr %i.ce, align 8, !tbaa !1160
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %.preheader, label %bb.s, !llvm.loop !2450

.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.y, %bb.s, %bb.ac, %bb.q, %bb.o, %bb.ag, %bb.r, %_ZNK7rocksdb6DBImpl23EraseThreadStatusDbInfoEv.exit, %_ZN7rocksdb6DBImpl14UnpublishedWAL5ResetEv.exit
  %lpad.loopexit.split-lp392 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.t, %bb.v
  %.sroa.0236.0269 = phi ptr [ %i.de, %bb.v ], [ %i.co, %bb.t ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0236.0269, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2468
  %i.dd = invoke noundef zeroext i1 @_ZN7rocksdb16ColumnFamilyData17UnrefAndTryDeleteEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.dc)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %.lr.ph
  %i.de = load ptr, ptr %.sroa.0236.0269, align 8, !tbaa !733 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb6DBImpl12FlushRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.preheader, %bb.z
  %i.dh = load ptr, ptr %i.cm, align 8, !tbaa !2469
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !2469
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = invoke noundef ptr @_ZN7rocksdb6DBImpl27PopFirstFromCompactionQueueEv(ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %bb.z unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.dl = invoke noundef zeroext i1 @_ZN7rocksdb16ColumnFamilyData17UnrefAndTryDeleteEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.dk)
          to label %bb.x unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2451 ; 0 uses

bb.aa:                                            ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 2112 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 64, !tbaa !890
  %.not60 = icmp eq ptr %i.dn, null
  br i1 %.not60, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3192
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !664
  %.not61 = icmp eq ptr %i.dp, null
  br i1 %.not61, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit107 unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit107:  ; preds = %bb.ac
  %i.dq = load ptr, ptr %i.dm, align 64, !tbaa !890 ; 3 uses
  %.not62 = icmp eq ptr %i.dq, null
  br i1 %.not62, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit107
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !243
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.dq) #43
  store ptr null, ptr %i.dm, align 64, !tbaa !890
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit107
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !664 ; 3 uses
  %.not63 = icmp eq ptr %i.dv, null
  br i1 %.not63, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !243
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(32) %i.dv) #43
  store ptr null, ptr %i.du, align 8, !tbaa !664
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
end_hunk_0
