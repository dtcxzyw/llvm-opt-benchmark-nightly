Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/conflicts?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@set_conflicts:bb.a
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
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 4 uses
  %i.bv = icmp ult ptr %i.bt, %i.ar
  br i1 %i.bv, label %.lr.ph74.us.us.preheader, label %.loopexit

.lr.ph74.us.us.preheader:                         ; preds = %.lr.ph81
  %i.bw = sext i16 %i.br to i32
  %i.bx = shl nsw i64 %i.aq, 2
  %i.by = add i64 %i.bx, %i.ak
  %i.bz = add i64 %i.bu, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bz)
  %i.ca = xor i64 %i.bu, -1
  %i.cb = add i64 %umax, %i.ca
  %i.cc = and i64 %i.cb, -4
  %i.cd = add i64 %i.cc, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.cd
  %i.ce = shl nsw i64 %i.aq, 2
  %i.cf = add i64 %i.ce, %i.ak
  %i.cg = add i64 %i.bu, 4
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.cg)
  %i.ci = xor i64 %i.bu, -1
  %i.cj = add i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cj, 28
  %n.vec = and i64 %i.cl, 9223372036854775800     ; 3 uses
  %i.cm = shl i64 %n.vec, 2                       ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bt, i64 %i.cm
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %.lr.ph74.us.us.preheader, %._crit_edge78.us.us
  %.379.us.us = phi i32 [ %i.dp, %._crit_edge78.us.us ], [ %i.bw, %.lr.ph74.us.us.preheader ] ; 2 uses
  %i.co = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.cp = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.cq = mul i32 %i.cp, %.379.us.us
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph74.us.us
  %.172.us.us = phi ptr [ %i.bt, %.lr.ph74.us.us ], [ %i.cv, %bb.l ] ; 2 uses
  %.14571.us.us = phi ptr [ %i.cs, %.lr.ph74.us.us ], [ %i.ct, %bb.l ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.14571.us.us, i64 4
  %i.cu = load i32, ptr %.14571.us.us, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.172.us.us, i64 4 ; 2 uses
  %i.cw = load i32, ptr %.172.us.us, align 4, !tbaa !4
  %i.cx = and i32 %i.cw, %i.cu
  %.not56.us.us = icmp eq i32 %i.cx, 0
  br i1 %.not56.us.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr @conflicts, align 8, !tbaa !8
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.b
  store i8 1, ptr %i.cz, align 1, !tbaa !16
  store i8 1, ptr @any_conflicts, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.da = icmp ult ptr %i.cv, %i.ar
  br i1 %i.da, label %bb.j, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !33

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.l
  br i1 %min.iters.check, label %..preheader_crit_edge.us.us.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us.preheader
  %scevgep109 = getelementptr i8, ptr %i.co, i64 %i.cd
  %i.db = shl nsw i64 %i.cr, 2
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.db
  %bound0 = icmp ult ptr %i.bt, %scevgep110
  %bound1 = icmp ult ptr %i.cs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %..preheader_crit_edge.us.us.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dc = getelementptr i8, ptr %i.cs, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.dd ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.cs, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !4, !alias.scope !34
  %wide.load112 = load <4 x i32>, ptr %i.de, align 4, !tbaa !4, !alias.scope !34
  %i.df = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load113 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  %wide.load114 = load <4 x i32>, ptr %i.df, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  %i.dg = or <4 x i32> %wide.load113, %wide.load
  %i.dh = or <4 x i32> %wide.load114, %wide.load112
  store <4 x i32> %i.dg, ptr %next.gep, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  store <4 x i32> %i.dh, ptr %i.df, align 4, !tbaa !4, !alias.scope !37, !noalias !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge78.us.us, label %..preheader_crit_edge.us.us.preheader116

..preheader_crit_edge.us.us.preheader116:         ; preds = %vector.memcheck, %..preheader_crit_edge.us.us.preheader, %middle.block
  %.276.us.us.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %..preheader_crit_edge.us.us.preheader ], [ %i.cn, %middle.block ]
  %.24675.us.us.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %..preheader_crit_edge.us.us.preheader ], [ %i.dc, %middle.block ]
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader116, %..preheader_crit_edge.us.us
  %.276.us.us = phi ptr [ %i.dl, %..preheader_crit_edge.us.us ], [ %.276.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 3 uses
  %.24675.us.us = phi ptr [ %i.dj, %..preheader_crit_edge.us.us ], [ %.24675.us.us.ph, %..preheader_crit_edge.us.us.preheader116 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.24675.us.us, i64 4
  %i.dk = load i32, ptr %.24675.us.us, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %.276.us.us, i64 4 ; 2 uses
  %i.dm = load i32, ptr %.276.us.us, align 4, !tbaa !4
  %i.dn = or i32 %i.dm, %i.dk
  store i32 %i.dn, ptr %.276.us.us, align 4, !tbaa !4
  %i.do = icmp ult ptr %i.dl, %i.ar
  br i1 %i.do, label %..preheader_crit_edge.us.us, label %._crit_edge78.us.us, !llvm.loop !42

._crit_edge78.us.us:                              ; preds = %..preheader_crit_edge.us.us, %middle.block
  %i.dp = add nsw i32 %.379.us.us, 1              ; 2 uses
  %exitcond91.not = icmp eq i32 %i.dp, %i.ap
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph74.us.us, !llvm.loop !43

.loopexit:                                        ; preds = %._crit_edge78.us.us, %._crit_edge70, %.lr.ph81, %bb.a
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
  %2 = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.o = icmp sgt i32 %2, 0
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

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter119 = and i64 %wide.trip.count.i, 32766
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.o ] ; 3 uses
  %niter120 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter120.next.1, %bb.o ]
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !29 ; 2 uses
  %.not13.i = icmp eq i16 %i.bb, 0
  br i1 %.not13.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !29
  %i.bf = sext i16 %i.be to i64
  %i.bg = icmp eq i64 %indvars.iv, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %i.ba, align 2, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !29 ; 2 uses
  %.not13.i.1 = icmp eq i16 %i.bj, 0
  br i1 %.not13.i.1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = sext i16 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !29
  %i.bn = sext i16 %i.bm to i64
  %i.bo = icmp eq i64 %indvars.iv, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 0, ptr %i.bi, align 2, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %flush_shift.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !48

bb.p:                                             ; preds = %bb.d
  %i.bp = icmp sgt i16 %i.ac, %i.n
  br i1 %i.bp, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bq = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not78 = icmp eq i32 %i.bq, 0
  br i1 %.not78, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.bs = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.i
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !29
  %i.bv = sext i16 %i.bu to i32
  %i.bw = load ptr, ptr @tags, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.bv, ptr noundef %i.by, ptr noundef nonnull @.str.1) #14 ; 0 uses
  %.pre = load i32, ptr %.06393, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = phi i32 [ %.pre, %bb.r ], [ %i.x, %bb.q ]
  %i.cb = xor i32 %.06592, -1
  %i.cc = and i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %.06393, align 4, !tbaa !4
  br label %flush_shift.exit

bb.t:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr @sassoc, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !29
  switch i16 %i.cf, label %bb.x [
    i16 1, label %bb.u
    i16 2, label %bb.v
    i16 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.cg = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not75 = icmp eq i32 %i.cg, 0
  br i1 %.not75, label %bb.x, label %.sink.split

bb.v:                                             ; preds = %bb.t
  %i.ch = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not74 = icmp eq i32 %i.ch, 0
  br i1 %.not74, label %bb.x, label %.sink.split

bb.w:                                             ; preds = %bb.t
  %i.ci = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not73 = icmp eq i32 %i.ci, 0
  br i1 %.not73, label %bb.x, label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.v, %bb.u
  %.str.2.sink = phi ptr [ @.str, %bb.v ], [ @.str.1, %bb.u ], [ @.str.2, %bb.w ]
  %i.cj = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.ck = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !29
  %i.cn = sext i16 %i.cm to i32
  %i.co = load ptr, ptr @tags, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !8
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.cn, ptr noundef %i.cq, ptr noundef nonnull %.str.2.sink) #14 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w, %bb.v, %bb.u, %bb.t
  %i.cs = load ptr, ptr @sassoc, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !29 ; 3 uses
  %.not76 = icmp eq i16 %i.cu, 1
end_hunk_0
