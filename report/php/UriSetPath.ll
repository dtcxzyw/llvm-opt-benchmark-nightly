Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriSetPath?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0_@uriIsWellFormedPathW:bb.a
    i32 81, label %bb.i
    i32 114, label %bb.i
    i32 82, label %bb.i
    i32 115, label %bb.i
    i32 83, label %bb.i
    i32 116, label %bb.i
    i32 84, label %bb.i
    i32 117, label %bb.i
    i32 85, label %bb.i
    i32 118, label %bb.i
    i32 86, label %bb.i
    i32 119, label %bb.i
    i32 87, label %bb.i
    i32 120, label %bb.i
    i32 88, label %bb.i
    i32 121, label %bb.i
    i32 89, label %bb.i
    i32 122, label %bb.i
    i32 90, label %bb.i
    i32 48, label %bb.i
    i32 49, label %bb.i
    i32 50, label %bb.i
    i32 51, label %bb.i
    i32 52, label %bb.i
    i32 53, label %bb.i
    i32 54, label %bb.i
    i32 55, label %bb.i
    i32 56, label %bb.i
    i32 57, label %bb.i
    i32 45, label %bb.i
    i32 46, label %bb.i
    i32 95, label %bb.i
    i32 126, label %bb.i
    i32 33, label %bb.i
    i32 36, label %bb.i
    i32 38, label %bb.i
    i32 39, label %bb.i
    i32 40, label %bb.i
    i32 41, label %bb.i
    i32 42, label %bb.i
    i32 43, label %bb.i
    i32 44, label %bb.i
    i32 59, label %bb.i
    i32 61, label %bb.i
    i32 58, label %bb.i
    i32 64, label %bb.i
    i32 37, label %bb.f
    i32 47, label %bb.i
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.h = ptrtoint ptr %.01620 to i64
  %i.i = sub i64 %i.e, %i.h
  %i.j = icmp slt i64 %i.i, 9
  br i1 %i.j, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  switch i32 %i.l, label %.loopexit [
    i32 48, label %bb.h
    i32 49, label %bb.h
    i32 50, label %bb.h
    i32 51, label %bb.h
    i32 52, label %bb.h
    i32 53, label %bb.h
    i32 54, label %bb.h
    i32 55, label %bb.h
    i32 56, label %bb.h
    i32 57, label %bb.h
    i32 97, label %bb.h
    i32 98, label %bb.h
    i32 99, label %bb.h
    i32 100, label %bb.h
    i32 101, label %bb.h
    i32 102, label %bb.h
    i32 65, label %bb.h
    i32 66, label %bb.h
    i32 67, label %bb.h
    i32 68, label %bb.h
    i32 69, label %bb.h
    i32 70, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.01620, i64 8 ; 23 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20
  switch i32 %i.n, label %.loopexit [
    i32 48, label %bb.i
    i32 49, label %bb.i
    i32 50, label %bb.i
    i32 51, label %bb.i
    i32 52, label %bb.i
    i32 53, label %bb.i
    i32 54, label %bb.i
    i32 55, label %bb.i
    i32 56, label %bb.i
    i32 57, label %bb.i
    i32 97, label %bb.i
    i32 98, label %bb.i
    i32 99, label %bb.i
    i32 100, label %bb.i
    i32 101, label %bb.i
    i32 102, label %bb.i
    i32 65, label %bb.i
    i32 66, label %bb.i
    i32 67, label %bb.i
    i32 68, label %bb.i
    i32 69, label %bb.i
    i32 70, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.1 = phi ptr [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %.01620, %.lr.ph ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ], [ %i.m, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.p = icmp ult ptr %i.o, %1
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.h, %.lr.ph, %bb.i, %bb.e, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %.lr.ph ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriSetPathMmW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.UriUriStructW, align 8      ; 7 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %uriInternalSetPathW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %i.c = icmp ne ptr %2, null
  %.not = xor i1 %i.b, %i.c
  br i1 %.not, label %bb.c, label %uriInternalSetPathW.exit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %3) #5
  %.not32 = icmp eq i32 %i.e, 1
  br i1 %.not32, label %bb.e, label %uriInternalSetPathW.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %3, %bb.d ], [ @defaultMemoryManager, %bb.c ] ; 18 uses
  br i1 %i.b, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @uriHasHostW(ptr noundef nonnull %0) #5
  %i.g = tail call i32 @uriIsWellFormedPathW(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %i.f)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %uriInternalSetPathW.exit, label %.thread

bb.g:                                             ; preds = %bb.e
  %i.i = tail call i32 @uriFreeUriPathW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #5 ; 2 uses
  %.not34 = icmp eq i32 %i.i, 0
  br i1 %.not34, label %bb.h, label %uriInternalSetPathW.exit

.thread:                                          ; preds = %bb.f
  %i.j = tail call i32 @uriFreeUriPathW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #5 ; 2 uses
  %.not3436 = icmp eq i32 %i.j, 0
  br i1 %.not3436, label %bb.i, label %uriInternalSetPathW.exit

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.k, align 8, !tbaa !26
  br label %uriInternalSetPathW.exit

bb.i:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @uriMakeOwnerMmW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #5 ; 2 uses
  %.not35 = icmp eq i32 %i.p, 0
  br i1 %.not35, label %bb.k, label %uriInternalSetPathW.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = tail call i32 @uriHasHostW(ptr noundef nonnull %0) #5
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.t = icmp eq ptr %1, %2
  br i1 %i.t, label %uriInternalSetPathW.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.050.i = phi ptr [ %i.s, %bb.l ], [ %1, %bb.m ] ; 2 uses
  %i.u = ptrtoint ptr %2 to i64
  %i.v = ptrtoint ptr %.050.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %5 = ashr exact i64 %i.w, 2                     ; 2 uses
  %6 = icmp ugt i64 %5, -5
  br i1 %6, label %uriInternalSetPathW.exit, label %7

7:                                                ; preds = %bb.n
  %8 = add nsw i64 %5, 4                          ; 2 uses
  %9 = icmp ugt i64 %8, 4611686018427387903
  br i1 %9, label %uriInternalSetPathW.exit, label %bb.o

bb.o:                                             ; preds = %7
  %i.x = load ptr, ptr %.0, align 8, !tbaa !18
  %10 = shl nuw i64 %8, 2
  %i.y = tail call ptr %i.x(ptr noundef nonnull %.0, i64 noundef %10) #5, !inline_history !44 ; 8 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %uriInternalSetPathW.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) @.str.1, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr nonnull align 4 %.050.i, i64 %i.w, i1 false)
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 12     ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.ad = call i32 @uriParseSingleUriExMmW(ptr noundef nonnull %4, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ac, ptr noundef null, ptr noundef nonnull %.0) #5 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  call void %i.af(ptr noundef nonnull %.0, ptr noundef nonnull %i.y) #5, !inline_history !44
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ag = call i32 @uriMakeOwnerMmW(ptr noundef nonnull %4, ptr noundef nonnull %.0) #5 ; 2 uses
  %.not56.i = icmp eq i32 %i.ag, 0
  br i1 %.not56.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %4, ptr noundef nonnull %.0) #5 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  call void %i.aj(ptr noundef nonnull %.0, ptr noundef nonnull %i.y) #5, !inline_history !44
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !46
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !46
  store i32 0, ptr %i.l, align 8, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.an = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %4, ptr noundef nonnull %.0) #5 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  call void %i.ap(ptr noundef nonnull %.0, ptr noundef nonnull %i.y) #5, !inline_history !44
  call fastcc void @uriTransformEmptyLeadPathSegmentsW(ptr noundef nonnull %0, ptr noundef nonnull %.0)
  %i.aq = call i32 @uriFixPathNoSchemeW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #5
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = call i32 @uriEnsureThatPathIsNotMistakenForHostW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #5
  %i.at = icmp eq i32 %i.as, 0
  %..i = select i1 %i.at, i32 3, i32 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %.1.i = phi i32 [ %i.ad, %bb.q ], [ %i.ag, %bb.s ], [ 3, %bb.t ], [ %..i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %uriInternalSetPathW.exit

uriInternalSetPathW.exit:                         ; preds = %bb.v, %bb.o, %7, %bb.n, %bb.m, %bb.h, %.thread, %bb.g, %bb.j, %bb.f, %bb.d, %bb.a, %bb.b
  %.1 = phi i32 [ 2, %bb.a ], [ 10, %bb.d ], [ 1, %bb.f ], [ 2, %bb.b ], [ %i.j, %.thread ], [ %i.i, %bb.g ], [ 0, %bb.h ], [ %i.p, %bb.j ], [ 0, %bb.m ], [ 3, %bb.n ], [ 3, %7 ], [ %.1.i, %bb.v ], [ 3, %bb.o ]
  ret i32 %.1
}

declare i32 @uriHasHostW(ptr noundef) local_unnamed_addr #2

declare i32 @uriFreeUriPathW(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uriMakeOwnerMmW(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @uriSetPathW(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @uriSetPathMmW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @uriParseSingleUriExMmA(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uriFreeUriMembersMmA(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uriFixPathNoSchemeA(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uriEnsureThatPathIsNotMistakenForHostA(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uriParseSingleUriExMmW(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uriFreeUriMembersMmW(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uriTransformEmptyLeadPathSegmentsW(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @uriHasHostW(ptr noundef nonnull %0) #5
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  store ptr %i.j, ptr %i.c, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  tail call void %i.l(ptr noundef %1, ptr noundef nonnull %i.d) #5, !inline_history !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.m, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

declare i32 @uriFixPathNoSchemeW(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uriEnsureThatPathIsNotMistakenForHostW(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS12UriIp4Struct", !14, i64 0}
!16 = !{!"p1 _ZTS12UriIp6Struct", !14, i64 0}
!17 = !{!"UriMemoryManagerStruct", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!18 = !{!17, !14, i64 0}
!19 = !{!17, !14, i64 32}
!20 = !{!9, !9, i64 0}
!21 = !{!"p1 int", !14, i64 0}
!22 = !{!"UriTextRangeStructW", !21, i64 0, !21, i64 8}
!23 = !{!"UriHostDataStructW", !15, i64 0, !16, i64 8, !22, i64 16}
!24 = !{!"p1 _ZTS21UriPathSegmentStructW", !14, i64 0}
!25 = !{!"UriUriStructW", !22, i64 0, !22, i64 16, !22, i64 32, !23, i64 48, !22, i64 80, !24, i64 96, !24, i64 104, !22, i64 112, !22, i64 128, !9, i64 144, !9, i64 148, !14, i64 152}
!26 = !{!25, !9, i64 144}
!27 = distinct !{!27, !13}
!28 = distinct !{null}
!29 = distinct !{null, null, null}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"UriTextRangeStructA", !30, i64 0, !30, i64 8}
!32 = !{!"UriHostDataStructA", !15, i64 0, !16, i64 8, !31, i64 16}
!33 = !{!"p1 _ZTS21UriPathSegmentStructA", !14, i64 0}
!34 = !{!"UriUriStructA", !31, i64 0, !31, i64 16, !31, i64 32, !32, i64 48, !31, i64 80, !33, i64 96, !33, i64 104, !31, i64 112, !31, i64 128, !9, i64 144, !9, i64 148, !14, i64 152}
!35 = !{!34, !9, i64 144}
!36 = !{!34, !9, i64 148}
!37 = !{!33, !33, i64 0}
!38 = !{!34, !33, i64 96}
!39 = !{!"UriPathSegmentStructA", !31, i64 0, !33, i64 16, !14, i64 24}
!40 = !{!39, !30, i64 0}
!41 = !{!39, !30, i64 8}
!42 = !{!39, !33, i64 16}
!43 = distinct !{!43, !13}
!44 = distinct !{null}
!45 = !{!25, !9, i64 148}
!46 = !{!24, !24, i64 0}
!47 = distinct !{null}
!48 = !{!25, !24, i64 96}
!49 = !{!"UriPathSegmentStructW", !22, i64 0, !24, i64 16, !14, i64 24}
!50 = !{!49, !21, i64 0}
!51 = !{!49, !21, i64 8}
!52 = !{!49, !24, i64 16}
end_hunk_0
