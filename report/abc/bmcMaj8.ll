Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj8?download=true
inline.NumInlined: 197
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Exa8_ManExactSynthesis:bb.a

.preheader.us.i:                                  ; preds = %bb.g, %.preheader.us.preheader.i
  %.01518.us.i = phi i32 [ %i.az, %bb.g ], [ 0, %.preheader.us.preheader.i ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.01518.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi728 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.af = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.ag = lshr <4 x i32> %broadcast.splat, %step.add
  %i.ah = and <4 x i32> %i.af, splat (i32 1)
  %i.ai = and <4 x i32> %i.ag, splat (i32 1)
  %i.aj = add <4 x i32> %i.ah, %vec.phi           ; 2 uses
  %i.ak = add <4 x i32> %i.ai, %vec.phi728        ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %.017.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %i.am, %middle.block ]
  %.01416.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.017.us.i = phi i32 [ %i.ap, %scalar.ph ], [ %.017.us.i.ph, %scalar.ph.preheader ]
  %.01416.us.i = phi i32 [ %i.aq, %scalar.ph ], [ %.01416.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.an = lshr i32 %.01518.us.i, %.01416.us.i
  %i.ao = and i32 %i.an, 1
  %i.ap = add nuw nsw i32 %i.ao, %.017.us.i       ; 2 uses
  %i.aq = add nuw nsw i32 %.01416.us.i, 1         ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.aq, %i.t
  br i1 %exitcond21.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !75

bb.f:                                             ; preds = %._crit_edge.us.i
  %i.ar = and i32 %.01518.us.i, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = lshr i32 %.01518.us.i, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !164
  %i.ay = xor i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !164
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.us.i, %bb.f
  %i.az = add nuw nsw i32 %.01518.us.i, 1         ; 2 uses
  %exitcond23.not.i = icmp eq i32 %i.az, %smax22.i
  br i1 %exitcond23.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.us.i, !llvm.loop !76

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa727 = phi i32 [ %i.am, %middle.block ], [ %i.ap, %scalar.ph ]
  %i.ba = zext nneg i32 %.lcssa727 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  %i.bd = icmp eq i8 %i.bc, 49
  br i1 %i.bd, label %bb.f, label %bb.g

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.be = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.bf = icmp eq i8 %i.be, 49
  br i1 %i.bf, label %.preheader.preheader.i, label %Abc_TtSymFunGenerate.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ad, i32 1) ; 3 uses
  %xtraiter = and i32 %smax.i, 1
  %i.bg = icmp slt i32 %i.ad, 2
  br i1 %i.bg, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i32 %smax.i, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %.01518.i = phi i32 [ 0, %.preheader.preheader.i.new ], [ %i.by, %.preheader.i ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader.i.new ], [ %niter.next.1, %.preheader.i ]
  %i.bh = and i32 %.01518.i, 62
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 1, %i.bi
  %i.bk = lshr i32 %.01518.i, 6
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !164
  %i.bo = xor i64 %i.bj, %i.bn
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !164
  %i.bp = and i32 %.01518.i, 62
  %i.bq = or disjoint i32 %i.bp, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = lshr i32 %.01518.i, 6
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !164
  %i.bx = xor i64 %i.bs, %i.bw
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !164
  %i.by = add nuw nsw i32 %.01518.i, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSymFunGenerate.exit.loopexit932.unr-lcssa, label %.preheader.i, !llvm.loop !76

Abc_TtSymFunGenerate.exit.loopexit932.unr-lcssa:  ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TtSymFunGenerate.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %Abc_TtSymFunGenerate.exit.loopexit932.unr-lcssa, %.preheader.preheader.i
  %.01518.i.epil.init = phi i32 [ 0, %.preheader.preheader.i ], [ %i.by, %Abc_TtSymFunGenerate.exit.loopexit932.unr-lcssa ] ; 2 uses
  %lcmp.mod933 = trunc i32 %smax.i to i1
  call void @llvm.assume(i1 %lcmp.mod933)
  %i.bz = and i32 %.01518.i.epil.init, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = lshr i32 %.01518.i.epil.init, 6
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !164
  %i.cg = xor i64 %i.cb, %i.cf
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !164
  br label %Abc_TtSymFunGenerate.exit

Abc_TtSymFunGenerate.exit:                        ; preds = %.preheader.i.epil.preheader, %Abc_TtSymFunGenerate.exit.loopexit932.unr-lcssa, %bb.g, %bb.e, %.preheader.lr.ph.split.i
  %i.ch = icmp sgt i32 %i.t, 2
  %i.ci = add nsw i32 %i.t, -2
  %i.cj = shl nuw i32 1, %i.ci
  %i.ck = add nuw nsw i32 %i.cj, 1
  %narrow = select i1 %i.ch, i32 %i.ck, i32 2
  %i.cl = sext i32 %narrow to i64
  %i.cm = call noalias ptr @calloc(i64 noundef %i.cl, i64 noundef 1) #22 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !38
  call void @Extra_PrintHexadecimalString(ptr noundef %i.cm, ptr noundef %i.ac, i32 noundef %i.t) #23
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !39
  %.not103 = icmp eq i32 %i.cp, 0
  br i1 %.not103, label %bb.h, label %bb.j

bb.h:                                             ; preds = %Abc_TtSymFunGenerate.exit
  %i.cq = load i32, ptr %0, align 8, !tbaa !34
  %i.cr = icmp slt i32 %i.cq, 8
  br i1 %i.cr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !38
  %i.ct = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.cs) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %Abc_TtSymFunGenerate.exit
  %.not104 = icmp eq ptr %i.ac, null
  br i1 %.not104, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ac) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %Abc_Clock.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !38 ; 5 uses
  %.not105 = icmp eq ptr %i.cv, null
  br i1 %.not105, label %Abc_TtReadHex.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !25  ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 48
  br i1 %i.cx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !25
  %i.da = icmp eq i8 %i.cz, 120
  %spec.select.idx.i = select i1 %i.da, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 %spec.select.idx.i ; 2 uses
  %.pre.i = load i8, ptr %spec.select.i, align 1, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.db = phi i8 [ %i.cw, %bb.m ], [ %.pre.i, %bb.n ] ; 3 uses
  %.038.i = phi ptr [ %i.cv, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  %i.dc = add i8 %i.db, -58
  %or.cond.i46.i = icmp ult i8 %i.dc, -10
  %i.dd = and i8 %i.db, -33
  %i.de = add i8 %i.dd, -71
  %i.df = icmp ult i8 %i.de, -6
  %narrow.i.not47.i = and i1 %or.cond.i46.i, %i.df
  br i1 %narrow.i.not47.i, label %.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.o ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.038.i, i64 %indvars.iv.next.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !25  ; 2 uses
  %i.di = add i8 %i.dh, -58
  %or.cond.i.i = icmp ult i8 %i.di, -10
  %i.dj = and i8 %i.dh, -33
  %i.dk = add i8 %i.dj, -71
  %i.dl = icmp ult i8 %i.dk, -6
  %narrow.i.not.i = and i1 %or.cond.i.i, %i.dl
  br i1 %narrow.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !77

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  switch i32 %indvars.i, label %.thread.i.a [
    i32 1, label %bb.p
    i32 0, label %.sink.split.i
  ]

bb.p:                                             ; preds = %._crit_edge.i
  %switch.tableidx = add i8 %i.db, -48            ; 3 uses
  %i.dm = icmp ult i8 %switch.tableidx, 23
  br i1 %i.dm, label %switch.hole_check, label %.lr.ph53.preheader.i

.thread.i.a:                                      ; preds = %._crit_edge.i
  %4 = add i32 %indvars.i, -1                     ; 2 uses
  %5 = lshr i32 %4, 1
  %6 = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %5, i1 false) ; 2 uses
  %7 = sub nuw nsw i32 35, %6
  %8 = icmp ult i32 %4, 16
  %i.dn = sub nsw i32 29, %6
  %i.do = shl nuw nsw i32 1, %i.dn
  %spec.select47.i = select i1 %8, i32 1, i32 %i.do
  %i.dp = zext nneg i32 %spec.select47.i to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  br label %.lr.ph53.preheader.i

.lr.ph53.preheader.i:                             ; preds = %switch.hole_check, %bb.p, %.thread.i.a
  %.fr.i = phi i32 [ %7, %.thread.i.a ], [ 2, %bb.p ], [ 2, %switch.hole_check ] ; 4 uses
  %9 = phi i64 [ %i.dq, %.thread.i.a ], [ 8, %bb.p ], [ 8, %switch.hole_check ]
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %9, i1 false), !tbaa !164
  %sext = shl i64 %indvars.iv.next.i, 32
  %i.dr = ashr exact i64 %sext, 32
  %wide.trip.count.i = and i64 %indvars.iv.next.i, 4294967295
  %i.ds = getelementptr i8, ptr %.038.i, i64 %i.dr
  br label %.lr.ph53.i.a

.lr.ph53.i.a:                                     ; preds = %Abc_TtReadHexDigit.exit.i, %.lr.ph53.preheader.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph53.preheader.i ], [ %indvars.iv.next63.i, %Abc_TtReadHexDigit.exit.i ] ; 4 uses
  %i.dt = xor i64 %indvars.iv62.i, -1
  %i.du = getelementptr i8, ptr %i.ds, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !25  ; 4 uses
  %i.dw = sext i8 %i.dv to i64                    ; 3 uses
  %i.dx = add i8 %i.dv, -48
  %or.cond.i42.i = icmp ult i8 %i.dx, 10
  br i1 %or.cond.i42.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph53.i.a
  %i.dy = add nsw i64 %i.dw, -48
  br label %Abc_TtReadHexDigit.exit.i

bb.r:                                             ; preds = %.lr.ph53.i.a
  %i.dz = add i8 %i.dv, -65
  %or.cond5.i.i = icmp ult i8 %i.dz, 6
  br i1 %or.cond5.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ea = add nsw i64 %i.dw, -55
  br label %Abc_TtReadHexDigit.exit.i

bb.t:                                             ; preds = %bb.r
  %i.eb = add i8 %i.dv, -97
  %or.cond8.i.i = icmp ult i8 %i.eb, 6
  %i.ec = add nsw i64 %i.dw, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i64 %i.ec, i64 -1
  br label %Abc_TtReadHexDigit.exit.i

Abc_TtReadHexDigit.exit.i:                        ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i = phi i64 [ %i.dy, %bb.q ], [ %i.ea, %bb.s ], [ %spec.select.i.i, %bb.t ]
  %i.ed = shl i64 %indvars.iv62.i, 2
  %i.ee = and i64 %i.ed, 60
  %i.ef = shl i64 %.0.i.i, %i.ee
  %i.eg = lshr i64 %indvars.iv62.i, 4
  %i.eh = and i64 %i.eg, 268435455
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.eh ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !164
  %i.ek = or i64 %i.ej, %i.ef
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !164
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond.not.i130 = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count.i
  br i1 %exitcond.not.i130, label %._crit_edge54.i.a, label %.lr.ph53.i.a, !llvm.loop !78

._crit_edge54.i.a:                                ; preds = %Abc_TtReadHexDigit.exit.i
  %i.el = icmp samesign ult i32 %.fr.i, 6
  br i1 %i.el, label %bb.u, label %Abc_TtReadHex.exit

bb.u:                                             ; preds = %._crit_edge54.i.a
  %.pre.a = load i64, ptr %i.z, align 8, !tbaa !164 ; 4 uses
  %i.em = icmp samesign ult i32 %.fr.i, 3
  %i.en = and i64 %.pre.a, 15
  %i.eo = mul nuw nsw i64 %i.en, 17
  %spec.select = select i1 %i.em, i64 %i.eo, i64 %.pre.a
  %i.ep = icmp samesign ult i32 %.fr.i, 4
  %i.eq = and i64 %spec.select, 255
  %i.er = mul nuw nsw i64 %i.eq, 257
  %i.es = select i1 %i.ep, i64 %i.er, i64 %.pre.a
  %.not678 = icmp eq i32 %.fr.i, 5
  %i.et = and i64 %i.es, 65535
  %i.eu = mul nuw nsw i64 %i.et, 65537
  %spec.select677 = select i1 %.not678, i64 %.pre.a, i64 %i.eu
  %i.ev = and i64 %spec.select677, 4294967295
  %i.ew = mul nuw i64 %i.ev, 4294967297
  br label %.sink.split.i

switch.hole_check:                                ; preds = %bb.p
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph53.preheader.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ex = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Exa8_ManExactSynthesis, i64 %i.ex
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %switch.lookup, %bb.o, %._crit_edge.i, %bb.u
  %.5.i.sink.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.o ], [ %i.ew, %bb.u ], [ 0, %._crit_edge.i ]
  store i64 %.5.i.sink.i, ptr %i.z, align 8, !tbaa !164
  br label %Abc_TtReadHex.exit

Abc_TtReadHex.exit:                               ; preds = %.sink.split.i, %._crit_edge54.i.a, %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !40
  %.not106 = icmp eq i32 %i.ez, 0
  br i1 %.not106, label %bb.x, label %bb.v

bb.v:                                             ; preds = %Abc_TtReadHex.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !39
  %.not107 = icmp eq i32 %i.fb, 0
  br i1 %.not107, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %Abc_TtReadHex.exit
  store i32 0, ptr %i.ey, align 4, !tbaa !40
  %i.fc = call noalias dereferenceable_or_null(131448) ptr @calloc(i64 noundef 1, i64 noundef 131448) #22 ; 47 uses
  store ptr %0, ptr %i.fc, align 8, !tbaa !47
  %i.fd = load i32, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 46 uses
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !165
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !48 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 13 uses
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !50 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 40 uses
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !51
  %notmask.i = shl nsw i32 -1, %i.fj
  %i.fl = xor i32 %notmask.i, -1                  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 20 ; 20 uses
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !166
  %i.fn = add nsw i32 %i.fg, %i.fd                ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 49 uses
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !167
  %i.fp = icmp slt i32 %i.fd, 7
  %i.fq = add nsw i32 %i.fd, -6
  %i.fr = shl nuw i32 1, %i.fq
  %i.fs = select i1 %i.fp, i32 1, i32 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 28 ; 8 uses
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !168
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 3 uses
  store ptr %i.z, ptr %i.fu, align 8, !tbaa !169
  %i.fv = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 16 uses
  %i.fw = add i32 %i.fn, -1
  %or.cond.i.i.i = icmp ult i32 %i.fw, 7
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 8, i32 %i.fn ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.fv, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WecStart.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = sext i32 %spec.store.select.i.i.i to i64
  %i.fy = call noalias ptr @calloc(i64 noundef %i.fx, i64 noundef 16) #22
  br label %Vec_WecStart.exit.i

Vec_WecStart.exit.i:                              ; preds = %bb.y, %bb.x
  %i.fz = phi ptr [ %i.fy, %bb.y ], [ null, %bb.x ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 9 uses
  %i.gb = getelementptr i8, ptr %i.fv, i64 8      ; 13 uses
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !15
  store i32 %i.fn, ptr %i.ga, align 4, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fc, i64 131400 ; 3 uses
  store ptr %i.fv, ptr %i.gc, align 8, !tbaa !170
  %i.gd = mul nsw i32 %i.fg, %i.fl
  %i.ge = add nsw i32 %i.gd, 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fc, i64 32 ; 15 uses
  store i32 %i.ge, ptr %i.gf, align 8, !tbaa !171
  %i.gg = icmp sgt i32 %i.fg, 0
  br i1 %i.gg, label %.lr.ph165.i.i, label %._crit_edge166.i.i

.lr.ph165.i.i:                                    ; preds = %Vec_WecStart.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fc, i64 72 ; 3 uses
  %i.gi = sext i32 %i.fd to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.z

bb.z:                                             ; preds = %.loopexit153.i.i, %.lr.ph165.i.i
  %i.gl = phi i32 [ %i.fj, %.lr.ph165.i.i ], [ %i.qi, %.loopexit153.i.i ] ; 5 uses
  %i.gm = phi i32 [ %i.fj, %.lr.ph165.i.i ], [ %i.qj, %.loopexit153.i.i ]
  %indvars.iv186.i.i = phi i64 [ %i.gi, %.lr.ph165.i.i ], [ %indvars.iv.next187.i.i, %.loopexit153.i.i ] ; 11 uses
  %i.gn = load i32, ptr %i.gj, align 8, !tbaa !52
  %.not116.i.i = icmp eq i32 %i.gn, 0
  br i1 %.not116.i.i, label %.preheader152.i.i, label %bb.aa

.preheader152.i.i:                                ; preds = %bb.z
  %i.go = icmp sgt i32 %i.gl, 0
  br i1 %i.go, label %.lr.ph161.i.i, label %.loopexit153.i.i

.lr.ph161.i.i:                                    ; preds = %.preheader152.i.i
  %i.gp = getelementptr inbounds [2048 x i8], ptr %i.gh, i64 %indvars.iv186.i.i ; 2 uses
  %i.gq = trunc nsw i64 %indvars.iv186.i.i to i32 ; 3 uses
  br label %bb.bi

bb.aa:                                            ; preds = %bb.z
  %i.gr = load i32, ptr %i.fe, align 8, !tbaa !165 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp sgt i64 %indvars.iv186.i.i, %i.gs
  br i1 %i.gt, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  %i.gu = add nsw i64 %indvars.iv186.i.i, -1      ; 3 uses
  %i.gv = load i32, ptr %i.gf, align 8, !tbaa !171 ; 3 uses
  %i.gw = shl nsw i32 %i.gv, 1
  %i.gx = trunc nsw i64 %i.gu to i32              ; 2 uses
  %i.gy = load i32, ptr %i.ga, align 4, !tbaa !16 ; 2 uses
  %.not.i54.i = icmp sgt i32 %i.gy, %i.gx
  br i1 %.not.i54.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gz = add nsw i32 %i.gx, 1                    ; 2 uses
  %i.ha = shl nsw i32 %i.gy, 1
  %i.hb = call noundef i32 @llvm.smax.i32(i32 %i.ha, i32 %i.gz) ; 4 uses
  %i.hc = load i32, ptr %i.fv, align 8, !tbaa !14 ; 2 uses
  %.not.i.i55.i = icmp slt i32 %i.hc, %i.hb
  br i1 %.not.i.i55.i, label %bb.ad, label %Vec_WecGrow.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.hd = load ptr, ptr %i.gb, align 8, !tbaa !15 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.hd, null
  %i.he = sext i32 %i.hb to i64
  %i.hf = shl nsw i64 %i.he, 4                    ; 2 uses
  br i1 %.not13.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = call ptr @realloc(ptr noundef nonnull %i.hd, i64 noundef %i.hf) #24
  %.pre.i.i58.i = load i32, ptr %i.fv, align 8, !tbaa !14
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.hh = call noalias ptr @malloc(i64 noundef %i.hf) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hi = phi i32 [ %.pre.i.i58.i, %bb.ae ], [ %i.hc, %bb.af ] ; 2 uses
  %i.hj = phi ptr [ %i.hg, %bb.ae ], [ %i.hh, %bb.af ] ; 2 uses
  store ptr %i.hj, ptr %i.gb, align 8, !tbaa !15
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [16 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = sub nsw i32 %i.hb, %i.hi
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.hl, i8 0, i64 %i.ho, i1 false)
  store i32 %i.hb, ptr %i.fv, align 8, !tbaa !14
  br label %Vec_WecGrow.exit.i.i

Vec_WecGrow.exit.i.i:                             ; preds = %bb.ag, %bb.ac
  store i32 %i.gz, ptr %i.ga, align 4, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %Vec_WecGrow.exit.i.i, %bb.ab
  %.val.i56.i = load ptr, ptr %i.gb, align 8, !tbaa !15
  %i.hp = getelementptr inbounds [16 x i8], ptr %.val.i56.i, i64 %i.gu ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4 ; 3 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !19 ; 7 uses
  %i.hs = load i32, ptr %i.hp, align 8, !tbaa !23
  %i.ht = icmp eq i32 %i.hr, %i.hs
  br i1 %i.ht, label %bb.ai, label %Vec_WecPush.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.hu = icmp slt i32 %i.hr, 16
  br i1 %i.hu, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not9.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hx = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hw, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.hy = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.al, %bb.ak
  %i.hz = phi ptr [ %i.hx, %bb.ak ], [ %i.hy, %bb.al ]
  store ptr %i.hz, ptr %i.hv, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.am:                                            ; preds = %bb.ai
  %i.ia = icmp samesign ult i32 %i.hr, 1073741823
  %i.ib = shl nuw nsw i32 %i.hr, 1
  %spec.select.i.i.i = select i1 %i.ia, i32 %i.ib, i32 2147483647 ; 3 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.hr, %spec.select.i.i.i
  br i1 %.not.i9.i.i.i, label %bb.an, label %Vec_WecPush.exit.i

bb.an:                                            ; preds = %bb.am
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i.i.i = icmp eq ptr %i.id, null
end_hunk_0
begin_hunk_1_@Exa8_ManExactSynthesisIter:bb.a

bb.cw:                                            ; preds = %bb.cv
  %.not9.i10.i180 = icmp eq ptr %storemerge197229, null
  %i.ih = zext nneg i32 %spec.select.i178 to i64  ; 2 uses
  br i1 %.not9.i10.i180, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ii = tail call ptr @realloc(ptr noundef nonnull %storemerge197229, i64 noundef %i.ih) #24
  br label %Vec_StrPush.exit185

bb.cy:                                            ; preds = %bb.cw
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ih) #21
  br label %Vec_StrPush.exit185

Vec_StrPush.exit185:                              ; preds = %bb.cu, %bb.ct, %bb.cy, %bb.cx, %bb.cq, %bb.cv
  %storemerge197230 = phi ptr [ %storemerge197229, %bb.cq ], [ %storemerge197229, %bb.cv ], [ %i.id, %bb.cu ], [ %i.ic, %bb.ct ], [ %i.ii, %bb.cx ], [ %i.ij, %bb.cy ] ; 3 uses
  %spec.select.sink.i182226 = phi i32 [ %spec.select.sink.i182227, %bb.cq ], [ %spec.select.sink.i182227, %bb.cv ], [ 16, %bb.cu ], [ 16, %bb.ct ], [ %spec.select.i178, %bb.cx ], [ %spec.select.i178, %bb.cy ] ; 3 uses
  %indvars.iv.next311 = add nsw i64 %indvars.iv310, 1 ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %storemerge197230, i64 %indvars.iv310
  store i8 %i.hy, ptr %i.ik, align 1, !tbaa !25
  %i.il = add nuw nsw i32 %.085221, 1             ; 2 uses
  %i.im = load i32, ptr %i.d, align 8, !tbaa !50
  %i.in = add nsw i32 %i.im, -1                   ; 2 uses
  %i.io = icmp slt i32 %i.il, %i.in
  br i1 %i.io, label %bb.cq, label %..loopexit209_crit_edge, !llvm.loop !206

bb.cz:                                            ; preds = %.lr.ph232, %Vec_StrPush.exit193
  %indvars.iv313 = phi i64 [ %i.ht, %.lr.ph232 ], [ %indvars.iv.next314, %Vec_StrPush.exit193 ] ; 7 uses
  %storemerge198239 = phi ptr [ %.promoted238, %.lr.ph232 ], [ %storemerge198240, %Vec_StrPush.exit193 ] ; 6 uses
  %spec.select.sink.i190237 = phi i32 [ %.promoted235, %.lr.ph232 ], [ %spec.select.sink.i190236, %Vec_StrPush.exit193 ] ; 3 uses
  %.0231 = phi i32 [ 0, %.lr.ph232 ], [ %i.jd, %Vec_StrPush.exit193 ] ; 2 uses
  %i.ip = trunc i32 %.0231 to i8
  %i.iq = add i8 %i.ip, 97
  %i.ir = trunc nsw i64 %indvars.iv313 to i32
  %i.is = icmp eq i32 %spec.select.sink.i190237, %i.ir
  br i1 %i.is, label %bb.da, label %Vec_StrPush.exit193

bb.da:                                            ; preds = %bb.cz
  %i.it = icmp slt i64 %indvars.iv313, 16
  br i1 %i.it, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %.not9.i.i191 = icmp eq ptr %storemerge198239, null
  br i1 %.not9.i.i191, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.iu = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge198239, i64 noundef 16) #24
  br label %Vec_StrPush.exit193

bb.dd:                                            ; preds = %bb.db
  %i.iv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  br label %Vec_StrPush.exit193

bb.de:                                            ; preds = %bb.da
  %i.iw = icmp samesign ult i64 %indvars.iv313, 1073741823
  %indvars.iv313.tr = trunc nsw i64 %indvars.iv313 to i32
  %i.ix = shl nsw i32 %indvars.iv313.tr, 1
  %spec.select.i186 = select i1 %i.iw, i32 %i.ix, i32 2147483647 ; 4 uses
  %i.iy = sext i32 %spec.select.i186 to i64
  %.not.i9.i187 = icmp samesign ult i64 %indvars.iv313, %i.iy
  br i1 %.not.i9.i187, label %bb.df, label %Vec_StrPush.exit193

bb.df:                                            ; preds = %bb.de
  %.not9.i10.i188 = icmp eq ptr %storemerge198239, null
  %i.iz = zext nneg i32 %spec.select.i186 to i64  ; 2 uses
  br i1 %.not9.i10.i188, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ja = tail call ptr @realloc(ptr noundef nonnull %storemerge198239, i64 noundef %i.iz) #24
  br label %Vec_StrPush.exit193

bb.dh:                                            ; preds = %bb.df
  %i.jb = tail call noalias ptr @malloc(i64 noundef %i.iz) #21
  br label %Vec_StrPush.exit193

Vec_StrPush.exit193:                              ; preds = %bb.dd, %bb.dc, %bb.dh, %bb.dg, %bb.cz, %bb.de
  %storemerge198240 = phi ptr [ %storemerge198239, %bb.cz ], [ %storemerge198239, %bb.de ], [ %i.iv, %bb.dd ], [ %i.iu, %bb.dc ], [ %i.ja, %bb.dg ], [ %i.jb, %bb.dh ] ; 3 uses
  %spec.select.sink.i190236 = phi i32 [ %spec.select.sink.i190237, %bb.cz ], [ %spec.select.sink.i190237, %bb.de ], [ 16, %bb.dd ], [ 16, %bb.dc ], [ %spec.select.i186, %bb.dg ], [ %spec.select.i186, %bb.dh ] ; 3 uses
  %indvars.iv.next314 = add nsw i64 %indvars.iv313, 1 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %storemerge198240, i64 %indvars.iv313
  store i8 %i.iq, ptr %i.jc, align 1, !tbaa !25
  %i.jd = add nuw nsw i32 %.0231, 1               ; 2 uses
  %i.je = load i32, ptr %i.d, align 8, !tbaa !50
  %i.jf = add nsw i32 %i.je, -1
  %i.jg = icmp slt i32 %i.jd, %i.jf
  br i1 %i.jg, label %bb.cz, label %..loopexit_crit_edge, !llvm.loop !207

..loopexit_crit_edge:                             ; preds = %Vec_StrPush.exit193
  %i.jh = trunc nsw i64 %indvars.iv.next314 to i32
  br label %.loopexit

..loopexit209_crit_edge:                          ; preds = %Vec_StrPush.exit185
  %i.ji = trunc nsw i64 %indvars.iv.next311 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader208, %..loopexit209_crit_edge, %.preheader, %..loopexit_crit_edge
  %.promoted225330 = phi i32 [ %.promoted235, %.preheader208 ], [ %spec.select.sink.i182226, %..loopexit209_crit_edge ], [ %.promoted235, %.preheader ], [ %spec.select.sink.i190236, %..loopexit_crit_edge ] ; 2 uses
  %i.jj = phi ptr [ %.promoted238, %.preheader208 ], [ %storemerge197230, %..loopexit209_crit_edge ], [ %.promoted238, %.preheader ], [ %storemerge198240, %..loopexit_crit_edge ] ; 2 uses
  %i.jk = phi i32 [ %i.hk, %.preheader208 ], [ %spec.select.sink.i182226, %..loopexit209_crit_edge ], [ %i.hk, %.preheader ], [ %spec.select.sink.i190236, %..loopexit_crit_edge ]
  %i.jl = phi i32 [ %i.hl, %.preheader208 ], [ %i.ji, %..loopexit209_crit_edge ], [ %i.hl, %.preheader ], [ %i.jh, %..loopexit_crit_edge ] ; 2 uses
  %i.jm = add nuw nsw i32 %.086241, 1             ; 2 uses
  %i.jn = load i32, ptr %i.h, align 4, !tbaa !48
  %i.jo = icmp slt i32 %i.jm, %i.jn
  br i1 %i.jo, label %.lr.ph242, label %._crit_edge, !llvm.loop !208

bb.di:                                            ; preds = %Vec_StrPush.exit169
  tail call void @free(ptr noundef nonnull %i.gx) #23
  br label %Vec_StrFree.exit195

Vec_StrFree.exit195:                              ; preds = %bb.di, %Vec_StrPush.exit169
  store ptr %i.gu, ptr %i.j, align 8, !tbaa !55
  br label %bb.dj

bb.dj:                                            ; preds = %bb.bq, %Vec_StrFree.exit195, %Vec_StrFree.exit
  %i.jp = tail call i32 @Exa8_ManExactSynthesis(ptr noundef nonnull %0) ; 2 uses
  %i.jq = load ptr, ptr @stdout, align 8, !tbaa !63
  %i.jr = tail call i32 @fflush(ptr noundef %i.jq) ; 0 uses
  %i.js = icmp eq i32 %i.jp, 1
  br i1 %i.js, label %._crit_edge294, label %bb.b, !llvm.loop !199

._crit_edge294:                                   ; preds = %bb.dj
  br label %._crit_edge296, !llvm.loop !199

._crit_edge296:                                   ; preds = %bb.b, %._crit_edge294, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge294 ], [ %i.jp, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @Extra_PrintHexadecimalString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @kissat_set_terminate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Exa8_KissatTerminate(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 131432 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #23
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Abc_Clock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %1, align 8, !tbaa !32
  %i.f = mul nsw i64 %i.e, 1000000
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = sdiv i64 %i.h, 1000
  %i.j = add nsw i64 %i.i, %i.f
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.j, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.k = load i64, ptr %i.a, align 8, !tbaa !56
  %i.l = icmp sgt i64 %.0.i, %i.k
  %i.m = zext i1 %i.l to i32
  br label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit, %bb.b, %bb.a
  %i.n = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.m, %Abc_Clock.exit ]
  ret i32 %i.n
}

declare i32 @kissat_solve(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Exa8_ManExactSynthesisPopcount(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Bmc_EsPar_t_, align 8       ; 19 uses
  %i.a = alloca [100 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %3, i8 0, i64 184, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.d, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.e, align 8, !tbaa !218
  store i32 %0, ptr %3, align 8, !tbaa !34
  store i32 %1, ptr %i.b, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 1, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 1, ptr %i.h, align 4, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 1, ptr %i.i, align 8, !tbaa !59
  %.not = icmp eq i32 %2, 0
  %i.j = zext i1 %.not to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i32 %i.j, ptr %i.k, align 8, !tbaa !39
  %i.l = add nsw i32 %0, 1                        ; 6 uses
  %or.cond.i.a = icmp ult i32 %i.l, 2
  br i1 %or.cond.i.a, label %Abc_Base2Log.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.012.i = phi i32 [ %5, %.preheader ], [ 0, %bb.a ]
  %.0811.i = phi i32 [ %4, %.preheader ], [ %0, %bb.a ]
  %4 = lshr i32 %.0811.i, 1                       ; 2 uses
  %5 = add nuw nsw i32 %.012.i, 1                 ; 2 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %Abc_Base2Log.exit, label %.preheader, !llvm.loop !213

Abc_Base2Log.exit:                                ; preds = %.preheader, %bb.a
  %.09.i = phi i32 [ %i.l, %bb.a ], [ %5, %.preheader ] ; 4 uses
  %6 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %7 = add i32 %.09.i, -1
  %or.cond.i = icmp ult i32 %7, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.09.i ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %8, align 4, !tbaa !221
  store i32 %spec.store.select.i, ptr %6, align 8, !tbaa !222
  %.not.i47 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i47, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %Abc_Base2Log.exit
  %9 = sext i32 %spec.store.select.i to i64
  %10 = shl nsw i64 %9, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %10) #21
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %Abc_Base2Log.exit, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %Abc_Base2Log.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !223
  %11 = icmp sgt i32 %.09.i, 0
  br i1 %11, label %.lr.ph52, label %.loopexit

.lr.ph52:                                         ; preds = %Vec_PtrAlloc.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %.not4449 = icmp slt i32 %0, 0
  %i.r = sext i32 %i.l to i64
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %wide.trip.count = zext i32 %i.l to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.l, 4
  %min.iters.check64 = icmp ult i32 %i.l, 16
  %i.v = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  %n.vec65 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n74 = icmp eq i64 %n.vec65, %wide.trip.count
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %bb.p
  %i.w = phi ptr [ %i.n, %.lr.ph52 ], [ %i.bg, %bb.p ] ; 6 uses
  %i.x = phi i32 [ %spec.store.select.i, %.lr.ph52 ], [ %i.bh, %bb.p ] ; 7 uses
  %i.y = phi i32 [ 0, %.lr.ph52 ], [ %i.bi, %bb.p ] ; 3 uses
  %.03951 = phi i32 [ 0, %.lr.ph52 ], [ %i.bl, %bb.p ] ; 5 uses
  store i32 10, ptr %i.p, align 4, !tbaa !48
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %.not43 = icmp eq ptr %i.z, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.z) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  store ptr null, ptr %i.q, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br i1 %.not4449, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.e
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.03951, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aa = lshr <16 x i32> %vec.ind, %broadcast.splat
  %i.ab = trunc <16 x i32> %i.aa to <16 x i8>
  %i.ac = and <16 x i8> %i.ab, splat (i8 1)
  %i.ad = or disjoint <16 x i8> %i.ac, splat (i8 48)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <16 x i8> %i.ad, ptr %i.ae, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !224

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert66 = insertelement <4 x i32> poison, i32 %.03951, i64 0
  %broadcast.splat67 = shufflevector <4 x i32> %broadcast.splatinsert66, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert68 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat69 = shufflevector <4 x i32> %broadcast.splatinsert68, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat69, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind71 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ah = lshr <4 x i32> %vec.ind71, %broadcast.splat67
  %i.ai = trunc <4 x i32> %i.ah to <4 x i8>
  %i.aj = and <4 x i8> %i.ai, splat (i8 1)
  %i.ak = or disjoint <4 x i8> %i.aj, splat (i8 48)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %index70
  store <4 x i8> %i.ak, ptr %i.al, align 4, !tbaa !25
  %index.next72 = add nuw i64 %index70, 4         ; 2 uses
  %vec.ind.next73 = add <4 x i32> %vec.ind71, splat (i32 4)
  %i.am = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !215

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n74, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = lshr i32 %i.an, %.03951
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = and i8 %i.ap, 1
  %i.ar = or disjoint i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  store i8 0, ptr %i.s, align 1, !tbaa !25
  store ptr %i.a, ptr %i.t, align 8, !tbaa !35
  %i.at = call i32 @Exa8_ManExactSynthesisIter(ptr noundef nonnull %3)
  %.not45 = icmp eq i32 %i.at, 1
  br i1 %.not45, label %bb.f, label %bb.o

bb.f:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.av = icmp eq i32 %i.y, %i.x
  br i1 %i.av, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp slt i32 %i.x, 16
  br i1 %i.aw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.w, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ay = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.az = icmp samesign ult i32 %i.x, 1073741823
  %i.ba = shl nuw nsw i32 %i.x, 1
  %spec.select.i = select i1 %i.az, i32 %i.ba, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.x, %spec.select.i
  br i1 %.not.i10.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not9.i11.i = icmp eq ptr %i.w, null
  %i.bb = zext nneg i32 %spec.select.i to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = call ptr @realloc(ptr noundef nonnull %i.w, i64 noundef %i.bc) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.be = call noalias ptr @malloc(i64 noundef %i.bc) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.ay, %bb.j ], [ %i.ax, %bb.i ], [ %i.bd, %bb.m ], [ %i.be, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  store ptr %storemerge, ptr %i.o, align 8, !tbaa !223
  store i32 %spec.select.sink.i, ptr %6, align 8, !tbaa !222
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.03951) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.loopexit

bb.p:                                             ; preds = %Vec_PtrGrow.exit12.sink.split.i, %bb.k, %bb.f
  %i.bg = phi ptr [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ], [ %i.w, %bb.k ], [ %i.w, %bb.f ] ; 2 uses
  %i.bh = phi i32 [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ], [ %i.x, %bb.k ], [ %i.x, %bb.f ]
  %i.bi = add nuw nsw i32 %i.y, 1                 ; 2 uses
  store i32 %i.bi, ptr %8, align 4, !tbaa !221
  %i.bj = zext nneg i32 %i.y to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bj
  store ptr %i.au, ptr %i.bk, align 8, !tbaa !225
  store ptr null, ptr %i.u, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bl = add nuw nsw i32 %.03951, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.bl, %.09.i
  br i1 %exitcond56.not, label %.loopexit, label %bb.c, !llvm.loop !217

.loopexit:                                        ; preds = %bb.p, %Vec_PtrAlloc.exit, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !55 ; 2 uses
  %.not46 = icmp eq ptr %i.bn, null
  br i1 %.not46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit
  call void @free(ptr noundef nonnull %i.bn) #23
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #11

declare ptr @kissat_init() local_unnamed_addr #2

declare void @kissat_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @kissat_add(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @kissat_is_inconsistent(ptr noundef) local_unnamed_addr #2

declare i32 @kissat_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @Extra_TimeStamp(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Exa8_ManDumpVerilogName(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 128, ptr noundef nonnull @.str.72, i32 noundef 15, ptr noundef nonnull %i.d) #23 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 128, ptr noundef nonnull @.str.73, i32 noundef 16, ptr noundef %i.g) #23 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !47     ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40
  %.not33 = icmp eq i32 %i.k, 0
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 105, ptr %i.a, align 16, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw nsw i32 %.0, 1
  %i.o = zext nneg i32 %.0 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  store i8 97, ptr %i.p, align 1, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %i.n, %bb.g ], [ %.0, %bb.f ]   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw nsw i32 %.1, 1
  %i.t = zext nneg i32 %.1 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 111, ptr %i.u, align 1, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %i.s, %bb.i ], [ %.1, %bb.h ]   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !52
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw nsw i32 %.2, 1
  %i.y = zext nneg i32 %.2 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 114, ptr %i.z, align 1, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi i32 [ %i.x, %bb.k ], [ %.2, %bb.j ]   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !54
  %.not37 = icmp eq i32 %i.ab, 0
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = add nuw nsw i32 %.3, 1
  %i.ad = zext nneg i32 %.3 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  store i8 102, ptr %i.ae, align 1, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.4 = phi i32 [ %i.ac, %bb.m ], [ %.3, %bb.l ]  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !226
  %.not38 = icmp eq i32 %i.ag, 0
  br i1 %.not38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = add nuw nsw i32 %.4, 1
  %i.ai = zext nneg i32 %.4 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 103, ptr %i.aj, align 1, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.5 = phi i32 [ %i.ah, %bb.o ], [ %.4, %bb.n ]  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !227
  %.not39 = icmp eq i32 %i.al, 0
  br i1 %.not39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = add nuw nsw i32 %.5, 1
  %i.an = zext nneg i32 %.5 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  store i8 99, ptr %i.ao, align 1, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6 = phi i32 [ %i.am, %bb.q ], [ %.5, %bb.p ]  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !64
  %.not40 = icmp eq i32 %i.aq, 0
  br i1 %.not40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = add nuw nsw i32 %.6, 1
  %i.as = zext nneg i32 %.6 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 107, ptr %i.at, align 1, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.7 = phi i32 [ %i.ar, %bb.s ], [ %.6, %bb.r ]  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %.not41 = icmp eq i32 %i.av, 0
  br i1 %.not41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = add nuw nsw i32 %.7, 1
  %i.ax = zext nneg i32 %.7 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i8 100, ptr %i.ay, align 1, !tbaa !25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.8 = phi i32 [ %i.aw, %bb.u ], [ %.7, %bb.t ]  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29
  %.not42 = icmp eq i32 %i.ba, 0
  br i1 %.not42, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = add nuw nsw i32 %.8, 1
  %i.bc = zext nneg i32 %.8 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  store i8 109, ptr %i.bd, align 1, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9 = phi i32 [ %i.bb, %bb.w ], [ %.8, %bb.v ]  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !61
  %.not43 = icmp eq i32 %i.bf, 0
  br i1 %.not43, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = add nuw nsw i32 %.9, 1
  %i.bh = zext nneg i32 %.9 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  store i8 112, ptr %i.bi, align 1, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.10 = phi i32 [ %i.bg, %bb.y ], [ %.9, %bb.x ]
  %i.bj = zext nneg i32 %.10 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !25
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = sub i64 128, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !49
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.74, i32 noundef %i.bp, i32 noundef %i.br, ptr noundef nonnull %i.a) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #15 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #23 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #23
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #23 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !63
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #23 ; 0 uses
  call void @free(ptr noundef %i.d) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !63, !noalias !231
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #23, !inline_history !230 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

declare void @kissat_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!13 = !{!"Vec_Wec_t_", !8, i64 0, !8, i64 4, !12, i64 8}
!14 = !{!13, !8, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!13, !8, i64 4}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !17, i64 8}
!19 = !{!18, !8, i64 4}
!20 = !{!18, !17, i64 8}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!8, !8, i64 0}
!23 = !{!18, !8, i64 0}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!7, !7, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!28 = !{!"Bmc_EsPar_t_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !26, i64 128, !26, i64 136, !26, i64 144, !26, i64 152, !17, i64 160, !17, i64 168, !27, i64 176}
!29 = !{!28, !8, i64 80}
!30 = !{!"long", !7, i64 0}
!31 = !{!"timespec", !30, i64 0, !30, i64 8}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !30, i64 8}
!34 = !{!28, !8, i64 0}
!35 = !{!28, !26, i64 136}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!28, !26, i64 128}
!39 = !{!28, !8, i64 120}
!40 = !{!28, !8, i64 20}
!41 = !{!"p1 _ZTS12Bmc_EsPar_t_", !11, i64 0}
!42 = !{!"p1 long", !11, i64 0}
!43 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!44 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!45 = !{!"p1 _ZTS6kissat", !11, i64 0}
!46 = !{!"Exa8_Man_t_", !41, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !42, i64 40, !27, i64 48, !43, i64 56, !43, i64 64, !7, i64 72, !7, i64 131144, !44, i64 131400, !44, i64 131408, !45, i64 131416, !8, i64 131424, !30, i64 131432, !7, i64 131440}
!47 = !{!46, !41, i64 0}
!48 = !{!28, !8, i64 4}
!49 = !{!46, !8, i64 12}
!50 = !{!28, !8, i64 8}
!51 = !{!46, !8, i64 16}
!52 = !{!28, !8, i64 72}
!53 = !{!28, !8, i64 60}
!54 = !{!28, !8, i64 76}
!55 = !{!28, !26, i64 144}
!56 = !{!46, !30, i64 131432}
!57 = !{!28, !8, i64 24}
!58 = !{!28, !8, i64 108}
!59 = !{!28, !8, i64 112}
!60 = !{!28, !27, i64 176}
!61 = !{!28, !8, i64 84}
!62 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!28, !8, i64 44}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21, !36, !37}
!75 = distinct !{!75, !21, !37, !36}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !21, !36, !37}
!87 = distinct !{!87, !21, !37, !36}
!88 = distinct !{!88, !21, !36, !37}
!89 = distinct !{!89, !21, !37, !36}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21, !36, !37}
!92 = distinct !{!92, !21, !37, !36}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21, !186}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21, !36, !37}
!108 = distinct !{!108, !21, !37, !36}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21, !186}
!111 = distinct !{!111, !21, !36, !37}
!112 = distinct !{!112, !21, !37, !36}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21, !36, !37}
!115 = distinct !{!115, !21, !37, !36}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21, !36, !37}
!119 = distinct !{!119, !21, !37, !36}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21, !186}
!122 = distinct !{!122, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !21, !36, !37}
!126 = distinct !{!126, !24}
!127 = distinct !{!127, !"LVerDomain"}
!128 = distinct !{!128, !127}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !21, !36, !37}
!131 = distinct !{!131, !21, !36}
!132 = distinct !{!132, !21, !36}
!133 = distinct !{!133, !21}
!134 = distinct !{!134, !"LVerDomain"}
!135 = distinct !{!135, !134}
!136 = distinct !{!136, !134}
!137 = distinct !{!137, !21, !36, !37}
!138 = distinct !{!138, !24}
!139 = distinct !{!139, !21, !36}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !21}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21, !186}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21}
!149 = distinct !{!149, !21}
!150 = distinct !{!150, !21}
!151 = distinct !{!151, !21}
!152 = distinct !{!152, !21}
!153 = distinct !{!153, !21}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = distinct !{!160, !21}
!161 = distinct !{!161, !21}
!162 = distinct !{!162, !21}
!163 = distinct !{!163, !21}
!164 = !{!30, !30, i64 0}
!165 = !{!46, !8, i64 8}
!166 = !{!46, !8, i64 20}
!167 = !{!46, !8, i64 24}
!168 = !{!46, !8, i64 28}
!169 = !{!46, !42, i64 40}
!170 = !{!46, !44, i64 131400}
!171 = !{!46, !8, i64 32}
!172 = !{!46, !44, i64 131408}
!173 = !{!"Vec_Wrd_t_", !8, i64 0, !8, i64 4, !42, i64 8}
!174 = !{!173, !8, i64 0}
!175 = !{!173, !42, i64 8}
!176 = !{!173, !8, i64 4}
!177 = !{!46, !27, i64 48}
!178 = !{!"Vec_Bit_t_", !8, i64 0, !8, i64 4, !17, i64 8}
!179 = !{!178, !8, i64 0}
!180 = !{!178, !17, i64 8}
!181 = !{!178, !8, i64 4}
!182 = !{!43, !43, i64 0}
!183 = !{!46, !45, i64 131416}
!184 = !{!46, !8, i64 131424}
!185 = !{!28, !8, i64 52}
!186 = !{!"llvm.loop.unswitch.partial.disable"}
!187 = !{!28, !8, i64 88}
!188 = !{!42, !42, i64 0}
!189 = !{!123}
!190 = !{!124}
!191 = !{!128}
!192 = !{!129}
!193 = !{!135}
!194 = !{!136}
!195 = !{}
!196 = !{!26, !26, i64 0}
!197 = !{!27, !27, i64 0}
!198 = !{!44, !44, i64 0}
!199 = distinct !{!199, !21}
!200 = distinct !{!200, !21}
!201 = distinct !{!201, !21}
!202 = distinct !{!202, !21}
!203 = distinct !{!203, !21}
!204 = distinct !{!204, !21}
!205 = distinct !{!205, !21}
!206 = distinct !{!206, !21}
!207 = distinct !{!207, !21}
!208 = distinct !{!208, !21}
!209 = !{!"Vec_Str_t_", !8, i64 0, !8, i64 4, !26, i64 8}
!210 = !{!209, !8, i64 4}
!211 = !{!209, !8, i64 0}
!212 = !{!209, !26, i64 8}
!213 = distinct !{!213, !21}
!214 = distinct !{!214, !21, !36, !37}
!215 = distinct !{!215, !21, !36, !37}
!216 = distinct !{!216, !21, !37, !36}
!217 = distinct !{!217, !21}
!218 = !{!28, !8, i64 104}
!219 = !{!"any p2 pointer", !11, i64 0}
!220 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !219, i64 8}
!221 = !{!220, !8, i64 4}
!222 = !{!220, !8, i64 0}
!223 = !{!220, !219, i64 8}
!224 = !{!"branch_weights", i32 4, i32 12}
!225 = !{!11, !11, i64 0}
!226 = !{!28, !8, i64 36}
!227 = !{!28, !8, i64 40}
!228 = distinct !{!228, !"vprintf"}
!229 = distinct !{!229, !228, !"vprintf: argument 0"}
!230 = distinct !{null}
!231 = !{!229}
end_hunk_1
