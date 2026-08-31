Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb14ListColumnData15FetchListOffsetEm:bb.a

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #39, !inline_history !1061
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !1062 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.z, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.aa = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #37, !inline_history !1061
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #39, !inline_history !1061
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1063

_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !1050
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !1051
  %i.ae = shl i64 %i.ad, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ae, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !1050 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZN6duckdb16ColumnFetchStateD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.af) #39, !inline_history !1061
  br label %_ZN6duckdb16ColumnFetchStateD2Ev.exit

_ZN6duckdb16ColumnFetchStateD2Ev.exit:            ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret i64 %i.r

bb.k:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #37
  br label %bb.n

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZNK6duckdb11SegmentNodeINS_13ColumnSegmentEE7GetNodeEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ai, %bb.l ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN6duckdb16ColumnFetchStateD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14ListColumnData24InitializeScanWithOffsetERNS_15ColumnScanStateEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(284) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb10ColumnData24InitializeScanWithOffsetERNS_15ColumnScanStateEm(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18ValidityColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !852
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(296) %i.f, ptr noundef nonnull align 8 dereferenceable(284) %i.h, i64 noundef %2)
  %i.l = add i64 %2, -1
  %i.m = tail call noundef i64 @_ZN6duckdb14ListColumnData15FetchListOffsetEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.o = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(296) %i.o)
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !852
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(296) %i.u, ptr noundef nonnull align 8 dereferenceable(284) %i.w, i64 noundef %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %i.m, ptr %i.aa, align 8, !tbaa !1020
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb14ListColumnData4ScanENS_15TransactionDataEmRNS_15ColumnScanStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr nofree noundef readnone byval(%"struct.duckdb::TransactionData") align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(284) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(284) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef 0)
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb14ListColumnData9ScanCountERNS_15ColumnScanStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %7 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.bg unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.054 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.054, label %bb.f, label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.054, label %bb.f, label %bb.bf

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn90100 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #37
  br label %bb.bf

bb.g:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %bb.be, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 noundef zeroext 31)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %8, i64 noundef %3)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #37
  %i.h = invoke noundef i64 @_ZN6duckdb10ColumnData10ScanVectorERNS_15ColumnScanStateERNS_6VectorEmNS_14ScanVectorTypeEm(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(284) %1, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %3, i32 noundef 1, i64 noundef 0)
          to label %bb.j unwind label %bb.s       ; 12 uses

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_18ValidityColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.k unwind label %bb.s       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !852
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(296) %i.j, ptr noundef nonnull align 8 dereferenceable(284) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef 0)
          to label %bb.l unwind label %bb.s       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1757 ; 7 uses
  %i.s = load ptr, ptr %9, align 8, !tbaa !1193
  %i.t = add i64 %i.h, -1                         ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !152  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.t
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %bb.o
  %i.y = phi i64 [ %i.x, %bb.p ], [ %i.t, %bb.o ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24  ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2126 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1020 ; 8 uses
  %.not107 = icmp eq i64 %i.h, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.af = load ptr, ptr %9, align 8, !tbaa !1193
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !152 ; 4 uses
  %.not.i93 = icmp eq ptr %i.ag, null
  br i1 %.not.i93, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.h, 1
  %i.ah = icmp eq i64 %i.h, 1
  br i1 %i.ah, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader: ; preds = %.lr.ph
  %xtraiter122 = and i64 %i.h, 1
  %i.ai = icmp eq i64 %i.h, 1
  br i1 %i.ai, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader
  %unroll_iter125 = and i64 %i.h, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader.new
  %.052106.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader.new ], [ %i.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us ] ; 4 uses
  %.053105.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader.new ], [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us ] ; 3 uses
  %niter126 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader.new ], [ %niter126.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.052106.us ; 2 uses
  store i64 %.053105.us, ptr %i.aj, align 8, !tbaa !2127
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.052106.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = add i64 %.053105.us, %i.ae
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !2129
  %i.ap = add i64 %i.an, %.053105.us              ; 3 uses
  %i.aq = or disjoint i64 %.052106.us, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aq ; 2 uses
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !2127
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %i.au = add i64 %i.ap, %i.ae
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !2129
  %i.ax = add i64 %i.av, %i.ap                    ; 2 uses
  %i.ay = add nuw i64 %.052106.us, 2              ; 2 uses
  %niter126.next.1 = add nuw i64 %niter126, 2     ; 2 uses
  %niter126.ncmp.1 = icmp eq i64 %niter126.next.1, %unroll_iter125
  br i1 %niter126.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us, !llvm.loop !2130

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader
  %.052106.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.053105.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod124 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod124)
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.052106.us.epil.init ; 2 uses
  store i64 %.053105.us.epil.init, ptr %i.az, align 8, !tbaa !2127
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.052106.us.epil.init
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.bc = add i64 %.053105.us.epil.init, %i.ae
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !2129
  br label %._crit_edge

._crit_edge.loopexit120.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.epil.preheader: ; preds = %._crit_edge.loopexit120.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader
  %.052106.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader ], [ %i.cq, %._crit_edge.loopexit120.unr-lcssa ] ; 2 uses
  %.053105.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader ], [ %i.cp, %._crit_edge.loopexit120.unr-lcssa ] ; 2 uses
  %lcmp.mod121 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod121)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.052106.epil.init
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.052106.epil.init ; 2 uses
  store i64 %.053105.epil.init, ptr %i.bi, align 8, !tbaa !2127
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24
  %i.bl = add i64 %.053105.epil.init, %i.ae
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !2129
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.epil.preheader, %._crit_edge.loopexit120.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.q
  %i.bo = sub i64 %i.aa, %i.ae                    ; 4 uses
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.bo)
          to label %bb.x unwind label %bb.ag

bb.r:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #37
  br label %bb.bd

bb.s:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.t:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.u:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNK6duckdb15SelectionVector9get_indexEm.exit94:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader.new
  %.052106 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader.new ], [ %i.cq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94 ] ; 4 uses
  %.053105 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader.new ], [ %i.cp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.052106
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.052106 ; 2 uses
  store i64 %.053105, ptr %i.by, align 8, !tbaa !2127
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !24
  %i.cb = add i64 %.053105, %i.ae
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !2129
  %i.ce = add i64 %i.cc, %.053105                 ; 3 uses
  %i.cf = or disjoint i64 %.052106, 1             ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.cf ; 2 uses
  store i64 %i.ce, ptr %i.cj, align 8, !tbaa !2127
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ci
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cm = add i64 %i.ce, %i.ae
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !2129
  %i.cp = add i64 %i.cn, %i.ce                    ; 2 uses
  %i.cq = add nuw i64 %.052106, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit120.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94, !llvm.loop !2130

bb.x:                                             ; preds = %._crit_edge
  %.not75 = icmp eq i64 %i.aa, %i.ae
  br i1 %.not75, label %bb.am, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.z unwind label %bb.ah      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !438
  switch i8 %i.ct, label %bb.aa [
    i8 24, label %bb.ak
    i8 29, label %bb.ak
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !852
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 320
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !779
  %i.cx = add i64 %i.cw, %i.bo
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cz = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %bb.ab unwind label %bb.ah     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(296) %i.cz)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.de = icmp ugt i64 %i.cx, %i.dd
  br i1 %i.de, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.df = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.bg unwind label %bb.ai

bb.ag:                                            ; preds = %bb.am, %._crit_edge
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba
end_hunk_0
