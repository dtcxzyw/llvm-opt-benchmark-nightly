Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/conflicts?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@initialize_conflicts:bb.a
  %i.j = shl i32 %i.i, 3
  %i.k = tail call ptr (i32, ...) @mallocate(i32 noundef %i.j) #14
  store ptr %i.k, ptr @err_table, align 8, !tbaa !18
  store i8 0, ptr @any_conflicts, align 1, !tbaa !19
  %i.l = load i32, ptr @nstates, align 4, !tbaa !10
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @set_conflicts(i32 noundef %.03)
  %i.n = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.o = load i32, ptr @nstates, align 4, !tbaa !10
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare ptr @mallocate(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_conflicts(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @consistent, align 8, !tbaa !13
  %i.b = sext i32 %0 to i64                       ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.preheader61, label %.loopexit

.preheader61:                                     ; preds = %bb.a
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader61
  %i.g = load ptr, ptr @lookaheadset, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.h, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.b, %.preheader61
  %i.l = phi i32 [ %i.e, %.preheader61 ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr @shift_table, align 8, !tbaa !22
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 3 uses
  %.not54 = icmp eq ptr %i.o, null
  br i1 %.not54, label %._crit_edge..loopexit60_crit_edge, label %bb.c

._crit_edge..loopexit60_crit_edge:                ; preds = %._crit_edge
  %.pre = load ptr, ptr @lookaheadset, align 8, !tbaa !15
  br label %.loopexit60

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !27   ; 2 uses
  %i.r = icmp sgt i16 %i.q, 0
  %.pre92 = load ptr, ptr @lookaheadset, align 8  ; 3 uses
  br i1 %i.r, label %.lr.ph65, label %.loopexit60

.lr.ph65:                                         ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.q to i64
  %i.s = load ptr, ptr @accessing_symbol, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph65, %bb.e
  %indvars.iv83 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next84, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv83
  %i.v = load i16, ptr %i.u, align 2, !tbaa !30
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !30
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = load i32, ptr @ntokens, align 4, !tbaa !10
  %.not55 = icmp sgt i32 %i.aa, %i.z
  br i1 %.not55, label %bb.e, label %.loopexit60.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.z, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.pre92, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !10
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit60.loopexit, label %bb.d, !llvm.loop !44

.loopexit60.loopexit:                             ; preds = %bb.e, %bb.d
  %.pre93 = load i32, ptr @tokensetsize, align 4, !tbaa !10
  br label %.loopexit60

.loopexit60:                                      ; preds = %._crit_edge..loopexit60_crit_edge, %.loopexit60.loopexit, %bb.c
  %i.ai = phi i32 [ %i.l, %._crit_edge..loopexit60_crit_edge ], [ %.pre93, %.loopexit60.loopexit ], [ %i.l, %bb.c ]
  %i.aj = phi ptr [ %.pre, %._crit_edge..loopexit60_crit_edge ], [ %.pre92, %.loopexit60.loopexit ], [ %.pre92, %bb.c ] ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.al = load ptr, ptr @lookaheads, align 8, !tbaa !29
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.b ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !30 ; 4 uses
  %i.ap = sext i16 %i.ao to i32
  %i.aq = sext i32 %i.ai to i64                   ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.aq ; 4 uses
  %i.as = load i16, ptr %i.am, align 2, !tbaa !30 ; 3 uses
  %i.at = icmp slt i16 %i.as, %i.ao
  br i1 %i.at, label %.lr.ph69.preheader, label %._crit_edge70

.lr.ph69.preheader:                               ; preds = %.loopexit60
  %i.au = sext i16 %i.as to i64
  %wide.trip.count89 = sext i16 %i.ao to i64
  %.pre95 = load ptr, ptr @rprec, align 8, !tbaa !29
  %.pre97 = load ptr, ptr @LAruleno, align 8, !tbaa !29
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.loopexit59
  %i.av = phi ptr [ %.pre97, %.lr.ph69.preheader ], [ %i.bp, %.loopexit59 ] ; 3 uses
  %i.aw = phi ptr [ %.pre95, %.lr.ph69.preheader ], [ %i.bq, %.loopexit59 ] ; 3 uses
  %indvars.iv86 = phi i64 [ %i.au, %.lr.ph69.preheader ], [ %indvars.iv.next87, %.loopexit59 ] ; 4 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %indvars.iv86
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !30
  %i.az = sext i16 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !30
  %.not57 = icmp eq i16 %i.bb, 0
  br i1 %.not57, label %.loopexit59, label %bb.f

bb.f:                                             ; preds = %.lr.ph69
  %i.bc = load ptr, ptr @LA, align 8, !tbaa !15
  %i.bd = load i32, ptr @tokensetsize, align 4, !tbaa !10
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %indvars.iv86, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr @lookaheadset, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.044 = phi ptr [ %i.bg, %bb.f ], [ %i.bj, %bb.h ] ; 2 uses
  %.0 = phi ptr [ %i.bh, %bb.f ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bi = icmp ult ptr %.0, %i.ar
  br i1 %i.bi, label %bb.h, label %.loopexit59

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.bk = load i32, ptr %.044, align 4, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.bm = load i32, ptr %.0, align 4, !tbaa !10
  %i.bn = and i32 %i.bm, %i.bk
  %.not58 = icmp eq i32 %i.bn, 0
  br i1 %.not58, label %bb.g, label %bb.i, !llvm.loop !45

bb.i:                                             ; preds = %bb.h
  %i.bo = trunc nsw i64 %indvars.iv86 to i32
  tail call void @resolve_sr_conflict(i32 noundef %0, i32 noundef %i.bo)
  %.pre94 = load ptr, ptr @rprec, align 8, !tbaa !29
  %.pre96 = load ptr, ptr @LAruleno, align 8, !tbaa !29
  br label %.loopexit59

.loopexit59:                                      ; preds = %bb.g, %.lr.ph69, %bb.i
  %i.bp = phi ptr [ %.pre96, %bb.i ], [ %i.av, %.lr.ph69 ], [ %i.av, %bb.g ]
  %i.bq = phi ptr [ %.pre94, %bb.i ], [ %i.aw, %.lr.ph69 ], [ %i.aw, %bb.g ]
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge70.loopexit, label %.lr.ph69, !llvm.loop !46

._crit_edge70.loopexit:                           ; preds = %.loopexit59
  %.pre98 = load ptr, ptr @lookaheads, align 8, !tbaa !29
  %.phi.trans.insert = getelementptr inbounds [2 x i8], ptr %.pre98, i64 %i.b
  %.pre99 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !30
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %.loopexit60
  %i.br = phi i16 [ %.pre99, %._crit_edge70.loopexit ], [ %i.as, %.loopexit60 ] ; 2 uses
  %i.bs = icmp slt i16 %i.br, %i.ao
  br i1 %i.bs, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %._crit_edge70
  %i.bt = load ptr, ptr @lookaheadset, align 8, !tbaa !15 ; 9 uses
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
  %1 = add i64 %i.cb, 4                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %1
  %i.cc = shl nsw i64 %i.aq, 2
  %i.cd = add i64 %i.cc, %i.ak
  %i.ce = xor i64 %i.bu, -1
  %i.cf = add i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 28
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.ci = shl i64 %n.vec, 2                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bt, i64 %i.ci
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %.lr.ph74.us.us.preheader, %._crit_edge78.us.us
  %.379.us.us = phi i32 [ %i.dk, %._crit_edge78.us.us ], [ %i.bw, %.lr.ph74.us.us.preheader ] ; 2 uses
  %i.ck = load ptr, ptr @LA, align 8, !tbaa !15   ; 2 uses
  %i.cl = load i32, ptr @tokensetsize, align 4, !tbaa !10
  %i.cm = mul i32 %i.cl, %.379.us.us
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.ck, i64 %i.cn ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph74.us.us
  %.172.us.us = phi ptr [ %i.bt, %.lr.ph74.us.us ], [ %i.cr, %bb.l ] ; 2 uses
  %.14571.us.us = phi ptr [ %i.co, %.lr.ph74.us.us ], [ %i.cp, %bb.l ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.14571.us.us, i64 4
  %i.cq = load i32, ptr %.14571.us.us, align 4, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.172.us.us, i64 4 ; 2 uses
  %i.cs = load i32, ptr %.172.us.us, align 4, !tbaa !10
  %i.ct = and i32 %i.cs, %i.cq
  %.not56.us.us = icmp eq i32 %i.ct, 0
  br i1 %.not56.us.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = load ptr, ptr @conflicts, align 8, !tbaa !13
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.b
  store i8 1, ptr %i.cv, align 1, !tbaa !19
  store i8 1, ptr @any_conflicts, align 1, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cw = icmp ult ptr %i.cr, %i.ar
  br i1 %i.cw, label %bb.j, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !47

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.l
  br i1 %min.iters.check, label %..preheader_crit_edge.us.us.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us.preheader
  %scevgep109 = getelementptr i8, ptr %i.ck, i64 %1
  %2 = shl nsw i64 %i.cn, 2
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %2
  %bound0 = icmp ult ptr %i.bt, %scevgep110
  %bound1 = icmp ult ptr %i.co, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %..preheader_crit_edge.us.us.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cx = getelementptr i8, ptr %i.co, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cy ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.co, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !10, !alias.scope !54
  %wide.load112 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !10, !alias.scope !54
  %i.da = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load113 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !10, !alias.scope !55, !noalias !54
  %wide.load114 = load <4 x i32>, ptr %i.da, align 4, !tbaa !10, !alias.scope !55, !noalias !54
  %i.db = or <4 x i32> %wide.load113, %wide.load
  %i.dc = or <4 x i32> %wide.load114, %wide.load112
  store <4 x i32> %i.db, ptr %next.gep, align 4, !tbaa !10, !alias.scope !55, !noalias !54
  store <4 x i32> %i.dc, ptr %i.da, align 4, !tbaa !10, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge78.us.us, label %..preheader_crit_edge.us.us.preheader116

..preheader_crit_edge.us.us.preheader116:         ; preds = %vector.memcheck, %..preheader_crit_edge.us.us.preheader, %middle.block
  %.276.us.us.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %..preheader_crit_edge.us.us.preheader ], [ %i.cj, %middle.block ]
  %.24675.us.us.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %..preheader_crit_edge.us.us.preheader ], [ %i.cx, %middle.block ]
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader116, %..preheader_crit_edge.us.us
  %.276.us.us = phi ptr [ %i.dg, %..preheader_crit_edge.us.us ], [ %.276.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 3 uses
  %.24675.us.us = phi ptr [ %i.de, %..preheader_crit_edge.us.us ], [ %.24675.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.24675.us.us, i64 4
  %i.df = load i32, ptr %.24675.us.us, align 4, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %.276.us.us, i64 4 ; 2 uses
  %i.dh = load i32, ptr %.276.us.us, align 4, !tbaa !10
  %i.di = or i32 %i.dh, %i.df
  store i32 %i.di, ptr %.276.us.us, align 4, !tbaa !10
  %i.dj = icmp ult ptr %i.dg, %i.ar
  br i1 %i.dj, label %..preheader_crit_edge.us.us, label %._crit_edge78.us.us, !llvm.loop !52

._crit_edge78.us.us:                              ; preds = %..preheader_crit_edge.us.us, %middle.block
  %i.dk = add nsw i32 %.379.us.us, 1              ; 2 uses
  %exitcond91.not = icmp eq i32 %i.dk, %i.ap
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph74.us.us, !llvm.loop !53

.loopexit:                                        ; preds = %._crit_edge78.us.us, %._crit_edge70, %.lr.ph81, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resolve_sr_conflict(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ntokens, align 4, !tbaa !10 ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 1
  %i.d = add nsw i64 %i.c, 4
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.g = load ptr, ptr @rprec, align 8, !tbaa !29
  %i.h = load ptr, ptr @LAruleno, align 8, !tbaa !29
  %i.i = sext i32 %1 to i64                       ; 4 uses
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !30
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !30   ; 2 uses
  %i.o = icmp sgt i32 %i.a, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = load ptr, ptr @lookaheadset, align 8, !tbaa !15
  %i.q = load ptr, ptr @LA, align 8, !tbaa !15
  %i.r = load i32, ptr @tokensetsize, align 4, !tbaa !10
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
  %i.w = load i32, ptr %.06194, align 4, !tbaa !10 ; 2 uses
  %i.x = load i32, ptr %.06393, align 4, !tbaa !10 ; 2 uses
  %i.y = and i32 %i.w, %i.x
  %i.z = and i32 %i.y, %.06592
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %flush_shift.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr @sprec, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !30 ; 3 uses
  %.not72 = icmp eq i16 %i.ac, 0
  br i1 %.not72, label %flush_shift.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp slt i16 %i.ac, %i.n
  br i1 %i.ad, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr @verboseflag, align 4, !tbaa !10
  %.not79 = icmp eq i32 %i.ae, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @foutput, align 8, !tbaa !34
  %i.ag = load ptr, ptr @LAruleno, align 8, !tbaa !29
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30
  %i.aj = sext i16 %i.ai to i32
  %i.ak = load ptr, ptr @tags, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.aj, ptr noundef %i.am, ptr noundef nonnull @.str) #14 ; 0 uses
  %.pre98 = load i32, ptr %.06194, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi i32 [ %.pre98, %bb.f ], [ %i.w, %bb.e ]
  %i.ap = xor i32 %.06592, -1
  %i.aq = and i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %.06194, align 4, !tbaa !10
  %i.ar = load ptr, ptr @shift_table, align 8, !tbaa !22
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.v
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24 ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %flush_shift.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %i.av = load i16, ptr %i.au, align 2, !tbaa !27 ; 4 uses
  %i.aw = icmp sgt i16 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i, label %flush_shift.exit

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i16 %i.av to i64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 3 uses
  %i.ay = load ptr, ptr @accessing_symbol, align 8 ; 3 uses
  %xtraiter116 = and i64 %wide.trip.count.i, 1
  %i.az = icmp eq i16 %i.av, 1
  br i1 %i.az, label %.epil.preheader115, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter119 = and i64 %wide.trip.count.i, 32766
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.o ] ; 3 uses
  %niter120 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter120.next.1, %bb.o ]
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !30 ; 2 uses
  %.not13.i = icmp eq i16 %i.bb, 0
  br i1 %.not13.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !30
  %i.bf = sext i16 %i.be to i64
  %i.bg = icmp eq i64 %indvars.iv, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %i.ba, align 2, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !30 ; 2 uses
  %.not13.i.1 = icmp eq i16 %i.bj, 0
  br i1 %.not13.i.1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = sext i16 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !30
  %i.bn = sext i16 %i.bm to i64
  %i.bo = icmp eq i64 %indvars.iv, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 0, ptr %i.bi, align 2, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
end_hunk_0
begin_hunk_1_@conflict_log:bb.a
  %.not.us.i.1 = icmp ne i32 %i.ai, 0
  %i.aj = zext i1 %.not.us.i.1 to i32
  %spec.select.us.i.1 = add nuw nsw i32 %spec.select.us.i, %i.aj
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.v ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = and i32 %i.al, %.02033.us.i
  %.not.us.i.2 = icmp ne i32 %i.am, 0
  %i.an = zext i1 %.not.us.i.2 to i32
  %spec.select.us.i.2 = add nuw nsw i32 %spec.select.us.i.1, %i.an
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.v ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !10
  %i.aq = and i32 %i.ap, %.02033.us.i
  %.not.us.i.3 = icmp ne i32 %i.aq, 0
  %i.ar = zext i1 %.not.us.i.3 to i32
  %spec.select.us.i.3 = add nuw nsw i32 %spec.select.us.i.2, %i.ar ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.v ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !1

bb.d:                                             ; preds = %._crit_edge.us.i
  %i.at = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.at, ptr @rrc_count, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.i, %bb.d
  %i.au = phi i32 [ %i.at, %bb.d ], [ %i.ac, %._crit_edge.us.i ] ; 2 uses
  %i.av = shl i32 %.02033.us.i, 1                 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  %spec.select27.us.i = tail call i32 @llvm.umax.i32(i32 %i.av, i32 1)
  %spec.select28.idx.us.i = select i1 %i.aw, i64 4, i64 0
  %spec.select28.us.i = getelementptr inbounds nuw i8, ptr %.01934.us.i, i64 %spec.select28.idx.us.i
  %i.ax = add nuw nsw i32 %.02532.us.i, 1         ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.ax, %i.s
  br i1 %exitcond36.not.i, label %count_rr_conflicts.exit, label %.preheader.us.i, !llvm.loop !2

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %.031.us.i.epil.init = phi ptr [ %.01934.us.i, %.preheader.us.i ], [ %i.as, %._crit_edge.us.i.unr-lcssa ]
  %.02230.us.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.031.us.i.epil = phi ptr [ %.031.us.i.epil.init, %.epil.preheader ], [ %i.bb, %bb.f ] ; 2 uses
  %.02230.us.i.epil = phi i32 [ %.02230.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.f ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ay = load i32, ptr %.031.us.i.epil, align 4, !tbaa !10
  %i.az = and i32 %i.ay, %.02033.us.i
  %.not.us.i.epil = icmp ne i32 %i.az, 0
  %i.ba = zext i1 %.not.us.i.epil to i32
  %spec.select.us.i.epil = add nuw nsw i32 %.02230.us.i.epil, %i.ba ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.031.us.i.epil, i64 %i.v
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.f, !llvm.loop !57

._crit_edge.us.i:                                 ; preds = %bb.f, %._crit_edge.us.i.unr-lcssa
  %spec.select.us.i.lcssa = phi i32 [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %bb.f ]
  %i.bc = icmp samesign ugt i32 %spec.select.us.i.lcssa, 1
  br i1 %i.bc, label %bb.d, label %bb.e

count_rr_conflicts.exit:                          ; preds = %bb.e, %bb.b, %bb.c
  %i.bd = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.au, %bb.e ]
  %i.be = load i32, ptr @src_count, align 4, !tbaa !10
  %i.bf = add nsw i32 %i.e, %i.be                 ; 2 uses
  store i32 %i.bf, ptr @src_total, align 4, !tbaa !10
  %i.bg = add nsw i32 %i.f, %i.bd                 ; 2 uses
  store i32 %i.bg, ptr @rrc_total, align 4, !tbaa !10
  %.pre8 = load i32, ptr @nstates, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %count_rr_conflicts.exit
  %i.bh = phi i32 [ %i.c, %.lr.ph ], [ %.pre8, %count_rr_conflicts.exit ] ; 2 uses
  %i.bi = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %count_rr_conflicts.exit ]
  %i.bj = phi i32 [ %i.f, %.lr.ph ], [ %i.bg, %count_rr_conflicts.exit ]
  %i.bk = phi i32 [ %i.e, %.lr.ph ], [ %i.bf, %count_rr_conflicts.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = sext i32 %i.bh to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.g, %bb.a
  tail call void @total_conflicts()
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @count_sr_conflicts(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr @src_count, align 4, !tbaa !10
  %i.a = load ptr, ptr @shift_table, align 8, !tbaa !22
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader53
  %i.g = load ptr, ptr @shiftset, align 8, !tbaa !15
  %i.h = load ptr, ptr @lookaheadset, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 0, ptr %i.j, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.b, %.preheader53
  %i.n = phi i32 [ %i.e, %.preheader53 ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = icmp sgt i16 %i.p, 0
  br i1 %i.q, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %._crit_edge
  %wide.trip.count = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = load ptr, ptr @accessing_symbol, align 8
  %i.t = load ptr, ptr @shiftset, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv78 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next79, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv78
  %i.v = load i16, ptr %i.u, align 2, !tbaa !30   ; 2 uses
  %.not49 = icmp eq i16 %i.v, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !30
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = load i32, ptr @ntokens, align 4, !tbaa !10
  %.not50 = icmp sgt i32 %i.aa, %i.z
  br i1 %.not50, label %bb.e, label %._crit_edge58.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.z, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58.loopexit, label %bb.c, !llvm.loop !60

._crit_edge58.loopexit:                           ; preds = %bb.d, %bb.f
  %.pre = load i32, ptr @tokensetsize, align 4, !tbaa !10
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.loopexit, %._crit_edge
  %i.ai = phi i32 [ %.pre, %._crit_edge58.loopexit ], [ %i.n, %._crit_edge ] ; 3 uses
  %i.aj = load ptr, ptr @lookaheads, align 8, !tbaa !29
  %i.ak = getelementptr [2 x i8], ptr %i.aj, i64 %i.b ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !30 ; 2 uses
  %i.an = sext i16 %i.am to i32
  %i.ao = load ptr, ptr @lookaheadset, align 8, !tbaa !15 ; 16 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 9 uses
  %i.aq = sext i32 %i.ai to i64
  %.idx = shl nsw i64 %i.aq, 2                    ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %.idx ; 2 uses
  %i.as = load i16, ptr %i.ak, align 2, !tbaa !30 ; 2 uses
  %i.at = icmp slt i16 %i.as, %i.am
  br i1 %i.at, label %.lr.ph67, label %._crit_edge68.split

.lr.ph67:                                         ; preds = %._crit_edge58
  %i.au = load ptr, ptr @LA, align 8, !tbaa !15   ; 2 uses
  %i.av = icmp sgt i32 %i.ai, 0
  br i1 %i.av, label %.lr.ph63.preheader, label %.preheader

.lr.ph63.preheader:                               ; preds = %.lr.ph67
  %i.aw = sext i16 %i.as to i32
  %i.ax = add i64 %.idx, %i.ap
  %i.ay = add i64 %i.ap, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = xor i64 %i.ap, -1
  %i.ba = add i64 %umax, %i.az
  %i.bb = and i64 %i.ba, -4
  %1 = add i64 %i.bb, 4                           ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.ao, i64 %1
  %scevgep90 = getelementptr i8, ptr %i.au, i64 %1
  %i.bc = add i64 %.idx, %i.ap
  %i.bd = add i64 %i.ap, 4
  %i.be = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bd)
  %i.bf = xor i64 %i.ap, -1
  %i.bg = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ao, i64 %i.bj
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge64
  %.24365 = phi i32 [ %i.cd, %._crit_edge64 ], [ %i.aw, %.lr.ph63.preheader ] ; 2 uses
  %i.bl = load i32, ptr @tokensetsize, align 4, !tbaa !10
  %i.bm = mul i32 %i.bl, %.24365
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.au, i64 %i.bn ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph63
  %i.bp = shl nsw i64 %i.bn, 2
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.bp
  %bound0 = icmp ult ptr %i.ao, %scevgep91
  %bound1 = icmp ult ptr %i.bo, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.br ; 3 uses
  %next.gep92 = getelementptr i8, ptr %i.bo, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !10, !alias.scope !73
  %wide.load93 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !10, !alias.scope !73
  %i.bt = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load94 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  %wide.load95 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  %i.bu = or <4 x i32> %wide.load94, %wide.load
  %i.bv = or <4 x i32> %wide.load95, %wide.load93
  store <4 x i32> %i.bu, ptr %next.gep, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  store <4 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge64, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph63, %middle.block
  %.061.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph63 ], [ %i.bk, %middle.block ]
  %.03760.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph63 ], [ %i.bq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.061 = phi ptr [ %i.bz, %scalar.ph ], [ %.061.ph, %scalar.ph.preheader ] ; 3 uses
  %.03760 = phi ptr [ %i.bx, %scalar.ph ], [ %.03760.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03760, i64 4
  %i.by = load i32, ptr %.03760, align 4, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %.061, i64 4 ; 2 uses
  %i.ca = load i32, ptr %.061, align 4, !tbaa !10
  %i.cb = or i32 %i.ca, %i.by
  store i32 %i.cb, ptr %.061, align 4, !tbaa !10
  %i.cc = icmp ult ptr %i.bz, %i.ar
  br i1 %i.cc, label %scalar.ph, label %._crit_edge64, !llvm.loop !65

._crit_edge64:                                    ; preds = %scalar.ph, %middle.block
  %i.cd = add nsw i32 %.24365, 1                  ; 2 uses
  %exitcond81.not = icmp eq i32 %i.cd, %i.an
  br i1 %exitcond81.not, label %._crit_edge68.split, label %.lr.ph63, !llvm.loop !66

._crit_edge68.split:                              ; preds = %._crit_edge64, %._crit_edge58
  %i.ce = icmp sgt i32 %i.ai, 0
  br i1 %i.ce, label %.lr.ph72.preheader, label %.preheader

.lr.ph72.preheader:                               ; preds = %._crit_edge68.split
  %i.cf = load ptr, ptr @shiftset, align 8, !tbaa !15 ; 6 uses
  %i.cg = add i64 %.idx, %i.ap
  %i.ch = add i64 %i.ap, 4
  %i.ci = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ch)
  %i.cj = xor i64 %i.ap, -1
  %i.ck = add i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = lshr i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.ck, 76
  br i1 %min.iters.check105, label %.lr.ph72.preheader125, label %vector.memcheck106

vector.memcheck106:                               ; preds = %.lr.ph72.preheader
  %i.cn = and i64 %i.ck, -4
  %i.co = add i64 %i.cn, 4                        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ao, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cf, i64 %i.co
  %bound0107 = icmp ult ptr %i.ao, %i.cq
  %bound1108 = icmp ult ptr %i.cf, %i.cp
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph72.preheader125, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck106
  %n.vec111 = and i64 %i.cm, 9223372036854775800  ; 3 uses
  %i.cr = shl i64 %n.vec111, 2                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ao, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cf, i64 %i.cr
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next120, %vector.body112 ] ; 2 uses
  %i.cu = shl i64 %index113, 2                    ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.ao, i64 %i.cu ; 3 uses
  %next.gep115 = getelementptr i8, ptr %i.cf, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load116 = load <4 x i32>, ptr %next.gep115, align 4, !tbaa !10, !alias.scope !75
  %wide.load117 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !10, !alias.scope !75
  %i.cw = getelementptr i8, ptr %next.gep114, i64 16 ; 2 uses
  %wide.load118 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  %wide.load119 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  %i.cx = and <4 x i32> %wide.load118, %wide.load116
  %i.cy = and <4 x i32> %wide.load119, %wide.load117
  store <4 x i32> %i.cx, ptr %next.gep114, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  store <4 x i32> %i.cy, ptr %i.cw, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  %index.next120 = add nuw i64 %index113, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next120, %n.vec111
  br i1 %i.cz, label %middle.block121, label %vector.body112, !llvm.loop !70

middle.block121:                                  ; preds = %vector.body112
  %cmp.n122 = icmp eq i64 %i.cm, %n.vec111
  br i1 %cmp.n122, label %.preheader, label %.lr.ph72.preheader125

.lr.ph72.preheader125:                            ; preds = %vector.memcheck106, %.lr.ph72.preheader, %middle.block121
  %.170.ph = phi ptr [ %i.ao, %vector.memcheck106 ], [ %i.ao, %.lr.ph72.preheader ], [ %i.cs, %middle.block121 ]
  %.13869.ph = phi ptr [ %i.cf, %vector.memcheck106 ], [ %i.cf, %.lr.ph72.preheader ], [ %i.ct, %middle.block121 ]
  br label %.lr.ph72

.preheader:                                       ; preds = %.lr.ph72, %middle.block121, %.lr.ph67, %._crit_edge68.split
  %i.da = load i32, ptr @ntokens, align 4, !tbaa !10 ; 5 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.da, 1
  %i.dc = icmp eq i32 %i.da, 1
  br i1 %i.dc, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter = and i32 %i.da, 2147483646
  br label %.lr.ph76

.lr.ph72:                                         ; preds = %.lr.ph72.preheader125, %.lr.ph72
  %.170 = phi ptr [ %i.df, %.lr.ph72 ], [ %.170.ph, %.lr.ph72.preheader125 ] ; 3 uses
  %.13869 = phi ptr [ %i.dd, %.lr.ph72 ], [ %.13869.ph, %.lr.ph72.preheader125 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.13869, i64 4
  %i.de = load i32, ptr %.13869, align 4, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %.170, i64 4 ; 2 uses
  %i.dg = load i32, ptr %.170, align 4, !tbaa !10
  %i.dh = and i32 %i.dg, %i.de
  store i32 %i.dh, ptr %.170, align 4, !tbaa !10
  %i.di = icmp ult ptr %i.df, %i.ar
  br i1 %i.di, label %.lr.ph72, label %.preheader, !llvm.loop !71

.lr.ph76:                                         ; preds = %bb.i, %.lr.ph76.preheader.new
  %.275 = phi ptr [ %i.ao, %.lr.ph76.preheader.new ], [ %spec.select52.1, %bb.i ] ; 2 uses
  %.03974 = phi i32 [ 1, %.lr.ph76.preheader.new ], [ %spec.select.1, %bb.i ] ; 2 uses
  %i.dj = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %i.dt, %bb.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.dk = load i32, ptr %.275, align 4, !tbaa !10
  %i.dl = and i32 %i.dk, %.03974
  %.not51 = icmp eq i32 %i.dl, 0
  br i1 %.not51, label %.lr.ph76.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph76
  %i.dm = add nsw i32 %i.dj, 1                    ; 2 uses
  store i32 %i.dm, ptr @src_count, align 4, !tbaa !10
  br label %.lr.ph76.1

.lr.ph76.1:                                       ; preds = %bb.g, %.lr.ph76
  %i.dn = phi i32 [ %i.dm, %bb.g ], [ %i.dj, %.lr.ph76 ] ; 2 uses
  %i.do = shl i32 %.03974, 1                      ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.do, i32 1) ; 2 uses
  %spec.select52.idx = select i1 %i.dp, i64 4, i64 0
  %spec.select52 = getelementptr inbounds nuw i8, ptr %.275, i64 %spec.select52.idx ; 2 uses
  %i.dq = load i32, ptr %spec.select52, align 4, !tbaa !10
  %i.dr = and i32 %i.dq, %spec.select
  %.not51.1 = icmp eq i32 %i.dr, 0
  br i1 %.not51.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph76.1
  %i.ds = add nsw i32 %i.dn, 1                    ; 2 uses
  store i32 %i.ds, ptr @src_count, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph76.1
  %i.dt = phi i32 [ %i.ds, %bb.h ], [ %i.dn, %.lr.ph76.1 ] ; 2 uses
  %i.du = shl i32 %spec.select, 1                 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %i.du, i32 1) ; 2 uses
  %spec.select52.idx.1 = select i1 %i.dv, i64 4, i64 0
  %spec.select52.1 = getelementptr inbounds nuw i8, ptr %spec.select52, i64 %spec.select52.idx.1 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !72

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.preheader
  %.275.epil.init = phi ptr [ %i.ao, %.lr.ph76.preheader ], [ %spec.select52.1, %.loopexit.loopexit.unr-lcssa ]
  %.03974.epil.init = phi i32 [ 1, %.lr.ph76.preheader ], [ %spec.select.1, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph76.preheader ], [ %i.dt, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod126 = trunc i32 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.dw = load i32, ptr %.275.epil.init, align 4, !tbaa !10
  %i.dx = and i32 %i.dw, %.03974.epil.init
  %.not51.epil = icmp eq i32 %i.dx, 0
  br i1 %.not51.epil, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph76.epil.preheader
  %i.dy = add nsw i32 %.epil.init, 1
  store i32 %i.dy, ptr @src_count, align 4, !tbaa !10
  br label %.loopexit
end_hunk_1
begin_hunk_2_@print_reductions:bb.a
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !10
  %i.bu = or i32 %i.bt, %i.bp
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !10
  br label %.loopexit210

.loopexit210:                                     ; preds = %.loopexit210.loopexit.unr-lcssa, %bb.n, %.epil.preheader, %bb.h, %.loopexit211
  %i.bv = load ptr, ptr @lookaheads, align 8, !tbaa !29
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.i ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !30 ; 5 uses
  %i.by = sext i16 %i.bx to i32                   ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !30 ; 4 uses
  %i.cb = sext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.cb, %i.by                ; 2 uses
  %i.cd = icmp ne i32 %i.cc, 1
  %or.cond = select i1 %i.cd, i1 true, i1 %.3137
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.loopexit210
  %i.ce = load ptr, ptr @LAruleno, align 8, !tbaa !29
  %i.cf = sext i16 %i.bx to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !30 ; 2 uses
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 3 uses
  %i.ck = load ptr, ptr @lookaheadset, align 8, !tbaa !15 ; 7 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64              ; 5 uses
  %i.cm = sext i32 %i.cj to i64
  %.idx = shl nsw i64 %i.cm, 2                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx
  %i.co = icmp sgt i32 %i.cj, 0
  br i1 %i.co, label %.lr.ph226.preheader, label %.preheader209

.lr.ph226.preheader:                              ; preds = %bb.o
  %i.cp = load ptr, ptr @shiftset, align 8, !tbaa !15 ; 5 uses
  %i.cq = load ptr, ptr @LA, align 8, !tbaa !15   ; 2 uses
  %i.cr = mul i32 %i.cj, %i.by
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cs ; 4 uses
  %i.cu = add i64 %.idx, %i.cl
  %i.cv = add i64 %i.cl, 4
  %i.cw = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cv)
  %i.cx = xor i64 %i.cl, -1
  %i.cy = add i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 76
  br i1 %min.iters.check, label %.lr.ph226.preheader398, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph226.preheader
  %i.db = ptrtoaddr ptr %i.cq to i64
  %i.dc = ptrtoaddr ptr %i.cp to i64
  %i.dd = shl nsw i64 %i.cs, 2
  %i.de = add i64 %i.dd, %i.db
  %i.df = sub i64 %i.de, %i.cl
  %diff.check = icmp ugt i64 %i.df, -32
  %i.dg = sub i64 %i.dc, %i.cl
  %diff.check346 = icmp ugt i64 %i.dg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check346
  br i1 %conflict.rdx, label %.lr.ph226.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  %i.dh = shl i64 %n.vec, 2                       ; 3 uses
  %i.di = getelementptr i8, ptr %i.ck, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.cp, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.ct, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.dl ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.cp, i64 %i.dl ; 2 uses
  %next.gep348 = getelementptr i8, ptr %i.ct, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep348, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep348, align 4, !tbaa !10
  %wide.load349 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !10
  %i.dn = getelementptr i8, ptr %next.gep347, i64 16
  %wide.load350 = load <4 x i32>, ptr %next.gep347, align 4, !tbaa !10
  %wide.load351 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !10
  %i.do = and <4 x i32> %wide.load350, %wide.load
  %i.dp = and <4 x i32> %wide.load351, %wide.load349
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.do, ptr %next.gep, align 4, !tbaa !10
  store <4 x i32> %i.dp, ptr %i.dq, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader209, label %.lr.ph226.preheader398

.lr.ph226.preheader398:                           ; preds = %vector.memcheck, %.lr.ph226.preheader, %middle.block
  %.0155224.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph226.preheader ], [ %i.di, %middle.block ]
  %.0161223.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph226.preheader ], [ %i.dj, %middle.block ]
  %.0164222.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph226.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph226

.preheader209:                                    ; preds = %.lr.ph226, %middle.block, %bb.o
  %i.ds = load i32, ptr @ntokens, align 4, !tbaa !10 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  %i.du = sext i16 %i.ch to i64                   ; 2 uses
  br i1 %i.dt, label %.lr.ph230, label %._crit_edge231

.lr.ph226:                                        ; preds = %.lr.ph226.preheader398, %.lr.ph226
  %.0155224 = phi ptr [ %i.ea, %.lr.ph226 ], [ %.0155224.ph, %.lr.ph226.preheader398 ] ; 2 uses
  %.0161223 = phi ptr [ %i.dx, %.lr.ph226 ], [ %.0161223.ph, %.lr.ph226.preheader398 ] ; 2 uses
  %.0164222 = phi ptr [ %i.dv, %.lr.ph226 ], [ %.0164222.ph, %.lr.ph226.preheader398 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0164222, i64 4
  %i.dw = load i32, ptr %.0164222, align 4, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.0161223, i64 4
  %i.dy = load i32, ptr %.0161223, align 4, !tbaa !10
  %i.dz = and i32 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %.0155224, i64 4 ; 2 uses
  store i32 %i.dz, ptr %.0155224, align 4, !tbaa !10
  %i.eb = icmp ult ptr %i.ea, %i.cn
  br i1 %i.eb, label %.lr.ph226, label %.preheader209, !llvm.loop !84

.lr.ph230:                                        ; preds = %.preheader209, %bb.q
  %i.ec = phi i32 [ %i.eq, %bb.q ], [ %i.ds, %.preheader209 ]
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.q ], [ 0, %.preheader209 ] ; 2 uses
  %.0150229 = phi i32 [ %spec.select203, %bb.q ], [ 1, %.preheader209 ] ; 2 uses
  %.1156228 = phi ptr [ %spec.select202, %bb.q ], [ %i.ck, %.preheader209 ] ; 2 uses
  %i.ed = load i32, ptr %.1156228, align 4, !tbaa !10
  %i.ee = and i32 %i.ed, %.0150229
  %.not193 = icmp eq i32 %i.ee, 0
  br i1 %.not193, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph230
  %i.ef = load ptr, ptr @foutput, align 8, !tbaa !34
  %i.eg = load ptr, ptr @tags, align 8, !tbaa !36 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv290
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !13
  %i.ej = load ptr, ptr @rlhs, align 8, !tbaa !29
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.du
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !30
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !13
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.11, ptr noundef %i.ei, i32 noundef %i.ci, ptr noundef %i.eo) #14 ; 0 uses
  %.pre = load i32, ptr @ntokens, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph230
  %i.eq = phi i32 [ %.pre, %bb.p ], [ %i.ec, %.lr.ph230 ] ; 2 uses
  %i.er = shl i32 %.0150229, 1                    ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %spec.select202.idx = select i1 %i.es, i64 4, i64 0
  %spec.select202 = getelementptr inbounds nuw i8, ptr %.1156228, i64 %spec.select202.idx
  %spec.select203 = tail call i32 @llvm.umax.i32(i32 %i.er, i32 1)
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.et = sext i32 %i.eq to i64
  %i.eu = icmp slt i64 %indvars.iv.next291, %i.et
  br i1 %i.eu, label %.lr.ph230, label %._crit_edge231, !llvm.loop !85

._crit_edge231:                                   ; preds = %bb.q, %.preheader209
  %i.ev = load ptr, ptr @foutput, align 8, !tbaa !34
  %i.ew = load ptr, ptr @tags, align 8, !tbaa !36
  %i.ex = load ptr, ptr @rlhs, align 8, !tbaa !29
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.du
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !30
  %i.fa = sext i16 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !13
  %i.fd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.12, i32 noundef %i.ci, ptr noundef %i.fc) #14 ; 0 uses
  br label %bb.al

bb.r:                                             ; preds = %.loopexit210
  %i.fe = icmp sgt i32 %i.cc, 0
  br i1 %i.fe, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.ff = load ptr, ptr @lookaheadset, align 8, !tbaa !15 ; 13 uses
  %i.fg = ptrtoaddr ptr %i.ff to i64              ; 11 uses
  %i.fh = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 3 uses
  %i.fi = sext i32 %i.fh to i64
  %.idx280 = shl nsw i64 %i.fi, 2                 ; 4 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %.idx280 ; 2 uses
  %i.fk = icmp sge i16 %i.bx, %i.ca               ; 2 uses
  %or.cond278.not = or i1 %i.fk, %.3137
  br i1 %or.cond278.not, label %.loopexit208, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.s
  %i.fl = load ptr, ptr @LA, align 8, !tbaa !15   ; 2 uses
  %i.fm = ptrtoaddr ptr %i.fl to i64
  %i.fn = load ptr, ptr @shiftset, align 8, !tbaa !15 ; 10 uses
  %i.fo = ptrtoaddr ptr %i.fn to i64
  %i.fp = icmp sgt i32 %i.fh, 0                   ; 2 uses
  %i.fq = load ptr, ptr @LAruleno, align 8
  %i.fr = sext i16 %i.bx to i64                   ; 2 uses
  %wide.trip.count297 = sext i16 %i.ca to i64
  %i.fs = add i64 %.idx280, %i.fg
  %i.ft = add i64 %i.fg, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.ft)
  %i.fu = xor i64 %i.fg, -1
  %i.fv = add i64 %umax, %i.fu
  %i.fw = and i64 %i.fv, -4
  %i.fx = add i64 %i.fw, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fn, i64 %i.fx
  %scevgep355 = getelementptr i8, ptr %i.ff, i64 %i.fx
  %i.fy = add i64 %.idx280, %i.fg
  %i.fz = add i64 %i.fg, 4
  %i.ga = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.fz)
  %i.gb = xor i64 %i.fg, -1
  %i.gc = add i64 %i.ga, %i.gb                    ; 2 uses
  %i.gd = lshr i64 %i.gc, 2
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %min.iters.check378 = icmp ult i64 %i.gc, 28
  %invariant.op = sub i64 %i.fm, %i.fg
  %i.gf = sub i64 %i.fo, %i.fg
  %diff.check375 = icmp ugt i64 %i.gf, -32
  %n.vec380 = and i64 %i.ge, 9223372036854775800  ; 3 uses
  %i.gg = shl i64 %n.vec380, 2                    ; 3 uses
  %i.gh = getelementptr i8, ptr %i.ff, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.fn, i64 %i.gg
  %cmp.n392 = icmp eq i64 %i.ge, %n.vec380
  %i.gj = add i64 %.idx280, %i.fg
  %i.gk = add i64 %i.fg, 4
  %i.gl = tail call i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gk)
  %i.gm = xor i64 %i.fg, -1
  %i.gn = add i64 %i.gl, %i.gm                    ; 2 uses
  %i.go = lshr i64 %i.gn, 2
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.gn, 28
  %bound0 = icmp ult ptr %i.fn, %scevgep355
  %bound1 = icmp ult ptr %i.ff, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec359 = and i64 %i.gp, 9223372036854775800  ; 3 uses
  %i.gq = shl i64 %n.vec359, 2                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.ff, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.fn, i64 %i.gq
  %cmp.n370 = icmp eq i64 %i.gp, %n.vec359
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph253, %._crit_edge248
  %indvar = phi i64 [ 0, %.lr.ph253 ], [ %indvar.next, %._crit_edge248 ] ; 2 uses
  %indvars.iv294 = phi i64 [ %i.fr, %.lr.ph253 ], [ %indvars.iv.next295, %._crit_edge248 ] ; 4 uses
  %.0142252 = phi i32 [ 0, %.lr.ph253 ], [ %.1143, %._crit_edge248 ] ; 2 uses
  %.0144251 = phi i32 [ undef, %.lr.ph253 ], [ %.1145, %._crit_edge248 ]
  %.0147250 = phi i32 [ -1, %.lr.ph253 ], [ %.1148, %._crit_edge248 ]
  %1 = add i64 %indvar, %i.fr
  %2 = shl i64 %1, 2
  br i1 %i.fp, label %.lr.ph236.preheader, label %.preheader

.lr.ph236.preheader:                              ; preds = %bb.t
  %i.gt = load i32, ptr @tokensetsize, align 4, !tbaa !10
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = mul nsw i64 %indvars.iv294, %i.gu
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.gv ; 4 uses
  br i1 %min.iters.check378, label %.lr.ph236.preheader397, label %vector.memcheck373

vector.memcheck373:                               ; preds = %.lr.ph236.preheader
  %i.gx = mul i64 %2, %i.gu
  %.reass = add i64 %i.gx, %invariant.op
  %diff.check374 = icmp ugt i64 %.reass, -32
  %conflict.rdx376 = or i1 %diff.check374, %diff.check375
  br i1 %conflict.rdx376, label %.lr.ph236.preheader397, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck373
  %i.gy = getelementptr i8, ptr %i.gw, i64 %i.gg
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next390, %vector.body381 ] ; 2 uses
  %i.gz = shl i64 %index382, 2                    ; 3 uses
  %next.gep383 = getelementptr i8, ptr %i.ff, i64 %i.gz ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.fn, i64 %i.gz ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gw, i64 %i.gz ; 2 uses
  %i.ha = getelementptr i8, ptr %next.gep385, i64 16
  %wide.load386 = load <4 x i32>, ptr %next.gep385, align 4, !tbaa !10
  %wide.load387 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !10
  %i.hb = getelementptr i8, ptr %next.gep384, i64 16
  %wide.load388 = load <4 x i32>, ptr %next.gep384, align 4, !tbaa !10
  %wide.load389 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !10
  %i.hc = xor <4 x i32> %wide.load388, splat (i32 -1)
  %i.hd = xor <4 x i32> %wide.load389, splat (i32 -1)
  %i.he = and <4 x i32> %wide.load386, %i.hc
  %i.hf = and <4 x i32> %wide.load387, %i.hd
  %i.hg = getelementptr i8, ptr %next.gep383, i64 16
  store <4 x i32> %i.he, ptr %next.gep383, align 4, !tbaa !10
  store <4 x i32> %i.hf, ptr %i.hg, align 4, !tbaa !10
  %index.next390 = add nuw i64 %index382, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next390, %n.vec380
  br i1 %i.hh, label %middle.block391, label %vector.body381, !llvm.loop !86

middle.block391:                                  ; preds = %vector.body381
  br i1 %cmp.n392, label %.preheader, label %.lr.ph236.preheader397

.lr.ph236.preheader397:                           ; preds = %vector.memcheck373, %.lr.ph236.preheader, %middle.block391
  %.3158234.ph = phi ptr [ %i.ff, %vector.memcheck373 ], [ %i.ff, %.lr.ph236.preheader ], [ %i.gh, %middle.block391 ]
  %.1162233.ph = phi ptr [ %i.fn, %vector.memcheck373 ], [ %i.fn, %.lr.ph236.preheader ], [ %i.gi, %middle.block391 ]
  %.1165232.ph = phi ptr [ %i.gw, %vector.memcheck373 ], [ %i.gw, %.lr.ph236.preheader ], [ %i.gy, %middle.block391 ]
  br label %.lr.ph236

.preheader:                                       ; preds = %.lr.ph236, %middle.block391, %bb.t
  %i.hi = load i32, ptr @ntokens, align 4, !tbaa !10 ; 5 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph241.preheader, label %._crit_edge242

.lr.ph241.preheader:                              ; preds = %.preheader
  %xtraiter400 = and i32 %i.hi, 1
  %i.hk = icmp eq i32 %i.hi, 1
  br i1 %i.hk, label %.lr.ph241.epil.preheader, label %.lr.ph241.preheader.new

.lr.ph241.preheader.new:                          ; preds = %.lr.ph241.preheader
  %unroll_iter404 = and i32 %i.hi, 2147483646
  br label %.lr.ph241

.lr.ph236:                                        ; preds = %.lr.ph236.preheader397, %.lr.ph236
  %.3158234 = phi ptr [ %i.hr, %.lr.ph236 ], [ %.3158234.ph, %.lr.ph236.preheader397 ] ; 2 uses
  %.1162233 = phi ptr [ %i.hn, %.lr.ph236 ], [ %.1162233.ph, %.lr.ph236.preheader397 ] ; 2 uses
  %.1165232 = phi ptr [ %i.hl, %.lr.ph236 ], [ %.1165232.ph, %.lr.ph236.preheader397 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.1165232, i64 4
  %i.hm = load i32, ptr %.1165232, align 4, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %.1162233, i64 4
  %i.ho = load i32, ptr %.1162233, align 4, !tbaa !10
  %i.hp = xor i32 %i.ho, -1
  %i.hq = and i32 %i.hm, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %.3158234, i64 4 ; 2 uses
  store i32 %i.hq, ptr %.3158234, align 4, !tbaa !10
  %i.hs = icmp ult ptr %i.hr, %i.fj
  br i1 %i.hs, label %.lr.ph236, label %.preheader, !llvm.loop !87

.lr.ph241:                                        ; preds = %.lr.ph241, %.lr.ph241.preheader.new
  %.0138240 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %spec.select204.1, %.lr.ph241 ]
  %.2152239 = phi i32 [ 1, %.lr.ph241.preheader.new ], [ %.3153.1, %.lr.ph241 ] ; 2 uses
  %.4159238 = phi ptr [ %i.ff, %.lr.ph241.preheader.new ], [ %.5160.1, %.lr.ph241 ] ; 2 uses
  %niter405 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %niter405.next.1, %.lr.ph241 ]
  %i.ht = load i32, ptr %.4159238, align 4, !tbaa !10
  %i.hu = and i32 %i.ht, %.2152239
  %.not194 = icmp ne i32 %i.hu, 0
  %i.hv = zext i1 %.not194 to i32
  %spec.select204 = add nuw nsw i32 %.0138240, %i.hv
  %i.hw = shl i32 %.2152239, 1                    ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 0
  %.5160.idx = select i1 %i.hx, i64 4, i64 0
  %.5160 = getelementptr inbounds nuw i8, ptr %.4159238, i64 %.5160.idx ; 2 uses
  %.3153 = tail call i32 @llvm.umax.i32(i32 %i.hw, i32 1) ; 2 uses
  %i.hy = load i32, ptr %.5160, align 4, !tbaa !10
  %i.hz = and i32 %i.hy, %.3153
  %.not194.1 = icmp ne i32 %i.hz, 0
  %i.ia = zext i1 %.not194.1 to i32
  %spec.select204.1 = add nuw nsw i32 %spec.select204, %i.ia ; 3 uses
  %i.ib = shl i32 %.3153, 1                       ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  %.5160.idx.1 = select i1 %i.ic, i64 4, i64 0
  %.5160.1 = getelementptr inbounds nuw i8, ptr %.5160, i64 %.5160.idx.1 ; 2 uses
  %.3153.1 = tail call i32 @llvm.umax.i32(i32 %i.ib, i32 1) ; 2 uses
  %niter405.next.1 = add nuw nsw i32 %niter405, 2 ; 2 uses
  %niter405.ncmp.1 = icmp eq i32 %niter405.next.1, %unroll_iter404
  br i1 %niter405.ncmp.1, label %._crit_edge242.loopexit.unr-lcssa, label %.lr.ph241, !llvm.loop !88

._crit_edge242.loopexit.unr-lcssa:                ; preds = %.lr.ph241
  %lcmp.mod401.not = icmp eq i32 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %._crit_edge242, label %.lr.ph241.epil.preheader

.lr.ph241.epil.preheader:                         ; preds = %._crit_edge242.loopexit.unr-lcssa, %.lr.ph241.preheader
  %.0138240.epil.init = phi i32 [ 0, %.lr.ph241.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.2152239.epil.init = phi i32 [ 1, %.lr.ph241.preheader ], [ %.3153.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.4159238.epil.init = phi ptr [ %i.ff, %.lr.ph241.preheader ], [ %.5160.1, %._crit_edge242.loopexit.unr-lcssa ]
  %lcmp.mod403 = trunc i32 %i.hi to i1
  tail call void @llvm.assume(i1 %lcmp.mod403)
  %i.id = load i32, ptr %.4159238.epil.init, align 4, !tbaa !10
  %i.ie = and i32 %i.id, %.2152239.epil.init
  %.not194.epil = icmp ne i32 %i.ie, 0
  %i.if = zext i1 %.not194.epil to i32
  %spec.select204.epil = add nuw nsw i32 %.0138240.epil.init, %i.if
  br label %._crit_edge242

._crit_edge242:                                   ; preds = %.lr.ph241.epil.preheader, %._crit_edge242.loopexit.unr-lcssa, %.preheader
  %.0138.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ], [ %spec.select204.epil, %.lr.ph241.epil.preheader ] ; 2 uses
  %i.ig = icmp sgt i32 %.0138.lcssa, %.0142252
  br i1 %i.ig, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge242
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %indvars.iv294
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !30
  %i.ij = sext i16 %i.ii to i32
  %i.ik = trunc nsw i64 %indvars.iv294 to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge242
  %.1148 = phi i32 [ %i.ik, %bb.u ], [ %.0147250, %._crit_edge242 ] ; 2 uses
  %.1145 = phi i32 [ %i.ij, %bb.u ], [ %.0144251, %._crit_edge242 ] ; 2 uses
  %.1143 = phi i32 [ %.0138.lcssa, %bb.u ], [ %.0142252, %._crit_edge242 ]
  br i1 %i.fp, label %.lr.ph247.preheader, label %._crit_edge248

.lr.ph247.preheader:                              ; preds = %bb.v
  %brmerge = select i1 %min.iters.check357, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph247.preheader396, label %vector.body360

vector.body360:                                   ; preds = %.lr.ph247.preheader, %vector.body360
  %index361 = phi i64 [ %index.next368, %vector.body360 ], [ 0, %.lr.ph247.preheader ] ; 2 uses
  %i.il = shl i64 %index361, 2                    ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.ff, i64 %i.il ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.fn, i64 %i.il ; 3 uses
  %i.im = getelementptr i8, ptr %next.gep362, i64 16
  %wide.load364 = load <4 x i32>, ptr %next.gep362, align 4, !tbaa !10, !alias.scope !99
  %wide.load365 = load <4 x i32>, ptr %i.im, align 4, !tbaa !10, !alias.scope !99
  %i.in = getelementptr i8, ptr %next.gep363, i64 16 ; 2 uses
  %wide.load366 = load <4 x i32>, ptr %next.gep363, align 4, !tbaa !10, !alias.scope !100, !noalias !99
  %wide.load367 = load <4 x i32>, ptr %i.in, align 4, !tbaa !10, !alias.scope !100, !noalias !99
  %i.io = or <4 x i32> %wide.load366, %wide.load364
  %i.ip = or <4 x i32> %wide.load367, %wide.load365
  store <4 x i32> %i.io, ptr %next.gep363, align 4, !tbaa !10, !alias.scope !100, !noalias !99
  store <4 x i32> %i.ip, ptr %i.in, align 4, !tbaa !10, !alias.scope !100, !noalias !99
  %index.next368 = add nuw i64 %index361, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next368, %n.vec359
  br i1 %i.iq, label %middle.block369, label %vector.body360, !llvm.loop !92

middle.block369:                                  ; preds = %vector.body360
  br i1 %cmp.n370, label %._crit_edge248, label %.lr.ph247.preheader396

.lr.ph247.preheader396:                           ; preds = %.lr.ph247.preheader, %middle.block369
  %.6245.ph = phi ptr [ %i.gr, %middle.block369 ], [ %i.ff, %.lr.ph247.preheader ]
  %.2163244.ph = phi ptr [ %i.gs, %middle.block369 ], [ %i.fn, %.lr.ph247.preheader ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader396, %.lr.ph247
  %.6245 = phi ptr [ %i.ir, %.lr.ph247 ], [ %.6245.ph, %.lr.ph247.preheader396 ] ; 2 uses
  %.2163244 = phi ptr [ %i.it, %.lr.ph247 ], [ %.2163244.ph, %.lr.ph247.preheader396 ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.6245, i64 4 ; 2 uses
  %i.is = load i32, ptr %.6245, align 4, !tbaa !10
  %i.it = getelementptr inbounds nuw i8, ptr %.2163244, i64 4
  %i.iu = load i32, ptr %.2163244, align 4, !tbaa !10
  %i.iv = or i32 %i.iu, %i.is
  store i32 %i.iv, ptr %.2163244, align 4, !tbaa !10
  %i.iw = icmp ult ptr %i.ir, %i.fj
  br i1 %i.iw, label %.lr.ph247, label %._crit_edge248, !llvm.loop !93

._crit_edge248:                                   ; preds = %.lr.ph247, %middle.block369, %bb.v
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond298.not, label %.loopexit208.loopexit, label %bb.t, !llvm.loop !94

.loopexit208.loopexit:                            ; preds = %._crit_edge248
  %.pre315 = load i32, ptr @tokensetsize, align 4, !tbaa !10
  br label %.loopexit208

.loopexit208:                                     ; preds = %.loopexit208.loopexit, %bb.s
  %i.ix = phi i32 [ %i.fh, %bb.s ], [ %.pre315, %.loopexit208.loopexit ]
  %.2149 = phi i32 [ -1, %bb.s ], [ %.1148, %.loopexit208.loopexit ] ; 2 uses
  %.2146 = phi i32 [ undef, %bb.s ], [ %.1145, %.loopexit208.loopexit ] ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %.loopexit208
  %i.iz = load ptr, ptr @shiftset, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph258, %bb.w
end_hunk_2
