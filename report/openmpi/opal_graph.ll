Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_graph?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@opal_graph_remove_vertex:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !54 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !37 ; 2 uses
  %.not6.i16 = icmp eq ptr %i.cu, null
  br i1 %.not6.i16, label %opal_obj_run_destructors.exit21, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.m, %.lr.ph.i17
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i17 ], [ %i.cu, %bb.m ]
  %.07.i18 = phi ptr [ %i.cw, %.lr.ph.i17 ], [ %i.ct, %bb.m ]
  tail call void %i.cv(ptr noundef nonnull %1) #13, !inline_history !2
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i18, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !37 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cx, null
  br i1 %.not.i19, label %opal_obj_run_destructors.exit21, label %.lr.ph.i17, !llvm.loop !3

opal_obj_run_destructors.exit21:                  ; preds = %.lr.ph.i17, %bb.m
  tail call void @free(ptr noundef nonnull %1) #13
  br label %bb.n

bb.n:                                             ; preds = %opal_obj_run_destructors.exit21, %opal_thread_add_fetch_32.exit15
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !42
  %i.da = add nsw i32 %i.cz, -1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define i32 @opal_graph_adjacent(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq ptr %0, %i.b
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %.not18 = icmp eq ptr %0, %i.d
  br i1 %.not18, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %1, %2
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load volatile ptr, ptr %i.j, align 8, !tbaa !46 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not1921 = icmp eq ptr %i.k, %i.l
  br i1 %.not1921, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.022 = phi ptr [ %i.s, %bb.f ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.022, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.022, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.s = load volatile ptr, ptr %i.r, align 8, !tbaa !48 ; 2 uses
  %.not19 = icmp eq ptr %i.s, %i.l
  br i1 %.not19, label %.loopexit, label %.lr.ph, !llvm.loop !5

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.014 = phi i32 [ 0, %bb.c ], [ 2147483647, %bb.a ], [ 2147483647, %bb.b ], [ %i.q, %bb.e ], [ 2147483647, %bb.d ], [ 2147483647, %bb.f ]
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @opal_graph_get_order(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @opal_graph_get_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @opal_graph_find_vertex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load volatile ptr, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.not13 = icmp eq ptr %i.d, %i.e
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.q, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = tail call i32 %i.i(ptr noundef %i.k, ptr noundef %1) #13
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.014, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.q = load volatile ptr, ptr %i.p, align 8, !tbaa !48 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.not = icmp eq ptr %i.q, %i.s
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !76

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.010 = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define i32 @opal_graph_get_graph_vertices(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load volatile ptr, ptr %i.f, align 8, !tbaa !46 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.not9 = icmp eq ptr %i.g, %i.h
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.010 = phi ptr [ %i.m, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = tail call i32 @opal_pointer_array_add(ptr noundef %1, ptr noundef %i.j) #13 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.m = load volatile ptr, ptr %i.l, align 8, !tbaa !48 ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.not = icmp eq ptr %i.m, %i.o
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !78

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.b ]
  ret i32 %.08
}

declare i32 @opal_pointer_array_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @opal_graph_get_adjacent_vertices(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.vertex_distance_from_t, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq ptr %0, %i.b
  br i1 %.not, label %bb.b, label %.loopexit.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load volatile i64, ptr %i.g, align 8, !tbaa !45
  %4 = trunc i64 %i.h to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load volatile ptr, ptr %i.i, align 8, !tbaa !46 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.not1314 = icmp eq ptr %i.j, %i.k
  br i1 %.not1314, label %.loopexit.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %opal_value_array_append_item.exit
  %.015 = phi ptr [ %i.j, %.lr.ph ], [ %i.aa, %opal_value_array_append_item.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.015, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  store ptr %i.p, ptr %3, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %.015, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !62
  store i32 %i.r, ptr %.8..8..8..sroa_idx, align 8, !tbaa !65
  %i.s = load i64, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.t = add i64 %i.s, 1
  %i.u = tail call i32 @opal_value_array_set_size(ptr noundef nonnull %2, i64 noundef %i.t) #13
  %.not12.i.i = icmp eq i32 %i.u, 0
  br i1 %.not12.i.i, label %bb.d, label %opal_value_array_append_item.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.w = load i64, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %i.x = mul i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull readonly align 8 %3, i64 %i.w, i1 false)
  br label %opal_value_array_append_item.exit

opal_value_array_append_item.exit:                ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %i.aa = load volatile ptr, ptr %i.z, align 8, !tbaa !48 ; 2 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.not13 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not13, label %.loopexit.a, label %bb.c, !llvm.loop !79

.loopexit.a:                                      ; preds = %opal_value_array_append_item.exit, %bb.b, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ %4, %bb.b ], [ %4, %opal_value_array_append_item.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @opal_graph_spf(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq ptr %0, %i.b
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %.not24 = icmp eq ptr %0, %i.d
  br i1 %.not24, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_value_array_t_class, i64 56), align 8, !tbaa !31
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #14 ; 15 uses
  %i.g = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !32
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_value_array_t_class, i64 32), align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.g, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_value_array_t_class) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr @opal_value_array_t_class, ptr %i.f, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store volatile i32 1, ptr %i.i, align 8, !tbaa !35
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_value_array_t_class, i64 40), align 8, !tbaa !36 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37, !nonnull !52, !noundef !52
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %bb.e ]
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.e ]
  tail call void %i.l(ptr noundef nonnull %i.f) #13, !inline_history !0
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %opal_obj_new.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit.loopexit:                       ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store i64 16, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  store i64 1, ptr %i.p, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store i64 0, ptr %i.q, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.s = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef %.pre, i64 noundef 16) #15 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !68
  %i.t = load i64, ptr %i.p, align 8, !tbaa !81
  %i.u = icmp ult i64 %i.t, 50
  br i1 %i.u, label %bb.f, label %opal_value_array_reserve.exit

bb.f:                                             ; preds = %opal_obj_new.exit.loopexit
  %i.v = load i64, ptr %i.o, align 8, !tbaa !69
  %i.w = mul i64 %i.v, 50
  %i.x = tail call ptr @realloc(ptr noundef %i.s, i64 noundef %i.w) #15 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !68
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %opal_value_array_reserve.exit

bb.h:                                             ; preds = %bb.f
  store i64 50, ptr %i.p, align 8, !tbaa !81
  br label %opal_value_array_reserve.exit

opal_value_array_reserve.exit:                    ; preds = %opal_obj_new.exit.loopexit, %bb.g, %bb.h
  %i.z = tail call i32 @opal_graph_dijkstra(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.f) ; 2 uses
  %.not33 = icmp eq i32 %i.z, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %opal_value_array_reserve.exit
  %wide.trip.count = zext i32 %i.z to i64
  br label %.lr.ph

bb.i:                                             ; preds = %opal_value_array_get_item.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !80

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !67
  %.not.i26 = icmp ugt i64 %i.aa, %indvars.iv
  br i1 %.not.i26, label %opal_value_array_get_item.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ab = add nuw nsw i64 %indvars.iv, 1
  %i.ac = tail call i32 @opal_value_array_set_size(ptr noundef nonnull %i.f, i64 noundef %i.ab) #13 ; 0 uses
  br label %opal_value_array_get_item.exit

opal_value_array_get_item.exit:                   ; preds = %bb.j, %.lr.ph
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !68  ; 2 uses
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !69
  %i.af = mul i64 %i.ae, %indvars.iv              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = icmp eq ptr %i.ah, %2
  br i1 %i.ai, label %bb.k, label %bb.i

bb.k:                                             ; preds = %opal_value_array_get_item.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !65
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %opal_value_array_reserve.exit, %bb.k
  %.021 = phi i32 [ %i.al, %bb.k ], [ 2147483647, %opal_value_array_reserve.exit ], [ 2147483647, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.an = load i8, ptr @opal_uses_threads, align 1, !tbaa !50, !range !51, !noundef !52
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.m, !prof !53

bb.l:                                             ; preds = %.loopexit
  %i.ap = atomicrmw volatile add ptr %i.am, i32 -1 monotonic, align 4
  %i.aq = add i32 %i.ap, -1
  br label %opal_thread_add_fetch_32.exit

bb.m:                                             ; preds = %.loopexit
  %i.ar = load volatile i32, ptr %i.am, align 8, !tbaa !32
  %i.as = add nsw i32 %i.ar, -1
  store volatile i32 %i.as, ptr %i.am, align 8, !tbaa !32
  %i.at = load volatile i32, ptr %i.am, align 8, !tbaa !32
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.l, %bb.m
  %.0.i28 = phi i32 [ %i.aq, %bb.l ], [ %i.at, %bb.m ]
  %i.au = icmp eq i32 %.0.i28, 0
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %.not6.i = icmp eq ptr %i.ay, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.az = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.ay, %bb.n ]
  %.07.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.ax, %bb.n ]
  tail call void %i.az(ptr noundef nonnull %i.f) #13, !inline_history !2
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i29, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.n
  tail call void @free(ptr noundef nonnull %i.f) #13
  br label %bb.o

bb.o:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit, %bb.b, %bb.a
  %.022 = phi i32 [ 2147483647, %bb.b ], [ 2147483647, %bb.a ], [ %.021, %opal_obj_run_destructors.exit ], [ %.021, %opal_thread_add_fetch_32.exit ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 2147483647) i32 @opal_graph_dijkstra(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq ptr %0, %i.b
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 4
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load volatile ptr, ptr %i.j, align 8, !tbaa !46 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not5658 = icmp eq ptr %i.k, %i.l
  br i1 %.not5658, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  tail call void @qsort(ptr noundef %i.g, i64 noundef 0, i64 noundef 16, ptr noundef nonnull @compare_vertex_distance) #13
  br label %.preheader

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %.04959 = phi ptr [ %i.t, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04959, i64 40
end_hunk_0
