Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Solver?download=true
inline.NumInlined: 620
inline.NumDeleted: 139
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Solver8simplifyEv:bb.a
  br i1 %i.l, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %_ZN6Solver15removeSatisfiedER3vecIP6ClauseE.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i
  %i.r = phi i32 [ %i.o, %.lr.ph.i ], [ %i.ak, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %.019.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.u, align 4, !tbaa !74
  %i.x = lshr i32 %i.w, 3                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !52
  %wide.trip.count.i.i = zext nneg i32 %i.x to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.i, !llvm.loop !92

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.z, align 4, !tbaa !4 ; 2 uses
  %i.aa = ashr i32 %.sroa.0.0.copyload.i.i.i, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !67  ; 2 uses
  %i.ae = trunc i32 %.sroa.0.0.copyload.i.i.i to i1
  %i.af = sub i8 0, %i.ad
  %.sroa.0.0.i.i.i.i = select i1 %i.ae, i8 %i.af, i8 %i.ad
  %i.ag = icmp eq i8 %.sroa.0.0.i.i.i.i, 1
  br i1 %i.ag, label %_ZNK6Solver9satisfiedERK6Clause.exit.i, label %bb.h

_ZNK6Solver9satisfiedERK6Clause.exit.i:           ; preds = %bb.i
  tail call void @_ZN6Solver12detachClauseER6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.u)
  tail call void @free(ptr noundef nonnull align 4 dereferenceable(8) %i.u) #18
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !44
  br label %bb.j

.loopexit.i:                                      ; preds = %bb.h, %bb.g
  %i.ah = add nsw i32 %.019.i, 1
  %i.ai = sext i32 %.019.i to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ai
  store ptr %i.u, ptr %i.aj, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %_ZNK6Solver9satisfiedERK6Clause.exit.i
  %i.ak = phi i32 [ %.pre.i, %_ZNK6Solver9satisfiedERK6Clause.exit.i ], [ %i.r, %.loopexit.i ] ; 3 uses
  %.1.i = phi i32 [ %.019.i, %_ZNK6Solver9satisfiedERK6Clause.exit.i ], [ %i.ah, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %bb.g, label %._crit_edge.i, !llvm.loop !128

._crit_edge.i:                                    ; preds = %bb.j
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ao = sub nsw i32 %i.an, %.1.i                ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i15.i, label %_ZN6Solver15removeSatisfiedER3vecIP6ClauseE.exit

.lr.ph.i15.i:                                     ; preds = %._crit_edge.i
  %i.aq = sub i32 %i.ak, %i.ao
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !44
  br label %_ZN6Solver15removeSatisfiedER3vecIP6ClauseE.exit

_ZN6Solver15removeSatisfiedER3vecIP6ClauseE.exit: ; preds = %bb.f, %._crit_edge.i, %.lr.ph.i15.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !43, !range !70, !noundef !71
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6Solver15removeSatisfiedER3vecIP6ClauseE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6Solver15removeSatisfiedER3vecIP6ClauseE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %0, ptr %1, align 8, !tbaa !129
  call void @_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !51
  store i32 %i.aw, ptr %i.g, align 4, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !132
  %i.bb = add i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.j, align 8, !tbaa !89
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.l, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.l ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge26

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !133, !nonnull !71, !align !96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK6Solver9VarFilterclEi.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6Solver9VarFilterclEi.exit.thread ] ; 2 uses
  %.01420 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNK6Solver9VarFilterclEi.exit.thread ] ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !67
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_ZNK6Solver9VarFilterclEi.exit, label %_ZNK6Solver9VarFilterclEi.exit.thread

_ZNK6Solver9VarFilterclEi.exit:                   ; preds = %bb.b
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.n
  %i.t = load i8, ptr %i.s, align 1, !tbaa !67
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %_ZNK6Solver9VarFilterclEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK6Solver9VarFilterclEi.exit
  %i.u = sext i32 %.01420 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.u
  store i32 %i.m, ptr %i.v, align 4, !tbaa !4
  %i.w = add nsw i32 %.01420, 1
  %i.x = load i32, ptr %i.l, align 4, !tbaa !4
  %i.y = sext i32 %i.x to i64
  br label %_ZNK6Solver9VarFilterclEi.exit.thread

_ZNK6Solver9VarFilterclEi.exit.thread:            ; preds = %_ZNK6Solver9VarFilterclEi.exit, %bb.b, %bb.c
  %.sink42 = phi i64 [ %i.y, %bb.c ], [ %i.n, %bb.b ], [ %i.n, %_ZNK6Solver9VarFilterclEi.exit ]
  %.01420.sink = phi i32 [ %.01420, %bb.c ], [ -1, %bb.b ], [ -1, %_ZNK6Solver9VarFilterclEi.exit ]
  %.1 = phi i32 [ %i.w, %bb.c ], [ %.01420, %bb.b ], [ %.01420, %_ZNK6Solver9VarFilterclEi.exit ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.sink42
  store i32 %.01420.sink, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %_ZNK6Solver9VarFilterclEi.exit.thread
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ae = sub nsw i32 %i.ad, %.1                  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %_ZN3vecIiE6shrinkEi.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ag = sub i32 %i.aa, %i.ae                    ; 2 uses
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !55
  br label %_ZN3vecIiE6shrinkEi.exit

_ZN3vecIiE6shrinkEi.exit:                         ; preds = %._crit_edge, %.lr.ph.i
  %i.ah = phi i32 [ %i.aa, %._crit_edge ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %_ZN3vecIiE6shrinkEi.exit
  %i.aj = lshr i32 %i.ah, 1
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !54  ; 6 uses
  %.phi.trans.insert29.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = zext nneg i32 %i.aj to i64
  br label %bb.d

._crit_edge26:                                    ; preds = %_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit, %bb.a, %_ZN3vecIiE6shrinkEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph25, %_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit
  %indvars.iv30 = phi i64 [ %i.al, %.lr.ph25 ], [ %indvars.iv.next31, %_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit ] ; 2 uses
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next31 to i32  ; 3 uses
  %2 = and i64 %indvars.iv.next31, 4294967295     ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 2 uses
  %3 = shl nuw nsw i32 %indvars, 1                ; 2 uses
  %4 = or disjoint i32 %3, 1                      ; 2 uses
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.ap = icmp slt i32 %4, %i.ao
  %i.aq = sext i32 %i.an to i64                   ; 2 uses
  br i1 %i.ap, label %.lr.ph.i16, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.d
  %.pre30.i = load ptr, ptr %.phi.trans.insert29.i, align 8, !tbaa !54
  br label %_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit

.lr.ph.i16:                                       ; preds = %bb.d
  %i.ar = load ptr, ptr %0, align 8, !nonnull !71, !align !96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 4 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = load ptr, ptr %.phi.trans.insert29.i, align 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i16
  %i.aw = phi i32 [ %i.ao, %.lr.ph.i16 ], [ %i.bx, %bb.i ]
  %i.ax = phi i32 [ %4, %.lr.ph.i16 ], [ %i.bw, %bb.i ] ; 4 uses
  %i.ay = phi i32 [ %3, %.lr.ph.i16 ], [ %i.bv, %bb.i ]
  %.01922.i = phi i32 [ %indvars, %.lr.ph.i16 ], [ %i.bq, %bb.i ] ; 3 uses
  %i.az = add nsw i32 %i.ay, 2                    ; 3 uses
  %i.ba = icmp slt i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.phi.trans.insert.i = sext i32 %i.ax to i64
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %.pre.phi.trans.insert.i
  %.pre25.pre.i = load i32, ptr %.phi.trans.insert.phi.trans.insert.i, align 4, !tbaa !4 ; 2 uses
  %.phi.trans.insert26.phi.trans.insert.i = sext i32 %.pre25.pre.i to i64 ; 2 uses
  %.phi.trans.insert27.phi.trans.insert.i = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.phi.trans.insert26.phi.trans.insert.i
  %.pre28.pre.i = load double, ptr %.phi.trans.insert27.phi.trans.insert.i, align 8, !tbaa !8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.be = sext i32 %i.ax to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = sext i32 %i.bd to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !8 ; 2 uses
  %i.bk = sext i32 %i.bg to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !8 ; 2 uses
  %i.bn = fcmp ogt double %i.bj, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %.pre-phi33.i = phi i64 [ %i.bh, %bb.f ], [ %.phi.trans.insert26.phi.trans.insert.i, %._crit_edge.i ], [ %i.bk, %bb.g ]
  %i.bo = phi double [ %i.bj, %bb.f ], [ %.pre28.pre.i, %._crit_edge.i ], [ %i.bm, %bb.g ]
  %i.bp = phi i32 [ %i.bd, %bb.f ], [ %.pre25.pre.i, %._crit_edge.i ], [ %i.bg, %bb.g ]
  %i.bq = phi i32 [ %i.az, %bb.f ], [ %i.ax, %._crit_edge.i ], [ %i.ax, %bb.g ] ; 3 uses
  %i.br = fcmp ogt double %i.bo, %i.au
  br i1 %i.br, label %bb.i, label %.thread.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.bs = sext i32 %.01922.i to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bs
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.pre-phi33.i
  store i32 %.01922.i, ptr %i.bu, align 4, !tbaa !4
  %i.bv = shl nsw i32 %i.bq, 1                    ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 1                ; 2 uses
  %i.bx = load i32, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.by = icmp slt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.e, label %.thread.loopexit.i

.thread.loopexit.i:                               ; preds = %bb.i, %bb.h
  %.019.lcssa.ph.i = phi i32 [ %i.bq, %bb.i ], [ %.01922.i, %bb.h ] ; 2 uses
  %.pre34.i = sext i32 %.019.lcssa.ph.i to i64
  br label %_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit

_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit: ; preds = %..thread_crit_edge.i, %.thread.loopexit.i
  %.pre-phi35.i = phi i64 [ %2, %..thread_crit_edge.i ], [ %.pre34.i, %.thread.loopexit.i ]
  %i.bz = phi ptr [ %.pre30.i, %..thread_crit_edge.i ], [ %i.av, %.thread.loopexit.i ]
  %.019.lcssa.i = phi i32 [ %indvars, %..thread_crit_edge.i ], [ %.019.lcssa.ph.i, %.thread.loopexit.i ]
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %.pre-phi35.i
  store i32 %i.an, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.aq
  store i32 %.019.lcssa.i, ptr %i.cb, align 4, !tbaa !4
  %5 = trunc nuw i64 %indvars.iv30 to i32
  %i.cc = icmp sgt i32 %5, 1
  br i1 %i.cc, label %bb.d, label %._crit_edge26, !llvm.loop !136
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 -1, 2) i8 @_ZN6Solver6searchEii(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %class.vec.0, align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !137
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !137
  %i.e = icmp slt i32 %1, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 19 uses
  %i.g = icmp sgt i32 %2, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.outer

.outer:                                           ; preds = %.split, %bb.a
  %i.ai = phi ptr [ %i.fu, %.split ], [ null, %bb.a ] ; 5 uses
  %.0.ph = phi i32 [ %i.am, %.split ], [ 0, %bb.a ] ; 2 uses
  %i.aj = tail call noundef ptr @_ZN6Solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) ; 2 uses
  %.not147 = icmp eq ptr %i.aj, null
  br i1 %.not147, label %.lr.ph148, label %._crit_edge

.lr.ph148:                                        ; preds = %.outer
  %.not46 = icmp slt i32 %.0.ph, %1
  %or.cond = select i1 %i.e, i1 true, i1 %.not46
  br i1 %or.cond, label %.lr.ph148.split, label %bb.l

._crit_edge:                                      ; preds = %_ZN6Solver11cancelUntilEi.exit89, %.outer
  %.lcssa140 = phi ptr [ %i.aj, %.outer ], [ %i.lt, %_ZN6Solver11cancelUntilEi.exit89 ]
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !138
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.v, align 8, !tbaa !138
  %i.am = add nuw nsw i32 %.0.ph, 1
  %i.an = load i32, ptr %i.f, align 8, !tbaa !55
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN6Solver11cancelUntilEi.exit89.thread, label %bb.b

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.e
  %lpad.loopexit132 = landingpad { ptr, i32 }
          cleanup
  %.pre159 = load ptr, ptr %3, align 8, !tbaa !50
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.u, %bb.q
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %i.ap = phi ptr [ %i.ai, %.loopexit ], [ %.pre159, %.loopexit.split-lp.loopexit ], [ %i.ai, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit132, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp133, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i99 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i99, label %_ZN3vecI3LitED2Ev.exit, label %.preheader.i.i

bb.b:                                             ; preds = %._crit_edge
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN3vecI3LitE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  store i32 0, ptr %i.w, align 8, !tbaa !51
  br label %_ZN3vecI3LitE5clearEb.exit

_ZN3vecI3LitE5clearEb.exit:                       ; preds = %bb.b, %.preheader.i
  call void @_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %.lcssa140, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !4   ; 4 uses
  %i.ar = load i32, ptr %i.f, align 8, !tbaa !55
  %i.as = icmp sgt i32 %i.ar, %i.aq
  br i1 %i.as, label %bb.c, label %_ZN6Solver11cancelUntilEi.exit

bb.c:                                             ; preds = %_ZN3vecI3LitE5clearEb.exit
  %i.at = load i32, ptr %i.i, align 8, !tbaa !51  ; 3 uses
  %i.au = sext i32 %i.aq to i64                   ; 3 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %.not.not17.i = icmp sgt i32 %i.at, %i.ax
  br i1 %.not.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ay = sext i32 %i.at to i64
  br label %bb.d

._crit_edge.loopexit.i:                           ; preds = %_ZN6Solver14insertVarOrderEi.exit.i
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.az = phi i32 [ %i.at, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.lcssa15.i = phi ptr [ %i.av, %bb.c ], [ %i.bu, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.ax, %bb.c ], [ %i.bw, %._crit_edge.loopexit.i ]
  %i.ba = getelementptr inbounds [4 x i8], ptr %.lcssa15.i, i64 %i.au
  store i32 %.lcssa.i, ptr %i.ab, align 8, !tbaa !80
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.bc = icmp sgt i32 %i.az, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZN3vecI3LitE6shrinkEi.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  store i32 %i.bb, ptr %i.i, align 8, !tbaa !51
  br label %_ZN3vecI3LitE6shrinkEi.exit.i

_ZN3vecI3LitE6shrinkEi.exit.i:                    ; preds = %.lr.ph.i.i, %._crit_edge.i
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !55
  %i.be = icmp sgt i32 %i.bd, %i.aq
  br i1 %i.be, label %.lr.ph.i12.i, label %_ZN6Solver11cancelUntilEi.exit

.lr.ph.i12.i:                                     ; preds = %_ZN3vecI3LitE6shrinkEi.exit.i
  store i32 %i.aq, ptr %i.f, align 8, !tbaa !55
  br label %_ZN6Solver11cancelUntilEi.exit

bb.d:                                             ; preds = %_ZN6Solver14insertVarOrderEi.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6Solver14insertVarOrderEi.exit.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i
  %.sroa.01.0.copyload.i = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bh = ashr i32 %.sroa.01.0.copyload.i, 1      ; 3 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.bj = sext i32 %i.bh to i64                   ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !67
  %i.bl = load i32, ptr %i.y, align 8, !tbaa !55
  %i.bm = icmp slt i32 %i.bh, %i.bl
  br i1 %i.bm, label %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i.i, label %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i

_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i.i: ; preds = %bb.d
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bj
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %_ZN6Solver14insertVarOrderEi.exit.i, label %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i

_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i: ; preds = %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i.i, %bb.d
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !67
  %.not.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i, label %_ZN6Solver14insertVarOrderEi.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i
  invoke void @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef %i.bh)
          to label %_ZN6Solver14insertVarOrderEi.exit.i unwind label %.loopexit.split-lp.loopexit

_ZN6Solver14insertVarOrderEi.exit.i:              ; preds = %bb.e, %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i, %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i.i
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.au
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4  ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %.not.not.i = icmp sgt i64 %indvars.iv.next.i, %i.bx
  br i1 %.not.not.i, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !93

_ZN6Solver11cancelUntilEi.exit:                   ; preds = %.lr.ph.i12.i, %_ZN3vecI3LitE6shrinkEi.exit.i, %_ZN3vecI3LitE5clearEb.exit
  %i.by = load i32, ptr %i.w, align 8, !tbaa !51  ; 5 uses
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6Solver11cancelUntilEi.exit
  %i.ca = load ptr, ptr %3, align 8, !tbaa !50    ; 3 uses
  %.sroa.016.0.copyload = load i32, ptr %i.ca, align 4, !tbaa !4 ; 4 uses
  %i.cb = trunc i32 %.sroa.016.0.copyload to i1
  %i.cc = select i1 %i.cb, i8 -1, i8 1
  %i.cd = ashr i32 %.sroa.016.0.copyload, 1
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.cf = sext i32 %i.cd to i64                   ; 3 uses
end_hunk_0
