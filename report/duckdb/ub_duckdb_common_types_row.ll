Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_row?download=true
inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN6duckdb20PartitionedTupleData13AppendUnifiedERNS_31PartitionedTupleDataAppendStateERNS_9DataChunkERKNS_15SelectionVectorEm:bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ac = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !232
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !262
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @_ZN6duckdb19TupleDataCollection13AppendUnifiedERNS_17TupleDataPinStateERNS_19TupleDataChunkStateERNS_9DataChunkERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.aa, ptr noundef nonnull align 8 dereferenceable(49) %i.ae, ptr noundef nonnull align 8 dereferenceable(488) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.d)
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !262
  %i.aj = sub i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !263
  %i.am = add i64 %i.aj, %i.al
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !263
  br label %bb.g

bb.e:                                             ; preds = %_ZNK6duckdb20PartitionedTupleData17BuildPartitionSelERNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !773, !nonnull !191, !align !192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !293, !range !294, !noundef !191
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.au)
  %i.av = icmp eq i64 %i.d, 0
  br i1 %i.av, label %_ZSt6fill_nIPmmiET_S1_T0_RKT1_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !314
  %.idx.i.i.i = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !212
  br label %_ZSt6fill_nIPmmiET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPmmiET_S1_T0_RKT1_.exit.i:            ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !315
  %i.ba = load ptr, ptr %2, align 8, !tbaa !316
  %.not.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i, label %_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPmmiET_S1_T0_RKT1_.exit.i, %.lr.ph.i
  %.015.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %_ZSt6fill_nIPmmiET_S1_T0_RKT1_.exit.i ] ; 3 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %.015.i)
  %i.bc = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(488) %i.as, i64 noundef %.015.i)
  tail call void @_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_6VectorERKS1_RNS_21TupleDataVectorFormatERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(104) %i.bb, ptr noundef nonnull align 8 dereferenceable(152) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.at, i64 noundef %i.d)
  %i.bd = add nuw i64 %.015.i, 1                  ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !315
  %i.bf = load ptr, ptr %2, align 8, !tbaa !316
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 104
  %i.bk = icmp ult i64 %i.bd, %i.bj
  br i1 %i.bk, label %.lr.ph.i, label %_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit, !llvm.loop !4

_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit: ; preds = %.lr.ph.i, %_ZSt6fill_nIPmmiET_S1_T0_RKT1_.exit.i, %bb.e
  tail call void @_ZN6duckdb20PartitionedTupleData16BuildBufferSpaceERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(784) %1)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !193
  %i.bn = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNK6duckdb19TupleDataCollection7ScatterERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.bn, ptr noundef nonnull align 8 dereferenceable(488) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.d)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19TupleDataCollection16ComputeHeapSizesERNS_19TupleDataChunkStateERKNS_9DataChunkERKNS_15SelectionVectorEm.exit, %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !317
  %i.bs = add i64 %i.br, %i.d
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb20PartitionedTupleData15UseFixedSizeMapEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 !guid !774 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.e = icmp ult i64 %i.d, 256
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20PartitionedTupleData17BuildPartitionSelERNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(784) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 align 2 !guid !775 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0), !inline_history !229
  %i.e = icmp ult i64 %i.d, 256
  %i.f = load ptr, ptr %0, align 8, !tbaa !148
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
define linkonce_odr i64 @_ZN6duckdb31PartitionedTupleDataAppendState34GetPartitionIndexIfSinglePartitionEb(ptr noundef nonnull align 8 dereferenceable(784) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !782 {
bb.a:
  %2 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i64, ptr %i.b, align 8, !tbaa !332
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333, !noalias !783 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !180, !noalias !783
  %i.h = and i8 %i.g, 1
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %._crit_edge31.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge31.i.i:                                ; preds = %bb.c
  %i.i = load i64, ptr %i.a, align 8, !tbaa !334, !noalias !784 ; 2 uses
  %i.j = lshr i64 %i.i, 3                         ; 5 uses
  %i.k = and i64 %i.i, 7                          ; 5 uses
  br label %.thread22.i.i.outer

.thread22.i.i.outer:                              ; preds = %.thread22.sink.split.i.i, %._crit_edge31.i.i
  %.ph27 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %._crit_edge31.i.i ] ; 2 uses
  %.ph28 = phi i64 [ %i.aw, %.thread22.sink.split.i.i ], [ 0, %._crit_edge31.i.i ] ; 6 uses
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !180, !noalias !783 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.t = icmp eq i64 %i.m, %i.j
  br i1 %i.t, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.f:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.u = icmp ne i64 %i.m, %i.j                   ; 2 uses
  %i.v = select i1 %i.u, i64 8, i64 %i.k          ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.l, %i.v
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.w = zext i8 %i.r to i32                      ; 3 uses
  %i.x = trunc nuw nsw i64 %i.l to i32
  %i.y = shl nuw nsw i32 1, %i.x
  %i.z = and i32 %i.y, %i.w
  %.not24.i3.i = icmp eq i32 %i.z, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.aa = add nuw nsw i64 %i.l, 1                 ; 5 uses
  %exitcond.not.i.i22 = icmp eq i64 %i.aa, %i.v
  br i1 %exitcond.not.i.i22, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !5

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.ab = xor i64 %i.l, -1
  %i.ac = add nsw i64 %i.v, %i.ab                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !5

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.ac, -16                     ; 3 uses
  %i.ad = or disjoint i64 %i.aa, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ae = trunc nuw nsw i64 %i.aa to i32
  %broadcast.splatinsert23 = insertelement <16 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat24 = shufflevector <16 x i32> %broadcast.splatinsert23, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat24, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.af = and <16 x i32> %vec.ind, splat (i32 255)
  %i.ag = shl nuw <16 x i32> splat (i32 1), %i.af
  %i.ah = and <16 x i32> %i.ag, %broadcast.splat
  %.fr = freeze <16 x i32> %i.ah
  %i.ai = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %.not = icmp eq i16 %i.aj, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !780

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !5

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph = phi i64 [ %i.aa, %.lr.ph.i.i.lr.ph ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.al = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ai, i1 false)
  %i.am = add i64 %index, %i.al
  %i.an = add i64 %i.aa, %i.am
  br label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.ao = phi i64 [ %i.at, %.lr.ph.i ], [ %.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 255
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.ar, %i.w
  %.not24.i.i = icmp eq i32 %i.as, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.at = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.v
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !781

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.f
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.f ], [ %i.v, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.v, %.lr.ph.i.preheader ]
  %i.au = phi i64 [ %i.l, %bb.f ], [ %i.v, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.v, %.lr.ph.i.preheader ]
  %i.av = icmp ne i64 %i.au, %i.k
  %.not3.i.i.i = or i1 %i.u, %i.av
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %.thread22.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.e
  %i.aw = add i64 %i.m, 1
  br label %.thread22.i.i.outer

_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.d, %.lr.ph.i.preheader.i, %bb.e, %.lr.ph.i.i, %vector.early.exit, %bb.c
  %.sroa.3.0 = phi i64 [ 0, %bb.c ], [ %.ph28, %vector.early.exit ], [ %.ph28, %.lr.ph.i.i ], [ %.ph28, %bb.e ], [ %.ph28, %.lr.ph.i.preheader.i ], [ %.ph28, %bb.d ]
  %.sroa.8.0 = phi i64 [ 0, %bb.c ], [ %i.an, %vector.early.exit ], [ %i.ao, %.lr.ph.i.i ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.d ], [ %i.k, %bb.e ]
  %i.ax = shl i64 %.sroa.3.0, 3
  %i.ay = add i64 %i.ax, %.sroa.8.0
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ay)
  %i.az = load i64, ptr %2, align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !344
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !345
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !348
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bg)
  %i.bh = load i64, ptr %3, align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %.sroa.02.0 = phi i64 [ %i.az, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit ], [ -1, %bb.b ], [ %i.bh, %bb.h ], [ -1, %bb.g ]
  ret i64 %.sroa.02.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !785 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !349    ; 2 uses
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !189    ; 2 uses
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
define linkonce_odr noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !786 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !181

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
end_hunk_0
begin_hunk_1_@_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb1EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm:bb.a
  %i.bx = and i32 %i.bw, 7                        ; 2 uses
  %i.by = shl nuw nsw i32 1, %i.bx
  %i.bz = and i32 %i.by, %i.bv
  %.not.i = icmp eq i32 %i.bz, 0                  ; 2 uses
  %i.ca = load i64, ptr %i.a, align 8, !noalias !825 ; 3 uses
  %i.cb = lshr i64 %i.ca, 3                       ; 2 uses
  %.sink3.i = select i1 %.not.i, i64 %i.cb, i64 %i.br ; 2 uses
  %.sink.in.i = select i1 %.not.i, i64 %i.ca, i64 %i.bq
  %.sink.i = and i64 %.sink.in.i, 7               ; 2 uses
  %i.cc = and i64 %i.ca, 7
  %i.cd = icmp eq i64 %.sink3.i, %i.cb
  %i.ce = icmp eq i64 %.sink.i, %i.cc
  %i.cf = and i1 %i.cd, %i.ce
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = xor i32 %i.bv, -1
  %i.ch = lshr i32 %i.cg, %i.bx
  %i.ci = and i32 %i.ch, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !332
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !332
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !212 ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = trunc i64 %i.cm to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = shl nuw i8 1, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cn ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !180
  %i.ct = or i8 %i.cq, %i.cs
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !180
  %i.cu = load i64, ptr %i.bp, align 8, !tbaa !212
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !397
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  store i64 0, ptr %i.cw, align 8, !tbaa !212
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !212
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cx = load ptr, ptr %i.ao, align 8, !tbaa !397
  %.idx.i.i.i = shl i64 %.sink3.i, 7
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i
  %i.cz = getelementptr [16 x i8], ptr %i.cy, i64 %.sink.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !398
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !398
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dd = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %2
  br i1 %exitcond.not, label %.loopexit110, label %bb.g, !llvm.loop !811

.loopexit110:                                     ; preds = %bb.j, %.preheader109, %bb.f
  %i.de = load i64, ptr %i.d, align 8, !tbaa !332
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit110
  %i.dg = load ptr, ptr %1, align 8, !tbaa !209   ; 2 uses
  %.not100 = icmp eq ptr %i.dg, null
  %.not139 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not100, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %bb.k
  br i1 %.not139, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph: ; preds = %.preheader101
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !209
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

.preheader:                                       ; preds = %bb.k
  br i1 %.not139, label %.loopexit, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !209 ; 2 uses
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
  store <4 x i32> %vec.ind230, ptr %i.dq, align 4, !tbaa !61
  store <4 x i32> %step.add, ptr %i.dr, align 4, !tbaa !61
  %index.next231 = add nuw i64 %index229, 8       ; 2 uses
  %vec.ind.next232 = add <4 x i32> %vec.ind230, splat (i32 8)
  %i.ds = icmp eq i64 %index.next231, %n.vec227
  br i1 %i.ds, label %middle.block233, label %vector.body228, !llvm.loop !812

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %2, %n.vec227
  br i1 %cmp.n234, label %.loopexit, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %vector.scevcheck, %.lr.ph134, %middle.block233
  %indvars.iv155.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph134 ], [ %n.vec227, %middle.block233 ]
  br label %scalar.ph224

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph ], [ %indvars.iv.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !61
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dv
  %i.dx = trunc nuw i64 %indvars.iv to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !61
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dy = and i64 %indvars.iv.next, 4294967295
  %i.dz = icmp ugt i64 %2, %i.dy
  br i1 %i.dz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %.loopexit, !llvm.loop !813

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %scalar.ph224 ], [ %indvars.iv155.ph, %scalar.ph224.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv155
  %i.eb = trunc nuw i64 %indvars.iv155 to i32
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !61
  %indvars.iv.next156 = add i64 %indvars.iv155, 1 ; 2 uses
  %i.ec = and i64 %indvars.iv.next156, 4294967295
  %i.ed = icmp ugt i64 %2, %i.ec
  br i1 %i.ed, label %scalar.ph224, label %.loopexit, !llvm.loop !814

bb.l:                                             ; preds = %.loopexit110
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !333, !noalias !826 ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !180, !noalias !826
  %i.eg = and i8 %i.ef, 1
  %.not.i78 = icmp eq i8 %i.eg, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !334, !noalias !191 ; 2 uses
  %i.eh = lshr i64 %.pre, 3                       ; 12 uses
  %i.ei = and i64 %.pre, 7                        ; 12 uses
  br i1 %.not.i78, label %._crit_edge31.i.i.outer, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge31.i.i.outer:                          ; preds = %bb.l, %.thread22.sink.split.i.i
  %.ph270 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %bb.l ] ; 2 uses
  %.ph271 = phi i64 [ %i.fu, %.thread22.sink.split.i.i ], [ 0, %bb.l ] ; 6 uses
  br label %._crit_edge31.i.i

._crit_edge31.i.i:                                ; preds = %._crit_edge31.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph270, %._crit_edge31.i.i.outer ] ; 3 uses
  %i.ej = phi i64 [ %i.ei, %._crit_edge.i.i ], [ %.ph270, %._crit_edge31.i.i.outer ] ; 6 uses
  %i.ek = phi i64 [ %i.eh, %._crit_edge.i.i ], [ %.ph271, %._crit_edge31.i.i.outer ] ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.eh
  br i1 %i.el, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge31.i.i
  %i.em = icmp eq i64 %i.ek, %i.eh
  %i.en = icmp samesign ult i64 %i.ej, %i.ei
  %or.cond.i.i = and i1 %i.en, %i.em
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i: ; preds = %bb.m, %._crit_edge31.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ek
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !180, !noalias !826 ; 2 uses
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.er = icmp eq i64 %i.ek, %i.eh
  br i1 %i.er, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.o:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.es = icmp ne i64 %i.ek, %i.eh                ; 2 uses
  %i.et = select i1 %i.es, i64 8, i64 %i.ei       ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.ej, %i.et
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o
  %i.eu = zext i8 %i.ep to i32                    ; 3 uses
  %i.ev = trunc nuw nsw i64 %i.ej to i32
  %i.ew = shl nuw nsw i32 1, %i.ev
  %i.ex = and i32 %i.ew, %i.eu
  %.not24.i3.i = icmp eq i32 %i.ex, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.ey = add nuw nsw i64 %i.ej, 1                ; 5 uses
  %exitcond.not.i.i201 = icmp eq i64 %i.ey, %i.et
  br i1 %exitcond.not.i.i201, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !5

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.ez = xor i64 %i.ej, -1
  %i.fa = add nsw i64 %i.et, %i.ez                ; 3 uses
  %min.iters.check = icmp ult i64 %i.fa, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !5

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.fa, -16                     ; 3 uses
  %i.fb = or disjoint i64 %i.ey, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fc = trunc nuw nsw i64 %i.ey to i32
  %broadcast.splatinsert203 = insertelement <16 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat204 = shufflevector <16 x i32> %broadcast.splatinsert203, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat204, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fd = and <16 x i32> %vec.ind, splat (i32 255)
  %i.fe = shl nuw <16 x i32> splat (i32 1), %i.fd
  %i.ff = and <16 x i32> %i.fe, %broadcast.splat
  %.fr = freeze <16 x i32> %i.ff
  %i.fg = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.fh = bitcast <16 x i1> %i.fg to i16
  %.not236 = icmp eq i16 %i.fh, 0
  br i1 %.not236, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !817

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !5

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph267 = phi i64 [ %i.ey, %.lr.ph.i.i.lr.ph ], [ %i.fb, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.fj = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.fg, i1 false)
  %i.fk = add i64 %index, %i.fj
  %i.fl = add i64 %i.ey, %i.fk
  br label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.fm = phi i64 [ %i.fr, %.lr.ph.i ], [ %.ph267, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = and i32 %i.fn, 255
  %i.fp = shl nuw i32 1, %i.fo
  %i.fq = and i32 %i.fp, %i.eu
  %.not24.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.fr = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fr, %i.et
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !818

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.o
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.o ], [ %i.et, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.et, %.lr.ph.i.preheader ]
  %i.fs = phi i64 [ %i.ej, %bb.o ], [ %i.et, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.et, %.lr.ph.i.preheader ]
  %i.ft = icmp ne i64 %i.fs, %i.ei
  %.not3.i.i.i = or i1 %i.es, %i.ft
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %._crit_edge31.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.n
  %i.fu = add i64 %i.ek, 1
  br label %._crit_edge31.i.i.outer

_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.m, %.lr.ph.i.preheader.i, %bb.n, %.lr.ph.i.i, %vector.early.exit, %bb.l
  %.sroa.583.1 = phi i64 [ %.ph271, %vector.early.exit ], [ 0, %bb.l ], [ %.ph271, %.lr.ph.i.i ], [ %.ph271, %bb.n ], [ %.ph271, %.lr.ph.i.preheader.i ], [ %.ph271, %bb.m ] ; 2 uses
  %.sroa.14.1 = phi i64 [ %i.fl, %vector.early.exit ], [ 0, %bb.l ], [ %i.fm, %.lr.ph.i.i ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.m ], [ %i.ei, %bb.n ] ; 2 uses
  %i.fv = icmp ne i64 %.sroa.583.1, %i.eh
  %i.fw = icmp ne i64 %.sroa.14.1, %i.ei
  %.not3.i124 = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %.not3.i124, label %._crit_edge31.i.lr.ph, label %._crit_edge

._crit_edge31.i.lr.ph:                            ; preds = %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !397
  br label %._crit_edge31.i

._crit_edge:                                      ; preds = %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gb = load ptr, ptr %1, align 8, !tbaa !209
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

._crit_edge31.i:                                  ; preds = %._crit_edge31.i.lr.ph, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit
  %.074127 = phi i64 [ 0, %._crit_edge31.i.lr.ph ], [ %i.gi, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.14.0126 = phi i64 [ %.sroa.14.1, %._crit_edge31.i.lr.ph ], [ %.sroa.14.7, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.583.0125 = phi i64 [ %.sroa.583.1, %._crit_edge31.i.lr.ph ], [ %.ph245, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.idx.i.i.i79 = shl i64 %.sroa.583.0125, 7
  %i.ge = getelementptr i8, ptr %i.fy, i64 %.idx.i.i.i79
  %i.gf = getelementptr [16 x i8], ptr %i.ge, i64 %.sroa.14.0126 ; 2 uses
  store i64 %.074127, ptr %i.gf, align 8, !tbaa !379
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !398
  %i.gi = add i64 %i.gh, %.074127
  %i.gj = add i64 %.sroa.14.0126, 1               ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 8                    ; 2 uses
  %i.gl = zext i1 %i.gk to i64
  %.sroa.583.2 = add i64 %.sroa.583.0125, %i.gl
  %.sroa.14.2 = select i1 %i.gk, i64 0, i64 %i.gj
  br label %.thread22.i.outer

.thread22.i.outer:                                ; preds = %.thread22.sink.split.i, %._crit_edge31.i
  %.ph244 = phi i64 [ 0, %.thread22.sink.split.i ], [ %.sroa.14.2, %._crit_edge31.i ] ; 2 uses
  %.ph245 = phi i64 [ %i.hx, %.thread22.sink.split.i ], [ %.sroa.583.2, %._crit_edge31.i ] ; 3 uses
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
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !180 ; 2 uses
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i
  %i.gu = icmp eq i64 %i.gn, %i.eh
  br i1 %i.gu, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, label %.thread22.sink.split.i

bb.r:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i
  %i.gv = icmp ne i64 %i.gn, %i.eh                ; 2 uses
  %i.gw = select i1 %i.gv, i64 8, i64 %i.ei       ; 8 uses
  %.not27.i = icmp ult i64 %i.gm, %i.gw
  br i1 %.not27.i, label %.lr.ph.i80.preheader, label %._crit_edge.i

.lr.ph.i80.preheader:                             ; preds = %bb.r
  %i.gx = zext i8 %i.gs to i32                    ; 3 uses
  %i.gy = trunc nuw nsw i64 %i.gm to i32
  %i.gz = shl nuw nsw i32 1, %i.gy
  %i.ha = and i32 %i.gz, %i.gx
  %.not24.i119 = icmp eq i32 %i.ha, 0
  br i1 %.not24.i119, label %.lr.ph120.preheader, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

.lr.ph120.preheader:                              ; preds = %.lr.ph.i80.preheader
  %i.hb = add nuw nsw i64 %i.gm, 1                ; 5 uses
  %exitcond.not.i202 = icmp eq i64 %i.hb, %i.gw
  br i1 %exitcond.not.i202, label %._crit_edge.i, label %.lr.ph.i80.lr.ph, !llvm.loop !5

.lr.ph.i80.lr.ph:                                 ; preds = %.lr.ph120.preheader
  %i.hc = xor i64 %i.gm, -1
  %i.hd = add i64 %i.gw, %i.hc                    ; 3 uses
  %min.iters.check206 = icmp ult i64 %i.hd, 128
  br i1 %min.iters.check206, label %.lr.ph.i80.preheader242, label %vector.ph207, !llvm.loop !5

vector.ph207:                                     ; preds = %.lr.ph.i80.lr.ph
  %n.vec208 = and i64 %i.hd, -16                  ; 3 uses
  %i.he = add i64 %i.hb, %n.vec208
  %broadcast.splatinsert209 = insertelement <16 x i32> poison, i32 %i.gx, i64 0
  %broadcast.splat210 = shufflevector <16 x i32> %broadcast.splatinsert209, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.hf = trunc i64 %i.hb to i32
  %broadcast.splatinsert211 = insertelement <16 x i32> poison, i32 %i.hf, i64 0
  %broadcast.splat212 = shufflevector <16 x i32> %broadcast.splatinsert211, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction213 = add <16 x i32> %broadcast.splat212, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body.interim219, %vector.ph207
  %index215 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body.interim219 ] ; 2 uses
  %vec.ind216 = phi <16 x i32> [ %induction213, %vector.ph207 ], [ %vec.ind.next218, %vector.body.interim219 ] ; 2 uses
  %i.hg = and <16 x i32> %vec.ind216, splat (i32 255)
  %i.hh = shl nuw <16 x i32> splat (i32 1), %i.hg
  %i.hi = and <16 x i32> %i.hh, %broadcast.splat210
  %.fr237 = freeze <16 x i32> %i.hi
  %i.hj = icmp ne <16 x i32> %.fr237, zeroinitializer ; 2 uses
  %i.hk = bitcast <16 x i1> %i.hj to i16
  %.not238 = icmp eq i16 %i.hk, 0
  br i1 %.not238, label %vector.body.interim219, label %vector.early.exit222

vector.body.interim219:                           ; preds = %vector.body214
  %vec.ind.next218 = add <16 x i32> %vec.ind216, splat (i32 16)
  %index.next217 = add nuw i64 %index215, 16      ; 2 uses
  %i.hl = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.hl, label %middle.block220, label %vector.body214, !llvm.loop !819

middle.block220:                                  ; preds = %vector.body.interim219
  %cmp.n221 = icmp eq i64 %i.hd, %n.vec208
  br i1 %cmp.n221, label %.lr.ph120.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i80.preheader242, !llvm.loop !5

.lr.ph.i80.preheader242:                          ; preds = %.lr.ph.i80.lr.ph, %middle.block220
  %.ph = phi i64 [ %i.hb, %.lr.ph.i80.lr.ph ], [ %i.he, %middle.block220 ]
  br label %.lr.ph.i80

vector.early.exit222:                             ; preds = %vector.body214
  %i.hm = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.hj, i1 false)
  %i.hn = add i64 %index215, %i.hm
  %i.ho = add i64 %i.hb, %i.hn
  br label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader242, %.lr.ph120
  %i.hp = phi i64 [ %i.hu, %.lr.ph120 ], [ %.ph, %.lr.ph.i80.preheader242 ] ; 3 uses
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = and i32 %i.hq, 255
  %i.hs = shl nuw i32 1, %i.hr
  %i.ht = and i32 %i.hs, %i.gx
  %.not24.i = icmp eq i32 %i.ht, 0
  br i1 %.not24.i, label %.lr.ph120, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, !llvm.loop !5

.lr.ph120:                                        ; preds = %.lr.ph.i80
  %i.hu = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hu, %i.gw
  br i1 %exitcond.not.i, label %.lr.ph120.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i80, !llvm.loop !820

.lr.ph120.._crit_edge.i.loopexit_crit_edge:       ; preds = %.lr.ph120, %middle.block220
  br label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.lr.ph120.preheader, %.lr.ph120.._crit_edge.i.loopexit_crit_edge, %bb.r
  %.sroa.14.4 = phi i64 [ %.sroa.14.3, %bb.r ], [ %i.gw, %.lr.ph120.._crit_edge.i.loopexit_crit_edge ], [ %i.gw, %.lr.ph120.preheader ]
  %i.hv = phi i64 [ %i.gm, %bb.r ], [ %i.gw, %.lr.ph120.._crit_edge.i.loopexit_crit_edge ], [ %i.gw, %.lr.ph120.preheader ]
  %i.hw = icmp ne i64 %i.hv, %i.ei
  %.not3.i.i = or i1 %i.gv, %i.hw
  br i1 %.not3.i.i, label %.thread22.sink.split.i, label %.thread22.i

.thread22.sink.split.i:                           ; preds = %._crit_edge.i, %bb.q
  %i.hx = add i64 %i.gn, 1
  br label %.thread22.i.outer

_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit: ; preds = %bb.p, %.lr.ph.i80.preheader, %bb.q, %.lr.ph.i80, %vector.early.exit222
  %.sroa.14.7 = phi i64 [ %i.hp, %.lr.ph.i80 ], [ %i.ho, %vector.early.exit222 ], [ %.sroa.14.3, %.lr.ph.i80.preheader ], [ %.sroa.14.3, %bb.p ], [ %i.ei, %bb.q ] ; 2 uses
  %i.hy = icmp ne i64 %.ph245, %i.eh
  %i.hz = icmp ne i64 %.sroa.14.7, %i.ei
  %.not3.i = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %.not3.i, label %._crit_edge31.i, label %._crit_edge, !llvm.loop !821

bb.s:                                             ; preds = %.lr.ph129, %bb.s
  %.072128 = phi i64 [ 0, %.lr.ph129 ], [ %i.jl, %bb.s ] ; 3 uses
  %i.ia = load ptr, ptr %1, align 8, !tbaa !209
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.072128
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !61 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.072128 ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !212 ; 2 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = load ptr, ptr %i.e, align 8, !tbaa !333 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.if
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !180
  %i.ij = zext i8 %i.ii to i32
  %i.ik = trunc i64 %i.ie to i32
  %i.il = and i32 %i.ik, 7
  %i.im = xor i32 %i.ij, -1
  %i.in = lshr i32 %i.im, %i.il
  %i.io = and i32 %i.in, 1
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = load i64, ptr %i.d, align 8, !tbaa !332
  %i.ir = add i64 %i.iq, %i.ip
  store i64 %i.ir, ptr %i.d, align 8, !tbaa !332
  %i.is = load i64, ptr %i.id, align 8, !tbaa !212 ; 2 uses
  %i.it = lshr i64 %i.is, 3
  %i.iu = trunc i64 %i.is to i8
  %i.iv = and i8 %i.iu, 7
  %i.iw = shl nuw i8 1, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.it ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !180
  %i.iz = or i8 %i.iw, %i.iy
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !180
  %i.ja = load i64, ptr %i.id, align 8, !tbaa !212
  %i.jb = load ptr, ptr %i.gc, align 8, !tbaa !397
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.ja ; 2 uses
  %i.jd = zext i32 %i.ic to i64
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !212 ; 3 uses
  %i.jf = trunc i64 %i.je to i32
  %i.jg = load ptr, ptr %i.ga, align 8, !tbaa !209
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jd
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !61
  %i.ji = add i64 %i.je, 1
  store i64 %i.ji, ptr %i.jc, align 8, !tbaa !212
  %i.jj = load ptr, ptr %i.fz, align 8, !tbaa !209
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.je
  store i32 %i.ic, ptr %i.jk, align 4, !tbaa !61
  %i.jl = add nuw i64 %.072128, 1                 ; 2 uses
  %exitcond152.not = icmp eq i64 %i.jl, %2
  br i1 %exitcond152.not, label %.loopexit, label %bb.s, !llvm.loop !822

bb.t:                                             ; preds = %.lr.ph131, %bb.t
  %.0130 = phi i64 [ 0, %.lr.ph131 ], [ %i.ku, %bb.t ] ; 4 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0130 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !212 ; 2 uses
  %i.jo = lshr i64 %i.jn, 3
  %i.jp = load ptr, ptr %i.e, align 8, !tbaa !333 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jo
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !180
  %i.js = zext i8 %i.jr to i32
  %i.jt = trunc i64 %i.jn to i32
  %i.ju = and i32 %i.jt, 7
  %i.jv = xor i32 %i.js, -1
  %i.jw = lshr i32 %i.jv, %i.ju
  %i.jx = and i32 %i.jw, 1
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = load i64, ptr %i.d, align 8, !tbaa !332
  %i.ka = add i64 %i.jz, %i.jy
  store i64 %i.ka, ptr %i.d, align 8, !tbaa !332
  %i.kb = load i64, ptr %i.jm, align 8, !tbaa !212 ; 2 uses
  %i.kc = lshr i64 %i.kb, 3
  %i.kd = trunc i64 %i.kb to i8
  %i.ke = and i8 %i.kd, 7
  %i.kf = shl nuw i8 1, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.kc ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !180
  %i.ki = or i8 %i.kf, %i.kh
  store i8 %i.ki, ptr %i.kg, align 1, !tbaa !180
  %i.kj = load i64, ptr %i.jm, align 8, !tbaa !212
  %i.kk = load ptr, ptr %i.gd, align 8, !tbaa !397
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kj ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !212 ; 3 uses
  %i.kn = trunc i64 %i.km to i32
  %i.ko = load ptr, ptr %i.ga, align 8, !tbaa !209
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.0130
  store i32 %i.kn, ptr %i.kp, align 4, !tbaa !61
  %i.kq = add i64 %i.km, 1
  store i64 %i.kq, ptr %i.kl, align 8, !tbaa !212
  %i.kr = trunc i64 %.0130 to i32
  %i.ks = load ptr, ptr %i.fz, align 8, !tbaa !209
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.km
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !61
  %i.ku = add nuw i64 %.0130, 1                   ; 2 uses
  %exitcond153.not = icmp eq i64 %i.ku, %2
  br i1 %exitcond153.not, label %.loopexit, label %bb.t, !llvm.loop !823

.loopexit:                                        ; preds = %bb.s, %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %scalar.ph224, %middle.block233, %.preheader105, %.preheader103, %.preheader101, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb0EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(784) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !836 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 10 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !314  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !345  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.06.i.i.i, align 8, !tbaa !378 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #30
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !399
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !400
end_hunk_1
begin_hunk_2_@_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb0EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm:bb.a

.lr.ph.i.i.i.i95:                                 ; preds = %bb.r, %bb.s
  %.020.i.i.i.i96 = phi ptr [ %i.fb, %bb.s ], [ %i.eo, %bb.r ]
  %i.fb = load ptr, ptr %.020.i.i.i.i96, align 8, !tbaa !378 ; 5 uses
  %.not18.i.i.i.i97 = icmp eq ptr %i.fb, null
  br i1 %.not18.i.i.i.i97, label %.loopexit.i.i100, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i95
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !403 ; 2 uses
  %i.fe = urem i64 %i.fd, %i.ej
  %.not19.i.i.i.i98 = icmp eq i64 %i.fe, %i.ek
  br i1 %.not19.i.i.i.i98, label %bb.s, label %..loopexit_crit_edge21.i.i.i.i99, !llvm.loop !827

..loopexit_crit_edge21.i.i.i.i99:                 ; preds = %bb.t
  br label %.loopexit.i.i100, !llvm.loop !827

.loopexit.i.i100:                                 ; preds = %.lr.ph.i.i.i.i95, %..loopexit_crit_edge21.i.i.i.i99, %.lr.ph164
  %i.ff = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 5 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !378
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !212
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !348
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  %i.fj = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.ek, i64 noundef %i.ei, ptr noundef nonnull %i.ff, i64 noundef 1)
          to label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i101

_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i101: ; preds = %.loopexit.i.i100
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104: ; preds = %bb.s, %bb.r, %.loopexit.i.i100
  %.pn.i.i102 = phi ptr [ %i.fj, %.loopexit.i.i100 ], [ %i.eo, %bb.r ], [ %i.fb, %bb.s ]
  %.1.i.i103 = getelementptr inbounds nuw i8, ptr %.pn.i.i102, i64 16 ; 2 uses
  %i.fl = zext i32 %i.eg to i64
  %i.fm = load i64, ptr %.1.i.i103, align 8, !tbaa !212 ; 3 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = load ptr, ptr %i.dy, align 8, !tbaa !209
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fl
  store i32 %i.fn, ptr %i.fp, align 4, !tbaa !61
  %i.fq = add i64 %i.fm, 1
  store i64 %i.fq, ptr %.1.i.i103, align 8, !tbaa !212
  %i.fr = load ptr, ptr %i.dx, align 8, !tbaa !209
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fm
  store i32 %i.eg, ptr %i.fs, align 4, !tbaa !61
  %i.ft = add nuw i64 %.072163, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.ft, %2
  br i1 %exitcond197.not, label %.loopexit, label %.lr.ph164, !llvm.loop !834

.lr.ph166:                                        ; preds = %.preheader130, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115
  %.0165 = phi i64 [ %i.hg, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115 ], [ 0, %.preheader130 ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0165 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !212 ; 6 uses
  %i.fw = load i64, ptr %i.h, align 8, !tbaa !400 ; 2 uses
  %i.fx = urem i64 %i.fv, %i.fw                   ; 3 uses
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !399
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !401 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i105, label %.loopexit.i.i111, label %bb.u

bb.u:                                             ; preds = %.lr.ph166
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !378 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !403
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
  br i1 %i.gn, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, label %.lr.ph.i.i.i.i106, !llvm.loop !827

.lr.ph.i.i.i.i106:                                ; preds = %bb.u, %bb.v
  %.020.i.i.i.i107 = phi ptr [ %i.go, %bb.v ], [ %i.gb, %bb.u ]
  %i.go = load ptr, ptr %.020.i.i.i.i107, align 8, !tbaa !378 ; 5 uses
  %.not18.i.i.i.i108 = icmp eq ptr %i.go, null
  br i1 %.not18.i.i.i.i108, label %.loopexit.i.i111, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i106
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !403 ; 2 uses
  %i.gr = urem i64 %i.gq, %i.fw
  %.not19.i.i.i.i109 = icmp eq i64 %i.gr, %i.fx
  br i1 %.not19.i.i.i.i109, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i110, !llvm.loop !827

..loopexit_crit_edge21.i.i.i.i110:                ; preds = %bb.w
  br label %.loopexit.i.i111, !llvm.loop !827

.loopexit.i.i111:                                 ; preds = %.lr.ph.i.i.i.i106, %..loopexit_crit_edge21.i.i.i.i110, %.lr.ph166
  %i.gs = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 5 uses
  store ptr null, ptr %i.gs, align 8, !tbaa !378
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i64, ptr %i.fu, align 8, !tbaa !212
  store i64 %i.gu, ptr %i.gt, align 8, !tbaa !348
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
  %i.gy = load i64, ptr %.1.i.i114, align 8, !tbaa !212 ; 3 uses
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = load ptr, ptr %i.dy, align 8, !tbaa !209
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.0165
  store i32 %i.gz, ptr %i.hb, align 4, !tbaa !61
  %i.hc = add i64 %i.gy, 1
  store i64 %i.hc, ptr %.1.i.i114, align 8, !tbaa !212
  %i.hd = trunc i64 %.0165 to i32
  %i.he = load ptr, ptr %i.dx, align 8, !tbaa !209
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.gy
  store i32 %i.hd, ptr %i.hf, align 4, !tbaa !61
  %i.hg = add nuw i64 %.0165, 1                   ; 2 uses
  %exitcond198.not = icmp eq i64 %i.hg, %2
  br i1 %exitcond198.not, label %.loopexit, label %.lr.ph166, !llvm.loop !835

.loopexit:                                        ; preds = %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %scalar.ph, %middle.block, %.preheader132, %.preheader130, %.preheader128, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20PartitionedTupleData16BuildBufferSpaceILb1EEEvRNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(784) %1) local_unnamed_addr #0 comdat align 2 !guid !847 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333, !noalias !848 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !180, !noalias !848
  %i.e = and i8 %i.d, 1
  %.not.i = icmp eq i8 %i.e, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !334, !noalias !191 ; 2 uses
  %i.f = lshr i64 %.pre, 3                        ; 6 uses
  %i.g = and i64 %.pre, 7                         ; 6 uses
  br i1 %.not.i, label %._crit_edge31.i.i.outer, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge31.i.i.outer:                          ; preds = %bb.a, %.thread22.sink.split.i.i
  %.ph142 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %bb.a ] ; 2 uses
  %.ph143 = phi i64 [ %i.as, %.thread22.sink.split.i.i ], [ 0, %bb.a ] ; 6 uses
  br label %._crit_edge31.i.i

._crit_edge31.i.i:                                ; preds = %._crit_edge31.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph142, %._crit_edge31.i.i.outer ] ; 3 uses
  %i.h = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.ph142, %._crit_edge31.i.i.outer ] ; 6 uses
  %i.i = phi i64 [ %i.f, %._crit_edge.i.i ], [ %.ph143, %._crit_edge31.i.i.outer ] ; 6 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge31.i.i
  %i.k = icmp eq i64 %i.i, %i.f
  %i.l = icmp samesign ult i64 %i.h, %i.g
  %or.cond.i.i = and i1 %i.l, %i.k
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i: ; preds = %bb.b, %._crit_edge31.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !180, !noalias !848 ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i
  %i.p = icmp eq i64 %i.i, %i.f
  br i1 %i.p, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.d:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i
  %i.q = icmp ne i64 %i.i, %i.f                   ; 2 uses
  %i.r = select i1 %i.q, i64 8, i64 %i.g          ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.h, %i.r
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.s = zext i8 %i.n to i32                      ; 3 uses
  %i.t = trunc nuw nsw i64 %i.h to i32
  %i.u = shl nuw nsw i32 1, %i.t
  %i.v = and i32 %i.u, %i.s
  %.not24.i3.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.w = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %exitcond.not.i.i89 = icmp eq i64 %i.w, %i.r
  br i1 %exitcond.not.i.i89, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !839

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.x = xor i64 %i.h, -1
  %i.y = add nsw i64 %i.r, %i.x                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !839

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.y, -16                      ; 3 uses
  %i.z = or disjoint i64 %i.w, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aa = trunc nuw nsw i64 %i.w to i32
  %broadcast.splatinsert91 = insertelement <16 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat92 = shufflevector <16 x i32> %broadcast.splatinsert91, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat92, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ab = and <16 x i32> %vec.ind, splat (i32 255)
  %i.ac = shl nuw <16 x i32> splat (i32 1), %i.ab
  %i.ad = and <16 x i32> %i.ac, %broadcast.splat
  %.fr = freeze <16 x i32> %i.ad
  %i.ae = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.af = bitcast <16 x i1> %i.ae to i16
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !840

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !839

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph139 = phi i64 [ %i.w, %.lr.ph.i.i.lr.ph ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.ah = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ae, i1 false)
  %i.ai = add i64 %index, %i.ah
  %i.aj = add i64 %i.w, %i.ai
  br label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.ak = phi i64 [ %i.ap, %.lr.ph.i ], [ %.ph139, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 255
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.an, %i.s
  %.not24.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !839

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.r
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !841

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !839

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.d
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.d ], [ %i.r, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.i.preheader ]
  %i.aq = phi i64 [ %i.h, %bb.d ], [ %i.r, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.i.preheader ]
  %i.ar = icmp ne i64 %i.aq, %i.g
  %.not3.i.i.i = or i1 %i.q, %i.ar
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %._crit_edge31.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.c
  %i.as = add i64 %i.i, 1
  br label %._crit_edge31.i.i.outer

_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.b, %.lr.ph.i.preheader.i, %bb.c, %.lr.ph.i.i, %vector.early.exit, %bb.a
  %.sroa.15.1 = phi i64 [ %i.ak, %.lr.ph.i.i ], [ 0, %bb.a ], [ %i.aj, %vector.early.exit ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.521.1 = phi i64 [ %.ph143, %.lr.ph.i.i ], [ 0, %bb.a ], [ %.ph143, %vector.early.exit ], [ %.ph143, %bb.c ], [ %.ph143, %.lr.ph.i.preheader.i ], [ %.ph143, %bb.b ] ; 2 uses
  %i.at = icmp ne i64 %.sroa.521.1, %i.f
  %i.au = icmp ne i64 %.sroa.15.1, %i.g
  %.not3.i44 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %.not3.i44, label %._crit_edge31.i.lr.ph, label %._crit_edge

._crit_edge31.i.lr.ph:                            ; preds = %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %._crit_edge31.i

._crit_edge:                                      ; preds = %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  ret void

._crit_edge31.i:                                  ; preds = %._crit_edge31.i.lr.ph, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit
  %.sroa.521.046 = phi i64 [ %.sroa.521.1, %._crit_edge31.i.lr.ph ], [ %.ph117, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit ] ; 3 uses
  %.sroa.15.045 = phi i64 [ %.sroa.15.1, %._crit_edge31.i.lr.ph ], [ %.sroa.15.7, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit ] ; 3 uses
  %i.ba = shl i64 %.sroa.521.046, 3
  %i.bb = add i64 %i.ba, %.sroa.15.045            ; 2 uses
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !193
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 4 uses
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !232
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %i.bb
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !397
  %.idx.i.i.i = shl i64 %.sroa.521.046, 7
  %i.bi = getelementptr i8, ptr %i.bh, i64 %.idx.i.i.i
  %i.bj = getelementptr [16 x i8], ptr %i.bi, i64 %.sroa.15.045 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !379
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !212 ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !262
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !352
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !353 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = getelementptr i8, ptr %i.bt, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !355 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !376
  %i.cc = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
  tail call void @_ZN6duckdb18TupleDataAllocator5BuildERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(128) %i.cc, ptr noundef nonnull align 8 dereferenceable(192) %i.bz, ptr noundef nonnull align 8 dereferenceable(49) %i.bg, ptr noundef nonnull align 8 dereferenceable(488) %i.ay, i64 noundef %i.bn, i64 noundef %i.bm)
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !376
  %i.ce = sub i64 %i.cd, %i.cb
  %i.cf = load i64, ptr %i.bo, align 8, !tbaa !262
  %i.cg = add i64 %i.ce, %i.cf                    ; 2 uses
  store i64 %i.cg, ptr %i.bo, align 8, !tbaa !262
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !377
  %i.cj = add i64 %i.ci, %i.bm
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !377
  %i.ck = sub i64 %i.cg, %i.bp
  %i.cl = load i64, ptr %i.az, align 8, !tbaa !263
  %i.cm = add i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.az, align 8, !tbaa !263
  %i.cn = add i64 %.sroa.15.045, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, 8                    ; 2 uses
  %.sroa.15.2 = select i1 %i.co, i64 0, i64 %i.cn
  %i.cp = zext i1 %i.co to i64
  %.sroa.521.2 = add i64 %.sroa.521.046, %i.cp
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !334, !noalias !849 ; 2 uses
  %i.cr = lshr i64 %i.cq, 3                       ; 6 uses
  %i.cs = and i64 %i.cq, 7                        ; 6 uses
  br label %.thread22.i.outer

.thread22.i.outer:                                ; preds = %.thread22.sink.split.i, %._crit_edge31.i
  %.ph116 = phi i64 [ 0, %.thread22.sink.split.i ], [ %.sroa.15.2, %._crit_edge31.i ] ; 2 uses
  %.ph117 = phi i64 [ %i.ef, %.thread22.sink.split.i ], [ %.sroa.521.2, %._crit_edge31.i ] ; 3 uses
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
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !333
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cu
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !180 ; 2 uses
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i
  %i.dc = icmp eq i64 %i.cu, %i.cr
  br i1 %i.dc, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, label %.thread22.sink.split.i

bb.g:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i
  %i.dd = icmp ne i64 %i.cu, %i.cr                ; 2 uses
  %i.de = select i1 %i.dd, i64 8, i64 %i.cs       ; 8 uses
  %.not27.i = icmp ult i64 %i.ct, %i.de
  br i1 %.not27.i, label %.lr.ph.i18.preheader, label %._crit_edge.i

.lr.ph.i18.preheader:                             ; preds = %bb.g
  %i.df = zext i8 %i.da to i32                    ; 3 uses
  %i.dg = trunc nuw nsw i64 %i.ct to i32
  %i.dh = shl nuw nsw i32 1, %i.dg
  %i.di = and i32 %i.dh, %i.df
  %.not24.i40 = icmp eq i32 %i.di, 0
  br i1 %.not24.i40, label %.lr.ph.preheader, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i18.preheader
  %i.dj = add nuw nsw i64 %i.ct, 1                ; 5 uses
  %exitcond.not.i90 = icmp eq i64 %i.dj, %i.de
  br i1 %exitcond.not.i90, label %._crit_edge.i, label %.lr.ph.i18.lr.ph, !llvm.loop !839

.lr.ph.i18.lr.ph:                                 ; preds = %.lr.ph.preheader
  %i.dk = xor i64 %i.ct, -1
  %i.dl = add i64 %i.de, %i.dk                    ; 3 uses
  %min.iters.check94 = icmp ult i64 %i.dl, 128
  br i1 %min.iters.check94, label %.lr.ph.i18.preheader114, label %vector.ph95, !llvm.loop !839

vector.ph95:                                      ; preds = %.lr.ph.i18.lr.ph
  %n.vec96 = and i64 %i.dl, -16                   ; 3 uses
  %i.dm = add i64 %i.dj, %n.vec96
  %broadcast.splatinsert97 = insertelement <16 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat98 = shufflevector <16 x i32> %broadcast.splatinsert97, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dn = trunc i64 %i.dj to i32
  %broadcast.splatinsert99 = insertelement <16 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat100 = shufflevector <16 x i32> %broadcast.splatinsert99, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction101 = add <16 x i32> %broadcast.splat100, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body.interim107, %vector.ph95
  %index103 = phi i64 [ 0, %vector.ph95 ], [ %index.next105, %vector.body.interim107 ] ; 2 uses
  %vec.ind104 = phi <16 x i32> [ %induction101, %vector.ph95 ], [ %vec.ind.next106, %vector.body.interim107 ] ; 2 uses
  %i.do = and <16 x i32> %vec.ind104, splat (i32 255)
  %i.dp = shl nuw <16 x i32> splat (i32 1), %i.do
  %i.dq = and <16 x i32> %i.dp, %broadcast.splat98
  %.fr112 = freeze <16 x i32> %i.dq
  %i.dr = icmp ne <16 x i32> %.fr112, zeroinitializer ; 2 uses
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %.not113 = icmp eq i16 %i.ds, 0
  br i1 %.not113, label %vector.body.interim107, label %vector.early.exit110

vector.body.interim107:                           ; preds = %vector.body102
  %vec.ind.next106 = add <16 x i32> %vec.ind104, splat (i32 16)
  %index.next105 = add nuw i64 %index103, 16      ; 2 uses
  %i.dt = icmp eq i64 %index.next105, %n.vec96
  br i1 %i.dt, label %middle.block108, label %vector.body102, !llvm.loop !844

middle.block108:                                  ; preds = %vector.body.interim107
  %cmp.n109 = icmp eq i64 %i.dl, %n.vec96
  br i1 %cmp.n109, label %.lr.ph.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i18.preheader114, !llvm.loop !839

.lr.ph.i18.preheader114:                          ; preds = %.lr.ph.i18.lr.ph, %middle.block108
  %.ph = phi i64 [ %i.dj, %.lr.ph.i18.lr.ph ], [ %i.dm, %middle.block108 ]
  br label %.lr.ph.i18

vector.early.exit110:                             ; preds = %vector.body102
  %i.du = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.dr, i1 false)
  %i.dv = add i64 %index103, %i.du
  %i.dw = add i64 %i.dj, %i.dv
  br label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader114, %.lr.ph
  %i.dx = phi i64 [ %i.ec, %.lr.ph ], [ %.ph, %.lr.ph.i18.preheader114 ] ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 255
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = and i32 %i.ea, %i.df
  %.not24.i = icmp eq i32 %i.eb, 0
  br i1 %.not24.i, label %.lr.ph, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, !llvm.loop !839

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.ec = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %i.de
  br i1 %exitcond.not.i, label %.lr.ph.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i18, !llvm.loop !845

.lr.ph.._crit_edge.i.loopexit_crit_edge:          ; preds = %.lr.ph, %middle.block108
  br label %._crit_edge.i, !llvm.loop !839

._crit_edge.i:                                    ; preds = %.lr.ph.preheader, %.lr.ph.._crit_edge.i.loopexit_crit_edge, %bb.g
  %.sroa.15.4 = phi i64 [ %.sroa.15.3, %bb.g ], [ %i.de, %.lr.ph.._crit_edge.i.loopexit_crit_edge ], [ %i.de, %.lr.ph.preheader ]
  %i.ed = phi i64 [ %i.ct, %bb.g ], [ %i.de, %.lr.ph.._crit_edge.i.loopexit_crit_edge ], [ %i.de, %.lr.ph.preheader ]
  %i.ee = icmp ne i64 %i.ed, %i.cs
  %.not3.i.i = or i1 %i.dd, %i.ee
  br i1 %.not3.i.i, label %.thread22.sink.split.i, label %.thread22.i

.thread22.sink.split.i:                           ; preds = %._crit_edge.i, %bb.f
  %i.ef = add i64 %i.cu, 1
  br label %.thread22.i.outer

_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit: ; preds = %bb.e, %.lr.ph.i18.preheader, %bb.f, %.lr.ph.i18, %vector.early.exit110
  %.sroa.15.7 = phi i64 [ %i.dx, %.lr.ph.i18 ], [ %i.dw, %vector.early.exit110 ], [ %.sroa.15.3, %.lr.ph.i18.preheader ], [ %.sroa.15.3, %bb.e ], [ %i.cs, %bb.f ] ; 2 uses
  %i.eg = icmp ne i64 %.ph117, %i.cr
  %i.eh = icmp ne i64 %.sroa.15.7, %i.cs
  %.not3.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %.not3.i, label %._crit_edge31.i, label %._crit_edge, !llvm.loop !846
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(784) %1) local_unnamed_addr #0 align 2 !guid !850 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !193  ; 2 uses
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
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.07
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !352
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !353  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !355  ; 2 uses
  %i.u = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t)
  tail call void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(192) %i.t)
  %i.v = add nuw i64 %.07, 1                      ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = icmp ult i64 %i.v, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %1) local_unnamed_addr #0 align 2 !guid !851 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !352
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !355  ; 2 uses
  %i.k = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(192) %i.j)
  tail call void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %i.k, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %i.j)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20PartitionedTupleData7CombineERS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !853 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !317
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !404  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !404
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  br i1 %i.j, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.preheader

.preheader:                                       ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !193
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit, label %.lr.ph

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !404
  store <2 x ptr> %i.p, ptr %i.f, align 8, !tbaa !404
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !854
  store ptr %i.r, ptr %i.o, align 8, !tbaa !854
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS2_ELb1EEELb0ESaIS5_EEaSEOS7_.exit

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.013 = phi i64 [ %i.y, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !193
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
end_hunk_2
