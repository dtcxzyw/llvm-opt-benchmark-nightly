inline.NumInlined: 666
inline.NumDeleted: 3
begin_hunk_0_@exr_attr_set_chromaticities:bb.a
  br i1 %.not57, label %bb.o, label %bb.p

.thread:                                          ; preds = %bb.k
  %.not5759 = icmp eq ptr %3, null
  br i1 %.not5759, label %bb.o, label %.thread61

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ao = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ar = call i32 (ptr, i32, ptr, ...) %i.aq(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.30, ptr noundef %2, ptr noundef nonnull @.str.47) #5
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %..thread61_crit_edge, label %bb.q

..thread61_crit_edge:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread61

.thread61:                                        ; preds = %..thread61_crit_edge, %.thread
  %i.at = phi ptr [ %.pre, %..thread61_crit_edge ], [ %i.ac, %.thread ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !58
  br label %bb.q

bb.q:                                             ; preds = %.thread61, %bb.p
  %.0466063 = phi i32 [ 0, %.thread61 ], [ %i.an, %bb.p ]
  %i.aw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.o, %bb.f ], [ %i.s, %bb.g ], [ 15, %bb.j ], [ %.0466063, %bb.q ], [ %i.ar, %bb.o ], [ %i.al, %bb.l ], [ %i.z, %bb.m ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_get_compression(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.not46 = icmp slt i32 %1, %i.h
  br i1 %.not46, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i8, ptr %0, align 8, !tbaa !8
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %2, align 1, !tbaa !37
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load i8, ptr %0, align 8, !tbaa !8
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.48) #5
  br label %bb.aa

bb.n:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = call i32 @exr_attr_list_find_by_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #5 ; 3 uses
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %0, align 8, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ai = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #5 ; 0 uses
  br label %bb.aa

bb.q:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %.not49 = icmp eq i32 %i.al, 6
  br i1 %.not49, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i8, ptr %0, align 8, !tbaa !8
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ap = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ao) #5 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.aq = phi ptr [ %i.aj, %bb.r ], [ %.pre, %bb.s ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.av = call i32 (ptr, i32, ptr, ...) %i.as(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef nonnull %2, ptr noundef %i.au) #5
  br label %bb.aa

bb.u:                                             ; preds = %bb.q
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aw = load i8, ptr %0, align 8, !tbaa !8
  %i.ax = icmp eq i8 %i.aw, 1
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ay) #5 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = call i32 (ptr, i32, ptr, ...) %i.bb(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #5
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !37
  %i.bf = zext i8 %i.be to i32
  store i32 %i.bf, ptr %3, align 4, !tbaa !30
  %i.bg = load i8, ptr %0, align 8, !tbaa !8
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bi) #5 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.p, %bb.o, %bb.a, %bb.x, %bb.t, %bb.m, %bb.h
  %.0 = phi i32 [ %i.o, %bb.h ], [ %i.ac, %bb.m ], [ 2, %bb.a ], [ %i.av, %bb.t ], [ %i.ae, %bb.p ], [ %i.bc, %bb.x ], [ %i.ae, %bb.o ], [ 0, %bb.y ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_set_compression(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = trunc nuw nsw i32 %3 to i8
  %i.c = icmp ugt i32 %3, 11
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call i32 (ptr, i32, ptr, ...) %i.e(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.50, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 12) #5
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(12) @.str.6) #6
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @exr_set_compression(ptr noundef %0, i32 noundef %1, i32 noundef %3)
  br label %bb.v

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %.not62 = icmp eq ptr %0, null
  br i1 %.not62, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 8 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.l = icmp slt i32 %1, 0
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %.not63 = icmp slt i32 %1, %i.n
  br i1 %.not63, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = tail call i32 (ptr, i32, ptr, ...) %i.q(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.s = load i8, ptr %0, align 8, !tbaa !8
  switch i8 %i.s, label %bb.m [
    i8 0, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0, i32 noundef 8) #5
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0, i32 noundef 21) #5
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = zext nneg i32 %1 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = call i32 @exr_attr_list_find_by_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  switch i32 %i.ah, label %bb.r [
    i32 15, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %0, align 8, !tbaa !8
  switch i8 %i.ai, label %bb.o [
    i8 1, label %bb.s
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.aj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34
  %.not64 = icmp eq i32 %i.am, 6
  br i1 %.not64, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = call i32 (ptr, i32, ptr, ...) %i.ap(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef %2, ptr noundef %i.as) #5
  br label %bb.u

bb.r:                                             ; preds = %bb.m
  %i.au = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.n, %bb.n
  %i.av = call i32 @exr_attr_list_add(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef %2, i32 noundef 6, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %..thread_crit_edge, label %bb.t

..thread_crit_edge:                               ; preds = %bb.s
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.p
  %i.ax = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.ak, %bb.p ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i8 %i.b, ptr %i.ay, align 8, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.05268 = phi i32 [ 0, %.thread ], [ %i.av, %bb.s ]
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.r, %bb.q, %bb.o, %bb.l, %bb.k, %bb.i
  %.0 = phi i32 [ %i.r, %bb.i ], [ %i.w, %bb.k ], [ %i.aa, %bb.l ], [ 15, %bb.o ], [ %.05268, %bb.t ], [ %i.at, %bb.q ], [ %i.ah, %bb.r ], [ 2, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.e, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %.0, %bb.u ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_get_double(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.not46 = icmp slt i32 %1, %i.h
  br i1 %.not46, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i8, ptr %0, align 8, !tbaa !8
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %2, align 1, !tbaa !37
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.n
end_hunk_0
begin_hunk_1_@exr_attr_set_double:bb.a
  %i.af = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = call i32 (ptr, i32, ptr, ...) %i.ah(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.52, ptr noundef %2, ptr noundef %i.ak) #5
  br label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.i, %bb.i
  %i.an = call i32 @exr_attr_list_add(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef %2, i32 noundef 7, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %..thread_crit_edge, label %bb.o

..thread_crit_edge:                               ; preds = %bb.n
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.k
  %i.ap = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.ac, %bb.k ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store double %3, ptr %i.aq, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %.04152 = phi i32 [ 0, %.thread ], [ %i.an, %bb.n ]
  %i.ar = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.m, %bb.l, %bb.j, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.o, %bb.f ], [ %i.s, %bb.g ], [ 15, %bb.j ], [ %.04152, %bb.o ], [ %i.al, %bb.l ], [ %i.z, %bb.m ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_get_envmap(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.not46 = icmp slt i32 %1, %i.h
  br i1 %.not46, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i8, ptr %0, align 8, !tbaa !8
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %2, align 1, !tbaa !37
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load i8, ptr %0, align 8, !tbaa !8
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.48) #5
  br label %bb.aa

bb.n:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = call i32 @exr_attr_list_find_by_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #5 ; 3 uses
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %0, align 8, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ai = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #5 ; 0 uses
  br label %bb.aa

bb.q:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %.not49 = icmp eq i32 %i.al, 8
  br i1 %.not49, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i8, ptr %0, align 8, !tbaa !8
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ap = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ao) #5 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.aq = phi ptr [ %i.aj, %bb.r ], [ %.pre, %bb.s ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.av = call i32 (ptr, i32, ptr, ...) %i.as(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef nonnull %2, ptr noundef %i.au) #5
  br label %bb.aa

bb.u:                                             ; preds = %bb.q
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aw = load i8, ptr %0, align 8, !tbaa !8
  %i.ax = icmp eq i8 %i.aw, 1
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ay) #5 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = call i32 (ptr, i32, ptr, ...) %i.bb(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #5
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !37
  %i.bf = zext i8 %i.be to i32
  store i32 %i.bf, ptr %3, align 4, !tbaa !30
  %i.bg = load i8, ptr %0, align 8, !tbaa !8
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bi) #5 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.p, %bb.o, %bb.a, %bb.x, %bb.t, %bb.m, %bb.h
  %.0 = phi i32 [ %i.o, %bb.h ], [ %i.ac, %bb.m ], [ 2, %bb.a ], [ %i.av, %bb.t ], [ %i.ae, %bb.p ], [ %i.bc, %bb.x ], [ %i.ae, %bb.o ], [ 0, %bb.y ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_set_envmap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = trunc nuw nsw i32 %3 to i8
  %i.c = icmp ugt i32 %3, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call i32 (ptr, i32, ptr, ...) %i.e(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.53, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 2) #5
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 8 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.i = icmp slt i32 %1, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %.not55 = icmp slt i32 %1, %i.k
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.p = load i8, ptr %0, align 8, !tbaa !8
  switch i8 %i.p, label %bb.j [
    i8 0, label %bb.h
    i8 3, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = tail call i32 %i.s(ptr noundef nonnull %0, i32 noundef 8) #5
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = tail call i32 %i.w(ptr noundef nonnull %0, i32 noundef 21) #5
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = call i32 @exr_attr_list_find_by_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  switch i32 %i.ae, label %bb.o [
    i32 15, label %bb.k
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %0, align 8, !tbaa !8
  switch i8 %i.af, label %bb.l [
    i8 1, label %bb.p
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #5 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !34
  %.not56 = icmp eq i32 %i.aj, 8
  br i1 %.not56, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.aq = call i32 (ptr, i32, ptr, ...) %i.am(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef %2, ptr noundef %i.ap) #5
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.ar = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #5 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.k, %bb.k
  %i.as = call i32 @exr_attr_list_add(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef %2, i32 noundef 8, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %..thread_crit_edge, label %bb.q

..thread_crit_edge:                               ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.m
  %i.au = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.ah, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i8 %i.b, ptr %i.av, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p
  %.04760 = phi i32 [ 0, %.thread ], [ %i.as, %bb.p ]
  %i.aw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #5 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.q, %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ %i.t, %bb.h ], [ %i.x, %bb.i ], [ 15, %bb.l ], [ %.04760, %bb.q ], [ %i.aq, %bb.n ], [ %i.ae, %bb.o ], [ 2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %.0, %bb.r ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_get_float(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.not46 = icmp slt i32 %1, %i.h
  br i1 %.not46, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i8, ptr %0, align 8, !tbaa !8
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %2, align 1, !tbaa !37
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load i8, ptr %0, align 8, !tbaa !8
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_1
begin_hunk_2_@exr_attr_set_keycode:bb.a
  br i1 %.not57, label %bb.o, label %bb.p

.thread:                                          ; preds = %bb.k
  %.not5759 = icmp eq ptr %3, null
  br i1 %.not5759, label %bb.o, label %.thread61

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ao = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ar = call i32 (ptr, i32, ptr, ...) %i.aq(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.30, ptr noundef %2, ptr noundef nonnull @.str.66) #5
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %..thread61_crit_edge, label %bb.q

..thread61_crit_edge:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread61

.thread61:                                        ; preds = %..thread61_crit_edge, %.thread
  %i.at = phi ptr [ %.pre, %..thread61_crit_edge ], [ %i.ac, %.thread ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.av, ptr noundef nonnull align 1 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !63
  br label %bb.q

bb.q:                                             ; preds = %.thread61, %bb.p
  %.0466063 = phi i32 [ 0, %.thread61 ], [ %i.an, %bb.p ]
  %i.aw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.o, %bb.f ], [ %i.s, %bb.g ], [ 15, %bb.j ], [ %.0466063, %bb.q ], [ %i.ar, %bb.o ], [ %i.al, %bb.l ], [ %i.z, %bb.m ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_get_lineorder(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.not46 = icmp slt i32 %1, %i.h
  br i1 %.not46, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i8, ptr %0, align 8, !tbaa !8
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %2, align 1, !tbaa !37
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load i8, ptr %0, align 8, !tbaa !8
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.48) #5
  br label %bb.aa

bb.n:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = call i32 @exr_attr_list_find_by_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #5 ; 3 uses
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %0, align 8, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ai = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #5 ; 0 uses
  br label %bb.aa

bb.q:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %.not49 = icmp eq i32 %i.al, 13
  br i1 %.not49, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i8, ptr %0, align 8, !tbaa !8
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ap = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ao) #5 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.aq = phi ptr [ %i.aj, %bb.r ], [ %.pre, %bb.s ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.av = call i32 (ptr, i32, ptr, ...) %i.as(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef nonnull %2, ptr noundef %i.au) #5
  br label %bb.aa

bb.u:                                             ; preds = %bb.q
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aw = load i8, ptr %0, align 8, !tbaa !8
  %i.ax = icmp eq i8 %i.aw, 1
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ay) #5 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = call i32 (ptr, i32, ptr, ...) %i.bb(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #5
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !37
  %i.bf = zext i8 %i.be to i32
  store i32 %i.bf, ptr %3, align 4, !tbaa !30
  %i.bg = load i8, ptr %0, align 8, !tbaa !8
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bi) #5 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.p, %bb.o, %bb.a, %bb.x, %bb.t, %bb.m, %bb.h
  %.0 = phi i32 [ %i.o, %bb.h ], [ %i.ac, %bb.m ], [ 2, %bb.a ], [ %i.av, %bb.t ], [ %i.ae, %bb.p ], [ %i.bc, %bb.x ], [ %i.ae, %bb.o ], [ 0, %bb.y ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_set_lineorder(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = trunc nuw nsw i32 %3 to i8
  %i.c = icmp ugt i32 %3, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call i32 (ptr, i32, ptr, ...) %i.e(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.67, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 3) #5
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @.str.10) #6
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @exr_set_lineorder(ptr noundef %0, i32 noundef %1, i32 noundef %3)
  br label %bb.v

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %.not61 = icmp eq ptr %0, null
  br i1 %.not61, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 8 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.l = icmp slt i32 %1, 0
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %.not62 = icmp slt i32 %1, %i.n
  br i1 %.not62, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = tail call i32 (ptr, i32, ptr, ...) %i.q(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.s = load i8, ptr %0, align 8, !tbaa !8
  switch i8 %i.s, label %bb.m [
    i8 0, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0, i32 noundef 8) #5
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0, i32 noundef 21) #5
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = zext nneg i32 %1 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = call i32 @exr_attr_list_find_by_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  switch i32 %i.ah, label %bb.r [
    i32 15, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %0, align 8, !tbaa !8
  switch i8 %i.ai, label %bb.o [
    i8 1, label %bb.s
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.aj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34
  %.not63 = icmp eq i32 %i.am, 13
  br i1 %.not63, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = call i32 (ptr, i32, ptr, ...) %i.ap(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef %2, ptr noundef %i.as) #5
  br label %bb.u

bb.r:                                             ; preds = %bb.m
  %i.au = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.n, %bb.n
  %i.av = call i32 @exr_attr_list_add(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef %2, i32 noundef 13, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %..thread_crit_edge, label %bb.t

..thread_crit_edge:                               ; preds = %bb.s
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.p
  %i.ax = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.ak, %bb.p ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i8 %i.b, ptr %i.ay, align 8, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.05267 = phi i32 [ 0, %.thread ], [ %i.av, %bb.s ]
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #5 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.r, %bb.q, %bb.o, %bb.l, %bb.k, %bb.i
  %.0 = phi i32 [ %i.r, %bb.i ], [ %i.w, %bb.k ], [ %i.aa, %bb.l ], [ 15, %bb.o ], [ %.05267, %bb.t ], [ %i.at, %bb.q ], [ %i.ah, %bb.r ], [ 2, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.e, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %.0, %bb.u ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @exr_attr_get_m33f(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.not46 = icmp slt i32 %1, %i.h
  br i1 %.not46, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i8, ptr %0, align 8, !tbaa !8
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #5
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %2, align 1, !tbaa !37
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.n
end_hunk_2
