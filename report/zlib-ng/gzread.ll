Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/gzread?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zng_gzgets:bb.a
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !24
  %.not20.i = icmp eq i32 %i.aa, 0
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !25
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %gz_skip.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0)
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %gz_skip.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.1.i = phi i64 [ %i.z, %bb.g ], [ %.022.i, %bb.j ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %gz_skip.exit.thread, label %bb.f, !llvm.loop !0

gz_skip.exit.thread:                              ; preds = %bb.k, %bb.i, %bb.e, %bb.d
  %i.af = add nsw i32 %2, -1                      ; 2 uses
  %.not63 = icmp eq i32 %i.af, 0
  br i1 %.not63, label %gz_skip.exit, label %.preheader

.preheader:                                       ; preds = %gz_skip.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %.thread
  %i.ai = phi i32 [ %i.az, %.thread ], [ %.pre, %.preheader ] ; 2 uses
  %.051 = phi ptr [ %i.bf, %.thread ], [ %1, %.preheader ] ; 3 uses
  %.049 = phi i32 [ %i.be, %.thread ], [ %i.af, %.preheader ] ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call fastcc i32 @gz_fetch(ptr noundef %0)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %gz_skip.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.pr = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.am = icmp eq i32 %.pr, 0
  br i1 %i.am, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.an, align 4, !tbaa !27
  br label %.loopexit

.thread:                                          ; preds = %bb.l, %bb.n
  %i.ao = phi i32 [ %.pr, %bb.n ], [ %i.ai, %bb.l ]
  %.049. = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %.049) ; 2 uses
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.aq = zext i32 %.049. to i64
  %i.ar = tail call ptr @memchr(ptr noundef %i.ap, i32 noundef 10, i64 noundef %i.aq) #11 ; 2 uses
  %.not64 = icmp eq ptr %i.ar, null               ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.av, 1
  %.0 = select i1 %.not64, i32 %.049., i32 %i.aw  ; 3 uses
  %i.ax = zext i32 %.0 to i64                     ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.051, ptr align 1 %i.ap, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %0, align 8, !tbaa !21
  %i.az = sub i32 %i.ay, %.0                      ; 2 uses
  store i32 %i.az, ptr %0, align 8, !tbaa !21
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax
  store ptr %i.bb, ptr %i.ag, align 8, !tbaa !22
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.bd = add nsw i64 %i.bc, %i.ax
  store i64 %i.bd, ptr %i.ah, align 8, !tbaa !23
  %i.be = sub i32 %.049, %.0                      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.051, i64 %i.ax ; 2 uses
  %i.bg = icmp ne i32 %i.be, 0
  %i.bh = and i1 %.not64, %i.bg
  br i1 %i.bh, label %bb.l, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %.thread, %bb.o
  %.1 = phi ptr [ %.051, %bb.o ], [ %i.bf, %.thread ] ; 2 uses
  %i.bi = icmp eq ptr %.1, %1
  br i1 %i.bi, label %gz_skip.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit
  store i8 0, ptr %.1, align 1, !tbaa !32
  br label %gz_skip.exit

gz_skip.exit:                                     ; preds = %bb.j, %bb.m, %gz_skip.exit.thread, %.loopexit, %bb.b, %bb.c, %bb.a, %bb.p
  %.050 = phi ptr [ %1, %bb.p ], [ null, %bb.a ], [ null, %bb.b ], [ null, %.loopexit ], [ null, %gz_skip.exit.thread ], [ null, %bb.c ], [ null, %bb.m ], [ null, %bb.j ]
  ret ptr %.050
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_fetch(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !28
  switch i32 %i.h, label %.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %.critedge2
  %i.i = tail call fastcc i32 @gz_look(ptr noundef %0)
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.j

bb.d:                                             ; preds = %.critedge2
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = load i32, ptr %i.b, align 8, !tbaa !29
  %i.o = shl i32 %i.n, 1                          ; 2 uses
  store i32 0, ptr %0, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = phi i32 [ %i.aa, %bb.f ], [ 0, %bb.d ]   ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !30
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s
  %i.u = sub i32 %i.o, %i.q
  %i.v = zext i32 %i.u to i64
  %i.w = tail call i64 @read(i32 noundef %i.r, ptr noundef %i.t, i64 noundef %i.v) #9 ; 3 uses
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = trunc i64 %i.w to i32
  %i.z = load i32, ptr %0, align 8, !tbaa !31
  %i.aa = add i32 %i.z, %i.y                      ; 3 uses
  store i32 %i.aa, ptr %0, align 8, !tbaa !31
  %i.ab = icmp ult i32 %i.aa, %i.o
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !1

bb.g:                                             ; preds = %bb.e
  %i.ac = icmp slt i64 %i.w, 0
  br i1 %i.ac, label %gz_load.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.f, align 8, !tbaa !24
  br label %.loopexit

gz_load.exit:                                     ; preds = %bb.g
  %i.ad = tail call ptr @__errno_location() #10
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.af = tail call ptr @strerror(i32 noundef %i.ae) #9
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.af) #9
  br label %.critedge

.loopexit:                                        ; preds = %bb.f, %bb.h
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !22
  br label %.critedge

bb.i:                                             ; preds = %.critedge2
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !29
  %i.aj = shl i32 %i.ai, 1
  store i32 %i.aj, ptr %i.c, align 8, !tbaa !37
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !38
  %i.al = tail call fastcc i32 @gz_decomp(ptr noundef %0)
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %i.an = load i32, ptr %0, align 8, !tbaa !21
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !24
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %.critedge2.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !34
  %.not20 = icmp eq i32 %i.aq, 0
  br i1 %.not20, label %.critedge, label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %bb.l, %bb.k
  br label %.critedge2, !llvm.loop !44

.critedge:                                        ; preds = %bb.l, %bb.j, %.critedge2, %bb.i, %bb.c, %bb.b, %gz_load.exit, %.loopexit
  %.0 = phi i32 [ 0, %.loopexit ], [ -1, %gz_load.exit ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.c ], [ -1, %.critedge2 ], [ -1, %bb.b ], [ -1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzdirect(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq i32 %i.c, 7247
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i32 @gz_look(ptr noundef %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.l, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @zng_gzclose_r(ptr noundef %0) local_unnamed_addr #0 {
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
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = tail call i32 @zng_inflateEnd(ptr noundef nonnull %i.f) #9 ; 0 uses
  tail call void @gz_buffer_free(ptr noundef nonnull %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %i.j = icmp eq i32 %i.i, -5
  %i.k = select i1 %i.j, i32 -5, i32 0
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  %i.p = tail call i32 @close(i32 noundef %i.o) #9
  tail call void @free(ptr noundef nonnull %0) #9
  %.not15 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not15, i32 %i.k, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.q, %bb.e ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

declare i32 @zng_inflateEnd(ptr noundef) local_unnamed_addr #2

declare hidden void @gz_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_decomp(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.i ]
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @gz_avail(ptr noundef %0)
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pr = load i32, ptr %i.d, align 8, !tbaa !34
  %i.i = icmp eq i32 %.pr, 0
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #9
  %.pre = load i32, ptr %i.b, align 8, !tbaa !37
  br label %.loopexit30

.thread:                                          ; preds = %bb.b, %bb.d
  %i.j = tail call i32 @zng_inflate(ptr noundef nonnull %i.a, i32 noundef 0) #9 ; 4 uses
  switch i32 %i.j, label %bb.i [
    i32 -2, label %bb.f
    i32 2, label %bb.f
    i32 -4, label %bb.g
    i32 -3, label %bb.h
  ]

bb.f:                                             ; preds = %.thread, %.thread
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #9
  br label %.loopexit

bb.g:                                             ; preds = %.thread
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #9
  br label %.loopexit

bb.h:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %spec.select = select i1 %i.m, ptr @.str.6, ptr %i.l
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %spec.select) #9
  br label %.loopexit

bb.i:                                             ; preds = %.thread
  %i.n = load i32, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp ne i32 %i.j, 1
  %i.q = and i1 %i.p, %i.o
  br i1 %i.q, label %bb.b, label %.loopexit30, !llvm.loop !46

.loopexit30:                                      ; preds = %bb.i, %bb.e
  %i.r = phi i32 [ %.pre, %bb.e ], [ %i.n, %bb.i ]
  %.1 = phi i32 [ %.0, %bb.e ], [ %i.j, %bb.i ]
  %i.s = sub i32 %i.c, %i.r                       ; 2 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = zext i32 %i.s to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !22
  %i.z = icmp eq i32 %.1, 1
  br i1 %i.z, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.loopexit30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.aa, align 4, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit30, %bb.j, %bb.h, %bb.g, %bb.f
  %.027 = phi i32 [ -1, %bb.h ], [ 0, %.loopexit30 ], [ -1, %bb.f ], [ -1, %bb.g ], [ 0, %bb.j ], [ -1, %bb.c ]
  ret i32 %.027
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_avail(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  switch i32 %i.c, label %bb.h [
    i32 0, label %bb.b
    i32 -5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34   ; 7 uses
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %.loopexit32, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 6 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !35   ; 6 uses
  %i.l = zext i32 %i.h to i64                     ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  %i.m = ptrtoaddr ptr %i.k to i64
  %i.n = ptrtoaddr ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.h, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.l, 28
  %n.vec = and i64 %i.l, 4294967264               ; 6 uses
  %i.q = getelementptr i8, ptr %i.j, i64 %n.vec
  %i.r = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %index ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep50, align 1, !tbaa !32
  %wide.load51 = load <16 x i8>, ptr %i.u, align 1, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !32
  store <16 x i8> %wide.load51, ptr %i.v, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br i1 %cmp.n, label %.loopexit32.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.l, 4294967292             ; 5 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %n.vec52
  %i.y = getelementptr i8, ptr %i.k, i64 %n.vec52
  %i.z = trunc nuw i64 %n.vec52 to i32
  %i.aa = sub i32 %i.h, %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.j, i64 %index53
  %next.gep55 = getelementptr i8, ptr %i.k, i64 %index53
  %wide.load56 = load <4 x i8>, ptr %next.gep55, align 1, !tbaa !32
  store <4 x i8> %wide.load56, ptr %next.gep54, align 1, !tbaa !32
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %n.vec52, %i.l
  br i1 %cmp.n58, label %.loopexit32.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.ph = phi ptr [ %i.j, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.019.ph = phi ptr [ %i.k, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %i.h, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 4 uses
  %i.ac = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.020.prol = phi ptr [ %i.af, %vec.epilog.scalar.ph.prol ], [ %.020.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.019.prol = phi ptr [ %i.ad, %vec.epilog.scalar.ph.prol ], [ %.019.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.019.prol, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.019.prol, align 1, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %.020.prol, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.020.prol, align 1, !tbaa !32
  %i.ag = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.020.unr = phi ptr [ %.020.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.019.unr = phi ptr [ %.019.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ad, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.ah = icmp ult i32 %i.ac, 7
  br i1 %i.ah, label %.loopexit32.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.020 = phi ptr [ %i.bf, %vec.epilog.scalar.ph ], [ %.020.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.019 = phi ptr [ %i.bd, %vec.epilog.scalar.ph ], [ %.019.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0 = phi i32 [ %i.bg, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.019, i64 1
  %i.aj = load i8, ptr %.019, align 1, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.020, i64 1
  store i8 %i.aj, ptr %.020, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.019, i64 2
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %.020, i64 2
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %.019, i64 3
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %.020, i64 3
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %.019, i64 4
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %.020, i64 4
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %.019, i64 5
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %.020, i64 5
  store i8 %i.av, ptr %i.at, align 1, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %.019, i64 6
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %.020, i64 6
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %.019, i64 7
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %.020, i64 7
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.020, i64 8
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !32
  %i.bg = add i32 %.0, -8                         ; 2 uses
  %.not26.7 = icmp eq i32 %i.bg, 0
  br i1 %.not26.7, label %.loopexit32.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !51

.loopexit32.loopexit:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.g, align 8, !tbaa !34
  br label %.loopexit32

.loopexit32:                                      ; preds = %.loopexit32.loopexit, %bb.c
  %i.bh = phi i32 [ %.pre, %.loopexit32.loopexit ], [ 0, %bb.c ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !29
  %i.bo = sub i32 %i.bn, %i.bh                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.loopexit32
  %.028 = phi i32 [ 0, %.loopexit32 ], [ %i.by, %bb.e ] ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !30
  %i.br = zext i32 %.028 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = sub i32 %i.bo, %.028
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call i64 @read(i32 noundef %i.bq, ptr noundef %i.bs, i64 noundef %i.bu) #9 ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 1
  br i1 %i.bw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = trunc i64 %i.bv to i32
  %i.by = add i32 %.028, %i.bx                    ; 3 uses
  %i.bz = icmp ult i32 %i.by, %i.bo
  br i1 %i.bz, label %bb.d, label %.loopexit, !llvm.loop !1

bb.f:                                             ; preds = %bb.d
  %i.ca = icmp slt i64 %i.bv, 0
  br i1 %i.ca, label %gz_load.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.d, align 8, !tbaa !24
  br label %.loopexit

gz_load.exit:                                     ; preds = %bb.f
  %i.cb = tail call ptr @__errno_location() #10
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !31
  %i.cd = tail call ptr @strerror(i32 noundef %i.cc) #9
  tail call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.cd) #9
  br label %bb.h

.loopexit:                                        ; preds = %bb.e, %bb.g
  %.1.ph = phi i32 [ %.028, %bb.g ], [ %i.by, %bb.e ]
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !34
  %i.cf = add i32 %i.ce, %.1.ph
  store i32 %i.cf, ptr %i.g, align 8, !tbaa !34
  %i.cg = load ptr, ptr %i.bi, align 8, !tbaa !52
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %gz_load.exit, %bb.b, %.loopexit, %bb.a
  %.021 = phi i32 [ -1, %gz_load.exit ], [ -1, %bb.a ], [ 0, %.loopexit ], [ 0, %bb.b ]
  ret i32 %.021
}

declare i32 @zng_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @zng_inflateReset(ptr noundef) local_unnamed_addr #2

declare hidden i32 @gz_buffer_alloc(ptr noundef) local_unnamed_addr #2

declare i32 @zng_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
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
!15 = !{!"zng_stream_s", !11, i64 0, !7, i64 8, !12, i64 16, !11, i64 24, !7, i64 32, !12, i64 40, !11, i64 48, !14, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !7, i64 88, !7, i64 92, !12, i64 96}
!16 = !{!"", !13, i64 0, !7, i64 24, !7, i64 28, !11, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !11, i64 56, !11, i64 64, !7, i64 72, !7, i64 76, !12, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !12, i64 112, !7, i64 120, !7, i64 124, !11, i64 128, !15, i64 136}
!17 = !{!16, !7, i64 24}
!18 = !{!16, !7, i64 124}
!19 = !{!16, !7, i64 120}
!20 = !{!16, !12, i64 112}
!21 = !{!16, !7, i64 0}
!22 = !{!16, !11, i64 8}
!23 = !{!16, !12, i64 16}
!24 = !{!16, !7, i64 88}
!25 = !{!16, !7, i64 144}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!16, !7, i64 92}
!28 = !{!16, !7, i64 76}
!29 = !{!16, !7, i64 40}
!30 = !{!16, !7, i64 28}
!31 = !{!7, !7, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{!16, !11, i64 56}
!34 = !{!15, !7, i64 8}
!35 = !{!15, !11, i64 0}
!36 = !{!16, !7, i64 72}
!37 = !{!15, !7, i64 32}
!38 = !{!15, !11, i64 24}
!39 = distinct !{!39, !26}
!40 = !{!16, !7, i64 168}
!41 = !{!16, !11, i64 160}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = !{!16, !11, i64 32}
!46 = distinct !{!46, !26}
!47 = !{!15, !11, i64 48}
!48 = distinct !{!48, !26, !53, !54}
!49 = distinct !{!49, !26, !53, !54}
!50 = distinct !{!50, !56}
!51 = distinct !{!51, !26, !53}
!52 = !{!16, !11, i64 48}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!"branch_weights", i32 4, i32 28}
!56 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
