inline.NumInlined: 6898
inline.NumDeleted: 2415
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft19IsUnlikelySuccessorEPKNS2_5BlockES5_RKNS2_5GraphE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.e = add nsw i32 %i.d, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 3
  %i.k = sub i32 %.sroa.0.0.copyload.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = zext i32 %i.k to i64
  %i.p = add i64 %i.o, %i.n
  %i.q = inttoptr i64 %i.p to ptr                 ; 9 uses
  %i.r = load i8, ptr %i.q, align 4
  switch i8 %i.r, label %bb.u [
    i8 0, label %bb.b
    i8 1, label %.thread
    i8 5, label %bb.c
    i8 6, label %bb.f
    i8 7, label %bb.s
    i8 2, label %bb.s
    i8 3, label %bb.s
    i8 4, label %bb.s
    i8 8, label %bb.t
    i8 9, label %bb.t
    i8 10, label %bb.t
    i8 11, label %bb.t
    i8 12, label %bb.t
    i8 13, label %bb.t
    i8 14, label %bb.t
    i8 15, label %bb.t
    i8 16, label %bb.t
    i8 17, label %bb.t
    i8 18, label %bb.t
    i8 19, label %bb.t
    i8 20, label %bb.t
    i8 21, label %bb.t
    i8 22, label %bb.t
    i8 23, label %bb.t
    i8 24, label %bb.t
    i8 25, label %bb.t
    i8 26, label %bb.t
    i8 27, label %bb.t
    i8 28, label %bb.t
    i8 29, label %bb.t
    i8 30, label %bb.t
    i8 31, label %bb.t
    i8 32, label %bb.t
    i8 33, label %bb.t
    i8 34, label %bb.t
    i8 35, label %bb.t
    i8 36, label %bb.t
    i8 37, label %bb.t
    i8 38, label %bb.t
    i8 39, label %bb.t
    i8 40, label %bb.t
    i8 41, label %bb.t
    i8 42, label %bb.t
    i8 43, label %bb.t
    i8 44, label %bb.t
    i8 45, label %bb.t
    i8 46, label %bb.t
    i8 47, label %bb.t
    i8 48, label %bb.t
    i8 49, label %bb.t
    i8 50, label %bb.t
    i8 51, label %bb.t
    i8 52, label %bb.t
    i8 53, label %bb.t
    i8 54, label %bb.t
    i8 55, label %bb.t
    i8 56, label %bb.t
    i8 57, label %bb.t
    i8 58, label %bb.t
    i8 59, label %bb.t
    i8 60, label %bb.t
    i8 61, label %bb.t
    i8 62, label %bb.t
    i8 63, label %bb.t
    i8 64, label %bb.t
    i8 65, label %bb.t
    i8 66, label %bb.t
    i8 67, label %bb.t
    i8 68, label %bb.t
    i8 69, label %bb.t
    i8 70, label %bb.t
    i8 71, label %bb.t
    i8 72, label %bb.t
    i8 73, label %bb.t
    i8 74, label %bb.t
    i8 75, label %bb.t
    i8 76, label %bb.t
    i8 77, label %bb.t
    i8 78, label %bb.t
    i8 79, label %bb.t
    i8 80, label %bb.t
    i8 81, label %bb.t
    i8 82, label %bb.t
    i8 83, label %bb.t
    i8 84, label %bb.t
    i8 85, label %bb.t
    i8 86, label %bb.t
    i8 87, label %bb.t
    i8 88, label %bb.t
    i8 89, label %bb.t
    i8 90, label %bb.t
    i8 91, label %bb.t
    i8 92, label %bb.t
    i8 93, label %bb.t
    i8 94, label %bb.t
    i8 95, label %bb.t
    i8 96, label %bb.t
    i8 97, label %bb.t
    i8 98, label %bb.t
    i8 99, label %bb.t
    i8 100, label %bb.t
    i8 101, label %bb.t
    i8 102, label %bb.t
    i8 103, label %bb.t
    i8 104, label %bb.t
    i8 105, label %bb.t
    i8 106, label %bb.t
    i8 107, label %bb.t
    i8 108, label %bb.t
    i8 109, label %bb.t
    i8 110, label %bb.t
    i8 111, label %bb.t
    i8 112, label %bb.t
    i8 113, label %bb.t
    i8 114, label %bb.t
    i8 115, label %bb.t
    i8 116, label %bb.t
    i8 117, label %bb.t
    i8 118, label %bb.t
    i8 119, label %bb.t
    i8 120, label %bb.t
    i8 121, label %bb.t
    i8 122, label %bb.t
    i8 123, label %bb.t
    i8 124, label %bb.t
    i8 125, label %bb.t
    i8 126, label %bb.t
    i8 127, label %bb.t
    i8 -128, label %bb.t
    i8 -127, label %bb.t
    i8 -126, label %bb.t
    i8 -125, label %bb.t
    i8 -124, label %bb.t
    i8 -123, label %bb.t
    i8 -122, label %bb.t
    i8 -121, label %bb.t
    i8 -120, label %bb.t
    i8 -119, label %bb.t
    i8 -118, label %bb.t
    i8 -117, label %bb.t
    i8 -116, label %bb.t
    i8 -115, label %bb.t
    i8 -114, label %bb.t
    i8 -113, label %bb.t
    i8 -112, label %bb.t
    i8 -111, label %bb.t
    i8 -110, label %bb.t
    i8 -109, label %bb.t
    i8 -108, label %bb.t
    i8 -107, label %bb.t
    i8 -106, label %bb.t
    i8 -105, label %bb.t
    i8 -104, label %bb.t
    i8 -103, label %bb.t
    i8 -102, label %bb.t
    i8 -101, label %bb.t
    i8 -100, label %bb.t
    i8 -99, label %bb.t
    i8 -98, label %bb.t
    i8 -97, label %bb.t
    i8 -96, label %bb.t
    i8 -95, label %bb.t
    i8 -94, label %bb.t
    i8 -93, label %bb.t
    i8 -92, label %bb.t
    i8 -91, label %bb.t
    i8 -90, label %bb.t
    i8 -89, label %bb.t
    i8 -88, label %bb.t
    i8 -87, label %bb.t
    i8 -86, label %bb.t
    i8 -85, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %1, %i.t
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i8, ptr %i.v, align 4
  switch i8 %i.w, label %.thread [
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %4 = load ptr, ptr %3, align 8
  %i.x = icmp eq ptr %1, %4
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %1, %i.z
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  br label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit"

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 4 uses
  %.idx23 = shl nuw nsw i64 %i.ai, 4              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx23
  %i.ak = lshr i64 %i.ai, 2                       ; 2 uses
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %i.al = and i64 %.idx23, 9223372036854775744
  %scevgep.i.i.i = getelementptr i8, ptr %i.ag, i64 %i.al
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.preheader.i.i.i
  %.051.i.i.i = phi i64 [ %i.av, %bb.l ], [ %i.ak, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02950.i.i.i = phi ptr [ %i.au, %bb.l ], [ %i.ag, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.am = getelementptr i8, ptr %.02950.i.i.i, i64 8
  %.029.val39.i.i.i = load ptr, ptr %i.am, align 8
  %i.an = icmp eq ptr %.029.val39.i.i.i, %1
  br i1 %i.an, label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr i8, ptr %.02950.i.i.i, i64 24
  %.val37.i.i.i = load ptr, ptr %i.ao, align 8
  %i.ap = icmp eq ptr %.val37.i.i.i, %1
  br i1 %i.ap, label %.loopexit.split.loop.exit41.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %.02950.i.i.i, i64 40
  %.val35.i.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = icmp eq ptr %.val35.i.i.i, %1
  br i1 %i.ar, label %.loopexit.split.loop.exit43.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %.02950.i.i.i, i64 56
  %.val33.i.i.i = load ptr, ptr %i.as, align 8
  %i.at = icmp eq ptr %.val33.i.i.i, %1
  br i1 %i.at, label %.loopexit.split.loop.exit45.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.02950.i.i.i, i64 64
  %i.av = add nsw i64 %.051.i.i.i, -1
  %i.aw = icmp sgt i64 %.051.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !351

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.l
  %i.ax = and i64 %i.ai, 3
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.h
  %.pre-phi57.i.i.i = phi i64 [ %i.ax, %._crit_edge.loopexit.i.i.i ], [ %i.ai, %bb.h ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ag, %bb.h ] ; 5 uses
  switch i64 %.pre-phi57.i.i.i, label %bb.r [
    i64 3, label %bb.m
    i64 2, label %bb.o
    i64 1, label %bb.q
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = getelementptr i8, ptr %.029.lcssa.i.i.i, i64 8
  %.029.val.i.i.i = load ptr, ptr %i.ay, align 8
  %i.az = icmp eq ptr %.029.val.i.i.i, %1
  br i1 %i.az, label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.ba, %bb.n ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bb = getelementptr i8, ptr %.1.i.i.i, i64 8
  %.1.val.i.i.i = load ptr, ptr %i.bb, align 8
  %i.bc = icmp eq ptr %.1.val.i.i.i, %1
  br i1 %i.bc, label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.bd, %bb.p ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.be = getelementptr i8, ptr %.2.i.i.i, i64 8
  %.2.val.i.i.i = load ptr, ptr %i.be, align 8
  %i.bf = icmp eq ptr %.2.val.i.i.i, %1
  br i1 %i.bf, label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit", label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i
  br label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit"

.loopexit.split.loop.exit41.i.i.i:                ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.02950.i.i.i, i64 16
  br label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit"

.loopexit.split.loop.exit43.i.i.i:                ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.02950.i.i.i, i64 32
  br label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit"

.loopexit.split.loop.exit45.i.i.i:                ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.02950.i.i.i, i64 48
  br label %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit"

"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit": ; preds = %.lr.ph.i.i.i, %.loopexit.split.loop.exit45.i.i.i, %.loopexit.split.loop.exit43.i.i.i, %.loopexit.split.loop.exit41.i.i.i, %bb.r, %bb.q, %bb.o, %bb.m, %bb.g
  %.0.in.in = phi ptr [ %i.ae, %bb.g ], [ %.1.i.i.i, %bb.o ], [ %i.aj, %bb.r ], [ %.2.i.i.i, %bb.q ], [ %.029.lcssa.i.i.i, %bb.m ], [ %i.bh, %.loopexit.split.loop.exit43.i.i.i ], [ %i.bg, %.loopexit.split.loop.exit41.i.i.i ], [ %i.bi, %.loopexit.split.loop.exit45.i.i.i ], [ %.02950.i.i.i, %.lr.ph.i.i.i ]
  %.0.in = load i8, ptr %.0.in.in, align 4
  %.0 = icmp eq i8 %.0.in, 2
  br label %.thread

bb.s:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.455) #25
  unreachable

bb.t:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.455) #25
  unreachable

bb.u:                                             ; preds = %bb.a
  unreachable

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e, %bb.a, %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit", %bb.b
  %.1 = phi i1 [ %i.u, %bb.b ], [ %.0, %"_ZSt7find_ifIPN2v88internal8compiler10turboshaft8SwitchOp4CaseEZNS3_19IsUnlikelySuccessorEPKNS3_5BlockES9_RKNS3_5GraphEE3$_0ET_SE_SE_T0_.exit" ], [ false, %bb.a ], [ %i.x, %bb.d ], [ false, %bb.c ], [ %i.aa, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9Operation12IsOnlyUserOfERKS3_RKNS2_5GraphE(ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 4
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = zext i16 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 2                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.m = ptrtoint ptr %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.m, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %.not6.i.i = icmp eq i16 %i.j, 0
  br i1 %.not6.i.i, label %_ZSt5countIPKN2v88internal8compiler10turboshaft7OpIndexES4_ENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.s = add nsw i64 %.idx, -4                    ; 2 uses
  %i.t = lshr exact i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.u, 9223372036854775804      ; 3 uses
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi12 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %i.x = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4
  %wide.load13 = load <2 x i32>, ptr %i.y, align 4
  %i.z = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.aa = icmp eq <2 x i32> %wide.load13, %broadcast.splat
  %i.ab = zext <2 x i1> %i.z to <2 x i64>
  %i.ac = zext <2 x i1> %i.aa to <2 x i64>
  %i.ad = add <2 x i64> %vec.phi, %i.ab           ; 2 uses
  %i.ae = add <2 x i64> %vec.phi12, %i.ac         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !352

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZSt5countIPKN2v88internal8compiler10turboshaft7OpIndexES4_ENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit, label %.lr.ph.i.i.preheader14

.lr.ph.i.i.preheader14:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ag, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader14, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader14 ]
  %.057.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader14 ] ; 2 uses
  %i.ah = load i32, ptr %.057.i.i, align 4
  %i.ai = icmp eq i32 %i.ah, %i.r
  %i.aj = zext i1 %i.ai to i64
  %spec.select.i.i = add nuw nsw i64 %.08.i.i, %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.l
  br i1 %.not.i.i, label %_ZSt5countIPKN2v88internal8compiler10turboshaft7OpIndexES4_ENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !355

_ZSt5countIPKN2v88internal8compiler10turboshaft7OpIndexES4_ENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.al = zext i8 %i.b to i64
  %i.am = icmp eq i64 %.0.lcssa.i.i, %i.al
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZSt5countIPKN2v88internal8compiler10turboshaft7OpIndexES4_ENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit
  %.0 = phi i1 [ %i.am, %_ZSt5countIPKN2v88internal8compiler10turboshaft7OpIndexES4_ENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9Operation15IsProtectedLoadEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4
  switch i8 %i.a, label %.thread [
    i8 77, label %.thread.sink.split
    i8 46, label %.thread.sink.split
  ]

.thread.sink.split:                               ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 4
  %i.e = icmp ne i8 %i.d, 0
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %.thread.sink.split ]
  ret i1 %i.f
}

declare noundef zeroext i1 @_ZNK2v88internal9LocalHeap8IsParkedEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #1

declare void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #1

declare void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler11JSONEscaped13PipeCharacterERSoc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  switch i8 %1, label %bb.i [
    i8 34, label %bb.b
    i8 92, label %bb.c
    i8 8, label %bb.d
    i8 12, label %bb.e
    i8 10, label %bb.f
    i8 13, label %bb.g
    i8 9, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.889, i64 noundef 2) #24 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.890, i64 noundef 2) #24 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.891, i64 noundef 2) #24 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.892, i64 noundef 2) #24 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.893, i64 noundef 2) #24 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.894, i64 noundef 2) #24 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.895, i64 noundef 2) #24 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %bb.j

end_hunk_0
