Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/gzwrite?download=true
begin_hunk_0_@gz_zero:bb.a

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @zng_gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %.not = icmp eq i32 %i.c, 31153
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 4 uses
  %or.cond = icmp ult i64 %i.f, 2147483648
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = tail call fastcc i64 @gz_write(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.f)
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = select i1 %i.i, i32 -1, i32 %i.g
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ %i.j, %bb.f ], [ -1, %bb.a ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzvprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %.not = icmp eq i32 %i.d, 31153
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16
  %.not57 = icmp eq i32 %i.f, 0
  br i1 %.not57, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i32 @gz_write_init(ptr noundef %0)
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.e, align 4, !tbaa !16
  br label %bb.s

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = tail call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.p)
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.e, align 4, !tbaa !16
  br label %bb.s

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !23   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 4 uses
  br i1 %i.v, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre62 = load ptr, ptr %i.b, align 8, !tbaa !24
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.x, ptr %i.b, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.y = phi ptr [ %.pre62, %._crit_edge ], [ %i.x, %bb.k ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %i.ac
  %i.ae = zext i32 %i.u to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !17
  %i.ah = add i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !17
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call i32 @vsnprintf(ptr noundef %i.af, i64 noundef %i.al, ptr noundef %1, ptr noundef %2) #12 ; 6 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !17  ; 5 uses
  %.not59 = icmp ult i32 %i.am, %i.ao
  br i1 %.not59, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ap = add i32 %i.ao, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25
  %.not60 = icmp eq i8 %i.as, 0
  br i1 %.not60, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.t, align 8, !tbaa !23
  %i.au = add i32 %i.at, %i.am                    ; 3 uses
  store i32 %i.au, ptr %i.t, align 8, !tbaa !23
  %i.av = sext i32 %i.am to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.ay = add nsw i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !21
  %.not61 = icmp ult i32 %i.au, %i.ao
  br i1 %.not61, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !23
  %i.az = tail call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bc = sub nuw i32 %i.au, %i.ao                ; 2 uses
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.be = load i32, ptr %i.g, align 8, !tbaa !17
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %i.bh = zext i32 %i.bc to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !20
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !24
  store i32 %i.bc, ptr %i.t, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.l, %bb.m, %bb.n, %bb.b, %bb.c, %bb.a, %bb.q, %bb.i, %bb.f
  %.0 = phi i32 [ 0, %bb.l ], [ -2, %bb.a ], [ %i.l, %bb.f ], [ %i.s, %bb.i ], [ -2, %bb.b ], [ %i.bb, %bb.q ], [ -2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.am, %bb.r ], [ %i.am, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_write_init(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = tail call i32 @gz_buffer_alloc(ptr noundef nonnull %0) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.3) #12
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.d, label %2

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = tail call i32 @zng_deflateInit2(ptr noundef nonnull %i.a, i32 noundef %i.f, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %i.h) #12 ; 2 uses
  %.not23 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @gz_buffer_free(ptr noundef nonnull %0) #12
  %i.j = icmp eq i32 %i.i, -4
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.3) #12
  br label %1

bb.g:                                             ; preds = %bb.e
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #12
  br label %1

bb.h:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.o, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !32
  br label %1

1:                                                ; preds = %bb.f, %bb.g, %bb.h
  br i1 %.not23, label %2, label %.thread

2:                                                ; preds = %1, %bb.c
  br label %.thread

.thread:                                          ; preds = %1, %2, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %2 ], [ -1, %1 ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_comp(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @gz_write_init(ptr noundef %0)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = zext i32 %i.m to i64
  %i.o = tail call i64 @write(i32 noundef %i.j, ptr noundef %i.k, i64 noundef %i.n) #12 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i32
  %i.r = load i32, ptr %i.l, align 8, !tbaa !23
  %.not60 = icmp eq i32 %i.r, %i.q
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = tail call ptr @__errno_location() #14
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = tail call ptr @strerror(i32 noundef %i.t) #12
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.u) #12
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.l, align 8, !tbaa !23
  br label %bb.ae

bb.h:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41
  %.not55 = icmp eq i32 %i.w, 0
  br i1 %.not55, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load i32, ptr %i.x, align 8, !tbaa !23
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @zng_deflateReset(ptr noundef nonnull %i.a) #12 ; 0 uses
  store i32 0, ptr %i.v, align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  switch i32 %1, label %.split.split.us [
    i32 0, label %.split.us.preheader
    i32 4, label %.split.split.preheader
  ]

.split.split.preheader:                           ; preds = %bb.k
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !29
  br label %.split.split

.split.us.preheader:                              ; preds = %bb.k
  %.pre82 = load i32, ptr %i.ab, align 8, !tbaa !29
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.q
  %i.ag = phi i32 [ %.pre82, %.split.us.preheader ], [ %i.bb, %bb.q ] ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.split.us
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %.not57.us = icmp eq i32 %i.an, 0
  br i1 %.not57.us, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ap = and i64 %i.am, 4294967295
  %i.aq = tail call i64 @write(i32 noundef %i.ao, ptr noundef %i.aj, i64 noundef %i.ap) #12 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  %i.as = trunc i64 %i.aq to i32
  %.not58.us = icmp eq i32 %i.as, %i.an
  %or.cond61.us = and i1 %i.ar, %.not58.us
  br i1 %or.cond61.us, label %bb.n, label %.split63.us

bb.n:                                             ; preds = %bb.m
  %.pre84 = load i32, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.at = icmp eq i32 %.pre84, 0
  br i1 %i.at, label %.thread, label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.n
  %.pre86 = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %bb.o

.thread:                                          ; preds = %bb.l, %bb.n
  %i.au = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  store i32 %i.au, ptr %i.ab, align 8, !tbaa !29
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  store ptr %i.av, ptr %i.ac, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge85, %.thread
  %i.aw = phi i32 [ %.pre84, %._crit_edge85 ], [ %i.au, %.thread ]
  %i.ax = phi ptr [ %.pre86, %._crit_edge85 ], [ %i.av, %.thread ]
  store ptr %i.ax, ptr %i.ad, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %.split.us, %bb.o
  %i.ay = phi i32 [ %i.ag, %.split.us ], [ %i.aw, %bb.o ]
  %i.az = tail call i32 @zng_deflate(ptr noundef nonnull %i.a, i32 noundef 0) #12
  %i.ba = icmp eq i32 %i.az, -2
  br i1 %i.ba, label %.split65.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %.not59.us = icmp eq i32 %i.ay, %i.bb
  br i1 %.not59.us, label %.split67.us, label %.split.us, !llvm.loop !39

.split.split.us:                                  ; preds = %bb.k, %bb.v
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %.not57.us69 = icmp eq i32 %i.bh, 0
  br i1 %.not57.us69, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.split.split.us
  %i.bi = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.bj = and i64 %i.bg, 4294967295
  %i.bk = tail call i64 @write(i32 noundef %i.bi, ptr noundef %i.bd, i64 noundef %i.bj) #12 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  %i.bm = trunc i64 %i.bk to i32
  %.not58.us70 = icmp eq i32 %i.bm, %i.bh
  %or.cond61.us71 = and i1 %i.bl, %.not58.us70
  br i1 %or.cond61.us71, label %bb.s, label %.split63.us

bb.s:                                             ; preds = %bb.r, %.split.split.us
  %i.bn = load i32, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %._crit_edge87

._crit_edge87:                                    ; preds = %bb.s
  %.pre88 = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  store i32 %i.bp, ptr %i.ab, align 8, !tbaa !29
  %i.bq = load ptr, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  store ptr %i.bq, ptr %i.ac, align 8, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge87, %bb.t
  %i.br = phi i32 [ %i.bn, %._crit_edge87 ], [ %i.bp, %bb.t ]
  %i.bs = phi ptr [ %.pre88, %._crit_edge87 ], [ %i.bq, %bb.t ]
  store ptr %i.bs, ptr %i.ad, align 8, !tbaa !32
  %i.bt = tail call i32 @zng_deflate(ptr noundef nonnull %i.a, i32 noundef %1) #12
  %i.bu = icmp eq i32 %i.bt, -2
  br i1 %i.bu, label %.split65.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = load i32, ptr %i.ab, align 8, !tbaa !29
  %.not59.us72 = icmp eq i32 %i.br, %i.bv
  br i1 %.not59.us72, label %.split67.us, label %.split.split.us, !llvm.loop !39

.split.split:                                     ; preds = %.split.split.preheader, %bb.ac
  %i.bw = phi i32 [ %i.cw, %bb.ac ], [ %.pre, %.split.split.preheader ] ; 3 uses
  %.0 = phi i32 [ %i.cu, %bb.ac ], [ 0, %.split.split.preheader ]
end_hunk_0
