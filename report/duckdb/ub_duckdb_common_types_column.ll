inline.NumInlined: 5543
inline.NumDeleted: 2531
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK6duckdb21PartitionedColumnData21CreatePartitionBufferEv:bb.a
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1230, !nonnull !64, !align !94
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.e)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.j)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21PartitionedColumnData6AppendERNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !362  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !1253
  %i.j = icmp ult i64 %i.i, 256
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb1EEEvRNS_32PartitionedColumnDataAppendStateEm(ptr noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %i.e)
  br label %_ZNK6duckdb21PartitionedColumnData17BuildPartitionSelERNS_32PartitionedColumnDataAppendStateEm.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb0EEEvRNS_32PartitionedColumnDataAppendStateEm(ptr noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %i.e)
  br label %_ZNK6duckdb21PartitionedColumnData17BuildPartitionSelERNS_32PartitionedColumnDataAppendStateEm.exit

_ZNK6duckdb21PartitionedColumnData17BuildPartitionSelERNS_32PartitionedColumnDataAppendStateEm.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.k = load ptr, ptr %0, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !1254
  %i.o = icmp ult i64 %i.n, 256
  %i.p = tail call i64 @_ZN6duckdb32PartitionedColumnDataAppendState34GetPartitionIndexIfSinglePartitionEb(ptr noundef nonnull align 8 dereferenceable(360) %1, i1 noundef zeroext %i.o) ; 2 uses
  store i64 %i.p, ptr %3, align 8
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21PartitionedColumnData17BuildPartitionSelERNS_32PartitionedColumnDataAppendStateEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.r)
  %i.t = call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.v = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.v)
  %i.x = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  call void @_ZN6duckdb20ColumnDataCollection6AppendERNS_21ColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.h

bb.e:                                             ; preds = %_ZNK6duckdb21PartitionedColumnData17BuildPartitionSelERNS_32PartitionedColumnDataAppendStateEm.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !1254
  %i.ac = icmp ult i64 %i.ab, 256
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb21PartitionedColumnData14AppendInternalILb1EEEvRNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb21PartitionedColumnData14AppendInternalILb0EEEvRNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb21PartitionedColumnData17BuildPartitionSelERNS_32PartitionedColumnDataAppendStateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !1254
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb1EEEvRNS_32PartitionedColumnDataAppendStateEm(ptr noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb0EEEvRNS_32PartitionedColumnDataAppendStateEm(ptr noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZN6duckdb32PartitionedColumnDataAppendState34GetPartitionIndexIfSinglePartitionEb(ptr noundef nonnull align 8 dereferenceable(360) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1255
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1270, !noalias !1271 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43, !noalias !1271
  %i.h = and i8 %i.g, 1
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %._crit_edge30.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge30.i.i:                                ; preds = %bb.c
  %i.i = load i64, ptr %i.a, align 8, !tbaa !1274, !noalias !1275 ; 2 uses
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !43, !noalias !1271 ; 2 uses
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
  br i1 %exitcond.not.i.i22, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !1278

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.aa = xor i64 %i.l, -1
  %i.ab = add nsw i64 %i.u, %i.aa                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !1278

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
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1279

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !1278

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
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !1278

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.as = add nsw i64 %i.an, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.u
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !1280

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !1278

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
  %.sroa.8.0 = phi i64 [ 0, %bb.c ], [ %i.an, %.lr.ph.i.i ], [ %i.am, %vector.early.exit ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.d ], [ %i.k, %bb.e ]
  %.sroa.3.0 = phi i64 [ 0, %bb.c ], [ %.ph28, %.lr.ph.i.i ], [ %.ph28, %vector.early.exit ], [ %.ph28, %bb.e ], [ %.ph28, %.lr.ph.i.preheader.i ], [ %.ph28, %bb.d ]
  %i.ax = shl i64 %.sroa.3.0, 3
  %i.ay = add i64 %i.ax, %.sroa.8.0
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ay)
  %i.az = load i64, ptr %2, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !1281
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1283
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1284
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bg)
  %i.bh = load i64, ptr %3, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %.sroa.02.0 = phi i64 [ %i.az, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit ], [ -1, %bb.b ], [ %i.bh, %bb.h ], [ -1, %bb.g ]
  ret i64 %.sroa.02.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1238
  %i.e = load ptr, ptr %0, align 8, !tbaa !1237   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.b, align 8, !tbaa !103
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !405    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.b, align 8, !tbaa !103
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !925    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21PartitionedColumnData14AppendInternalILb1EEEvRNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1270, !noalias !1290 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !43, !noalias !1290
  %i.e = and i8 %i.d, 1
  %.not.i = icmp eq i8 %i.e, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1274, !noalias !64 ; 2 uses
  %i.f = lshr i64 %.pre, 3                        ; 6 uses
  %i.g = and i64 %.pre, 7                         ; 6 uses
  br i1 %.not.i, label %._crit_edge30.i.i.outer, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge30.i.i.outer:                          ; preds = %bb.a, %.thread22.sink.split.i.i
  %.ph184 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %bb.a ] ; 2 uses
  %.ph185 = phi i64 [ %i.as, %.thread22.sink.split.i.i ], [ 0, %bb.a ] ; 6 uses
  br label %._crit_edge30.i.i

._crit_edge30.i.i:                                ; preds = %._crit_edge30.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph184, %._crit_edge30.i.i.outer ] ; 3 uses
  %i.h = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.ph184, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.i = phi i64 [ %i.f, %._crit_edge.i.i ], [ %.ph185, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge30.i.i
  %i.k = icmp eq i64 %i.i, %i.f
  %i.l = icmp samesign ult i64 %i.h, %i.g
  %or.cond.i.i = and i1 %i.l, %i.k
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i.i: ; preds = %bb.b, %._crit_edge30.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43, !noalias !1290 ; 2 uses
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
  %exitcond.not.i.i126 = icmp eq i64 %i.v, %i.q
  br i1 %exitcond.not.i.i126, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !1293

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.w = xor i64 %i.h, -1
  %i.x = add nsw i64 %i.q, %i.w                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !1293

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.x, -16                      ; 3 uses
  %i.y = or disjoint i64 %i.v, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.z = trunc nuw nsw i64 %i.v to i32
  %broadcast.splatinsert128 = insertelement <16 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat129 = shufflevector <16 x i32> %broadcast.splatinsert128, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat129, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
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
  %.not149 = icmp eq i16 %i.ae, 0
  br i1 %.not149, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1294

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !1293

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph181 = phi i64 [ %i.v, %.lr.ph.i.i.lr.ph ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.ag = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ad, i1 false)
  %i.ah = add i64 %index, %i.ag
  %i.ai = add i64 %i.v, %i.ah
  br label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.aj = phi i64 [ %i.ao, %.lr.ph.i ], [ %.ph181, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 255
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.am, %i.r
  %.not24.i.i = icmp eq i32 %i.an, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !1293

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ao = add nsw i64 %i.aj, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.q
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !1295

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !1293

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
  %.sroa.16.1 = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.a ], [ %i.ai, %vector.early.exit ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.653.1 = phi i64 [ %.ph185, %.lr.ph.i.i ], [ 0, %bb.a ], [ %.ph185, %vector.early.exit ], [ %.ph185, %bb.c ], [ %.ph185, %.lr.ph.i.preheader.i ], [ %.ph185, %bb.b ] ; 2 uses
  %i.at = icmp ne i64 %.sroa.653.1, %i.f
  %i.au = icmp ne i64 %.sroa.16.1, %i.g
  %.not3.i76 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %.not3.i76, label %.lr.ph79, label %_ZN6duckdb15SelectionVectorD2Ev.exit

.lr.ph79:                                         ; preds = %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit
  %.pre89 = load ptr, ptr %i.bb, align 8, !tbaa !54 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.pre89, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre89, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.bd, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre89, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !58
  %i.bi = load ptr, ptr %.pre89, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %.pre89) #24, !inline_history !568
  %i.bl = load ptr, ptr %.pre89, align 8, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %.pre89) #24, !inline_history !568
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.h ], [ %i.bq, %bb.i ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.j, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !60

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre89) #24
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZNK6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, %._crit_edge, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.k:                                             ; preds = %.lr.ph79, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit
  %.sroa.653.078 = phi i64 [ %.sroa.653.1, %.lr.ph79 ], [ %.ph155, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit ] ; 3 uses
  %.sroa.16.077 = phi i64 [ %.sroa.16.1, %.lr.ph79 ], [ %.sroa.16.7, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit ] ; 3 uses
  %i.bs = shl i64 %.sroa.653.078, 3
  %i.bt = add i64 %i.bs, %.sroa.16.077            ; 3 uses
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %i.bt)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  %i.bv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.m unwind label %bb.ac      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef %i.bt)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.bx = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %bb.o unwind label %bb.ad      ; 5 uses

bb.o:                                             ; preds = %bb.n
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %i.bt)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.bz = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.q unwind label %bb.ae      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !1296
  %.idx.i.i.i = shl i64 %.sroa.653.078, 7
  %i.cb = getelementptr i8, ptr %i.ca, i64 %.idx.i.i.i
  %i.cc = getelementptr [16 x i8], ptr %i.cb, i64 %.sroa.16.077 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !1297
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !103
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = load ptr, ptr %i.az, align 8, !tbaa !489
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cg
  store ptr null, ptr %i.ba, align 8, !tbaa !1248
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !54 ; 8 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !54
  %.not.i.i.i.i.i48 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i48, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ck, align 8, !tbaa !56
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !58
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #24, !inline_history !1298
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #24, !inline_history !1298
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.u ], [ %i.cx, %bb.v ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !60

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s, %bb.q
  store ptr %i.ci, ptr %3, align 8, !tbaa !489
  %i.cz = load i64, ptr %i.cd, align 8, !tbaa !103
  %i.da = load ptr, ptr %0, align 8, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.y unwind label %bb.af, !inline_history !1299

bb.y:                                             ; preds = %bb.x
  %i.de = lshr i64 %i.dd, 1
  %.not = icmp ult i64 %i.cz, %i.de
  br i1 %.not, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bc)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.df = load i64, ptr %i.cd, align 8, !tbaa !103
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.df, i64 noundef 0)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb20ColumnDataCollection6AppendERNS_21ColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bv, ptr noundef nonnull align 8 dereferenceable(88) %i.bz, ptr noundef nonnull align 8 dereferenceable(72) %i.bc)
          to label %._crit_edge30.i unwind label %bb.af

bb.ac:                                            ; preds = %bb.l, %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ad:                                            ; preds = %bb.n, %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ae:                                            ; preds = %bb.p, %bb.o
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.af:                                            ; preds = %bb.ah, %bb.x, %bb.al, %bb.ak, %bb.aj, %bb.ag, %bb.ab, %bb.aa, %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ag:                                            ; preds = %bb.y
  %i.dk = load i64, ptr %i.cd, align 8, !tbaa !103
  invoke void @_ZN6duckdb9DataChunk6AppendERKS0_bPNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext false, ptr noundef nonnull %3, i64 noundef %i.dk)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !362
  %i.dn = load ptr, ptr %0, align 8, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.ai unwind label %bb.af, !inline_history !1299

bb.ai:                                            ; preds = %bb.ah
  %i.dr = lshr i64 %i.dq, 1
  %.not40 = icmp ult i64 %i.dm, %i.dr
  br i1 %.not40, label %._crit_edge30.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6duckdb20ColumnDataCollection6AppendERNS_21ColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bv, ptr noundef nonnull align 8 dereferenceable(88) %i.bz, ptr noundef nonnull align 8 dereferenceable(72) %i.bx)
          to label %bb.ak unwind label %bb.af

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bx)
          to label %bb.al unwind label %bb.af

bb.al:                                            ; preds = %bb.ak
  %i.ds = load ptr, ptr %0, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef i64 %i.du(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.am unwind label %bb.af

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !1300
  br label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %bb.ai, %bb.am, %bb.ab
  %i.dx = add i64 %.sroa.16.077, 1                ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 8                    ; 2 uses
  %.sroa.16.2 = select i1 %i.dy, i64 0, i64 %i.dx
  %i.dz = zext i1 %i.dy to i64
  %.sroa.653.2 = add i64 %.sroa.653.078, %i.dz
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !1274, !noalias !1301 ; 2 uses
  %i.eb = lshr i64 %i.ea, 3                       ; 6 uses
  %i.ec = and i64 %i.ea, 7                        ; 6 uses
  br label %.thread22.i.outer

.thread22.i.outer:                                ; preds = %.thread22.sink.split.i, %._crit_edge30.i
  %.ph154 = phi i64 [ 0, %.thread22.sink.split.i ], [ %.sroa.16.2, %._crit_edge30.i ] ; 2 uses
  %.ph155 = phi i64 [ %i.fp, %.thread22.sink.split.i ], [ %.sroa.653.2, %._crit_edge30.i ] ; 3 uses
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread22.i.outer, %._crit_edge.i
  %.sroa.16.3 = phi i64 [ %.sroa.16.4, %._crit_edge.i ], [ %.ph154, %.thread22.i.outer ] ; 3 uses
  %i.ed = phi i64 [ %i.ec, %._crit_edge.i ], [ %.ph154, %.thread22.i.outer ] ; 6 uses
  %i.ee = phi i64 [ %i.eb, %._crit_edge.i ], [ %.ph155, %.thread22.i.outer ] ; 6 uses
  %i.ef = icmp ult i64 %i.ee, %i.eb
  br i1 %i.ef, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %.thread22.i
  %i.eg = icmp eq i64 %i.ee, %i.eb
  %i.eh = icmp ult i64 %i.ed, %i.ec
  %or.cond.i = and i1 %i.eh, %i.eg
  br i1 %or.cond.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i: ; preds = %bb.an, %.thread22.i
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !1270
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ee
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !43  ; 2 uses
  %i.el = icmp eq i8 %i.ek, 0
  %i.em = icmp eq i64 %i.ee, %i.eb                ; 2 uses
  br i1 %i.el, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i
  br i1 %i.em, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, label %.thread22.sink.split.i

bb.ap:                                            ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb1EEES4_.exit.thread.i
  %i.en = select i1 %i.em, i64 %i.ec, i64 8       ; 8 uses
  %.not27.i = icmp ult i64 %i.ed, %i.en
  br i1 %.not27.i, label %.lr.ph.i50.preheader, label %._crit_edge.i

.lr.ph.i50.preheader:                             ; preds = %bb.ap
  %i.eo = zext i8 %i.ek to i32                    ; 3 uses
  %i.ep = trunc nuw nsw i64 %i.ed to i32
  %i.eq = shl nuw nsw i32 1, %i.ep
  %i.er = and i32 %i.eq, %i.eo
  %.not24.i72 = icmp eq i32 %i.er, 0
  br i1 %.not24.i72, label %.lr.ph.preheader, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i50.preheader
  %i.es = add nsw i64 %i.ed, 1                    ; 5 uses
  %exitcond.not.i127 = icmp eq i64 %i.es, %i.en
  br i1 %exitcond.not.i127, label %._crit_edge.i, label %.lr.ph.i50.lr.ph, !llvm.loop !1293

.lr.ph.i50.lr.ph:                                 ; preds = %.lr.ph.preheader
  %i.et = xor i64 %i.ed, -1
  %i.eu = add i64 %i.en, %i.et                    ; 3 uses
  %min.iters.check131 = icmp ult i64 %i.eu, 48
  br i1 %min.iters.check131, label %.lr.ph.i50.preheader152, label %vector.ph132, !llvm.loop !1293

vector.ph132:                                     ; preds = %.lr.ph.i50.lr.ph
  %n.vec133 = and i64 %i.eu, -16                  ; 3 uses
  %i.ev = add i64 %i.es, %n.vec133
  %broadcast.splatinsert134 = insertelement <16 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat135 = shufflevector <16 x i32> %broadcast.splatinsert134, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ew = trunc i64 %i.es to i32
  %broadcast.splatinsert136 = insertelement <16 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat137 = shufflevector <16 x i32> %broadcast.splatinsert136, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction138 = add <16 x i32> %broadcast.splat137, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body.interim144, %vector.ph132
  %index140 = phi i64 [ 0, %vector.ph132 ], [ %index.next142, %vector.body.interim144 ] ; 2 uses
  %vec.ind141 = phi <16 x i32> [ %induction138, %vector.ph132 ], [ %vec.ind.next143, %vector.body.interim144 ] ; 2 uses
  %i.ex = and <16 x i32> %vec.ind141, splat (i32 255)
  %i.ey = shl nuw <16 x i32> splat (i32 1), %i.ex
  %i.ez = and <16 x i32> %i.ey, %broadcast.splat135
  %.fr150 = freeze <16 x i32> %i.ez
  %i.fa = icmp ne <16 x i32> %.fr150, zeroinitializer ; 2 uses
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %.not151 = icmp eq i16 %i.fb, 0
  br i1 %.not151, label %vector.body.interim144, label %vector.early.exit147

vector.body.interim144:                           ; preds = %vector.body139
  %vec.ind.next143 = add <16 x i32> %vec.ind141, splat (i32 16)
  %index.next142 = add nuw i64 %index140, 16      ; 2 uses
  %i.fc = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.fc, label %middle.block145, label %vector.body139, !llvm.loop !1304

middle.block145:                                  ; preds = %vector.body.interim144
  %cmp.n146 = icmp eq i64 %i.eu, %n.vec133
  br i1 %cmp.n146, label %.lr.ph.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i50.preheader152, !llvm.loop !1293

.lr.ph.i50.preheader152:                          ; preds = %.lr.ph.i50.lr.ph, %middle.block145
  %.ph = phi i64 [ %i.es, %.lr.ph.i50.lr.ph ], [ %i.ev, %middle.block145 ]
  br label %.lr.ph.i50

vector.early.exit147:                             ; preds = %vector.body139
  %i.fd = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.fa, i1 false)
  %i.fe = add i64 %index140, %i.fd
  %i.ff = add i64 %i.es, %i.fe
  br label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader152, %.lr.ph
  %i.fg = phi i64 [ %i.fl, %.lr.ph ], [ %.ph, %.lr.ph.i50.preheader152 ] ; 3 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 255
  %i.fj = shl nuw i32 1, %i.fi
  %i.fk = and i32 %i.fj, %i.eo
  %.not24.i = icmp eq i32 %i.fk, 0
  br i1 %.not24.i, label %.lr.ph, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit, !llvm.loop !1293

.lr.ph:                                           ; preds = %.lr.ph.i50
  %i.fl = add nsw i64 %i.fg, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fl, %i.en
  br i1 %exitcond.not.i, label %.lr.ph.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i50, !llvm.loop !1305

.lr.ph.._crit_edge.i.loopexit_crit_edge:          ; preds = %.lr.ph, %middle.block145
  br label %._crit_edge.i, !llvm.loop !1293

._crit_edge.i:                                    ; preds = %.lr.ph.preheader, %.lr.ph.._crit_edge.i.loopexit_crit_edge, %bb.ap
  %.sroa.16.4 = phi i64 [ %.sroa.16.3, %bb.ap ], [ %i.en, %.lr.ph.._crit_edge.i.loopexit_crit_edge ], [ %i.en, %.lr.ph.preheader ]
  %i.fm = phi i64 [ %i.ed, %bb.ap ], [ %i.en, %.lr.ph.._crit_edge.i.loopexit_crit_edge ], [ %i.en, %.lr.ph.preheader ]
  %i.fn = icmp ne i64 %i.ee, %i.eb
  %i.fo = icmp ne i64 %i.fm, %i.ec
  %.not3.i.i = or i1 %i.fn, %i.fo
  br i1 %.not3.i.i, label %.thread22.sink.split.i, label %.thread22.i

.thread22.sink.split.i:                           ; preds = %._crit_edge.i, %bb.ao
  %i.fp = add i64 %i.ee, 1
  br label %.thread22.i.outer

_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb1EEppEv.exit: ; preds = %bb.an, %.lr.ph.i50.preheader, %bb.ao, %.lr.ph.i50, %vector.early.exit147
  %.sroa.16.7 = phi i64 [ %i.fg, %.lr.ph.i50 ], [ %i.ff, %vector.early.exit147 ], [ %.sroa.16.3, %.lr.ph.i50.preheader ], [ %.sroa.16.3, %bb.an ], [ %i.ec, %bb.ao ] ; 2 uses
  %i.fq = icmp ne i64 %.ph155, %i.eb
  %i.fr = icmp ne i64 %.sroa.16.7, %i.ec
  %.not3.i = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %.not3.i, label %bb.k, label %._crit_edge

bb.aq:                                            ; preds = %bb.ad, %bb.af, %bb.ae, %bb.ac
  %.pn46 = phi { ptr, i32 } [ %i.dh, %bb.ad ], [ %i.dj, %bb.af ], [ %i.di, %bb.ae ], [ %i.dg, %bb.ac ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn46
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21PartitionedColumnData14AppendInternalILb0EEEvRNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.047.052 = load ptr, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not5153 = icmp eq ptr %.sroa.047.052, null
  br i1 %.not5153, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.ak
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !58
  %i.n = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #24, !inline_history !568
  %i.q = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #24, !inline_history !568
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #24
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.a, %._crit_edge, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.ak
  %.sroa.047.054 = phi ptr [ %.sroa.047.052, %.lr.ph ], [ %.sroa.047.0, %bb.ak ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.047.054, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1284 ; 3 uses
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.y)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.aa = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.j unwind label %bb.z       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.y)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.l unwind label %bb.aa      ; 5 uses

bb.l:                                             ; preds = %bb.k
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.y)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.n unwind label %bb.ab      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.047.054, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.047.054, i64 24 ; 4 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !1297
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !103
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !489
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  store ptr null, ptr %i.f, align 8, !tbaa !1248
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !54  ; 8 uses
  store ptr null, ptr %i.g, align 8, !tbaa !54
end_hunk_1
begin_hunk_2_@_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb1EEEvRNS_32PartitionedColumnDataAppendStateEm:bb.a
  %i.az = lshr i64 %i.ay, 3                       ; 2 uses
  %.sink3.i = select i1 %.not.i, i64 %i.az, i64 %i.ap ; 2 uses
  %.sink.in.i = select i1 %.not.i, i64 %i.ay, i64 %i.ao
  %.sink.i = and i64 %.sink.in.i, 7               ; 2 uses
  %i.ba = and i64 %i.ay, 7
  %i.bb = icmp eq i64 %.sink3.i, %i.az
  %i.bc = icmp eq i64 %.sink.i, %i.ba
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = xor i32 %i.at, -1
  %i.bf = lshr i32 %i.be, %i.av
  %i.bg = and i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !1255
  %i.bj = add i64 %i.bi, %i.bh
  store i64 %i.bj, ptr %i.b, align 8, !tbaa !1255
  %i.bk = load i64, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = trunc i64 %i.bk to i8
  %i.bn = and i8 %i.bm, 7
  %i.bo = shl nuw i8 1, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !43
  %i.br = or i8 %i.bo, %i.bq
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !43
  %i.bs = load i64, ptr %i.an, align 8, !tbaa !103
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !1296
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !103
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 1, ptr %.sroa.457.0..sroa_idx, align 8, !tbaa !103
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !1296
  %.idx.i.i.i = shl i64 %.sink3.i, 7
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx.i.i.i
  %i.bx = getelementptr [16 x i8], ptr %i.bw, i64 %.sink.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1313
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !1313
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cb = add nuw i64 %.079, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %1
  br i1 %exitcond.not, label %.loopexit71, label %bb.e, !llvm.loop !1314

bb.i:                                             ; preds = %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5clearEv.exit
  %i.cc = load i64, ptr %i.ak, align 8, !tbaa !103 ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !1270 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !43
  %i.ch = zext i8 %i.cg to i32
  %i.ci = trunc i64 %i.cc to i32
  %i.cj = and i32 %i.ci, 7
  %i.ck = xor i32 %i.ch, -1
  %i.cl = lshr i32 %i.ck, %i.cj
  %i.cm = and i32 %i.cl, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = load i64, ptr %i.b, align 8, !tbaa !1255
  %i.cp = add i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !1255
  %i.cq = load i64, ptr %i.ak, align 8, !tbaa !103 ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = trunc i64 %i.cq to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !43
  %i.cx = or i8 %i.cu, %i.cw
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cz = load i64, ptr %i.ak, align 8, !tbaa !103
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !1296
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cz ; 2 uses
  store i64 0, ptr %i.db, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !103
  br label %.loopexit71

bb.j:                                             ; preds = %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5clearEv.exit
  %i.dc = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.x unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.040 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.df = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.df) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.040, label %bb.n, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.040, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn68 = phi { ptr, i32 } [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.dc) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67 = phi { ptr, i32 } [ %.pn68, %bb.n ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn67

.loopexit71:                                      ; preds = %bb.h, %.preheader, %bb.i
  %i.di = load i64, ptr %i.b, align 8, !tbaa !1255
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.loopexit71
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !1270, !noalias !1315 ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !43, !noalias !1315
  %i.dm = and i8 %i.dl, 1
  %.not.i43 = icmp eq i8 %i.dm, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1274, !noalias !64 ; 2 uses
  %i.dn = lshr i64 %.pre, 3                       ; 12 uses
  %i.do = and i64 %.pre, 7                        ; 12 uses
  br i1 %.not.i43, label %._crit_edge30.i.i.outer, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge30.i.i.outer:                          ; preds = %bb.p, %.thread22.sink.split.i.i
  %.ph197 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %bb.p ] ; 2 uses
  %.ph198 = phi i64 [ %i.fa, %.thread22.sink.split.i.i ], [ 0, %bb.p ] ; 6 uses
  br label %._crit_edge30.i.i

._crit_edge30.i.i:                                ; preds = %._crit_edge30.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph197, %._crit_edge30.i.i.outer ] ; 3 uses
  %i.dp = phi i64 [ %i.do, %._crit_edge.i.i ], [ %.ph197, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.dq = phi i64 [ %i.dn, %._crit_edge.i.i ], [ %.ph198, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.dr = icmp ult i64 %i.dq, %i.dn
  br i1 %i.dr, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge30.i.i
  %i.ds = icmp eq i64 %i.dq, %i.dn
  %i.dt = icmp samesign ult i64 %i.dp, %i.do
  %or.cond.i.i = and i1 %i.dt, %i.ds
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i: ; preds = %bb.q, %._crit_edge30.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dq
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !43, !noalias !1315 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  %i.dx = icmp eq i64 %i.dq, %i.dn                ; 2 uses
  br i1 %i.dw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  br i1 %i.dx, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.s:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.dy = select i1 %i.dx, i64 %i.do, i64 8       ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.dp, %i.dy
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.s
  %i.dz = zext i8 %i.dv to i32                    ; 3 uses
  %i.ea = trunc nuw nsw i64 %i.dp to i32
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = and i32 %i.eb, %i.dz
  %.not24.i3.i = icmp eq i32 %i.ec, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.ed = add nuw nsw i64 %i.dp, 1                ; 5 uses
  %exitcond.not.i.i139 = icmp eq i64 %i.ed, %i.dy
  br i1 %exitcond.not.i.i139, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !1278

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.ee = xor i64 %i.dp, -1
  %i.ef = add nsw i64 %i.dy, %i.ee                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ef, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !1278

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.ef, -16                     ; 3 uses
  %i.eg = or disjoint i64 %i.ed, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.eh = trunc nuw nsw i64 %i.ed to i32
  %broadcast.splatinsert141 = insertelement <16 x i32> poison, i32 %i.eh, i64 0
  %broadcast.splat142 = shufflevector <16 x i32> %broadcast.splatinsert141, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat142, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ei = and <16 x i32> %vec.ind, splat (i32 255)
  %i.ej = shl nuw <16 x i32> splat (i32 1), %i.ei
  %i.ek = and <16 x i32> %i.ej, %broadcast.splat
  %.fr = freeze <16 x i32> %i.ek
  %i.el = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.em = bitcast <16 x i1> %i.el to i16
  %.not162 = icmp eq i16 %i.em, 0
  br i1 %.not162, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !1318

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !1278

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph194 = phi i64 [ %i.ed, %.lr.ph.i.i.lr.ph ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.eo = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.el, i1 false)
  %i.ep = add i64 %index, %i.eo
  %i.eq = add i64 %i.ed, %i.ep
  br label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.er = phi i64 [ %i.ew, %.lr.ph.i ], [ %.ph194, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.es = trunc i64 %i.er to i32
  %i.et = and i32 %i.es, 255
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = and i32 %i.eu, %i.dz
  %.not24.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !1278

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ew = add nsw i64 %i.er, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ew, %i.dy
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !1319

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !1278

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.s
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.s ], [ %i.dy, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.dy, %.lr.ph.i.preheader ]
  %i.ex = phi i64 [ %i.dp, %bb.s ], [ %i.dy, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.dy, %.lr.ph.i.preheader ]
  %i.ey = icmp ne i64 %i.dq, %i.dn
  %i.ez = icmp ne i64 %i.ex, %i.do
  %.not3.i.i.i = or i1 %i.ey, %i.ez
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %._crit_edge30.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.r
  %i.fa = add i64 %i.dq, 1
  br label %._crit_edge30.i.i.outer

_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.q, %.lr.ph.i.preheader.i, %bb.r, %.lr.ph.i.i, %vector.early.exit, %bb.p
  %.sroa.14.1 = phi i64 [ %i.er, %.lr.ph.i.i ], [ 0, %bb.p ], [ %i.eq, %vector.early.exit ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.q ], [ %i.do, %bb.r ] ; 2 uses
  %.sroa.548.1 = phi i64 [ %.ph198, %.lr.ph.i.i ], [ 0, %bb.p ], [ %.ph198, %vector.early.exit ], [ %.ph198, %bb.r ], [ %.ph198, %.lr.ph.i.preheader.i ], [ %.ph198, %bb.q ] ; 2 uses
  %i.fb = icmp ne i64 %.sroa.548.1, %i.dn
  %i.fc = icmp ne i64 %.sroa.14.1, %i.do
  %.not3.i85 = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %.not3.i85, label %._crit_edge30.i.lr.ph, label %._crit_edge

._crit_edge30.i.lr.ph:                            ; preds = %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1296
  br label %._crit_edge30.i

._crit_edge:                                      ; preds = %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not92 = icmp eq i64 %1, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph91

.lr.ph91:                                         ; preds = %._crit_edge
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.w

._crit_edge30.i:                                  ; preds = %._crit_edge30.i.lr.ph, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit
  %.04188 = phi i64 [ 0, %._crit_edge30.i.lr.ph ], [ %i.fl, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.548.087 = phi i64 [ %.sroa.548.1, %._crit_edge30.i.lr.ph ], [ %.ph168, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.14.086 = phi i64 [ %.sroa.14.1, %._crit_edge30.i.lr.ph ], [ %.sroa.14.7, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.idx.i.i.i44 = shl i64 %.sroa.548.087, 7
  %i.fh = getelementptr i8, ptr %i.fe, i64 %.idx.i.i.i44
  %i.fi = getelementptr [16 x i8], ptr %i.fh, i64 %.sroa.14.086 ; 2 uses
  store i64 %.04188, ptr %i.fi, align 8, !tbaa !1297
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !1313
  %i.fl = add i64 %i.fk, %.04188
  %i.fm = add i64 %.sroa.14.086, 1                ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 8                    ; 2 uses
  %.sroa.14.2 = select i1 %i.fn, i64 0, i64 %i.fm
  %i.fo = zext i1 %i.fn to i64
  %.sroa.548.2 = add i64 %.sroa.548.087, %i.fo
  br label %.thread22.i.outer

.thread22.i.outer:                                ; preds = %.thread22.sink.split.i, %._crit_edge30.i
  %.ph167 = phi i64 [ 0, %.thread22.sink.split.i ], [ %.sroa.14.2, %._crit_edge30.i ] ; 2 uses
  %.ph168 = phi i64 [ %i.ha, %.thread22.sink.split.i ], [ %.sroa.548.2, %._crit_edge30.i ] ; 3 uses
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread22.i.outer, %._crit_edge.i
  %.sroa.14.3 = phi i64 [ %.sroa.14.4, %._crit_edge.i ], [ %.ph167, %.thread22.i.outer ] ; 3 uses
  %i.fp = phi i64 [ %i.do, %._crit_edge.i ], [ %.ph167, %.thread22.i.outer ] ; 6 uses
  %i.fq = phi i64 [ %i.dn, %._crit_edge.i ], [ %.ph168, %.thread22.i.outer ] ; 6 uses
  %i.fr = icmp ult i64 %i.fq, %i.dn
  br i1 %i.fr, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %.thread22.i
  %i.fs = icmp eq i64 %i.fq, %i.dn
  %i.ft = icmp ult i64 %i.fp, %i.do
  %or.cond.i = and i1 %i.ft, %i.fs
  br i1 %or.cond.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i: ; preds = %bb.t, %.thread22.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !43  ; 2 uses
  %i.fw = icmp eq i8 %i.fv, 0
  %i.fx = icmp eq i64 %i.fq, %i.dn                ; 2 uses
  br i1 %i.fw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i
  br i1 %i.fx, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, label %.thread22.sink.split.i

bb.v:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i
  %i.fy = select i1 %i.fx, i64 %i.do, i64 8       ; 8 uses
  %.not27.i = icmp ult i64 %i.fp, %i.fy
  br i1 %.not27.i, label %.lr.ph.i45.preheader, label %._crit_edge.i

.lr.ph.i45.preheader:                             ; preds = %bb.v
  %i.fz = zext i8 %i.fv to i32                    ; 3 uses
  %i.ga = trunc nuw nsw i64 %i.fp to i32
  %i.gb = shl nuw nsw i32 1, %i.ga
  %i.gc = and i32 %i.gb, %i.fz
  %.not24.i80 = icmp eq i32 %i.gc, 0
  br i1 %.not24.i80, label %.lr.ph81.preheader, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

.lr.ph81.preheader:                               ; preds = %.lr.ph.i45.preheader
  %i.gd = add nsw i64 %i.fp, 1                    ; 5 uses
  %exitcond.not.i140 = icmp eq i64 %i.gd, %i.fy
  br i1 %exitcond.not.i140, label %._crit_edge.i, label %.lr.ph.i45.lr.ph, !llvm.loop !1278

.lr.ph.i45.lr.ph:                                 ; preds = %.lr.ph81.preheader
  %i.ge = xor i64 %i.fp, -1
  %i.gf = add i64 %i.fy, %i.ge                    ; 3 uses
  %min.iters.check144 = icmp ult i64 %i.gf, 48
  br i1 %min.iters.check144, label %.lr.ph.i45.preheader165, label %vector.ph145, !llvm.loop !1278

vector.ph145:                                     ; preds = %.lr.ph.i45.lr.ph
  %n.vec146 = and i64 %i.gf, -16                  ; 3 uses
  %i.gg = add i64 %i.gd, %n.vec146
  %broadcast.splatinsert147 = insertelement <16 x i32> poison, i32 %i.fz, i64 0
  %broadcast.splat148 = shufflevector <16 x i32> %broadcast.splatinsert147, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.gh = trunc i64 %i.gd to i32
  %broadcast.splatinsert149 = insertelement <16 x i32> poison, i32 %i.gh, i64 0
  %broadcast.splat150 = shufflevector <16 x i32> %broadcast.splatinsert149, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction151 = add <16 x i32> %broadcast.splat150, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body.interim157, %vector.ph145
  %index153 = phi i64 [ 0, %vector.ph145 ], [ %index.next155, %vector.body.interim157 ] ; 2 uses
  %vec.ind154 = phi <16 x i32> [ %induction151, %vector.ph145 ], [ %vec.ind.next156, %vector.body.interim157 ] ; 2 uses
  %i.gi = and <16 x i32> %vec.ind154, splat (i32 255)
  %i.gj = shl nuw <16 x i32> splat (i32 1), %i.gi
  %i.gk = and <16 x i32> %i.gj, %broadcast.splat148
  %.fr163 = freeze <16 x i32> %i.gk
  %i.gl = icmp ne <16 x i32> %.fr163, zeroinitializer ; 2 uses
  %i.gm = bitcast <16 x i1> %i.gl to i16
  %.not164 = icmp eq i16 %i.gm, 0
  br i1 %.not164, label %vector.body.interim157, label %vector.early.exit160

vector.body.interim157:                           ; preds = %vector.body152
  %vec.ind.next156 = add <16 x i32> %vec.ind154, splat (i32 16)
  %index.next155 = add nuw i64 %index153, 16      ; 2 uses
  %i.gn = icmp eq i64 %index.next155, %n.vec146
  br i1 %i.gn, label %middle.block158, label %vector.body152, !llvm.loop !1320

middle.block158:                                  ; preds = %vector.body.interim157
  %cmp.n159 = icmp eq i64 %i.gf, %n.vec146
  br i1 %cmp.n159, label %.lr.ph81.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i45.preheader165, !llvm.loop !1278

.lr.ph.i45.preheader165:                          ; preds = %.lr.ph.i45.lr.ph, %middle.block158
  %.ph = phi i64 [ %i.gd, %.lr.ph.i45.lr.ph ], [ %i.gg, %middle.block158 ]
  br label %.lr.ph.i45

vector.early.exit160:                             ; preds = %vector.body152
  %i.go = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.gl, i1 false)
  %i.gp = add i64 %index153, %i.go
  %i.gq = add i64 %i.gd, %i.gp
  br label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader165, %.lr.ph81
  %i.gr = phi i64 [ %i.gw, %.lr.ph81 ], [ %.ph, %.lr.ph.i45.preheader165 ] ; 3 uses
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = and i32 %i.gs, 255
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = and i32 %i.gu, %i.fz
  %.not24.i = icmp eq i32 %i.gv, 0
  br i1 %.not24.i, label %.lr.ph81, label %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, !llvm.loop !1278

.lr.ph81:                                         ; preds = %.lr.ph.i45
  %i.gw = add nsw i64 %i.gr, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gw, %i.fy
  br i1 %exitcond.not.i, label %.lr.ph81.._crit_edge.i.loopexit_crit_edge, label %.lr.ph.i45, !llvm.loop !1321

.lr.ph81.._crit_edge.i.loopexit_crit_edge:        ; preds = %.lr.ph81, %middle.block158
  br label %._crit_edge.i, !llvm.loop !1278

._crit_edge.i:                                    ; preds = %.lr.ph81.preheader, %.lr.ph81.._crit_edge.i.loopexit_crit_edge, %bb.v
  %.sroa.14.4 = phi i64 [ %.sroa.14.3, %bb.v ], [ %i.fy, %.lr.ph81.._crit_edge.i.loopexit_crit_edge ], [ %i.fy, %.lr.ph81.preheader ]
  %i.gx = phi i64 [ %i.fp, %bb.v ], [ %i.fy, %.lr.ph81.._crit_edge.i.loopexit_crit_edge ], [ %i.fy, %.lr.ph81.preheader ]
  %i.gy = icmp ne i64 %i.fq, %i.dn
  %i.gz = icmp ne i64 %i.gx, %i.do
  %.not3.i.i = or i1 %i.gy, %i.gz
  br i1 %.not3.i.i, label %.thread22.sink.split.i, label %.thread22.i

.thread22.sink.split.i:                           ; preds = %._crit_edge.i, %bb.u
  %i.ha = add i64 %i.fq, 1
  br label %.thread22.i.outer

_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit: ; preds = %bb.t, %.lr.ph.i45.preheader, %bb.u, %.lr.ph.i45, %vector.early.exit160
  %.sroa.14.7 = phi i64 [ %i.gr, %.lr.ph.i45 ], [ %i.gq, %vector.early.exit160 ], [ %.sroa.14.3, %.lr.ph.i45.preheader ], [ %.sroa.14.3, %bb.t ], [ %i.do, %bb.u ] ; 2 uses
  %i.hb = icmp ne i64 %.ph168, %i.dn
  %i.hc = icmp ne i64 %.sroa.14.7, %i.do
  %.not3.i = select i1 %i.hb, i1 true, i1 %i.hc
  br i1 %.not3.i, label %._crit_edge30.i, label %._crit_edge, !llvm.loop !1322

bb.w:                                             ; preds = %.lr.ph91, %bb.w
  %.03889 = phi i64 [ 0, %.lr.ph91 ], [ %i.ii, %bb.w ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.03889 ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !103 ; 2 uses
  %i.hf = lshr i64 %i.he, 3
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !1270 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !43
  %i.hj = zext i8 %i.hi to i32
  %i.hk = trunc i64 %i.he to i32
  %i.hl = and i32 %i.hk, 7
  %i.hm = xor i32 %i.hj, -1
  %i.hn = lshr i32 %i.hm, %i.hl
  %i.ho = and i32 %i.hn, 1
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = load i64, ptr %i.b, align 8, !tbaa !1255
  %i.hr = add i64 %i.hq, %i.hp
  store i64 %i.hr, ptr %i.b, align 8, !tbaa !1255
  %i.hs = load i64, ptr %i.hd, align 8, !tbaa !103 ; 2 uses
  %i.ht = lshr i64 %i.hs, 3
  %i.hu = trunc i64 %i.hs to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = shl nuw i8 1, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ht ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !43
  %i.hz = or i8 %i.hw, %i.hy
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !43
  %i.ia = load i64, ptr %i.hd, align 8, !tbaa !103
  %i.ib = load ptr, ptr %i.fg, align 8, !tbaa !1296
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ia ; 2 uses
  %i.id = trunc i64 %.03889 to i32
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !103 ; 2 uses
  %i.if = add i64 %i.ie, 1
  store i64 %i.if, ptr %i.ic, align 8, !tbaa !103
  %i.ig = load ptr, ptr %i.ff, align 8, !tbaa !489
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ie
  store i32 %i.id, ptr %i.ih, align 4, !tbaa !3
  %i.ii = add nuw i64 %.03889, 1                  ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ii, %1
  br i1 %exitcond102.not, label %.loopexit, label %bb.w, !llvm.loop !1323

.loopexit:                                        ; preds = %bb.w, %._crit_edge, %.loopexit71
  ret void

bb.x:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb0EEEvRNS_32PartitionedColumnDataAppendStateEm(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1283 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i, align 8, !tbaa !129 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #25
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1324

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1325
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1326
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !165  ; 3 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !493
  switch i8 %i.k, label %bb.p [
    i8 0, label %.preheader88
    i8 2, label %bb.l
  ]

.preheader88:                                     ; preds = %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE5clearEv.exit
  %.not112 = icmp eq i64 %1, 0
  br i1 %.not112, label %.loopexit89, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.0103 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.k ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0103
  %i.n = load i64, ptr %i.l, align 8, !tbaa !1281
  %.not.not.i.i = icmp eq i64 %i.n, 0
  %i.o = load i64, ptr %i.m, align 8              ; 13 uses
  br i1 %.not.not.i.i, label %.preheader164, label %bb.d

.preheader164:                                    ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.b, %bb.b ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !129 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit85.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader164
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !103
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE4findERS5_.exit, label %.preheader164, !llvm.loop !1327

bb.d:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.f, align 8, !tbaa !1326 ; 4 uses
  %i.t = urem i64 %i.o, %i.s                      ; 5 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !1325
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !133  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.e

end_hunk_2
