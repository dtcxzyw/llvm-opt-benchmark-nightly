Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/conflicts?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@initialize_conflicts:bb.a
  store ptr %i.b, ptr @conflicts, align 8, !tbaa !8
  %i.c = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.d = shl i32 %i.c, 2
  %i.e = tail call ptr (i32, ...) @mallocate(i32 noundef %i.d) #14
  store ptr %i.e, ptr @shiftset, align 8, !tbaa !11
  %i.f = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.g = shl i32 %i.f, 2
  %i.h = tail call ptr (i32, ...) @mallocate(i32 noundef %i.g) #14
  store ptr %i.h, ptr @lookaheadset, align 8, !tbaa !11
  %i.i = load i32, ptr @nstates, align 4, !tbaa !4
  %i.j = shl i32 %i.i, 3
  %i.k = tail call ptr (i32, ...) @mallocate(i32 noundef %i.j) #14
  store ptr %i.k, ptr @err_table, align 8, !tbaa !13
  store i8 0, ptr @any_conflicts, align 1, !tbaa !16
  %i.l = load i32, ptr @nstates, align 4, !tbaa !4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @set_conflicts(i32 noundef %.03)
  %i.n = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.o = load i32, ptr @nstates, align 4, !tbaa !4
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare ptr @mallocate(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_conflicts(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @consistent, align 8, !tbaa !8
  %i.b = sext i32 %0 to i64                       ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.preheader61, label %.loopexit

.preheader61:                                     ; preds = %bb.a
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader61
  %i.g = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.h, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %.preheader61
  %i.l = phi i32 [ %i.e, %.preheader61 ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 3 uses
  %.not54 = icmp eq ptr %i.o, null
  br i1 %.not54, label %._crit_edge..loopexit60_crit_edge, label %bb.c

._crit_edge..loopexit60_crit_edge:                ; preds = %._crit_edge
  %.pre = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %.loopexit60

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !24   ; 2 uses
  %i.r = icmp sgt i16 %i.q, 0
  %.pre92 = load ptr, ptr @lookaheadset, align 8  ; 3 uses
  br i1 %i.r, label %.lr.ph65, label %.loopexit60

.lr.ph65:                                         ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.q to i64
  %i.s = load ptr, ptr @accessing_symbol, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph65, %bb.e
  %indvars.iv83 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next84, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv83
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not55 = icmp sgt i32 %i.aa, %i.z
  br i1 %.not55, label %bb.e, label %.loopexit60.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.z, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.pre92, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit60.loopexit, label %bb.d, !llvm.loop !30

.loopexit60.loopexit:                             ; preds = %bb.e, %bb.d
  %.pre93 = load i32, ptr @tokensetsize, align 4, !tbaa !4
  br label %.loopexit60

.loopexit60:                                      ; preds = %._crit_edge..loopexit60_crit_edge, %.loopexit60.loopexit, %bb.c
  %i.ai = phi i32 [ %i.l, %._crit_edge..loopexit60_crit_edge ], [ %.pre93, %.loopexit60.loopexit ], [ %i.l, %bb.c ]
  %i.aj = phi ptr [ %.pre, %._crit_edge..loopexit60_crit_edge ], [ %.pre92, %.loopexit60.loopexit ], [ %.pre92, %bb.c ] ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.al = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.b ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !29 ; 4 uses
  %i.ap = sext i16 %i.ao to i32
  %i.aq = sext i32 %i.ai to i64                   ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.aq ; 4 uses
  %i.as = load i16, ptr %i.am, align 2, !tbaa !29 ; 3 uses
  %i.at = icmp slt i16 %i.as, %i.ao
  br i1 %i.at, label %.lr.ph69.preheader, label %._crit_edge70

.lr.ph69.preheader:                               ; preds = %.loopexit60
  %i.au = sext i16 %i.as to i64
  %wide.trip.count89 = sext i16 %i.ao to i64
  %.pre95 = load ptr, ptr @rprec, align 8, !tbaa !27
  %.pre97 = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.loopexit59
  %i.av = phi ptr [ %.pre97, %.lr.ph69.preheader ], [ %i.bp, %.loopexit59 ] ; 3 uses
  %i.aw = phi ptr [ %.pre95, %.lr.ph69.preheader ], [ %i.bq, %.loopexit59 ] ; 3 uses
  %indvars.iv86 = phi i64 [ %i.au, %.lr.ph69.preheader ], [ %indvars.iv.next87, %.loopexit59 ] ; 4 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %indvars.iv86
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !29
  %i.az = sext i16 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !29
  %.not57 = icmp eq i16 %i.bb, 0
  br i1 %.not57, label %.loopexit59, label %bb.f

bb.f:                                             ; preds = %.lr.ph69
  %i.bc = load ptr, ptr @LA, align 8, !tbaa !11
  %i.bd = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %indvars.iv86, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.044 = phi ptr [ %i.bg, %bb.f ], [ %i.bj, %bb.h ] ; 2 uses
  %.0 = phi ptr [ %i.bh, %bb.f ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bi = icmp ult ptr %.0, %i.ar
  br i1 %i.bi, label %bb.h, label %.loopexit59

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.bk = load i32, ptr %.044, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.bm = load i32, ptr %.0, align 4, !tbaa !4
  %i.bn = and i32 %i.bm, %i.bk
  %.not58 = icmp eq i32 %i.bn, 0
  br i1 %.not58, label %bb.g, label %bb.i, !llvm.loop !31

bb.i:                                             ; preds = %bb.h
  %i.bo = trunc nsw i64 %indvars.iv86 to i32
  tail call void @resolve_sr_conflict(i32 noundef %0, i32 noundef %i.bo)
  %.pre94 = load ptr, ptr @rprec, align 8, !tbaa !27
  %.pre96 = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.loopexit59

.loopexit59:                                      ; preds = %bb.g, %.lr.ph69, %bb.i
  %i.bp = phi ptr [ %.pre96, %bb.i ], [ %i.av, %.lr.ph69 ], [ %i.av, %bb.g ]
  %i.bq = phi ptr [ %.pre94, %bb.i ], [ %i.aw, %.lr.ph69 ], [ %i.aw, %bb.g ]
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge70.loopexit, label %.lr.ph69, !llvm.loop !32

._crit_edge70.loopexit:                           ; preds = %.loopexit59
  %.pre98 = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds [2 x i8], ptr %.pre98, i64 %i.b
  %.pre99 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !29
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %.loopexit60
  %i.br = phi i16 [ %.pre99, %._crit_edge70.loopexit ], [ %i.as, %.loopexit60 ] ; 2 uses
  %i.bs = icmp slt i16 %i.br, %i.ao
  br i1 %i.bs, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %._crit_edge70
  %i.bt = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 9 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 2 uses
  %i.bv = icmp ult ptr %i.bt, %i.ar
  br i1 %i.bv, label %.lr.ph74.us.us.preheader, label %.loopexit

.lr.ph74.us.us.preheader:                         ; preds = %.lr.ph81
  %i.bw = sext i16 %i.br to i32
  %i.bx = shl nsw i64 %i.aq, 2
  %i.by = add i64 %i.bx, %i.ak
  %i.bz = xor i64 %i.bu, -1
  %i.ca = add i64 %i.by, %i.bz
  %i.cb = and i64 %i.ca, -4
  %i.cc = add i64 %i.cb, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.cc
  %i.cd = shl nsw i64 %i.aq, 2
  %i.ce = add i64 %i.cd, %i.ak
  %i.cf = xor i64 %i.bu, -1
  %i.cg = add i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 28
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 3 uses
  %i.cj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bt, i64 %i.cj
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %.lr.ph74.us.us.preheader, %._crit_edge78.us.us
  %.379.us.us = phi i32 [ %i.dm, %._crit_edge78.us.us ], [ %i.bw, %.lr.ph74.us.us.preheader ] ; 2 uses
  %i.cl = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.cm = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.cn = mul i32 %i.cm, %.379.us.us
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.cl, i64 %i.co ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph74.us.us
  %.172.us.us = phi ptr [ %i.bt, %.lr.ph74.us.us ], [ %i.cs, %bb.l ] ; 2 uses
  %.14571.us.us = phi ptr [ %i.cp, %.lr.ph74.us.us ], [ %i.cq, %bb.l ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.14571.us.us, i64 4
  %i.cr = load i32, ptr %.14571.us.us, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw i8, ptr %.172.us.us, i64 4 ; 2 uses
  %i.ct = load i32, ptr %.172.us.us, align 4, !tbaa !4
  %i.cu = and i32 %i.ct, %i.cr
  %.not56.us.us = icmp eq i32 %i.cu, 0
  br i1 %.not56.us.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = load ptr, ptr @conflicts, align 8, !tbaa !8
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.b
  store i8 1, ptr %i.cw, align 1, !tbaa !16
  store i8 1, ptr @any_conflicts, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cx = icmp ult ptr %i.cs, %i.ar
  br i1 %i.cx, label %bb.j, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !33

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.l
  br i1 %min.iters.check, label %..preheader_crit_edge.us.us.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us.preheader
  %scevgep109 = getelementptr i8, ptr %i.cl, i64 %i.cc
  %i.cy = shl nsw i64 %i.co, 2
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.cy
  %bound0 = icmp ult ptr %i.bt, %scevgep110
  %bound1 = icmp ult ptr %i.cp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %..preheader_crit_edge.us.us.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cz = getelementptr i8, ptr %i.cp, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.da ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.cp, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !4, !alias.scope !34
  %wide.load112 = load <4 x i32>, ptr %i.db, align 4, !tbaa !4, !alias.scope !34
  %i.dc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load113 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  %wide.load114 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  %i.dd = or <4 x i32> %wide.load113, %wide.load
  %i.de = or <4 x i32> %wide.load114, %wide.load112
  store <4 x i32> %i.dd, ptr %next.gep, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  store <4 x i32> %i.de, ptr %i.dc, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge78.us.us, label %..preheader_crit_edge.us.us.preheader116

..preheader_crit_edge.us.us.preheader116:         ; preds = %vector.memcheck, %..preheader_crit_edge.us.us.preheader, %middle.block
  %.276.us.us.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %..preheader_crit_edge.us.us.preheader ], [ %i.ck, %middle.block ]
  %.24675.us.us.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %..preheader_crit_edge.us.us.preheader ], [ %i.cz, %middle.block ]
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader116, %..preheader_crit_edge.us.us
  %.276.us.us = phi ptr [ %i.di, %..preheader_crit_edge.us.us ], [ %.276.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 3 uses
  %.24675.us.us = phi ptr [ %i.dg, %..preheader_crit_edge.us.us ], [ %.24675.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.24675.us.us, i64 4
  %i.dh = load i32, ptr %.24675.us.us, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %.276.us.us, i64 4 ; 2 uses
  %i.dj = load i32, ptr %.276.us.us, align 4, !tbaa !4
  %i.dk = or i32 %i.dj, %i.dh
  store i32 %i.dk, ptr %.276.us.us, align 4, !tbaa !4
  %i.dl = icmp ult ptr %i.di, %i.ar
  br i1 %i.dl, label %..preheader_crit_edge.us.us, label %._crit_edge78.us.us, !llvm.loop !42

._crit_edge78.us.us:                              ; preds = %..preheader_crit_edge.us.us, %middle.block
  %i.dm = add nsw i32 %.379.us.us, 1              ; 2 uses
  %exitcond91.not = icmp eq i32 %i.dm, %i.ap
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph74.us.us, !llvm.loop !43

.loopexit:                                        ; preds = %._crit_edge78.us.us, %._crit_edge70, %.lr.ph81, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resolve_sr_conflict(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 1
  %i.d = add nsw i64 %i.c, 4
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.g = load ptr, ptr @rprec, align 8, !tbaa !27
  %i.h = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.i = sext i32 %1 to i64                       ; 4 uses
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !29
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !29   ; 2 uses
  %i.o = icmp sgt i32 %i.a, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %i.q = load ptr, ptr @LA, align 8, !tbaa !11
  %i.r = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.s = mul nsw i32 %i.r, %1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.t
  %i.v = sext i32 %0 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %flush_shift.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %flush_shift.exit ] ; 14 uses
  %.095 = phi ptr [ %i.f, %.lr.ph ], [ %.1, %flush_shift.exit ] ; 14 uses
  %.06194 = phi ptr [ %i.p, %.lr.ph ], [ %.162, %flush_shift.exit ] ; 6 uses
  %.06393 = phi ptr [ %i.u, %.lr.ph ], [ %.164, %flush_shift.exit ] ; 8 uses
  %.06592 = phi i32 [ 1, %.lr.ph ], [ %.166, %flush_shift.exit ] ; 5 uses
  %i.w = load i32, ptr %.06194, align 4, !tbaa !4 ; 2 uses
  %i.x = load i32, ptr %.06393, align 4, !tbaa !4 ; 2 uses
  %i.y = and i32 %i.w, %i.x
  %i.z = and i32 %i.y, %.06592
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %flush_shift.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr @sprec, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29 ; 3 uses
  %.not72 = icmp eq i16 %i.ac, 0
  br i1 %.not72, label %flush_shift.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp slt i16 %i.ac, %i.n
  br i1 %i.ad, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not79 = icmp eq i32 %i.ae, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.ag = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.aj = sext i16 %i.ai to i32
  %i.ak = load ptr, ptr @tags, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.aj, ptr noundef %i.am, ptr noundef nonnull @.str) #14 ; 0 uses
  %.pre98 = load i32, ptr %.06194, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi i32 [ %.pre98, %bb.f ], [ %i.w, %bb.e ]
  %i.ap = xor i32 %.06592, -1
  %i.aq = and i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %.06194, align 4, !tbaa !4
  %i.ar = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.v
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %flush_shift.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %i.av = load i16, ptr %i.au, align 2, !tbaa !24 ; 4 uses
  %i.aw = icmp sgt i16 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i, label %flush_shift.exit

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i16 %i.av to i64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 3 uses
  %i.ay = load ptr, ptr @accessing_symbol, align 8 ; 3 uses
  %xtraiter116 = and i64 %wide.trip.count.i, 1
  %i.az = icmp eq i16 %i.av, 1
  br i1 %i.az, label %.epil.preheader115, label %.lr.ph.i.new
end_hunk_0
begin_hunk_1_@print_reductions:bb.a
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.loopexitthread-pre-split, label %bb.y, !llvm.loop !98

.loopexitthread-pre-split:                        ; preds = %bb.ab, %bb.x, %._crit_edge259..loopexit_crit_edge
  %.ph = phi ptr [ %.pre316, %._crit_edge259..loopexit_crit_edge ], [ %.pre317, %bb.x ], [ %.pre317, %bb.ab ]
  %.pr = load i32, ptr @ntokens, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.loopexitthread-pre-split
  %i.jz = phi i32 [ %.pr, %.loopexitthread-pre-split ], [ %i.jr, %bb.z ]
  %i.ka = phi ptr [ %.ph, %.loopexitthread-pre-split ], [ %.pre317, %bb.z ]
  %i.kb = icmp sgt i32 %i.jz, 0
  br i1 %i.kb, label %.lr.ph275, label %._crit_edge276.split

.lr.ph275:                                        ; preds = %.loopexit
  %i.kc = icmp slt i16 %i.bx, %i.ca
  %i.kd = sext i32 %.2149 to i64                  ; 2 uses
  br i1 %i.kc, label %.lr.ph269.preheader, label %._crit_edge276.split

.lr.ph269.preheader:                              ; preds = %.lr.ph275
  %i.ke = load ptr, ptr @LA, align 8, !tbaa !11
  %i.kf = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.kg = mul nsw i32 %i.kf, %i.by
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kh
  %i.kj = sext i16 %i.bx to i64
  %wide.trip.count310 = sext i16 %i.ca to i64
  br label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %._crit_edge270
  %indvars.iv312 = phi i64 [ 0, %.lr.ph269.preheader ], [ %indvars.iv.next313, %._crit_edge270 ] ; 3 uses
  %.4154273 = phi i32 [ 1, %.lr.ph269.preheader ], [ %spec.select206, %._crit_edge270 ] ; 3 uses
  %.2166272 = phi ptr [ %i.ki, %.lr.ph269.preheader ], [ %spec.select205, %._crit_edge270 ] ; 2 uses
  %i.kk = load i32, ptr %i.ka, align 4, !tbaa !4
  %i.kl = and i32 %i.kk, %.4154273
  %.not197 = icmp ne i32 %i.kl, 0
  %. = zext i1 %.not197 to i32
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph269, %bb.ai
  %indvars.iv307 = phi i64 [ %i.kj, %.lr.ph269 ], [ %indvars.iv.next308, %bb.ai ] ; 3 uses
  %.0267 = phi i32 [ 0, %.lr.ph269 ], [ %.3, %bb.ai ] ; 3 uses
  %.3141266 = phi i32 [ %., %.lr.ph269 ], [ %.4, %bb.ai ] ; 2 uses
  %.7265 = phi ptr [ %.2166272, %.lr.ph269 ], [ %i.lx, %bb.ai ] ; 2 uses
  %i.km = load i32, ptr %.7265, align 4, !tbaa !4
  %i.kn = and i32 %i.km, %.4154273
  %.not198 = icmp eq i32 %i.kn, 0
  br i1 %.not198, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ko = icmp eq i32 %.3141266, 0
  br i1 %i.ko, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.kp = icmp eq i64 %indvars.iv307, %i.kd
  br i1 %i.kp, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kq = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ad
  %.not199 = icmp eq i32 %.0267, 0
  %.pre319 = load ptr, ptr @LAruleno, align 8, !tbaa !27 ; 2 uses
  br i1 %.not199, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kr = getelementptr inbounds [2 x i8], ptr %.pre319, i64 %i.kd
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !29 ; 2 uses
  %i.kt = sext i16 %i.ks to i32
  %i.ku = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.kv = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %indvars.iv312
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !8
  %i.ky = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.kz = sext i16 %i.ks to i64
  %i.la = getelementptr inbounds [2 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !29
  %i.lc = sext i16 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !8
  %i.lf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ku, ptr noundef nonnull @.str.13, ptr noundef %i.kx, i32 noundef %i.kt, ptr noundef %i.le) #14 ; 0 uses
  %.pre318 = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.ah, %bb.af
  %.sink = phi ptr [ %i.kq, %bb.af ], [ %.pre318, %bb.ah ], [ %.pre319, %bb.ag ]
  %.str.13.sink = phi ptr [ @.str.13, %bb.af ], [ @.str.11, %bb.ah ], [ @.str.11, %bb.ag ]
  %.3.ph = phi i32 [ %.0267, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.lg = getelementptr inbounds [2 x i8], ptr %.sink, i64 %indvars.iv307
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !29 ; 2 uses
  %i.li = sext i16 %i.lh to i32
  %i.lj = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.lk = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %indvars.iv312
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !8
  %i.ln = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.lo = sext i16 %i.lh to i64
  %i.lp = getelementptr inbounds [2 x i8], ptr %i.ln, i64 %i.lo
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !29
  %i.lr = sext i16 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !8
  %i.lu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lj, ptr noundef nonnull %.str.13.sink, ptr noundef %i.lm, i32 noundef %i.li, ptr noundef %i.lt) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ae, %bb.ac
  %.4 = phi i32 [ %.3141266, %bb.ac ], [ 1, %bb.ae ], [ 1, %.sink.split ]
  %.3 = phi i32 [ %.0267, %bb.ac ], [ 1, %bb.ae ], [ %.3.ph, %.sink.split ]
  %i.lv = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %.7265, i64 %i.lw
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge270, label %bb.ac, !llvm.loop !99

._crit_edge270:                                   ; preds = %bb.ai
  %i.ly = shl i32 %.4154273, 1                    ; 2 uses
  %i.lz = icmp eq i32 %i.ly, 0
  %spec.select205.idx = select i1 %i.lz, i64 4, i64 0
  %spec.select205 = getelementptr inbounds nuw i8, ptr %.2166272, i64 %spec.select205.idx
  %spec.select206 = tail call i32 @llvm.umax.i32(i32 %i.ly, i32 1)
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.ma = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next313, %i.mb
  br i1 %i.mc, label %.lr.ph269, label %._crit_edge276.split, !llvm.loop !100

._crit_edge276.split:                             ; preds = %._crit_edge270, %.lr.ph275, %.loopexit
  %i.md = icmp sgt i32 %.2149, -1
  br i1 %i.md, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge276.split
  %i.me = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.mf = load ptr, ptr @tags, align 8, !tbaa !46
  %i.mg = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.mh = sext i32 %.2146 to i64
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.mg, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !29
  %i.mk = sext i16 %i.mj to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !8
  %i.mn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.me, ptr noundef nonnull @.str.14, i32 noundef %.2146, ptr noundef %i.mm) #14 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge276.split
  %i.mo = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.mp = tail call i32 @putc(i32 noundef 10, ptr noundef %i.mo) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.r, %bb.ak, %._crit_edge231
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @finalize_conflicts() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @conflicts, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @shiftset, align 8, !tbaa !11 ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p2 _ZTS4errs", !15, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!21, !21, i64 0}
!21 = !{!"p2 _ZTS6shifts", !15, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS6shifts", !10, i64 0}
!24 = !{!25, !26, i64 10}
!25 = !{!"shifts", !23, i64 0, !26, i64 8, !26, i64 10, !6, i64 12}
!26 = !{!"short", !6, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 short", !10, i64 0}
!29 = !{!26, !26, i64 0}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !18, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !18, !40}
!43 = distinct !{!43, !18}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"p2 omnipotent char", !15, i64 0}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = !{!51, !26, i64 0}
!51 = !{!"errs", !26, i64 0, !6, i64 2}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS4errs", !10, i64 0}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !18, !40, !41}
!67 = distinct !{!67, !18, !40}
!68 = distinct !{!68, !18}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !18, !40, !41}
!75 = distinct !{!75, !18, !40}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !57}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18, !40, !41}
!84 = distinct !{!84, !18, !40}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18, !40, !41}
!87 = distinct !{!87, !18, !40}
!88 = distinct !{!88, !18}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !18, !40, !41}
!95 = distinct !{!95, !18, !40}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18}
end_hunk_1
