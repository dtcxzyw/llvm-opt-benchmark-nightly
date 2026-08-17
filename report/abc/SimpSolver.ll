inline.NumInlined: 754
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE9removeMinEv:bb.a
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10   ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !10
  %i.n = sext i32 %i.c to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.n
  store i32 -1, ptr %i.o, align 4, !tbaa !10
  %i.p = load i32, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !76
  %i.r = icmp sgt i32 %i.p, 2
  br i1 %i.r, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = load i32, ptr %i.b, align 4, !tbaa !10   ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !nonnull !58, !align !87
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 4 uses
  %i.v = shl nsw i32 %i.s, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %i.z = load ptr, ptr %i.j, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.aa = phi i32 [ %i.q, %.lr.ph.i ], [ %i.bz, %bb.f ]
  %i.ab = phi i32 [ 1, %.lr.ph.i ], [ %i.by, %bb.f ] ; 4 uses
  %i.ac = phi i32 [ 0, %.lr.ph.i ], [ %i.bx, %bb.f ]
  %.01922.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bf, %bb.f ] ; 3 uses
  %i.ad = add nsw i32 %i.ac, 2                    ; 3 uses
  %i.ae = icmp slt i32 %i.ad, %i.aa
  br i1 %i.ae, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.phi.trans.insert.i = sext i32 %i.ab to i64
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre.phi.trans.insert.i
  %.pre25.pre.i = load i32, ptr %.phi.trans.insert.phi.trans.insert.i, align 4, !tbaa !10 ; 2 uses
  %.pre.i = shl nsw i32 %.pre25.pre.i, 1
  %.pre35.i = sext i32 %.pre.i to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10 ; 2 uses
  %i.ai = sext i32 %i.ab to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10 ; 2 uses
  %i.al = shl nsw i32 %i.ah, 1
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.u, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !10
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, %i.ap
  %i.au = shl nsw i32 %i.ak, 1
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.u, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !10
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, %i.ay
  %i.bd = icmp ult i64 %i.at, %i.bc
  br i1 %i.bd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i
  %.pre-phi32.i = phi i64 [ %i.am, %bb.c ], [ %.pre35.i, %._crit_edge.i ], [ %i.av, %bb.d ]
  %i.be = phi i32 [ %i.ah, %bb.c ], [ %.pre25.pre.i, %._crit_edge.i ], [ %i.ak, %bb.d ] ; 2 uses
  %i.bf = phi i32 [ %i.ad, %bb.c ], [ %i.ab, %._crit_edge.i ], [ %i.ab, %bb.d ] ; 3 uses
  %i.bg = getelementptr [4 x i8], ptr %i.u, i64 %.pre-phi32.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !10
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %i.bg, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !10
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.bl, %i.bi
  %i.bn = load i32, ptr %i.x, align 4, !tbaa !10
  %i.bo = sext i32 %i.bn to i64
  %i.bp = load i32, ptr %i.y, align 4, !tbaa !10
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bq, %i.bo
  %i.bs = icmp ult i64 %i.bm, %i.br
  br i1 %i.bs, label %bb.f, label %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE13percolateDownEi.exit

bb.f:                                             ; preds = %bb.e
  %i.bt = sext i32 %.01922.i to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bt
  store i32 %i.be, ptr %i.bu, align 4, !tbaa !10
  %i.bv = sext i32 %i.be to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bv
  store i32 %.01922.i, ptr %i.bw, align 4, !tbaa !10
  %i.bx = shl nsw i32 %i.bf, 1                    ; 2 uses
  %i.by = or disjoint i32 %i.bx, 1                ; 2 uses
  %i.bz = load i32, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.b, label %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE13percolateDownEi.exit

_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE13percolateDownEi.exit: ; preds = %bb.e, %bb.f
  %.019.lcssa.ph.i = phi i32 [ %i.bf, %bb.f ], [ %.01922.i, %bb.e ] ; 2 uses
  %.pre33.i = sext i32 %.019.lcssa.ph.i to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre33.i
  store i32 %i.s, ptr %i.cb, align 4, !tbaa !10
  %i.cc = sext i32 %i.s to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cc
  store i32 %.019.lcssa.ph.i, ptr %i.cd, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE13percolateDownEi.exit, %bb.a
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5clearEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5Gluco3vecINS0_IjEEE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %_ZN5Gluco3vecIjED2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !77
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %i.e = phi ptr [ %.pre, %._crit_edge.i.loopexit ], [ %i.a, %.preheader.i ]
  store i32 0, ptr %i.b, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.e) #24
  store ptr null, ptr %0, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !188
  br label %_ZN5Gluco3vecINS0_IjEEE5clearEb.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN5Gluco3vecIjED2Ev.exit.i
  %i.g = phi i32 [ %i.l, %_ZN5Gluco3vecIjED2Ev.exit.i ], [ %i.c, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN5Gluco3vecIjED2Ev.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN5Gluco3vecIjED2Ev.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !67
  tail call void @free(ptr noundef nonnull %i.j) #24
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !78
  br label %_ZN5Gluco3vecIjED2Ev.exit.i

_ZN5Gluco3vecIjED2Ev.exit.i:                      ; preds = %.preheader.i.i.i, %.lr.ph.i
  %i.l = phi i32 [ %i.g, %.lr.ph.i ], [ %.pre.i, %.preheader.i.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !79

_ZN5Gluco3vecINS0_IjEEE5clearEb.exit:             ; preds = %bb.b, %._crit_edge.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %.not.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i4, label %_ZN5Gluco3vecIcE5clearEb.exit, label %.preheader.i5

.preheader.i5:                                    ; preds = %_ZN5Gluco3vecINS0_IjEEE5clearEb.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8, !tbaa !74
  tail call void @free(ptr noundef nonnull %i.p) #24
  store ptr null, ptr %i.o, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.r, align 4, !tbaa !81
  br label %_ZN5Gluco3vecIcE5clearEb.exit

_ZN5Gluco3vecIcE5clearEb.exit:                    ; preds = %_ZN5Gluco3vecINS0_IjEEE5clearEb.exit, %.preheader.i5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 2 uses
  %.not.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i6, label %_ZN5Gluco3vecIiE5clearEb.exit, label %.preheader.i7

.preheader.i7:                                    ; preds = %_ZN5Gluco3vecIcE5clearEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !76
  tail call void @free(ptr noundef nonnull %i.t) #24
  store ptr null, ptr %i.s, align 8, !tbaa !75
  br label %_ZN5Gluco3vecIiE5clearEb.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.w, align 8, !tbaa !74
  br label %_ZN5Gluco3vecIiE5clearEb.exit.sink.split

_ZN5Gluco3vecIiE5clearEb.exit.sink.split:         ; preds = %bb.c, %.preheader.i7
  %.sink12 = phi i64 [ 44, %.preheader.i7 ], [ 40, %bb.c ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %_ZN5Gluco3vecIiE5clearEb.exit

_ZN5Gluco3vecIiE5clearEb.exit:                    ; preds = %_ZN5Gluco3vecIiE5clearEb.exit.sink.split, %_ZN5Gluco3vecIcE5clearEb.exit
  ret void
}

declare void @_ZN5Gluco6Solver16rebuildOrderHeapEv(ptr noundef nonnull align 8 dereferenceable(1216)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Gluco10SimpSolver14cleanUpClausesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1484) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1352
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.g, %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !75
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i
  store i32 0, ptr %i.c, align 8, !tbaa !76
  br label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.at, %bb.g ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %i.n = sext i32 %i.l to i64                     ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.r = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !67   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !66   ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !146, !nonnull !58, !align !87
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.y = phi i32 [ %i.t, %.lr.ph.i.i ], [ %i.aj, %bb.f ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %.017.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 4
  %i.ae = and i64 %i.ad, 3
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %.017.i.i, 1
  %i.ah = sext i32 %.017.i.i to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ah
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !10
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %i.y, %bb.d ], [ %.pre.i.i, %bb.e ] ; 3 uses
  %.1.i.i = phi i32 [ %.017.i.i, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i.i, %i.ak
  br i1 %i.al, label %bb.d, label %._crit_edge.i.i, !llvm.loop !147

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.an = sub nsw i32 %i.am, %.1.i.i              ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ap = sub i32 %i.aj, %i.an
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !67
  br label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i, %bb.c
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !10
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.m, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !70
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i, %bb.b
  %i.at = phi i32 [ %i.i, %bb.b ], [ %.pre.i, %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge.i, !llvm.loop !189

_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit: ; preds = %._crit_edge.i, %.preheader.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %_ZN5Gluco3vecIjE6shrinkEi.exit

.lr.ph:                                           ; preds = %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !66 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.bd = phi i32 [ %i.ax, %.lr.ph ], [ %i.bo, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ]  ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 4
  %i.bj = and i64 %i.bi, 3
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i32 %.012, 1
  %i.bm = sext i32 %.012 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bm
  store i32 %i.bf, ptr %i.bn, align 4, !tbaa !10
  %.pre = load i32, ptr %i.aw, align 8, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bo = phi i32 [ %.pre, %bb.i ], [ %i.bd, %bb.h ] ; 3 uses
  %.1 = phi i32 [ %i.bl, %bb.i ], [ %.012, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.h, label %._crit_edge, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.j
  %i.br = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bs = sub nsw i32 %i.br, %.1                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i8, label %_ZN5Gluco3vecIjE6shrinkEi.exit

.lr.ph.i8:                                        ; preds = %._crit_edge
  %i.bu = sub i32 %i.bo, %i.bs
  store i32 %i.bu, ptr %i.aw, align 8, !tbaa !67
  br label %_ZN5Gluco3vecIjE6shrinkEi.exit

_ZN5Gluco3vecIjE6shrinkEi.exit:                   ; preds = %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit, %._crit_edge, %.lr.ph.i8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Gluco10SimpSolver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 8 dereferenceable(21) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader12, label %bb.d

.preheader12:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph15, label %.preheader

.lr.ph15:                                         ; preds = %.preheader12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 864
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %.preheader12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1436 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !101  ; 2 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !102  ; 3 uses
  %.not.i16 = icmp slt i32 %i.l, %i.m
  %i.n = sub i32 %i.l, %i.m
  %i.o = load i32, ptr %i.k, align 8              ; 2 uses
  %i.p = select i1 %.not.i16, i32 %i.o, i32 0
  %i.q = add nsw i32 %i.n, %i.p
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph19, label %._crit_edge20
end_hunk_0
begin_hunk_1_@_ZN5Gluco15ClauseAllocator5relocERjRS0_:bb.a
  %vec.phi48 = phi <4 x i32> [ zeroinitializer, %vector.ph44 ], [ %i.dv, %vector.body46 ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph44 ], [ %i.dw, %vector.body46 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index47 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load50 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !10
  %wide.load51 = load <4 x i32>, ptr %i.do, align 4, !tbaa !10
  %i.dp = lshr <4 x i32> %wide.load50, splat (i32 1)
  %i.dq = lshr <4 x i32> %wide.load51, splat (i32 1)
  %i.dr = and <4 x i32> %i.dp, splat (i32 31)
  %i.ds = and <4 x i32> %i.dq, splat (i32 31)
  %i.dt = shl nuw <4 x i32> splat (i32 1), %i.dr
  %i.du = shl nuw <4 x i32> splat (i32 1), %i.ds
  %i.dv = or <4 x i32> %i.dt, %vec.phi48          ; 2 uses
  %i.dw = or <4 x i32> %i.du, %vec.phi49          ; 2 uses
  %index.next52 = add nuw i64 %index47, 8         ; 2 uses
  %i.dx = icmp eq i64 %index.next52, %n.vec45
  br i1 %i.dx, label %middle.block53, label %vector.body46, !llvm.loop !200

middle.block53:                                   ; preds = %vector.body46
  %bin.rdx54 = or <4 x i32> %i.dw, %i.dv
  %i.dy = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx54) ; 2 uses
  %cmp.n55 = icmp eq i64 %i.dj, %n.vec45
  br i1 %cmp.n55, label %_ZN5Gluco6Clause15calcAbstractionEv.exit, label %scalar.ph42.preheader

scalar.ph42.preheader:                            ; preds = %.lr.ph.i, %middle.block53
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec45, %middle.block53 ]
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.dy, %middle.block53 ]
  br label %scalar.ph42

scalar.ph42:                                      ; preds = %scalar.ph42.preheader, %scalar.ph42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph42 ], [ %indvars.iv.i.ph, %scalar.ph42.preheader ] ; 2 uses
  %.07.i = phi i32 [ %i.ed, %scalar.ph42 ], [ %.07.i.ph, %scalar.ph42.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.dz, align 4, !tbaa !10
  %i.ea = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.eb = and i32 %i.ea, 31
  %i.ec = shl nuw i32 1, %i.eb
  %i.ed = or i32 %i.ec, %.07.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dj
  br i1 %exitcond.not.i, label %_ZN5Gluco6Clause15calcAbstractionEv.exit, label %scalar.ph42, !llvm.loop !201

_ZN5Gluco6Clause15calcAbstractionEv.exit:         ; preds = %scalar.ph42, %middle.block53, %bb.j
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.dy, %middle.block53 ], [ %i.ed, %scalar.ph42 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dj
  store i32 %.0.lcssa.i, ptr %i.ef, align 4, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN5Gluco6Clause15calcAbstractionEv.exit, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Gluco10SimpSolver14garbageCollectEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.Gluco::ClauseAllocator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.not.i.not.i.i = icmp eq i32 %i.c, %i.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %1, i8 0, i64 20, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN5Gluco15ClauseAllocatorC2Ej.exit, label %.preheader.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.preheader.i.i
  %i.h = icmp ult i32 %i.o, %i.f
  br i1 %i.h, label %.preheader.i.preheader.i.i, label %bb.c, !llvm.loop !202

.preheader.i.preheader.i.i:                       ; preds = %bb.a, %.preheader.i.i.i
  %i.i = phi i32 [ %i.o, %.preheader.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = lshr i32 %i.i, 3
  %i.l = add nuw i32 %i.j, %i.k
  %i.m = and i32 %i.l, -2
  %i.n = add i32 %i.i, 2
  %i.o = add i32 %i.n, %i.m                       ; 5 uses
  %.not6.i.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i.not.i.i, label %bb.b, label %.preheader.i.i.i, !llvm.loop !202

bb.b:                                             ; preds = %.preheader.i.preheader.i.i
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

bb.c:                                             ; preds = %.preheader.i.i.i
  store i32 %i.o, ptr %i.g, align 4, !tbaa !203
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %malloc.i.i = tail call ptr @malloc(i64 %i.q)   ; 2 uses
  %i.r = icmp eq ptr %malloc.i.i, null
  br i1 %i.r, label %bb.d, label %_ZN5GlucoL8xreallocEPvm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #25
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = icmp eq i32 %i.t, 12
  br i1 %i.u, label %bb.e, label %_ZN5GlucoL8xreallocEPvm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5GlucoL8xreallocEPvm.exit.i.i.i:               ; preds = %bb.d, %bb.c
  store ptr %malloc.i.i, ptr %1, align 8, !tbaa !69
  br label %_ZN5Gluco15ClauseAllocatorC2Ej.exit

_ZN5Gluco15ClauseAllocatorC2Ej.exit:              ; preds = %bb.a, %_ZN5GlucoL8xreallocEPvm.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  tail call void @_ZN5Gluco10SimpSolver14cleanUpClausesEv(ptr noundef nonnull align 8 dereferenceable(1484) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !68, !range !57, !noundef !58
  store i8 %i.x, ptr %i.v, align 4, !tbaa !195
  call void @_ZN5Gluco10SimpSolver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 8 dereferenceable(21) %1)
  call void @_ZN5Gluco6Solver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull align 8 dereferenceable(21) %1) #24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !92
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5Gluco15ClauseAllocatorC2Ej.exit
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !107
  %i.ac = shl i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !107
  %i.af = shl i32 %i.ae, 2
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.ac, i32 noundef %i.af) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Gluco15ClauseAllocatorC2Ej.exit
  %i.ah = load i8, ptr %i.v, align 4, !tbaa !195, !range !57, !noundef !58
  store i8 %i.ah, ptr %i.w, align 4, !tbaa !195
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN5Gluco15RegionAllocatorIjED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ai) #24
  br label %_ZN5Gluco15RegionAllocatorIjED2Ev.exit

_ZN5Gluco15RegionAllocatorIjED2Ev.exit:           ; preds = %bb.h, %bb.g
  %i.aj = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x i32>, ptr %i.ak, align 8, !tbaa !10
  store <2 x i32> %i.al, ptr %i.b, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !106
  store i32 %i.an, ptr %i.d, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

declare void @_ZN5Gluco6Solver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1216), ptr noundef nonnull align 8 dereferenceable(21)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Gluco10SimpSolver5resetEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5Gluco6Solver5resetEv(ptr noundef nonnull align 8 dereferenceable(1216) %0) #24
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL8opt_grow, i64 48), align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store i32 %i.a, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1476
  store i32 0, ptr %i.c, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  store i32 0, ptr %i.d, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1252
  store i32 0, ptr %i.e, align 4, !tbaa !172
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i32 0, ptr %i.f, align 8, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5Gluco3vecIjE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 0, ptr %i.i, align 8, !tbaa !67
  br label %_ZN5Gluco3vecIjE5clearEb.exit

_ZN5Gluco3vecIjE5clearEb.exit:                    ; preds = %bb.a, %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %_ZN5Gluco3vecIcE5clearEb.exit, label %.preheader.i2

.preheader.i2:                                    ; preds = %_ZN5Gluco3vecIjE5clearEb.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i32 0, ptr %i.l, align 8, !tbaa !74
  br label %_ZN5Gluco3vecIcE5clearEb.exit

_ZN5Gluco3vecIcE5clearEb.exit:                    ; preds = %_ZN5Gluco3vecIjE5clearEb.exit, %.preheader.i2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i32 0, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 0, ptr %i.n, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 0, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %.not.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i3, label %_ZN5Gluco3vecIiE5clearEb.exit, label %.preheader.i4

.preheader.i4:                                    ; preds = %_ZN5Gluco3vecIcE5clearEb.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1368
  store i32 0, ptr %i.r, align 8, !tbaa !76
  br label %_ZN5Gluco3vecIiE5clearEb.exit

_ZN5Gluco3vecIiE5clearEb.exit:                    ; preds = %_ZN5Gluco3vecIcE5clearEb.exit, %.preheader.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !76
  %i.v = icmp sgt i32 %i.u, 0
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !75 ; 2 uses
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN5Gluco3vecIiE5clearEb.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !76
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %bb.b, label %.preheader.i.i, !llvm.loop !105

._crit_edge.i:                                    ; preds = %_ZN5Gluco3vecIiE5clearEb.exit
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %._crit_edge.i
  store i32 0, ptr %i.t, align 8, !tbaa !76
  br label %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit

_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit: ; preds = %._crit_edge.i, %.preheader.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1416
  tail call void @_ZN5Gluco5QueueIjE5clearEb(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73
  %.not.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i5, label %_ZN5Gluco3vecIcE5clearEb.exit7, label %.preheader.i6

.preheader.i6:                                    ; preds = %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 0, ptr %i.ai, align 8, !tbaa !74
  br label %_ZN5Gluco3vecIcE5clearEb.exit7

_ZN5Gluco3vecIcE5clearEb.exit7:                   ; preds = %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit, %.preheader.i6
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73
  %.not.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i8, label %.lr.ph.i.i, label %.preheader.i9

.preheader.i9:                                    ; preds = %_ZN5Gluco3vecIcE5clearEb.exit7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i32 0, ptr %i.al, align 8, !tbaa !74
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i9, %_ZN5Gluco3vecIcE5clearEb.exit7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 884
  store i8 1, ptr %i.an, align 4, !tbaa !68
  %i.ao = tail call noundef i32 @_ZN5Gluco15RegionAllocatorIjE5allocEi(ptr noundef nonnull align 8 dereferenceable(21) %i.am, i32 noundef 5) ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  store i64 6442450952, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 -2, ptr %i.as, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 %i.ao, ptr %i.au, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i8 0, ptr %i.av, align 8, !tbaa !72
  ret void
}

declare void @_ZN5Gluco6Solver5resetEv(ptr noundef nonnull align 8 dereferenceable(1216)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco6OptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !206
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !207
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !208
  %i.e = load atomic i8, ptr @_ZGVZN5Gluco6Option13getOptionListEvE7options acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN5Gluco6Option13getOptionListEv.exit, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Gluco6Option13getOptionListEvE7options) #24
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5Gluco6Option13getOptionListEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN5Gluco6Option13getOptionListEvE7options, i8 0, i64 16, i1 false)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5Gluco3vecIPNS_6OptionEED2Ev, ptr nonnull @_ZZN5Gluco6Option13getOptionListEvE7options, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Gluco6Option13getOptionListEvE7options) #24
  br label %_ZN5Gluco6Option13getOptionListEv.exit

_ZN5Gluco6Option13getOptionListEv.exit:           ; preds = %bb.a, %bb.b, %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 8), align 8, !tbaa !210 ; 5 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 12), align 4, !tbaa !214
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i

._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i: ; preds = %_ZN5Gluco6Option13getOptionListEv.exit
  %.pre.i = load ptr, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, align 8, !tbaa !215
  br label %_ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit

bb.d:                                             ; preds = %_ZN5Gluco6Option13getOptionListEv.exit
  %i.l = ashr i32 %i.i, 1
  %i.m = and i32 %i.l, -2
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.o = add nuw nsw i32 %i.n, 2                  ; 2 uses
  %i.p = sub nsw i32 2147483647, %i.i
  %i.q = icmp samesign ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, align 8, !tbaa !215
  %i.s = add nsw i32 %i.o, %i.i                   ; 2 uses
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 12), align 4, !tbaa !214
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.u) #27 ; 3 uses
  store ptr %i.v, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, align 8, !tbaa !215
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge

._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge: ; preds = %bb.e
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 8), align 8, !tbaa !210
  br label %_ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit:      ; preds = %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge, %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i
  %i.x = phi i32 [ %i.i, %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i ], [ %.pre, %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge ] ; 2 uses
  %i.y = phi ptr [ %.pre.i, %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i ], [ %i.v, %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge ]
  %i.z = add nsw i32 %i.x, 1
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 8), align 8, !tbaa !210
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %0, ptr %i.ab, align 8, !tbaa !216
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Gluco10BoolOptionD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Gluco10BoolOption5parseEPKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
.lr.ph.i:
  %i.a = load i8, ptr %1, align 1, !tbaa !70
  %.not11.i = icmp eq i8 %i.a, 45
  br i1 %.not11.i, label %.lr.ph.i6, label %.critedge

.lr.ph.i6:                                        ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !70
  %.not11.i8.not.not = icmp eq i8 %i.c, 110
  br i1 %.not11.i8.not.not, label %.lr.ph.i6.1, label %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13

.lr.ph.i6.1:                                      ; preds = %.lr.ph.i6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !70
  %.not11.i8.not.1.not = icmp eq i8 %i.e, 111
  br i1 %.not11.i8.not.1.not, label %.lr.ph.i6.2, label %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13

.lr.ph.i6.2:                                      ; preds = %.lr.ph.i6.1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !70
  %.not11.i8.not.2.not = icmp ne i8 %i.g, 45      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %spec.select = zext i1 %.not11.i8.not.2.not to i8
  %spec.select22 = select i1 %.not11.i8.not.2.not, ptr %i.b, ptr %i.h
  br label %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13
end_hunk_1
