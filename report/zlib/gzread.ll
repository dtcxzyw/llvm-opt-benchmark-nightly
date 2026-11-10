Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/gzread?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gzgets:bb.a

.preheader:                                       ; preds = %gz_skip.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %.thread
  %i.ak = phi i32 [ %i.bb, %.thread ], [ %.pre, %.preheader ] ; 2 uses
  %.051 = phi ptr [ %i.bh, %.thread ], [ %1, %.preheader ] ; 4 uses
  %.049 = phi i32 [ %i.bg, %.thread ], [ %i.ah, %.preheader ] ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.am = tail call fastcc i32 @gz_fetch(ptr noundef %0)
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.pr = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.ao = icmp eq i32 %.pr, 0
  br i1 %i.ao, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.ap, align 4, !tbaa !31
  br label %.loopexit

.thread:                                          ; preds = %bb.m, %bb.o
  %i.aq = phi i32 [ %.pr, %bb.o ], [ %i.ak, %bb.m ]
  %.049. = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %.049) ; 2 uses
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 3 uses
  %i.as = zext i32 %.049. to i64
  %i.at = tail call ptr @memchr(ptr noundef %i.ar, i32 noundef 10, i64 noundef %i.as) #14 ; 2 uses
  %.not65 = icmp eq ptr %i.at, null               ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, 1
  %.0 = select i1 %.not65, i32 %.049., i32 %i.ay  ; 3 uses
  %i.az = zext i32 %.0 to i64                     ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.051, ptr align 1 %i.ar, i64 %i.az, i1 false)
  %i.ba = load i32, ptr %0, align 8, !tbaa !22
  %i.bb = sub i32 %i.ba, %.0                      ; 2 uses
  store i32 %i.bb, ptr %0, align 8, !tbaa !22
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !23
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.bf = add nsw i64 %i.be, %i.az
  store i64 %i.bf, ptr %i.aj, align 8, !tbaa !24
  %i.bg = sub i32 %.049, %.0                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.051, i64 %i.az ; 2 uses
  %i.bi = icmp ne i32 %i.bg, 0
  %i.bj = and i1 %.not65, %i.bi
  br i1 %i.bj, label %bb.m, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %.thread, %bb.n, %bb.p
  %.1 = phi ptr [ %.051, %bb.p ], [ %i.bh, %.thread ], [ %.051, %bb.n ] ; 2 uses
  %i.bk = icmp eq ptr %.1, %1
  br i1 %i.bk, label %gz_skip.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  store i8 0, ptr %.1, align 1, !tbaa !32
  br label %gz_skip.exit

gz_skip.exit:                                     ; preds = %bb.k, %gz_skip.exit.thread, %.loopexit, %bb.d, %bb.b, %bb.a, %bb.q
  %.050 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ], [ null, %.loopexit ], [ %1, %bb.q ], [ null, %gz_skip.exit.thread ], [ null, %bb.k ]
  ret ptr %.050
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_fetch(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !28
  switch i32 %i.h, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.k
  ]

bb.b:                                             ; preds = %.critedge2
  %i.i = tail call fastcc i32 @gz_look(ptr noundef %0)
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.a, align 8, !tbaa !28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.m

bb.d:                                             ; preds = %.critedge2
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = load i32, ptr %i.b, align 8, !tbaa !29
  %i.o = shl i32 %i.n, 1                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !19
  %i.q = tail call ptr @__errno_location() #12    ; 3 uses
  store i32 0, ptr %i.q, align 4, !tbaa !20
  store i32 0, ptr %0, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.s = phi i32 [ %i.ac, %bb.f ], [ 0, %bb.d ]   ; 2 uses
  %i.t = sub i32 %i.o, %i.s
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 1073741824)
  %i.u = load i32, ptr %i.r, align 4, !tbaa !30
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = zext nneg i32 %spec.select.i to i64
  %i.y = tail call i64 @read(i32 noundef %i.u, ptr noundef %i.w, i64 noundef %i.x) #11
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %0, align 8, !tbaa !20
  %i.ac = add i32 %i.ab, %i.z                     ; 3 uses
  store i32 %i.ac, ptr %0, align 8, !tbaa !20
  %i.ad = icmp ult i32 %i.ac, %i.o
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !1

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp slt i32 %i.z, 0
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.q, align 4, !tbaa !20  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 11
  br i1 %i.ag, label %bb.i, label %gz_load.exit

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.p, align 4, !tbaa !19
  %i.ah = load i32, ptr %0, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %._crit_edge.i, label %.loopexit

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !20
  br label %gz_load.exit

bb.j:                                             ; preds = %bb.g
  store i32 1, ptr %i.f, align 8, !tbaa !25
  br label %.loopexit

gz_load.exit:                                     ; preds = %bb.h, %._crit_edge.i
  %i.ai = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.af, %bb.h ]
  %i.aj = tail call ptr @strerror(i32 noundef %i.ai) #11
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.aj) #11
  br label %.critedge

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.j
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !23
  br label %.critedge

bb.k:                                             ; preds = %.critedge2
  %i.am = load i32, ptr %i.b, align 8, !tbaa !29
  %i.an = shl i32 %i.am, 1
  store i32 %i.an, ptr %i.c, align 8, !tbaa !39
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !33
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !40
  %i.ap = tail call fastcc i32 @gz_decomp(ptr noundef %0)
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %.critedge, label %bb.m

bb.l:                                             ; preds = %.critedge2
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #11
  br label %.critedge

bb.m:                                             ; preds = %bb.c, %bb.k
  %i.ar = load i32, ptr %0, align 8, !tbaa !22
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.f, align 8, !tbaa !25
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %.critedge2.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr %i.g, align 8, !tbaa !37
  %.not21 = icmp eq i32 %i.au, 0
  br i1 %.not21, label %.critedge, label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %bb.o, %bb.n
  br label %.critedge2

.critedge:                                        ; preds = %bb.o, %bb.m, %bb.k, %bb.c, %bb.b, %gz_load.exit, %bb.l, %.loopexit
  %.0 = phi i32 [ -1, %bb.l ], [ -1, %gz_load.exit ], [ 0, %.loopexit ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.c ], [ -1, %bb.k ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq i32 %i.c, 7247
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !22
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i32 @gz_look(ptr noundef %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = icmp eq i32 %i.l, 1
  %i.n = zext i1 %i.m to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @gzclose_r(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %.not = icmp eq i32 %i.c, 7247
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = tail call i32 @inflateEnd(ptr noundef nonnull %i.f) #11 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.i) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.k) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %i.n = icmp eq i32 %i.m, -5
  %i.o = select i1 %i.n, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.q) #11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = tail call i32 @close(i32 noundef %i.s) #11
  tail call void @free(ptr noundef nonnull %0) #11
  %.not16 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not16, i32 %i.o, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.u, %bb.e ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_decomp(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.o ]     ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !37
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc i32 @gz_avail(ptr noundef %0)
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %.pr = load i32, ptr %i.d, align 8, !tbaa !37
  %i.l = icmp eq i32 %.pr, 0
  br i1 %i.l, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #11
  br label %.loopexit

.thread:                                          ; preds = %bb.b, %bb.e
  %i.o = tail call i32 @inflate(ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 5 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.q = icmp ult i32 %i.p, %i.c
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  store i32 0, ptr %i.e, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  switch i32 %i.o, label %bb.o [
    i32 -2, label %bb.j
    i32 2, label %bb.j
    i32 -4, label %bb.k
    i32 -3, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #11
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #11
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.e, align 4, !tbaa !36
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.d, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.u, align 8, !tbaa !28
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %spec.select = select i1 %i.x, ptr @.str.6, ptr %i.w
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %spec.select) #11
  br label %.loopexit

bb.o:                                             ; preds = %bb.i
  %i.y = icmp ne i32 %i.p, 0
  %i.z = icmp ne i32 %i.o, 1
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.b, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %bb.o, %bb.f, %bb.g, %bb.n, %bb.m, %bb.k, %bb.j, %bb.d
  %.1 = phi i32 [ %i.k, %bb.d ], [ %.0, %bb.f ], [ %.0, %bb.g ], [ %i.o, %bb.j ], [ -4, %bb.k ], [ 0, %bb.m ], [ -3, %bb.n ], [ %i.o, %bb.o ] ; 2 uses
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !39
  %i.ac = sub i32 %i.c, %i.ab                     ; 2 uses
  store i32 %i.ac, ptr %0, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.af = zext i32 %i.ac to i64
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !23
  %i.aj = icmp eq i32 %.1, 1
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  store i32 0, ptr %i.e, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ak, align 8, !tbaa !28
  br label %bb.r

bb.q:                                             ; preds = %.loopexit
  %.not41 = icmp ne i32 %.1, 0
  %i.al = sext i1 %.not41 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.038 = phi i32 [ 0, %bb.p ], [ %i.al, %bb.q ]
  ret i32 %.038
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_avail(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  switch i32 %i.c, label %bb.k [
    i32 0, label %bb.b
    i32 -5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37   ; 8 uses
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %.loopexit38, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 7 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !38   ; 7 uses
  %.not30 = icmp eq ptr %i.k, %i.j
  br i1 %.not30, label %.loopexit38, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = ptrtoaddr ptr %i.j to i64
  %i.n = zext i32 %i.h to i64                     ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  %i.o = sub i64 %i.l, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check58 = icmp ult i32 %i.h, 32
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 4294967264               ; 6 uses
  %i.q = getelementptr i8, ptr %i.j, i64 %n.vec
  %i.r = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %index ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep59, align 1, !tbaa !32
  %wide.load60 = load <16 x i8>, ptr %i.u, align 1, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !32
  store <16 x i8> %wide.load60, ptr %i.v, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.loopexit38.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.n, 4294967292             ; 5 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %n.vec61
  %i.y = getelementptr i8, ptr %i.k, i64 %n.vec61
  %i.z = trunc nuw i64 %n.vec61 to i32
  %i.aa = sub i32 %i.h, %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 3 uses
  %next.gep63 = getelementptr i8, ptr %i.j, i64 %index62
  %next.gep64 = getelementptr i8, ptr %i.k, i64 %index62
  %wide.load65 = load <4 x i8>, ptr %next.gep64, align 1, !tbaa !32
  store <4 x i8> %wide.load65, ptr %next.gep63, align 1, !tbaa !32
  %index.next66 = add nuw i64 %index62, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.vec61, %i.n
  br i1 %cmp.n67, label %.loopexit38.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.ph = phi ptr [ %i.j, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.021.ph = phi ptr [ %i.k, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %i.h, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 4 uses
  %i.ac = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.022.prol = phi ptr [ %i.af, %.preheader.prol ], [ %.022.ph, %.preheader.preheader ] ; 2 uses
  %.021.prol = phi ptr [ %i.ad, %.preheader.prol ], [ %.021.ph, %.preheader.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.ag, %.preheader.prol ], [ %.0.ph, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.021.prol, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.021.prol, align 1, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %.022.prol, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.022.prol, align 1, !tbaa !32
  %i.ag = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !53

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.022.unr = phi ptr [ %.022.ph, %.preheader.preheader ], [ %i.af, %.preheader.prol ]
  %.021.unr = phi ptr [ %.021.ph, %.preheader.preheader ], [ %i.ad, %.preheader.prol ]
  %.0.unr = phi i32 [ %.0.ph, %.preheader.preheader ], [ %i.ag, %.preheader.prol ]
  %i.ah = icmp ult i32 %i.ac, 7
  br i1 %i.ah, label %.loopexit38.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.022 = phi ptr [ %i.bf, %.preheader ], [ %.022.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.021 = phi ptr [ %i.bd, %.preheader ], [ %.021.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.0 = phi i32 [ %i.bg, %.preheader ], [ %.0.unr, %.preheader.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.aj = load i8, ptr %.021, align 1, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.022, i64 1
  store i8 %i.aj, ptr %.022, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.021, i64 2
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %.022, i64 2
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %.021, i64 3
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %.022, i64 3
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %.021, i64 4
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %.022, i64 4
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %.021, i64 5
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %.022, i64 5
  store i8 %i.av, ptr %i.at, align 1, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %.021, i64 6
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %.022, i64 6
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %.021, i64 7
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %.022, i64 7
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.022, i64 8
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !32
  %i.bg = add i32 %.0, -8                         ; 2 uses
  %.not31.7 = icmp eq i32 %i.bg, 0
  br i1 %.not31.7, label %.loopexit38.loopexit, label %.preheader, !llvm.loop !54

.loopexit38.loopexit:                             ; preds = %.preheader.prol.loopexit, %.preheader, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.g, align 8, !tbaa !37
  br label %.loopexit38

.loopexit38:                                      ; preds = %.loopexit38.loopexit, %bb.d, %bb.c
  %i.bh = phi i32 [ %.pre, %.loopexit38.loopexit ], [ %i.h, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !29
  %i.bo = sub i32 %i.bn, %i.bh                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !19
  %i.bq = tail call ptr @__errno_location() #12   ; 3 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.loopexit38
  %.034 = phi i32 [ 0, %.loopexit38 ], [ %i.ca, %bb.f ] ; 6 uses
  %i.bs = sub i32 %i.bo, %.034
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 1073741824)
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !30
  %i.bu = zext i32 %.034 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bu
  %i.bw = zext nneg i32 %spec.select.i to i64
  %i.bx = tail call i64 @read(i32 noundef %i.bt, ptr noundef %i.bv, i64 noundef %i.bw) #11
  %i.by = trunc i64 %i.bx to i32                  ; 3 uses
  %i.bz = icmp slt i32 %i.by, 1
  br i1 %i.bz, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = add i32 %.034, %i.by                    ; 3 uses
  %i.cb = icmp ult i32 %i.ca, %i.bo
  br i1 %i.cb, label %bb.e, label %.loopexit, !llvm.loop !1

bb.g:                                             ; preds = %bb.e
  %i.cc = icmp slt i32 %i.by, 0
  br i1 %i.cc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %i.bq, align 4, !tbaa !20 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 11
  br i1 %i.ce, label %bb.i, label %gz_load.exit

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.bp, align 4, !tbaa !19
  %.not.i = icmp eq i32 %.034, 0
  br i1 %.not.i, label %._crit_edge.i, label %.loopexit

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load i32, ptr %i.bq, align 4, !tbaa !20
  br label %gz_load.exit

bb.j:                                             ; preds = %bb.g
  store i32 1, ptr %i.d, align 8, !tbaa !25
  br label %.loopexit

gz_load.exit:                                     ; preds = %bb.h, %._crit_edge.i
  %i.cf = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.cd, %bb.h ]
  %i.cg = tail call ptr @strerror(i32 noundef %i.cf) #11
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.cg) #11
  br label %bb.k

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.j
  %.1.ph = phi i32 [ %.034, %bb.i ], [ %.034, %bb.j ], [ %i.ca, %bb.f ]
  %i.ch = load i32, ptr %i.g, align 8, !tbaa !37
  %i.ci = add i32 %i.ch, %.1.ph
  store i32 %i.ci, ptr %i.g, align 8, !tbaa !37
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !34
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %gz_load.exit, %bb.b, %.loopexit, %bb.a
  %.023 = phi i32 [ -1, %gz_load.exit ], [ -1, %bb.a ], [ 0, %.loopexit ], [ 0, %bb.b ]
  ret i32 %.023
}

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"gzFile_s", !7, i64 0, !11, i64 8, !12, i64 16}
!14 = !{!"p1 _ZTS14internal_state", !10, i64 0}
!15 = !{!"z_stream_s", !11, i64 0, !7, i64 8, !12, i64 16, !11, i64 24, !7, i64 32, !12, i64 40, !11, i64 48, !14, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !7, i64 88, !12, i64 96, !12, i64 104}
!16 = !{!"", !13, i64 0, !7, i64 24, !7, i64 28, !11, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !11, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !12, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !12, i64 112, !7, i64 120, !11, i64 128, !15, i64 136}
!17 = !{!16, !7, i64 24}
!18 = !{!16, !7, i64 120}
!19 = !{!16, !7, i64 76}
!20 = !{!7, !7, i64 0}
!21 = !{!16, !12, i64 112}
!22 = !{!16, !7, i64 0}
!23 = !{!16, !11, i64 8}
!24 = !{!16, !12, i64 16}
!25 = !{!16, !7, i64 88}
!26 = !{!16, !7, i64 144}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!16, !7, i64 72}
!29 = !{!16, !7, i64 40}
!30 = !{!16, !7, i64 28}
!31 = !{!16, !7, i64 92}
!32 = !{!6, !6, i64 0}
!33 = !{!16, !11, i64 56}
!34 = !{!16, !11, i64 48}
!35 = !{!16, !7, i64 64}
!36 = !{!16, !7, i64 68}
!37 = !{!15, !7, i64 8}
!38 = !{!15, !11, i64 0}
!39 = !{!15, !7, i64 32}
!40 = !{!15, !11, i64 24}
!41 = distinct !{!41, !27}
!42 = !{!16, !7, i64 168}
!43 = !{!16, !11, i64 160}
!44 = distinct !{!44, !27}
!45 = !{!16, !7, i64 44}
!46 = !{!16, !11, i64 136}
!47 = distinct !{!47, !27}
!48 = !{!16, !11, i64 32}
!49 = distinct !{!49, !27}
!50 = !{!15, !11, i64 48}
!51 = distinct !{!51, !27, !55, !56}
!52 = distinct !{!52, !27, !55, !56}
!53 = distinct !{!53, !58}
!54 = distinct !{!54, !27, !55}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 4, i32 28}
!58 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
