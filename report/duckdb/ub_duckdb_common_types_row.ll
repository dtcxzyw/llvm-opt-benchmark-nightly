Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_row?download=true
inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN6duckdb20PartitionedTupleData13AppendUnifiedERNS_31PartitionedTupleDataAppendStateERNS_9DataChunkERKNS_15SelectionVectorEm:bb.a
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 104
  %i.bk = icmp ult i64 %i.bd, %i.bj
  br i1 %i.bk, label %.lr.ph.i, label %_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit, !llvm.loop !4

_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit: ; preds = %.lr.ph.i, %_ZSt6fill_nIPmmiET_S1_T0_RKT1_.exit.i, %bb.e
  tail call void @_ZN6duckdb20PartitionedTupleData16BuildBufferSpaceERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(784) %1)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !109
  %i.bn = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNK6duckdb19TupleDataCollection7ScatterERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.bn, ptr noundef nonnull align 8 dereferenceable(488) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.d)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit, %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !233
  %i.bs = add i64 %i.br, %i.d
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb20PartitionedTupleData15UseFixedSizeMapEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.e = icmp ult i64 %i.d, 256
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20PartitionedTupleData17BuildPartitionSelERNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(784) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0), !inline_history !145
  %i.e = icmp ult i64 %i.d, 256
  %i.f = load ptr, ptr %0, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(152) %0) ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb1EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(784) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb0EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(784) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZN6duckdb31PartitionedTupleDataAppendState34GetPartitionIndexIfSinglePartitionEb(ptr noundef nonnull align 8 dereferenceable(784) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i64, ptr %i.b, align 8, !tbaa !248
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249, !noalias !681 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !96, !noalias !681
  %i.h = and i8 %i.g, 1
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %._crit_edge30.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge30.i.i:                                ; preds = %bb.c
  %i.i = load i64, ptr %i.a, align 8, !tbaa !250, !noalias !682 ; 2 uses
  %i.j = lshr i64 %i.i, 3                         ; 5 uses
  %i.k = and i64 %i.i, 7                          ; 5 uses
  br label %.thread22.i.i.outer

.thread22.i.i.outer:                              ; preds = %.thread22.sink.split.i.i, %._crit_edge30.i.i
  %.ph27 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %._crit_edge30.i.i ] ; 2 uses
  %.ph28 = phi i64 [ %i.aw, %.thread22.sink.split.i.i ], [ 0, %._crit_edge30.i.i ] ; 6 uses
  br label %.thread22.i.i

.thread22.i.i:                                    ; preds = %.thread22.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph27, %.thread22.i.i.outer ] ; 3 uses
  %i.l = phi i64 [ %i.k, %._crit_edge.i.i ], [ %.ph27, %.thread22.i.i.outer ] ; 6 uses
  %i.m = phi i64 [ %i.j, %._crit_edge.i.i ], [ %.ph28, %.thread22.i.i.outer ] ; 6 uses
  %i.n = icmp ult i64 %i.m, %i.j
  br i1 %i.n, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.thread22.i.i
  %i.o = icmp eq i64 %i.m, %i.j
  %i.p = icmp samesign ult i64 %i.l, %i.k
  %or.cond.i.i = and i1 %i.p, %i.o
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i: ; preds = %bb.d, %.thread22.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.r = load i8, ptr %i.q, align 1, !tbaa !96, !noalias !681 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  %i.t = icmp eq i64 %i.m, %i.j                   ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  br i1 %i.t, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.f:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.u = select i1 %i.t, i64 %i.k, i64 8          ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.l, %i.u
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.v = zext i8 %i.r to i32                      ; 3 uses
  %i.w = trunc nuw nsw i64 %i.l to i32
  %i.x = shl nuw nsw i32 1, %i.w
  %i.y = and i32 %i.x, %i.v
  %.not24.i3.i = icmp eq i32 %i.y, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.z = add nuw nsw i64 %i.l, 1                  ; 5 uses
  %exitcond.not.i.i22 = icmp eq i64 %i.z, %i.u
  br i1 %exitcond.not.i.i22, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !5

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.aa = xor i64 %i.l, -1
  %i.ab = add nsw i64 %i.u, %i.aa                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !5

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.ab, -16                     ; 3 uses
  %i.ac = or disjoint i64 %i.z, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ad = trunc nuw nsw i64 %i.z to i32
  %broadcast.splatinsert23 = insertelement <16 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat24 = shufflevector <16 x i32> %broadcast.splatinsert23, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat24, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ae = and <16 x i32> %vec.ind, splat (i32 255)
  %i.af = shl nuw <16 x i32> splat (i32 1), %i.ae
  %i.ag = and <16 x i32> %i.af, %broadcast.splat
  %.fr = freeze <16 x i32> %i.ag
  %i.ah = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !5

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph = phi i64 [ %i.z, %.lr.ph.i.i.lr.ph ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.ak = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ah, i1 false)
  %i.al = add i64 %index, %i.ak
  %i.am = add i64 %i.z, %i.al
  br label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.an = phi i64 [ %i.as, %.lr.ph.i ], [ %.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 255
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.v
  %.not24.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.as = add nsw i64 %i.an, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.u
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !680

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.f
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.f ], [ %i.u, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.u, %.lr.ph.i.preheader ]
  %i.at = phi i64 [ %i.l, %bb.f ], [ %i.u, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.u, %.lr.ph.i.preheader ]
  %i.au = icmp ne i64 %i.m, %i.j
  %i.av = icmp ne i64 %i.at, %i.k
  %.not3.i.i.i = or i1 %i.au, %i.av
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %.thread22.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.e
  %i.aw = add i64 %i.m, 1
  br label %.thread22.i.i.outer

_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.d, %.lr.ph.i.preheader.i, %bb.e, %.lr.ph.i.i, %vector.early.exit, %bb.c
  %.sroa.3.0 = phi i64 [ 0, %bb.c ], [ %.ph28, %vector.early.exit ], [ %.ph28, %.lr.ph.i.i ], [ %.ph28, %bb.e ], [ %.ph28, %.lr.ph.i.preheader.i ], [ %.ph28, %bb.d ]
  %.sroa.8.0 = phi i64 [ 0, %bb.c ], [ %i.am, %vector.early.exit ], [ %i.an, %.lr.ph.i.i ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.d ], [ %i.k, %bb.e ]
  %i.ax = shl i64 %.sroa.3.0, 3
  %i.ay = add i64 %i.ax, %.sroa.8.0
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ay)
  %i.az = load i64, ptr %2, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !260
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !261
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !264
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bg)
  %i.bh = load i64, ptr %3, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %.sroa.02.0 = phi i64 [ %i.az, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit ], [ -1, %bb.b ], [ %i.bh, %bb.h ], [ -1, %bb.g ]
  ret i64 %.sroa.02.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !265    ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection13AppendUnifiedERNS_17TupleDataPinStateERNS_19TupleDataChunkStateERNS_9DataChunkERKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(488) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %5, -1
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = select i1 %i.a, i64 %i.c, i64 %5         ; 7 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !266, !nonnull !107, !align !108 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load i8, ptr %i.h, align 8, !tbaa !209, !range !210, !noundef !107
  %i.j = trunc nuw i8 %i.i to i1
end_hunk_0
begin_hunk_1_@_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb1EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm:bb.a

.loopexit110:                                     ; preds = %bb.j, %.preheader109, %bb.f
  %i.de = load i64, ptr %i.d, align 8, !tbaa !248
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit110
  %i.dg = load ptr, ptr %1, align 8, !tbaa !125   ; 2 uses
  %.not100 = icmp eq ptr %i.dg, null
  %.not139 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not100, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %bb.k
  br i1 %.not139, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph: ; preds = %.preheader101
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !125
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

.preheader:                                       ; preds = %bb.k
  br i1 %.not139, label %.loopexit, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !125 ; 2 uses
  %min.iters.check225 = icmp ult i64 %2, 16
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph134
  %i.dl = add i64 %2, -1                          ; 2 uses
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = icmp eq i64 %i.dm, 4294967295
  %i.do = icmp ugt i64 %i.dl, 4294967295
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %scalar.ph224.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.scevcheck
  %n.vec227 = and i64 %2, 8589934584              ; 3 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next231, %vector.body228 ] ; 2 uses
  %vec.ind230 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph226 ], [ %vec.ind.next232, %vector.body228 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind230, splat (i32 4)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index229 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <4 x i32> %vec.ind230, ptr %i.dq, align 4, !tbaa !62
  store <4 x i32> %step.add, ptr %i.dr, align 4, !tbaa !62
  %index.next231 = add nuw i64 %index229, 8       ; 2 uses
  %vec.ind.next232 = add <4 x i32> %vec.ind230, splat (i32 8)
  %i.ds = icmp eq i64 %index.next231, %n.vec227
  br i1 %i.ds, label %middle.block233, label %vector.body228, !llvm.loop !699

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %2, %n.vec227
  br i1 %cmp.n234, label %.loopexit, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %vector.scevcheck, %.lr.ph134, %middle.block233
  %indvars.iv155.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph134 ], [ %n.vec227, %middle.block233 ]
  br label %scalar.ph224

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph ], [ %indvars.iv.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !62
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dv
  %i.dx = trunc nuw i64 %indvars.iv to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !62
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dy = and i64 %indvars.iv.next, 4294967295
  %i.dz = icmp ugt i64 %2, %i.dy
  br i1 %i.dz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %.loopexit, !llvm.loop !700

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %scalar.ph224 ], [ %indvars.iv155.ph, %scalar.ph224.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv155
  %i.eb = trunc nuw i64 %indvars.iv155 to i32
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !62
  %indvars.iv.next156 = add i64 %indvars.iv155, 1 ; 2 uses
  %i.ec = and i64 %indvars.iv.next156, 4294967295
  %i.ed = icmp ugt i64 %2, %i.ec
  br i1 %i.ed, label %scalar.ph224, label %.loopexit, !llvm.loop !701

bb.l:                                             ; preds = %.loopexit110
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !249, !noalias !712 ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !96, !noalias !712
  %i.eg = and i8 %i.ef, 1
  %.not.i78 = icmp eq i8 %i.eg, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !250, !noalias !107 ; 2 uses
  %i.eh = lshr i64 %.pre, 3                       ; 12 uses
  %i.ei = and i64 %.pre, 7                        ; 12 uses
  br i1 %.not.i78, label %._crit_edge30.i.i.outer, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge30.i.i.outer:                          ; preds = %bb.l, %.thread22.sink.split.i.i
  %.ph274 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %bb.l ] ; 2 uses
  %.ph275 = phi i64 [ %i.fu, %.thread22.sink.split.i.i ], [ 0, %bb.l ] ; 6 uses
  br label %._crit_edge30.i.i

._crit_edge30.i.i:                                ; preds = %._crit_edge30.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph274, %._crit_edge30.i.i.outer ] ; 3 uses
  %i.ej = phi i64 [ %i.ei, %._crit_edge.i.i ], [ %.ph274, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.ek = phi i64 [ %i.eh, %._crit_edge.i.i ], [ %.ph275, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.eh
  br i1 %i.el, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge30.i.i
  %i.em = icmp eq i64 %i.ek, %i.eh
  %i.en = icmp samesign ult i64 %i.ej, %i.ei
  %or.cond.i.i = and i1 %i.en, %i.em
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i: ; preds = %bb.m, %._crit_edge30.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ek
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !96, !noalias !712 ; 2 uses
  %i.eq = icmp eq i8 %i.ep, 0
  %i.er = icmp eq i64 %i.ek, %i.eh                ; 2 uses
  br i1 %i.eq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  br i1 %i.er, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.o:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.es = select i1 %i.er, i64 %i.ei, i64 8       ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.ej, %i.es
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o
  %i.et = zext i8 %i.ep to i32                    ; 3 uses
  %i.eu = trunc nuw nsw i64 %i.ej to i32
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = and i32 %i.ev, %i.et
  %.not24.i3.i = icmp eq i32 %i.ew, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.ex = add nuw nsw i64 %i.ej, 1                ; 5 uses
  %exitcond.not.i.i201 = icmp eq i64 %i.ex, %i.es
  br i1 %exitcond.not.i.i201, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !5

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.ey = xor i64 %i.ej, -1
  %i.ez = add nsw i64 %i.es, %i.ey                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ez, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !5

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.ez, -16                     ; 3 uses
  %i.fa = or disjoint i64 %i.ex, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fb = trunc nuw nsw i64 %i.ex to i32
  %broadcast.splatinsert203 = insertelement <16 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat204 = shufflevector <16 x i32> %broadcast.splatinsert203, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat204, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fc = and <16 x i32> %vec.ind, splat (i32 255)
  %i.fd = shl nuw <16 x i32> splat (i32 1), %i.fc
  %i.fe = and <16 x i32> %i.fd, %broadcast.splat
  %.fr = freeze <16 x i32> %i.fe
  %i.ff = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.fg = bitcast <16 x i1> %i.ff to i16
  %.not236 = icmp eq i16 %i.fg, 0
  br i1 %.not236, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !704

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !5

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph271 = phi i64 [ %i.ex, %.lr.ph.i.i.lr.ph ], [ %i.fa, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.fi = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ff, i1 false)
  %i.fj = add i64 %index, %i.fi
  %i.fk = add i64 %i.ex, %i.fj
  br label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.fl = phi i64 [ %i.fq, %.lr.ph.i ], [ %.ph271, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = and i32 %i.fm, 255
  %i.fo = shl nuw i32 1, %i.fn
  %i.fp = and i32 %i.fo, %i.et
  %.not24.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.fq = add nsw i64 %i.fl, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fq, %i.es
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !705

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.o
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.o ], [ %i.es, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.es, %.lr.ph.i.preheader ]
  %i.fr = phi i64 [ %i.ej, %bb.o ], [ %i.es, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.es, %.lr.ph.i.preheader ]
  %i.fs = icmp ne i64 %i.ek, %i.eh
  %i.ft = icmp ne i64 %i.fr, %i.ei
  %.not3.i.i.i = or i1 %i.fs, %i.ft
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %._crit_edge30.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.n
  %i.fu = add i64 %i.ek, 1
  br label %._crit_edge30.i.i.outer

_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.m, %.lr.ph.i.preheader.i, %bb.n, %.lr.ph.i.i, %vector.early.exit, %bb.l
  %.sroa.583.1 = phi i64 [ %.ph275, %vector.early.exit ], [ 0, %bb.l ], [ %.ph275, %.lr.ph.i.i ], [ %.ph275, %bb.n ], [ %.ph275, %.lr.ph.i.preheader.i ], [ %.ph275, %bb.m ] ; 2 uses
  %.sroa.14.1 = phi i64 [ %i.fk, %vector.early.exit ], [ 0, %bb.l ], [ %i.fl, %.lr.ph.i.i ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.m ], [ %i.ei, %bb.n ] ; 2 uses
  %i.fv = icmp ne i64 %.sroa.583.1, %i.eh
  %i.fw = icmp ne i64 %.sroa.14.1, %i.ei
  %.not3.i124 = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %.not3.i124, label %._crit_edge30.i.lr.ph, label %._crit_edge

._crit_edge30.i.lr.ph:                            ; preds = %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !313
  br label %._crit_edge30.i

._crit_edge:                                      ; preds = %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gb = load ptr, ptr %1, align 8, !tbaa !125
  %.not = icmp eq ptr %i.gb, null
  %.not137 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not, label %.preheader103, label %.preheader105

.preheader105:                                    ; preds = %._crit_edge
  br i1 %.not137, label %.loopexit, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader105
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.s

.preheader103:                                    ; preds = %._crit_edge
  br i1 %.not137, label %.loopexit, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader103
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.t

._crit_edge30.i:                                  ; preds = %._crit_edge30.i.lr.ph, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit
  %.074127 = phi i64 [ 0, %._crit_edge30.i.lr.ph ], [ %i.gi, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.14.0126 = phi i64 [ %.sroa.14.1, %._crit_edge30.i.lr.ph ], [ %.sroa.14.7, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.583.0125 = phi i64 [ %.sroa.583.1, %._crit_edge30.i.lr.ph ], [ %.ph245, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.idx.i.i.i79 = shl i64 %.sroa.583.0125, 7
  %i.ge = getelementptr i8, ptr %i.fy, i64 %.idx.i.i.i79
  %i.gf = getelementptr [16 x i8], ptr %i.ge, i64 %.sroa.14.0126 ; 2 uses
  store i64 %.074127, ptr %i.gf, align 8, !tbaa !295
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !314
  %i.gi = add i64 %i.gh, %.074127
  %i.gj = add i64 %.sroa.14.0126, 1               ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 8                    ; 2 uses
  %i.gl = zext i1 %i.gk to i64
  %.sroa.583.2 = add i64 %.sroa.583.0125, %i.gl
  %.sroa.14.2 = select i1 %i.gk, i64 0, i64 %i.gj
  br label %.thread22.i.outer

.thread22.i.outer:                                ; preds = %.thread22.sink.split.i, %._crit_edge30.i
  %.ph244 = phi i64 [ 0, %.thread22.sink.split.i ], [ %.sroa.14.2, %._crit_edge30.i ] ; 2 uses
  %.ph245 = phi i64 [ %i.hx, %.thread22.sink.split.i ], [ %.sroa.583.2, %._crit_edge30.i ] ; 3 uses
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread22.i.outer, %._crit_edge.i
  %.sroa.14.3 = phi i64 [ %.sroa.14.4, %._crit_edge.i ], [ %.ph244, %.thread22.i.outer ] ; 3 uses
  %i.gm = phi i64 [ %i.ei, %._crit_edge.i ], [ %.ph244, %.thread22.i.outer ] ; 6 uses
  %i.gn = phi i64 [ %i.eh, %._crit_edge.i ], [ %.ph245, %.thread22.i.outer ] ; 6 uses
  %i.go = icmp ult i64 %i.gn, %i.eh
  br i1 %i.go, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %.thread22.i
  %i.gp = icmp eq i64 %i.gn, %i.eh
  %i.gq = icmp ult i64 %i.gm, %i.ei
  %or.cond.i = and i1 %i.gq, %i.gp
  br i1 %or.cond.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i: ; preds = %bb.p, %.thread22.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.gn
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !96  ; 2 uses
  %i.gt = icmp eq i8 %i.gs, 0
  %i.gu = icmp eq i64 %i.gn, %i.eh                ; 2 uses
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i
  br i1 %i.gu, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, label %.thread22.sink.split.i

bb.r:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i
  %i.gv = select i1 %i.gu, i64 %i.ei, i64 8       ; 8 uses
  %.not27.i = icmp ult i64 %i.gm, %i.gv
  br i1 %.not27.i, label %.lr.ph.i80.preheader, label %._crit_edge.i

.lr.ph.i80.preheader:                             ; preds = %bb.r
  %i.gw = zext i8 %i.gs to i32                    ; 3 uses
  %i.gx = trunc nuw nsw i64 %i.gm to i32
  %i.gy = shl nuw nsw i32 1, %i.gx
  %i.gz = and i32 %i.gy, %i.gw
  %.not24.i119 = icmp eq i32 %i.gz, 0
  br i1 %.not24.i119, label %.lr.ph120.preheader, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

.lr.ph120.preheader:                              ; preds = %.lr.ph.i80.preheader
  %i.ha = add nsw i64 %i.gm, 1                    ; 5 uses
  %exitcond.not.i202 = icmp eq i64 %i.ha, %i.gv
  br i1 %exitcond.not.i202, label %._crit_edge.i, label %.lr.ph.i80.lr.ph, !llvm.loop !5

.lr.ph.i80.lr.ph:                                 ; preds = %.lr.ph120.preheader
  %i.hb = xor i64 %i.gm, -1
  %i.hc = add i64 %i.gv, %i.hb                    ; 3 uses
  %min.iters.check206 = icmp ult i64 %i.hc, 48
  br i1 %min.iters.check206, label %.lr.ph.i80.preheader242, label %vector.ph207, !llvm.loop !5

vector.ph207:                                     ; preds = %.lr.ph.i80.lr.ph
  %n.vec208 = and i64 %i.hc, -16                  ; 3 uses
  %i.hd = add i64 %i.ha, %n.vec208
  %broadcast.splatinsert209 = insertelement <16 x i32> poison, i32 %i.gw, i64 0
  %broadcast.splat210 = shufflevector <16 x i32> %broadcast.splatinsert209, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.he = trunc i64 %i.ha to i32
  %broadcast.splatinsert211 = insertelement <16 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat212 = shufflevector <16 x i32> %broadcast.splatinsert211, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction213 = add <16 x i32> %broadcast.splat212, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body.interim219, %vector.ph207
  %index215 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body.interim219 ] ; 2 uses
  %vec.ind216 = phi <16 x i32> [ %induction213, %vector.ph207 ], [ %vec.ind.next218, %vector.body.interim219 ] ; 2 uses
  %i.hf = and <16 x i32> %vec.ind216, splat (i32 255)
  %i.hg = shl nuw <16 x i32> splat (i32 1), %i.hf
  %i.hh = and <16 x i32> %i.hg, %broadcast.splat210
  %.fr237 = freeze <16 x i32> %i.hh
  %i.hi = icmp ne <16 x i32> %.fr237, zeroinitializer ; 2 uses
  %i.hj = bitcast <16 x i1> %i.hi to i16
  %.not238 = icmp eq i16 %i.hj, 0
  br i1 %.not238, label %vector.body.interim219, label %vector.early.exit222

vector.body.interim219:                           ; preds = %vector.body214
  %vec.ind.next218 = add <16 x i32> %vec.ind216, splat (i32 16)
  %index.next217 = add nuw i64 %index215, 16      ; 2 uses
  %i.hk = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.hk, label %middle.block220, label %vector.body214, !llvm.loop !706

middle.block220:                                  ; preds = %vector.body.interim219
  %cmp.n221 = icmp eq i64 %i.hc, %n.vec208
  br i1 %cmp.n221, label %.lr.ph120.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i80.preheader242, !llvm.loop !5

.lr.ph.i80.preheader242:                          ; preds = %.lr.ph.i80.lr.ph, %middle.block220
  %.ph = phi i64 [ %i.ha, %.lr.ph.i80.lr.ph ], [ %i.hd, %middle.block220 ]
  br label %.lr.ph.i80

vector.early.exit222:                             ; preds = %vector.body214
  %i.hl = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.hi, i1 false)
  %i.hm = add i64 %index215, %i.hl
  %i.hn = add i64 %i.ha, %i.hm
  br label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader242, %.lr.ph120
  %i.ho = phi i64 [ %i.ht, %.lr.ph120 ], [ %.ph, %.lr.ph.i80.preheader242 ] ; 3 uses
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = and i32 %i.hp, 255
  %i.hr = shl nuw i32 1, %i.hq
  %i.hs = and i32 %i.hr, %i.gw
  %.not24.i = icmp eq i32 %i.hs, 0
  br i1 %.not24.i, label %.lr.ph120, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, !llvm.loop !5

.lr.ph120:                                        ; preds = %.lr.ph.i80
  %i.ht = add nsw i64 %i.ho, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ht, %i.gv
  br i1 %exitcond.not.i, label %.lr.ph120.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i80, !llvm.loop !707

.lr.ph120.._crit_edge.i.loopexit_crit_edge:       ; preds = %.lr.ph120, %middle.block220
  br label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.lr.ph120.preheader, %.lr.ph120.._crit_edge.i.loopexit_crit_edge, %bb.r
  %.sroa.14.4 = phi i64 [ %.sroa.14.3, %bb.r ], [ %i.gv, %.lr.ph120.._crit_edge.i.loopexit_crit_edge ], [ %i.gv, %.lr.ph120.preheader ]
  %i.hu = phi i64 [ %i.gm, %bb.r ], [ %i.gv, %.lr.ph120.._crit_edge.i.loopexit_crit_edge ], [ %i.gv, %.lr.ph120.preheader ]
  %i.hv = icmp ne i64 %i.gn, %i.eh
  %i.hw = icmp ne i64 %i.hu, %i.ei
  %.not3.i.i = or i1 %i.hv, %i.hw
  br i1 %.not3.i.i, label %.thread22.sink.split.i, label %.thread22.i

.thread22.sink.split.i:                           ; preds = %._crit_edge.i, %bb.q
  %i.hx = add i64 %i.gn, 1
  br label %.thread22.i.outer

_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit: ; preds = %bb.p, %.lr.ph.i80.preheader, %bb.q, %.lr.ph.i80, %vector.early.exit222
  %.sroa.14.7 = phi i64 [ %i.ho, %.lr.ph.i80 ], [ %i.hn, %vector.early.exit222 ], [ %.sroa.14.3, %.lr.ph.i80.preheader ], [ %.sroa.14.3, %bb.p ], [ %i.ei, %bb.q ] ; 2 uses
  %i.hy = icmp ne i64 %.ph245, %i.eh
  %i.hz = icmp ne i64 %.sroa.14.7, %i.ei
  %.not3.i = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %.not3.i, label %._crit_edge30.i, label %._crit_edge, !llvm.loop !708

bb.s:                                             ; preds = %.lr.ph129, %bb.s
  %.072128 = phi i64 [ 0, %.lr.ph129 ], [ %i.jl, %bb.s ] ; 3 uses
  %i.ia = load ptr, ptr %1, align 8, !tbaa !125
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.072128
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !62 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.072128 ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !128 ; 2 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = load ptr, ptr %i.e, align 8, !tbaa !249 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.if
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !96
  %i.ij = zext i8 %i.ii to i32
  %i.ik = trunc i64 %i.ie to i32
  %i.il = and i32 %i.ik, 7
  %i.im = xor i32 %i.ij, -1
  %i.in = lshr i32 %i.im, %i.il
  %i.io = and i32 %i.in, 1
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = load i64, ptr %i.d, align 8, !tbaa !248
  %i.ir = add i64 %i.iq, %i.ip
  store i64 %i.ir, ptr %i.d, align 8, !tbaa !248
  %i.is = load i64, ptr %i.id, align 8, !tbaa !128 ; 2 uses
  %i.it = lshr i64 %i.is, 3
  %i.iu = trunc i64 %i.is to i8
  %i.iv = and i8 %i.iu, 7
  %i.iw = shl nuw i8 1, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.it ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !96
  %i.iz = or i8 %i.iw, %i.iy
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !96
  %i.ja = load i64, ptr %i.id, align 8, !tbaa !128
  %i.jb = load ptr, ptr %i.gc, align 8, !tbaa !313
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.ja ; 2 uses
  %i.jd = zext i32 %i.ic to i64
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !128 ; 3 uses
  %i.jf = trunc i64 %i.je to i32
  %i.jg = load ptr, ptr %i.ga, align 8, !tbaa !125
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jd
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !62
  %i.ji = add i64 %i.je, 1
  store i64 %i.ji, ptr %i.jc, align 8, !tbaa !128
  %i.jj = load ptr, ptr %i.fz, align 8, !tbaa !125
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.je
  store i32 %i.ic, ptr %i.jk, align 4, !tbaa !62
  %i.jl = add nuw i64 %.072128, 1                 ; 2 uses
  %exitcond152.not = icmp eq i64 %i.jl, %2
  br i1 %exitcond152.not, label %.loopexit, label %bb.s, !llvm.loop !709

bb.t:                                             ; preds = %.lr.ph131, %bb.t
  %.0130 = phi i64 [ 0, %.lr.ph131 ], [ %i.ku, %bb.t ] ; 4 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0130 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !128 ; 2 uses
  %i.jo = lshr i64 %i.jn, 3
  %i.jp = load ptr, ptr %i.e, align 8, !tbaa !249 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jo
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !96
  %i.js = zext i8 %i.jr to i32
  %i.jt = trunc i64 %i.jn to i32
  %i.ju = and i32 %i.jt, 7
  %i.jv = xor i32 %i.js, -1
  %i.jw = lshr i32 %i.jv, %i.ju
  %i.jx = and i32 %i.jw, 1
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = load i64, ptr %i.d, align 8, !tbaa !248
  %i.ka = add i64 %i.jz, %i.jy
  store i64 %i.ka, ptr %i.d, align 8, !tbaa !248
  %i.kb = load i64, ptr %i.jm, align 8, !tbaa !128 ; 2 uses
  %i.kc = lshr i64 %i.kb, 3
  %i.kd = trunc i64 %i.kb to i8
  %i.ke = and i8 %i.kd, 7
  %i.kf = shl nuw i8 1, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.kc ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !96
  %i.ki = or i8 %i.kf, %i.kh
  store i8 %i.ki, ptr %i.kg, align 1, !tbaa !96
  %i.kj = load i64, ptr %i.jm, align 8, !tbaa !128
  %i.kk = load ptr, ptr %i.gd, align 8, !tbaa !313
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kj ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !128 ; 3 uses
  %i.kn = trunc i64 %i.km to i32
  %i.ko = load ptr, ptr %i.ga, align 8, !tbaa !125
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.0130
  store i32 %i.kn, ptr %i.kp, align 4, !tbaa !62
  %i.kq = add i64 %i.km, 1
  store i64 %i.kq, ptr %i.kl, align 8, !tbaa !128
  %i.kr = trunc i64 %.0130 to i32
  %i.ks = load ptr, ptr %i.fz, align 8, !tbaa !125
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.km
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !62
  %i.ku = add nuw i64 %.0130, 1                   ; 2 uses
  %exitcond153.not = icmp eq i64 %i.ku, %2
  br i1 %exitcond153.not, label %.loopexit, label %bb.t, !llvm.loop !710

.loopexit:                                        ; preds = %bb.s, %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %scalar.ph224, %middle.block233, %.preheader105, %.preheader103, %.preheader101, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb0EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(784) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 10 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.06.i.i.i, align 8, !tbaa !294 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #30
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !315
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !316
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit
  %i.l = load i8, ptr %0, align 8, !tbaa !312
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.c, label %.preheader138

.preheader138:                                    ; preds = %bb.b
  %.not170 = icmp eq i64 %2, 0
  br i1 %.not170, label %.loopexit139, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader138
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.g

bb.c:                                             ; preds = %bb.b, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit
  %i.o = load i64, ptr %i.c, align 8, !tbaa !128  ; 6 uses
  %i.p = load i64, ptr %i.h, align 8, !tbaa !316  ; 2 uses
  %i.q = urem i64 %i.o, %i.p                      ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !315
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !317  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !294  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !319
  %i.y = icmp eq i64 %i.o, %i.x
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = icmp eq i64 %i.o, %i.z
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ad = icmp eq i64 %i.o, %i.aj
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = icmp eq i64 %i.o, %i.ae
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !713

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.020.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.u, %bb.d ]
  %i.ah = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !294 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb0EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm:bb.a
  %i.fw = load i64, ptr %i.h, align 8, !tbaa !316 ; 2 uses
  %i.fx = urem i64 %i.fv, %i.fw                   ; 3 uses
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !315
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !317 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i105, label %.loopexit.i.i111, label %bb.u

bb.u:                                             ; preds = %.lr.ph166
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !294 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !319
  %i.gf = icmp eq i64 %i.fv, %i.ge
  %i.gg = load i64, ptr %i.gc, align 8
  %i.gh = icmp eq i64 %i.fv, %i.gg
  %i.gi = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %i.gi, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, label %.lr.ph.i.i.i.i106

bb.v:                                             ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gk = icmp eq i64 %i.fv, %i.gq
  %i.gl = load i64, ptr %i.gj, align 8
  %i.gm = icmp eq i64 %i.fv, %i.gl
  %i.gn = select i1 %i.gk, i1 %i.gm, i1 false
  br i1 %i.gn, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, label %.lr.ph.i.i.i.i106, !llvm.loop !713

.lr.ph.i.i.i.i106:                                ; preds = %bb.u, %bb.v
  %.020.i.i.i.i107 = phi ptr [ %i.go, %bb.v ], [ %i.gb, %bb.u ]
  %i.go = load ptr, ptr %.020.i.i.i.i107, align 8, !tbaa !294 ; 5 uses
  %.not18.i.i.i.i108 = icmp eq ptr %i.go, null
  br i1 %.not18.i.i.i.i108, label %.loopexit.i.i111, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i106
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !319 ; 2 uses
  %i.gr = urem i64 %i.gq, %i.fw
  %.not19.i.i.i.i109 = icmp eq i64 %i.gr, %i.fx
  br i1 %.not19.i.i.i.i109, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i110, !llvm.loop !713

..loopexit_crit_edge21.i.i.i.i110:                ; preds = %bb.w
  br label %.loopexit.i.i111, !llvm.loop !713

.loopexit.i.i111:                                 ; preds = %.lr.ph.i.i.i.i106, %..loopexit_crit_edge21.i.i.i.i110, %.lr.ph166
  %i.gs = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 5 uses
  store ptr null, ptr %i.gs, align 8, !tbaa !294
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i64, ptr %i.fu, align 8, !tbaa !128
  store i64 %i.gu, ptr %i.gt, align 8, !tbaa !264
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  %i.gw = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.fx, i64 noundef %i.fv, ptr noundef nonnull %i.gs, i64 noundef 1)
          to label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i112

_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i112: ; preds = %.loopexit.i.i111
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115: ; preds = %bb.v, %bb.u, %.loopexit.i.i111
  %.pn.i.i113 = phi ptr [ %i.gw, %.loopexit.i.i111 ], [ %i.gb, %bb.u ], [ %i.go, %bb.v ]
  %.1.i.i114 = getelementptr inbounds nuw i8, ptr %.pn.i.i113, i64 16 ; 2 uses
  %i.gy = load i64, ptr %.1.i.i114, align 8, !tbaa !128 ; 3 uses
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = load ptr, ptr %i.dy, align 8, !tbaa !125
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.0165
  store i32 %i.gz, ptr %i.hb, align 4, !tbaa !62
  %i.hc = add i64 %i.gy, 1
  store i64 %i.hc, ptr %.1.i.i114, align 8, !tbaa !128
  %i.hd = trunc i64 %.0165 to i32
  %i.he = load ptr, ptr %i.dx, align 8, !tbaa !125
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.gy
  store i32 %i.hd, ptr %i.hf, align 4, !tbaa !62
  %i.hg = add nuw i64 %.0165, 1                   ; 2 uses
  %exitcond198.not = icmp eq i64 %i.hg, %2
  br i1 %exitcond198.not, label %.loopexit, label %.lr.ph166, !llvm.loop !721

.loopexit:                                        ; preds = %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %scalar.ph, %middle.block, %.preheader132, %.preheader130, %.preheader128, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20PartitionedTupleData16BuildBufferSpaceILb1EEEvRNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(784) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249, !noalias !732 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !96, !noalias !732
  %i.e = and i8 %i.d, 1
  %.not.i = icmp eq i8 %i.e, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !250, !noalias !107 ; 2 uses
  %i.f = lshr i64 %.pre, 3                        ; 6 uses
  %i.g = and i64 %.pre, 7                         ; 6 uses
  br i1 %.not.i, label %._crit_edge30.i.i.outer, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge30.i.i.outer:                          ; preds = %bb.a, %.thread22.sink.split.i.i
  %.ph146 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %bb.a ] ; 2 uses
  %.ph147 = phi i64 [ %i.as, %.thread22.sink.split.i.i ], [ 0, %bb.a ] ; 6 uses
  br label %._crit_edge30.i.i

._crit_edge30.i.i:                                ; preds = %._crit_edge30.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph146, %._crit_edge30.i.i.outer ] ; 3 uses
  %i.h = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.ph146, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.i = phi i64 [ %i.f, %._crit_edge.i.i ], [ %.ph147, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge30.i.i
  %i.k = icmp eq i64 %i.i, %i.f
  %i.l = icmp samesign ult i64 %i.h, %i.g
  %or.cond.i.i = and i1 %i.l, %i.k
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i: ; preds = %bb.b, %._crit_edge30.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !96, !noalias !732 ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  %i.p = icmp eq i64 %i.i, %i.f                   ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i
  br i1 %i.p, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.d:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i
  %i.q = select i1 %i.p, i64 %i.g, i64 8          ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.h, %i.q
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.r = zext i8 %i.n to i32                      ; 3 uses
  %i.s = trunc nuw nsw i64 %i.h to i32
  %i.t = shl nuw nsw i32 1, %i.s
  %i.u = and i32 %i.t, %i.r
  %.not24.i3.i = icmp eq i32 %i.u, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.v = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %exitcond.not.i.i89 = icmp eq i64 %i.v, %i.q
  br i1 %exitcond.not.i.i89, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !724

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.w = xor i64 %i.h, -1
  %i.x = add nsw i64 %i.q, %i.w                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !724

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.x, -16                      ; 3 uses
  %i.y = or disjoint i64 %i.v, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.z = trunc nuw nsw i64 %i.v to i32
  %broadcast.splatinsert91 = insertelement <16 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat92 = shufflevector <16 x i32> %broadcast.splatinsert91, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat92, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.aa = and <16 x i32> %vec.ind, splat (i32 255)
  %i.ab = shl nuw <16 x i32> splat (i32 1), %i.aa
  %i.ac = and <16 x i32> %i.ab, %broadcast.splat
  %.fr = freeze <16 x i32> %i.ac
  %i.ad = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !725

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !724

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph143 = phi i64 [ %i.v, %.lr.ph.i.i.lr.ph ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.ag = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ad, i1 false)
  %i.ah = add i64 %index, %i.ag
  %i.ai = add i64 %i.v, %i.ah
  br label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.aj = phi i64 [ %i.ao, %.lr.ph.i ], [ %.ph143, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 255
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.am, %i.r
  %.not24.i.i = icmp eq i32 %i.an, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !724

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ao = add nsw i64 %i.aj, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.q
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !726

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !724

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.d
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.d ], [ %i.q, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.q, %.lr.ph.i.preheader ]
  %i.ap = phi i64 [ %i.h, %bb.d ], [ %i.q, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.q, %.lr.ph.i.preheader ]
  %i.aq = icmp ne i64 %i.i, %i.f
  %i.ar = icmp ne i64 %i.ap, %i.g
  %.not3.i.i.i = or i1 %i.aq, %i.ar
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %._crit_edge30.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.c
  %i.as = add i64 %i.i, 1
  br label %._crit_edge30.i.i.outer

_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.b, %.lr.ph.i.preheader.i, %bb.c, %.lr.ph.i.i, %vector.early.exit, %bb.a
  %.sroa.15.1 = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.a ], [ %i.ai, %vector.early.exit ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.521.1 = phi i64 [ %.ph147, %.lr.ph.i.i ], [ 0, %bb.a ], [ %.ph147, %vector.early.exit ], [ %.ph147, %bb.c ], [ %.ph147, %.lr.ph.i.preheader.i ], [ %.ph147, %bb.b ] ; 2 uses
  %i.at = icmp ne i64 %.sroa.521.1, %i.f
  %i.au = icmp ne i64 %.sroa.15.1, %i.g
  %.not3.i44 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %.not3.i44, label %._crit_edge30.i.lr.ph, label %._crit_edge

._crit_edge30.i.lr.ph:                            ; preds = %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %._crit_edge30.i

._crit_edge:                                      ; preds = %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  ret void

._crit_edge30.i:                                  ; preds = %._crit_edge30.i.lr.ph, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit
  %.sroa.521.046 = phi i64 [ %.sroa.521.1, %._crit_edge30.i.lr.ph ], [ %.ph117, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit ] ; 3 uses
  %.sroa.15.045 = phi i64 [ %.sroa.15.1, %._crit_edge30.i.lr.ph ], [ %.sroa.15.7, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit ] ; 3 uses
  %i.ba = shl i64 %.sroa.521.046, 3
  %i.bb = add i64 %i.ba, %.sroa.15.045            ; 2 uses
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !109
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 4 uses
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !148
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %i.bb
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !313
  %.idx.i.i.i = shl i64 %.sroa.521.046, 7
  %i.bi = getelementptr i8, ptr %i.bh, i64 %.idx.i.i.i
  %i.bj = getelementptr [16 x i8], ptr %i.bi, i64 %.sroa.15.045 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !295
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !128 ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !178
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !268
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !269 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = getelementptr i8, ptr %i.bt, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !271 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !292
  %i.cc = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
  tail call void @_ZN6duckdb18TupleDataAllocator5BuildERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(128) %i.cc, ptr noundef nonnull align 8 dereferenceable(192) %i.bz, ptr noundef nonnull align 8 dereferenceable(49) %i.bg, ptr noundef nonnull align 8 dereferenceable(488) %i.ay, i64 noundef %i.bn, i64 noundef %i.bm)
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !292
  %i.ce = sub i64 %i.cd, %i.cb
  %i.cf = load i64, ptr %i.bo, align 8, !tbaa !178
  %i.cg = add i64 %i.ce, %i.cf                    ; 2 uses
  store i64 %i.cg, ptr %i.bo, align 8, !tbaa !178
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !293
  %i.cj = add i64 %i.ci, %i.bm
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !293
  %i.ck = sub i64 %i.cg, %i.bp
  %i.cl = load i64, ptr %i.az, align 8, !tbaa !179
  %i.cm = add i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.az, align 8, !tbaa !179
  %i.cn = add i64 %.sroa.15.045, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, 8                    ; 2 uses
  %.sroa.15.2 = select i1 %i.co, i64 0, i64 %i.cn
  %i.cp = zext i1 %i.co to i64
  %.sroa.521.2 = add i64 %.sroa.521.046, %i.cp
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !250, !noalias !733 ; 2 uses
  %i.cr = lshr i64 %i.cq, 3                       ; 6 uses
  %i.cs = and i64 %i.cq, 7                        ; 6 uses
  br label %.thread22.i.outer

.thread22.i.outer:                                ; preds = %.thread22.sink.split.i, %._crit_edge30.i
  %.ph116 = phi i64 [ 0, %.thread22.sink.split.i ], [ %.sroa.15.2, %._crit_edge30.i ] ; 2 uses
  %.ph117 = phi i64 [ %i.ef, %.thread22.sink.split.i ], [ %.sroa.521.2, %._crit_edge30.i ] ; 3 uses
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread22.i.outer, %._crit_edge.i
  %.sroa.15.3 = phi i64 [ %.sroa.15.4, %._crit_edge.i ], [ %.ph116, %.thread22.i.outer ] ; 3 uses
  %i.ct = phi i64 [ %i.cs, %._crit_edge.i ], [ %.ph116, %.thread22.i.outer ] ; 6 uses
  %i.cu = phi i64 [ %i.cr, %._crit_edge.i ], [ %.ph117, %.thread22.i.outer ] ; 6 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  br i1 %i.cv, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %.thread22.i
  %i.cw = icmp eq i64 %i.cu, %i.cr
  %i.cx = icmp ult i64 %i.ct, %i.cs
  %or.cond.i = and i1 %i.cx, %i.cw
  br i1 %or.cond.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i: ; preds = %bb.e, %.thread22.i
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !249
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cu
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !96  ; 2 uses
  %i.db = icmp eq i8 %i.da, 0
  %i.dc = icmp eq i64 %i.cu, %i.cr                ; 2 uses
  br i1 %i.db, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i
  br i1 %i.dc, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, label %.thread22.sink.split.i

bb.g:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i
  %i.dd = select i1 %i.dc, i64 %i.cs, i64 8       ; 8 uses
  %.not27.i = icmp ult i64 %i.ct, %i.dd
  br i1 %.not27.i, label %.lr.ph.i18.preheader, label %._crit_edge.i

.lr.ph.i18.preheader:                             ; preds = %bb.g
  %i.de = zext i8 %i.da to i32                    ; 3 uses
  %i.df = trunc nuw nsw i64 %i.ct to i32
  %i.dg = shl nuw nsw i32 1, %i.df
  %i.dh = and i32 %i.dg, %i.de
  %.not24.i40 = icmp eq i32 %i.dh, 0
  br i1 %.not24.i40, label %.lr.ph.preheader, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i18.preheader
  %i.di = add nsw i64 %i.ct, 1                    ; 5 uses
  %exitcond.not.i90 = icmp eq i64 %i.di, %i.dd
  br i1 %exitcond.not.i90, label %._crit_edge.i, label %.lr.ph.i18.lr.ph, !llvm.loop !724

.lr.ph.i18.lr.ph:                                 ; preds = %.lr.ph.preheader
  %i.dj = xor i64 %i.ct, -1
  %i.dk = add i64 %i.dd, %i.dj                    ; 3 uses
  %min.iters.check94 = icmp ult i64 %i.dk, 48
  br i1 %min.iters.check94, label %.lr.ph.i18.preheader114, label %vector.ph95, !llvm.loop !724

vector.ph95:                                      ; preds = %.lr.ph.i18.lr.ph
  %n.vec96 = and i64 %i.dk, -16                   ; 3 uses
  %i.dl = add i64 %i.di, %n.vec96
  %broadcast.splatinsert97 = insertelement <16 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat98 = shufflevector <16 x i32> %broadcast.splatinsert97, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dm = trunc i64 %i.di to i32
  %broadcast.splatinsert99 = insertelement <16 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat100 = shufflevector <16 x i32> %broadcast.splatinsert99, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction101 = add <16 x i32> %broadcast.splat100, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body.interim107, %vector.ph95
  %index103 = phi i64 [ 0, %vector.ph95 ], [ %index.next105, %vector.body.interim107 ] ; 2 uses
  %vec.ind104 = phi <16 x i32> [ %induction101, %vector.ph95 ], [ %vec.ind.next106, %vector.body.interim107 ] ; 2 uses
  %i.dn = and <16 x i32> %vec.ind104, splat (i32 255)
  %i.do = shl nuw <16 x i32> splat (i32 1), %i.dn
  %i.dp = and <16 x i32> %i.do, %broadcast.splat98
  %.fr112 = freeze <16 x i32> %i.dp
  %i.dq = icmp ne <16 x i32> %.fr112, zeroinitializer ; 2 uses
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %.not113 = icmp eq i16 %i.dr, 0
  br i1 %.not113, label %vector.body.interim107, label %vector.early.exit110

vector.body.interim107:                           ; preds = %vector.body102
  %vec.ind.next106 = add <16 x i32> %vec.ind104, splat (i32 16)
  %index.next105 = add nuw i64 %index103, 16      ; 2 uses
  %i.ds = icmp eq i64 %index.next105, %n.vec96
  br i1 %i.ds, label %middle.block108, label %vector.body102, !llvm.loop !729

middle.block108:                                  ; preds = %vector.body.interim107
  %cmp.n109 = icmp eq i64 %i.dk, %n.vec96
  br i1 %cmp.n109, label %.lr.ph.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i18.preheader114, !llvm.loop !724

.lr.ph.i18.preheader114:                          ; preds = %.lr.ph.i18.lr.ph, %middle.block108
  %.ph = phi i64 [ %i.di, %.lr.ph.i18.lr.ph ], [ %i.dl, %middle.block108 ]
  br label %.lr.ph.i18

vector.early.exit110:                             ; preds = %vector.body102
  %i.dt = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.dq, i1 false)
  %i.du = add i64 %index103, %i.dt
  %i.dv = add i64 %i.di, %i.du
  br label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader114, %.lr.ph
  %i.dw = phi i64 [ %i.eb, %.lr.ph ], [ %.ph, %.lr.ph.i18.preheader114 ] ; 3 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 255
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = and i32 %i.dz, %i.de
  %.not24.i = icmp eq i32 %i.ea, 0
  br i1 %.not24.i, label %.lr.ph, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, !llvm.loop !724

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.eb = add nsw i64 %i.dw, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %i.dd
  br i1 %exitcond.not.i, label %.lr.ph.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i18, !llvm.loop !730

.lr.ph.._crit_edge.i.loopexit_crit_edge:          ; preds = %.lr.ph, %middle.block108
  br label %._crit_edge.i, !llvm.loop !724

._crit_edge.i:                                    ; preds = %.lr.ph.preheader, %.lr.ph.._crit_edge.i.loopexit_crit_edge, %bb.g
  %.sroa.15.4 = phi i64 [ %.sroa.15.3, %bb.g ], [ %i.dd, %.lr.ph.._crit_edge.i.loopexit_crit_edge ], [ %i.dd, %.lr.ph.preheader ]
  %i.ec = phi i64 [ %i.ct, %bb.g ], [ %i.dd, %.lr.ph.._crit_edge.i.loopexit_crit_edge ], [ %i.dd, %.lr.ph.preheader ]
  %i.ed = icmp ne i64 %i.cu, %i.cr
  %i.ee = icmp ne i64 %i.ec, %i.cs
  %.not3.i.i = or i1 %i.ed, %i.ee
  br i1 %.not3.i.i, label %.thread22.sink.split.i, label %.thread22.i

.thread22.sink.split.i:                           ; preds = %._crit_edge.i, %bb.f
  %i.ef = add i64 %i.cu, 1
  br label %.thread22.i.outer

_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit: ; preds = %bb.e, %.lr.ph.i18.preheader, %bb.f, %.lr.ph.i18, %vector.early.exit110
  %.sroa.15.7 = phi i64 [ %i.dw, %.lr.ph.i18 ], [ %i.dv, %vector.early.exit110 ], [ %.sroa.15.3, %.lr.ph.i18.preheader ], [ %.sroa.15.3, %bb.e ], [ %i.cs, %bb.f ] ; 2 uses
  %i.eg = icmp ne i64 %.ph117, %i.cr
  %i.eh = icmp ne i64 %.sroa.15.7, %i.cs
  %.not3.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %.not3.i, label %._crit_edge30.i, label %._crit_edge, !llvm.loop !731
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(784) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi ptr [ %i.d, %.lr.ph ], [ %i.x, %bb.b ]
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.b ]  ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07
  %i.h = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.07
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !269  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !271  ; 2 uses
  %i.u = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t)
  tail call void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(192) %i.t)
  %i.v = add nuw i64 %.07, 1                      ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = icmp ult i64 %i.v, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !269  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271  ; 2 uses
  %i.k = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(192) %i.j)
  tail call void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %i.k, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %i.j)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20PartitionedTupleData7CombineERS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !233
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !320  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !320
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  br i1 %i.j, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.preheader

.preheader:                                       ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !109
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit, label %.lr.ph

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !320
  store <2 x ptr> %i.p, ptr %i.f, align 8, !tbaa !320
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !735
  store ptr %i.r, ptr %i.o, align 8, !tbaa !735
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.013 = phi i64 [ %i.y, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.013
  %i.x = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb19TupleDataCollection7CombineERS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.u, ptr noundef nonnull align 8 dereferenceable(192) %i.x)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = add nuw i64 %.013, 1                     ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit, !llvm.loop !734

bb.h:                                             ; preds = %bb.f, %bb.e, %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #31 ; 0 uses
  resume { ptr, i32 } %i.ag

_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit: ; preds = %bb.g, %.preheader, %bb.d, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.a, align 8, !tbaa !128
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !128
  %i.al = add <2 x i64> %i.ak, %i.aj
  store <2 x i64> %i.al, ptr %i.ai, align 8, !tbaa !128
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb20PartitionedTupleData5CountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !233
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection7CombineERS0_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.172", align 1 ; 5 uses
end_hunk_2
