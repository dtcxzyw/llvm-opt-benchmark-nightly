inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@opj_stream_read_skip:bb.a
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %opj_stream_read_seek.exit, %bb.d, %bb.b
  %.062 = phi i64 [ %1, %bb.b ], [ %i.s, %bb.d ], [ %i.at, %opj_stream_read_seek.exit ], [ %i.bd, %bb.l ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.062
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_stream_read_seek(ptr nofree noundef captures(none) initializes((64, 72), (88, 96)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %0, align 8, !tbaa !42
  %i.h = tail call i32 %i.f(i64 noundef %1, ptr noundef %i.g) #9
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = or i32 %i.j, 4
  store i32 %i.k, ptr %i.i, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.j, -5
  store i32 %i.l, ptr %i.i, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %i.m, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_write_skip(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %opj_stream_flush.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.e, %.lr.ph.i ], [ %i.q, %bb.d ]
  %i.k = phi i64 [ %i.h, %.lr.ph.i ], [ %i.s, %bb.d ]
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.m = load ptr, ptr %0, align 8, !tbaa !42
  %i.n = tail call i64 %i.l(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.m) #9, !inline_history !45 ; 3 uses
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !31
  %i.r = load i64, ptr %i.g, align 8, !tbaa !39
  %i.s = sub i64 %i.r, %i.n                       ; 3 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.c, !llvm.loop !46

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %opj_stream_flush.exit

opj_stream_flush.exit:                            ; preds = %bb.b, %._crit_edge.loopexit.i
  %i.t = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.e, %bb.b ]
  store ptr %i.t, ptr %i.f, align 8, !tbaa !31
  %i.u = icmp sgt i64 %1, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %opj_stream_flush.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.a, align 8, !tbaa !32
  %i.x = or i32 %i.w, 8
  store i32 %i.x, ptr %i.a, align 8, !tbaa !32
  %i.y = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.1) #9 ; 0 uses
  %i.z = load i32, ptr %i.a, align 8, !tbaa !32
  %i.aa = or i32 %i.z, 8
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !32
  store i64 0, ptr %i.g, align 8, !tbaa !39
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.033 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.h ] ; 4 uses
  %.02532 = phi i64 [ %1, %.lr.ph ], [ %i.am, %bb.h ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.ac = load ptr, ptr %0, align 8, !tbaa !42
  %i.ad = tail call i64 %i.ab(i64 noundef %.02532, ptr noundef %i.ac) #9 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.2) #9 ; 0 uses
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !32
  %i.ah = or i32 %i.ag, 8
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.ak = add nsw i64 %i.aj, %.033
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !40
  %.not28 = icmp eq i64 %.033, 0
  %i.al = select i1 %.not28, i64 -1, i64 %.033
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = sub nsw i64 %.02532, %i.ad              ; 2 uses
  %i.an = add nsw i64 %i.ad, %.033                ; 2 uses
  %i.ao = icmp sgt i64 %i.am, 0
  br i1 %i.ao, label %bb.f, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.h, %opj_stream_flush.exit
  %.0.lcssa = phi i64 [ 0, %opj_stream_flush.exit ], [ %i.an, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !40
  %i.ar = add nsw i64 %i.aq, %.0.lcssa
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge, %bb.g, %bb.e
  %.024 = phi i64 [ -1, %bb.e ], [ %i.al, %bb.g ], [ %.0.lcssa, %._crit_edge ], [ -1, %bb.a ]
  ret i64 %.024
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_stream_write_seek(ptr nofree noundef captures(none) initializes((64, 72)) %0, i64 noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not18.i = icmp eq i64 %i.e, 0
  br i1 %.not18.i, label %bb.e, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %i.b, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.h = phi i64 [ %i.e, %.lr.ph.i ], [ %i.p, %bb.c ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.j = load ptr, ptr %0, align 8, !tbaa !42
  %i.k = tail call i64 %i.i(ptr noundef %i.g, i64 noundef %i.h, ptr noundef %i.j) #9, !inline_history !45 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k ; 2 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !31
  %i.o = load i64, ptr %i.d, align 8, !tbaa !39
  %i.p = sub i64 %i.o, %i.k                       ; 3 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !46

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  %i.s = or i32 %i.r, 8
  store i32 %i.s, ptr %i.q, align 8, !tbaa !32
  %i.t = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.1) #9 ; 0 uses
  %i.u = load i32, ptr %i.q, align 8, !tbaa !32
  %i.v = or i32 %i.u, 8
  store i32 %i.v, ptr %i.q, align 8, !tbaa !32
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.w = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %bb.a ]
  store ptr %i.w, ptr %i.c, align 8, !tbaa !31
  store i64 0, ptr %i.d, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = load ptr, ptr %0, align 8, !tbaa !42
  %i.aa = tail call i32 %i.y(i64 noundef %1, ptr noundef %i.z) #9
  %.not12 = icmp eq i32 %i.aa, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.ad = or i32 %i.ac, 8
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %i.ae, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @opj_stream_default_read(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @opj_stream_default_write(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @opj_stream_default_skip(i64 %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @opj_stream_default_seek(i64 %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @opj_stream_default_create(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 120) #9 ; 13 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %opj_stream_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 1048576, ptr %i.b, align 8, !tbaa !25
  %i.c = tail call ptr @opj_malloc(i64 noundef 1048576) #9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !30
  %.not23.i = icmp eq ptr %i.c, null
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.a) #9
  br label %opj_stream_create.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !31
  %.not24.i = icmp eq i32 %0, 0                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32
  %..i = select i1 %.not24.i, i32 1, i32 2
  %opj_stream_write_skip.opj_stream_read_skip.i = select i1 %.not24.i, ptr @opj_stream_write_skip, ptr @opj_stream_read_skip
  %opj_stream_write_seek.opj_stream_read_seek.i = select i1 %.not24.i, ptr @opj_stream_write_seek, ptr @opj_stream_read_seek
  %i.h = or i32 %i.g, %..i
  store i32 %i.h, ptr %i.f, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %opj_stream_write_skip.opj_stream_read_skip.i, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %opj_stream_write_seek.opj_stream_read_seek.i, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @opj_stream_default_read, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @opj_stream_default_write, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @opj_stream_default_skip, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @opj_stream_default_seek, ptr %i.n, align 8, !tbaa !38
  br label %opj_stream_create.exit

opj_stream_create.exit:                           ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define void @opj_stream_destroy(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !42
  tail call void %i.b(ptr noundef %i.c) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  tail call void @opj_free(ptr noundef %i.e) #9
  store ptr null, ptr %i.d, align 8, !tbaa !30
  tail call void @opj_free(ptr noundef nonnull %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_stream_set_read_function(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = and i32 %i.b, 2
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_seek_function(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.a, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_stream_set_write_function(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %2 = and i32 %i.b, 1
  %.not5 = icmp eq i32 %2, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_skip_function(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_user_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_user_data_length(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_read_data(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 7 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.d, i64 %2, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  store ptr %i.f, ptr %i.c, align 8, !tbaa !31
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39
  %i.h = sub i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = add nsw i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 8, !tbaa !40
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  %i.n = and i32 %i.m, 4
  %.not130 = icmp eq i32 %i.n, 0
  br i1 %.not130, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.p, i64 %i.b, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.s, ptr %i.o, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40
  %i.v = add nsw i64 %i.u, %i.q
  store i64 %i.v, ptr %i.t, align 8, !tbaa !40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %.not136 = icmp eq i64 %i.b, 0
  %i.w = select i1 %.not136, i64 -1, i64 %i.b
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %.not131 = icmp eq i64 %i.b, 0
  br i1 %.not131, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.y, i64 %i.b, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !31
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = sub i64 %2, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ag = add nsw i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %i.aa, %bb.f ], [ %i.ai, %bb.g ]
  %.0121 = phi ptr [ %i.ac, %bb.f ], [ %1, %bb.g ]
  %.0118 = phi i64 [ %i.ad, %bb.f ], [ %2, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %bb.h
  %i.aq = phi ptr [ %i.ak, %bb.h ], [ %i.bz, %bb.t ]
  %.1122 = phi ptr [ %.0121, %bb.h ], [ %.2123, %bb.t ] ; 4 uses
  %.1119 = phi i64 [ %.0118, %bb.h ], [ %.2120, %bb.t ] ; 10 uses
  %.1 = phi i64 [ %i.b, %bb.h ], [ %.2, %bb.t ]   ; 7 uses
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %i.as = icmp ult i64 %.1119, %i.ar
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.av = tail call i64 %i.at(ptr noundef %i.aq, i64 noundef %i.ar, ptr noundef %i.au) #9 ; 5 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !39
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str) #9 ; 0 uses
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !32
  %i.az = or i32 %i.ay, 4
  store i32 %i.az, ptr %i.l, align 8, !tbaa !32
  %.not135 = icmp eq i64 %.1, 0
  %i.ba = select i1 %.not135, i64 -1, i64 %.1
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.bb = icmp ult i64 %i.av, %.1119
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1122, ptr align 1 %i.bc, i64 %i.av, i1 false)
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !30 ; 2 uses
  store ptr %i.bd, ptr %i.ao, align 8, !tbaa !31
  %i.be = load i64, ptr %i.a, align 8, !tbaa !39
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bf = add i64 %.1, %.1119
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1122, ptr align 1 %i.bg, i64 %.1119, i1 false)
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.1119
  store ptr %i.bi, ptr %i.ao, align 8, !tbaa !31
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !39
  %i.bk = sub i64 %i.bj, %.1119
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !39
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !40
  %i.bm = add nsw i64 %i.bl, %.1119
  store i64 %i.bm, ptr %i.ap, align 8, !tbaa !40
  br label %bb.u

bb.o:                                             ; preds = %bb.i
  %i.bn = tail call i64 %i.at(ptr noundef %.1122, i64 noundef %.1119, ptr noundef %i.au) #9 ; 7 uses
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !39
end_hunk_0
