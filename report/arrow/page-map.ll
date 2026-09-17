Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/page-map?download=true
inline.NumInlined: 30
inline.NumDeleted: 20
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_map_unsafe_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr @mi_page_map_count, align 8, !tbaa !10 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre13 = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.g = phi ptr [ %.pre13, %._crit_edge.loopexit ], [ %i.a, %.preheader ]
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_page_map_memid, i64 8), align 8, !tbaa !14
  tail call void @_mi_os_free_ex(ptr noundef %i.g, i64 noundef %i.h, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 @mi_page_map_memid, ptr noundef %0) #7
  store ptr null, ptr @_mi_page_map, align 64, !tbaa !8
  store i64 0, ptr @mi_page_map_count, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @mi_page_map_memid, i8 0, i64 24, i1 false)
  store ptr null, ptr @mi_page_map_max_address, align 8, !tbaa !8
  store atomic i64 0, ptr @mi_page_map_commit release, align 8
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.i = phi i64 [ %i.c, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %.012 = phi i64 [ 1, %.lr.ph ], [ %i.t, %bb.e ] ; 4 uses
  %i.j = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.k = lshr i64 %.012, 12
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.j, %i.l
  %.not11 = icmp eq i64 %i.m, 0
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.012
  %i.p = load atomic ptr, ptr %i.o monotonic, align 8 ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i64 1099511627780, ptr %i.e, align 8, !alias.scope !34
  store ptr %i.p, ptr %1, align 8, !tbaa !14, !alias.scope !34
  store i64 65536, ptr %i.f, align 8, !tbaa !14, !alias.scope !34
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.p, i64 noundef 65536, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %1, ptr noundef %0) #7
  %i.q = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.012
  store atomic ptr null, ptr %i.r release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %.pre = load i64, ptr @mi_page_map_count, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.s = phi i64 [ %i.i, %bb.c ], [ %.pre, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %i.t = add nuw i64 %.012, 1                     ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  br i1 %i.u, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !33

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_mi_os_free_ex(ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef byval(%struct.mi_memid_s) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_map_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @_mi_page_map_init()
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val.i.i = load i16, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val4.i.i = load i64, ptr %i.e, align 8, !tbaa !23
  %i.f = zext i16 %.val.i.i to i64
  %i.g = mul i64 %.val4.i.i, %i.f                 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 48
  %.val5.i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.i = icmp ugt i64 %i.g, 4194304
  %i.j = add nuw nsw i64 %i.g, 65535
  %i.k = lshr i64 %i.j, 16
  %i.l = select i1 %i.i, i64 63, i64 %i.k
  %i.m = ptrtoint ptr %.val5.i.i to i64
  %i.n = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, 16
  %i.q = add nuw nsw i64 %i.l, %i.p
  %i.r = lshr i64 %i.n, 16
  %i.s = and i64 %i.r, 8191
  %i.t = lshr i64 %i.n, 29
  tail call fastcc void @mi_page_map_set_range(ptr noundef %0, i64 noundef %i.t, i64 noundef %i.s, i64 noundef %i.q)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_page_map_set_range(ptr noundef %0, i64 noundef range(i64 0, 34359738368) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mi_memid_s, align 8         ; 4 uses
  %.not25 = icmp eq i64 %3, 0
  br i1 %.not25, label %.thread, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %bb.a
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %0, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %._crit_edge
  %.01029 = phi i64 [ %.1.lcssa, %._crit_edge ], [ %3, %.lr.ph31.preheader ] ; 4 uses
  %.01128 = phi i64 [ 0, %._crit_edge ], [ %2, %.lr.ph31.preheader ] ; 5 uses
  %.01426 = phi i64 [ %i.aj, %._crit_edge ], [ %1, %.lr.ph31.preheader ] ; 4 uses
  %i.a = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.b = lshr i64 %.01426, 12                     ; 2 uses
  %i.c = shl nuw i64 1, %i.b                      ; 2 uses
  %i.d = and i64 %i.a, %i.c
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %mi_page_map_ensure_committed.exit.i, !prof !13

bb.b:                                             ; preds = %.lr.ph31
  %i.e = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %.idx.i.i = shl i64 %i.b, 15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %i.g = call zeroext i1 @_mi_os_commit(ptr noundef %i.f, i64 noundef 32768, ptr noundef null) #7
  br i1 %i.g, label %bb.c, label %mi_page_map_ensure_committed.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = atomicrmw or ptr @mi_page_map_commit, i64 %i.c acq_rel, align 8 ; 0 uses
  br label %mi_page_map_ensure_committed.exit.i

mi_page_map_ensure_committed.exit.i:              ; preds = %bb.c, %.lr.ph31
  %i.i = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01426
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %mi_page_map_ensure_committed.exit.thread.i, label %mi_page_map_ensure_submap_at.exit, !prof !37

mi_page_map_ensure_committed.exit.thread.i:       ; preds = %mi_page_map_ensure_committed.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.m = call ptr @_mi_os_zalloc(i64 noundef 65536, ptr noundef nonnull %4) #7 ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %mi_page_map_ensure_committed.exit.thread.i
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.3) #7
  br label %bb.g

bb.e:                                             ; preds = %mi_page_map_ensure_committed.exit.thread.i
  %i.n = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01426
  %i.p = cmpxchg ptr %i.o, ptr null, ptr %i.m acq_rel acquire, align 8 ; 2 uses
  %i.q = extractvalue { ptr, i1 } %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = extractvalue { ptr, i1 } %i.p, 0
  call void @_mi_os_free(ptr noundef nonnull %i.m, i64 noundef 65536, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %4) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %spec.select20.i = phi ptr [ null, %bb.d ], [ %i.m, %bb.e ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %mi_page_map_ensure_submap_at.exit

mi_page_map_ensure_submap_at.exit:                ; preds = %mi_page_map_ensure_committed.exit.i, %bb.g
  %.1.i = phi ptr [ %spec.select20.i, %bb.g ], [ %i.k, %mi_page_map_ensure_committed.exit.i ] ; 2 uses
  %i.s = icmp ult i64 %.01128, 8192
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %mi_page_map_ensure_submap_at.exit
  %i.t = add i64 %.01029, -1
  %i.u = sub nuw nsw i64 8191, %.01128
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.u) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.x = and i64 %i.w, 3                          ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 4, i64 %i.x
  %i.aa = sub nsw i64 %i.w, %i.z                  ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.01128
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ac, align 8, !tbaa !25
  store <2 x ptr> %broadcast.splat, ptr %i.ad, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %i.aa
  br i1 %i.ae, label %.lr.ph.preheader41.loopexit, label %vector.body, !llvm.loop !35

.lr.ph.preheader41.loopexit:                      ; preds = %vector.body
  %5 = sub i64 %.01029, %i.aa
  %6 = add i64 %.01128, %i.aa
  br label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %.lr.ph.preheader41.loopexit, %.lr.ph.preheader
  %.124.ph = phi i64 [ %.01029, %.lr.ph.preheader ], [ %5, %.lr.ph.preheader41.loopexit ]
  %.11223.ph = phi i64 [ %.01128, %.lr.ph.preheader ], [ %6, %.lr.ph.preheader41.loopexit ]
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.af = add nuw nsw i64 %.11223, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, 8192
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %.lr.ph.preheader41, %bb.h
  %.124 = phi i64 [ %i.ah, %bb.h ], [ %.124.ph, %.lr.ph.preheader41 ]
  %.11223 = phi i64 [ %i.af, %bb.h ], [ %.11223.ph, %.lr.ph.preheader41 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.11223
  store ptr %0, ptr %i.ag, align 8, !tbaa !25
  %i.ah = add i64 %.124, -1                       ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %mi_page_map_ensure_submap_at.exit
  %.1.lcssa = phi i64 [ %.01029, %mi_page_map_ensure_submap_at.exit ], [ %i.ah, %bb.h ]
  %i.aj = add i64 %.01426, 1
  br label %.lr.ph31

.thread:                                          ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_map_unregister(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %.val.i.i = load i16, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val4.i.i = load i64, ptr %i.d, align 8, !tbaa !23
  %i.e = zext i16 %.val.i.i to i64
  %i.f = mul i64 %.val4.i.i, %i.e                 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val5.i.i = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.h = icmp ugt i64 %i.f, 4194304
  %i.i = add nuw nsw i64 %i.f, 65535
  %i.j = lshr i64 %i.i, 16
  %i.k = select i1 %i.h, i64 63, i64 %i.j
  %i.l = ptrtoint ptr %.val5.i.i to i64
  %i.m = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr i64 %i.n, 16
  %i.p = add nuw nsw i64 %i.k, %i.o
  %i.q = lshr i64 %i.m, 16
  %i.r = and i64 %i.q, 8191
  %i.s = lshr i64 %i.m, 29
  tail call fastcc void @mi_page_map_set_range(ptr noundef null, i64 noundef %i.s, i64 noundef %i.r, i64 noundef %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_map_unregister_range(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, 65535
  %i.d = lshr i64 %i.c, 16
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = lshr i64 %i.e, 16
  %i.g = and i64 %i.f, 8191
  %i.h = lshr i64 %i.e, 29
  tail call fastcc void @mi_page_map_set_range(ptr noundef null, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden ptr @_mi_safe_ptr_page(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = load ptr, ptr @mi_page_map_max_address, align 8
  %.not = icmp ult ptr %0, %i.b
  %or.cond = select i1 %i.a, i1 %.not, i1 false, !prof !26
  br i1 %or.cond, label %bb.b, label %bb.e, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 16
  %i.e = and i64 %i.d, 8191
  %i.f = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.g = lshr i64 %i.c, 41
  %i.h = shl nuw i64 1, %i.g
  %i.i = and i64 %i.f, %i.h
  %.not9 = icmp eq i64 %i.i, 0
  br i1 %.not9, label %bb.e, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.c, 29
  %i.k = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !14 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.p, %bb.d ], [ null, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden zeroext i1 @mi_is_in_heap_region(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = load ptr, ptr @mi_page_map_max_address, align 8
  %.not.i = icmp ult ptr %0, %i.b
  %or.cond.i = select i1 %i.a, i1 %.not.i, i1 false, !prof !26
  br i1 %or.cond.i, label %bb.b, label %_mi_safe_ptr_page.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 16
  %i.e = and i64 %i.d, 8191
  %i.f = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.g = lshr i64 %i.c, 41
  %i.h = shl nuw i64 1, %i.g
  %i.i = and i64 %i.f, %i.h
  %.not9.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i, label %_mi_safe_ptr_page.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.c, 29
  %i.k = load ptr, ptr @_mi_page_map, align 64, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !14 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_mi_safe_ptr_page.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = icmp ne ptr %i.p, null
  br label %_mi_safe_ptr_page.exit

_mi_safe_ptr_page.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.2.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.q, %bb.d ], [ false, %bb.c ]
  ret i1 %.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @_mi_os_zalloc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_mi_os_free(ptr noundef, i64 noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_Bool", !4, i64 0}
!12 = !{!"mi_memid_s", !4, i64 0, !5, i64 16, !11, i64 20, !11, i64 21, !11, i64 22}
end_hunk_0
