Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution?download=true
inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13

bb.s:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !481
  %.not.i.i.i.i.i5 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

bb.u:                                             ; preds = %bb.s
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i7 = phi i32 [ %i.bi, %bb.t ], [ %i.bs, %bb.u ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i7, 1
  br i1 %i.bt, label %bb.v, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13, !prof !280

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #40
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6, %bb.r, %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.bu = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !281
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13
  %storemerge = phi ptr [ %i.bv, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13 ], [ null, %bb.h ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ null, %bb.d ], [ null, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !716
  ret void
}

declare void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb13JoinHashTable13ScanFullOuterERNS_15JoinHTScanStateERNS_6VectorERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 !guid !1806 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !586
  %i.c = tail call noundef zeroext i1 @_ZNK6duckdb22TupleDataChunkIterator4DoneEv(ptr noundef nonnull align 8 dereferenceable(624) %1)
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !786
  %i.f = tail call noundef ptr @_ZN6duckdb22TupleDataChunkIterator15GetRowLocationsEv(ptr noundef nonnull align 8 dereferenceable(624) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = icmp ne i8 %i.e, 9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %.1.lcssa92, %._crit_edge.thread ] ; 2 uses
  %i.j = tail call noundef i64 @_ZNK6duckdb22TupleDataChunkIterator20GetCurrentChunkCountEv(ptr noundef nonnull align 8 dereferenceable(624) %1) ; 2 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !836  ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.h, align 8, !tbaa !805
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.178 = phi i64 [ %.0, %.lr.ph ], [ %.3.ph, %bb.f ] ; 3 uses
  %.05177 = phi i64 [ %i.k, %.lr.ph ], [ %i.w, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05177
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !552  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %.0.copyload.i = load i8, ptr %i.p, align 1
  %i.q = trunc i8 %.0.copyload.i to i1
  %i.r = xor i1 %i.i, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = add i64 %.178, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.178
  store ptr %i.o, ptr %i.t, align 8, !tbaa !552
  %i.u = icmp eq i64 %i.s, 2048
  br i1 %i.u, label %.thread61, label %bb.f

.thread61:                                        ; preds = %bb.e
  %i.v = add nuw i64 %.05177, 1
  store i64 %i.v, ptr %i.g, align 8, !tbaa !836
  br label %.thread69

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3.ph = phi i64 [ %.178, %bb.d ], [ %i.s, %bb.e ] ; 3 uses
  %i.w = add i64 %.05177, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1802

._crit_edge:                                      ; preds = %bb.f
  %i.x = icmp eq i64 %.3.ph, 2048
  br i1 %i.x, label %.thread69, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.1.lcssa92 = phi i64 [ %.3.ph, %._crit_edge ], [ %.0, %bb.c ] ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !836
  %i.y = tail call noundef zeroext i1 @_ZN6duckdb22TupleDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(624) %1)
  br i1 %i.y, label %bb.c, label %bb.g, !llvm.loop !1803

bb.g:                                             ; preds = %._crit_edge.thread
  %i.z = icmp eq i64 %.1.lcssa92, 0
  br i1 %i.z, label %.loopexit, label %.thread69

.thread69:                                        ; preds = %._crit_edge, %.thread61, %bb.g
  %.4636871 = phi i64 [ %.1.lcssa92, %bb.g ], [ 2048, %.thread61 ], [ 2048, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.4636871, ptr %i.aa, align 8, !tbaa !576
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !577
  %i.ad = load ptr, ptr %3, align 8, !tbaa !578
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 104
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !830, !nonnull !288, !align !521 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !261
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !264
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = load i8, ptr %i.d, align 8, !tbaa !786
  %i.as = sub nsw i64 %i.ah, %i.aq
  %i.at = add i8 %i.ar, -9
  %or.cond = icmp ult i8 %i.at, 2
  %.050 = select i1 %or.cond, i64 0, i64 %i.as    ; 3 uses
  %i.au = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() ; 2 uses
  %.not = icmp eq i64 %.050, 0
  br i1 %.not, label %.preheader, label %.lr.ph80

.preheader:                                       ; preds = %.lr.ph80, %.thread69
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !830, !nonnull !288, !align !521 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !261
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !264
  %.not83 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not83, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 856
  br label %bb.h

.lr.ph80:                                         ; preds = %.thread69, %.lr.ph80
  %.04979 = phi i64 [ %i.bb, %.lr.ph80 ], [ 0, %.thread69 ] ; 2 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.04979) ; 2 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.ba, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ba, i1 noundef zeroext true)
  %i.bb = add nuw i64 %.04979, 1                  ; 2 uses
  %exitcond86.not = icmp eq i64 %i.bb, %.050
  br i1 %exitcond86.not, label %.preheader, label %.lr.ph80, !llvm.loop !1804

bb.h:                                             ; preds = %.lr.ph82, %bb.h
  %.04881 = phi i64 [ 0, %.lr.ph82 ], [ %i.bi, %bb.h ] ; 3 uses
  %i.bc = add i64 %.04881, %.050
  %i.bd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bc)
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !830, !nonnull !288, !align !521
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %.04881)
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !263
  %i.bh = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.bh, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %.4636871, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(104) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 0)
  %i.bi = add nuw i64 %.04881, 1                  ; 2 uses
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !830, !nonnull !288, !align !521 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !261
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !264
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = icmp ult i64 %i.bi, %i.bq
  br i1 %i.br, label %bb.h, label %.loopexit, !llvm.loop !1805

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.g, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK6duckdb22TupleDataChunkIterator4DoneEv(ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 !guid !1810 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !586  ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = tail call noundef ptr @_ZN6duckdb22TupleDataChunkIterator15GetRowLocationsEv(ptr noundef nonnull align 8 dereferenceable(624) %0) ; 7 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.015 = phi i64 [ 0, %bb.a ], [ %i.u, %._crit_edge ] ; 3 uses
  %i.f = tail call noundef i64 @_ZNK6duckdb22TupleDataChunkIterator20GetCurrentChunkCountEv(ptr noundef nonnull align 8 dereferenceable(624) %0) ; 8 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr [8 x i8], ptr %i.b, i64 %.015 ; 6 uses
  %min.iters.check = icmp ult i64 %i.f, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.h = shl i64 %.015, 3
  %i.i = add i64 %i.h, %i.c
  %2 = sub i64 %i.e, %i.i
  %diff.check = icmp ugt i64 %2, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <2 x ptr>, ptr %i.j, align 8, !tbaa !552
  %wide.load18 = load <2 x ptr>, ptr %i.k, align 8, !tbaa !552
  %i.l = getelementptr [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  store <2 x ptr> %wide.load, ptr %i.l, align 8, !tbaa !552
  store <2 x ptr> %wide.load18, ptr %i.m, align 8, !tbaa !552
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.017.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.017.prol = phi i64 [ %i.r, %scalar.ph.prol ], [ %.017.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.017.prol
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !552
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %.017.prol
  store ptr %i.p, ptr %i.q, align 8, !tbaa !552
  %i.r = add nuw i64 %.017.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1808

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.unr = phi i64 [ %.017.ph, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %i.s = sub i64 %.017.ph, %i.f
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %i.u = add i64 %i.f, %.015                      ; 2 uses
  %i.v = tail call noundef zeroext i1 @_ZN6duckdb22TupleDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(624) %0)
  br i1 %i.v, label %bb.b, label %bb.c, !llvm.loop !36

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017 = phi i64 [ %i.al, %scalar.ph ], [ %.017.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.017
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !552
  %i.y = getelementptr [8 x i8], ptr %i.g, i64 %.017
  store ptr %i.x, ptr %i.y, align 8, !tbaa !552
  %i.z = add nuw i64 %.017, 1                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !552
  %i.ac = getelementptr [8 x i8], ptr %i.g, i64 %i.z
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !552
  %i.ad = add nuw i64 %.017, 2                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !552
  %i.ag = getelementptr [8 x i8], ptr %i.g, i64 %i.ad
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !552
  %i.ah = add nuw i64 %.017, 3                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !552
  %i.ak = getelementptr [8 x i8], ptr %i.g, i64 %i.ah
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !552
  %i.al = add nuw i64 %.017, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.al, %i.f
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1809

bb.c:                                             ; preds = %._crit_edge
  ret i64 %i.u
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb13JoinHashTable13ScanKeyColumnERNS_6VectorES2_m(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1814 {
bb.a:
  %4 = alloca %"struct.duckdb::JoinHTScanState", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection10ChunkCountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.b)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.e = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection10ChunkCountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.f)
  call void @_ZN6duckdb22TupleDataChunkIteratorC1ERNS_19TupleDataCollectionENS_22TupleDataPinPropertiesEmmb(ptr noundef nonnull align 8 dereferenceable(632) %4, ptr noundef nonnull align 8 dereferenceable(192) %i.e, i8 noundef zeroext 1, i64 noundef 0, i64 noundef %i.g, i1 noundef zeroext false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 624
  store i64 0, ptr %i.h, align 8, !tbaa !836
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !586  ; 2 uses
  %5 = ptrtoaddr ptr %i.j to i64
  %i.k = invoke noundef ptr @_ZN6duckdb22TupleDataChunkIterator15GetRowLocationsEv(ptr noundef nonnull align 8 dereferenceable(632) %4)
          to label %.noexc16.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc16.preheader:                               ; preds = %.noexc
  %i.l = ptrtoaddr ptr %i.k to i64
  br label %.noexc16

.noexc16:                                         ; preds = %.noexc16.preheader, %.noexc18
  %.015.i = phi i64 [ %i.ac, %.noexc18 ], [ 0, %.noexc16.preheader ] ; 3 uses
  %i.m = invoke noundef i64 @_ZNK6duckdb22TupleDataChunkIterator20GetCurrentChunkCountEv(ptr noundef nonnull align 8 dereferenceable(632) %4)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc17:                                         ; preds = %.noexc16
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc17
  %i.n = getelementptr [8 x i8], ptr %i.j, i64 %.015.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.m, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = shl i64 %.015.i, 3
  %i.p = add i64 %i.o, %5
  %6 = sub i64 %i.l, %i.p
  %diff.check = icmp ugt i64 %6, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x ptr>, ptr %i.q, align 8, !tbaa !552
  %wide.load29 = load <2 x ptr>, ptr %i.r, align 8, !tbaa !552
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  store <2 x ptr> %wide.load, ptr %i.s, align 8, !tbaa !552
  store <2 x ptr> %wide.load29, ptr %i.t, align 8, !tbaa !552
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1811

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.017.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.017.i.prol = phi i64 [ %i.y, %scalar.ph.prol ], [ %.017.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.017.i.prol
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !552
  %i.x = getelementptr [8 x i8], ptr %i.n, i64 %.017.i.prol
  store ptr %i.w, ptr %i.x, align 8, !tbaa !552
  %i.y = add nuw i64 %.017.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1812

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = sub i64 %.017.i.ph, %i.m
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc17
  %i.ab = invoke noundef zeroext i1 @_ZN6duckdb22TupleDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(632) %4)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %._crit_edge.i
  %i.ac = add i64 %i.m, %.015.i                   ; 4 uses
  br i1 %i.ab, label %.noexc16, label %_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit, !llvm.loop !36

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.as, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.017.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !552
  %i.af = getelementptr [8 x i8], ptr %i.n, i64 %.017.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !552
  %i.ag = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !552
  %i.aj = getelementptr [8 x i8], ptr %i.n, i64 %i.ag
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !552
  %i.ak = add nuw i64 %.017.i, 2                  ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !552
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %i.ak
  store ptr %i.am, ptr %i.an, align 8, !tbaa !552
  %i.ao = add nuw i64 %.017.i, 3                  ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !552
  %i.ar = getelementptr [8 x i8], ptr %i.n, i64 %i.ao
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !552
  %i.as = add nuw i64 %.017.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.as, %i.m
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1813

_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit: ; preds = %.noexc18
  %i.at = icmp eq i64 %i.ac, 0
  br i1 %i.at, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit
  %i.au = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.av = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.ac, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i, %.noexc16, %.noexc, %bb.b, %bb.e, %bb.d, %bb.c
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15JoinHTScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %lpad.loopexit.split-lp30

bb.f:                                             ; preds = %bb.e, %_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.ax) #40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !544 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !545 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.az, %bb.f ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bc) #40
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !544
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.f
  %i.be = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.az, %bb.f ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #39
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i

_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !544 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !545 ; 2 uses
  %.not4.i.i.i.i1.i.i.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i.i

.lr.ph.i.i.i.i2.i.i.i.i:                          ; preds = %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i2.i.i.i.i
  %.05.i.i.i.i3.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i2.i.i.i.i ], [ %i.bf, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bi) #40
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  %.pr.i.i6.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !544
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i
  %i.bk = phi ptr [ %.pr.i.i6.i.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i ], [ %i.bf, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i8.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i.i8.i.i.i.i, label %_ZN6duckdb15JoinHTScanStateD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #39
  br label %_ZN6duckdb15JoinHTScanStateD2Ev.exit

_ZN6duckdb15JoinHTScanStateD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN6duckdb15JoinHTScanStateD2Ev.exit
  %.1 = phi i64 [ %i.ac, %_ZN6duckdb15JoinHTScanStateD2Ev.exit ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15JoinHTScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1815 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !544  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !545  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #40
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !544
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
end_hunk_0
