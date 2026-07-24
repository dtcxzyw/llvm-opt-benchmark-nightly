inline.NumInlined: 232
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UriMemoryManagerStruct = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UriParserStateStructA = type { ptr, i32, ptr, ptr }
%struct.UriUriStructA = type { %struct.UriTextRangeStructA, %struct.UriTextRangeStructA, %struct.UriTextRangeStructA, %struct.UriHostDataStructA, %struct.UriTextRangeStructA, ptr, ptr, %struct.UriTextRangeStructA, %struct.UriTextRangeStructA, i32, i32, ptr }
%struct.UriHostDataStructA = type { ptr, ptr, %struct.UriTextRangeStructA }
%struct.UriTextRangeStructA = type { ptr, ptr }
%struct.UriParserStateStructW = type { ptr, i32, ptr, ptr }
%struct.UriUriStructW = type { %struct.UriTextRangeStructW, %struct.UriTextRangeStructW, %struct.UriTextRangeStructW, %struct.UriHostDataStructW, %struct.UriTextRangeStructW, ptr, ptr, %struct.UriTextRangeStructW, %struct.UriTextRangeStructW, i32, i32, ptr }
%struct.UriHostDataStructW = type { ptr, ptr, %struct.UriTextRangeStructW }
%struct.UriTextRangeStructW = type { ptr, ptr }

@defaultMemoryManager = external global %struct.UriMemoryManagerStruct, align 8
@uriSafeToPointToA = external local_unnamed_addr constant ptr, align 8
@uriSafeToPointToW = external local_unnamed_addr constant ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @uriParseUriExA(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriParseUriExMmA(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @uriParseUriExMmA(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %3) #6
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.b, %bb.c
  %.033 = phi ptr [ %3, %bb.c ], [ @defaultMemoryManager, %bb.b ] ; 22 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  tail call void @uriResetUriA(ptr noundef %i.f) #6
  %.not.i = icmp ult ptr %1, %2
  br i1 %.not.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %1, align 1, !tbaa !12
  switch i8 %i.h, label %bb.aa [
    i8 65, label %bb.f
    i8 66, label %bb.f
    i8 67, label %bb.f
    i8 68, label %bb.f
    i8 69, label %bb.f
    i8 70, label %bb.f
    i8 97, label %bb.f
    i8 98, label %bb.f
    i8 99, label %bb.f
    i8 100, label %bb.f
    i8 101, label %bb.f
    i8 102, label %bb.f
    i8 103, label %bb.f
    i8 71, label %bb.f
    i8 104, label %bb.f
    i8 72, label %bb.f
    i8 105, label %bb.f
    i8 73, label %bb.f
    i8 106, label %bb.f
    i8 74, label %bb.f
    i8 107, label %bb.f
    i8 75, label %bb.f
    i8 108, label %bb.f
    i8 76, label %bb.f
    i8 109, label %bb.f
    i8 77, label %bb.f
    i8 110, label %bb.f
    i8 78, label %bb.f
    i8 111, label %bb.f
    i8 79, label %bb.f
    i8 112, label %bb.f
    i8 80, label %bb.f
    i8 113, label %bb.f
    i8 81, label %bb.f
    i8 114, label %bb.f
    i8 82, label %bb.f
    i8 115, label %bb.f
    i8 83, label %bb.f
    i8 116, label %bb.f
    i8 84, label %bb.f
    i8 117, label %bb.f
    i8 85, label %bb.f
    i8 118, label %bb.f
    i8 86, label %bb.f
    i8 119, label %bb.f
    i8 87, label %bb.f
    i8 120, label %bb.f
    i8 88, label %bb.f
    i8 121, label %bb.f
    i8 89, label %bb.f
    i8 122, label %bb.f
    i8 90, label %bb.f
    i8 48, label %bb.v
    i8 49, label %bb.v
    i8 50, label %bb.v
    i8 51, label %bb.v
    i8 52, label %bb.v
    i8 53, label %bb.v
    i8 54, label %bb.v
    i8 55, label %bb.v
    i8 56, label %bb.v
    i8 57, label %bb.v
    i8 33, label %bb.v
    i8 36, label %bb.v
    i8 38, label %bb.v
    i8 40, label %bb.v
    i8 41, label %bb.v
    i8 42, label %bb.v
    i8 44, label %bb.v
    i8 59, label %bb.v
    i8 39, label %bb.v
    i8 43, label %bb.v
    i8 61, label %bb.v
    i8 46, label %bb.v
    i8 95, label %bb.v
    i8 126, label %bb.v
    i8 45, label %bb.v
    i8 64, label %bb.v
    i8 37, label %bb.w
    i8 47, label %bb.y
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  store ptr %1, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %.not96.i.i = icmp ult ptr %i.j, %2
  br i1 %.not96.i.i, label %.lr.ph.preheader.i.i, label %tailrecurse._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %4 = ptrtoaddr ptr %2 to i64
  %5 = ptrtoaddr ptr %i.j to i64
  %i.k = sub i64 %4, %5
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.k
  br label %.lr.ph.i.i

tailrecurse._crit_edge.i.i:                       ; preds = %tailrecurse.i.i, %bb.f
  %.tr88.lcssa.i.i = phi ptr [ %i.j, %bb.f ], [ %scevgep.i.i, %tailrecurse.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = tail call ptr %i.m(ptr noundef nonnull %.033, i64 noundef 1, i64 noundef 32) #6, !inline_history !22 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %uriParseUriReferenceA.exit.thread.sink.split.sink.split, label %bb.g

bb.g:                                             ; preds = %tailrecurse._crit_edge.i.i
  %i.p = icmp eq ptr %1, %.tr88.lcssa.i.i         ; 2 uses
  %i.q = load ptr, ptr @uriSafeToPointToA, align 8 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.p, ptr %i.q, ptr %1
  %spec.select27.i.i.i.i = select i1 %i.p, ptr %i.q, ptr %.tr88.lcssa.i.i
  store ptr %spec.select.i.i.i.i, ptr %i.n, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %spec.select27.i.i.i.i, ptr %i.r, align 8, !tbaa !25
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.t, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store ptr %i.n, ptr %i.w, align 8, !tbaa !27
  br label %uriOnExitSegmentNzNcOrScheme2A.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.n, ptr %i.z, align 8, !tbaa !28
  store ptr %i.n, ptr %i.x, align 8, !tbaa !27
  br label %uriOnExitSegmentNzNcOrScheme2A.exit.i.i

uriOnExitSegmentNzNcOrScheme2A.exit.i.i:          ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.s, align 8, !tbaa !13
  br label %uriParseUriReferenceA.exit

.lr.ph.i.i:                                       ; preds = %tailrecurse.i.i, %.lr.ph.preheader.i.i
  %.tr8897.i.i = phi ptr [ %i.ab, %tailrecurse.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 10 uses
  %i.aa = load i8, ptr %.tr8897.i.i, align 1, !tbaa !12
  switch i8 %i.aa, label %bb.t [
    i8 46, label %tailrecurse.i.i
    i8 43, label %tailrecurse.i.i
    i8 45, label %tailrecurse.i.i
    i8 65, label %tailrecurse.i.i
    i8 66, label %tailrecurse.i.i
    i8 67, label %tailrecurse.i.i
    i8 68, label %tailrecurse.i.i
    i8 69, label %tailrecurse.i.i
    i8 70, label %tailrecurse.i.i
    i8 97, label %tailrecurse.i.i
    i8 98, label %tailrecurse.i.i
    i8 99, label %tailrecurse.i.i
    i8 100, label %tailrecurse.i.i
    i8 101, label %tailrecurse.i.i
    i8 102, label %tailrecurse.i.i
    i8 103, label %tailrecurse.i.i
    i8 71, label %tailrecurse.i.i
    i8 104, label %tailrecurse.i.i
    i8 72, label %tailrecurse.i.i
    i8 105, label %tailrecurse.i.i
    i8 73, label %tailrecurse.i.i
    i8 106, label %tailrecurse.i.i
    i8 74, label %tailrecurse.i.i
    i8 107, label %tailrecurse.i.i
    i8 75, label %tailrecurse.i.i
    i8 108, label %tailrecurse.i.i
    i8 76, label %tailrecurse.i.i
    i8 109, label %tailrecurse.i.i
    i8 77, label %tailrecurse.i.i
    i8 110, label %tailrecurse.i.i
    i8 78, label %tailrecurse.i.i
    i8 111, label %tailrecurse.i.i
    i8 79, label %tailrecurse.i.i
    i8 112, label %tailrecurse.i.i
    i8 80, label %tailrecurse.i.i
    i8 113, label %tailrecurse.i.i
    i8 81, label %tailrecurse.i.i
    i8 114, label %tailrecurse.i.i
    i8 82, label %tailrecurse.i.i
    i8 115, label %tailrecurse.i.i
    i8 83, label %tailrecurse.i.i
    i8 116, label %tailrecurse.i.i
    i8 84, label %tailrecurse.i.i
    i8 117, label %tailrecurse.i.i
    i8 85, label %tailrecurse.i.i
    i8 118, label %tailrecurse.i.i
    i8 86, label %tailrecurse.i.i
    i8 119, label %tailrecurse.i.i
    i8 87, label %tailrecurse.i.i
    i8 120, label %tailrecurse.i.i
    i8 88, label %tailrecurse.i.i
    i8 121, label %tailrecurse.i.i
    i8 89, label %tailrecurse.i.i
    i8 122, label %tailrecurse.i.i
    i8 90, label %tailrecurse.i.i
    i8 48, label %tailrecurse.i.i
    i8 49, label %tailrecurse.i.i
    i8 50, label %tailrecurse.i.i
    i8 51, label %tailrecurse.i.i
    i8 52, label %tailrecurse.i.i
    i8 53, label %tailrecurse.i.i
    i8 54, label %tailrecurse.i.i
    i8 55, label %tailrecurse.i.i
    i8 56, label %tailrecurse.i.i
    i8 57, label %tailrecurse.i.i
    i8 37, label %bb.j
    i8 33, label %bb.l
    i8 36, label %bb.l
    i8 38, label %bb.l
    i8 40, label %bb.l
    i8 41, label %bb.l
    i8 42, label %bb.l
    i8 44, label %bb.l
    i8 59, label %bb.l
    i8 64, label %bb.l
    i8 95, label %bb.l
    i8 126, label %bb.l
    i8 61, label %bb.l
    i8 39, label %bb.l
    i8 47, label %bb.m
    i8 58, label %bb.r
  ]

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr8897.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ab, %2
  br i1 %exitcond.not.i.i, label %tailrecurse._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ac = tail call fastcc ptr @uriParsePctEncodedA(ptr noundef nonnull %0, ptr noundef %.tr8897.i.i, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %uriParseUriReferenceA.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call fastcc ptr @uriParseMustBeSegmentNzNcA(ptr noundef nonnull %0, ptr noundef %i.ac, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29
  br label %uriParseUriReferenceA.exit

bb.l:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.tr8897.i.i, i64 1
  %i.ag = tail call fastcc ptr @uriParseMustBeSegmentNzNcA(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29
  br label %uriParseUriReferenceA.exit

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr8897.i.i, i64 1 ; 2 uses
  %i.ai = tail call fastcc ptr @uriParseSegmentA(ptr noundef nonnull %0, ptr noundef %i.ah, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %uriParseUriReferenceA.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %0, align 8, !tbaa !7
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.am = tail call fastcc i32 @uriPushPathSegmentA(ptr noundef nonnull %0, ptr noundef %i.al, ptr noundef %.tr8897.i.i, ptr noundef nonnull %.033), !inline_history !29
  %.not82.i.i = icmp eq i32 %i.am, 0
  %i.an = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  br i1 %.not82.i.i, label %uriParseUriReferenceA.exit.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.an, align 8, !tbaa !13
  %i.ao = tail call fastcc i32 @uriPushPathSegmentA(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef %i.ai, ptr noundef nonnull %.033), !inline_history !29
  %.not83.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not83.i.i, label %uriParseUriReferenceA.exit.thread.sink.split.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call fastcc ptr @uriParseZeroMoreSlashSegsA(ptr noundef nonnull %0, ptr noundef %i.ai, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %uriParseUriReferenceA.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call fastcc ptr @uriParseUriTailA(ptr noundef nonnull %0, ptr noundef %i.ap, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29
  br label %uriParseUriReferenceA.exit

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.tr8897.i.i, i64 1
  %i.at = tail call fastcc ptr @uriParseHierPartA(ptr noundef nonnull %0, ptr noundef %i.as, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.tr8897.i.i, ptr %i.av, align 8, !tbaa !30
  %i.aw = icmp eq ptr %i.at, null
  br i1 %i.aw, label %uriParseUriReferenceA.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call fastcc ptr @uriParseUriTailA(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29
  br label %uriParseUriReferenceA.exit

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ay = tail call fastcc i32 @uriOnExitSegmentNzNcOrScheme2A(ptr noundef nonnull %0, ptr noundef %.tr8897.i.i, ptr noundef nonnull %.033), !inline_history !29
  %.not84.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not84.i.i, label %uriParseUriReferenceA.exit.thread.sink.split.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = tail call fastcc ptr @uriParseUriTailA(ptr noundef nonnull %0, ptr noundef %.tr8897.i.i, ptr noundef nonnull %2, ptr noundef nonnull %.033), !inline_history !29
  br label %uriParseUriReferenceA.exit
end_hunk_0
begin_hunk_1_@uriFreeUriMembersMmA:bb.a
  tail call void %i.ah(ptr noundef nonnull %.094, ptr noundef nonnull %.pre) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t, %.thread
  %.sink = phi ptr [ %i.r, %.thread ], [ %i.y, %bb.t ], [ %i.y, %bb.s ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.p, %bb.q, %bb.r, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %.not117 = icmp eq ptr %i.aj, null
  br i1 %.not117, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  tail call void %i.al(ptr noundef nonnull %.094, ptr noundef nonnull %i.aj) #6
  store ptr null, ptr %i.ai, align 8, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %.not118 = icmp eq ptr %i.an, null
  br i1 %.not118, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  tail call void %i.ap(ptr noundef nonnull %.094, ptr noundef nonnull %i.an) #6
  store ptr null, ptr %i.am, align 8, !tbaa !42
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !34
  %.not119 = icmp eq i32 %i.aq, 0
  br i1 %.not119, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 3 uses
  %.not120 = icmp eq ptr %i.as, null
  br i1 %.not120, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %.not121 = icmp eq ptr %i.as, %i.au
  br i1 %.not121, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  tail call void %i.aw(ptr noundef nonnull %.094, ptr noundef nonnull %i.as) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not122 = icmp eq ptr %i.ay, null
  br i1 %.not122, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.az = getelementptr inbounds nuw i8, ptr %.094, i64 32 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.ai
  %.093131 = phi ptr [ %i.ay, %.preheader ], [ %i.bb, %bb.ai ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.093131, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28 ; 2 uses
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !34
  %.not129 = icmp eq i32 %i.bc, 0
  br i1 %.not129, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = load ptr, ptr %.093131, align 8, !tbaa !23 ; 3 uses
  %.not130 = icmp eq ptr %i.bd, null
  br i1 %.not130, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %.093131, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void %i.bh(ptr noundef nonnull %.094, ptr noundef nonnull %i.bd) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void %i.bi(ptr noundef nonnull %.094, ptr noundef nonnull %.093131) #6
  %.not123 = icmp eq ptr %i.bb, null
  br i1 %.not123, label %bb.aj, label %bb.ae, !llvm.loop !46

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !34
  %.not124 = icmp eq i32 %i.bj, 0
  br i1 %.not124, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48 ; 3 uses
  %.not125 = icmp eq ptr %i.bl, null
  br i1 %.not125, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49
  %.not126 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not126, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bo = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35
  tail call void %i.bp(ptr noundef nonnull %.094, ptr noundef nonnull %i.bl) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50 ; 3 uses
  %.not127 = icmp eq ptr %i.br, null
  br i1 %.not127, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51
  %.not128 = icmp eq ptr %i.br, %i.bt
  br i1 %.not128, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bu = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  tail call void %i.bv(ptr noundef nonnull %.094, ptr noundef nonnull %i.br) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.ak, %bb.as, %bb.ap, %bb.c, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 10, %bb.c ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.ak ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @uriFreeUriMembersA(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriFreeUriMembersMmA(ptr noundef %0, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uri_TESTING_ONLY_ParseIpSixA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructA, align 8      ; 6 uses
  %2 = alloca %struct.UriParserStateStructA, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  call void @uriResetUriA(ptr noundef nonnull %1) #6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.d = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !52
  %i.e = call ptr %i.d(ptr noundef nonnull @defaultMemoryManager, i64 noundef 16) #6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.e, ptr %i.f, align 8, !tbaa !42
  %i.g = call fastcc ptr @uriParseIPv6address2A(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull @defaultMemoryManager)
  %i.h = call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %1, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
  %i.i = icmp eq ptr %i.g, %i.b
  %i.j = zext i1 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %i.j
}

declare void @uriResetUriA(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uriParseIPv6address2A(ptr nofree noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64
  %i.a = alloca [4 x i8], align 1                 ; 16 uses
  %i.b = alloca [14 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %.preheader381, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.e, ptr noundef %3) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !32
  br label %.thread372

.preheader:                                       ; preds = %.thread339
  %scevgep = getelementptr i8, ptr %.2297, i64 %4
  %i.i = sub i64 0, %.2297.lcssa706717
  %scevgep718 = getelementptr i8, ptr %scevgep, i64 %i.i
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.aj
  %.1296 = phi ptr [ %i.em, %bb.aj ], [ %i.km, %.preheader ] ; 18 uses
  %.1278 = phi i32 [ %.2279, %bb.aj ], [ 0, %.preheader ] ; 17 uses
  %.1272 = phi i32 [ %.2273, %bb.aj ], [ 1, %.preheader ] ; 5 uses
  %i.j = load i8, ptr %.1296, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.j, label %bb.ai [
    i8 48, label %bb.d
    i8 49, label %bb.d
    i8 50, label %bb.d
    i8 51, label %bb.d
    i8 52, label %bb.d
    i8 53, label %bb.d
    i8 54, label %bb.d
    i8 55, label %bb.d
    i8 56, label %bb.d
    i8 57, label %bb.d
    i8 46, label %bb.g
    i8 93, label %bb.u
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.k = icmp eq i32 %.1278, 4
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  %i.m = call i32 @uriFreeUriMembersMmA(ptr noundef %i.l, ptr noundef %3) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1296, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !32
  br label %.thread372

bb.f:                                             ; preds = %bb.d
  %i.p = add nsw i8 %i.j, -48
  %i.q = add nsw i32 %.1278, 1
  %i.r = sext i32 %.1278 to i64
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  store i8 %i.p, ptr %i.s, align 1, !tbaa !12
  br label %bb.aj

bb.g:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %.1272, 4
  %i.u = and i32 %.1278, -5
  %i.v = icmp eq i32 %i.u, 0
  %or.cond5 = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %0, align 8, !tbaa !7
  %i.x = call i32 @uriFreeUriMembersMmA(ptr noundef %i.w, ptr noundef %3) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1296, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !32
  br label %.thread372

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp sgt i32 %.1278, 1
  %i.ab = load i8, ptr %i.a, align 1              ; 3 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp eq i8 %i.ab, 0
  %or.cond9 = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = zext nneg i32 %.1278 to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.1296, i64 %i.af
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  %i.ai = call i32 @uriFreeUriMembersMmA(ptr noundef %i.ah, ptr noundef %3) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ak, align 8, !tbaa !32
  br label %.thread372

bb.k:                                             ; preds = %bb.i
  %i.al = icmp sgt i32 %.1278, 2
  %i.am = load i8, ptr %i.c, align 1              ; 3 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = icmp eq i8 %i.am, 0
  %or.cond13 = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond13, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %.1278 to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %.1296, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load ptr, ptr %0, align 8, !tbaa !7
  %i.au = call i32 @uriFreeUriMembersMmA(ptr noundef %i.at, ptr noundef %3) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.aw, align 8, !tbaa !32
  br label %.thread372

bb.m:                                             ; preds = %bb.k
  %i.ax = icmp eq i32 %.1278, 3
  br i1 %i.ax, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ay = mul nuw nsw i32 %i.ac, 100
  %i.az = mul nuw nsw i32 %i.an, 10
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = load i8, ptr %i.d, align 1, !tbaa !12
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i32 %i.bd, 255
  br i1 %i.be, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp ugt i8 %i.ab, 2
  %i.bg = load ptr, ptr %0, align 8, !tbaa !7
  %i.bh = call i32 @uriFreeUriMembersMmA(ptr noundef %i.bg, ptr noundef %3) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds i8, ptr %.1296, i64 -3
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bk, align 8, !tbaa !32
  br label %.thread372

bb.q:                                             ; preds = %bb.o
  %i.bl = icmp ugt i8 %i.am, 5
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds i8, ptr %.1296, i64 -2
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !31
  store i32 1, ptr %i.bm, align 8, !tbaa !32
  br label %.thread372

bb.s:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds i8, ptr %.1296, i64 -1
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !31
  store i32 1, ptr %i.bm, align 8, !tbaa !32
  br label %.thread372

bb.t:                                             ; preds = %bb.m, %bb.n
  %i.bp = call zeroext i8 @uriGetOctetValue(ptr noundef nonnull %i.a, i32 noundef %.1278) #6
  %i.bq = load ptr, ptr %0, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42
  %i.bt = sext i32 %.1272 to i64
  %i.bu = getelementptr i8, ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !12
  %i.bw = add nsw i32 %.1272, 1
  br label %bb.aj

bb.u:                                             ; preds = %bb.c
  %i.bx = icmp ne i32 %.1272, 3
  %i.by = and i32 %.1278, -5
  %i.bz = icmp eq i32 %i.by, 0
  %or.cond17 = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond17, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr %0, align 8, !tbaa !7
  %i.cb = call i32 @uriFreeUriMembersMmA(ptr noundef %i.ca, ptr noundef %3) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1296, ptr %i.cc, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !32
  br label %.thread372

bb.w:                                             ; preds = %bb.u
  %i.ce = icmp sgt i32 %.1278, 1
  %i.cf = load i8, ptr %i.a, align 1              ; 3 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = icmp eq i8 %i.cf, 0
end_hunk_1
begin_hunk_2_@uriParseIPv6address2A:bb.a
  %i.eo = call i32 @uriFreeUriMembersMmA(ptr noundef %i.en, ptr noundef %3) ; 0 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.ep, align 8, !tbaa !31
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.eq, align 8, !tbaa !32
  br label %.thread372

.preheader381:                                    ; preds = %bb.a, %bb.bt
  %.2297 = phi ptr [ %i.kg, %bb.bt ], [ %1, %bb.a ] ; 22 uses
  %.1290 = phi i32 [ %.4293, %bb.bt ], [ 0, %bb.a ] ; 7 uses
  %.1285 = phi i32 [ %.3287, %bb.bt ], [ 0, %bb.a ] ; 7 uses
  %.3280 = phi i32 [ %.5282, %bb.bt ], [ 0, %bb.a ] ; 20 uses
  %.1265 = phi i32 [ %.5269, %bb.bt ], [ 0, %bb.a ] ; 10 uses
  %.0259 = phi i32 [ %.1260, %bb.bt ], [ 0, %bb.a ] ; 2 uses
  %i.er = load i8, ptr %.2297, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.er, label %.loopexit672 [
    i8 97, label %bb.al
    i8 98, label %bb.al
    i8 99, label %bb.al
    i8 100, label %bb.al
    i8 101, label %bb.al
    i8 102, label %bb.al
    i8 65, label %bb.am
    i8 66, label %bb.am
    i8 67, label %bb.am
    i8 68, label %bb.am
    i8 69, label %bb.am
    i8 70, label %bb.am
    i8 48, label %bb.an
    i8 49, label %bb.an
    i8 50, label %bb.an
    i8 51, label %bb.an
    i8 52, label %bb.an
    i8 53, label %bb.an
    i8 54, label %bb.an
    i8 55, label %bb.an
    i8 56, label %bb.an
    i8 57, label %bb.an
    i8 58, label %bb.ao
    i8 46, label %bb.az
    i8 93, label %.loopexit673
  ]

bb.al:                                            ; preds = %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381
  %i.es = icmp eq i32 %.3280, 4
  br i1 %i.es, label %.loopexit681, label %.sink.split

.loopexit681:                                     ; preds = %bb.al
  %i.et = load ptr, ptr %0, align 8, !tbaa !7
  %i.eu = call i32 @uriFreeUriMembersMmA(ptr noundef %i.et, ptr noundef %3) ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2297, ptr %i.ev, align 8, !tbaa !31
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ew, align 8, !tbaa !32
  br label %.thread372

bb.am:                                            ; preds = %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381
  %i.ex = icmp eq i32 %.3280, 4
  br i1 %i.ex, label %.loopexit680, label %.sink.split

.loopexit680:                                     ; preds = %bb.am
  %i.ey = load ptr, ptr %0, align 8, !tbaa !7
  %i.ez = call i32 @uriFreeUriMembersMmA(ptr noundef %i.ey, ptr noundef %3) ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2297, ptr %i.fa, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.fb, align 8, !tbaa !32
  br label %.thread372

bb.an:                                            ; preds = %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381, %.preheader381
  %i.fc = icmp eq i32 %.3280, 4
  br i1 %i.fc, label %.loopexit679, label %.sink.split

.loopexit679:                                     ; preds = %bb.an
  %i.fd = load ptr, ptr %0, align 8, !tbaa !7
  %i.fe = call i32 @uriFreeUriMembersMmA(ptr noundef %i.fd, ptr noundef %3) ; 0 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2297, ptr %i.ff, align 8, !tbaa !31
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.fg, align 8, !tbaa !32
  br label %.thread372

bb.ao:                                            ; preds = %.preheader381
  %i.fh = icmp sgt i32 %.3280, 0
  br i1 %i.fh, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %.not310 = icmp eq i32 %.1290, 0
  br i1 %.not310, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = shl nsw i32 %.1265, 1
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %i.b, i64 %i.fj
  call void @uriWriteQuadToDoubleByte(ptr noundef nonnull %i.a, i32 noundef %.3280, ptr noundef nonnull %i.fk) #6
  %i.fl = add nsw i32 %.1265, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fm = load ptr, ptr %0, align 8, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42
  %i.fp = shl nsw i32 %.1285, 1
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq
  call void @uriWriteQuadToDoubleByte(ptr noundef nonnull %i.a, i32 noundef %.3280, ptr noundef %i.fr) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.2266 = phi i32 [ %i.fl, %bb.aq ], [ %.1265, %bb.ar ]
  %i.fs = add nsw i32 %.1285, 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %.2286 = phi i32 [ %i.fs, %bb.as ], [ %.1285, %bb.ao ] ; 4 uses
  %.4281 = phi i32 [ 0, %bb.as ], [ %.3280, %bb.ao ] ; 2 uses
  %.3267 = phi i32 [ %.2266, %bb.as ], [ %.1265, %bb.ao ] ; 2 uses
  %i.ft = sub nuw nsw i32 8, %.1290
  %.not311 = icmp slt i32 %.2286, %i.ft
  br i1 %.not311, label %bb.au, label %.loopexit674

.loopexit674:                                     ; preds = %bb.at
  %i.fu = load ptr, ptr %0, align 8, !tbaa !7
  %i.fv = call i32 @uriFreeUriMembersMmA(ptr noundef %i.fu, ptr noundef %3) ; 0 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2297, ptr %i.fw, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.fx, align 8, !tbaa !32
  br label %.thread372

bb.au:                                            ; preds = %bb.at
  %i.fy = getelementptr inbounds nuw i8, ptr %.2297, i64 1 ; 4 uses
  %.not312 = icmp ult ptr %i.fy, %2
  br i1 %.not312, label %bb.av, label %.loopexit675

.loopexit675:                                     ; preds = %bb.au
  %i.fz = load ptr, ptr %0, align 8, !tbaa !7
  %i.ga = call i32 @uriFreeUriMembersMmA(ptr noundef %i.fz, ptr noundef %3) ; 0 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.gb, align 8, !tbaa !31
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.gc, align 8, !tbaa !32
  br label %.thread372

bb.av:                                            ; preds = %bb.au
  %i.gd = load i8, ptr %i.fy, align 1, !tbaa !12
  %i.ge = icmp eq i8 %i.gd, 58
  br i1 %i.ge, label %bb.aw, label %bb.bt

bb.aw:                                            ; preds = %bb.av
  %.not313 = icmp eq i32 %.1290, 0
  br i1 %.not313, label %bb.ax, label %.loopexit676

.loopexit676:                                     ; preds = %bb.aw
  %i.gf = load ptr, ptr %0, align 8, !tbaa !7
  %i.gg = call i32 @uriFreeUriMembersMmA(ptr noundef %i.gf, ptr noundef %3) ; 0 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fy, ptr %i.gh, align 8, !tbaa !31
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.gi, align 8, !tbaa !32
  br label %.thread372

bb.ax:                                            ; preds = %bb.aw
  %i.gj = shl nsw i32 %.2286, 1                   ; 2 uses
  %i.gk = load ptr, ptr %0, align 8, !tbaa !7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !42
  %i.gn = sext i32 %i.gj to i64
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %i.gn
  %i.gp = sub nsw i32 16, %i.gj
  %i.gq = zext nneg i32 %i.gp to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.go, i8 0, i64 %i.gq, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %.2297, i64 2 ; 3 uses
  %.not314 = icmp ult ptr %i.gr, %2
  br i1 %.not314, label %bb.ay, label %.loopexit677

.loopexit677:                                     ; preds = %bb.ax
  %.pre = load ptr, ptr %0, align 8, !tbaa !7
  %i.gs = call i32 @uriFreeUriMembersMmA(ptr noundef %.pre, ptr noundef %3) ; 0 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.gt, align 8, !tbaa !31
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !32
  br label %.thread372

bb.ay:                                            ; preds = %bb.ax
  %i.gv = load i8, ptr %i.gr, align 1, !tbaa !12
  %i.gw = icmp eq i8 %i.gv, 58
  br i1 %i.gw, label %.loopexit678, label %bb.bt

.loopexit678:                                     ; preds = %bb.ay
  %.pre724 = load ptr, ptr %0, align 8, !tbaa !7
  %i.gx = call i32 @uriFreeUriMembersMmA(ptr noundef %.pre724, ptr noundef %3) ; 0 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gr, ptr %i.gy, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.gz, align 8, !tbaa !32
  br label %.thread372

bb.az:                                            ; preds = %.preheader381
  %.2297.lcssa706717 = ptrtoaddr ptr %.2297 to i64
  %i.ha = icmp sgt i32 %.1285, 6
  br i1 %i.ha, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hb = icmp eq i32 %.1290, 0
  %i.hc = icmp ne i32 %.1285, 6
  %or.cond27 = select i1 %i.hb, i1 %i.hc, i1 false
  %i.hd = icmp ne i32 %.0259, 0
  %or.cond29 = select i1 %or.cond27, i1 true, i1 %i.hd
  %i.he = and i32 %.3280, -5
  %i.hf = icmp eq i32 %i.he, 0
  %or.cond33 = select i1 %or.cond29, i1 true, i1 %i.hf
  br i1 %or.cond33, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hg = load ptr, ptr %0, align 8, !tbaa !7
  %i.hh = call i32 @uriFreeUriMembersMmA(ptr noundef %i.hg, ptr noundef %3) ; 0 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2297, ptr %i.hi, align 8, !tbaa !31
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.hj, align 8, !tbaa !32
  br label %.thread372

bb.bc:                                            ; preds = %bb.ba
  %i.hk = icmp sgt i32 %.3280, 1
  %i.hl = load i8, ptr %i.a, align 1              ; 3 uses
  %i.hm = zext i8 %i.hl to i32
  %i.hn = icmp eq i8 %i.hl, 0
  %or.cond37 = select i1 %i.hk, i1 %i.hn, i1 false
  br i1 %or.cond37, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ho = zext nneg i32 %.3280 to i64
  %i.hp = sub nsw i64 0, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %.2297, i64 %i.hp
  %i.hr = load ptr, ptr %0, align 8, !tbaa !7
  %i.hs = call i32 @uriFreeUriMembersMmA(ptr noundef %i.hr, ptr noundef %3) ; 0 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hq, ptr %i.ht, align 8, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.hu, align 8, !tbaa !32
  br label %.thread372

bb.be:                                            ; preds = %bb.bc
  %i.hv = icmp sgt i32 %.3280, 2
  %i.hw = load i8, ptr %i.c, align 1              ; 3 uses
  %i.hx = zext i8 %i.hw to i32
  %i.hy = icmp eq i8 %i.hw, 0
  %or.cond41 = select i1 %i.hv, i1 %i.hy, i1 false
  br i1 %or.cond41, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hz = zext nneg i32 %.3280 to i64
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %.2297, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.id = load ptr, ptr %0, align 8, !tbaa !7
  %i.ie = call i32 @uriFreeUriMembersMmA(ptr noundef %i.id, ptr noundef %3) ; 0 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ic, ptr %i.if, align 8, !tbaa !31
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ig, align 8, !tbaa !32
  br label %.thread372

bb.bg:                                            ; preds = %bb.be
  %i.ih = icmp eq i32 %.3280, 3
  br i1 %i.ih, label %bb.bh, label %.thread339

bb.bh:                                            ; preds = %bb.bg
  %i.ii = mul nuw nsw i32 %i.hm, 100
  %i.ij = mul nuw nsw i32 %i.hx, 10
  %i.ik = add nuw nsw i32 %i.ij, %i.ii
  %i.il = load i8, ptr %i.d, align 1, !tbaa !12
  %i.im = zext i8 %i.il to i32
  %i.in = add nuw nsw i32 %i.ik, %i.im
  %i.io = icmp samesign ugt i32 %i.in, 255
  br i1 %i.io, label %bb.bi, label %.thread339

bb.bi:                                            ; preds = %bb.bh
  %i.ip = icmp ugt i8 %i.hl, 2
  %i.iq = load ptr, ptr %0, align 8, !tbaa !7
  %i.ir = call i32 @uriFreeUriMembersMmA(ptr noundef %i.iq, ptr noundef %3) ; 0 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.ip, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.it = getelementptr inbounds i8, ptr %.2297, i64 -3
  store ptr %i.it, ptr %i.is, align 8, !tbaa !31
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.iu, align 8, !tbaa !32
  br label %.thread372

bb.bk:                                            ; preds = %bb.bi
  %i.iv = icmp ugt i8 %i.hw, 5
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.iv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ix = getelementptr inbounds i8, ptr %.2297, i64 -2
  store ptr %i.ix, ptr %i.is, align 8, !tbaa !31
  store i32 1, ptr %i.iw, align 8, !tbaa !32
  br label %.thread372

bb.bm:                                            ; preds = %bb.bk
  %i.iy = getelementptr inbounds i8, ptr %.2297, i64 -1
  store ptr %i.iy, ptr %i.is, align 8, !tbaa !31
  store i32 1, ptr %i.iw, align 8, !tbaa !32
  br label %.thread372

.loopexit673:                                     ; preds = %.preheader381
  %.not309 = icmp eq i32 %.1290, 0
  br i1 %.not309, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.loopexit673
  %i.iz = icmp eq i32 %.1285, 7
  %i.ja = icmp sgt i32 %.3280, 0
  %or.cond43 = select i1 %i.iz, i1 %i.ja, i1 false
  %i.jb = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  br i1 %or.cond43, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jc = call i32 @uriFreeUriMembersMmA(ptr noundef %i.jb, ptr noundef %3) ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2297, ptr %i.jd, align 8, !tbaa !31
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.je, align 8, !tbaa !32
  br label %.thread372

bb.bp:                                            ; preds = %.loopexit673
  %i.jf = icmp sgt i32 %.3280, 0
  br i1 %i.jf, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.jg = shl nsw i32 %.1265, 1
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr %i.b, i64 %i.jh
  call void @uriWriteQuadToDoubleByte(ptr noundef nonnull %i.a, i32 noundef %.3280, ptr noundef nonnull %i.ji) #6
  %i.jj = add nsw i32 %.1265, 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !42
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 14
  call void @uriWriteQuadToDoubleByte(ptr noundef nonnull %i.a, i32 noundef %.3280, ptr noundef nonnull %i.jm) #6
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %.4268 = phi i32 [ %i.jj, %bb.bq ], [ %.1265, %bb.br ], [ %.1265, %bb.bp ]
  %i.jn = load ptr, ptr %0, align 8, !tbaa !7
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !42
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = shl nsw i32 %.4268, 1
  %i.js = sext i32 %i.jr to i64                   ; 2 uses
  %i.jt = sub nsw i64 0, %i.js
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 %i.jt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr nonnull align 1 %i.b, i64 %i.js, i1 false)
  %i.jv = load ptr, ptr %0, align 8, !tbaa !7
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store ptr %.2297, ptr %i.jw, align 8, !tbaa !43
  %i.jx = getelementptr inbounds nuw i8, ptr %.2297, i64 1
  br label %.thread372

.loopexit672:                                     ; preds = %.preheader381
  %i.jy = load ptr, ptr %0, align 8, !tbaa !7
  %i.jz = call i32 @uriFreeUriMembersMmA(ptr noundef %i.jy, ptr noundef %3) ; 0 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2297, ptr %i.ka, align 8, !tbaa !31
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.kb, align 8, !tbaa !32
  br label %.thread372

.sink.split:                                      ; preds = %bb.an, %bb.am, %bb.al
  %.sink833 = phi i8 [ -55, %bb.am ], [ -87, %bb.al ], [ -48, %bb.an ]
  %.1260.ph = phi i32 [ 1, %bb.am ], [ 1, %bb.al ], [ %.0259, %bb.an ]
  %i.kc = add nsw i8 %i.er, %.sink833
  %i.kd = sext i32 %.3280 to i64
  %i.ke = getelementptr inbounds i8, ptr %i.a, i64 %i.kd
  store i8 %i.kc, ptr %i.ke, align 1, !tbaa !12
  %i.kf = add nsw i32 %.3280, 1
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split, %bb.av, %bb.ay
  %.5300 = phi ptr [ %.2297, %bb.av ], [ %i.fy, %bb.ay ], [ %.2297, %.sink.split ]
  %.4293 = phi i32 [ %.1290, %bb.av ], [ 1, %bb.ay ], [ %.1290, %.sink.split ]
  %.3287 = phi i32 [ %.2286, %bb.av ], [ %.2286, %bb.ay ], [ %.1285, %.sink.split ]
  %.5282 = phi i32 [ %.4281, %bb.av ], [ %.4281, %bb.ay ], [ %i.kf, %.sink.split ]
  %.5269 = phi i32 [ %.3267, %bb.av ], [ %.3267, %bb.ay ], [ %.1265, %.sink.split ]
  %.1260 = phi i32 [ 0, %bb.av ], [ 0, %bb.ay ], [ %.1260.ph, %.sink.split ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.5300, i64 1 ; 2 uses
  %.not316 = icmp ult ptr %i.kg, %2
  br i1 %.not316, label %.preheader381, label %.loopexit, !llvm.loop !53

.thread339:                                       ; preds = %bb.bh, %bb.bg
  %i.kh = call zeroext i8 @uriGetOctetValue(ptr noundef nonnull %i.a, i32 noundef %.3280) #6
  %i.ki = load ptr, ptr %0, align 8, !tbaa !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !42
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
end_hunk_2
begin_hunk_3_@uriParseIpLit2A:bb.a
    i8 101, label %bb.j
    i8 102, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc ptr @uriParseIpFutureA(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not39 = icmp ult ptr %i.f, %2
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %0, align 8, !tbaa !7
  %i.i = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.h, ptr noundef %3) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !32
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.f, align 1, !tbaa !12
  %.not40 = icmp eq i8 %i.l, 93
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %0, align 8, !tbaa !7
  %i.n = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.m, ptr noundef %3) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !32
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.n

bb.j:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.r = load ptr, ptr %3, align 8, !tbaa !52
  %i.s = tail call ptr %i.r(ptr noundef nonnull %3, i64 noundef 16) #6 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.s, ptr %i.u, align 8, !tbaa !42
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %i.t, ptr noundef nonnull %3) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.y, align 8, !tbaa !32
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.z = tail call fastcc ptr @uriParseIPv6address2A(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7
  %i.ab = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.aa, ptr noundef %3) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.d, %bb.m, %bb.l, %bb.k, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.m ], [ %i.z, %bb.l ], [ null, %bb.k ], [ %i.q, %bb.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uriParseIpFutureA(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.a, ptr noundef %3) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !32
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not48 = icmp ult ptr %i.e, %2
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.f, ptr noundef %3) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !32
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.e, align 1, !tbaa !12
  switch i8 %i.j, label %bb.m [
    i8 48, label %bb.f
    i8 49, label %bb.f
    i8 50, label %bb.f
    i8 51, label %bb.f
    i8 52, label %bb.f
    i8 53, label %bb.f
    i8 54, label %bb.f
    i8 55, label %bb.f
    i8 56, label %bb.f
    i8 57, label %bb.f
    i8 65, label %bb.f
    i8 66, label %bb.f
    i8 67, label %bb.f
    i8 68, label %bb.f
    i8 69, label %bb.f
    i8 70, label %bb.f
    i8 97, label %bb.f
    i8 98, label %bb.f
    i8 99, label %bb.f
    i8 100, label %bb.f
    i8 101, label %bb.f
    i8 102, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.not2.i = icmp ult ptr %i.k, %2
  br i1 %.not2.i, label %.lr.ph.i, label %uriParseHexZeroA.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %tailrecurse.i
  %.tr3.i = phi ptr [ %i.m, %tailrecurse.i ], [ %i.k, %bb.f ] ; 5 uses
  %i.l = load i8, ptr %.tr3.i, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.l, label %uriParseHexZeroA.exit [
    i8 48, label %tailrecurse.i
    i8 49, label %tailrecurse.i
    i8 50, label %tailrecurse.i
    i8 51, label %tailrecurse.i
    i8 52, label %tailrecurse.i
    i8 53, label %tailrecurse.i
    i8 54, label %tailrecurse.i
    i8 55, label %tailrecurse.i
    i8 56, label %tailrecurse.i
    i8 57, label %tailrecurse.i
    i8 65, label %tailrecurse.i
    i8 66, label %tailrecurse.i
    i8 67, label %tailrecurse.i
    i8 68, label %tailrecurse.i
    i8 69, label %tailrecurse.i
    i8 70, label %tailrecurse.i
    i8 97, label %tailrecurse.i
    i8 98, label %tailrecurse.i
    i8 99, label %tailrecurse.i
    i8 100, label %tailrecurse.i
    i8 101, label %tailrecurse.i
    i8 102, label %tailrecurse.i
  ]

tailrecurse.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.tr3.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.m, %2
  br i1 %exitcond.not.i, label %uriParseHexZeroA.exit.thread, label %.lr.ph.i

uriParseHexZeroA.exit:                            ; preds = %.lr.ph.i
  %.not49 = icmp ult ptr %.tr3.i, %2
  br i1 %.not49, label %bb.g, label %uriParseHexZeroA.exit.thread

uriParseHexZeroA.exit.thread:                     ; preds = %tailrecurse.i, %bb.f, %uriParseHexZeroA.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !7
  %i.o = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.n, ptr noundef %3) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !32
  br label %bb.n

bb.g:                                             ; preds = %uriParseHexZeroA.exit
  %.not50 = icmp eq i8 %i.l, 46
  %i.r = load ptr, ptr %0, align 8, !tbaa !7      ; 6 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.r, ptr noundef %3) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.tr3.i, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !32
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %1, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %1, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %.tr3.i, i64 1 ; 5 uses
  %.not21.i = icmp ult ptr %i.x, %2
  br i1 %.not21.i, label %.lr.ph.preheader.i, label %uriParseIpFutLoopA.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %4 = ptrtoaddr ptr %2 to i64
  %5 = ptrtoaddr ptr %i.x to i64
  %6 = xor i64 %5, -1
  %7 = getelementptr i8, ptr %i.x, i64 %6
  %scevgep.i = getelementptr i8, ptr %7, i64 %4
  %.pre.i = load i8, ptr %i.x, align 1, !tbaa !12
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.backedge, %.lr.ph.preheader.i
  %i.y = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i52.backedge ]
  %.tr1622.i = phi ptr [ %i.x, %.lr.ph.preheader.i ], [ %i.z, %.lr.ph.i52.backedge ] ; 3 uses
  switch i8 %i.y, label %uriParseIpFutLoopA.exit [
    i8 33, label %bb.j
    i8 36, label %bb.j
    i8 38, label %bb.j
    i8 40, label %bb.j
    i8 41, label %bb.j
    i8 45, label %bb.j
    i8 42, label %bb.j
    i8 44, label %bb.j
    i8 46, label %bb.j
    i8 58, label %bb.j
    i8 59, label %bb.j
    i8 39, label %bb.j
    i8 95, label %bb.j
    i8 126, label %bb.j
    i8 43, label %bb.j
    i8 61, label %bb.j
    i8 48, label %bb.j
    i8 49, label %bb.j
    i8 50, label %bb.j
    i8 51, label %bb.j
    i8 52, label %bb.j
    i8 53, label %bb.j
    i8 54, label %bb.j
    i8 55, label %bb.j
    i8 56, label %bb.j
    i8 57, label %bb.j
    i8 65, label %bb.j
    i8 66, label %bb.j
    i8 67, label %bb.j
    i8 68, label %bb.j
    i8 69, label %bb.j
    i8 70, label %bb.j
    i8 97, label %bb.j
    i8 98, label %bb.j
    i8 99, label %bb.j
    i8 100, label %bb.j
    i8 101, label %bb.j
    i8 102, label %bb.j
    i8 103, label %bb.j
    i8 71, label %bb.j
    i8 104, label %bb.j
    i8 72, label %bb.j
    i8 105, label %bb.j
    i8 73, label %bb.j
    i8 106, label %bb.j
    i8 74, label %bb.j
    i8 107, label %bb.j
    i8 75, label %bb.j
    i8 108, label %bb.j
    i8 76, label %bb.j
    i8 109, label %bb.j
    i8 77, label %bb.j
    i8 110, label %bb.j
    i8 78, label %bb.j
    i8 111, label %bb.j
    i8 79, label %bb.j
    i8 112, label %bb.j
    i8 80, label %bb.j
    i8 113, label %bb.j
    i8 81, label %bb.j
    i8 114, label %bb.j
    i8 82, label %bb.j
    i8 115, label %bb.j
    i8 83, label %bb.j
    i8 116, label %bb.j
    i8 84, label %bb.j
    i8 117, label %bb.j
    i8 85, label %bb.j
    i8 118, label %bb.j
    i8 86, label %bb.j
    i8 119, label %bb.j
    i8 87, label %bb.j
    i8 120, label %bb.j
    i8 88, label %bb.j
    i8 121, label %bb.j
    i8 89, label %bb.j
    i8 122, label %bb.j
    i8 90, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1622.i, i64 1 ; 3 uses
  %exitcond.not.i53 = icmp eq ptr %.tr1622.i, %scevgep.i
  br i1 %exitcond.not.i53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12   ; 2 uses
  switch i8 %i.aa, label %bb.l [
    i8 33, label %.lr.ph.i52.backedge
    i8 36, label %.lr.ph.i52.backedge
    i8 38, label %.lr.ph.i52.backedge
    i8 40, label %.lr.ph.i52.backedge
    i8 41, label %.lr.ph.i52.backedge
    i8 45, label %.lr.ph.i52.backedge
    i8 42, label %.lr.ph.i52.backedge
    i8 44, label %.lr.ph.i52.backedge
    i8 46, label %.lr.ph.i52.backedge
    i8 58, label %.lr.ph.i52.backedge
    i8 59, label %.lr.ph.i52.backedge
    i8 39, label %.lr.ph.i52.backedge
    i8 95, label %.lr.ph.i52.backedge
    i8 126, label %.lr.ph.i52.backedge
    i8 43, label %.lr.ph.i52.backedge
    i8 61, label %.lr.ph.i52.backedge
    i8 48, label %.lr.ph.i52.backedge
    i8 49, label %.lr.ph.i52.backedge
    i8 50, label %.lr.ph.i52.backedge
    i8 51, label %.lr.ph.i52.backedge
    i8 52, label %.lr.ph.i52.backedge
    i8 53, label %.lr.ph.i52.backedge
    i8 54, label %.lr.ph.i52.backedge
    i8 55, label %.lr.ph.i52.backedge
    i8 56, label %.lr.ph.i52.backedge
    i8 57, label %.lr.ph.i52.backedge
    i8 65, label %.lr.ph.i52.backedge
    i8 66, label %.lr.ph.i52.backedge
    i8 67, label %.lr.ph.i52.backedge
    i8 68, label %.lr.ph.i52.backedge
    i8 69, label %.lr.ph.i52.backedge
    i8 70, label %.lr.ph.i52.backedge
    i8 97, label %.lr.ph.i52.backedge
    i8 98, label %.lr.ph.i52.backedge
    i8 99, label %.lr.ph.i52.backedge
    i8 100, label %.lr.ph.i52.backedge
    i8 101, label %.lr.ph.i52.backedge
    i8 102, label %.lr.ph.i52.backedge
    i8 103, label %.lr.ph.i52.backedge
    i8 71, label %.lr.ph.i52.backedge
    i8 104, label %.lr.ph.i52.backedge
    i8 72, label %.lr.ph.i52.backedge
    i8 105, label %.lr.ph.i52.backedge
    i8 73, label %.lr.ph.i52.backedge
    i8 106, label %.lr.ph.i52.backedge
    i8 74, label %.lr.ph.i52.backedge
    i8 107, label %.lr.ph.i52.backedge
    i8 75, label %.lr.ph.i52.backedge
    i8 108, label %.lr.ph.i52.backedge
    i8 76, label %.lr.ph.i52.backedge
    i8 109, label %.lr.ph.i52.backedge
    i8 77, label %.lr.ph.i52.backedge
    i8 110, label %.lr.ph.i52.backedge
    i8 78, label %.lr.ph.i52.backedge
    i8 111, label %.lr.ph.i52.backedge
    i8 79, label %.lr.ph.i52.backedge
    i8 112, label %.lr.ph.i52.backedge
    i8 80, label %.lr.ph.i52.backedge
    i8 113, label %.lr.ph.i52.backedge
    i8 81, label %.lr.ph.i52.backedge
    i8 114, label %.lr.ph.i52.backedge
    i8 82, label %.lr.ph.i52.backedge
    i8 115, label %.lr.ph.i52.backedge
    i8 83, label %.lr.ph.i52.backedge
    i8 116, label %.lr.ph.i52.backedge
    i8 84, label %.lr.ph.i52.backedge
    i8 117, label %.lr.ph.i52.backedge
    i8 85, label %.lr.ph.i52.backedge
    i8 118, label %.lr.ph.i52.backedge
    i8 86, label %.lr.ph.i52.backedge
    i8 119, label %.lr.ph.i52.backedge
    i8 87, label %.lr.ph.i52.backedge
    i8 120, label %.lr.ph.i52.backedge
    i8 88, label %.lr.ph.i52.backedge
    i8 121, label %.lr.ph.i52.backedge
    i8 89, label %.lr.ph.i52.backedge
    i8 122, label %.lr.ph.i52.backedge
    i8 90, label %.lr.ph.i52.backedge
  ]

.lr.ph.i52.backedge:                              ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  br label %.lr.ph.i52

uriParseIpFutLoopA.exit:                          ; preds = %.lr.ph.i52, %bb.i
  %.tr1622.lcssa.sink.i = phi ptr [ %2, %bb.i ], [ %.tr1622.i, %.lr.ph.i52 ]
  %i.ab = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.r, ptr noundef %3), !inline_history !104 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.tr1622.lcssa.sink.i, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !32
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0.i51.ph = phi ptr [ %i.z, %bb.k ], [ %2, %bb.j ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %.0.i51.ph, ptr %i.ae, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %.0.i51.ph, ptr %i.af, align 8, !tbaa !39
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !7
  %i.ah = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.ag, ptr noundef %3) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.ai, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %uriParseIpFutLoopA.exit, %uriParseHexZeroA.exit.thread, %bb.h, %bb.l, %bb.m, %bb.d, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.m ], [ %.0.i51.ph, %bb.l ], [ null, %uriParseHexZeroA.exit.thread ], [ null, %bb.h ], [ null, %uriParseIpFutLoopA.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uriParsePctSubUnresA(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.a, ptr noundef %3) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !12
  switch i8 %i.e, label %bb.f [
    i8 37, label %bb.d
    i8 33, label %bb.e
    i8 36, label %bb.e
    i8 38, label %bb.e
    i8 40, label %bb.e
    i8 41, label %bb.e
    i8 42, label %bb.e
    i8 44, label %bb.e
    i8 59, label %bb.e
    i8 39, label %bb.e
    i8 43, label %bb.e
    i8 61, label %bb.e
    i8 45, label %bb.e
    i8 46, label %bb.e
    i8 95, label %bb.e
    i8 126, label %bb.e
    i8 48, label %bb.e
    i8 49, label %bb.e
    i8 50, label %bb.e
    i8 51, label %bb.e
    i8 52, label %bb.e
    i8 53, label %bb.e
    i8 54, label %bb.e
    i8 55, label %bb.e
    i8 56, label %bb.e
    i8 57, label %bb.e
    i8 65, label %bb.e
    i8 66, label %bb.e
    i8 67, label %bb.e
    i8 68, label %bb.e
    i8 69, label %bb.e
    i8 70, label %bb.e
    i8 97, label %bb.e
    i8 98, label %bb.e
    i8 99, label %bb.e
    i8 100, label %bb.e
    i8 101, label %bb.e
    i8 102, label %bb.e
    i8 103, label %bb.e
    i8 71, label %bb.e
    i8 104, label %bb.e
    i8 72, label %bb.e
    i8 105, label %bb.e
    i8 73, label %bb.e
    i8 106, label %bb.e
    i8 74, label %bb.e
    i8 107, label %bb.e
    i8 75, label %bb.e
    i8 108, label %bb.e
    i8 76, label %bb.e
    i8 109, label %bb.e
    i8 77, label %bb.e
    i8 110, label %bb.e
    i8 78, label %bb.e
    i8 111, label %bb.e
    i8 79, label %bb.e
    i8 112, label %bb.e
    i8 80, label %bb.e
    i8 113, label %bb.e
    i8 81, label %bb.e
    i8 114, label %bb.e
    i8 82, label %bb.e
    i8 115, label %bb.e
    i8 83, label %bb.e
    i8 116, label %bb.e
    i8 84, label %bb.e
    i8 117, label %bb.e
    i8 85, label %bb.e
    i8 118, label %bb.e
    i8 86, label %bb.e
    i8 119, label %bb.e
    i8 87, label %bb.e
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 121, label %bb.e
    i8 89, label %bb.e
    i8 122, label %bb.e
    i8 90, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc ptr @uriParsePctEncodedA(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !7
  %i.i = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.h, ptr noundef %3) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uriParseOwnPortUserInfoA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not62 = icmp ult ptr %1, %2
  br i1 %.not62, label %.lr.ph.preheader, label %tailrecurse._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoaddr ptr %2 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.a = sub i64 %4, %5
  %scevgep = getelementptr i8, ptr %1, i64 %i.a
  br label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr55.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %tailrecurse ]
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !40
  store ptr null, ptr %i.c, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.tr55.lcssa, ptr %i.f, align 8, !tbaa !45
  %i.g = load ptr, ptr %3, align 8, !tbaa !52
  %i.h = tail call ptr %i.g(ptr noundef nonnull %3, i64 noundef 4) #6, !inline_history !105 ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.h, ptr %i.j, align 8, !tbaa !41
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %uriOnExitOwnPortUserInfoA.exit, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = tail call i32 @uriParseIpFourAddressA(ptr noundef nonnull %i.h, ptr noundef %i.m, ptr noundef %i.o) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %uriOnExitOwnPortUserInfoA.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.s = load ptr, ptr %0, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  tail call void %i.r(ptr noundef nonnull %3, ptr noundef %i.u) #6, !inline_history !105
  %i.v = load ptr, ptr %0, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !41
  br label %uriOnExitOwnPortUserInfoA.exit.thread

uriOnExitOwnPortUserInfoA.exit:                   ; preds = %tailrecurse._crit_edge
  %i.x = tail call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %i.i, ptr noundef nonnull %3) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !32
  br label %uriOnExitOwnPortUserInfoA.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr5563 = phi ptr [ %i.ag, %tailrecurse ], [ %1, %.lr.ph.preheader ] ; 8 uses
  %i.aa = load i8, ptr %.tr5563, align 1, !tbaa !12
  switch i8 %i.aa, label %bb.h [
    i8 33, label %bb.d
    i8 36, label %bb.d
    i8 38, label %bb.d
    i8 39, label %bb.d
    i8 40, label %bb.d
    i8 41, label %bb.d
    i8 42, label %bb.d
    i8 43, label %bb.d
    i8 44, label %bb.d
    i8 59, label %bb.d
    i8 61, label %bb.d
    i8 45, label %bb.d
    i8 46, label %bb.d
    i8 95, label %bb.d
    i8 126, label %bb.d
    i8 58, label %bb.d
    i8 65, label %bb.d
    i8 66, label %bb.d
    i8 67, label %bb.d
    i8 68, label %bb.d
    i8 69, label %bb.d
    i8 70, label %bb.d
    i8 97, label %bb.d
    i8 98, label %bb.d
    i8 99, label %bb.d
    i8 100, label %bb.d
    i8 101, label %bb.d
    i8 102, label %bb.d
    i8 103, label %bb.d
    i8 71, label %bb.d
    i8 104, label %bb.d
    i8 72, label %bb.d
    i8 105, label %bb.d
    i8 73, label %bb.d
    i8 106, label %bb.d
    i8 74, label %bb.d
    i8 107, label %bb.d
    i8 75, label %bb.d
    i8 108, label %bb.d
    i8 76, label %bb.d
    i8 109, label %bb.d
    i8 77, label %bb.d
    i8 110, label %bb.d
    i8 78, label %bb.d
    i8 111, label %bb.d
    i8 79, label %bb.d
    i8 112, label %bb.d
    i8 80, label %bb.d
    i8 113, label %bb.d
    i8 81, label %bb.d
    i8 114, label %bb.d
    i8 82, label %bb.d
    i8 115, label %bb.d
    i8 83, label %bb.d
    i8 116, label %bb.d
    i8 84, label %bb.d
    i8 117, label %bb.d
    i8 85, label %bb.d
    i8 118, label %bb.d
    i8 86, label %bb.d
    i8 119, label %bb.d
    i8 87, label %bb.d
    i8 120, label %bb.d
    i8 88, label %bb.d
    i8 121, label %bb.d
    i8 89, label %bb.d
    i8 122, label %bb.d
    i8 90, label %bb.d
    i8 48, label %tailrecurse
    i8 49, label %tailrecurse
    i8 50, label %tailrecurse
    i8 51, label %tailrecurse
    i8 52, label %tailrecurse
    i8 53, label %tailrecurse
    i8 54, label %tailrecurse
    i8 55, label %tailrecurse
    i8 56, label %tailrecurse
    i8 57, label %tailrecurse
    i8 37, label %bb.e
    i8 64, label %bb.g
  ]

bb.d:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr null, ptr %i.ac, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store ptr null, ptr %i.ad, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr5563, i64 1
  %i.af = tail call fastcc ptr @uriParseOwnUserInfoA(ptr noundef %0, ptr noundef %i.ae, ptr noundef %2, ptr noundef %3)
  br label %uriOnExitOwnPortUserInfoA.exit.thread

tailrecurse:                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr5563, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ag, %2
  br i1 %exitcond.not, label %tailrecurse._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr null, ptr %i.ai, align 8, !tbaa !44
  %i.aj = tail call fastcc ptr @uriParsePctEncodedA(ptr noundef %0, ptr noundef %.tr5563, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %uriOnExitOwnPortUserInfoA.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = tail call fastcc ptr @uriParseOwnUserInfoA(ptr noundef %0, ptr noundef %i.aj, ptr noundef %2, ptr noundef %3)
  br label %uriOnExitOwnPortUserInfoA.exit.thread

bb.g:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr null, ptr %i.an, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store ptr null, ptr %i.ao, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %.tr5563, ptr %i.ap, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr5563, i64 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !40
  %i.as = tail call fastcc ptr @uriParseOwnHostA(ptr noundef %0, ptr noundef %i.aq, ptr noundef %2, ptr noundef %3)
  br label %uriOnExitOwnPortUserInfoA.exit.thread

bb.h:                                             ; preds = %.lr.ph
  %i.at = tail call fastcc i32 @uriOnExitOwnPortUserInfoA(ptr noundef %0, ptr noundef %.tr5563, ptr noundef %3)
  %.not51 = icmp eq i32 %i.at, 0
  br i1 %.not51, label %bb.i, label %uriOnExitOwnPortUserInfoA.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !7
  %i.av = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.au, ptr noundef %3) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.aw, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.ax, align 8, !tbaa !32
  br label %uriOnExitOwnPortUserInfoA.exit.thread

uriOnExitOwnPortUserInfoA.exit.thread:            ; preds = %bb.b, %bb.c, %bb.h, %bb.f, %bb.e, %bb.i, %bb.g, %bb.d, %uriOnExitOwnPortUserInfoA.exit
  %.1 = phi ptr [ %i.as, %bb.g ], [ null, %uriOnExitOwnPortUserInfoA.exit ], [ null, %bb.e ], [ null, %bb.i ], [ %i.af, %bb.d ], [ %2, %bb.b ], [ %.tr5563, %bb.h ], [ %i.al, %bb.f ], [ %2, %bb.c ]
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @uriParseOwnHostA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
end_hunk_3
