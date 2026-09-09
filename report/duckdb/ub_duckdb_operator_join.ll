Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_join?download=true
inline.NumInlined: 13951
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN6duckdb17PhysicalRangeJoin17GlobalSortedTable11MaterializeERNS_8PipelineERNS_5EventE:bb.a
  %.0.i.i.i.i.i7 = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i7, 1
  br i1 %i.ai, label %bb.n, label %_ZN6duckdb10shared_ptrINS_25RangeJoinMaterializeEventELb1EED2Ev.exit, !prof !173

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30
  br label %_ZN6duckdb10shared_ptrINS_25RangeJoinMaterializeEventELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_25RangeJoinMaterializeEventELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.o:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @_ZN6duckdb10shared_ptrINS_25RangeJoinMaterializeEventELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb26PhysicalPiecewiseMergeJoin16GetOperatorStateERNS_16ExecutionContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.682") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !682, !nonnull !135, !align !240
  %i.b = tail call noalias noundef nonnull dereferenceable(1552) ptr @_Znwm(i64 noundef 1552) #28, !noalias !2325 ; 3 uses
  invoke void @_ZN6duckdb23PiecewiseMergeJoinStateC2ERNS_13ClientContextERKNS_26PhysicalPiecewiseMergeJoinE(ptr noundef nonnull align 8 dereferenceable(1552) %i.b, ptr noundef nonnull align 8 dereferenceable(512) %i.a, ptr noundef nonnull align 8 dereferenceable(320) %1)
          to label %_ZNSt10unique_ptrIN6duckdb23PiecewiseMergeJoinStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !2325

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29, !noalias !2325
  resume { ptr, i32 } %i.c

_ZNSt10unique_ptrIN6duckdb23PiecewiseMergeJoinStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !723
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb26PhysicalPiecewiseMergeJoin17ResolveSimpleJoinERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca i8, align 1                       ; 8 uses
  %i.h = alloca i64, align 8                      ; 8 uses
  %i.i = alloca i64, align 8                      ; 8 uses
  %i.j = alloca i8, align 1                       ; 8 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i64, align 8                      ; 8 uses
  %i.u = alloca i64, align 8                      ; 8 uses
  %i.v = alloca i8, align 1                       ; 8 uses
  %i.w = alloca i64, align 8                      ; 8 uses
  %i.x = alloca i64, align 8                      ; 8 uses
  %i.y = alloca i8, align 1                       ; 8 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i8, align 1                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.ac = alloca [2048 x i8], align 16            ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 10 uses
  tail call void @_ZN6duckdb23PiecewiseMergeJoinState15ResolveJoinKeysERNS_16ExecutionContextERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1552) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 10 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ai = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin16LocalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.ac, i8 0, i64 2048, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = tail call noundef nonnull align 8 dereferenceable(17) ptr @_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef 0)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !258
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN6duckdbL25MergeJoinStrictComparisonENS_14ExpressionTypeE(i8 noundef zeroext %i.an) ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !1321
  switch i8 %i.aq, label %bb.cr [
    i8 1, label %bb.b
    i8 2, label %bb.h
    i8 3, label %bb.o
    i8 4, label %bb.ad
    i8 5, label %bb.at
    i8 6, label %bb.bf
    i8 7, label %bb.bl
    i8 8, label %bb.bs
    i8 9, label %bb.ch
  ]

bb.b:                                             ; preds = %bb.a
  %i.ar = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.at = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.av = load atomic i64, ptr %i.au seq_cst, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ax = load atomic i64, ptr %i.aw seq_cst, align 8
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ba = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.bc = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load atomic i64, ptr %i.bd seq_cst, align 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bg = load atomic i64, ptr %i.bf seq_cst, align 8 ; 2 uses
  %i.bh = sub i64 %i.be, %i.bg                    ; 2 uses
  %.not2637.not.i.i = icmp eq i64 %i.be, %i.bg
  br i1 %.not2637.not.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 1161
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 584
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 584
  br label %bb.c

.critedge.loopexit.i.i:                           ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit30.i.i
  %.not26.i.i = icmp ult i64 %i.bn, %i.bh
  br i1 %.not26.i.i, label %bb.c, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2326

bb.c:                                             ; preds = %.critedge.loopexit.i.i, %.lr.ph.i.i
  %.02239.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bn, %.critedge.loopexit.i.i ]
  %.038.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %.critedge.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #30
  store i8 1, ptr %i.ab, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #30
  store i8 1, ptr %i.bi, align 1, !tbaa !513
  %i.bn = add i64 %.02239.i.i, 2048               ; 3 uses
  %i.bo = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bh)
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  %i.bq = lshr i64 %i.bp, 11                      ; 2 uses
  %i.br = and i64 %i.bp, 2047
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.1.i.i = phi i64 [ %.038.i.i, %bb.c ], [ %i.cf, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #30
  %i.bs = lshr i64 %.1.i.i, 11                    ; 2 uses
  store i64 %i.bs, ptr %i.aa, align 8, !tbaa !174
  %i.bt = load i64, ptr %i.bj, align 8, !tbaa !509
  %.not.i.i.i.i.i = icmp eq i64 %i.bs, %i.bt
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE1EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bu = and i64 %.1.i.i, 2047
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !511
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #30
  store i64 %i.bq, ptr %i.z, align 8, !tbaa !174
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !509
  %.not.i.i.i29.i.i = icmp eq i64 %i.bq, %i.by
  br i1 %.not.i.i.i29.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit30.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE1EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit30.i.i: ; preds = %bb.f, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit.i.i
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !511
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.br
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #30
  %.val.val.i.i.i.i = load i64, ptr %i.bx, align 8, !tbaa !174 ; 2 uses
  %.val2.val.i.i.i.i = load i64, ptr %i.cb, align 8, !tbaa !174 ; 2 uses
  %i.cc = icmp ult i64 %.val.val.i.i.i.i, %.val2.val.i.i.i.i ; 2 uses
  %or.cond.i.i.i = or i1 %i.ao, %i.cc
  %i.cd = icmp uge i64 %.val2.val.i.i.i.i, %.val.val.i.i.i.i
  %.0.i.i.i = select i1 %or.cond.i.i.i, i1 %i.cc, i1 %i.cd
  br i1 %.0.i.i.i, label %bb.g, label %.critedge.loopexit.i.i

bb.g:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEixERKm.exit30.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i.i
  store i8 1, ptr %i.ce, align 1, !tbaa !138
  %i.cf = add nuw nsw i64 %.1.i.i, 1              ; 2 uses
  %.not.i.i = icmp ult i64 %i.cf, %i.ay
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2327

bb.h:                                             ; preds = %bb.a
  %i.cg = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.ci = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ck = load atomic i64, ptr %i.cj seq_cst, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cm = load atomic i64, ptr %i.cl seq_cst, align 8
  %i.cn = sub i64 %i.ck, %i.cm                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.cp = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.cr = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8 ; 2 uses
  %i.cw = sub i64 %i.ct, %i.cv                    ; 4 uses
  %.not2640.not.i.i = icmp eq i64 %i.ct, %i.cv
  br i1 %.not2640.not.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1161 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 584 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 584 ; 2 uses
  br i1 %i.ao, label %.split39.us.us.i.i, label %.split39.i.i

.split39.us.us.i.i:                               ; preds = %.lr.ph.i49.i, %.critedge.split.us.us.i.i
  %.02242.us.i.i = phi i64 [ %i.dc, %.critedge.split.us.us.i.i ], [ 0, %.lr.ph.i49.i ]
  %.041.us.i.i = phi i64 [ %.1.us.us.i.i, %.critedge.split.us.us.i.i ], [ 0, %.lr.ph.i49.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #30
  store i8 1, ptr %i.y, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.cr, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #30
  store i8 1, ptr %i.cx, align 1, !tbaa !513
  %i.dc = add i64 %.02242.us.i.i, 2048            ; 3 uses
  %i.dd = call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cw)
  %i.de = add i64 %i.dd, -1                       ; 2 uses
  %i.df = lshr i64 %i.de, 11                      ; 2 uses
  %i.dg = and i64 %i.de, 2047
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.split39.us.us.i.i
  %.1.us.us.i.i = phi i64 [ %.041.us.i.i, %.split39.us.us.i.i ], [ %i.ea, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.us.us.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  %i.dh = lshr i64 %.1.us.us.i.i, 11              ; 2 uses
  store i64 %i.dh, ptr %i.x, align 8, !tbaa !174
  %i.di = load i64, ptr %i.cy, align 8, !tbaa !509
  %.not.i.i.i.us.us.i.i = icmp eq i64 %i.dh, %i.di
  br i1 %.not.i.i.i.us.us.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.us.us.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE2EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.us.us.i.i: ; preds = %bb.j, %bb.i
  %i.dj = and i64 %.1.us.us.i.i, 2047
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !511
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !521 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  store i64 %i.df, ptr %i.w, align 8, !tbaa !174
  %i.dn = load i64, ptr %i.da, align 8, !tbaa !509
  %.not.i.i.i29.us.us.i.i = icmp eq i64 %i.df, %i.dn
  br i1 %.not.i.i.i29.us.us.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.us.us.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.us.us.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE2EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.us.us.i.i: ; preds = %bb.k, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.us.us.i.i
  %i.do = load ptr, ptr %i.db, align 8, !tbaa !511
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dg
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !521 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  %i.dr = load i64, ptr %i.dm, align 8, !tbaa !174 ; 2 uses
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !174 ; 2 uses
  %i.dt = icmp ult i64 %i.dr, %i.ds
  br i1 %i.dt, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.us.us.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.us.us.i.i: ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.us.us.i.i
  %i.du = icmp eq i64 %i.dr, %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.val.val.i.i.i.us.us.i.i = load i64, ptr %i.dv, align 8
  %.val6.val.i.i.i.us.us.i.i = load i64, ptr %i.dw, align 8
  %i.dx = icmp ult i64 %.val.val.i.i.i.us.us.i.i, %.val6.val.i.i.i.us.us.i.i
  %i.dy = select i1 %i.du, i1 %i.dx, i1 false
  br i1 %i.dy, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %.critedge.split.us.us.i.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.us.us.i.i: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.us.us.i.i, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.us.us.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.us.us.i.i
  store i8 1, ptr %i.dz, align 1, !tbaa !138
  %i.ea = add nuw nsw i64 %.1.us.us.i.i, 1        ; 2 uses
  %.not.us.us.i.i = icmp ult i64 %i.ea, %i.cn
  br i1 %.not.us.us.i.i, label %bb.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2328

.critedge.split.us.us.i.i:                        ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.us.us.i.i
  %.not26.us.i.i = icmp ult i64 %i.dc, %i.cw
  br i1 %.not26.us.i.i, label %.split39.us.us.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2329

.split39.i.i:                                     ; preds = %.lr.ph.i49.i, %.critedge.split.i.i
  %.02242.i.i = phi i64 [ %i.eb, %.critedge.split.i.i ], [ 0, %.lr.ph.i49.i ]
  %.041.i.i = phi i64 [ %.1.i50.i, %.critedge.split.i.i ], [ 0, %.lr.ph.i49.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #30
  store i8 1, ptr %i.y, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.cr, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #30
  store i8 1, ptr %i.cx, align 1, !tbaa !513
  %i.eb = add i64 %.02242.i.i, 2048               ; 3 uses
  %i.ec = call noundef i64 @llvm.umin.i64(i64 %i.eb, i64 %i.cw)
  %i.ed = add i64 %i.ec, -1                       ; 2 uses
  %i.ee = lshr i64 %i.ed, 11                      ; 2 uses
  %i.ef = and i64 %i.ed, 2047
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.i.i, %.split39.i.i
  %.1.i50.i = phi i64 [ %.041.i.i, %.split39.i.i ], [ %i.fb, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  %i.eg = lshr i64 %.1.i50.i, 11                  ; 2 uses
  store i64 %i.eg, ptr %i.x, align 8, !tbaa !174
  %i.eh = load i64, ptr %i.cy, align 8, !tbaa !509
  %.not.i.i.i.i51.i = icmp eq i64 %i.eg, %i.eh
  br i1 %.not.i.i.i.i51.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE2EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ei = and i64 %.1.i50.i, 2047
  %i.ej = load ptr, ptr %i.cz, align 8, !tbaa !511
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !521 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  store i64 %i.ee, ptr %i.w, align 8, !tbaa !174
  %i.em = load i64, ptr %i.da, align 8, !tbaa !509
  %.not.i.i.i29.i52.i = icmp eq i64 %i.ee, %i.em
  br i1 %.not.i.i.i29.i52.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE2EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.i.i: ; preds = %bb.n, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit.i.i
  %i.en = load ptr, ptr %i.db, align 8, !tbaa !511
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ef
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !521 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  %i.eq = load i64, ptr %i.el, align 8, !tbaa !174 ; 3 uses
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !174 ; 3 uses
  %i.es = icmp ult i64 %i.eq, %i.er
  br i1 %i.es, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.i.i, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.i.i: ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.i.i
  %i.et = icmp eq i64 %i.eq, %i.er
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.val.val.i.i.i.i.i = load i64, ptr %i.eu, align 8 ; 2 uses
  %.val6.val.i.i.i.i.i = load i64, ptr %i.ev, align 8 ; 2 uses
  %i.ew = icmp ult i64 %.val.val.i.i.i.i.i, %.val6.val.i.i.i.i.i
  %i.ex = select i1 %i.et, i1 %i.ew, i1 false
  br i1 %i.ex, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.i.i
  %i.ey = icmp uge i64 %i.er, %i.eq
  %i.ez = icmp uge i64 %.val6.val.i.i.i.i.i, %.val.val.i.i.i.i.i
  %spec.select.i.i.i = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %spec.select.i.i.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.i.i, label %.critedge.split.i.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.i.i: ; preds = %.split.i.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE2EEES4_.exit.i.i.i, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEixERKm.exit30.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i50.i
  store i8 1, ptr %i.fa, align 1, !tbaa !138
  %i.fb = add nuw nsw i64 %.1.i50.i, 1            ; 2 uses
  %.not.i54.i = icmp ult i64 %i.fb, %i.cn
  br i1 %.not.i54.i, label %bb.l, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2328

.critedge.split.i.i:                              ; preds = %.split.i.i
  %.not26.i53.i = icmp ult i64 %i.eb, %i.cw
  br i1 %.not26.i53.i, label %.split39.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2329

bb.o:                                             ; preds = %bb.a
  %i.fc = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.fe = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fd) ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fg = load atomic i64, ptr %i.ff seq_cst, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fi = load atomic i64, ptr %i.fh seq_cst, align 8
  %i.fj = sub i64 %i.fg, %i.fi                    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.fl = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.fn = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm) ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fp = load atomic i64, ptr %i.fo seq_cst, align 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fr = load atomic i64, ptr %i.fq seq_cst, align 8 ; 2 uses
  %i.fs = sub i64 %i.fp, %i.fr                    ; 4 uses
  %.not2644.not.i.i = icmp eq i64 %i.fp, %i.fr
  br i1 %.not2644.not.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %bb.o
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 1161 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 584 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 584 ; 2 uses
  br i1 %i.ao, label %.split43.us.us.i.i, label %.split43.i.i

.split43.us.us.i.i:                               ; preds = %.lr.ph.i55.i, %.critedge.split.us.us.i66.i
  %.02246.us.i.i = phi i64 [ %i.fy, %.critedge.split.us.us.i66.i ], [ 0, %.lr.ph.i55.i ]
  %.045.us.i.i = phi i64 [ %.1.us.us.i63.i, %.critedge.split.us.us.i66.i ], [ 0, %.lr.ph.i55.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #30
  store i8 1, ptr %i.v, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.fn, ptr noundef nonnull align 1 dereferenceable(1) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  store i8 1, ptr %i.ft, align 1, !tbaa !513
  %i.fy = add i64 %.02246.us.i.i, 2048            ; 3 uses
  %i.fz = call noundef i64 @llvm.umin.i64(i64 %i.fy, i64 %i.fs)
  %i.ga = add i64 %i.fz, -1                       ; 2 uses
  %i.gb = lshr i64 %i.ga, 11                      ; 2 uses
  %i.gc = and i64 %i.ga, 2047
  br label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.split43.us.us.i.i
  %.1.us.us.i63.i = phi i64 [ %.045.us.i.i, %.split43.us.us.i.i ], [ %i.hb, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.us.us.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #30
  %i.gd = lshr i64 %.1.us.us.i63.i, 11            ; 2 uses
  store i64 %i.gd, ptr %i.u, align 8, !tbaa !174
  %i.ge = load i64, ptr %i.fu, align 8, !tbaa !509
  %.not.i.i.i.us.us.i64.i = icmp eq i64 %i.gd, %i.ge
  br i1 %.not.i.i.i.us.us.i64.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.us.us.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE3EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.us.us.i.i: ; preds = %bb.q, %bb.p
  %i.gf = and i64 %.1.us.us.i63.i, 2047
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !511
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !523 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  store i64 %i.gb, ptr %i.t, align 8, !tbaa !174
  %i.gj = load i64, ptr %i.fw, align 8, !tbaa !509
  %.not.i.i.i29.us.us.i65.i = icmp eq i64 %i.gb, %i.gj
  br i1 %.not.i.i.i29.us.us.i65.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.us.us.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.us.us.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE3EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.us.us.i.i: ; preds = %bb.r, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.us.us.i.i
  %i.gk = load ptr, ptr %i.fx, align 8, !tbaa !511
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gc
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !523 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  %i.gn = load i64, ptr %i.gi, align 8, !tbaa !174 ; 2 uses
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !174 ; 2 uses
  %i.gp = icmp ult i64 %i.gn, %i.go
  br i1 %i.gp, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.us.us.i.i
  %i.gq = icmp eq i64 %i.gn, %i.go
  br i1 %i.gq, label %bb.t, label %.critedge.split.us.us.i66.i

bb.t:                                             ; preds = %bb.s
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !174 ; 2 uses
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !174 ; 2 uses
  %i.gv = icmp ult i64 %i.gt, %i.gu
  br i1 %i.gv, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gw = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gw, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.us.us.i.i, label %.critedge.split.us.us.i66.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.us.us.i.i: ; preds = %bb.u
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %.val.val.i.i.i.i.us.us.i.i = load i64, ptr %i.gx, align 8, !tbaa !174
  %.val6.val.i.i.i.i.us.us.i.i = load i64, ptr %i.gy, align 8, !tbaa !174
  %i.gz = icmp ult i64 %.val.val.i.i.i.i.us.us.i.i, %.val6.val.i.i.i.i.us.us.i.i
  br i1 %i.gz, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %.critedge.split.us.us.i66.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.us.us.i.i: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.us.us.i.i, %bb.t, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.us.us.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.us.us.i63.i
  store i8 1, ptr %i.ha, align 1, !tbaa !138
  %i.hb = add nuw nsw i64 %.1.us.us.i63.i, 1      ; 2 uses
  %.not.us.us.i68.i = icmp ult i64 %i.hb, %i.fj
  br i1 %.not.us.us.i68.i, label %bb.p, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2330

.critedge.split.us.us.i66.i:                      ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.us.us.i.i, %bb.u, %bb.s
  %.not26.us.i67.i = icmp ult i64 %i.fy, %i.fs
  br i1 %.not26.us.i67.i, label %.split43.us.us.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2331

.split43.i.i:                                     ; preds = %.lr.ph.i55.i, %.critedge.split.i61.i
  %.02246.i.i = phi i64 [ %i.hc, %.critedge.split.i61.i ], [ 0, %.lr.ph.i55.i ]
  %.045.i.i = phi i64 [ %.1.i56.i, %.critedge.split.i61.i ], [ 0, %.lr.ph.i55.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #30
  store i8 1, ptr %i.v, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.fn, ptr noundef nonnull align 1 dereferenceable(1) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  store i8 1, ptr %i.ft, align 1, !tbaa !513
  %i.hc = add i64 %.02246.i.i, 2048               ; 3 uses
  %i.hd = call noundef i64 @llvm.umin.i64(i64 %i.hc, i64 %i.fs)
  %i.he = add i64 %i.hd, -1                       ; 2 uses
  %i.hf = lshr i64 %i.he, 11                      ; 2 uses
  %i.hg = and i64 %i.he, 2047
  br label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i, %.split43.i.i
  %.1.i56.i = phi i64 [ %.045.i.i, %.split43.i.i ], [ %i.io, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #30
  %i.hh = lshr i64 %.1.i56.i, 11                  ; 2 uses
  store i64 %i.hh, ptr %i.u, align 8, !tbaa !174
  %i.hi = load i64, ptr %i.fu, align 8, !tbaa !509
  %.not.i.i.i.i57.i = icmp eq i64 %i.hh, %i.hi
  br i1 %.not.i.i.i.i57.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE3EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.i.i: ; preds = %bb.w, %bb.v
  %i.hj = and i64 %.1.i56.i, 2047
  %i.hk = load ptr, ptr %i.fv, align 8, !tbaa !511
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !523 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  store i64 %i.hf, ptr %i.t, align 8, !tbaa !174
  %i.hn = load i64, ptr %i.fw, align 8, !tbaa !509
  %.not.i.i.i29.i58.i = icmp eq i64 %i.hf, %i.hn
  br i1 %.not.i.i.i29.i58.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE3EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.i.i: ; preds = %bb.x, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit.i.i
  %i.ho = load ptr, ptr %i.fx, align 8, !tbaa !511
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hg
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !523 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  %i.hr = load i64, ptr %i.hm, align 8, !tbaa !174 ; 3 uses
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !174 ; 3 uses
  %i.ht = icmp ult i64 %i.hr, %i.hs
  br i1 %i.ht, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.i.i
  %i.hu = icmp eq i64 %i.hr, %i.hs
  br i1 %i.hu, label %bb.z, label %.critedge.i.i

bb.z:                                             ; preds = %bb.y
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !174 ; 2 uses
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !174 ; 2 uses
  %i.hz = icmp ult i64 %i.hx, %i.hy
  br i1 %i.hz, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ia = icmp eq i64 %i.hx, %i.hy
  br i1 %i.ia, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.i.i, label %.critedge.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.i.i: ; preds = %bb.aa
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %.val.val.i.i.i.i.i.i = load i64, ptr %i.ib, align 8, !tbaa !174
  %.val6.val.i.i.i.i.i.i = load i64, ptr %i.ic, align 8, !tbaa !174
  %i.id = icmp ult i64 %.val.val.i.i.i.i.i.i, %.val6.val.i.i.i.i.i.i
  br i1 %i.id, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.i.i, %bb.aa, %bb.y
  %i.ie = icmp ult i64 %i.hs, %i.hr
  br i1 %i.ie, label %.critedge.split.i61.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !174 ; 2 uses
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !174 ; 2 uses
  %i.ij = icmp ult i64 %i.ih, %i.ii
  br i1 %i.ij, label %.critedge.split.i61.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ik = icmp eq i64 %i.ih, %i.ii
  br i1 %i.ik, label %.split.i60.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i

.split.i60.i:                                     ; preds = %bb.ac
  %i.il = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %.val.val.i.i.i8.i.i.i = load i64, ptr %i.il, align 8, !tbaa !174
  %.val6.val.i.i.i9.i.i.i = load i64, ptr %i.im, align 8, !tbaa !174
  %.not40.i.i = icmp ult i64 %.val.val.i.i.i8.i.i.i, %.val6.val.i.i.i9.i.i.i
  br i1 %.not40.i.i, label %.critedge.split.i61.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i: ; preds = %.split.i60.i, %bb.ac, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE3EEES4_.exit.i.i.i, %bb.z, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEixERKm.exit30.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i56.i
  store i8 1, ptr %i.in, align 1, !tbaa !138
  %i.io = add nuw nsw i64 %.1.i56.i, 1            ; 2 uses
  %.not.i59.i = icmp ult i64 %i.io, %i.fj
  br i1 %.not.i59.i, label %bb.v, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2330

.critedge.split.i61.i:                            ; preds = %.split.i60.i, %bb.ab, %.critedge.i.i
  %.not26.i62.i = icmp ult i64 %i.hc, %i.fs
  br i1 %.not26.i62.i, label %.split43.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2331

bb.ad:                                            ; preds = %bb.a
  %i.ip = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.ir = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iq) ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.it = load atomic i64, ptr %i.is seq_cst, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.iv = load atomic i64, ptr %i.iu seq_cst, align 8
  %i.iw = sub i64 %i.it, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.iy = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ix) ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.ja = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iz) ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.jc = load atomic i64, ptr %i.jb seq_cst, align 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.je = load atomic i64, ptr %i.jd seq_cst, align 8 ; 2 uses
  %i.jf = sub i64 %i.jc, %i.je                    ; 2 uses
  %.not2643.not.i.i = icmp eq i64 %i.jc, %i.je
  br i1 %.not2643.not.i.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.ad
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 1161
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ir, i64 584
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 584
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.i77.i, %.lr.ph.i69.i
  %.02245.i.i = phi i64 [ 0, %.lr.ph.i69.i ], [ %i.jl, %.critedge.i77.i ]
  %.044.i.i = phi i64 [ 0, %.lr.ph.i69.i ], [ %.1.i70.i, %.critedge.i77.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  store i8 1, ptr %i.s, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.ja, ptr noundef nonnull align 1 dereferenceable(1) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  store i8 1, ptr %i.jg, align 1, !tbaa !513
  %i.jl = add i64 %.02245.i.i, 2048               ; 3 uses
  %i.jm = call noundef i64 @llvm.umin.i64(i64 %i.jl, i64 %i.jf)
  %i.jn = add i64 %i.jm, -1                       ; 2 uses
  %i.jo = lshr i64 %i.jn, 11                      ; 2 uses
  %i.jp = and i64 %i.jn, 2047
  br label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i, %bb.ae
  %.1.i70.i = phi i64 [ %.044.i.i, %bb.ae ], [ %i.lk, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #30
  %i.jq = lshr i64 %.1.i70.i, 11                  ; 2 uses
  store i64 %i.jq, ptr %i.r, align 8, !tbaa !174
  %i.jr = load i64, ptr %i.jh, align 8, !tbaa !509
  %.not.i.i.i.i71.i = icmp eq i64 %i.jq, %i.jr
  br i1 %.not.i.i.i.i71.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE4EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ir, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit.i.i: ; preds = %bb.ag, %bb.af
  %i.js = and i64 %.1.i70.i, 2047
  %i.jt = load ptr, ptr %i.ji, align 8, !tbaa !511
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.js
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !525 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30
  store i64 %i.jo, ptr %i.q, align 8, !tbaa !174
  %i.jw = load i64, ptr %i.jj, align 8, !tbaa !509
  %.not.i.i.i29.i72.i = icmp eq i64 %i.jo, %i.jw
  br i1 %.not.i.i.i29.i72.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit30.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE4EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ja, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit30.i.i: ; preds = %bb.ah, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit.i.i
  %i.jx = load ptr, ptr %i.jk, align 8, !tbaa !511
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jp
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !525 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  %i.ka = load i64, ptr %i.jv, align 8, !tbaa !174 ; 3 uses
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !174 ; 3 uses
  %i.kc = icmp ult i64 %i.ka, %i.kb
  br i1 %i.kc, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit30.i.i
  %i.kd = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kd, label %bb.aj, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE4EEES4_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !174 ; 2 uses
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !174 ; 2 uses
  %i.ki = icmp ult i64 %i.kg, %i.kh
  br i1 %i.ki, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kj = icmp eq i64 %i.kg, %i.kh
  br i1 %i.kj, label %bb.al, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE4EEES4_.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !174 ; 2 uses
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !174 ; 2 uses
  %i.ko = icmp ult i64 %i.km, %i.kn
  br i1 %i.ko, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kp = icmp eq i64 %i.km, %i.kn
  br i1 %i.kp, label %bb.an, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE4EEES4_.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %.val.val.i.i.i.i.i.i.i = load i64, ptr %i.kq, align 8, !tbaa !174
  %.val6.val.i.i.i.i.i.i.i = load i64, ptr %i.kr, align 8, !tbaa !174
  %i.ks = icmp ult i64 %.val.val.i.i.i.i.i.i.i, %.val6.val.i.i.i.i.i.i.i
  br label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE4EEES4_.exit.i.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE4EEES4_.exit.i.i.i: ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai
  %i.kt = phi i1 [ %i.ks, %bb.an ], [ false, %bb.ai ], [ false, %bb.am ], [ false, %bb.ak ] ; 2 uses
  %or.cond.i.i73.i = or i1 %i.ao, %i.kt
  br i1 %or.cond.i.i73.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE4EEES4_.exit.i.i.i
  %i.ku = icmp ult i64 %i.kb, %i.ka
  br i1 %i.ku, label %.critedge.i77.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !174 ; 2 uses
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !174 ; 2 uses
  %i.kz = icmp ult i64 %i.kx, %i.ky
  br i1 %i.kz, label %.critedge.i77.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.la = icmp eq i64 %i.kx, %i.ky
  br i1 %i.la, label %bb.ar, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !174 ; 2 uses
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !174 ; 2 uses
  %i.lf = icmp ult i64 %i.ld, %i.le
  br i1 %i.lf, label %.critedge.i77.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lg = icmp eq i64 %i.ld, %i.le
  br i1 %i.lg, label %.split.i75.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i

.split.i75.i:                                     ; preds = %bb.as
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %.val.val.i.i.i.i8.i.i.i = load i64, ptr %i.lh, align 8, !tbaa !174
  %.val6.val.i.i.i.i9.i.i.i = load i64, ptr %i.li, align 8, !tbaa !174
  %.not40.i76.i = icmp ult i64 %.val.val.i.i.i.i8.i.i.i, %.val6.val.i.i.i.i9.i.i.i
  br i1 %.not40.i76.i, label %.critedge.i77.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.i.i: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE4EEES4_.exit.i.i.i
  br i1 %i.kt, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i, label %.critedge.i77.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i: ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.i.i, %.split.i75.i, %bb.as, %bb.aq, %bb.al, %bb.aj, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEixERKm.exit30.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i70.i
  store i8 1, ptr %i.lj, align 1, !tbaa !138
  %i.lk = add nuw nsw i64 %.1.i70.i, 1            ; 2 uses
  %.not.i74.i = icmp ult i64 %i.lk, %i.iw
  br i1 %.not.i74.i, label %bb.af, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2332

.critedge.i77.i:                                  ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.i.i, %.split.i75.i, %bb.ar, %bb.ap, %bb.ao
  %.not26.i78.i = icmp ult i64 %i.jl, %i.jf
  br i1 %.not26.i78.i, label %bb.ae, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2333

bb.at:                                            ; preds = %bb.a
  %i.ll = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.ln = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lm) ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.lp = load atomic i64, ptr %i.lo seq_cst, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.lr = load atomic i64, ptr %i.lq seq_cst, align 8
  %i.ls = sub i64 %i.lp, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.lu = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lt) ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.lw = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lv) ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.ly = load atomic i64, ptr %i.lx seq_cst, align 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.ma = load atomic i64, ptr %i.lz seq_cst, align 8 ; 2 uses
  %i.mb = sub i64 %i.ly, %i.ma                    ; 2 uses
  %.not2640.not.i79.i = icmp eq i64 %i.ly, %i.ma
  br i1 %.not2640.not.i79.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %bb.at
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 1161
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.ln, i64 584
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lw, i64 584
  br label %bb.au

bb.au:                                            ; preds = %.critedge.i89.i, %.lr.ph.i80.i
  %.02242.i81.i = phi i64 [ 0, %.lr.ph.i80.i ], [ %i.mh, %.critedge.i89.i ]
  %.041.i82.i = phi i64 [ 0, %.lr.ph.i80.i ], [ %.1.i83.i, %.critedge.i89.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  store i8 1, ptr %i.p, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.lw, ptr noundef nonnull align 1 dereferenceable(1) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  store i8 1, ptr %i.mc, align 1, !tbaa !513
  %i.mh = add i64 %.02242.i81.i, 2048             ; 3 uses
  %i.mi = call noundef i64 @llvm.umin.i64(i64 %i.mh, i64 %i.mb)
  %i.mj = add i64 %i.mi, -1                       ; 2 uses
  %i.mk = lshr i64 %i.mj, 11                      ; 2 uses
  %i.ml = and i64 %i.mj, 2047
  br label %bb.av

bb.av:                                            ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i, %bb.au
  %.1.i83.i = phi i64 [ %.041.i82.i, %bb.au ], [ %i.op, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #30
  %i.mm = lshr i64 %.1.i83.i, 11                  ; 2 uses
  store i64 %i.mm, ptr %i.o, align 8, !tbaa !174
  %i.mn = load i64, ptr %i.md, align 8, !tbaa !509
  %.not.i.i.i.i84.i = icmp eq i64 %i.mm, %i.mn
  br i1 %.not.i.i.i.i84.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ln, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit.i.i: ; preds = %bb.aw, %bb.av
  %i.mo = and i64 %.1.i83.i, 2047
  %i.mp = load ptr, ptr %i.me, align 8, !tbaa !511
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mo
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !527 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  store i64 %i.mk, ptr %i.n, align 8, !tbaa !174
  %i.ms = load i64, ptr %i.mf, align 8, !tbaa !509
  %.not.i.i.i29.i85.i = icmp eq i64 %i.mk, %i.ms
  br i1 %.not.i.i.i29.i85.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit30.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.lw, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit30.i.i: ; preds = %bb.ax, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit.i.i
  %i.mt = load ptr, ptr %i.mg, align 8, !tbaa !511
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ml
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !527 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  %i.mw = load i64, ptr %i.mr, align 8, !tbaa !174 ; 2 uses
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !174 ; 2 uses
  %i.my = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.mw, i64 %i.mx)
  %i.mz = shl nsw i32 %i.my, 1
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !174 ; 2 uses
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !174 ; 2 uses
  %i.ne = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.nc, i64 %i.nd)
  %i.nf = add nsw i32 %i.ne, %i.mz                ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit30.i.i
  %i.ng = icmp slt i32 %i.nf, 0
  br label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit.i.i.i

bb.az:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEixERKm.exit30.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !671 ; 4 uses
  %i.nj = icmp ult i64 %i.ni, 17
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !671 ; 4 uses
  %i.nk = icmp ult i64 %.pre.i.i.i.i, 17
  %or.cond.i.i.i.i = select i1 %i.nj, i1 true, i1 %i.nk
  br i1 %or.cond.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ba

._crit_edge.i.i.i.i:                              ; preds = %bb.az
  %i.nl = icmp ult i64 %i.ni, %.pre.i.i.i.i
  br label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !172
  %i.no = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !172
  %i.nq = call noundef i64 @llvm.umin.i64(i64 %i.ni, i64 %.pre.i.i.i.i)
  %i.nr = call i32 @memcmp(ptr noundef %i.nn, ptr noundef %i.np, i64 noundef %i.nq) #32 ; 2 uses
  %i.ns = icmp slt i32 %i.nr, 0
  br i1 %i.ns, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nt = icmp eq i32 %i.nr, 0
  %i.nu = icmp ult i64 %i.ni, %.pre.i.i.i.i
  %spec.select.i.i.i.i = and i1 %i.nu, %i.nt
  br label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit.i.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit.i.i.i: ; preds = %bb.bb, %._crit_edge.i.i.i.i, %bb.ay
  %.0.i.i.i.i = phi i1 [ %i.ng, %bb.ay ], [ %i.nl, %._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.bb ] ; 2 uses
  %or.cond.i.i86.i = or i1 %i.ao, %.0.i.i.i.i
  br i1 %or.cond.i.i86.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit.i.i.i
  %i.nv = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.mx, i64 %i.mw)
  %i.nw = shl nsw i32 %i.nv, 1
  %i.nx = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.nd, i64 %i.nc)
  %i.ny = add nsw i32 %i.nx, %i.nw                ; 2 uses
  %.not.i8.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i8.i.i.i, label %bb.bd, label %.split.i87.i

.split.i87.i:                                     ; preds = %bb.bc
  %i.nz = icmp slt i32 %i.ny, 0
  br i1 %i.nz, label %.critedge.i89.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !671 ; 4 uses
  %i.oc = icmp ult i64 %i.ob, 17
  %.phi.trans.insert.i10.i.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %.pre.i11.i.i.i = load i64, ptr %.phi.trans.insert.i10.i.i.i, align 8, !tbaa !671 ; 4 uses
  %i.od = icmp ult i64 %.pre.i11.i.i.i, 17
  %or.cond.i12.i.i.i = select i1 %i.oc, i1 true, i1 %i.od
  br i1 %or.cond.i12.i.i.i, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit15.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !172
  %i.og = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !172
  %i.oi = call noundef i64 @llvm.umin.i64(i64 %i.ob, i64 %.pre.i11.i.i.i)
  %i.oj = call i32 @memcmp(ptr noundef %i.of, ptr noundef %i.oh, i64 noundef %i.oi) #32 ; 2 uses
  %i.ok = icmp slt i32 %i.oj, 0
  br i1 %i.ok, label %.critedge.i89.i, label %.split52.i.i

.split52.i.i:                                     ; preds = %bb.be
  %i.ol = icmp eq i32 %i.oj, 0
  %i.om = icmp ult i64 %i.ob, %.pre.i11.i.i.i
  %spec.select.i13.i.i.i = and i1 %i.om, %i.ol
  br i1 %spec.select.i13.i.i.i, label %.critedge.i89.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit15.i.i.i: ; preds = %bb.bd
  %i.on = icmp ult i64 %i.ob, %.pre.i11.i.i.i
  br i1 %i.on, label %.critedge.i89.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.i.i: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit.i.i.i
  br i1 %.0.i.i.i.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i, label %.critedge.i89.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i: ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.i.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit15.i.i.i, %.split52.i.i, %.split.i87.i, %bb.ba
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i83.i
  store i8 1, ptr %i.oo, align 1, !tbaa !138
  %i.op = add nuw nsw i64 %.1.i83.i, 1            ; 2 uses
  %.not.i88.i = icmp ult i64 %i.op, %i.ls
  br i1 %.not.i88.i, label %bb.av, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2334

.critedge.i89.i:                                  ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.i.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE5EEES4_.exit15.i.i.i, %.split52.i.i, %bb.be, %.split.i87.i
  %.not26.i90.i = icmp ult i64 %i.mh, %i.mb
  br i1 %.not26.i90.i, label %bb.au, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2335

bb.bf:                                            ; preds = %bb.a
  %i.oq = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.os = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.or) ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.ou = load atomic i64, ptr %i.ot seq_cst, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.ow = load atomic i64, ptr %i.ov seq_cst, align 8
  %i.ox = sub i64 %i.ou, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.oz = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oy) ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.pb = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pa) ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pd = load atomic i64, ptr %i.pc seq_cst, align 8 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pf = load atomic i64, ptr %i.pe seq_cst, align 8 ; 2 uses
  %i.pg = sub i64 %i.pd, %i.pf                    ; 2 uses
  %.not2637.not.i91.i = icmp eq i64 %i.pd, %i.pf
  br i1 %.not2637.not.i91.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %bb.bf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 1161
  %i.pi = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.os, i64 584
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pb, i64 584
  br label %bb.bg

.critedge.loopexit.i102.i:                        ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit30.i.i
  %.not26.i103.i = icmp ult i64 %i.pm, %i.pg
  br i1 %.not26.i103.i, label %bb.bg, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2336

bb.bg:                                            ; preds = %.critedge.loopexit.i102.i, %.lr.ph.i92.i
  %.02239.i93.i = phi i64 [ 0, %.lr.ph.i92.i ], [ %i.pm, %.critedge.loopexit.i102.i ]
  %.038.i94.i = phi i64 [ 0, %.lr.ph.i92.i ], [ %.1.i95.i, %.critedge.loopexit.i102.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i8 1, ptr %i.m, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.pb, ptr noundef nonnull align 1 dereferenceable(1) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  store i8 1, ptr %i.ph, align 1, !tbaa !513
  %i.pm = add i64 %.02239.i93.i, 2048             ; 3 uses
  %i.pn = call noundef i64 @llvm.umin.i64(i64 %i.pm, i64 %i.pg)
  %i.po = add i64 %i.pn, -1                       ; 2 uses
  %i.pp = lshr i64 %i.po, 11                      ; 2 uses
  %i.pq = and i64 %i.po, 2047
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %bb.bg
  %.1.i95.i = phi i64 [ %.038.i94.i, %bb.bg ], [ %i.qe, %bb.bk ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  %i.pr = lshr i64 %.1.i95.i, 11                  ; 2 uses
  store i64 %i.pr, ptr %i.l, align 8, !tbaa !174
  %i.ps = load i64, ptr %i.pi, align 8, !tbaa !509
  %.not.i.i.i.i96.i = icmp eq i64 %i.pr, %i.ps
  br i1 %.not.i.i.i.i96.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.os, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit.i.i: ; preds = %bb.bi, %bb.bh
  %i.pt = and i64 %.1.i95.i, 2047
  %i.pu = load ptr, ptr %i.pj, align 8, !tbaa !511
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.pt
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i64 %i.pp, ptr %i.k, align 8, !tbaa !174
  %i.px = load i64, ptr %i.pk, align 8, !tbaa !509
  %.not.i.i.i29.i97.i = icmp eq i64 %i.pp, %i.px
  br i1 %.not.i.i.i29.i97.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit30.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.pb, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit30.i.i: ; preds = %bb.bj, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit.i.i
  %i.py = load ptr, ptr %i.pl, align 8, !tbaa !511
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.pq
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  %.val.val.i.i.i98.i = load i64, ptr %i.pw, align 8, !tbaa !174 ; 2 uses
  %.val2.val.i.i.i99.i = load i64, ptr %i.qa, align 8, !tbaa !174 ; 2 uses
  %i.qb = icmp ult i64 %.val.val.i.i.i98.i, %.val2.val.i.i.i99.i ; 2 uses
  %or.cond.i.i100.i = or i1 %i.ao, %i.qb
  %i.qc = icmp uge i64 %.val2.val.i.i.i99.i, %.val.val.i.i.i98.i
  %.0.i.i101.i = select i1 %or.cond.i.i100.i, i1 %i.qb, i1 %i.qc
  br i1 %.0.i.i101.i, label %bb.bk, label %.critedge.loopexit.i102.i

bb.bk:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEixERKm.exit30.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i95.i
  store i8 1, ptr %i.qd, align 1, !tbaa !138
  %i.qe = add nuw nsw i64 %.1.i95.i, 1            ; 2 uses
  %.not.i104.i = icmp ult i64 %i.qe, %i.ox
  br i1 %.not.i104.i, label %bb.bh, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2337

bb.bl:                                            ; preds = %bb.a
  %i.qf = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.qh = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qg) ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  %i.qj = load atomic i64, ptr %i.qi seq_cst, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.ql = load atomic i64, ptr %i.qk seq_cst, align 8
  %i.qm = sub i64 %i.qj, %i.ql                    ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.qo = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qn) ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.qq = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qp) ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.qs = load atomic i64, ptr %i.qr seq_cst, align 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qu = load atomic i64, ptr %i.qt seq_cst, align 8 ; 2 uses
  %i.qv = sub i64 %i.qs, %i.qu                    ; 4 uses
  %.not2640.not.i105.i = icmp eq i64 %i.qs, %i.qu
  br i1 %.not2640.not.i105.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %bb.bl
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 1161 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qh, i64 584 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qq, i64 584 ; 2 uses
  br i1 %i.ao, label %.split39.us.us.i120.i, label %.split39.i107.i

.split39.us.us.i120.i:                            ; preds = %.lr.ph.i106.i, %.critedge.split.us.us.i128.i
  %.02242.us.i121.i = phi i64 [ %i.rb, %.critedge.split.us.us.i128.i ], [ 0, %.lr.ph.i106.i ]
  %.041.us.i122.i = phi i64 [ %.1.us.us.i123.i, %.critedge.split.us.us.i128.i ], [ 0, %.lr.ph.i106.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i8 1, ptr %i.j, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.qq, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  store i8 1, ptr %i.qw, align 1, !tbaa !513
  %i.rb = add i64 %.02242.us.i121.i, 2048         ; 3 uses
  %i.rc = call noundef i64 @llvm.umin.i64(i64 %i.rb, i64 %i.qv)
  %i.rd = add i64 %i.rc, -1                       ; 2 uses
  %i.re = lshr i64 %i.rd, 11                      ; 2 uses
  %i.rf = and i64 %i.rd, 2047
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.split39.us.us.i120.i
  %.1.us.us.i123.i = phi i64 [ %.041.us.i122.i, %.split39.us.us.i120.i ], [ %i.rz, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.us.us.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.rg = lshr i64 %.1.us.us.i123.i, 11           ; 2 uses
  store i64 %i.rg, ptr %i.i, align 8, !tbaa !174
  %i.rh = load i64, ptr %i.qx, align 8, !tbaa !509
  %.not.i.i.i.us.us.i124.i = icmp eq i64 %i.rg, %i.rh
  br i1 %.not.i.i.i.us.us.i124.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.us.us.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.qh, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.us.us.i.i: ; preds = %bb.bn, %bb.bm
  %i.ri = and i64 %.1.us.us.i123.i, 2047
  %i.rj = load ptr, ptr %i.qy, align 8, !tbaa !511
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.ri
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !531 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i64 %i.re, ptr %i.h, align 8, !tbaa !174
  %i.rm = load i64, ptr %i.qz, align 8, !tbaa !509
  %.not.i.i.i29.us.us.i125.i = icmp eq i64 %i.re, %i.rm
  br i1 %.not.i.i.i29.us.us.i125.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.us.us.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.us.us.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.qq, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.us.us.i.i: ; preds = %bb.bo, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.us.us.i.i
  %i.rn = load ptr, ptr %i.ra, align 8, !tbaa !511
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %i.rf
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !531 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.rq = load i64, ptr %i.rl, align 8, !tbaa !174 ; 2 uses
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !174 ; 2 uses
  %i.rs = icmp ult i64 %i.rq, %i.rr
  br i1 %i.rs, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.us.us.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.us.us.i.i: ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.us.us.i.i
  %i.rt = icmp eq i64 %i.rq, %i.rr
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %.val.val.i.i.i.us.us.i126.i = load i64, ptr %i.ru, align 8
  %.val6.val.i.i.i.us.us.i127.i = load i64, ptr %i.rv, align 8
  %i.rw = icmp ult i64 %.val.val.i.i.i.us.us.i126.i, %.val6.val.i.i.i.us.us.i127.i
  %i.rx = select i1 %i.rt, i1 %i.rw, i1 false
  br i1 %i.rx, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %.critedge.split.us.us.i128.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.us.us.i.i: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.us.us.i.i, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.us.us.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.us.us.i123.i
  store i8 1, ptr %i.ry, align 1, !tbaa !138
  %i.rz = add nuw nsw i64 %.1.us.us.i123.i, 1     ; 2 uses
  %.not.us.us.i130.i = icmp ult i64 %i.rz, %i.qm
  br i1 %.not.us.us.i130.i, label %bb.bm, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2338

.critedge.split.us.us.i128.i:                     ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.us.us.i.i
  %.not26.us.i129.i = icmp ult i64 %i.rb, %i.qv
  br i1 %.not26.us.i129.i, label %.split39.us.us.i120.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2339

.split39.i107.i:                                  ; preds = %.lr.ph.i106.i, %.critedge.split.i117.i
  %.02242.i108.i = phi i64 [ %i.sa, %.critedge.split.i117.i ], [ 0, %.lr.ph.i106.i ]
  %.041.i109.i = phi i64 [ %.1.i110.i, %.critedge.split.i117.i ], [ 0, %.lr.ph.i106.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i8 1, ptr %i.j, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.qq, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  store i8 1, ptr %i.qw, align 1, !tbaa !513
  %i.sa = add i64 %.02242.i108.i, 2048            ; 3 uses
  %i.sb = call noundef i64 @llvm.umin.i64(i64 %i.sa, i64 %i.qv)
  %i.sc = add i64 %i.sb, -1                       ; 2 uses
  %i.sd = lshr i64 %i.sc, 11                      ; 2 uses
  %i.se = and i64 %i.sc, 2047
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.i.i, %.split39.i107.i
  %.1.i110.i = phi i64 [ %.041.i109.i, %.split39.i107.i ], [ %i.ta, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.sf = lshr i64 %.1.i110.i, 11                 ; 2 uses
  store i64 %i.sf, ptr %i.i, align 8, !tbaa !174
  %i.sg = load i64, ptr %i.qx, align 8, !tbaa !509
  %.not.i.i.i.i111.i = icmp eq i64 %i.sf, %i.sg
  br i1 %.not.i.i.i.i111.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.qh, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.i.i: ; preds = %bb.bq, %bb.bp
  %i.sh = and i64 %.1.i110.i, 2047
  %i.si = load ptr, ptr %i.qy, align 8, !tbaa !511
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sh
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !531 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i64 %i.sd, ptr %i.h, align 8, !tbaa !174
  %i.sl = load i64, ptr %i.qz, align 8, !tbaa !509
  %.not.i.i.i29.i112.i = icmp eq i64 %i.sd, %i.sl
  br i1 %.not.i.i.i29.i112.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.qq, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.i.i: ; preds = %bb.br, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit.i.i
  %i.sm = load ptr, ptr %i.ra, align 8, !tbaa !511
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.se
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !531 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.sp = load i64, ptr %i.sk, align 8, !tbaa !174 ; 3 uses
  %i.sq = load i64, ptr %i.so, align 8, !tbaa !174 ; 3 uses
  %i.sr = icmp ult i64 %i.sp, %i.sq
  br i1 %i.sr, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.i.i, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.i.i: ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.i.i
  %i.ss = icmp eq i64 %i.sp, %i.sq
  %i.st = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %.val.val.i.i.i.i113.i = load i64, ptr %i.st, align 8 ; 2 uses
  %.val6.val.i.i.i.i114.i = load i64, ptr %i.su, align 8 ; 2 uses
  %i.sv = icmp ult i64 %.val.val.i.i.i.i113.i, %.val6.val.i.i.i.i114.i
  %i.sw = select i1 %i.ss, i1 %i.sv, i1 false
  br i1 %i.sw, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.i.i, label %.split.i115.i

.split.i115.i:                                    ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.i.i
  %i.sx = icmp uge i64 %i.sq, %i.sp
  %i.sy = icmp uge i64 %.val6.val.i.i.i.i114.i, %.val.val.i.i.i.i113.i
  %spec.select.i.i116.i = select i1 %i.sx, i1 %i.sy, i1 false
  br i1 %spec.select.i.i116.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.i.i, label %.critedge.split.i117.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.i.i: ; preds = %.split.i115.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE7EEES4_.exit.i.i.i, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEixERKm.exit30.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i110.i
  store i8 1, ptr %i.sz, align 1, !tbaa !138
  %i.ta = add nuw nsw i64 %.1.i110.i, 1           ; 2 uses
  %.not.i119.i = icmp ult i64 %i.ta, %i.qm
  br i1 %.not.i119.i, label %bb.bp, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2338

.critedge.split.i117.i:                           ; preds = %.split.i115.i
  %.not26.i118.i = icmp ult i64 %i.sa, %i.qv
  br i1 %.not26.i118.i, label %.split39.i107.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2339

bb.bs:                                            ; preds = %bb.a
  %i.tb = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.td = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tc) ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %i.tf = load atomic i64, ptr %i.te seq_cst, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.th = load atomic i64, ptr %i.tg seq_cst, align 8
  %i.ti = sub i64 %i.tf, %i.th                    ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.tk = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tj) ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.tm = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tl) ; 7 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.to = load atomic i64, ptr %i.tn seq_cst, align 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tq = load atomic i64, ptr %i.tp seq_cst, align 8 ; 2 uses
  %i.tr = sub i64 %i.to, %i.tq                    ; 4 uses
  %.not2644.not.i131.i = icmp eq i64 %i.to, %i.tq
  br i1 %.not2644.not.i131.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i132.i

.lr.ph.i132.i:                                    ; preds = %bb.bs
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tm, i64 1161 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.td, i64 584 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tm, i64 584 ; 2 uses
  br i1 %i.ao, label %.split43.us.us.i149.i, label %.split43.i133.i

.split43.us.us.i149.i:                            ; preds = %.lr.ph.i132.i, %.critedge.split.us.us.i155.i
  %.02246.us.i150.i = phi i64 [ %i.tx, %.critedge.split.us.us.i155.i ], [ 0, %.lr.ph.i132.i ]
  %.045.us.i151.i = phi i64 [ %.1.us.us.i152.i, %.critedge.split.us.us.i155.i ], [ 0, %.lr.ph.i132.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i8 1, ptr %i.g, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.tm, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store i8 1, ptr %i.ts, align 1, !tbaa !513
  %i.tx = add i64 %.02246.us.i150.i, 2048         ; 3 uses
  %i.ty = call noundef i64 @llvm.umin.i64(i64 %i.tx, i64 %i.tr)
  %i.tz = add i64 %i.ty, -1                       ; 2 uses
  %i.ua = lshr i64 %i.tz, 11                      ; 2 uses
  %i.ub = and i64 %i.tz, 2047
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.split43.us.us.i149.i
  %.1.us.us.i152.i = phi i64 [ %.045.us.i151.i, %.split43.us.us.i149.i ], [ %i.va, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.us.us.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.uc = lshr i64 %.1.us.us.i152.i, 11           ; 2 uses
  store i64 %i.uc, ptr %i.f, align 8, !tbaa !174
  %i.ud = load i64, ptr %i.tt, align 8, !tbaa !509
  %.not.i.i.i.us.us.i153.i = icmp eq i64 %i.uc, %i.ud
  br i1 %.not.i.i.i.us.us.i153.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.us.us.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.td, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.us.us.i.i: ; preds = %bb.bu, %bb.bt
  %i.ue = and i64 %.1.us.us.i152.i, 2047
  %i.uf = load ptr, ptr %i.tu, align 8, !tbaa !511
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.ue
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !533 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 %i.ua, ptr %i.e, align 8, !tbaa !174
  %i.ui = load i64, ptr %i.tv, align 8, !tbaa !509
  %.not.i.i.i29.us.us.i154.i = icmp eq i64 %i.ua, %i.ui
  br i1 %.not.i.i.i29.us.us.i154.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.us.us.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.us.us.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.tm, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.us.us.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.us.us.i.i: ; preds = %bb.bv, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.us.us.i.i
  %i.uj = load ptr, ptr %i.tw, align 8, !tbaa !511
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %i.ub
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !533 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %i.um = load i64, ptr %i.uh, align 8, !tbaa !174 ; 2 uses
  %i.un = load i64, ptr %i.ul, align 8, !tbaa !174 ; 2 uses
  %i.uo = icmp ult i64 %i.um, %i.un
  br i1 %i.uo, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.us.us.i.i
  %i.up = icmp eq i64 %i.um, %i.un
  br i1 %i.up, label %bb.bx, label %.critedge.split.us.us.i155.i

bb.bx:                                            ; preds = %bb.bw
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.us = load i64, ptr %i.uq, align 8, !tbaa !174 ; 2 uses
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !174 ; 2 uses
  %i.uu = icmp ult i64 %i.us, %i.ut
  br i1 %i.uu, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.uv = icmp eq i64 %i.us, %i.ut
  br i1 %i.uv, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.us.us.i.i, label %.critedge.split.us.us.i155.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.us.us.i.i: ; preds = %bb.by
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %.val.val.i.i.i.i.us.us.i157.i = load i64, ptr %i.uw, align 8, !tbaa !174
  %.val6.val.i.i.i.i.us.us.i158.i = load i64, ptr %i.ux, align 8, !tbaa !174
  %i.uy = icmp ult i64 %.val.val.i.i.i.i.us.us.i157.i, %.val6.val.i.i.i.i.us.us.i158.i
  br i1 %i.uy, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.us.us.i.i, label %.critedge.split.us.us.i155.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.us.us.i.i: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.us.us.i.i, %bb.bx, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.us.us.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.us.us.i152.i
  store i8 1, ptr %i.uz, align 1, !tbaa !138
  %i.va = add nuw nsw i64 %.1.us.us.i152.i, 1     ; 2 uses
  %.not.us.us.i159.i = icmp ult i64 %i.va, %i.ti
  br i1 %.not.us.us.i159.i, label %bb.bt, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2340

.critedge.split.us.us.i155.i:                     ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.us.us.i.i, %bb.by, %bb.bw
  %.not26.us.i156.i = icmp ult i64 %i.tx, %i.tr
  br i1 %.not26.us.i156.i, label %.split43.us.us.i149.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2341

.split43.i133.i:                                  ; preds = %.lr.ph.i132.i, %.critedge.split.i145.i
  %.02246.i134.i = phi i64 [ %i.vb, %.critedge.split.i145.i ], [ 0, %.lr.ph.i132.i ]
  %.045.i135.i = phi i64 [ %.1.i136.i, %.critedge.split.i145.i ], [ 0, %.lr.ph.i132.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i8 1, ptr %i.g, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.tm, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store i8 1, ptr %i.ts, align 1, !tbaa !513
  %i.vb = add i64 %.02246.i134.i, 2048            ; 3 uses
  %i.vc = call noundef i64 @llvm.umin.i64(i64 %i.vb, i64 %i.tr)
  %i.vd = add i64 %i.vc, -1                       ; 2 uses
  %i.ve = lshr i64 %i.vd, 11                      ; 2 uses
  %i.vf = and i64 %i.vd, 2047
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i, %.split43.i133.i
  %.1.i136.i = phi i64 [ %.045.i135.i, %.split43.i133.i ], [ %i.wn, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.vg = lshr i64 %.1.i136.i, 11                 ; 2 uses
  store i64 %i.vg, ptr %i.f, align 8, !tbaa !174
  %i.vh = load i64, ptr %i.tt, align 8, !tbaa !509
  %.not.i.i.i.i137.i = icmp eq i64 %i.vg, %i.vh
  br i1 %.not.i.i.i.i137.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.td, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.i.i: ; preds = %bb.ca, %bb.bz
  %i.vi = and i64 %.1.i136.i, 2047
  %i.vj = load ptr, ptr %i.tu, align 8, !tbaa !511
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vi
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !533 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 %i.ve, ptr %i.e, align 8, !tbaa !174
  %i.vm = load i64, ptr %i.tv, align 8, !tbaa !509
  %.not.i.i.i29.i138.i = icmp eq i64 %i.ve, %i.vm
  br i1 %.not.i.i.i29.i138.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.tm, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.i.i: ; preds = %bb.cb, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit.i.i
  %i.vn = load ptr, ptr %i.tw, align 8, !tbaa !511
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %i.vf
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !533 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %i.vq = load i64, ptr %i.vl, align 8, !tbaa !174 ; 3 uses
  %i.vr = load i64, ptr %i.vp, align 8, !tbaa !174 ; 3 uses
  %i.vs = icmp ult i64 %i.vq, %i.vr
  br i1 %i.vs, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.i.i
  %i.vt = icmp eq i64 %i.vq, %i.vr
  br i1 %i.vt, label %bb.cd, label %.critedge.i139.i

bb.cd:                                            ; preds = %bb.cc
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vw = load i64, ptr %i.vu, align 8, !tbaa !174 ; 2 uses
  %i.vx = load i64, ptr %i.vv, align 8, !tbaa !174 ; 2 uses
  %i.vy = icmp ult i64 %i.vw, %i.vx
  br i1 %i.vy, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.vz = icmp eq i64 %i.vw, %i.vx
  br i1 %i.vz, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.i.i, label %.critedge.i139.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.i.i: ; preds = %bb.ce
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %.val.val.i.i.i.i.i147.i = load i64, ptr %i.wa, align 8, !tbaa !174
  %.val6.val.i.i.i.i.i148.i = load i64, ptr %i.wb, align 8, !tbaa !174
  %i.wc = icmp ult i64 %.val.val.i.i.i.i.i147.i, %.val6.val.i.i.i.i.i148.i
  br i1 %i.wc, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i, label %.critedge.i139.i

.critedge.i139.i:                                 ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.i.i, %bb.ce, %bb.cc
  %i.wd = icmp ult i64 %i.vr, %i.vq
  br i1 %i.wd, label %.critedge.split.i145.i, label %bb.cf

bb.cf:                                            ; preds = %.critedge.i139.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.wg = load i64, ptr %i.we, align 8, !tbaa !174 ; 2 uses
  %i.wh = load i64, ptr %i.wf, align 8, !tbaa !174 ; 2 uses
  %i.wi = icmp ult i64 %i.wg, %i.wh
  br i1 %i.wi, label %.critedge.split.i145.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wj = icmp eq i64 %i.wg, %i.wh
  br i1 %i.wj, label %.split.i141.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i

.split.i141.i:                                    ; preds = %bb.cg
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %.val.val.i.i.i8.i.i142.i = load i64, ptr %i.wk, align 8, !tbaa !174
  %.val6.val.i.i.i9.i.i143.i = load i64, ptr %i.wl, align 8, !tbaa !174
  %.not40.i144.i = icmp ult i64 %.val.val.i.i.i8.i.i142.i, %.val6.val.i.i.i9.i.i143.i
  br i1 %.not40.i144.i, label %.critedge.split.i145.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i: ; preds = %.split.i141.i, %bb.cg, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE8EEES4_.exit.i.i.i, %bb.cd, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEixERKm.exit30.i.i
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i136.i
  store i8 1, ptr %i.wm, align 1, !tbaa !138
  %i.wn = add nuw nsw i64 %.1.i136.i, 1           ; 2 uses
  %.not.i140.i = icmp ult i64 %i.wn, %i.ti
  br i1 %.not.i140.i, label %bb.bz, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2340

.critedge.split.i145.i:                           ; preds = %.split.i141.i, %bb.cf, %.critedge.i139.i
  %.not26.i146.i = icmp ult i64 %i.vb, %i.tr
  br i1 %.not26.i146.i, label %.split43.i133.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2341

bb.ch:                                            ; preds = %bb.a
  %i.wo = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.wq = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wp) ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 32
  %i.ws = load atomic i64, ptr %i.wr seq_cst, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wu = load atomic i64, ptr %i.wt seq_cst, align 8
  %i.wv = sub i64 %i.ws, %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.wx = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ww) ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.wz = tail call noundef nonnull align 8 dereferenceable(1192) ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wy) ; 5 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 32
  %i.xb = load atomic i64, ptr %i.xa seq_cst, align 8 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  %i.xd = load atomic i64, ptr %i.xc seq_cst, align 8 ; 2 uses
  %i.xe = sub i64 %i.xb, %i.xd                    ; 2 uses
  %.not2640.not.i160.i = icmp eq i64 %i.xb, %i.xd
  br i1 %.not2640.not.i160.i, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, label %.lr.ph.i161.i

.lr.ph.i161.i:                                    ; preds = %bb.ch
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wz, i64 1161
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wq, i64 584
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wz, i64 584
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.i169.i, %.lr.ph.i161.i
  %.02242.i162.i = phi i64 [ 0, %.lr.ph.i161.i ], [ %i.xk, %.critedge.i169.i ]
  %.041.i163.i = phi i64 [ 0, %.lr.ph.i161.i ], [ %.1.i164.i, %.critedge.i169.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i8 1, ptr %i.d, align 1, !tbaa !138
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.wz, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store i8 1, ptr %i.xf, align 1, !tbaa !513
  %i.xk = add i64 %.02242.i162.i, 2048            ; 3 uses
  %i.xl = call noundef i64 @llvm.umin.i64(i64 %i.xk, i64 %i.xe)
  %i.xm = add i64 %i.xl, -1                       ; 2 uses
  %i.xn = lshr i64 %i.xm, 11                      ; 2 uses
  %i.xo = and i64 %i.xm, 2047
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i, %bb.ci
  %.1.i164.i = phi i64 [ %.041.i163.i, %bb.ci ], [ %i.zc, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.xp = lshr i64 %.1.i164.i, 11                 ; 2 uses
  store i64 %i.xp, ptr %i.c, align 8, !tbaa !174
  %i.xq = load i64, ptr %i.xg, align 8, !tbaa !509
  %.not.i.i.i.i165.i = icmp eq i64 %i.xp, %i.xq
  br i1 %.not.i.i.i.i165.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.wq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit.i.i: ; preds = %bb.ck, %bb.cj
  %i.xr = and i64 %.1.i164.i, 2047
  %i.xs = load ptr, ptr %i.xh, align 8, !tbaa !511
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %i.xr
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !535 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.xn, ptr %i.b, align 8, !tbaa !174
  %i.xv = load i64, ptr %i.xi, align 8, !tbaa !509
  %.not.i.i.i29.i166.i = icmp eq i64 %i.xn, %i.xv
  br i1 %.not.i.i.i29.i166.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit30.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit.i.i
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.wz, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit30.i.i

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit30.i.i: ; preds = %bb.cl, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit.i.i
  %i.xw = load ptr, ptr %i.xj, align 8, !tbaa !511
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xo
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !535 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.xz = load i64, ptr %i.xu, align 8, !tbaa !174 ; 3 uses
  %i.ya = load i64, ptr %i.xy, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i167.i = icmp eq i64 %i.xz, %i.ya
  br i1 %.not.i.i.i167.i, label %bb.cm, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.thread18.i.i.i

bb.cm:                                            ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit30.i.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !673 ; 7 uses
  %i.yd = icmp ult i64 %i.yc, 9                   ; 2 uses
  %.phi.trans.insert.i.i.i172.i = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %.pre.i.i.i173.i = load i64, ptr %.phi.trans.insert.i.i.i172.i, align 8, !tbaa !673 ; 7 uses
  %i.ye = icmp ult i64 %.pre.i.i.i173.i, 9        ; 2 uses
  %or.cond.i.i.i174.i = select i1 %i.yd, i1 true, i1 %i.ye
  br i1 %or.cond.i.i.i174.i, label %._crit_edge.i.i.i181.i, label %bb.cn

._crit_edge.i.i.i181.i:                           ; preds = %bb.cm
  %i.yf = icmp ult i64 %i.yc, %.pre.i.i.i173.i
  br label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !172
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !172
  %i.yk = call noundef i64 @llvm.umin.i64(i64 %i.yc, i64 %.pre.i.i.i173.i)
  %i.yl = call i32 @memcmp(ptr noundef %i.yh, ptr noundef %i.yj, i64 noundef %i.yk) #32 ; 2 uses
  %i.ym = icmp slt i32 %i.yl, 0
  br i1 %i.ym, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.yn = icmp eq i32 %i.yl, 0
  %i.yo = icmp ult i64 %i.yc, %.pre.i.i.i173.i
  %spec.select.i.i.i175.i = and i1 %i.yo, %i.yn
  br label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.i.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.i.i.i: ; preds = %bb.co, %._crit_edge.i.i.i181.i
  %.0.i.i.i176.i = phi i1 [ %spec.select.i.i.i175.i, %bb.co ], [ %i.yf, %._crit_edge.i.i.i181.i ] ; 2 uses
  %or.cond.i.i177.i = or i1 %i.ao, %.0.i.i.i176.i
  br i1 %or.cond.i.i177.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.i.i, label %bb.cp

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.thread18.i.i.i: ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEixERKm.exit30.i.i
  %i.yp = icmp ult i64 %i.xz, %i.ya               ; 2 uses
  %or.cond20.i.i.i = or i1 %i.ao, %i.yp
  br i1 %or.cond20.i.i.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.thread18.i.i.i
  %i.yq = icmp ult i64 %i.ya, %i.xz
  br i1 %i.yq, label %.critedge.i169.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i

bb.cp:                                            ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.i.i.i
  %or.cond.i12.i.i178.i = or i1 %i.yd, %i.ye
  br i1 %or.cond.i12.i.i178.i, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !172
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !172
  %i.yv = call noundef i64 @llvm.umin.i64(i64 %.pre.i.i.i173.i, i64 %i.yc)
  %i.yw = call i32 @memcmp(ptr noundef %i.ys, ptr noundef %i.yu, i64 noundef %i.yv) #32 ; 2 uses
  %i.yx = icmp slt i32 %i.yw, 0
  br i1 %i.yx, label %.critedge.i169.i, label %.split.i179.i

.split.i179.i:                                    ; preds = %bb.cq
  %i.yy = icmp eq i32 %i.yw, 0
  %i.yz = icmp ult i64 %.pre.i.i.i173.i, %i.yc
  %spec.select.i13.i.i180.i = and i1 %i.yz, %i.yy
  br i1 %spec.select.i13.i.i180.i, label %.critedge.i169.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.i.i: ; preds = %bb.cp
  %i.za = icmp ult i64 %.pre.i.i.i173.i, %i.yc
  br i1 %i.za, label %.critedge.i169.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.i.i: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.thread18.i.i.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.i.i.i
  %.0.i.i171.i = phi i1 [ %i.yp, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.thread18.i.i.i ], [ %.0.i.i.i176.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit.i.i.i ]
  br i1 %.0.i.i171.i, label %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i, label %.critedge.i169.i

_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i: ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.i.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.i.i, %.split.i179.i, %.thread.i.i.i, %bb.cn
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i164.i
  store i8 1, ptr %i.zb, align 1, !tbaa !138
  %i.zc = add nuw nsw i64 %.1.i164.i, 1           ; 2 uses
  %.not.i168.i = icmp ult i64 %i.zc, %i.wv
  br i1 %.not.i168.i, label %bb.cj, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2342

.critedge.i169.i:                                 ; preds = %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.i.i, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.i.i, %.split.i179.i, %bb.cq, %.thread.i.i.i
  %.not26.i170.i = icmp ult i64 %i.xk, %i.xe
  br i1 %.not26.i170.i, label %bb.ci, label %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit, !llvm.loop !2343

bb.cr:                                            ; preds = %bb.a
  %i.zd = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.cs unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.thread.i

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ze = load i8, ptr %i.ap, align 8, !tbaa !1321
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_11SortKeyTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.ze)
          to label %bb.ct unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.zd, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke void @__cxa_throw(ptr nonnull %i.zd, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.cx unwind label %bb.cv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.thread.i: ; preds = %bb.cr
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.0.i = phi i1 [ false, %bb.cu ], [ true, %bb.ct ] ; 2 uses
  %i.zg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.zh = load ptr, ptr %8, align 8, !tbaa !179   ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cv
  call void @_ZdlPv(ptr noundef %i.zh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.zk = load ptr, ptr %6, align 8, !tbaa !179   ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.zm = icmp eq ptr %i.zk, %i.zl
  br i1 %i.zm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.cs
  %i.zn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.zo = load ptr, ptr %6, align 8, !tbaa !179   ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.zq = icmp eq ptr %i.zo, %i.zp
  br i1 %i.zq, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  call void @_ZdlPv(ptr noundef %i.zo) #29
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.zk) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i, label %bb.cw, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0.i, label %bb.cw, label %common.resume

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.thread.i
  %.pn.pn188.ph.i = phi { ptr, i32 } [ %i.zn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread.i ], [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.thread.i ], [ %i.zn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.cw

bb.cw:                                            ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i
  %.pn.pn188.i = phi { ptr, i32 } [ %i.zg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i ], [ %i.zg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i ], [ %.pn.pn188.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.zd) #30
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i, %bb.cw, %bb.ec, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn62, %bb.ec ], [ %i.abo, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i ], [ %i.zg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i ], [ %.pn.pn188.i, %bb.cw ], [ %i.zg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i ], [ %i.adb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.dt ], [ %i.adb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.cx:                                            ; preds = %bb.cu
  unreachable

_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit: ; preds = %.critedge.i169.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S6_b.exit.thread.i.i, %.critedge.split.i145.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.i.i, %.critedge.split.us.us.i155.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE8EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.critedge.split.i117.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.i.i, %.critedge.split.us.us.i128.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE7EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.critedge.loopexit.i102.i, %bb.bk, %.critedge.i89.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE5EEEEEbRKT_S6_b.exit.thread.i.i, %.critedge.i77.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE4EEEEEbRKT_S6_b.exit.thread.i.i, %.critedge.split.i61.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.i.i, %.critedge.split.us.us.i66.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE3EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.critedge.split.i.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.i.i, %.critedge.split.us.us.i.i, %_ZN6duckdb15MergeJoinBeforeINS_7SortKeyILNS_11SortKeyTypeE2EEEEEbRKT_S6_b.exit.thread.us.us.i.i, %.critedge.loopexit.i.i, %bb.g, %bb.b, %bb.h, %bb.o, %bb.ad, %bb.at, %bb.bf, %bb.bl, %bb.bs, %bb.ch
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %i.zs = load atomic i64, ptr %i.zr seq_cst, align 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.zu = load atomic i64, ptr %i.zt seq_cst, align 8
  %i.zv = sub i64 %i.zs, %i.zu                    ; 5 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !320
  switch i8 %i.zy, label %bb.dx [
    i8 7, label %bb.cy
    i8 5, label %bb.dv
    i8 6, label %bb.dw
  ]

bb.cy:                                            ; preds = %_ZN6duckdbL21MergeJoinSimpleBlocksERNS_23PiecewiseMergeJoinStateERNS_20MergeJoinGlobalStateEPbNS_14ExpressionTypeE.exit
  %i.zz = load ptr, ptr %i.aj, align 8, !tbaa !764 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !764 ; 2 uses
  %.not104 = icmp eq ptr %i.zz, %i.aab
  br i1 %.not104, label %._crit_edge, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.cy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.aad = icmp eq i64 %i.zv, 0
  %i.aae = add i64 %i.zv, 63
  %i.aaf = lshr i64 %i.aae, 6                     ; 2 uses
  %i.aag = add nsw i64 %i.aaf, -1                 ; 2 uses
  %.not.i44 = icmp eq i64 %i.aag, 0
  %i.aah = shl nuw nsw i64 %i.aaf, 3
  %i.aai = add nsw i64 %i.aah, -8
  %i.aaj = and i64 %i.zv, 63                      ; 2 uses
  %i.aak = icmp eq i64 %i.aaj, 0
  %i.aal = shl nsw i64 -1, %i.aaj
  %i.aam = xor i64 %i.aal, -1
  %i.aan = select i1 %i.aak, i64 -1, i64 %i.aam
  br label %bb.cz

._crit_edge:                                      ; preds = %.loopexit, %bb.cy
  %i.aao = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.aap = call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aao)
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  %i.aar = load atomic i64, ptr %i.aaq seq_cst, align 8
  %i.aas = icmp ne i64 %i.aar, 0
  call void @_ZN6duckdb12PhysicalJoin23ConstructMarkJoinResultERNS_9DataChunkES2_S2_Pbb(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.zw, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull %i.ac, i1 noundef zeroext %i.aas)
  br label %bb.ed

bb.cz:                                            ; preds = %.lr.ph107, %.loopexit
  %.sroa.053.0105 = phi ptr [ %i.zz, %.lr.ph107 ], [ %i.adr, %.loopexit ] ; 7 uses
  %i.aat = load i64, ptr %i.aac, align 8, !tbaa !163
  call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.053.0105, i64 noundef %i.aat)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.053.0105)
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.053.0105, i64 40 ; 3 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !674 ; 3 uses
  %.not.i = icmp eq ptr %i.aav, null
  br i1 %.not.i, label %.loopexit, label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i

_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i: ; preds = %bb.cz
  br i1 %i.aad, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, label %bb.da

bb.da:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i
  br i1 %.not.i44, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.da
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aav, i8 -1, i64 %i.aai, i1 false), !tbaa !174
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.da
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %i.aag ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !174
  %i.aay = or i64 %i.aax, %i.aan
  store i64 %i.aay, ptr %i.aaw, align 8, !tbaa !174
  br label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i, %._crit_edge.i
  %i.aaz = load atomic i64, ptr %i.zr seq_cst, align 8
  %i.aba = icmp ult i64 %i.zv, %i.aaz
  br i1 %i.aba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.053.0105, i64 64
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.053.0105, i64 48 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.053.0105, i64 56 ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %.040103 = phi i64 [ %i.zv, %.lr.ph ], [ %i.ado, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 3 uses
  %i.abe = load ptr, ptr %i.aau, align 8, !tbaa !674 ; 2 uses
  %.not.i45 = icmp eq ptr %i.abe, null
  br i1 %.not.i45, label %bb.dc, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.dc:                                            ; preds = %bb.db
  %i.abf = load i64, ptr %i.abb, align 8, !tbaa !647
  %i.abg = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2351 ; 11 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 7 uses
  store i32 1, ptr %i.abh, align 8, !tbaa !168, !noalias !2351
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 12 ; 2 uses
  store i32 1, ptr %i.abi, align 4, !tbaa !169, !noalias !2351
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.abg, align 8, !tbaa !171, !noalias !2351
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 16 ; 4 uses
  store ptr null, ptr %i.abj, align 8, !tbaa !1276, !noalias !2351
  %i.abk = add i64 %i.abf, 63
  %i.abl = lshr i64 %i.abk, 6                     ; 2 uses
  %i.abm = shl nuw nsw i64 %i.abl, 3              ; 2 uses
  %i.abn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abm) #28
end_hunk_0
