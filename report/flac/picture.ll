Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/picture?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@grabbag__picture_from_specification:bb.a

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !12
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread.thread.sink.split, label %thread-pre-split

bb.q:                                             ; preds = %bb.l
  %i.ap = call fastcc ptr @read_file(ptr noundef %4, ptr noundef %i.d) ; 2 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !11
  br label %bb.r

thread-pre-split:                                 ; preds = %bb.p
  %.pr = load ptr, ptr %5, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %bb.q
  %.pr69.pr = phi ptr [ %.pr, %thread-pre-split ], [ %i.ap, %bb.q ]
  %i.aq = icmp eq ptr %.pr69.pr, null
  br i1 %i.aq, label %bb.s, label %.thread.thread

bb.s:                                             ; preds = %bb.r
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !12
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.t, label %.thread.thread77

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(10) @.str.2) #12
  %.not63 = icmp eq i32 %i.au, 0
  br i1 %.not63, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(4) @.str.1) #12
  %.not64 = icmp eq i32 %i.av, 0
  br i1 %.not64, label %bb.v, label %.thread.thread.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !12
  %.not65 = icmp eq i32 %i.ax, 32
  br i1 %.not65, label %bb.w, label %.thread.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %.not66 = icmp eq i32 %i.az, 32
  br i1 %.not66, label %.thread.thread77, label %.thread.thread.sink.split

.thread.thread.sink.split:                        ; preds = %bb.w, %bb.v, %bb.u, %bb.n, %bb.o, %bb.p, %bb.m
  %.str.3.sink = phi ptr [ @.str.6, %bb.n ], [ @.str.3, %bb.m ], [ @.str.6, %bb.p ], [ @.str.6, %bb.o ], [ @.str.12, %bb.u ], [ @.str.12, %bb.v ], [ @.str.12, %bb.w ]
  store ptr %.str.3.sink, ptr %5, align 8, !tbaa !11
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread.thread.sink.split, %bb.r
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.d) #11
  br label %.thread.thread77

.thread.thread77:                                 ; preds = %bb.w, %bb.s, %.thread.thread, %bb.a, %bb.h, %bb.e, %bb.c
  %.054 = phi ptr [ %i.d, %bb.e ], [ null, %bb.c ], [ null, %bb.a ], [ %i.d, %bb.h ], [ null, %.thread.thread ], [ %i.d, %bb.s ], [ %i.d, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.054
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i64 @grabbag__file_get_filesize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: alwaysinline nobuiltin nounwind sspstrong uwtable
declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @local__extract_mime_type_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = icmp ugt i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = icmp ne i64 %i.f, 727905341920923785
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %i.b, 5
  br i1 %i.j, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.k = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.e, %bb.b ] ; 5 uses
  %i.l = load i32, ptr %i.k, align 1
  %i.m = xor i32 %i.l, 944130375
  %i.n = getelementptr i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 24887
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.v = load i32, ptr %i.k, align 1
  %i.w = xor i32 %i.v, 944130375
  %i.x = getelementptr i8, ptr %i.k, i64 4
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = xor i32 %i.z, 24889
  %i.ab = or i32 %i.w, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.sink.split, label %.thread10

bb.e:                                             ; preds = %bb.c
  %i.af = icmp samesign ugt i32 %i.b, 1
  br i1 %i.af, label %..thread10_crit_edge, label %bb.f

..thread10_crit_edge:                             ; preds = %bb.e
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre15 = load ptr, ptr %.phi.trans.insert14, align 8, !tbaa !12
  br label %.thread10

.thread10:                                        ; preds = %..thread10_crit_edge, %bb.d
  %i.ag = phi ptr [ %.pre15, %..thread10_crit_edge ], [ %i.k, %bb.d ]
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = icmp ne i16 %i.ah, -9985
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %.thread10, %.thread, %bb.d, %bb.b
  %.str.22.sink = phi ptr [ @.str.20, %.thread ], [ @.str.2, %bb.b ], [ @.str.20, %bb.d ], [ @.str.22, %.thread10 ]
  %i.al = tail call i32 @FLAC__metadata_object_picture_set_mime_type(ptr noundef nonnull %0, ptr noundef nonnull %.str.22.sink, i32 noundef 1) #11
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %.thread10
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %.thread10 ], [ %i.al, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @local__extract_resolution_color_info_(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 3 uses
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(10) @.str.2) #12
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.d, 8
  br i1 %i.i, label %.thread182, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 1
  %i.k = icmp ne i64 %i.j, 727905341920923785
  %i.l = zext i1 %i.k to i32
  %.not168 = icmp eq i32 %i.l, 0
  br i1 %.not168, label %bb.d, label %.thread182

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.d, -8                         ; 2 uses
  %i.n = icmp ugt i32 %i.m, 12
  br i1 %i.n, label %.lr.ph220, label %.thread182

.lr.ph220:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph220, %bb.p
  %.0125219 = phi i32 [ 0, %.lr.ph220 ], [ %.3128, %bb.p ]
  %.0129218 = phi i32 [ %i.m, %.lr.ph220 ], [ %.3132, %bb.p ] ; 2 uses
  %.0133217 = phi ptr [ %i.o, %.lr.ph220 ], [ %.3136, %bb.p ] ; 16 uses
  %i.s = load i32, ptr %.0133217, align 1         ; 2 uses
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)  ; 3 uses
  %i.u = add i32 %i.t, 12                         ; 3 uses
  %.not169 = icmp ugt i32 %i.t, -13
  %i.v = icmp ugt i32 %i.u, %.0129218
  %or.cond171 = or i1 %.not169, %i.v
  br i1 %or.cond171, label %.thread182, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0133217, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 1
  %i.y = icmp ne i32 %i.x, 1380206665
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = icmp eq i32 %i.s, 218103808
  %or.cond = and i1 %i.ab, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0133217, i64 17
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.0133217, i64 8
  %1 = load i8, ptr %i.ae, align 1, !tbaa !12
  %2 = zext i8 %1 to i32
  %3 = shl nuw i32 %2, 24
  %4 = getelementptr inbounds nuw i8, ptr %.0133217, i64 9
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr inbounds nuw i8, ptr %.0133217, i64 10
  %10 = load i8, ptr %9, align 1, !tbaa !12
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or disjoint i32 %8, %12
  %14 = getelementptr inbounds nuw i8, ptr %.0133217, i64 11
  %15 = load i8, ptr %14, align 1, !tbaa !12
  %16 = zext i8 %15 to i32
  %17 = or disjoint i32 %13, %16
  store i32 %17, ptr %i.p, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %.0133217, i64 12
  %18 = load i8, ptr %i.af, align 1, !tbaa !12
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = getelementptr inbounds nuw i8, ptr %.0133217, i64 13
  %22 = load i8, ptr %21, align 1, !tbaa !12
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = or disjoint i32 %24, %20
  %26 = getelementptr inbounds nuw i8, ptr %.0133217, i64 14
  %27 = load i8, ptr %26, align 1, !tbaa !12
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %25, %29
  %31 = getelementptr inbounds nuw i8, ptr %.0133217, i64 15
  %32 = load i8, ptr %31, align 1, !tbaa !12
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %30, %33
  store i32 %34, ptr %i.q, align 4, !tbaa !16
  switch i8 %i.ad, label %.thread182.sink.split [
    i8 3, label %bb.h
    i8 0, label %bb.i
    i8 2, label %bb.j
    i8 4, label %bb.k
    i8 6, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  store i32 24, ptr %i.r, align 8, !tbaa !17
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.0133217, i64 16
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.ai = zext i8 %i.ah to i32
  br label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.0133217, i64 16
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 3
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.0133217, i64 16
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 1
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.0133217, i64 16
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 2
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.l, %bb.i, %bb.j, %bb.k
  %.sink = phi i32 [ %i.aq, %bb.k ], [ %i.am, %bb.j ], [ %i.ai, %bb.i ], [ %i.au, %bb.l ]
  store i32 %.sink, ptr %i.r, align 8, !tbaa !17
  br label %.thread182.sink.split

bb.m:                                             ; preds = %bb.f
  %.not170 = icmp eq i32 %.0125219, 0
  br i1 %.not170, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i32, ptr %i.w, align 1
  %i.aw = icmp ne i32 %i.av, 1163152464
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = udiv i32 %i.t, 3
  br label %.thread182.sink.split

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.h
  %.3128 = phi i32 [ 1, %bb.h ], [ 1, %bb.n ], [ 0, %bb.m ]
  %.3132 = sub nuw i32 %.0129218, %i.u            ; 2 uses
  %.pn = zext i32 %i.u to i64
  %.3136 = getelementptr inbounds nuw i8, ptr %.0133217, i64 %.pn
  %i.ba = icmp ugt i32 %.3132, 12
  br i1 %i.ba, label %bb.e, label %.thread182

bb.q:                                             ; preds = %bb.a
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(11) @.str.22) #12
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.bd = icmp ult i32 %i.d, 2
  br i1 %i.bd, label %.thread182, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i16, ptr %i.b, align 1
  %i.bf = icmp ne i16 %i.be, -9985
  %i.bg = zext i1 %i.bf to i32
  %.not162 = icmp eq i32 %i.bg, 0
  br i1 %.not162, label %bb.t, label %.thread182

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.bi = add i32 %i.d, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.ac, %bb.t
  %.4137 = phi ptr [ %i.bh, %bb.t ], [ %.7140, %bb.ac ]
  %.4 = phi i32 [ %i.bi, %bb.t ], [ %.7, %bb.ac ] ; 2 uses
  %cond174211 = icmp eq i32 %.4, 0
  br i1 %cond174211, label %.thread182, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.5213 = phi i32 [ %i.bm, %bb.v ], [ %.4, %bb.u ] ; 2 uses
  %.5138212 = phi ptr [ %i.bl, %bb.v ], [ %.4137, %bb.u ] ; 3 uses
  %i.bj = load i8, ptr %.5138212, align 1, !tbaa !12
  %i.bk = icmp eq i8 %i.bj, -1
  br i1 %i.bk, label %.preheader.preheader, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.5138212, i64 1
  %i.bm = add i32 %.5213, -1                      ; 2 uses
  %cond174 = icmp eq i32 %i.bm, 0
  br i1 %cond174, label %.thread182, label %.lr.ph, !llvm.loop !31

.preheaderthread-pre-split:                       ; preds = %.preheader.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %.6139215291, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.bn, align 1, !tbaa !12   ; 3 uses
  %.not165 = icmp eq i8 %.pr, -1
  br i1 %.not165, label %.preheader.preheader, label %bb.w

.preheader.preheader:                             ; preds = %.lr.ph, %.preheaderthread-pre-split
  %.6139215291 = phi ptr [ %i.bn, %.preheaderthread-pre-split ], [ %.5138212, %.lr.ph ] ; 11 uses
  %.6216290 = phi i32 [ %i.bo, %.preheaderthread-pre-split ], [ %.5213, %.lr.ph ] ; 4 uses
  %i.bo = add i32 %.6216290, -1                   ; 2 uses
  %cond175 = icmp eq i32 %i.bo, 0
  br i1 %cond175, label %.thread182, label %.preheaderthread-pre-split, !llvm.loop !32

bb.w:                                             ; preds = %.preheaderthread-pre-split
  %.off = add i8 %.pr, 39
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.thread182, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = zext i8 %.pr to i32
  %i.bq = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.bp, i64 noundef 13) #12
  %.not166 = icmp eq ptr %i.bq, null
  %i.br = icmp ult i32 %.6216290, 4               ; 2 uses
  br i1 %.not166, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.br, label %.thread182, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = add i32 %.6216290, -2
  %i.bt = getelementptr inbounds nuw i8, ptr %.6139215291, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !12
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.6139215291, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !12
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, 8
  %i.cc = icmp ult i32 %i.bs, %i.ca
  %or.cond172 = or i1 %i.cb, %i.cc
  br i1 %or.cond172, label %.thread182, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %.6139215291, i64 7
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.6139215291, i64 8
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !12
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %.6139215291, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.6139215291, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !12
  %i.cs = zext i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.6139215291, i64 4
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !12
  %i.cx = zext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.6139215291, i64 9
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !12
  %i.da = zext i8 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !17
  br label %.thread182.sink.split

bb.ab:                                            ; preds = %bb.x
  br i1 %i.br, label %.thread182, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = add i32 %.6216290, -2                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.6139215291, i64 2 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = getelementptr inbounds nuw i8, ptr %.6139215291, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !12
  %i.dk = zext i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.dh, %i.dk            ; 4 uses
  %i.dm = icmp samesign ugt i32 %i.dl, 1
  %i.dn = icmp uge i32 %i.dd, %i.dl
  %or.cond173.not = and i1 %i.dm, %i.dn           ; 3 uses
  %i.do = zext nneg i32 %i.dl to i64
  %.7140.idx = select i1 %or.cond173.not, i64 %i.do, i64 0
  %.7140 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.7140.idx
  %i.dp = select i1 %or.cond173.not, i32 %i.dl, i32 0
  %.7 = sub nuw i32 %i.dd, %i.dp
  br i1 %or.cond173.not, label %bb.u, label %.thread182

bb.ad:                                            ; preds = %bb.q
  %i.dq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(10) @.str.20) #12
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = icmp ult i32 %i.d, 14
  %or.cond185 = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond185, label %.thread182, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i32, ptr %i.b, align 1
  %i.du = xor i32 %i.dt, 944130375
  %i.dv = getelementptr i8, ptr %i.b, i64 4
  %i.dw = load i16, ptr %i.dv, align 1
  %i.dx = zext i16 %i.dw to i32
  %i.dy = xor i32 %i.dx, 24887
  %i.dz = or i32 %i.du, %i.dy
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %.not = icmp eq i32 %i.eb, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = load i32, ptr %i.b, align 1
  %i.ed = xor i32 %i.ec, 944130375
  %i.ee = getelementptr i8, ptr %i.b, i64 4
  %i.ef = load i16, ptr %i.ee, align 1
  %i.eg = zext i16 %i.ef to i32
  %i.eh = xor i32 %i.eg, 24889
  %i.ei = or i32 %i.ed, %i.eh
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %.not160 = icmp eq i32 %i.ek, 0
  br i1 %.not160, label %bb.ag, label %.thread182

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.em = load i16, ptr %i.el, align 1
  %i.en = zext i16 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eq = load i16, ptr %i.ep, align 1
  %i.er = zext i16 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.er, ptr %i.es, align 4, !tbaa !16
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 24, ptr %i.et, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !12
  %i.ew = and i8 %i.ev, 7
  %narrow = add nuw nsw i8 %i.ew, 1
  %i.ex = zext nneg i8 %narrow to i32
  %i.ey = shl nuw nsw i32 1, %i.ex
  br label %.thread182.sink.split

.thread182.sink.split:                            ; preds = %bb.g, %.loopexit.sink.split, %bb.ag, %bb.aa, %bb.o
  %.sink268 = phi i32 [ %i.ey, %bb.ag ], [ %i.az, %bb.o ], [ 0, %bb.aa ], [ 0, %.loopexit.sink.split ], [ 0, %bb.g ]
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink268, ptr %i.ez, align 4, !tbaa !18
  br label %.thread182

.thread182:                                       ; preds = %bb.w, %bb.ab, %bb.ac, %bb.u, %bb.v, %.preheader.preheader, %bb.p, %bb.e, %.thread182.sink.split, %bb.d, %bb.c, %bb.b, %bb.ad, %bb.af, %bb.z, %bb.y, %bb.r, %bb.s
  %.8 = phi i32 [ 0, %.preheader.preheader ], [ 0, %bb.ad ], [ 0, %bb.d ], [ 0, %bb.r ], [ 0, %bb.v ], [ 0, %bb.c ], [ 0, %bb.af ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.b ], [ 1, %.thread182.sink.split ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.e ], [ 0, %bb.u ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.w ]
  ret i32 %.8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias readonly captures(none), i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nobuiltin nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"", !6, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !10, i64 48}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!13, !6, i64 24}
!16 = !{!13, !6, i64 28}
!17 = !{!13, !6, i64 32}
!18 = !{!13, !6, i64 36}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = !{!13, !6, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!"FLAC__StreamMetadata", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 16}
!25 = !{!24, !6, i64 8}
!26 = !{!"PictureResolution", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!27 = !{!26, !6, i64 0}
!28 = !{!26, !6, i64 4}
!29 = !{!26, !6, i64 8}
!30 = !{!26, !6, i64 12}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = !{!13, !10, i64 48}
!34 = !{!13, !6, i64 40}
!35 = !{!13, !10, i64 8}
end_hunk_0
