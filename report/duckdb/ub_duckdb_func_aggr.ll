inline.NumInlined: 2160
inline.NumDeleted: 1234
begin_hunk_0_@_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJRKS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_:bb.a
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !211 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = icmp eq ptr %.pre10, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINS_12PhysicalTypeEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINS_12PhysicalTypeEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !468  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !470
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !360
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !211  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !211
  %i.o = load i64, ptr %i.i, align 8, !tbaa !206
  store i64 %i.o, ptr %i.g, align 8, !tbaa !206
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !361
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !361
  store ptr %i.i, ptr %i.f, align 8, !tbaa !211
  store i64 0, ptr %i.q, align 8, !tbaa !361
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !468
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !468
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !211 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !487
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !206
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !487
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_120SortedAggregateState6ResizeERKNS0_23SortedAggregateBindDataEm(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(584) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %4 = alloca %"struct.duckdb::LinkedList", align 8 ; 4 uses
  store i64 %2, ptr %0, align 8, !tbaa !299
  %i.a = icmp ult i64 %2, 17
  br i1 %i.a, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.val5 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !318
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !318  ; 2 uses
  %i.h = icmp ne ptr %i.e, %i.g
  %i.i = icmp eq ptr %.val, %.val5
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %.thread, label %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit

_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.j = ptrtoint ptr %.val5 to i64
  %i.k = ptrtoint ptr %.val to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 24
  call void @_ZNSt6vectorIN6duckdb10LinkedListESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.g, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pr.pre = load i64, ptr %0, align 8, !tbaa !299 ; 2 uses
  %i.n = icmp ugt i64 %.pr.pre, 16
  br i1 %i.n, label %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit.thread, label %.thread

_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit.thread: ; preds = %bb.a, %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit
  %.pr611 = phi i64 [ %2, %bb.a ], [ %.pr.pre, %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %5 = load ptr, ptr %i.o, align 8, !tbaa !301
  %6 = icmp ne ptr %5, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.p = load ptr, ptr %7, align 8
  %8 = icmp ne ptr %i.p, null
  %or.cond = select i1 %6, i1 true, i1 %8
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit.thread
  call fastcc void @_ZN6duckdb12_GLOBAL__N_120SortedAggregateState16FlushLinkedListsERKNS0_23SortedAggregateBindDataE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(584) %1)
  %.pr6.pre = load i64, ptr %0, align 8, !tbaa !299
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit.thread
  %.pr6 = phi i64 [ %.pr6.pre, %bb.c ], [ %.pr611, %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit.thread ]
  %9 = icmp ugt i64 %.pr6, 2048
  %i.q = load ptr, ptr %7, align 8
  %.not.a = icmp eq ptr %i.q, null
  %or.cond21 = select i1 %9, i1 %.not.a, i1 false
  br i1 %or.cond21, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !333, !nonnull !105, !align !306
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.u = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #22, !noalias !488 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i.i unwind label %bb.h, !noalias !488

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %bb.e
  invoke void @_ZN6duckdb20ColumnDataCollectionC1ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_23ColumnDataAllocatorTypeENS_28ColumnDataCollectionLifetimeE(ptr noundef nonnull align 8 dereferenceable(112) %i.u, ptr noundef nonnull align 8 dereferenceable(512) %i.s, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 0)
          to label %bb.f unwind label %bb.i, !noalias !488

bb.f:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i.i
  %i.v = load ptr, ptr %3, align 8, !tbaa !195, !noalias !488 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196, !noalias !488 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i) #21, !noalias !488
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !209

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !195, !noalias !488
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.f
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #23, !noalias !488
  br label %_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i

bb.h:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21, !noalias !488
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  call void @_ZdlPv(ptr noundef nonnull %i.u) #23, !noalias !488
  resume { ptr, i32 } %.pn.i.i

_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ac = load ptr, ptr %7, align 8, !tbaa !300   ; 3 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !300
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.ac) #21
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #23
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  %i.ad = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22, !noalias !491 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false), !noalias !491
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !356, !noalias !491
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.ag, align 8, !tbaa !358, !noalias !491
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !noalias !491
  store float 1.000000e+00, ptr %i.ae, align 8, !tbaa !359, !noalias !491
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ai, i8 0, i64 17, i1 false), !noalias !491
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false), !noalias !491
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !316 ; 2 uses
  store ptr %i.ad, ptr %i.ak, align 8, !tbaa !316
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeCollectionsERKNS0_23SortedAggregateBindDataE.exit, label %_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit.i
  call void @_ZNKSt14default_deleteIN6duckdb21ColumnDataAppendStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.al)
  br label %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeCollectionsERKNS0_23SortedAggregateBindDataE.exit

_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeCollectionsERKNS0_23SortedAggregateBindDataE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit.i, %_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.am = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.an = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  call void @_ZN6duckdb20ColumnDataCollection16InitializeAppendERNS_21ColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(112) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an)
  %i.ao = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ap = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  %i.aq = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @_ZN6duckdb20ColumnDataCollection6AppendERNS_21ColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.aq)
  %i.ar = call noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ar)
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeLinkedListsERKNS0_23SortedAggregateBindDataE.exit, %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState21InitializeCollectionsERKNS0_23SortedAggregateBindDataE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !301    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !207

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb9DataChunk6AppendERKS0_bPNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_120SortedAggregateState12LinkedAppendERKNS_6vectorINS_20ListSegmentFunctionsELb1ESaIS3_EEERNS_14ArenaAllocatorERNS_9DataChunkERNS2_INS_10LinkedListELb1ESaISC_EEERNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::RecursiveUnifiedVectorFormat", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !218  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !362
  %i.f = load ptr, ptr %2, align 8, !tbaa !363
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %.not38 = icmp eq i64 %5, 0
  br i1 %.not38, label %.lr.ph29.split, label %.lr.ph29.split.us

.lr.ph29.split.us:                                ; preds = %.lr.ph29, %._crit_edge.us
  %.02227.us = phi i64 [ %i.r, %._crit_edge.us ], [ 0, %.lr.ph29 ] ; 4 uses
  %i.i = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.02227.us)
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_10LinkedListELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.02227.us)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit.us unwind label %.split.us

_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit.us: ; preds = %.lr.ph29.split.us
  %i.k = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.02227.us)
          to label %bb.b unwind label %.split33.us

bb.b:                                             ; preds = %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit.us
  invoke void @_ZN6duckdb6Vector24RecursiveToUnifiedFormatERS0_mRNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %.preheader.us unwind label %.split33.us

.preheader.us:                                    ; preds = %bb.b, %bb.d
  %.026.us = phi i64 [ %i.q, %bb.d ], [ 0, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.l = load ptr, ptr %4, align 8, !tbaa !250    ; 2 uses
  %.not.i.us = icmp eq ptr %i.l, null
  br i1 %.not.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.026.us
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.c, %.preheader.us
  %i.p = phi i64 [ %i.o, %bb.c ], [ %.026.us, %.preheader.us ]
  store i64 %i.p, ptr %i.a, align 8, !tbaa !216
  invoke void @_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %.split36.us

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = add nuw i64 %.026.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %5
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !494

._crit_edge.us:                                   ; preds = %bb.d
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.r = add nuw i64 %.02227.us, 1                ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !362
  %i.t = load ptr, ptr %2, align 8, !tbaa !363
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 104
  %i.y = icmp ult i64 %i.r, %i.x
  br i1 %i.y, label %.lr.ph29.split.us, label %._crit_edge30, !llvm.loop !495

.split.us:                                        ; preds = %.lr.ph29.split.us
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.split33.us:                                      ; preds = %bb.b, %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit.us
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.split36.us:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.g

._crit_edge30:                                    ; preds = %._crit_edge.us, %.preheader, %bb.a
  ret void

.lr.ph29.split:                                   ; preds = %.lr.ph29, %.preheader
  %.02227 = phi i64 [ %i.ag, %.preheader ], [ 0, %.lr.ph29 ] ; 4 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.02227) ; 0 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_10LinkedListELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.02227) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit unwind label %.split

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.us-phi31, %bb.e ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

.split:                                           ; preds = %.lr.ph29.split
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.split.us, %.split
  %.us-phi31 = phi { ptr, i32 } [ %i.ae, %.split ], [ %i.z, %.split.us ]
  call void @_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #21
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(128) %6) #21
  br label %common.resume

_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit: ; preds = %.lr.ph29.split
  %i.af = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.02227)
          to label %bb.f unwind label %.split33

bb.f:                                             ; preds = %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit
  invoke void @_ZN6duckdb6Vector24RecursiveToUnifiedFormatERS0_mRNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.af, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %.preheader unwind label %.split33
end_hunk_0
