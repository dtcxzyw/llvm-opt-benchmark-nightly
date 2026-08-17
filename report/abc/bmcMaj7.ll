inline.NumInlined: 184
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Exa7_ManExactSynthesis:bb.a
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.g, %.preheader.us.preheader.i
  %.018.us.i = phi i32 [ %i.bg, %bb.g ], [ 0, %.preheader.us.preheader.i ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.018.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi868 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.am = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.an = lshr <4 x i32> %broadcast.splat, %step.add
  %i.ao = and <4 x i32> %i.am, splat (i32 1)
  %i.ap = and <4 x i32> %i.an, splat (i32 1)
  %i.aq = add <4 x i32> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %vec.phi868        ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i32 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %.01417.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %i.at, %middle.block ]
  %.01516.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01417.us.i = phi i32 [ %i.aw, %scalar.ph ], [ %.01417.us.i.ph, %scalar.ph.preheader ]
  %.01516.us.i = phi i32 [ %i.ax, %scalar.ph ], [ %.01516.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.au = lshr i32 %.018.us.i, %.01516.us.i
  %i.av = and i32 %i.au, 1
  %i.aw = add nuw nsw i32 %i.av, %.01417.us.i     ; 2 uses
  %i.ax = add nuw nsw i32 %.01516.us.i, 1         ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.ax, %i.aa
  br i1 %exitcond21.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !58

bb.f:                                             ; preds = %._crit_edge.us.i
  %i.ay = and i32 %.018.us.i, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = lshr i32 %.018.us.i, 6
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !59
  %i.bf = xor i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.us.i, %bb.f
  %i.bg = add nuw nsw i32 %.018.us.i, 1           ; 2 uses
  %exitcond23.not.i = icmp eq i32 %i.bg, %smax22.i
  br i1 %exitcond23.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.us.i, !llvm.loop !60

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa867 = phi i32 [ %i.at, %middle.block ], [ %i.aw, %scalar.ph ]
  %i.bh = zext nneg i32 %.lcssa867 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33
  %i.bk = icmp eq i8 %i.bj, 49
  br i1 %i.bk, label %bb.f, label %bb.g

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.bl = load i8, ptr %i.ai, align 1, !tbaa !33
  %i.bm = icmp eq i8 %i.bl, 49
  br i1 %i.bm, label %.preheader.preheader.i, label %Abc_TtSymFunGenerate.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 1) ; 3 uses
  %xtraiter = and i32 %smax.i, 1
  %i.bn = icmp slt i32 %i.ak, 2
  br i1 %i.bn, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i32 %smax.i, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %.018.i = phi i32 [ 0, %.preheader.preheader.i.new ], [ %i.cf, %.preheader.i ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader.i.new ], [ %niter.next.1, %.preheader.i ]
  %i.bo = and i32 %.018.i, 62
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 1, %i.bp
  %i.br = lshr i32 %.018.i, 6
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bs ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !59
  %i.bv = xor i64 %i.bq, %i.bu
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !59
  %i.bw = and i32 %.018.i, 62
  %i.bx = or disjoint i32 %i.bw, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = lshr i32 %.018.i, 6
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.cb ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !59
  %i.ce = xor i64 %i.bz, %i.cd
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !59
  %i.cf = add nuw nsw i32 %.018.i, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSymFunGenerate.exit.loopexit1120.unr-lcssa, label %.preheader.i, !llvm.loop !60

Abc_TtSymFunGenerate.exit.loopexit1120.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TtSymFunGenerate.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %Abc_TtSymFunGenerate.exit.loopexit1120.unr-lcssa, %.preheader.preheader.i
  %.018.i.epil.init = phi i32 [ 0, %.preheader.preheader.i ], [ %i.cf, %Abc_TtSymFunGenerate.exit.loopexit1120.unr-lcssa ] ; 2 uses
  %lcmp.mod1121 = trunc i32 %smax.i to i1
  call void @llvm.assume(i1 %lcmp.mod1121)
  %i.cg = and i32 %.018.i.epil.init, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = lshr i32 %.018.i.epil.init, 6
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ck ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !59
  %i.cn = xor i64 %i.ci, %i.cm
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !59
  br label %Abc_TtSymFunGenerate.exit

Abc_TtSymFunGenerate.exit:                        ; preds = %.preheader.i.epil.preheader, %Abc_TtSymFunGenerate.exit.loopexit1120.unr-lcssa, %bb.g, %bb.e, %.preheader.lr.ph.split.i
  %i.co = icmp sgt i32 %i.aa, 2
  %i.cp = add nsw i32 %i.aa, -2
  %i.cq = shl nuw i32 1, %i.cp
  %i.cr = add nuw nsw i32 %i.cq, 1
  %narrow = select i1 %i.co, i32 %i.cr, i32 2
  %i.cs = sext i32 %narrow to i64
  %i.ct = call noalias ptr @calloc(i64 noundef %i.cs, i64 noundef 1) #22 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !61
  call void @Extra_PrintHexadecimalString(ptr noundef %i.ct, ptr noundef %i.aj, i32 noundef %i.aa) #23
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !62
  %.not109 = icmp eq i32 %i.cw, 0
  br i1 %.not109, label %bb.h, label %bb.j

bb.h:                                             ; preds = %Abc_TtSymFunGenerate.exit
  %i.cx = load i32, ptr %0, align 8, !tbaa !53
  %i.cy = icmp slt i32 %i.cx, 8
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !61
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %i.cz) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %Abc_TtSymFunGenerate.exit
  %.not110 = icmp eq ptr %i.aj, null
  br i1 %.not110, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.aj) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %Abc_Clock.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !61 ; 5 uses
  %.not111 = icmp eq ptr %i.dc, null
  br i1 %.not111, label %Abc_TtReadHex.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !33  ; 2 uses
  %i.de = icmp eq i8 %i.dd, 48
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !33
  %i.dh = icmp eq i8 %i.dg, 120
  %spec.select.idx.i = select i1 %i.dh, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 %spec.select.idx.i ; 2 uses
  %.pre.i = load i8, ptr %spec.select.i, align 1, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.di = phi i8 [ %i.dd, %bb.m ], [ %.pre.i, %bb.n ] ; 3 uses
  %.038.i = phi ptr [ %i.dc, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  %i.dj = add i8 %i.di, -58
  %or.cond.i50.i = icmp ult i8 %i.dj, -10
  %i.dk = and i8 %i.di, -33
  %i.dl = add i8 %i.dk, -71
  %i.dm = icmp ult i8 %i.dl, -6
  %narrow.i.not51.i = and i1 %or.cond.i50.i, %i.dm
  br i1 %narrow.i.not51.i, label %.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.o ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.038.i, i64 %indvars.iv.next.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !33  ; 2 uses
  %i.dp = add i8 %i.do, -58
  %or.cond.i.i = icmp ult i8 %i.dp, -10
  %i.dq = and i8 %i.do, -33
  %i.dr = add i8 %i.dq, -71
  %i.ds = icmp ult i8 %i.dr, -6
  %narrow.i.not.i = and i1 %or.cond.i.i, %i.ds
  br i1 %narrow.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !63

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  switch i32 %indvars.i, label %.lr.ph.preheader.i.i [
    i32 1, label %bb.p
    i32 0, label %.sink.split.i
  ]

bb.p:                                             ; preds = %._crit_edge.i
  %switch.tableidx = add i8 %i.di, -48            ; 3 uses
  %i.dt = icmp ult i8 %switch.tableidx, 23
  br i1 %i.dt, label %switch.hole_check, label %.lr.ph57.preheader.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %i.du = add i32 %indvars.i, -1                  ; 2 uses
  %i.dv = lshr i32 %i.du, 1
  %i.dw = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.dv, i1 false) ; 2 uses
  %i.dx = sub nuw nsw i32 35, %i.dw
  %i.dy = icmp ult i32 %i.du, 16
  %i.dz = sub nsw i32 29, %i.dw
  %i.ea = shl nuw nsw i32 1, %i.dz
  %spec.select48.i = select i1 %i.dy, i32 1, i32 %i.ea
  %i.eb = zext nneg i32 %spec.select48.i to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  br label %.lr.ph57.preheader.i

.lr.ph57.preheader.i:                             ; preds = %switch.hole_check, %bb.p, %.lr.ph.preheader.i.i
  %.fr.i = phi i32 [ %i.dx, %.lr.ph.preheader.i.i ], [ 2, %bb.p ], [ 2, %switch.hole_check ] ; 4 uses
  %i.ed = phi i64 [ %i.ec, %.lr.ph.preheader.i.i ], [ 8, %bb.p ], [ 8, %switch.hole_check ]
  call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ed, i1 false), !tbaa !59
  %wide.trip.count.i = and i64 %indvars.iv.next.i, 4294967295
  br label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %Abc_TtReadHexDigit.exit.i, %.lr.ph57.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph57.preheader.i ], [ %indvars.iv.next67.i, %Abc_TtReadHexDigit.exit.i ] ; 4 uses
  %5 = sub nsw i64 %indvars.iv.i, %indvars.iv66.i
  %6 = and i64 %5, 4294967295
  %i.ee = getelementptr inbounds nuw i8, ptr %.038.i, i64 %6
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !33  ; 4 uses
  %i.eg = sext i8 %i.ef to i64                    ; 3 uses
  %i.eh = add i8 %i.ef, -48
  %or.cond.i43.i = icmp ult i8 %i.eh, 10
  br i1 %or.cond.i43.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph57.i
  %i.ei = add nsw i64 %i.eg, -48
  br label %Abc_TtReadHexDigit.exit.i

bb.r:                                             ; preds = %.lr.ph57.i
  %i.ej = add i8 %i.ef, -65
  %or.cond5.i.i = icmp ult i8 %i.ej, 6
  br i1 %or.cond5.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ek = add nsw i64 %i.eg, -55
  br label %Abc_TtReadHexDigit.exit.i

bb.t:                                             ; preds = %bb.r
  %i.el = add i8 %i.ef, -97
  %or.cond8.i.i = icmp ult i8 %i.el, 6
  %i.em = add nsw i64 %i.eg, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i64 %i.em, i64 -1
  br label %Abc_TtReadHexDigit.exit.i

Abc_TtReadHexDigit.exit.i:                        ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i = phi i64 [ %i.ei, %bb.q ], [ %i.ek, %bb.s ], [ %spec.select.i.i, %bb.t ]
  %i.en = shl i64 %indvars.iv66.i, 2
  %i.eo = and i64 %i.en, 60
  %i.ep = shl i64 %.0.i.i, %i.eo
  %i.eq = lshr i64 %indvars.iv66.i, 4
  %i.er = and i64 %i.eq, 268435455
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.er ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !59
  %i.eu = or i64 %i.et, %i.ep
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !59
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond.not.i135 = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count.i
  br i1 %exitcond.not.i135, label %._crit_edge58.i, label %.lr.ph57.i, !llvm.loop !64

._crit_edge58.i:                                  ; preds = %Abc_TtReadHexDigit.exit.i
  %i.ev = icmp samesign ult i32 %.fr.i, 6
  br i1 %i.ev, label %bb.u, label %Abc_TtReadHex.exit

bb.u:                                             ; preds = %._crit_edge58.i
  %i.ew = load i64, ptr %i.ag, align 8, !tbaa !59 ; 4 uses
  %i.ex = icmp samesign ult i32 %.fr.i, 3
  %i.ey = and i64 %i.ew, 15
  %i.ez = mul nuw nsw i64 %i.ey, 17
  %spec.select86.i = select i1 %i.ex, i64 %i.ez, i64 %i.ew
  %i.fa = icmp samesign ult i32 %.fr.i, 4
  %i.fb = and i64 %spec.select86.i, 255
  %i.fc = mul nuw nsw i64 %i.fb, 257
  %i.fd = select i1 %i.fa, i64 %i.fc, i64 %i.ew
  %.not72.i = icmp eq i32 %.fr.i, 5
  %i.fe = and i64 %i.fd, 65535
  %i.ff = mul nuw nsw i64 %i.fe, 65537
  %spec.select87.i = select i1 %.not72.i, i64 %i.ew, i64 %i.ff
  %i.fg = and i64 %spec.select87.i, 4294967295
  %i.fh = mul nuw i64 %i.fg, 4294967297
  br label %.sink.split.i

switch.hole_check:                                ; preds = %bb.p
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph57.preheader.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.fi = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Exa7_ManExactSynthesis, i64 %i.fi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %switch.lookup, %bb.o, %._crit_edge.i, %bb.u
  %.sink.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.o ], [ %i.fh, %bb.u ], [ 0, %._crit_edge.i ]
  store i64 %.sink.i, ptr %i.ag, align 8, !tbaa !59
  br label %Abc_TtReadHex.exit

Abc_TtReadHex.exit:                               ; preds = %.sink.split.i, %._crit_edge58.i, %bb.l
  %i.fj = call noalias dereferenceable_or_null(131440) ptr @calloc(i64 noundef 1, i64 noundef 131440) #22 ; 42 uses
  store ptr %0, ptr %i.fj, align 8, !tbaa !65
  %i.fk = load i32, ptr %0, align 8, !tbaa !53    ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 51 uses
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !66 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12 ; 14 uses
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !67
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !68 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 44 uses
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !69
  %notmask.i = shl nsw i32 -1, %i.fq
  %i.fs = xor i32 %notmask.i, -1                  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 20 ; 25 uses
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !70
  %i.fu = add nsw i32 %i.fn, %i.fk                ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 57 uses
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !71
  %i.fw = icmp slt i32 %i.fk, 7
  %i.fx = add nsw i32 %i.fk, -6
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = select i1 %i.fw, i32 1, i32 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fj, i64 28 ; 8 uses
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !72
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fj, i64 40 ; 4 uses
  store ptr %i.ag, ptr %i.gb, align 8, !tbaa !73
  %i.gc = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 16 uses
  %i.gd = add i32 %i.fu, -1
  %or.cond.i.i.i = icmp ult i32 %i.gd, 7
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 8, i32 %i.fu ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.gc, align 8, !tbaa !8
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WecStart.exit.i, label %bb.v

bb.v:                                             ; preds = %Abc_TtReadHex.exit
  %i.ge = sext i32 %spec.store.select.i.i.i to i64
  %i.gf = call noalias ptr @calloc(i64 noundef %i.ge, i64 noundef 16) #22
  br label %Vec_WecStart.exit.i

Vec_WecStart.exit.i:                              ; preds = %bb.v, %Abc_TtReadHex.exit
  %i.gg = phi ptr [ %i.gf, %bb.v ], [ null, %Abc_TtReadHex.exit ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 9 uses
  %i.gi = getelementptr i8, ptr %i.gc, i64 8      ; 13 uses
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !12
  store i32 %i.fu, ptr %i.gh, align 4, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fj, i64 131400 ; 3 uses
  store ptr %i.gc, ptr %i.gj, align 8, !tbaa !74
  %i.gk = mul nsw i32 %i.fn, %i.fs
  %i.gl = add nsw i32 %i.gk, 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 16 uses
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !75
  %i.gn = icmp sgt i32 %i.fn, 0
  br i1 %i.gn, label %.lr.ph165.i.i, label %._crit_edge166.i.i

.lr.ph165.i.i:                                    ; preds = %Vec_WecStart.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fj, i64 72 ; 3 uses
  %i.gp = sext i32 %i.fk to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.w

bb.w:                                             ; preds = %.loopexit153.i.i, %.lr.ph165.i.i
  %i.gs = phi i32 [ %i.fq, %.lr.ph165.i.i ], [ %i.qp, %.loopexit153.i.i ] ; 5 uses
  %i.gt = phi i32 [ %i.fq, %.lr.ph165.i.i ], [ %i.qq, %.loopexit153.i.i ]
  %indvars.iv186.i.i = phi i64 [ %i.gp, %.lr.ph165.i.i ], [ %indvars.iv.next187.i.i, %.loopexit153.i.i ] ; 11 uses
  %i.gu = load i32, ptr %i.gq, align 8, !tbaa !76
  %.not116.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not116.i.i, label %.preheader152.i.i, label %bb.x

.preheader152.i.i:                                ; preds = %bb.w
  %i.gv = icmp sgt i32 %i.gs, 0
  br i1 %i.gv, label %.lr.ph161.i.i, label %.loopexit153.i.i

.lr.ph161.i.i:                                    ; preds = %.preheader152.i.i
  %i.gw = getelementptr inbounds [2048 x i8], ptr %i.go, i64 %indvars.iv186.i.i ; 2 uses
  %i.gx = trunc nsw i64 %indvars.iv186.i.i to i32 ; 3 uses
  br label %bb.bf

bb.x:                                             ; preds = %bb.w
  %i.gy = load i32, ptr %i.fl, align 8, !tbaa !37 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp sgt i64 %indvars.iv186.i.i, %i.gz
  br i1 %i.ha, label %bb.y, label %bb.ao

bb.y:                                             ; preds = %bb.x
  %i.hb = add nsw i64 %indvars.iv186.i.i, -1      ; 3 uses
  %i.hc = load i32, ptr %i.gm, align 8, !tbaa !75 ; 3 uses
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = trunc nsw i64 %i.hb to i32              ; 2 uses
  %i.hf = load i32, ptr %i.gh, align 4, !tbaa !13 ; 2 uses
  %.not.i61.i = icmp sgt i32 %i.hf, %i.he
  br i1 %.not.i61.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hg = add nsw i32 %i.he, 1                    ; 2 uses
  %i.hh = shl nsw i32 %i.hf, 1
  %i.hi = call noundef i32 @llvm.smax.i32(i32 %i.hh, i32 %i.hg) ; 4 uses
  %i.hj = load i32, ptr %i.gc, align 8, !tbaa !8  ; 2 uses
  %.not.i.i62.i = icmp slt i32 %i.hj, %i.hi
  br i1 %.not.i.i62.i, label %bb.aa, label %Vec_WecGrow.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.hk = load ptr, ptr %i.gi, align 8, !tbaa !12 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.hk, null
  %i.hl = sext i32 %i.hi to i64
  %i.hm = shl nsw i64 %i.hl, 4                    ; 2 uses
  br i1 %.not13.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hn = call ptr @realloc(ptr noundef nonnull %i.hk, i64 noundef %i.hm) #24
  %.pre.i.i65.i = load i32, ptr %i.gc, align 8, !tbaa !8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ho = call noalias ptr @malloc(i64 noundef %i.hm) #21
  br label %bb.ad

end_hunk_0
