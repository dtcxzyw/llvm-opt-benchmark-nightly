Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/gzlib?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
begin_hunk_0_@gz_buffer_free:bb.a
; Function Attrs: nounwind uwtable
define hidden void @zng_gz_error(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %.not24 = icmp eq i32 %i.d, -4
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  switch i32 %1, label %bb.f [
    i32 -5, label %bb.g
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %1, ptr %i.e, align 4, !tbaa !21
  %i.f = icmp eq ptr %2, null
  %i.g = icmp eq i32 %1, -4
  %or.cond3 = or i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.l = add i64 %i.j, 3
  %i.m = add i64 %i.l, %i.k
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #17 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !20
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -4, ptr %i.e, align 4, !tbaa !21
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.r = add i64 %i.p, 3
  %i.s = add i64 %i.r, %i.q
  %i.t = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.n, i64 noundef %i.s, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #15 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare hidden void @zng_free_aligned(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zng_gzopen(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @gz_open(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %gz_state_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(240) ptr @malloc(i64 noundef 240) #17 ; 31 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %gz_state_init.exit.thread, label %gz_state_init.exit

gz_state_init.exit:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr null, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i32 131072, ptr %i.g, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  store i32 0, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 5 uses
  store i32 0, ptr %i.l, align 4, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr null, ptr %i.m, align 8, !tbaa !20
  %i.n = load i8, ptr %2, align 1, !tbaa !39      ; 2 uses
  %.not74 = icmp eq i8 %i.n, 0
  br i1 %.not74, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %gz_state_init.exit, %bb.p
  %i.o = phi i32 [ %i.t, %bb.p ], [ 0, %gz_state_init.exit ] ; 11 uses
  %i.p = phi i32 [ %i.u, %bb.p ], [ 0, %gz_state_init.exit ] ; 9 uses
  %i.q = phi i8 [ %i.w, %bb.p ], [ %i.n, %gz_state_init.exit ] ; 2 uses
  %.077 = phi i32 [ %.1, %bb.p ], [ 0, %gz_state_init.exit ] ; 11 uses
  %.05476 = phi i32 [ %.155, %bb.p ], [ 0, %gz_state_init.exit ] ; 11 uses
  %.05675 = phi ptr [ %i.v, %bb.p ], [ %2, %gz_state_init.exit ]
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.r, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = zext nneg i8 %i.r to i32
  store i32 %i.s, ptr %i.k, align 8, !tbaa !37
  br label %bb.p

bb.d:                                             ; preds = %.lr.ph
  switch i8 %i.q, label %bb.p [
    i8 114, label %bb.e
    i8 119, label %bb.f
    i8 97, label %bb.g
    i8 43, label %bb.h
    i8 84, label %bb.o
    i8 101, label %bb.i
    i8 120, label %bb.j
    i8 102, label %bb.k
    i8 104, label %bb.l
    i8 82, label %bb.m
    i8 70, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  store i32 7247, ptr %i.j, align 8, !tbaa !16
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  store i32 31153, ptr %i.j, align 8, !tbaa !16
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  store i32 1, ptr %i.j, align 8, !tbaa !16
  br label %bb.p

bb.h:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.b) #15
  br label %gz_state_init.exit.thread

bb.i:                                             ; preds = %bb.d
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  store i32 1, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  store i32 2, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.m:                                             ; preds = %bb.d
  store i32 3, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  store i32 4, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  store i32 1, ptr %i.i, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.d, %bb.c
  %i.t = phi i32 [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ 1, %bb.o ], [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.o, %bb.k ], [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %i.o, %bb.n ] ; 2 uses
  %i.u = phi i32 [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ 7247, %bb.e ], [ 31153, %bb.f ], [ 1, %bb.g ], [ %i.p, %bb.o ], [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %bb.m ], [ %i.p, %bb.n ] ; 5 uses
  %.155 = phi i32 [ %.05476, %bb.c ], [ %.05476, %bb.d ], [ %.05476, %bb.e ], [ %.05476, %bb.f ], [ %.05476, %bb.g ], [ %.05476, %bb.o ], [ 1, %bb.i ], [ %.05476, %bb.j ], [ %.05476, %bb.k ], [ %.05476, %bb.l ], [ %.05476, %bb.m ], [ %.05476, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %.077, %bb.c ], [ %.077, %bb.d ], [ %.077, %bb.e ], [ %.077, %bb.f ], [ %.077, %bb.g ], [ %.077, %bb.o ], [ %.077, %bb.i ], [ 1, %bb.j ], [ %.077, %bb.k ], [ %.077, %bb.l ], [ %.077, %bb.m ], [ %.077, %bb.n ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05675, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39    ; 2 uses
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.p
  %3 = shl nuw nsw i32 %.155, 19
  %i.x = icmp eq i32 %.1, 0
  %i.y = select i1 %i.x, i32 65, i32 193
  switch i32 %i.u, label %bb.t [
    i32 0, label %._crit_edge.thread
    i32 7247, label %bb.q
  ]

._crit_edge.thread:                               ; preds = %gz_state_init.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.q:                                             ; preds = %._crit_edge
  %i.z = icmp eq i32 %i.t, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.s:                                             ; preds = %bb.q
  store i32 1, ptr %i.i, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #17 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !23
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.af = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ac, i64 noundef %i.ab, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #15 ; 0 uses
  %i.ag = icmp eq i32 %i.u, 7247                  ; 2 uses
  %i.ah = icmp sgt i32 %1, -1
  br i1 %i.ah, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %1, ptr %i.ai, align 4, !tbaa !24
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.aj = icmp eq i32 %i.u, 31153
  %i.ak = select i1 %i.aj, i32 512, i32 1024
  %i.al = or disjoint i32 %i.y, %i.ak
  %i.am = select i1 %i.ag, i32 0, i32 %i.al
  %i.an = or disjoint i32 %3, %i.am
  %i.ao = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef 438) #15 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !24
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.ac) #15
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.y:                                             ; preds = %.thread, %bb.w
  %i.ar = phi i32 [ %1, %.thread ], [ %i.ao, %bb.w ] ; 2 uses
  %i.as = icmp eq i32 %i.u, 1
  br i1 %i.as, label %.thread69, label %bb.z

.thread69:                                        ; preds = %bb.y
  %i.at = tail call i64 @lseek64(i32 noundef %i.ar, i64 noundef 0, i32 noundef 2) #15 ; 0 uses
  store i32 31153, ptr %i.j, align 8, !tbaa !16
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  br i1 %i.ag, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.au = tail call i64 @lseek64(i32 noundef %i.ar, i64 noundef 0, i32 noundef 1) #15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.aw = icmp eq i64 %i.au, -1
  %spec.store.select = select i1 %i.aw, i64 0, i64 %i.au
  store i64 %spec.store.select, ptr %i.av, align 8
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.ax, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 0, ptr %i.ay, align 4, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 0, ptr %i.az, align 4, !tbaa !27
  br label %gz_reset.exit

bb.ab:                                            ; preds = %bb.z, %.thread69
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.ba, align 8, !tbaa !28
  br label %gz_reset.exit

gz_reset.exit:                                    ; preds = %bb.aa, %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.bb, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 0, ptr %i.bc, align 4, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bd, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 0, ptr %i.be, align 8, !tbaa !31
  br label %gz_state_init.exit.thread

gz_state_init.exit.thread:                        ; preds = %bb.b, %bb.a, %gz_reset.exit, %bb.x, %bb.u, %bb.r, %._crit_edge.thread, %bb.h
  %.057 = phi ptr [ %i.b, %gz_reset.exit ], [ null, %bb.a ], [ null, %bb.h ], [ null, %._crit_edge.thread ], [ null, %bb.r ], [ null, %bb.u ], [ null, %bb.x ], [ null, %bb.b ]
  ret ptr %.057
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zng_gzdopen(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %0) #15 ; 0 uses
  %i.d = call fastcc ptr @gz_open(ptr noundef nonnull %i.a, i32 noundef %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzclose(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq i32 %i.c, 7247
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @zng_gzclose_r(ptr noundef nonnull %0) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @zng_gzclose_w(ptr noundef nonnull %0) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  ret i32 %.0
}

declare i32 @zng_gzclose_r(ptr noundef) local_unnamed_addr #3

declare i32 @zng_gzclose_w(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @zng_gzbuffer(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  switch i32 %i.c, label %bb.e [
    i32 7247, label %bb.c
    i32 31153, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %.not14 = icmp ne i32 %i.e, 0
  %i.f = icmp slt i32 %1, 0
  %or.cond = or i1 %i.f, %.not14
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %1, i32 8)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.store.select, ptr %i.g, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zng_gzrewind(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %.not = icmp eq i32 %i.c, 7247
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  switch i32 %i.e, label %bb.l [
    i32 0, label %bb.d
    i32 -5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i64 @lseek64(i32 noundef %i.g, i64 noundef %i.i, i32 noundef 0) #15
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %0, align 8, !tbaa !22
  %i.l = load i32, ptr %i.b, align 8, !tbaa !16
  %i.m = icmp eq i32 %i.l, 7247
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.o, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.p, align 4, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
end_hunk_0
