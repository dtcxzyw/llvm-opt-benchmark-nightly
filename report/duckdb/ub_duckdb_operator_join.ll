Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_join?download=true
inline.NumInlined: 13951
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN6duckdb22IEJoinLocalSourceState24ExecuteMaterializeL2TaskERNS_16ExecutionContextERNS_14InterruptStateE:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22IEJoinLocalSourceState11ExecuteTaskERNS_16ExecutionContextERNS_9DataChunkERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16IEJoinSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1236
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1256
  switch i8 %i.c, label %bb.o [
    i8 10, label %bb.k
    i8 9, label %bb.j
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb22IEJoinLocalSourceState17ExecuteSinkL1TaskERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1255, !nonnull !135, !align !240
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = load ptr, ptr %1, align 8, !tbaa !682, !nonnull !135, !align !240
  tail call void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable8FinalizeERNS_13ClientContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(512) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1255, !nonnull !135, !align !240
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.l = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  tail call void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable20MaterializeSortedRunERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1255, !nonnull !135, !align !240 ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !682, !nonnull !135, !align !240
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 280 ; 2 uses
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  tail call void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable12GetSortedRunERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(512) %i.o)
  %i.r = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  tail call void @_ZN6duckdb11IEJoinUnion13ExtractColumnIllEEvRNS_17PhysicalRangeJoin17GlobalSortedTableEmRNS_6vectorIT_Lb0ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb22IEJoinLocalSourceState17ExecuteSinkL2TaskERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1255, !nonnull !135, !align !240
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  %i.w = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = load ptr, ptr %1, align 8, !tbaa !682, !nonnull !135, !align !240
  tail call void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable8FinalizeERNS_13ClientContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(512) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1255, !nonnull !135, !align !240
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  %i.ab = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  tail call void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable20MaterializeSortedRunERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1255, !nonnull !135, !align !240 ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !682, !nonnull !135, !align !240
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 288 ; 2 uses
  %i.ag = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable12GetSortedRunERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(512) %i.ae)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 320
  tail call void @_ZN6duckdb11IEJoinUnion13ExtractColumnImlEEvRNS_17PhysicalRangeJoin17GlobalSortedTableEmRNS_6vectorIT_Lb0ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb22IEJoinLocalSourceState18ResolveComplexJoinERNS_16ExecutionContextERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1263
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6duckdb22IEJoinLocalSourceState15ExecuteLeftTaskERNS_16ExecutionContextERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1268
  %.not21 = icmp eq ptr %i.am, null
  br i1 %.not21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6duckdb22IEJoinLocalSourceState16ExecuteRightTaskERNS_16ExecutionContextERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22IEJoinLocalSourceState18ResolveComplexJoinERNS_16ExecutionContextERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 7 uses
  %i.k = alloca i64, align 8                      ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.l = alloca i64, align 8                      ; 7 uses
  %i.m = alloca i64, align 8                      ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %i.o = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1255, !nonnull !135, !align !240
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1196, !nonnull !135, !align !240 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 144 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef 0)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef 0)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !318 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !247
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !319
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 24                ; 2 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef 1)
  %i.ao = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_11IEJoinUnionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, %bb.a
  %i.bv = call noundef ptr @_ZNK6duckdb10unique_ptrINS_11IEJoinUnionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  %i.bw = call noundef i64 @_ZN6duckdb11IEJoinUnion17JoinComplexBlocksERNS_6vectorImLb0ESaImEEES4_(ptr noundef nonnull align 8 dereferenceable(200) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar) ; 7 uses
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bx = load ptr, ptr %i.ap, align 8, !tbaa !1258 ; 3 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !1258
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_11IEJoinUnionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit.thread, label %_ZNKSt14default_deleteIN6duckdb11IEJoinUnionEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb11IEJoinUnionEEclEPS1_.exit.i.i.i: ; preds = %bb.c
  call void @_ZN6duckdb11IEJoinUnionD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.bx) #30
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #29
  br label %_ZN6duckdb10unique_ptrINS_11IEJoinUnionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.by = call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30
  store i8 1, ptr %i.q, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.by, ptr noundef nonnull align 1 dereferenceable(1) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1161
  store i8 1, ptr %i.bz, align 1, !tbaa !513
  %i.ca = call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  store i8 1, ptr %i.p, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.ca, ptr noundef nonnull align 1 dereferenceable(1) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1161
  store i8 1, ptr %i.cb, align 1, !tbaa !513
  %i.cc = call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
  %i.cd = load i64, ptr %i.aw, align 8, !tbaa !1261
  %i.ce = call noundef nonnull align 8 dereferenceable(808) ptr @_ZNK6duckdb10unique_ptrINS_18SortedRunScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  call void @_ZN6duckdb17PhysicalRangeJoin18SliceSortedPayloadERNS_9DataChunkERNS0_17GlobalSortedTableERNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEERNS_19TupleDataChunkStateEmRKNS_6vectorImLb0ESaImEEERNS_18SortedRunScanStateE(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(1192) %i.cc, ptr noundef nonnull align 8 dereferenceable(488) %i.av, i64 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(808) %i.ce)
  %i.cf = call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %i.cg = load i64, ptr %i.ba, align 8, !tbaa !1266
  %i.ch = call noundef nonnull align 8 dereferenceable(808) ptr @_ZNK6duckdb10unique_ptrINS_18SortedRunScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  call void @_ZN6duckdb17PhysicalRangeJoin18SliceSortedPayloadERNS_9DataChunkERNS0_17GlobalSortedTableERNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEERNS_19TupleDataChunkStateEmRKNS_6vectorImLb0ESaImEEERNS_18SortedRunScanStateE(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(1192) %i.cf, ptr noundef nonnull align 8 dereferenceable(488) %i.az, i64 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(808) %i.ch)
  %i.ci = call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() ; 3 uses
  %i.cj = load ptr, ptr %i.bc, align 8, !tbaa !233
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 24                ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 2
  br i1 %i.cp, label %8, label %._crit_edge.thread

8:                                                ; preds = %bb.d
  %9 = add nsw i64 %i.co, -2                      ; 3 uses
  store ptr %i.au, ptr %i.be, align 8, !tbaa !1269
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !1269
  %.not196 = icmp eq i64 %9, 0
  br i1 %.not196, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %8
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !164 ; 2 uses
  %i.cr = load ptr, ptr %i.bi, align 8, !tbaa !165 ; 4 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.n, align 8, !tbaa !174
  store i64 %i.cv, ptr %i.o, align 8, !tbaa !174
  %.not.i.i.i88.peel.not = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i.i88.peel.not, label %.noexc.i, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit.peel, !prof !173

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit.peel: ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_ZN6duckdb18ExpressionExecutor17ExecuteExpressionEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(65) %i.bd, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(104) %i.cr)
  %i.cw = load ptr, ptr %i.bl, align 8, !tbaa !164 ; 2 uses
  %i.cx = load ptr, ptr %i.bk, align 8, !tbaa !165 ; 4 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.l, align 8, !tbaa !174
  store i64 %i.db, ptr %i.m, align 8, !tbaa !174
  %.not.i.i.i89.peel.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i.i89.peel.not, label %.noexc.i139, label %bb.e, !prof !173

bb.e:                                             ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_ZN6duckdb18ExpressionExecutor17ExecuteExpressionEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(65) %i.bf, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(104) %i.cx)
  %.pre208 = load ptr, ptr %i.x, align 8, !tbaa !232 ; 2 uses
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !233
  %i.dc = ptrtoint ptr %.pre to i64
  %i.dd = ptrtoint ptr %.pre208 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.j, align 8, !tbaa !174
  store i64 %i.df, ptr %i.k, align 8, !tbaa !174
  %.not.i.i.i97.peel = icmp ugt i64 %i.df, 2
  br i1 %.not.i.i.i97.peel, label %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit.peel, label %.noexc.i143, !prof !175

_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit.peel: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre208, i64 64
  %i.dh = call noundef i64 @_ZN6duckdb17PhysicalRangeJoin14SelectJoinTailERKNS_14ExpressionTypeERNS_6VectorES5_PKNS_15SelectionVectorEmPS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(104) %i.cr, ptr noundef nonnull align 8 dereferenceable(104) %i.cx, ptr noundef %i.ci, i64 noundef %i.bw, ptr noundef nonnull %i.bh) ; 2 uses
  %exitcond.peel.not = icmp eq i64 %9, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit.peel
  %.081.lcssa = phi i64 [ %i.dh, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit.peel ], [ %i.fl, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit ] ; 4 uses
  %i.di = icmp ult i64 %.081.lcssa, %i.bw
  br i1 %i.di, label %bb.q, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit.peel, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit
  %.080185 = phi i64 [ %i.fm, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit ], [ 1, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit.peel ] ; 10 uses
  %.081184 = phi i64 [ %i.fl, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit ], [ %i.dh, %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit.peel ] ; 4 uses
  %i.dj = load ptr, ptr %i.bj, align 8, !tbaa !164
  %i.dk = load ptr, ptr %i.bi, align 8, !tbaa !165 ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.080185, ptr %i.n, align 8, !tbaa !174
  store i64 %i.do, ptr %i.o, align 8, !tbaa !174
  %.not.i.i.i88 = icmp ult i64 %.080185, %i.do
  br i1 %.not.i.i.i88, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit, label %.noexc.i, !prof !175

.noexc.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.dp = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.dq, ptr %7, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 55, ptr %i.e, align 8, !tbaa !174
  %i.dr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.dr, ptr %7, align 8, !tbaa !179
  %i.ds = load i64, ptr %i.e, align 8, !tbaa !174 ; 3 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dr, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !212
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds
  store i8 0, ptr %i.du, align 1, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.f ], [ true, %.noexc ] ; 2 uses
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dx = load ptr, ptr %7, align 8, !tbaa !179   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dq
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.dx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95
  %.sink = phi ptr [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i113 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i98 ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90 ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i129 ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95 ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i103 ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102 ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118 ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117 ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134 ], [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133 ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i113 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i98 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i129 ], [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95 ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94 ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i103 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102 ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118 ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117 ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134 ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117 ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118 ], [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95 ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133 ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i103 ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dz = getelementptr inbounds nuw [104 x i8], ptr %i.dk, i64 %.080185 ; 3 uses
  call void @_ZN6duckdb18ExpressionExecutor17ExecuteExpressionEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(65) %i.bd, i64 noundef %.080185, ptr noundef nonnull align 8 dereferenceable(104) %i.dz)
  %i.ea = load ptr, ptr %i.bl, align 8, !tbaa !164
  %i.eb = load ptr, ptr %i.bk, align 8, !tbaa !165 ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = sdiv exact i64 %i.ee, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.080185, ptr %i.l, align 8, !tbaa !174
  store i64 %i.ef, ptr %i.m, align 8, !tbaa !174
  %.not.i.i.i89 = icmp ult i64 %.080185, %i.ef
  br i1 %.not.i.i.i89, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit96, label %.noexc.i139, !prof !175

.noexc.i139:                                      ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit.peel, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.eh, ptr %6, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 55, ptr %i.d, align 8, !tbaa !174
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc140 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90 ; 3 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ei, ptr %6, align 8, !tbaa !179
  %i.ej = load i64, ptr %i.d, align 8, !tbaa !174 ; 3 uses
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ei, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !212
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  store i8 0, ptr %i.el, align 1, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc140
  invoke void @__cxa_throw(ptr nonnull %i.eg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90: ; preds = %.noexc.i139
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume.sink.split

bb.j:                                             ; preds = %bb.i, %.noexc140
  %.0.i.i.i93 = phi i1 [ false, %bb.i ], [ true, %.noexc140 ] ; 2 uses
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eo = load ptr, ptr %6, align 8, !tbaa !179   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.eh
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.eo) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i.i.i93, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i.i.i93, label %common.resume.sink.split, label %common.resume

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit96: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.eq = getelementptr inbounds nuw [104 x i8], ptr %i.eb, i64 %.080185 ; 3 uses
  call void @_ZN6duckdb18ExpressionExecutor17ExecuteExpressionEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(65) %i.bf, i64 noundef %.080185, ptr noundef nonnull align 8 dereferenceable(104) %i.eq)
  %i.er = icmp ult i64 %.081184, %i.bw
  br i1 %i.er, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit96
  call void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %.081184)
  call void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %.081184)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit96
  %i.es = add nuw i64 %.080185, 2                 ; 3 uses
  %i.et = load ptr, ptr %i.bc, align 8, !tbaa !233
  %i.eu = load ptr, ptr %i.x, align 8, !tbaa !232 ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.es, ptr %i.j, align 8, !tbaa !174
  store i64 %i.ey, ptr %i.k, align 8, !tbaa !174
  %.not.i.i.i97 = icmp ult i64 %i.es, %i.ey
  br i1 %.not.i.i.i97, label %_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit, label %.noexc.i143, !prof !175

.noexc.i143:                                      ; preds = %bb.e, %bb.m
  %i.ez = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fa, ptr %5, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 55, ptr %i.c, align 8, !tbaa !174
  %i.fb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc144 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i98 ; 3 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.fb, ptr %5, align 8, !tbaa !179
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !174 ; 3 uses
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fb, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !212
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  store i8 0, ptr %i.fe, align 1, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc144
  invoke void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.p unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i98: ; preds = %.noexc.i143
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume.sink.split

bb.o:                                             ; preds = %bb.n, %.noexc144
  %.0.i.i.i101 = phi i1 [ false, %bb.n ], [ true, %.noexc144 ] ; 2 uses
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fh = load ptr, ptr %5, align 8, !tbaa !179   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.fa
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i102: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.fh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0.i.i.i101, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i103: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0.i.i.i101, label %common.resume.sink.split, label %common.resume

bb.p:                                             ; preds = %bb.n
  unreachable

_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.es
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = call noundef i64 @_ZN6duckdb17PhysicalRangeJoin14SelectJoinTailERKNS_14ExpressionTypeERNS_6VectorES5_PKNS_15SelectionVectorEmPS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull align 8 dereferenceable(104) %i.dz, ptr noundef nonnull align 8 dereferenceable(104) %i.eq, ptr noundef nonnull %i.bh, i64 noundef %.081184, ptr noundef nonnull %i.bh) ; 2 uses
  %i.fm = add nuw i64 %.080185, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %9
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2176

bb.q:                                             ; preds = %._crit_edge
  call void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %.081.lcssa)
  call void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %.081.lcssa)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %8, %._crit_edge, %bb.q, %bb.d
  %.185 = phi i64 [ %i.bw, %bb.d ], [ %.081.lcssa, %bb.q ], [ %i.bw, %._crit_edge ], [ %i.bw, %8 ] ; 14 uses
  %.1 = phi ptr [ %i.ci, %bb.d ], [ %i.bh, %bb.q ], [ %i.bh, %._crit_edge ], [ %i.ci, %8 ] ; 2 uses
  call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.y)
  %i.fn = load ptr, ptr %i.bm, align 8, !tbaa !164
  %i.fo = load ptr, ptr %i.y, align 8, !tbaa !165 ; 2 uses
  %.not197 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not197, label %._crit_edge190, label %.lr.ph189

._crit_edge190:                                   ; preds = %bb.x, %._crit_edge.thread
  store i64 %.185, ptr %i.bp, align 8, !tbaa !163
  call void @_ZNK6duckdb17PhysicalRangeJoin13ProjectResultERNS_9DataChunkES2_(ptr noundef nonnull align 8 dereferenceable(248) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.fp = load ptr, ptr %i.bq, align 8, !tbaa !137 ; 2 uses
  %.not168 = icmp ne ptr %i.fp, null
  %i.fq = icmp ne i64 %.185, 0                    ; 2 uses
  %or.cond = and i1 %.not168, %i.fq
  br i1 %or.cond, label %.lr.ph192, label %.loopexit

.lr.ph192:                                        ; preds = %._crit_edge190
  %i.fr = load i64, ptr %i.br, align 8, !tbaa !1262
  %i.fs = load ptr, ptr %.1, align 8, !tbaa !147  ; 6 uses
  %.not.i = icmp eq ptr %i.fs, null
  %i.ft = load ptr, ptr %i.aq, align 8, !tbaa !265 ; 10 uses
  %i.fu = getelementptr i8, ptr %i.fp, i64 %i.fr  ; 10 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph192
  %xtraiter = and i64 %.185, 3                    ; 3 uses
  %i.fv = icmp ult i64 %.185, 4
  br i1 %i.fv, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %.185, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph192
  %xtraiter247 = and i64 %.185, 3                 ; 3 uses
  %i.fw = icmp ult i64 %.185, 4
  br i1 %i.fw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter251 = and i64 %.185, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.078191.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.gm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 5 uses
  %niter252 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter252.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.078191.us
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !174
  %i.fz = getelementptr i8, ptr %i.fu, i64 %i.fy
  store i8 1, ptr %i.fz, align 1, !tbaa !138
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.078191.us
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !174
  %i.gd = getelementptr i8, ptr %i.fu, i64 %i.gc
  store i8 1, ptr %i.gd, align 1, !tbaa !138
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.078191.us
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !174
  %i.gh = getelementptr i8, ptr %i.fu, i64 %i.gg
  store i8 1, ptr %i.gh, align 1, !tbaa !138
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.078191.us
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !174
  %i.gl = getelementptr i8, ptr %i.fu, i64 %i.gk
  store i8 1, ptr %i.gl, align 1, !tbaa !138
  %i.gm = add nuw i64 %.078191.us, 4              ; 2 uses
  %niter252.next.3 = add nuw i64 %niter252, 4     ; 2 uses
  %niter252.ncmp.3 = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !2177

.lr.ph189:                                        ; preds = %._crit_edge.thread, %bb.x
  %i.gn = phi ptr [ %i.ic, %bb.x ], [ %i.fo, %._crit_edge.thread ] ; 2 uses
  %.079187 = phi i64 [ %i.ia, %bb.x ], [ 0, %._crit_edge.thread ] ; 8 uses
  %i.go = icmp ult i64 %.079187, %i.am
  br i1 %i.go, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit111, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit127

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit111: ; preds = %.lr.ph189
  %i.gp = load ptr, ptr %i.bo, align 8, !tbaa !164
  %i.gq = load ptr, ptr %i.au, align 8, !tbaa !165 ; 2 uses
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = sdiv exact i64 %i.gt, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.079187, ptr %i.h, align 8, !tbaa !174
  store i64 %i.gu, ptr %i.i, align 8, !tbaa !174
  %.not.i.i.i112 = icmp ult i64 %.079187, %i.gu
  br i1 %.not.i.i.i112, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit119, label %.noexc.i151, !prof !175

.noexc.i151:                                      ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit111
  %i.gv = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.gw, ptr %4, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 55, ptr %i.b, align 8, !tbaa !174
  %i.gx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc152 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i113 ; 3 uses

.noexc152:                                        ; preds = %.noexc.i151
  store ptr %i.gx, ptr %4, align 8, !tbaa !179
  %i.gy = load i64, ptr %i.b, align 8, !tbaa !174 ; 3 uses
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.gx, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !212
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gy
  store i8 0, ptr %i.ha, align 1, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc152
  invoke void @__cxa_throw(ptr nonnull %i.gv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.t unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i113: ; preds = %.noexc.i151
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume.sink.split

bb.s:                                             ; preds = %bb.r, %.noexc152
  %.0.i.i.i116 = phi i1 [ false, %bb.r ], [ true, %.noexc152 ] ; 2 uses
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hd = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gw
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.hd) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i116, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0.i.i.i116, label %common.resume.sink.split, label %common.resume

bb.t:                                             ; preds = %bb.r
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit119: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit111
  %i.hf = getelementptr inbounds nuw [104 x i8], ptr %i.gn, i64 %.079187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.hg = getelementptr inbounds nuw [104 x i8], ptr %i.gq, i64 %.079187
  call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.hf, ptr noundef nonnull align 8 dereferenceable(104) %i.hg)
  br label %bb.x

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit127: ; preds = %.lr.ph189
  %i.hh = sub nuw i64 %.079187, %i.am             ; 3 uses
  %i.hi = load ptr, ptr %i.bn, align 8, !tbaa !164
  %i.hj = load ptr, ptr %i.ay, align 8, !tbaa !165 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = sdiv exact i64 %i.hm, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.hh, ptr %i.f, align 8, !tbaa !174
  store i64 %i.hn, ptr %i.g, align 8, !tbaa !174
  %.not.i.i.i128 = icmp ult i64 %i.hh, %i.hn
  br i1 %.not.i.i.i128, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit135, label %.noexc.i159, !prof !175

.noexc.i159:                                      ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit127
  %i.ho = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.hp, ptr %3, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !174
  %i.hq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc160 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i129 ; 3 uses

.noexc160:                                        ; preds = %.noexc.i159
  store ptr %i.hq, ptr %3, align 8, !tbaa !179
  %i.hr = load i64, ptr %i.a, align 8, !tbaa !174 ; 3 uses
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.hq, ptr noundef nonnull align 1 dereferenceable(55) @.str.47, i64 55, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !212
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc160
  invoke void @__cxa_throw(ptr nonnull %i.ho, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i129: ; preds = %.noexc.i159
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %.noexc160
  %.0.i.i.i132 = phi i1 [ false, %bb.u ], [ true, %.noexc160 ] ; 2 uses
  %i.hv = landingpad { ptr, i32 }
end_hunk_0
