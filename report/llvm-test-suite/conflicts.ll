inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0_@mallocate
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
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
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
  %.047 = phi ptr [ %i.bg, %bb.f ], [ %i.bj, %bb.h ] ; 2 uses
  %.044 = phi ptr [ %i.bh, %bb.f ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bi = icmp ult ptr %.044, %i.ar
  br i1 %i.bi, label %bb.h, label %.loopexit59

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.047, i64 4
  %i.bk = load i32, ptr %.047, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.bm = load i32, ptr %.044, align 4, !tbaa !4
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
  %i.bu = icmp ult ptr %i.bt, %i.ar
  br i1 %i.bu, label %.lr.ph74.us.us.preheader, label %.loopexit

.lr.ph74.us.us.preheader:                         ; preds = %.lr.ph81
  %i.bv = ptrtoint ptr %i.bt to i64               ; 4 uses
  %i.bw = sext i16 %i.br to i32
  %i.bx = shl nsw i64 %i.aq, 2
  %i.by = add i64 %i.bx, %i.ak
  %i.bz = add i64 %i.bv, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bz)
  %i.ca = xor i64 %i.bv, -1
  %i.cb = add i64 %umax, %i.ca
  %i.cc = and i64 %i.cb, -4
  %i.cd = add i64 %i.cc, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.cd
  %i.ce = shl nsw i64 %i.aq, 2
  %i.cf = add i64 %i.ce, %i.ak
  %i.cg = add i64 %i.bv, 4
  %umax110 = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.cg)
  %i.ch = xor i64 %i.bv, -1
  %i.ci = add i64 %umax110, %i.ch                 ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 3 uses
  %i.cl = shl i64 %n.vec, 2                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.cl
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %.lr.ph74.us.us.preheader, %._crit_edge78.us
  %.379.us.us = phi i32 [ %1, %._crit_edge78.us ], [ %i.bw, %.lr.ph74.us.us.preheader ] ; 2 uses
  %i.cn = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.co = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.cp = mul i32 %i.co, %.379.us.us
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.cn, i64 %i.cq ; 6 uses
  br label %bb.j

._crit_edge78.us:                                 ; preds = %..preheader_crit_edge.us.us, %middle.block
  %1 = add nsw i32 %.379.us.us, 1                 ; 2 uses
  %exitcond98.not = icmp eq i32 %1, %i.ap
  br i1 %exitcond98.not, label %.loopexit, label %.lr.ph74.us.us, !llvm.loop !33

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader116, %..preheader_crit_edge.us.us
  %.24676.us.us = phi ptr [ %i.cu, %..preheader_crit_edge.us.us ], [ %.24676.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 3 uses
  %.24975.us.us = phi ptr [ %i.cs, %..preheader_crit_edge.us.us ], [ %.24975.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.24975.us.us, i64 4
  %i.ct = load i32, ptr %.24975.us.us, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %.24676.us.us, i64 4 ; 2 uses
  %i.cv = load i32, ptr %.24676.us.us, align 4, !tbaa !4
  %i.cw = or i32 %i.cv, %i.ct
  store i32 %i.cw, ptr %.24676.us.us, align 4, !tbaa !4
  %i.cx = icmp ult ptr %i.cu, %i.ar
  br i1 %i.cx, label %..preheader_crit_edge.us.us, label %._crit_edge78.us, !llvm.loop !34

bb.j:                                             ; preds = %.lr.ph74.us.us, %bb.l
  %.14572.us.us = phi ptr [ %i.bt, %.lr.ph74.us.us ], [ %i.da, %bb.l ] ; 2 uses
  %.14871.us.us = phi ptr [ %i.cr, %.lr.ph74.us.us ], [ %i.cy, %bb.l ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.14871.us.us, i64 4
  %i.cz = load i32, ptr %.14871.us.us, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw i8, ptr %.14572.us.us, i64 4 ; 2 uses
  %i.db = load i32, ptr %.14572.us.us, align 4, !tbaa !4
  %i.dc = and i32 %i.db, %i.cz
  %.not56.us.us = icmp eq i32 %i.dc, 0
  br i1 %.not56.us.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr @conflicts, align 8, !tbaa !8
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.b
  store i8 1, ptr %i.de, align 1, !tbaa !16
  store i8 1, ptr @any_conflicts, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.df = icmp ult ptr %i.da, %i.ar
  br i1 %i.df, label %bb.j, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !36

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.l
  br i1 %min.iters.check, label %..preheader_crit_edge.us.us.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us.preheader
  %scevgep108 = getelementptr i8, ptr %i.cn, i64 %i.cd
  %i.dg = shl nsw i64 %i.cq, 2
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.dg
  %bound0 = icmp ult ptr %i.bt, %scevgep109
  %bound1 = icmp ult ptr %i.cr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %..preheader_crit_edge.us.us.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dh = getelementptr i8, ptr %i.cr, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.di ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.cr, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !4, !alias.scope !37
  %wide.load112 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !37
  %i.dk = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load113 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !40, !noalias !37
  %wide.load114 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !4, !alias.scope !40, !noalias !37
  %i.dl = or <4 x i32> %wide.load113, %wide.load
  %i.dm = or <4 x i32> %wide.load114, %wide.load112
  store <4 x i32> %i.dl, ptr %next.gep, align 4, !tbaa !4, !alias.scope !40, !noalias !37
  store <4 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !4, !alias.scope !40, !noalias !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge78.us, label %..preheader_crit_edge.us.us.preheader116

..preheader_crit_edge.us.us.preheader116:         ; preds = %vector.memcheck, %..preheader_crit_edge.us.us.preheader, %middle.block
  %.24676.us.us.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %..preheader_crit_edge.us.us.preheader ], [ %i.cm, %middle.block ]
  %.24975.us.us.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %..preheader_crit_edge.us.us.preheader ], [ %i.dh, %middle.block ]
  br label %..preheader_crit_edge.us.us

.loopexit:                                        ; preds = %._crit_edge78.us, %.lr.ph81, %._crit_edge70, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resolve_sr_conflict(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ntokens, align 4, !tbaa !4
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
  %i.o = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %i.r = load ptr, ptr @LA, align 8, !tbaa !11
  %i.s = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.t = mul nsw i32 %i.s, %1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  %i.w = sext i32 %0 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %flush_shift.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %flush_shift.exit ] ; 14 uses
  %.095 = phi ptr [ %i.f, %.lr.ph ], [ %.1, %flush_shift.exit ] ; 14 uses
  %.06292 = phi i32 [ 1, %.lr.ph ], [ %.163, %flush_shift.exit ] ; 5 uses
  %.06491 = phi ptr [ %i.q, %.lr.ph ], [ %.165, %flush_shift.exit ] ; 6 uses
  %.06690 = phi ptr [ %i.v, %.lr.ph ], [ %.167, %flush_shift.exit ] ; 8 uses
  %i.x = load i32, ptr %.06491, align 4, !tbaa !4 ; 2 uses
  %i.y = load i32, ptr %.06690, align 4, !tbaa !4 ; 2 uses
  %i.z = and i32 %i.x, %i.y
  %i.aa = and i32 %i.z, %.06292
  %.not71 = icmp eq i32 %i.aa, 0
  br i1 %.not71, label %flush_shift.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr @sprec, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !29 ; 3 uses
  %.not72 = icmp eq i16 %i.ad, 0
  br i1 %.not72, label %flush_shift.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp slt i16 %i.ad, %i.n
  br i1 %i.ae, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not79 = icmp eq i32 %i.af, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.ah = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !29
  %i.ak = sext i16 %i.aj to i32
  %i.al = load ptr, ptr @tags, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.ak, ptr noundef %i.an, ptr noundef nonnull @.str) #14 ; 0 uses
  %.pre98 = load i32, ptr %.06491, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i32 [ %.pre98, %bb.f ], [ %i.x, %bb.e ]
  %i.aq = xor i32 %.06292, -1
  %i.ar = and i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %.06491, align 4, !tbaa !4
  %i.as = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.w
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %flush_shift.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !24 ; 4 uses
  %i.ax = icmp sgt i16 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %flush_shift.exit

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i16 %i.aw to i64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.az = load ptr, ptr @accessing_symbol, align 8 ; 3 uses
  %xtraiter116 = and i64 %wide.trip.count.i, 1
  %i.ba = icmp eq i16 %i.aw, 1
  br i1 %i.ba, label %.epil.preheader115, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter119 = and i64 %wide.trip.count.i, 32766
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.o ] ; 3 uses
  %niter120 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter120.next.1, %bb.o ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29 ; 2 uses
  %.not13.i = icmp eq i16 %i.bc, 0
  br i1 %.not13.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = sext i16 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !29
  %i.bg = sext i16 %i.bf to i64
  %i.bh = icmp eq i64 %indvars.iv, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %i.bb, align 2, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !29 ; 2 uses
  %.not13.i.1 = icmp eq i16 %i.bk, 0
  br i1 %.not13.i.1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = sext i16 %i.bk to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !29
  %i.bo = sext i16 %i.bn to i64
  %i.bp = icmp eq i64 %indvars.iv, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 0, ptr %i.bj, align 2, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %flush_shift.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !48

bb.p:                                             ; preds = %bb.d
  %i.bq = icmp sgt i16 %i.ad, %i.n
  br i1 %i.bq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not78 = icmp eq i32 %i.br, 0
  br i1 %.not78, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.bt = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.i
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !29
  %i.bw = sext i16 %i.bv to i32
  %i.bx = load ptr, ptr @tags, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.bw, ptr noundef %i.bz, ptr noundef nonnull @.str.1) #14 ; 0 uses
  %.pre = load i32, ptr %.06690, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = phi i32 [ %.pre, %bb.r ], [ %i.y, %bb.q ]
  %i.cc = xor i32 %.06292, -1
  %i.cd = and i32 %i.cb, %i.cc
  store i32 %i.cd, ptr %.06690, align 4, !tbaa !4
  br label %flush_shift.exit

bb.t:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr @sassoc, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !29
  switch i16 %i.cg, label %bb.x [
    i16 1, label %bb.u
    i16 2, label %bb.v
    i16 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not75 = icmp eq i32 %i.ch, 0
  br i1 %.not75, label %bb.x, label %.sink.split

bb.v:                                             ; preds = %bb.t
  %i.ci = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not74 = icmp eq i32 %i.ci, 0
  br i1 %.not74, label %bb.x, label %.sink.split

bb.w:                                             ; preds = %bb.t
end_hunk_0
begin_hunk_1_@print_reductions:bb.a
  store i32 %i.hs, ptr %.3170233, align 4, !tbaa !4
  %i.hu = icmp ult ptr %i.ht, %i.fj
  br i1 %i.hu, label %.lr.ph236, label %.preheader, !llvm.loop !87

.lr.ph241:                                        ; preds = %.lr.ph241, %.lr.ph241.preheader.new
  %.0144239 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %spec.select204.1, %.lr.ph241 ]
  %.2163238 = phi i32 [ 1, %.lr.ph241.preheader.new ], [ %.3164.1, %.lr.ph241 ] ; 2 uses
  %.4171237 = phi ptr [ %i.ff, %.lr.ph241.preheader.new ], [ %.5172.1, %.lr.ph241 ] ; 2 uses
  %niter409 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %niter409.next.1, %.lr.ph241 ]
  %i.hv = load i32, ptr %.4171237, align 4, !tbaa !4
  %i.hw = and i32 %i.hv, %.2163238
  %.not194 = icmp ne i32 %i.hw, 0
  %i.hx = zext i1 %.not194 to i32
  %spec.select204 = add nuw nsw i32 %.0144239, %i.hx
  %i.hy = shl i32 %.2163238, 1                    ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  %.5172.idx = select i1 %i.hz, i64 4, i64 0
  %.5172 = getelementptr inbounds nuw i8, ptr %.4171237, i64 %.5172.idx ; 2 uses
  %.3164 = tail call i32 @llvm.umax.i32(i32 %i.hy, i32 1) ; 2 uses
  %i.ia = load i32, ptr %.5172, align 4, !tbaa !4
  %i.ib = and i32 %i.ia, %.3164
  %.not194.1 = icmp ne i32 %i.ib, 0
  %i.ic = zext i1 %.not194.1 to i32
  %spec.select204.1 = add nuw nsw i32 %spec.select204, %i.ic ; 3 uses
  %i.id = shl i32 %.3164, 1                       ; 2 uses
  %i.ie = icmp eq i32 %i.id, 0
  %.5172.idx.1 = select i1 %i.ie, i64 4, i64 0
  %.5172.1 = getelementptr inbounds nuw i8, ptr %.5172, i64 %.5172.idx.1 ; 2 uses
  %.3164.1 = tail call i32 @llvm.umax.i32(i32 %i.id, i32 1) ; 2 uses
  %niter409.next.1 = add i32 %niter409, 2         ; 2 uses
  %niter409.ncmp.1 = icmp eq i32 %niter409.next.1, %unroll_iter408
  br i1 %niter409.ncmp.1, label %._crit_edge242.loopexit.unr-lcssa, label %.lr.ph241, !llvm.loop !88

._crit_edge242.loopexit.unr-lcssa:                ; preds = %.lr.ph241
  %lcmp.mod405.not = icmp eq i32 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %._crit_edge242, label %.lr.ph241.epil.preheader

.lr.ph241.epil.preheader:                         ; preds = %._crit_edge242.loopexit.unr-lcssa, %.lr.ph241.preheader
  %.0144239.epil.init = phi i32 [ 0, %.lr.ph241.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.2163238.epil.init = phi i32 [ 1, %.lr.ph241.preheader ], [ %.3164.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.4171237.epil.init = phi ptr [ %i.ff, %.lr.ph241.preheader ], [ %.5172.1, %._crit_edge242.loopexit.unr-lcssa ]
  %lcmp.mod407 = trunc i32 %i.hk to i1
  tail call void @llvm.assume(i1 %lcmp.mod407)
  %i.if = load i32, ptr %.4171237.epil.init, align 4, !tbaa !4
  %i.ig = and i32 %i.if, %.2163238.epil.init
  %.not194.epil = icmp ne i32 %i.ig, 0
  %i.ih = zext i1 %.not194.epil to i32
  %spec.select204.epil = add nuw nsw i32 %.0144239.epil.init, %i.ih
  br label %._crit_edge242

._crit_edge242:                                   ; preds = %.lr.ph241.epil.preheader, %._crit_edge242.loopexit.unr-lcssa, %.preheader
  %.0144.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ], [ %spec.select204.epil, %.lr.ph241.epil.preheader ] ; 2 uses
  %i.ii = icmp sgt i32 %.0144.lcssa, %.0149251
  br i1 %i.ii, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge242
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %indvars.iv294
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !29
  %i.il = sext i16 %i.ik to i32
  %i.im = trunc nsw i64 %indvars.iv294 to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge242
  %.1155 = phi i32 [ %i.im, %bb.u ], [ %.0154249, %._crit_edge242 ] ; 2 uses
  %.1152 = phi i32 [ %i.il, %bb.u ], [ %.0151250, %._crit_edge242 ] ; 2 uses
  %.1150 = phi i32 [ %.0144.lcssa, %bb.u ], [ %.0149251, %._crit_edge242 ]
  br i1 %i.fp, label %.lr.ph247.preheader, label %._crit_edge248

.lr.ph247.preheader:                              ; preds = %bb.v
  %brmerge = select i1 %min.iters.check358, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph247.preheader400, label %vector.body362

vector.body362:                                   ; preds = %.lr.ph247.preheader, %vector.body362
  %index363 = phi i64 [ %index.next370, %vector.body362 ], [ 0, %.lr.ph247.preheader ] ; 2 uses
  %i.in = shl i64 %index363, 2                    ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.ff, i64 %i.in ; 2 uses
  %next.gep365 = getelementptr i8, ptr %i.fn, i64 %i.in ; 3 uses
  %i.io = getelementptr i8, ptr %next.gep364, i64 16
  %wide.load366 = load <4 x i32>, ptr %next.gep364, align 4, !tbaa !4, !alias.scope !89
  %wide.load367 = load <4 x i32>, ptr %i.io, align 4, !tbaa !4, !alias.scope !89
  %i.ip = getelementptr i8, ptr %next.gep365, i64 16 ; 2 uses
  %wide.load368 = load <4 x i32>, ptr %next.gep365, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %wide.load369 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %i.iq = or <4 x i32> %wide.load368, %wide.load366
  %i.ir = or <4 x i32> %wide.load369, %wide.load367
  store <4 x i32> %i.iq, ptr %next.gep365, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  store <4 x i32> %i.ir, ptr %i.ip, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %index.next370 = add nuw i64 %index363, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next370, %n.vec361
  br i1 %i.is, label %middle.block371, label %vector.body362, !llvm.loop !94

middle.block371:                                  ; preds = %vector.body362
  br i1 %cmp.n372, label %._crit_edge248, label %.lr.ph247.preheader400

.lr.ph247.preheader400:                           ; preds = %.lr.ph247.preheader, %middle.block371
  %.6173245.ph = phi ptr [ %i.gp, %middle.block371 ], [ %i.ff, %.lr.ph247.preheader ]
  %.2177244.ph = phi ptr [ %i.gq, %middle.block371 ], [ %i.fn, %.lr.ph247.preheader ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader400, %.lr.ph247
  %.6173245 = phi ptr [ %i.it, %.lr.ph247 ], [ %.6173245.ph, %.lr.ph247.preheader400 ] ; 2 uses
  %.2177244 = phi ptr [ %i.iv, %.lr.ph247 ], [ %.2177244.ph, %.lr.ph247.preheader400 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.6173245, i64 4 ; 2 uses
  %i.iu = load i32, ptr %.6173245, align 4, !tbaa !4
  %i.iv = getelementptr inbounds nuw i8, ptr %.2177244, i64 4
  %i.iw = load i32, ptr %.2177244, align 4, !tbaa !4
  %i.ix = or i32 %i.iw, %i.iu
  store i32 %i.ix, ptr %.2177244, align 4, !tbaa !4
  %i.iy = icmp ult ptr %i.it, %i.fj
  br i1 %i.iy, label %.lr.ph247, label %._crit_edge248, !llvm.loop !95

._crit_edge248:                                   ; preds = %.lr.ph247, %middle.block371, %bb.v
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond298.not, label %.loopexit208.loopexit, label %bb.t, !llvm.loop !96

.loopexit208.loopexit:                            ; preds = %._crit_edge248
  %.pre315 = load i32, ptr @tokensetsize, align 4, !tbaa !4
  br label %.loopexit208

.loopexit208:                                     ; preds = %.loopexit208.loopexit, %bb.s
  %i.iz = phi i32 [ %i.fh, %bb.s ], [ %.pre315, %.loopexit208.loopexit ]
  %.2156 = phi i32 [ -1, %bb.s ], [ %.1155, %.loopexit208.loopexit ] ; 2 uses
  %.2153 = phi i32 [ undef, %bb.s ], [ %.1152, %.loopexit208.loopexit ] ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %.loopexit208
  %i.jb = load ptr, ptr @shiftset, align 8, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph258, %bb.w
  %indvars.iv299 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next300, %bb.w ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv299
  store i32 0, ptr %i.jc, align 4, !tbaa !4
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.jd = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next300, %i.je
  br i1 %i.jf, label %bb.w, label %._crit_edge259, !llvm.loop !97

._crit_edge259:                                   ; preds = %bb.w, %.loopexit208
  br i1 %.not, label %._crit_edge259..loopexit_crit_edge, label %bb.x

._crit_edge259..loopexit_crit_edge:               ; preds = %._crit_edge259
  %.pre316 = load ptr, ptr @shiftset, align 8, !tbaa !11
  br label %.loopexitthread-pre-split

bb.x:                                             ; preds = %._crit_edge259
  %i.jg = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !24 ; 2 uses
  %i.ji = icmp sgt i16 %i.jh, 0
  %.pre317 = load ptr, ptr @shiftset, align 8     ; 4 uses
  br i1 %i.ji, label %.lr.ph262, label %.loopexitthread-pre-split

.lr.ph262:                                        ; preds = %bb.x
  %wide.trip.count305 = zext nneg i16 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.jk = load ptr, ptr @accessing_symbol, align 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph262, %bb.ab
  %indvars.iv302 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next303, %bb.ab ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %indvars.iv302
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !29 ; 2 uses
  %.not195 = icmp eq i16 %i.jm, 0
  br i1 %.not195, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jn = sext i16 %i.jm to i64
  %i.jo = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !29
  %i.jq = sext i16 %i.jp to i32                   ; 3 uses
  %i.jr = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %.not196 = icmp sgt i32 %i.jr, %i.jq
  br i1 %.not196, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.js = and i32 %i.jq, 31
  %i.jt = shl nuw i32 1, %i.js
  %i.ju = ashr i32 %i.jq, 5
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %.pre317, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.jy = or i32 %i.jx, %i.jt
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.loopexitthread-pre-split, label %bb.y, !llvm.loop !98

.loopexitthread-pre-split:                        ; preds = %bb.ab, %bb.x, %._crit_edge259..loopexit_crit_edge
  %.ph = phi ptr [ %.pre316, %._crit_edge259..loopexit_crit_edge ], [ %.pre317, %bb.x ], [ %.pre317, %bb.ab ]
  %.pr = load i32, ptr @ntokens, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.loopexitthread-pre-split
  %i.jz = phi i32 [ %.pr, %.loopexitthread-pre-split ], [ %i.jr, %bb.z ] ; 2 uses
  %i.ka = phi ptr [ %.ph, %.loopexitthread-pre-split ], [ %.pre317, %bb.z ]
  %i.kb = icmp sgt i32 %i.jz, 0
  br i1 %i.kb, label %.lr.ph269.preheader, label %._crit_edge276.split

.lr.ph269.preheader:                              ; preds = %.loopexit
  %i.kc = load ptr, ptr @LA, align 8, !tbaa !11
  %i.kd = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.ke = mul nsw i32 %i.kd, %i.by
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.kf
  %1 = icmp slt i16 %i.bx, %i.ca
  %2 = sext i32 %.2156 to i64                     ; 2 uses
  %i.kh = sext i16 %i.bx to i64
  %wide.trip.count310 = sext i16 %i.ca to i64
  br label %3

3:                                                ; preds = %.lr.ph269.preheader, %._crit_edge270
  %4 = phi i32 [ %i.jz, %.lr.ph269.preheader ], [ %5, %._crit_edge270 ]
  %indvars.iv312 = phi i64 [ 0, %.lr.ph269.preheader ], [ %indvars.iv.next313, %._crit_edge270 ] ; 3 uses
  %.2159272 = phi ptr [ %i.kg, %.lr.ph269.preheader ], [ %spec.select206, %._crit_edge270 ] ; 2 uses
  %.4165271 = phi i32 [ 1, %.lr.ph269.preheader ], [ %spec.select205, %._crit_edge270 ] ; 3 uses
  br i1 %1, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %3
  %i.ki = load i32, ptr %i.ka, align 4, !tbaa !4
  %i.kj = and i32 %i.ki, %.4165271
  %.not197 = icmp ne i32 %i.kj, 0
  %. = zext i1 %.not197 to i32
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph269, %bb.ai
  %indvars.iv307 = phi i64 [ %i.kh, %.lr.ph269 ], [ %indvars.iv.next308, %bb.ai ] ; 3 uses
  %.0267 = phi i32 [ 0, %.lr.ph269 ], [ %.3, %bb.ai ] ; 3 uses
  %.3147265 = phi i32 [ %., %.lr.ph269 ], [ %.4148, %bb.ai ] ; 2 uses
  %.7174264 = phi ptr [ %.2159272, %.lr.ph269 ], [ %i.lv, %bb.ai ] ; 2 uses
  %i.kk = load i32, ptr %.7174264, align 4, !tbaa !4
  %i.kl = and i32 %i.kk, %.4165271
  %.not198 = icmp eq i32 %i.kl, 0
  br i1 %.not198, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.km = icmp eq i32 %.3147265, 0
  br i1 %i.km, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.kn = icmp eq i64 %indvars.iv307, %2
  br i1 %i.kn, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ko = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ad
  %.not199 = icmp eq i32 %.0267, 0
  %.pre319 = load ptr, ptr @LAruleno, align 8, !tbaa !27 ; 2 uses
  br i1 %.not199, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kp = getelementptr inbounds [2 x i8], ptr %.pre319, i64 %2
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !29 ; 2 uses
  %i.kr = sext i16 %i.kq to i32
  %i.ks = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.kt = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv312
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !8
  %i.kw = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.kx = sext i16 %i.kq to i64
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !29
  %i.la = sext i16 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !8
  %i.ld = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.13, ptr noundef %i.kv, i32 noundef %i.kr, ptr noundef %i.lc) #14 ; 0 uses
  %.pre318 = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.ah, %bb.af
  %.sink = phi ptr [ %i.ko, %bb.af ], [ %.pre318, %bb.ah ], [ %.pre319, %bb.ag ]
  %.str.13.sink = phi ptr [ @.str.13, %bb.af ], [ @.str.11, %bb.ah ], [ @.str.11, %bb.ag ]
  %.3.ph = phi i32 [ %.0267, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.le = getelementptr inbounds [2 x i8], ptr %.sink, i64 %indvars.iv307
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !29 ; 2 uses
  %i.lg = sext i16 %i.lf to i32
  %i.lh = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.li = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv312
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !8
  %i.ll = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.lm = sext i16 %i.lf to i64
  %i.ln = getelementptr inbounds [2 x i8], ptr %i.ll, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !29
  %i.lp = sext i16 %i.lo to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !8
  %i.ls = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lh, ptr noundef nonnull %.str.13.sink, ptr noundef %i.lk, i32 noundef %i.lg, ptr noundef %i.lr) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ae, %bb.ac
  %.4148 = phi i32 [ %.3147265, %bb.ac ], [ 1, %bb.ae ], [ 1, %.sink.split ]
  %.3 = phi i32 [ %.0267, %bb.ac ], [ 1, %bb.ae ], [ %.3.ph, %.sink.split ]
  %i.lt = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %.7174264, i64 %i.lu
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge270.loopexit, label %bb.ac, !llvm.loop !99

._crit_edge270.loopexit:                          ; preds = %bb.ai
  %.pre320 = load i32, ptr @ntokens, align 4, !tbaa !4
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %._crit_edge270.loopexit, %3
  %5 = phi i32 [ %.pre320, %._crit_edge270.loopexit ], [ %4, %3 ] ; 2 uses
  %i.lw = shl i32 %.4165271, 1                    ; 2 uses
  %i.lx = icmp eq i32 %i.lw, 0
  %spec.select205 = tail call i32 @llvm.umax.i32(i32 %i.lw, i32 1)
  %spec.select206.idx = select i1 %i.lx, i64 4, i64 0
  %spec.select206 = getelementptr inbounds nuw i8, ptr %.2159272, i64 %spec.select206.idx
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.ly = sext i32 %5 to i64
  %i.lz = icmp slt i64 %indvars.iv.next313, %i.ly
  br i1 %i.lz, label %3, label %._crit_edge276.split, !llvm.loop !100

._crit_edge276.split:                             ; preds = %._crit_edge270, %.loopexit
  %i.ma = icmp sgt i32 %.2156, -1
  br i1 %i.ma, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge276.split
  %i.mb = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.mc = load ptr, ptr @tags, align 8, !tbaa !46
  %i.md = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.me = sext i32 %.2153 to i64
  %i.mf = getelementptr inbounds [2 x i8], ptr %i.md, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !29
  %i.mh = sext i16 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !8
  %i.mk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mb, ptr noundef nonnull @.str.14, i32 noundef %.2153, ptr noundef %i.mj) #14 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge276.split
  %i.ml = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.mm = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ml) ; 0 uses
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

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
!34 = distinct !{!34, !18, !35}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = distinct !{!36, !18}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !18, !35, !43}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
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
!66 = distinct !{!66, !18, !35, !43}
!67 = distinct !{!67, !18, !35}
!68 = distinct !{!68, !18}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !18, !35, !43}
!75 = distinct !{!75, !18, !35}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !57}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18, !35, !43}
!84 = distinct !{!84, !18, !35}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18, !35, !43}
!87 = distinct !{!87, !18, !35}
!88 = distinct !{!88, !18}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !18, !35, !43}
!95 = distinct !{!95, !18, !35}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18}
end_hunk_1
