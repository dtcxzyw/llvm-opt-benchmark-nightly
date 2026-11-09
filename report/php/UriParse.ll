Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriParse?download=true
inline.NumInlined: 222
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uriParseUriExMmW:bb.a
    i32 85, label %bb.j
    i32 118, label %bb.j
    i32 86, label %bb.j
    i32 119, label %bb.j
    i32 87, label %bb.j
    i32 120, label %bb.j
    i32 88, label %bb.j
    i32 121, label %bb.j
    i32 89, label %bb.j
    i32 122, label %bb.j
    i32 90, label %bb.j
    i32 48, label %bb.j
    i32 49, label %bb.j
    i32 50, label %bb.j
    i32 51, label %bb.j
    i32 52, label %bb.j
    i32 53, label %bb.j
    i32 54, label %bb.j
    i32 55, label %bb.j
    i32 56, label %bb.j
    i32 57, label %bb.j
    i32 37, label %bb.k
    i32 33, label %bb.m
    i32 36, label %bb.m
    i32 38, label %bb.m
    i32 40, label %bb.m
    i32 41, label %bb.m
    i32 42, label %bb.m
    i32 44, label %bb.m
    i32 59, label %bb.m
    i32 64, label %bb.m
    i32 95, label %bb.m
    i32 126, label %bb.m
    i32 61, label %bb.m
    i32 39, label %bb.m
    i32 47, label %bb.n
    i32 58, label %bb.s
  ]

bb.j:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.07190.i.i, i64 4 ; 3 uses
  %.not.i.i = icmp ult ptr %i.y, %2
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.z = tail call fastcc ptr @uriParsePctEncodedW(ptr noundef nonnull %0, ptr noundef %.07190.i.i, ptr noundef nonnull %2, ptr noundef nonnull %.0) ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %uriParseUriReferenceW.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call fastcc ptr @uriParseMustBeSegmentNzNcW(ptr noundef nonnull %0, ptr noundef %i.z, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.m:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.07190.i.i, i64 4
  %i.ad = tail call fastcc ptr @uriParseMustBeSegmentNzNcW(ptr noundef nonnull %0, ptr noundef %i.ac, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.07190.i.i, i64 4 ; 2 uses
  %i.af = tail call fastcc ptr @uriParseSegmentW(ptr noundef nonnull %0, ptr noundef %i.ae, ptr noundef nonnull %2, ptr noundef nonnull %.0) ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %uriParseUriReferenceW.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr %0, align 8, !tbaa !57
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.aj = tail call fastcc i32 @uriPushPathSegmentW(ptr noundef nonnull %0, ptr noundef %i.ai, ptr noundef %.07190.i.i, ptr noundef nonnull %.0)
  %.not78.i.i = icmp eq i32 %i.aj, 0
  %i.ak = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  br i1 %.not78.i.i, label %uriParseUriReferenceW.exit.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.ak, align 8, !tbaa !63
  %i.al = tail call fastcc i32 @uriPushPathSegmentW(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %i.af, ptr noundef nonnull %.0)
  %.not79.i.i = icmp eq i32 %i.al, 0
  br i1 %.not79.i.i, label %uriParseUriReferenceW.exit.thread.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call fastcc ptr @uriParseZeroMoreSlashSegsW(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull %2, ptr noundef nonnull %.0) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %uriParseUriReferenceW.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = tail call fastcc ptr @uriParseUriTailW(ptr noundef nonnull %0, ptr noundef %i.am, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.07190.i.i, i64 4
  %i.aq = tail call fastcc ptr @uriParseHierPartW(ptr noundef nonnull %0, ptr noundef %i.ap, ptr noundef nonnull %2, ptr noundef nonnull %.0) ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.07190.i.i, ptr %i.as, align 8, !tbaa !70
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %uriParseUriReferenceW.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = tail call fastcc ptr @uriParseUriTailW(ptr noundef nonnull %0, ptr noundef %i.aq, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.av = tail call fastcc i32 @uriOnExitSegmentNzNcOrScheme2W(ptr noundef nonnull %0, ptr noundef %.07190.i.i, ptr noundef nonnull %.0)
  %.not80.i.i = icmp eq i32 %i.av, 0
  br i1 %.not80.i.i, label %uriParseUriReferenceW.exit.thread.sink.split.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = tail call fastcc ptr @uriParseUriTailW(ptr noundef nonnull %0, ptr noundef %.07190.i.i, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.w:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.ax = load ptr, ptr %0, align 8, !tbaa !57
  store ptr %1, ptr %i.ax, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = tail call fastcc ptr @uriParseMustBeSegmentNzNcW(ptr noundef nonnull %0, ptr noundef %i.ay, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.x:                                             ; preds = %bb.e
  %i.ba = tail call fastcc ptr @uriParsePctEncodedW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %.0) ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %uriParseUriReferenceW.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = load ptr, ptr %0, align 8, !tbaa !57
  store ptr %1, ptr %i.bc, align 8, !tbaa !63
  %i.bd = tail call fastcc ptr @uriParseMustBeSegmentNzNcW(ptr noundef nonnull %0, ptr noundef %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.z:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = tail call fastcc ptr @uriParsePartHelperTwoW(ptr noundef nonnull %0, ptr noundef %i.be, ptr noundef nonnull %2, ptr noundef nonnull %.0) ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %uriParseUriReferenceW.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = tail call fastcc ptr @uriParseUriTailW(ptr noundef nonnull %0, ptr noundef %i.bf, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

bb.ab:                                            ; preds = %bb.e
  %i.bi = tail call fastcc ptr @uriParseUriTailW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %.0)
  br label %uriParseUriReferenceW.exit

uriParseUriReferenceW.exit:                       ; preds = %uriOnExitSegmentNzNcOrScheme2W.exit.i.i, %bb.l, %bb.m, %bb.r, %bb.t, %bb.v, %bb.w, %bb.y, %bb.aa, %bb.ab
  %.2.i = phi ptr [ %2, %uriOnExitSegmentNzNcOrScheme2W.exit.i.i ], [ %i.bi, %bb.ab ], [ %i.ad, %bb.m ], [ %i.az, %bb.w ], [ %i.ao, %bb.r ], [ %i.bd, %bb.y ], [ %i.bh, %bb.aa ], [ %i.au, %bb.t ], [ %i.ab, %bb.l ], [ %i.aw, %bb.v ] ; 4 uses
  %i.bj = icmp eq ptr %.2.i, null
  br i1 %i.bj, label %uriParseUriReferenceW.exit.thread, label %bb.ae

uriParseUriReferenceW.exit.thread.sink.split.sink.split: ; preds = %bb.u, %bb.p, %._crit_edge.i.i
  %i.bk = load ptr, ptr %0, align 8, !tbaa !57
  br label %uriParseUriReferenceW.exit.thread.sink.split

uriParseUriReferenceW.exit.thread.sink.split:     ; preds = %uriParseUriReferenceW.exit.thread.sink.split.sink.split, %bb.o
  %.sink79 = phi ptr [ %i.ak, %bb.o ], [ %i.bk, %uriParseUriReferenceW.exit.thread.sink.split.sink.split ]
  %i.bl = tail call i32 @uriFreeUriMembersMmW(ptr noundef %.sink79, ptr noundef nonnull %.0) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !71
  store i32 3, ptr %i.g, align 8, !tbaa !72
  br label %uriParseUriReferenceW.exit.thread

uriParseUriReferenceW.exit.thread:                ; preds = %uriParseUriReferenceW.exit.thread.sink.split, %bb.s, %bb.n, %bb.k, %bb.q, %bb.z, %bb.x, %uriParseUriReferenceW.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bp = icmp ugt ptr %i.bo, %2
  br i1 %i.bp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %uriParseUriReferenceW.exit.thread
  store ptr %2, ptr %i.bn, align 8, !tbaa !71
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %uriParseUriReferenceW.exit.thread
  %i.bq = load i32, ptr %i.g, align 8, !tbaa !72
  br label %.thread

bb.ae:                                            ; preds = %uriParseUriReferenceW.exit
  %.not40 = icmp eq ptr %.2.i, %2
  br i1 %.not40, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = icmp ult ptr %.2.i, %2
  %i.bs = load ptr, ptr %0, align 8, !tbaa !57
  %i.bt = tail call i32 @uriFreeUriMembersMmW(ptr noundef %i.bs, ptr noundef nonnull %.0) ; 0 uses
  %.2.i. = select i1 %i.br, ptr %.2.i, ptr %2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2.i., ptr %i.bu, align 8, !tbaa !71
  store i32 1, ptr %i.g, align 8, !tbaa !72
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.ae, %bb.c, %bb.a, %bb.af, %bb.ad
  %.033 = phi i32 [ 2, %bb.a ], [ %i.bq, %bb.ad ], [ 1, %bb.af ], [ 10, %bb.c ], [ 0, %bb.ae ], [ 0, %bb.d ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriParseUriW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #7
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.e = tail call fastcc i32 @uriParseUriExMmW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @uriParseSingleUriW(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.UriParserStateStructW, align 8 ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  br label %uriParseSingleUriExW.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriParseSingleUriExW.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  store ptr %0, ptr %3, align 8, !tbaa !57
  %i.d = call fastcc i32 @uriParseUriExMmW(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull @defaultMemoryManager) ; 2 uses
  %.not24.i.i = icmp eq i32 %i.d, 0
  br i1 %.not24.i.i, label %uriParseSingleUriExW.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not25.i.i = icmp eq ptr %2, null
  br i1 %.not25.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  store ptr %i.f, ptr %2, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %0, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
  br label %uriParseSingleUriExW.exit

uriParseSingleUriExW.exit:                        ; preds = %.thread, %bb.b, %bb.c, %bb.f
  %.018.i.i = phi i32 [ 2, %bb.b ], [ 0, %bb.c ], [ %i.d, %bb.f ], [ 2, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.018.i.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriParseSingleUriExW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.UriParserStateStructW, align 8 ; 5 uses
  %i.a = icmp eq ptr %2, null
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #7
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.e = icmp eq ptr %0, null
  %.not = xor i1 %i.b, true
  %or.cond.i = or i1 %i.e, %.not
  %i.f = icmp eq ptr %.0, null
  %or.cond3.i = or i1 %or.cond.i, %i.f
  br i1 %or.cond3.i, label %uriParseSingleUriExMmW.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %4, align 8, !tbaa !57
  %i.g = call fastcc i32 @uriParseUriExMmW(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %.0, ptr noundef nonnull @defaultMemoryManager) ; 2 uses
  %.not24.i = icmp eq i32 %i.g, 0
  br i1 %.not24.i, label %uriParseSingleUriExMmW.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not25.i = icmp eq ptr %3, null
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  store ptr %i.i, ptr %3, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %0, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
  br label %uriParseSingleUriExMmW.exit

uriParseSingleUriExMmW.exit:                      ; preds = %bb.c, %bb.d, %bb.g
  %.018.i = phi i32 [ 2, %bb.c ], [ 0, %bb.d ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.018.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriParseSingleUriExMmW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.UriParserStateStructW, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %4, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %4) #6
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %4, %bb.c ], [ @defaultMemoryManager, %bb.b ] ; 2 uses
  store ptr %0, ptr %5, align 8, !tbaa !57
  %i.f = call fastcc i32 @uriParseUriExMmW(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %.0) ; 2 uses
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not25 = icmp eq ptr %3, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  store ptr %i.h, ptr %3, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %0, ptr noundef nonnull %.0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.c, %bb.a
  %.018 = phi i32 [ 2, %bb.a ], [ 10, %bb.c ], [ %i.f, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriFreeUriMembersMmW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.d, label %bb.am

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %1, %bb.c ], [ @defaultMemoryManager, %bb.b ] ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !94
  %.not88 = icmp eq i32 %i.e, 0
  br i1 %.not88, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %.not89 = icmp eq ptr %i.f, null
  br i1 %.not89, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not90 = icmp eq ptr %i.f, %i.h
  br i1 %.not90, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  tail call void %i.j(ptr noundef nonnull %.0, ptr noundef nonnull %i.f) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 3 uses
  %.not91 = icmp eq ptr %i.l, null
  br i1 %.not91, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %.not92 = icmp eq ptr %i.l, %i.n
  br i1 %.not92, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  tail call void %i.p(ptr noundef nonnull %.0, ptr noundef nonnull %i.l) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 3 uses
  %.not93 = icmp eq ptr %i.r, null
  br i1 %.not93, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %.not94 = icmp eq ptr %i.r, %i.u
  br i1 %.not94, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  tail call void %i.w(ptr noundef nonnull %.0, ptr noundef nonnull %i.r) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78   ; 3 uses
  %.not95 = icmp eq ptr %i.y, null
  br i1 %.not95, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79
  %.not96 = icmp eq ptr %i.y, %i.aa
  br i1 %.not96, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  tail call void %i.ac(ptr noundef nonnull %.0, ptr noundef nonnull %i.y) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %.not97 = icmp eq ptr %i.ae, null
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  tail call void %i.ag(ptr noundef nonnull %.0, ptr noundef nonnull %i.ae) #6
  store ptr null, ptr %i.ad, align 8, !tbaa !80
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %.not98 = icmp eq ptr %i.ai, null
  br i1 %.not98, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  tail call void %i.ak(ptr noundef nonnull %.0, ptr noundef nonnull %i.ai) #6
  store ptr null, ptr %i.ah, align 8, !tbaa !81
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.al = load i32, ptr %i.d, align 4, !tbaa !94
  %.not99 = icmp eq i32 %i.al, 0
  br i1 %.not99, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !82 ; 3 uses
  %.not100 = icmp eq ptr %i.an, null
  br i1 %.not100, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83
  %.not101 = icmp eq ptr %i.an, %i.ap
  br i1 %.not101, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37
  tail call void %i.ar(ptr noundef nonnull %.0, ptr noundef nonnull %i.an) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.y
  %i.as = tail call i32 @uriFreeUriPathW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #6 ; 0 uses
  %i.at = load i32, ptr %i.d, align 4, !tbaa !94
  %.not102 = icmp eq i32 %i.at, 0
  br i1 %.not102, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !84 ; 3 uses
  %.not103 = icmp eq ptr %i.av, null
  br i1 %.not103, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !85
  %.not104 = icmp eq ptr %i.av, %i.ax
  br i1 %.not104, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37
  tail call void %i.az(ptr noundef nonnull %.0, ptr noundef nonnull %i.av) #6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86 ; 3 uses
  %.not105 = icmp eq ptr %i.bb, null
  br i1 %.not105, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !87
  %.not106 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not106, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37
  tail call void %i.bf(ptr noundef nonnull %.0, ptr noundef nonnull %i.bb) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.ad, %bb.al, %bb.ai, %bb.c, %bb.a
  %.076 = phi i32 [ 2, %bb.a ], [ 10, %bb.c ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ad ]
  ret i32 %.076
}

; Function Attrs: nounwind uwtable
define hidden void @uriFreeUriMembersW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriFreeUriMembersMmW(ptr noundef %0, ptr noundef null) ; 0 uses
  ret void
}

declare i32 @uriFreeUriPathW(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @uri_TESTING_ONLY_ParseIpSixW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructW, align 8      ; 6 uses
  %2 = alloca %struct.UriParserStateStructW, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #7
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a ; 2 uses
  call void @uriResetUriW(ptr noundef nonnull %1) #6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !57
  %i.d = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !52
  %i.e = call ptr %i.d(ptr noundef nonnull @defaultMemoryManager, i64 noundef 16) #6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.e, ptr %i.f, align 8, !tbaa !81
  %i.g = call fastcc ptr @uriParseIPv6address2W(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull @defaultMemoryManager)
  %i.h = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %1, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
  %i.i = icmp eq ptr %i.g, %i.b
  %i.j = zext i1 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %i.j
}

declare void @uriResetUriW(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uriParseIPv6address2W(ptr nofree noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 16 uses
  %i.b = alloca [14 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %.preheader361, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !57
  %i.g = tail call i32 @uriFreeUriMembersMmW(ptr noundef %i.f, ptr noundef %3) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !72
  br label %.thread352

.preheader:                                       ; preds = %.thread319, %bb.ae
  %.1279 = phi ptr [ %i.dt, %bb.ae ], [ %i.kd, %.thread319 ] ; 16 uses
  %.1254 = phi i32 [ %.2255, %bb.ae ], [ 0, %.thread319 ] ; 13 uses
  %.1248 = phi i32 [ %.2249, %bb.ae ], [ 1, %.thread319 ] ; 5 uses
  %i.j = load i32, ptr %.1279, align 4, !tbaa !58 ; 2 uses
  switch i32 %i.j, label %bb.ad [
    i32 48, label %bb.c
    i32 49, label %bb.c
    i32 50, label %bb.c
    i32 51, label %bb.c
    i32 52, label %bb.c
    i32 53, label %bb.c
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 56, label %bb.c
    i32 57, label %bb.c
    i32 46, label %bb.f
    i32 93, label %bb.r
  ]

bb.c:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.k = icmp eq i32 %.1254, 4
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !57
  %i.m = call i32 @uriFreeUriMembersMmW(ptr noundef %i.l, ptr noundef %3) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1279, ptr %i.n, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !72
  br label %.thread352

bb.e:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i32 %i.j to i8
  %i.q = add nsw i8 %i.p, -48
  %i.r = add nsw i32 %.1254, 1
  %i.s = sext i32 %.1254 to i64
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s
  store i8 %i.q, ptr %i.t, align 1, !tbaa !17
  br label %bb.ae

bb.f:                                             ; preds = %.preheader
  %i.u = icmp eq i32 %.1248, 4
  %i.v = and i32 %.1254, -5
  %i.w = icmp eq i32 %i.v, 0
  %or.cond5 = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8, !tbaa !57
  %i.y = call i32 @uriFreeUriMembersMmW(ptr noundef %i.x, ptr noundef %3) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1279, ptr %i.z, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !72
  br label %.thread352

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp sgt i32 %.1254, 1
  %i.ac = load i8, ptr %i.a, align 1              ; 3 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = icmp eq i8 %i.ac, 0
  %or.cond9 = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %or.cond9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = zext nneg i32 %.1254 to i64
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %.1279, i64 %i.ag
  %i.ai = load ptr, ptr %0, align 8, !tbaa !57
  %i.aj = call i32 @uriFreeUriMembersMmW(ptr noundef %i.ai, ptr noundef %3) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.al, align 8, !tbaa !72
  br label %.thread352

bb.j:                                             ; preds = %bb.h
  %i.am = icmp eq i32 %.1254, 3
  br i1 %i.am, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.an = mul nuw nsw i32 %i.ad, 100
  %i.ao = load i8, ptr %i.d, align 1, !tbaa !17   ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.ap, 10
  %i.ar = add nuw nsw i32 %i.aq, %i.an
  %i.as = load i8, ptr %i.e, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at
  %i.av = icmp samesign ugt i32 %i.au, 255
  br i1 %i.av, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp ugt i8 %i.ac, 2
  %i.ax = load ptr, ptr %0, align 8, !tbaa !57
  %i.ay = call i32 @uriFreeUriMembersMmW(ptr noundef %i.ax, ptr noundef %3) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds i8, ptr %.1279, i64 -12
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bb, align 8, !tbaa !72
  br label %.thread352

bb.n:                                             ; preds = %bb.l
  %i.bc = icmp ugt i8 %i.ao, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds i8, ptr %.1279, i64 -8
  store ptr %i.be, ptr %i.az, align 8, !tbaa !71
  store i32 1, ptr %i.bd, align 8, !tbaa !72
  br label %.thread352

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds i8, ptr %.1279, i64 -4
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !71
  store i32 1, ptr %i.bd, align 8, !tbaa !72
  br label %.thread352

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.bg = call zeroext i8 @uriGetOctetValue(ptr noundef nonnull %i.a, i32 noundef %.1254) #6
  %i.bh = load ptr, ptr %0, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81
  %i.bk = sext i32 %.1248 to i64
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 12
  store i8 %i.bg, ptr %i.bm, align 1, !tbaa !17
  %i.bn = add nsw i32 %.1248, 1
  br label %bb.ae

bb.r:                                             ; preds = %.preheader
  %i.bo = icmp ne i32 %.1248, 3
  %i.bp = and i32 %.1254, -5
  %i.bq = icmp eq i32 %i.bp, 0
  %or.cond13 = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond13, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %0, align 8, !tbaa !57
  %i.bs = call i32 @uriFreeUriMembersMmW(ptr noundef %i.br, ptr noundef %3) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1279, ptr %i.bt, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bu, align 8, !tbaa !72
  br label %.thread352

bb.t:                                             ; preds = %bb.r
  %i.bv = icmp sgt i32 %.1254, 1
  %i.bw = load i8, ptr %i.a, align 1              ; 3 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = icmp eq i8 %i.bw, 0
  %or.cond17 = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bz = zext nneg i32 %.1254 to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %.1279, i64 %i.ca
  %i.cc = load ptr, ptr %0, align 8, !tbaa !57
  %i.cd = call i32 @uriFreeUriMembersMmW(ptr noundef %i.cc, ptr noundef %3) ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@uriParseIPv6address2W:bb.a
  br label %.thread352

bb.ay:                                            ; preds = %bb.aw
  %i.hf = icmp sgt i32 %.3256, 1
  %i.hg = load i8, ptr %i.a, align 1              ; 3 uses
  %i.hh = zext i8 %i.hg to i32
  %i.hi = icmp eq i8 %i.hg, 0
  %or.cond29 = select i1 %i.hf, i1 %i.hi, i1 false
  br i1 %or.cond29, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hj = zext nneg i32 %.3256 to i64
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds [4 x i8], ptr %.2280, i64 %i.hk
  %i.hm = load ptr, ptr %0, align 8, !tbaa !57
  %i.hn = call i32 @uriFreeUriMembersMmW(ptr noundef %i.hm, ptr noundef %3) ; 0 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !71
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.hp, align 8, !tbaa !72
  br label %.thread352

bb.ba:                                            ; preds = %bb.ay
  %i.hq = icmp eq i32 %.3256, 3
  br i1 %i.hq, label %bb.bb, label %.thread319

bb.bb:                                            ; preds = %bb.ba
  %i.hr = mul nuw nsw i32 %i.hh, 100
  %i.hs = load i8, ptr %i.d, align 1, !tbaa !17   ; 2 uses
  %i.ht = zext i8 %i.hs to i32
  %i.hu = mul nuw nsw i32 %i.ht, 10
  %i.hv = add nuw nsw i32 %i.hu, %i.hr
  %i.hw = load i8, ptr %i.e, align 1, !tbaa !17
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nuw nsw i32 %i.hv, %i.hx
  %i.hz = icmp samesign ugt i32 %i.hy, 255
  br i1 %i.hz, label %bb.bc, label %.thread319

bb.bc:                                            ; preds = %bb.bb
  %i.ia = icmp ugt i8 %i.hg, 2
  %i.ib = load ptr, ptr %0, align 8, !tbaa !57
  %i.ic = call i32 @uriFreeUriMembersMmW(ptr noundef %i.ib, ptr noundef %3) ; 0 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.ia, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ie = getelementptr inbounds i8, ptr %.2280, i64 -12
  store ptr %i.ie, ptr %i.id, align 8, !tbaa !71
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.if, align 8, !tbaa !72
  br label %.thread352

bb.be:                                            ; preds = %bb.bc
  %i.ig = icmp ugt i8 %i.hs, 5
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ig, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ii = getelementptr inbounds i8, ptr %.2280, i64 -8
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !71
  store i32 1, ptr %i.ih, align 8, !tbaa !72
  br label %.thread352

bb.bg:                                            ; preds = %bb.be
  %i.ij = getelementptr inbounds i8, ptr %.2280, i64 -4
  store ptr %i.ij, ptr %i.id, align 8, !tbaa !71
  store i32 1, ptr %i.ih, align 8, !tbaa !72
  br label %.thread352

.loopexit643:                                     ; preds = %.preheader361
  %.not291 = icmp eq i32 %.1266, 0
  br i1 %.not291, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.loopexit643
  %i.ik = icmp eq i32 %.1261, 7
  %i.il = icmp sgt i32 %.3256, 0
  %or.cond31 = select i1 %i.ik, i1 %i.il, i1 false
  %i.im = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  br i1 %or.cond31, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.in = call i32 @uriFreeUriMembersMmW(ptr noundef %i.im, ptr noundef %3) ; 0 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2280, ptr %i.io, align 8, !tbaa !71
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ip, align 8, !tbaa !72
  br label %.thread352

bb.bj:                                            ; preds = %.loopexit643
  %i.iq = icmp sgt i32 %.3256, 0
  br i1 %i.iq, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.ir = icmp sgt i32 %.1261, 6
  br i1 %i.ir, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.is = load ptr, ptr %0, align 8, !tbaa !57
  %i.it = call i32 @uriFreeUriMembersMmW(ptr noundef %i.is, ptr noundef %3) ; 0 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2280, ptr %i.iu, align 8, !tbaa !71
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.iv, align 8, !tbaa !72
  br label %.thread352

bb.bm:                                            ; preds = %bb.bk
  %i.iw = shl nsw i32 %.1245, 1
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.b, i64 %i.ix
  call void @uriWriteQuadToDoubleByte(ptr noundef nonnull %i.a, i32 noundef %.3256, ptr noundef nonnull %i.iy) #6
  %i.iz = add nsw i32 %.1245, 1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 56
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !81
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 14
  call void @uriWriteQuadToDoubleByte(ptr noundef nonnull %i.a, i32 noundef %.3256, ptr noundef nonnull %i.jc) #6
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bj
  %.4 = phi i32 [ %i.iz, %bb.bm ], [ %.1245, %bb.bn ], [ %.1245, %bb.bj ]
  %i.jd = load ptr, ptr %0, align 8, !tbaa !57
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !81
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nsw i32 %.4, 1
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = sub nsw i64 0, %i.ji
  %i.jk = getelementptr inbounds i8, ptr %i.jg, i64 %i.jj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jk, ptr nonnull align 1 %i.b, i64 %i.ji, i1 false)
  %i.jl = load ptr, ptr %0, align 8, !tbaa !57
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  store ptr %.2280, ptr %i.jm, align 8, !tbaa !79
  %i.jn = getelementptr inbounds nuw i8, ptr %.2280, i64 4
  br label %.thread352

.loopexit642:                                     ; preds = %.preheader361
  %i.jo = load ptr, ptr %0, align 8, !tbaa !57
  %i.jp = call i32 @uriFreeUriMembersMmW(ptr noundef %i.jo, ptr noundef %3) ; 0 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2280, ptr %i.jq, align 8, !tbaa !71
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.jr, align 8, !tbaa !72
  br label %.thread352

.sink.split:                                      ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink789 = phi i8 [ -55, %bb.ah ], [ -87, %bb.ag ], [ -48, %bb.ai ]
  %.1241.ph = phi i32 [ 1, %bb.ah ], [ 1, %bb.ag ], [ %.0240, %bb.ai ]
  %i.js = trunc nuw nsw i32 %i.dy to i8
  %i.jt = add nsw i8 %.sink789, %i.js
  %i.ju = sext i32 %.3256 to i64
  %i.jv = getelementptr inbounds i8, ptr %i.a, i64 %i.ju
  store i8 %i.jt, ptr %i.jv, align 1, !tbaa !17
  %i.jw = add nsw i32 %.3256, 1
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %bb.au, %bb.at
  %.5283 = phi ptr [ %i.fm, %bb.at ], [ %.2280, %bb.au ], [ %.2280, %.sink.split ]
  %.4269 = phi i32 [ 1, %bb.at ], [ %.1266, %bb.au ], [ %.1266, %.sink.split ]
  %.3263 = phi i32 [ %.2262, %bb.at ], [ %.2262, %bb.au ], [ %.1261, %.sink.split ]
  %.5258 = phi i32 [ %.4257, %bb.at ], [ %.4257, %bb.au ], [ %i.jw, %.sink.split ]
  %.5 = phi i32 [ %.3, %bb.at ], [ %.3, %bb.au ], [ %.1245, %.sink.split ]
  %.1241 = phi i32 [ 0, %bb.at ], [ 0, %bb.au ], [ %.1241.ph, %.sink.split ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.5283, i64 4 ; 2 uses
  %.not296 = icmp ult ptr %i.jx, %2
  br i1 %.not296, label %.preheader361, label %.loopexit, !llvm.loop !95

.thread319:                                       ; preds = %bb.ba, %bb.bb
  %i.jy = call zeroext i8 @uriGetOctetValue(ptr noundef nonnull %i.a, i32 noundef %.3256) #6
  %i.jz = load ptr, ptr %0, align 8, !tbaa !57
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !81
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i8 %i.jy, ptr %i.kc, align 1, !tbaa !17
  %i.kd = getelementptr inbounds nuw i8, ptr %.2280, i64 4 ; 2 uses
  %.not296329 = icmp ult ptr %i.kd, %2
  br i1 %.not296329, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.bp, %.thread319
  %i.ke = load ptr, ptr %0, align 8, !tbaa !57
  %i.kf = call i32 @uriFreeUriMembersMmW(ptr noundef %i.ke, ptr noundef %3) ; 0 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.kg, align 8, !tbaa !71
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.kh, align 8, !tbaa !72
  br label %.thread352

.thread352:                                       ; preds = %.loopexit649, %.loopexit648, %.loopexit647, %.loopexit646, %.loopexit645, %.loopexit644, %bb.bg, %bb.bf, %bb.bo, %bb.bl, %bb.bi, %bb.az, %bb.ax, %.loopexit650, %.loopexit651, %bb.bd, %.loopexit, %.loopexit652, %.loopexit642, %bb.y, %bb.ab, %bb.aa, %bb.m, %bb.p, %bb.o, %bb.af, %bb.ad, %bb.ac, %bb.u, %bb.s, %bb.i, %bb.g, %bb.d, %bb.b
  %.7 = phi ptr [ null, %bb.b ], [ null, %bb.ad ], [ null, %bb.d ], [ null, %bb.af ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.y ], [ null, %bb.s ], [ null, %bb.u ], [ null, %bb.m ], [ %i.do, %bb.ac ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.bg ], [ null, %bb.bf ], [ %i.jn, %bb.bo ], [ null, %bb.bl ], [ null, %bb.bi ], [ null, %bb.az ], [ null, %bb.ax ], [ null, %.loopexit642 ], [ null, %.loopexit650 ], [ null, %.loopexit651 ], [ null, %bb.bd ], [ null, %.loopexit ], [ null, %.loopexit652 ], [ null, %.loopexit644 ], [ null, %.loopexit645 ], [ null, %.loopexit646 ], [ null, %.loopexit647 ], [ null, %.loopexit648 ], [ null, %.loopexit649 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @uri_TESTING_ONLY_ParseIpFourW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #7
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = call i32 @uriParseIpFourAddressW(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.c) #6
  %i.e = icmp eq i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.f
}

declare i32 @uriParseIpFourAddressW(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @uriParseMustBeSegmentNzNcA(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not74 = icmp ult ptr %1, %2
  br i1 %.not74, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.058.lcssa = phi ptr [ %1, %bb.a ], [ %.058.be, %.backedge ] ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = tail call ptr %i.d(ptr noundef %3, i64 noundef 1, i64 noundef 32) #6, !inline_history !88 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %uriPushPathSegmentA.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = icmp eq ptr %i.b, %.058.lcssa            ; 2 uses
  %i.h = load ptr, ptr @uriSafeToPointToA, align 8 ; 2 uses
  %spec.select.i = select i1 %i.g, ptr %i.h, ptr %i.b
  %spec.select27.i = select i1 %i.g, ptr %i.h, ptr %.058.lcssa
  store ptr %spec.select.i, ptr %i.e, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %spec.select27.i, ptr %i.i, align 8, !tbaa !29
  %i.j = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.k, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store ptr %i.e, ptr %i.n, align 8, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.e, ptr %i.q, align 8, !tbaa !32
  store ptr %i.e, ptr %i.o, align 8, !tbaa !31
  br label %bb.e

uriPushPathSegmentA.exit:                         ; preds = %._crit_edge
  %i.r = load ptr, ptr %0, align 8, !tbaa !16
  %i.s = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.r, ptr noundef nonnull %3) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !35
  br label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.j, align 8, !tbaa !24
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.05875 = phi ptr [ %.058.be, %.backedge ], [ %1, %bb.a ] ; 7 uses
  %i.v = load i8, ptr %.05875, align 1, !tbaa !17
  switch i8 %i.v, label %bb.o [
    i8 37, label %bb.f
    i8 64, label %bb.g
    i8 33, label %bb.g
    i8 36, label %bb.g
    i8 38, label %bb.g
    i8 39, label %bb.g
    i8 40, label %bb.g
    i8 41, label %bb.g
    i8 42, label %bb.g
    i8 43, label %bb.g
    i8 44, label %bb.g
    i8 59, label %bb.g
    i8 61, label %bb.g
    i8 65, label %bb.g
    i8 66, label %bb.g
    i8 67, label %bb.g
    i8 68, label %bb.g
    i8 69, label %bb.g
    i8 70, label %bb.g
    i8 97, label %bb.g
    i8 98, label %bb.g
    i8 99, label %bb.g
    i8 100, label %bb.g
    i8 101, label %bb.g
    i8 102, label %bb.g
    i8 103, label %bb.g
    i8 71, label %bb.g
    i8 104, label %bb.g
    i8 72, label %bb.g
    i8 105, label %bb.g
    i8 73, label %bb.g
    i8 106, label %bb.g
    i8 74, label %bb.g
    i8 107, label %bb.g
    i8 75, label %bb.g
    i8 108, label %bb.g
    i8 76, label %bb.g
    i8 109, label %bb.g
    i8 77, label %bb.g
    i8 110, label %bb.g
    i8 78, label %bb.g
    i8 111, label %bb.g
    i8 79, label %bb.g
    i8 112, label %bb.g
    i8 80, label %bb.g
    i8 113, label %bb.g
    i8 81, label %bb.g
    i8 114, label %bb.g
    i8 82, label %bb.g
    i8 115, label %bb.g
    i8 83, label %bb.g
    i8 116, label %bb.g
    i8 84, label %bb.g
    i8 117, label %bb.g
    i8 85, label %bb.g
    i8 118, label %bb.g
    i8 86, label %bb.g
    i8 119, label %bb.g
    i8 87, label %bb.g
    i8 120, label %bb.g
    i8 88, label %bb.g
    i8 121, label %bb.g
    i8 89, label %bb.g
    i8 122, label %bb.g
    i8 90, label %bb.g
    i8 48, label %bb.g
    i8 49, label %bb.g
    i8 50, label %bb.g
    i8 51, label %bb.g
    i8 52, label %bb.g
    i8 53, label %bb.g
    i8 54, label %bb.g
    i8 55, label %bb.g
    i8 56, label %bb.g
    i8 57, label %bb.g
    i8 45, label %bb.g
    i8 46, label %bb.g
    i8 95, label %bb.g
    i8 126, label %bb.g
    i8 47, label %bb.h
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.w = tail call fastcc ptr @uriParsePctEncodedA(ptr noundef %0, ptr noundef %.05875, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit, label %.backedge

bb.g:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.05875, i64 1
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  %.058.be = phi ptr [ %i.w, %bb.f ], [ %i.y, %bb.g ] ; 3 uses
  %.not = icmp ult ptr %.058.be, %2
  br i1 %.not, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = tail call fastcc i32 @uriPushPathSegmentA(ptr noundef %0, ptr noundef %i.aa, ptr noundef %.05875, ptr noundef %3)
  %.not65 = icmp eq i32 %i.ab, 0
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  br i1 %.not65, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.ac, ptr noundef %3) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !35
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.ac, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %.05875, i64 1 ; 2 uses
  %i.ah = tail call fastcc ptr @uriParseSegmentA(ptr noundef %0, ptr noundef %i.ag, ptr noundef %2, ptr noundef %3) ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call fastcc i32 @uriPushPathSegmentA(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.ah, ptr noundef %3)
  %.not66 = icmp eq i32 %i.aj, 0
  br i1 %.not66, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %0, align 8, !tbaa !16
  %i.al = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.ak, ptr noundef %3) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.an, align 8, !tbaa !35
end_hunk_1
