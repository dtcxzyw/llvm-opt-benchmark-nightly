Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj9?download=true
inline.NumInlined: 239
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Exa9_ManExactSynthesis:bb.a
  %smax22.i = call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %min.iters.check = icmp ult i32 %i.al, 8
  %n.vec = and i32 %i.al, 2147483640              ; 3 uses
  %cmp.n = icmp eq i32 %i.al, %n.vec
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.k, %.preheader.us.preheader.i
  %.01518.us.i = phi i32 [ %i.br, %bb.k ], [ 0, %.preheader.us.preheader.i ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.01518.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi694 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ax = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.ay = lshr <4 x i32> %broadcast.splat, %step.add
  %i.az = and <4 x i32> %i.ax, splat (i32 1)
  %i.ba = and <4 x i32> %i.ay, splat (i32 1)
  %i.bb = add <4 x i32> %i.az, %vec.phi           ; 2 uses
  %i.bc = add <4 x i32> %i.ba, %vec.phi694        ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i32 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %.017.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %i.be, %middle.block ]
  %.01416.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.017.us.i = phi i32 [ %i.bh, %scalar.ph ], [ %.017.us.i.ph, %scalar.ph.preheader ]
  %.01416.us.i = phi i32 [ %i.bi, %scalar.ph ], [ %.01416.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bf = lshr i32 %.01518.us.i, %.01416.us.i
  %i.bg = and i32 %i.bf, 1
  %i.bh = add nuw nsw i32 %i.bg, %.017.us.i       ; 2 uses
  %i.bi = add nuw nsw i32 %.01416.us.i, 1         ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.bi, %i.al
  br i1 %exitcond21.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !53

bb.j:                                             ; preds = %._crit_edge.us.i
  %i.bj = and i32 %.01518.us.i, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = lshr i32 %.01518.us.i, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !108
  %i.bq = xor i64 %i.bp, %i.bl
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !108
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.us.i, %bb.j
  %i.br = add nuw nsw i32 %.01518.us.i, 1         ; 2 uses
  %exitcond23.not.i = icmp eq i32 %i.br, %smax22.i
  br i1 %exitcond23.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.us.i, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa693 = phi i32 [ %i.be, %middle.block ], [ %i.bh, %scalar.ph ]
  %i.bs = zext nneg i32 %.lcssa693 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !30
  %i.bv = icmp eq i8 %i.bu, 49
  br i1 %i.bv, label %bb.j, label %bb.k

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.bw = load i8, ptr %i.at, align 1, !tbaa !30
  %i.bx = icmp eq i8 %i.bw, 49
  br i1 %i.bx, label %.preheader.preheader.i, label %Abc_TtSymFunGenerate.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.av, i32 1) ; 3 uses
  %xtraiter = and i32 %smax.i, 1
  %i.by = icmp slt i32 %i.av, 2
  br i1 %i.by, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i32 %smax.i, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %.01518.i = phi i32 [ 0, %.preheader.preheader.i.new ], [ %i.cq, %.preheader.i ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader.i.new ], [ %niter.next.1, %.preheader.i ]
  %i.bz = and i32 %.01518.i, 62
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 1, %i.ca
  %i.cc = lshr i32 %.01518.i, 6
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !108
  %i.cg = xor i64 %i.cb, %i.cf
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !108
  %i.ch = and i32 %.01518.i, 62
  %i.ci = or disjoint i32 %i.ch, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = lshr i32 %.01518.i, 6
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !108
  %i.cp = xor i64 %i.ck, %i.co
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !108
  %i.cq = add nuw nsw i32 %.01518.i, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSymFunGenerate.exit.loopexit935.unr-lcssa, label %.preheader.i, !llvm.loop !54

Abc_TtSymFunGenerate.exit.loopexit935.unr-lcssa:  ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TtSymFunGenerate.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %Abc_TtSymFunGenerate.exit.loopexit935.unr-lcssa, %.preheader.preheader.i
  %.01518.i.epil.init = phi i32 [ 0, %.preheader.preheader.i ], [ %i.cq, %Abc_TtSymFunGenerate.exit.loopexit935.unr-lcssa ] ; 2 uses
  %lcmp.mod936 = trunc i32 %smax.i to i1
  call void @llvm.assume(i1 %lcmp.mod936)
  %i.cr = and i32 %.01518.i.epil.init, 63
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = lshr i32 %.01518.i.epil.init, 6
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cv ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !108
  %i.cy = xor i64 %i.ct, %i.cx
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !108
  br label %Abc_TtSymFunGenerate.exit

Abc_TtSymFunGenerate.exit:                        ; preds = %.preheader.i.epil.preheader, %Abc_TtSymFunGenerate.exit.loopexit935.unr-lcssa, %bb.k, %bb.i, %.preheader.lr.ph.split.i
  %i.cz = icmp sgt i32 %i.al, 2
  %i.da = add nsw i32 %i.al, -2
  %i.db = shl nuw i32 1, %i.da
  %i.dc = add nuw nsw i32 %i.db, 1
  %narrow = select i1 %i.cz, i32 %i.dc, i32 2
  %i.dd = sext i32 %narrow to i64
  %i.de = call noalias ptr @calloc(i64 noundef %i.dd, i64 noundef 1) #20 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !31
  call void @Extra_PrintHexadecimalString(ptr noundef %i.de, ptr noundef %i.au, i32 noundef %i.al) #19
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !23
  %.not171 = icmp eq i32 %i.dh, 0
  br i1 %.not171, label %bb.l, label %bb.m

bb.l:                                             ; preds = %Abc_TtSymFunGenerate.exit
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !31
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.di) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %Abc_TtSymFunGenerate.exit
  %.not172 = icmp eq ptr %i.au, null
  br i1 %.not172, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.au) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %Abc_Clock.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !31 ; 5 uses
  %.not173 = icmp eq ptr %i.dl, null
  br i1 %.not173, label %Abc_TtReadHex.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !30  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 48
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !30
  %i.dq = icmp eq i8 %i.dp, 120
  %spec.select.idx.i = select i1 %i.dq, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 %spec.select.idx.i ; 2 uses
  %.pre.i = load i8, ptr %spec.select.i, align 1, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dr = phi i8 [ %i.dm, %bb.p ], [ %.pre.i, %bb.q ] ; 3 uses
  %.038.i = phi ptr [ %i.dl, %bb.p ], [ %spec.select.i, %bb.q ] ; 2 uses
  %i.ds = add i8 %i.dr, -58
  %or.cond.i46.i = icmp ult i8 %i.ds, -10
  %i.dt = and i8 %i.dr, -33
  %i.du = add i8 %i.dt, -71
  %i.dv = icmp ult i8 %i.du, -6
  %narrow.i.not47.i = and i1 %or.cond.i46.i, %i.dv
  br i1 %narrow.i.not47.i, label %.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.r ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.038.i, i64 %indvars.iv.next.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !30  ; 2 uses
  %i.dy = add i8 %i.dx, -58
  %or.cond.i.i = icmp ult i8 %i.dy, -10
  %i.dz = and i8 %i.dx, -33
  %i.ea = add i8 %i.dz, -71
  %i.eb = icmp ult i8 %i.ea, -6
  %narrow.i.not.i = and i1 %or.cond.i.i, %i.eb
  br i1 %narrow.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 3 uses
  switch i32 %indvars.i, label %.thread71.i [
    i32 1, label %bb.s
    i32 0, label %.sink.split.i
  ]

bb.s:                                             ; preds = %._crit_edge.i
  %switch.tableidx = add i8 %i.dr, -48            ; 3 uses
  %i.ec = icmp ult i8 %switch.tableidx, 23
  br i1 %i.ec, label %switch.hole_check, label %.lr.ph53.preheader.i

.thread71.i:                                      ; preds = %._crit_edge.i
  %4 = add i32 %indvars.i, -1
  %5 = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %4, i1 false) ; 2 uses
  %6 = sub nuw nsw i32 34, %5                     ; 2 uses
  %7 = icmp ult i32 %indvars.i, 17
  br i1 %7, label %.lr.ph53.preheader.i, label %.thread.i.a

.thread.i.a:                                      ; preds = %.thread71.i
  %i.ed = sub nsw i32 28, %5
  %i.ee = shl nuw nsw i32 1, %i.ed
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 3
  br label %.lr.ph53.preheader.i

.lr.ph53.preheader.i:                             ; preds = %switch.hole_check, %bb.s, %.thread.i.a, %.thread71.i
  %.ph = phi i64 [ 8, %.thread71.i ], [ 8, %bb.s ], [ %i.eg, %.thread.i.a ], [ 8, %switch.hole_check ]
  %.ph327 = phi i32 [ %6, %.thread71.i ], [ 2, %bb.s ], [ %6, %.thread.i.a ], [ 2, %switch.hole_check ]
  %.ph327.fr = freeze i32 %.ph327                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i8 0, i64 %.ph, i1 false), !tbaa !108
  %sext = shl i64 %indvars.iv.next.i, 32
  %i.eh = ashr exact i64 %sext, 32
  %wide.trip.count.i = and i64 %indvars.iv.next.i, 4294967295
  %i.ei = getelementptr i8, ptr %.038.i, i64 %i.eh
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %Abc_TtReadHexDigit.exit.i, %.lr.ph53.preheader.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph53.preheader.i ], [ %indvars.iv.next63.i, %Abc_TtReadHexDigit.exit.i ] ; 4 uses
  %i.ej = xor i64 %indvars.iv62.i, -1
  %i.ek = getelementptr i8, ptr %i.ei, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !30  ; 4 uses
  %i.em = sext i8 %i.el to i64                    ; 3 uses
  %i.en = add i8 %i.el, -48
  %or.cond.i42.i = icmp ult i8 %i.en, 10
  br i1 %or.cond.i42.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph53.i
  %i.eo = add nsw i64 %i.em, -48
  br label %Abc_TtReadHexDigit.exit.i

bb.u:                                             ; preds = %.lr.ph53.i
  %i.ep = add i8 %i.el, -65
  %or.cond5.i.i = icmp ult i8 %i.ep, 6
  br i1 %or.cond5.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = add nsw i64 %i.em, -55
  br label %Abc_TtReadHexDigit.exit.i

bb.w:                                             ; preds = %bb.u
  %i.er = add i8 %i.el, -97
  %or.cond8.i.i = icmp ult i8 %i.er, 6
  %i.es = add nsw i64 %i.em, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i64 %i.es, i64 -1
  br label %Abc_TtReadHexDigit.exit.i

Abc_TtReadHexDigit.exit.i:                        ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi i64 [ %i.eo, %bb.t ], [ %i.eq, %bb.v ], [ %spec.select.i.i, %bb.w ]
  %i.et = shl i64 %indvars.iv62.i, 2
  %i.eu = and i64 %i.et, 60
  %i.ev = shl i64 %.0.i.i, %i.eu
  %i.ew = lshr i64 %indvars.iv62.i, 4
  %i.ex = and i64 %i.ew, 268435455
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ex ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !108
  %i.fa = or i64 %i.ez, %i.ev
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !108
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count.i
  br i1 %exitcond.not.i203, label %._crit_edge54.i, label %.lr.ph53.i, !llvm.loop !56

._crit_edge54.i:                                  ; preds = %Abc_TtReadHexDigit.exit.i
  %i.fb = icmp samesign ult i32 %.ph327.fr, 6
  br i1 %i.fb, label %bb.x, label %Abc_TtReadHex.exit

bb.x:                                             ; preds = %._crit_edge54.i
  %.pre.a = load i64, ptr %i.ar, align 8, !tbaa !108 ; 4 uses
  %i.fc = icmp ult i32 %.ph327.fr, 3
  %i.fd = and i64 %.pre.a, 15
  %i.fe = mul nuw nsw i64 %i.fd, 17
  %spec.select = select i1 %i.fc, i64 %i.fe, i64 %.pre.a
  %i.ff = icmp ult i32 %.ph327.fr, 4
  %i.fg = and i64 %spec.select, 255
  %i.fh = mul nuw nsw i64 %i.fg, 257
  %i.fi = select i1 %i.ff, i64 %i.fh, i64 %.pre.a
  %.not648 = icmp eq i32 %.ph327.fr, 5
  %i.fj = and i64 %i.fi, 65535
  %i.fk = mul nuw nsw i64 %i.fj, 65537
  %spec.select647 = select i1 %.not648, i64 %.pre.a, i64 %i.fk
  %i.fl = and i64 %spec.select647, 4294967295
  %i.fm = mul nuw i64 %i.fl, 4294967297
  br label %.sink.split.i

switch.hole_check:                                ; preds = %bb.s
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph53.preheader.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.fn = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Exa9_ManExactSynthesis, i64 %i.fn
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %._crit_edge.i, %bb.x, %switch.lookup
  %.5.i.sink.i = phi i64 [ %switch.load, %switch.lookup ], [ %i.fm, %bb.x ], [ 0, %._crit_edge.i ], [ 0, %bb.r ]
  store i64 %.5.i.sink.i, ptr %i.ar, align 8, !tbaa !108
  br label %Abc_TtReadHex.exit

Abc_TtReadHex.exit:                               ; preds = %.sink.split.i, %._crit_edge54.i, %bb.o
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !103
  %.not174 = icmp eq i32 %i.fp, 0
  br i1 %.not174, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %Abc_TtReadHex.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !23
  %.not175 = icmp eq i32 %i.fr, 0
  br i1 %.not175, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %Abc_TtReadHex.exit
  store i32 0, ptr %i.fo, align 4, !tbaa !103
  %i.fs = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #20 ; 36 uses
  store ptr %0, ptr %i.fs, align 8, !tbaa !36
  %i.ft = load i32, ptr %0, align 8, !tbaa !18    ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 23 uses
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !37
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !19 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12 ; 22 uses
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !38
  %i.fy = add nsw i32 %i.fw, %i.ft                ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 54 uses
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !39
  %i.ga = icmp slt i32 %i.ft, 7                   ; 2 uses
  %i.gb = add nsw i32 %i.ft, -6                   ; 2 uses
  %i.gc = shl nuw i32 1, %i.gb
  %i.gd = select i1 %i.ga, i32 1, i32 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 20 ; 5 uses
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !109
  %i.gf = shl nuw i32 1, %i.ft
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 14 uses
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !110
  %i.gh = shl nsw i32 %i.fw, 2
  %i.gi = or disjoint i32 %i.gh, 2
  %i.gj = mul i32 %i.gi, %i.fy                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 28 ; 11 uses
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !111
  %i.gl = mul nsw i32 %i.fy, 3
  %i.gm = shl i32 %i.gl, %i.ft                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 5 uses
  store i32 %i.gm, ptr %i.gn, align 8, !tbaa !112
  %i.go = sext i32 %i.gj to i64
  %i.gp = shl nsw i64 %i.go, 1
  %i.gq = sext i32 %i.gm to i64
  %i.gr = add nsw i64 %i.gp, %i.gq
  %spec.store.select.i.i = call i64 @llvm.smin.i64(i64 %i.gr, i64 2147483647)
  %i.gs = trunc i64 %spec.store.select.i.i to i32 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !113
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 4 uses
  store ptr %i.ar, ptr %i.gu, align 8, !tbaa !114
  %i.gv = add nsw i32 %i.fy, 1
  %i.gw = select i1 %i.ga, i32 0, i32 %i.gb
  %i.gx = shl i32 %i.gv, %i.gw                    ; 4 uses
  %i.gy = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.gz = add i32 %i.gx, -1
  %or.cond.i.i.i = icmp ult i32 %i.gz, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.gx ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.gy, align 8, !tbaa !116
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WrdStart.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ha = sext i32 %spec.store.select.i.i.i to i64
  %i.hb = shl nsw i64 %i.ha, 3
  %i.hc = call noalias ptr @malloc(i64 noundef %i.hb) #21
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.ab, %bb.aa
  %i.hd = phi ptr [ %i.hc, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !117
  store i32 %i.gx, ptr %i.he, align 4, !tbaa !118
  %i.hg = sext i32 %i.gx to i64
  %i.hh = shl nsw i64 %i.hg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hd, i8 0, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fs, i64 72 ; 6 uses
  store ptr %i.gy, ptr %i.hi, align 8, !tbaa !119
  %i.hj = call ptr @kissat_init() #19             ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fs, i64 80 ; 90 uses
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !40
  call void @kissat_reserve(ptr noundef %i.hj, i32 noundef %i.gs) #19
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !101 ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %bb.ac, label %Exa9_ManAlloc.exit

bb.ac:                                            ; preds = %Vec_WrdStart.exit.i
  %i.ho = call i32 @kissat_set_option(ptr noundef %i.hj, ptr noundef nonnull @.str.20, i32 noundef %i.hm) #19 ; 0 uses
  br label %Exa9_ManAlloc.exit

Exa9_ManAlloc.exit:                               ; preds = %Vec_WrdStart.exit.i, %bb.ac
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fs, i64 88 ; 3 uses
  store i64 0, ptr %i.hp, align 8, !tbaa !41
  %i.hq = load i32, ptr %i.n, align 4, !tbaa !100
  %.not176 = icmp eq i32 %i.hq, 0
  br i1 %.not176, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %Exa9_ManAlloc.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !23
  %.not177 = icmp eq i32 %i.hs, 0
  br i1 %.not177, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.ht = load i32, ptr %i.fx, align 4, !tbaa !38 ; 14 uses
  %i.hu = shl nsw i32 %i.ht, 2
  %i.hv = load i32, ptr %i.fz, align 8, !tbaa !39 ; 5 uses
  %i.hw = or disjoint i32 %i.hu, 2
  %i.hx = mul i32 %i.hw, %i.hv                    ; 5 uses
  %i.hy = load ptr, ptr %i.fs, align 8, !tbaa !36
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 104
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !24
  %.fr.i.a = freeze i32 %i.ia                     ; 3 uses
  %i.ib = icmp sgt i32 %i.ht, 0
  br i1 %i.ib, label %.lr.ph.i205, label %._crit_edge.i204

.lr.ph.i205:                                      ; preds = %bb.ae
  %i.ic = load i32, ptr %i.fu, align 8, !tbaa !37 ; 6 uses
  switch i32 %.fr.i.a, label %._crit_edge.i204 [
    i32 3, label %.lr.ph.split.us.i.preheader
    i32 1, label %.lr.ph.split.us19.i.preheader
    i32 2, label %.lr.ph.split.us26.i.preheader
  ]

.lr.ph.split.us26.i.preheader:                    ; preds = %.lr.ph.i205
  %min.iters.check696 = icmp ult i32 %i.ht, 8
  br i1 %min.iters.check696, label %.lr.ph.split.us26.i.preheader927, label %vector.ph697

vector.ph697:                                     ; preds = %.lr.ph.split.us26.i.preheader
  %n.vec698 = and i32 %i.ht, 2147483640           ; 3 uses
  %broadcast.splatinsert699 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat700 = shufflevector <4 x i32> %broadcast.splatinsert699, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat700 ; 2 uses
  %invariant.op991 = add <4 x i32> %broadcast.splat700, splat (i32 5)
  %invariant.op993 = add <4 x i32> %invariant.op, splat (i32 5)
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph697
  %index702 = phi i32 [ 0, %vector.ph697 ], [ %index.next708, %vector.body701 ]
  %vec.phi703 = phi <4 x i32> [ zeroinitializer, %vector.ph697 ], [ %21, %vector.body701 ]
  %vec.phi704 = phi <4 x i32> [ zeroinitializer, %vector.ph697 ], [ %22, %vector.body701 ]
  %vec.ind705 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph697 ], [ %vec.ind.next709, %vector.body701 ] ; 5 uses
  %8 = add nsw <4 x i32> %vec.ind705, %broadcast.splat700
  %.reass = add <4 x i32> %vec.ind705, %invariant.op
  %9 = icmp slt <4 x i32> %8, splat (i32 7)
  %10 = icmp slt <4 x i32> %.reass, splat (i32 7)
  %.reass992 = add <4 x i32> %vec.ind705, %invariant.op991
  %.reass994 = add <4 x i32> %vec.ind705, %invariant.op993
  %11 = udiv <4 x i32> %.reass992, splat (i32 6)
  %12 = udiv <4 x i32> %.reass994, splat (i32 6)
  %13 = add nsw <4 x i32> %11, splat (i32 -1)
  %14 = add nsw <4 x i32> %12, splat (i32 -1)
  %15 = call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %13, i1 true)
  %16 = call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %14, i1 true)
  %17 = shl nuw nsw <4 x i32> %15, splat (i32 2)
  %18 = shl nuw nsw <4 x i32> %16, splat (i32 2)
  %19 = sub nuw nsw <4 x i32> splat (i32 128), %17
  %20 = sub nuw nsw <4 x i32> splat (i32 128), %18
  %predphi = select <4 x i1> %9, <4 x i32> zeroinitializer, <4 x i32> %19
  %predphi707 = select <4 x i1> %10, <4 x i32> zeroinitializer, <4 x i32> %20
  %21 = add <4 x i32> %predphi, %vec.phi703       ; 2 uses
  %22 = add <4 x i32> %predphi707, %vec.phi704    ; 2 uses
  %index.next708 = add nuw i32 %index702, 8       ; 2 uses
  %vec.ind.next709 = add nuw <4 x i32> %vec.ind705, splat (i32 8)
  %23 = icmp eq i32 %index.next708, %n.vec698
  br i1 %23, label %middle.block710, label %vector.body701, !llvm.loop !57

middle.block710:                                  ; preds = %vector.body701
  %bin.rdx711 = add <4 x i32> %22, %21
  %24 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx711) ; 2 uses
  %cmp.n712 = icmp eq i32 %i.ht, %n.vec698
  br i1 %cmp.n712, label %._crit_edge.i204, label %.lr.ph.split.us26.i.preheader927

.lr.ph.split.us26.i.preheader927:                 ; preds = %.lr.ph.split.us26.i.preheader, %middle.block710
  %.018.us27.i.ph = phi i32 [ 0, %.lr.ph.split.us26.i.preheader ], [ %24, %middle.block710 ]
  %.01417.us28.i.ph = phi i32 [ 0, %.lr.ph.split.us26.i.preheader ], [ %n.vec698, %middle.block710 ]
  br label %.lr.ph.split.us26.i

.lr.ph.split.us19.i.preheader:                    ; preds = %.lr.ph.i205
  %min.iters.check716 = icmp ult i32 %i.ht, 8
  br i1 %min.iters.check716, label %.lr.ph.split.us19.i.preheader922, label %vector.ph717

vector.ph717:                                     ; preds = %.lr.ph.split.us19.i.preheader
  %n.vec718 = and i32 %i.ht, 2147483640           ; 3 uses
  %broadcast.splatinsert719 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat720 = shufflevector <4 x i32> %broadcast.splatinsert719, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op995 = add <4 x i32> splat (i32 4), %broadcast.splat720
  br label %vector.body721

vector.body721:                                   ; preds = %vector.body721, %vector.ph717
  %index722 = phi i32 [ 0, %vector.ph717 ], [ %index.next727, %vector.body721 ]
  %vec.phi723 = phi <4 x i32> [ zeroinitializer, %vector.ph717 ], [ %i.ik, %vector.body721 ]
  %vec.phi724 = phi <4 x i32> [ zeroinitializer, %vector.ph717 ], [ %i.il, %vector.body721 ]
  %vec.ind725 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph717 ], [ %vec.ind.next728, %vector.body721 ] ; 3 uses
  %i.id = add nsw <4 x i32> %vec.ind725, %broadcast.splat720
  %.reass996 = add <4 x i32> %vec.ind725, %invariant.op995
  %i.ie = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.id, <4 x i32> splat (i32 1))
  %i.if = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.reass996, <4 x i32> splat (i32 1))
  %i.ig = shl <4 x i32> %i.ie, splat (i32 2)
  %i.ih = shl <4 x i32> %i.if, splat (i32 2)
  %i.ii = add <4 x i32> %vec.phi723, splat (i32 -4)
  %i.ij = add <4 x i32> %vec.phi724, splat (i32 -4)
  %i.ik = add <4 x i32> %i.ii, %i.ig              ; 2 uses
  %i.il = add <4 x i32> %i.ij, %i.ih              ; 2 uses
  %index.next727 = add nuw i32 %index722, 8       ; 2 uses
  %vec.ind.next728 = add nuw <4 x i32> %vec.ind725, splat (i32 8)
  %i.im = icmp eq i32 %index.next727, %n.vec718
  br i1 %i.im, label %middle.block729, label %vector.body721, !llvm.loop !58

middle.block729:                                  ; preds = %vector.body721
  %bin.rdx730 = add <4 x i32> %i.il, %i.ik
  %i.in = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx730) ; 2 uses
  %cmp.n731 = icmp eq i32 %i.ht, %n.vec718
  br i1 %cmp.n731, label %._crit_edge.i204, label %.lr.ph.split.us19.i.preheader922

.lr.ph.split.us19.i.preheader922:                 ; preds = %.lr.ph.split.us19.i.preheader, %middle.block729
  %.018.us20.i.ph = phi i32 [ 0, %.lr.ph.split.us19.i.preheader ], [ %i.in, %middle.block729 ]
  %.01417.us21.i.ph = phi i32 [ 0, %.lr.ph.split.us19.i.preheader ], [ %n.vec718, %middle.block729 ]
  br label %.lr.ph.split.us19.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i205
  %min.iters.check735 = icmp ult i32 %i.ht, 8
  br i1 %min.iters.check735, label %.lr.ph.split.us.i.preheader918, label %vector.ph736

vector.ph736:                                     ; preds = %.lr.ph.split.us.i.preheader
  %n.vec737 = and i32 %i.ht, 2147483640           ; 3 uses
  %broadcast.splatinsert738 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat739 = shufflevector <4 x i32> %broadcast.splatinsert738, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %invariant.op997 = add <4 x i32> splat (i32 4), %broadcast.splat739 ; 2 uses
  %invariant.op999 = add <4 x i32> %broadcast.splat739, splat (i32 4)
  %invariant.op1001 = add <4 x i32> %invariant.op997, splat (i32 4)
  br label %vector.body740

vector.body740:                                   ; preds = %vector.body740, %vector.ph736
  %index741 = phi i32 [ 0, %vector.ph736 ], [ %index.next748, %vector.body740 ]
  %vec.phi742 = phi <4 x i32> [ zeroinitializer, %vector.ph736 ], [ %i.iv, %vector.body740 ]
  %vec.phi743 = phi <4 x i32> [ zeroinitializer, %vector.ph736 ], [ %i.iw, %vector.body740 ]
  %vec.ind744 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph736 ], [ %vec.ind.next749, %vector.body740 ] ; 5 uses
  %i.io = add nsw <4 x i32> %vec.ind744, %broadcast.splat739
  %.reass998 = add <4 x i32> %vec.ind744, %invariant.op997
  %i.ip = icmp slt <4 x i32> %i.io, splat (i32 6)
  %i.iq = icmp slt <4 x i32> %.reass998, splat (i32 6)
  %.reass1000 = add <4 x i32> %vec.ind744, %invariant.op999
  %.reass1002 = add <4 x i32> %vec.ind744, %invariant.op1001
  %i.ir = udiv <4 x i32> %.reass1000, splat (i32 5)
  %i.is = udiv <4 x i32> %.reass1002, splat (i32 5)
  %i.it = shl nuw nsw <4 x i32> %i.ir, splat (i32 2)
  %i.iu = shl nuw nsw <4 x i32> %i.is, splat (i32 2)
  %predphi746 = select <4 x i1> %i.ip, <4 x i32> zeroinitializer, <4 x i32> %i.it
  %predphi747 = select <4 x i1> %i.iq, <4 x i32> zeroinitializer, <4 x i32> %i.iu
  %i.iv = add <4 x i32> %predphi746, %vec.phi742  ; 2 uses
  %i.iw = add <4 x i32> %predphi747, %vec.phi743  ; 2 uses
  %index.next748 = add nuw i32 %index741, 8       ; 2 uses
  %vec.ind.next749 = add nuw <4 x i32> %vec.ind744, splat (i32 8)
  %i.ix = icmp eq i32 %index.next748, %n.vec737
  br i1 %i.ix, label %middle.block750, label %vector.body740, !llvm.loop !59

middle.block750:                                  ; preds = %vector.body740
  %bin.rdx751 = add <4 x i32> %i.iw, %i.iv
  %i.iy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx751) ; 2 uses
  %cmp.n752 = icmp eq i32 %i.ht, %n.vec737
  br i1 %cmp.n752, label %._crit_edge.i204, label %.lr.ph.split.us.i.preheader918

.lr.ph.split.us.i.preheader918:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block750
  %.018.us.i.ph = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.iy, %middle.block750 ]
  %.01417.us.i.ph = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec737, %middle.block750 ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader918, %Exa9_ManCountAuxOneHot.exit.us.i
  %.018.us.i = phi i32 [ %i.jd, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %.018.us.i.ph, %.lr.ph.split.us.i.preheader918 ]
  %.01417.us.i = phi i32 [ %i.je, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %.01417.us.i.ph, %.lr.ph.split.us.i.preheader918 ] ; 2 uses
  %i.iz = add nsw i32 %.01417.us.i, %i.ic         ; 2 uses
  %or.cond.i = icmp slt i32 %i.iz, 6
  br i1 %or.cond.i, label %Exa9_ManCountAuxOneHot.exit.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.ja = add nuw nsw i32 %i.iz, 4
  %i.jb = udiv i32 %i.ja, 5
  %i.jc = shl nuw nsw i32 %i.jb, 2
  br label %Exa9_ManCountAuxOneHot.exit.us.i

Exa9_ManCountAuxOneHot.exit.us.i:                 ; preds = %bb.af, %.lr.ph.split.us.i
  %.2.i.us.i = phi i32 [ %i.jc, %bb.af ], [ 0, %.lr.ph.split.us.i ]
  %i.jd = add nuw nsw i32 %.2.i.us.i, %.018.us.i  ; 2 uses
  %i.je = add nuw nsw i32 %.01417.us.i, 1         ; 2 uses
  %exitcond40.not.i = icmp eq i32 %i.je, %i.ht
  br i1 %exitcond40.not.i, label %._crit_edge.i204, label %.lr.ph.split.us.i, !llvm.loop !60

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.split.us19.i.preheader922, %.lr.ph.split.us19.i
  %.018.us20.i = phi i32 [ %i.ji, %.lr.ph.split.us19.i ], [ %.018.us20.i.ph, %.lr.ph.split.us19.i.preheader922 ]
  %.01417.us21.i = phi i32 [ %i.jj, %.lr.ph.split.us19.i ], [ %.01417.us21.i.ph, %.lr.ph.split.us19.i.preheader922 ] ; 2 uses
  %i.jf = add nsw i32 %.01417.us21.i, %i.ic
  %i.jg = call i32 @llvm.smax.i32(i32 %i.jf, i32 1)
  %spec.select.i207 = shl i32 %i.jg, 2
  %i.jh = add i32 %.018.us20.i, -4
  %i.ji = add i32 %i.jh, %spec.select.i207        ; 2 uses
  %i.jj = add nuw nsw i32 %.01417.us21.i, 1       ; 2 uses
  %exitcond39.not.i = icmp eq i32 %i.jj, %i.ht
  br i1 %exitcond39.not.i, label %._crit_edge.i204, label %.lr.ph.split.us19.i, !llvm.loop !61

.lr.ph.split.us26.i:                              ; preds = %.lr.ph.split.us26.i.preheader927, %Exa9_ManCountAuxOneHot.exit.us29.i
  %.018.us27.i = phi i32 [ %i.jl, %Exa9_ManCountAuxOneHot.exit.us29.i ], [ %.018.us27.i.ph, %.lr.ph.split.us26.i.preheader927 ]
  %.01417.us28.i = phi i32 [ %i.jm, %Exa9_ManCountAuxOneHot.exit.us29.i ], [ %.01417.us28.i.ph, %.lr.ph.split.us26.i.preheader927 ] ; 2 uses
  %i.jk = add nsw i32 %.01417.us28.i, %i.ic       ; 2 uses
  %or.cond33.i = icmp slt i32 %i.jk, 7
  br i1 %or.cond33.i, label %Exa9_ManCountAuxOneHot.exit.us29.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us26.i
  %25 = add nuw nsw i32 %i.jk, 5
  %26 = udiv i32 %25, 6
  %27 = add nsw i32 %26, -1
  %28 = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %27, i1 true)
  %29 = shl nuw nsw i32 %28, 2
  %30 = sub nuw nsw i32 128, %29
  br label %Exa9_ManCountAuxOneHot.exit.us29.i

Exa9_ManCountAuxOneHot.exit.us29.i:               ; preds = %bb.ag, %.lr.ph.split.us26.i
  %.2.i.us30.i = phi i32 [ %30, %bb.ag ], [ 0, %.lr.ph.split.us26.i ]
  %i.jl = add nuw nsw i32 %.2.i.us30.i, %.018.us27.i ; 2 uses
  %i.jm = add nuw nsw i32 %.01417.us28.i, 1       ; 2 uses
  %exitcond.not.i206 = icmp eq i32 %i.jm, %i.ht
  br i1 %exitcond.not.i206, label %._crit_edge.i204, label %.lr.ph.split.us26.i, !llvm.loop !62

._crit_edge.i204:                                 ; preds = %Exa9_ManCountAuxOneHot.exit.us29.i, %.lr.ph.split.us19.i, %Exa9_ManCountAuxOneHot.exit.us.i, %middle.block710, %middle.block729, %middle.block750, %.lr.ph.i205, %bb.ae
  %.0.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.ji, %.lr.ph.split.us19.i ], [ 0, %.lr.ph.i205 ], [ %i.jd, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %i.iy, %middle.block750 ], [ %i.in, %middle.block729 ], [ %24, %middle.block710 ], [ %i.jl, %Exa9_ManCountAuxOneHot.exit.us29.i ] ; 8 uses
  %i.jn = shl nuw nsw i32 %i.hv, 1                ; 3 uses
  %i.jo = icmp slt i32 %i.hv, 1
  br i1 %i.jo, label %Exa9_ManCountAuxTotal.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i204
  switch i32 %.fr.i.a, label %Exa9_ManCountAuxTotal.exit [
    i32 3, label %bb.ak
    i32 1, label %Exa9_ManCountAuxTotal.exit.thread589
    i32 2, label %bb.ai
  ]

Exa9_ManCountAuxTotal.exit.thread589:             ; preds = %bb.ah
  %i.jp = add nsw i32 %i.jn, -1
  %i.jq = add nsw i32 %i.jp, %.0.lcssa.i          ; 2 uses
  %i.jr = add nsw i32 %i.jq, %i.hx
  %i.js = load i32, ptr %i.gn, align 8, !tbaa !112 ; 2 uses
  %i.jt = add nsw i32 %i.jr, %i.js
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.ju = icmp samesign ult i32 %i.hv, 4
  br i1 %i.ju, label %Exa9_ManCountAuxTotal.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %31 = add nuw nsw i32 %i.jn, 4
  %32 = udiv i32 %31, 6
  %33 = add nsw i32 %32, -1
  %34 = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %33, i1 true)
  %35 = sub nuw nsw i32 32, %34
  br label %Exa9_ManCountAuxTotal.exit.thread

bb.ak:                                            ; preds = %bb.ah
  %i.jv = icmp samesign ult i32 %i.hv, 3
  br i1 %i.jv, label %Exa9_ManCountAuxTotal.exit.thread587, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jw = add nuw nsw i32 %i.jn, 4
  %i.jx = udiv i32 %i.jw, 5
  br label %Exa9_ManCountAuxTotal.exit.thread587

Exa9_ManCountAuxTotal.exit.thread:                ; preds = %bb.ai, %bb.aj
  %.2.i15.i.ph = phi i32 [ %35, %bb.aj ], [ 0, %bb.ai ]
  %i.jy = add nsw i32 %.2.i15.i.ph, %.0.lcssa.i   ; 2 uses
  %i.jz = add nsw i32 %i.jy, %i.hx
  %i.ka = load i32, ptr %i.gn, align 8, !tbaa !112 ; 2 uses
  %i.kb = add nsw i32 %i.jz, %i.ka
  br label %bb.an

Exa9_ManCountAuxTotal.exit.thread587:             ; preds = %bb.ak, %bb.al
  %.2.i15.i.ph586 = phi i32 [ %i.jx, %bb.al ], [ 0, %bb.ak ]
  %i.kc = add nsw i32 %.2.i15.i.ph586, %.0.lcssa.i ; 2 uses
  %i.kd = add nsw i32 %i.kc, %i.hx
  %i.ke = load i32, ptr %i.gn, align 8, !tbaa !112 ; 2 uses
  %i.kf = add nsw i32 %i.kd, %i.ke
  br label %bb.an

Exa9_ManCountAuxTotal.exit:                       ; preds = %._crit_edge.i204, %bb.ah
  %i.kg = add nsw i32 %.0.lcssa.i, %i.hx
  %i.kh = load i32, ptr %i.gn, align 8, !tbaa !112 ; 5 uses
  %i.ki = add nsw i32 %i.kg, %i.kh                ; 4 uses
  switch i32 %.fr.i.a, label %bb.am [
    i32 1, label %bb.an
    i32 2, label %.fold.split
    i32 3, label %switch.edge
  ]

switch.edge:                                      ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

bb.am:                                            ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

.fold.split:                                      ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

bb.an:                                            ; preds = %Exa9_ManCountAuxTotal.exit.thread, %Exa9_ManCountAuxTotal.exit.thread587, %Exa9_ManCountAuxTotal.exit.thread589, %switch.edge, %Exa9_ManCountAuxTotal.exit, %.fold.split, %bb.am
  %i.kj = phi i32 [ %i.ki, %Exa9_ManCountAuxTotal.exit ], [ %i.ki, %bb.am ], [ %i.ki, %switch.edge ], [ %i.jt, %Exa9_ManCountAuxTotal.exit.thread589 ], [ %i.kf, %Exa9_ManCountAuxTotal.exit.thread587 ], [ %i.kb, %Exa9_ManCountAuxTotal.exit.thread ], [ %i.ki, %.fold.split ]
  %i.kk = phi i32 [ %i.kh, %Exa9_ManCountAuxTotal.exit ], [ %i.kh, %bb.am ], [ %i.kh, %switch.edge ], [ %i.js, %Exa9_ManCountAuxTotal.exit.thread589 ], [ %i.ke, %Exa9_ManCountAuxTotal.exit.thread587 ], [ %i.ka, %Exa9_ManCountAuxTotal.exit.thread ], [ %i.kh, %.fold.split ]
  %i.kl = phi i32 [ %.0.lcssa.i, %Exa9_ManCountAuxTotal.exit ], [ %.0.lcssa.i, %bb.am ], [ %.0.lcssa.i, %switch.edge ], [ %i.jq, %Exa9_ManCountAuxTotal.exit.thread589 ], [ %i.kc, %Exa9_ManCountAuxTotal.exit.thread587 ], [ %i.jy, %Exa9_ManCountAuxTotal.exit.thread ], [ %.0.lcssa.i, %.fold.split ]
  %i.km = phi ptr [ @.str.3, %Exa9_ManCountAuxTotal.exit ], [ @.str.6, %bb.am ], [ @.str.5, %switch.edge ], [ @.str.3, %Exa9_ManCountAuxTotal.exit.thread589 ], [ @.str.5, %Exa9_ManCountAuxTotal.exit.thread587 ], [ @.str.4, %Exa9_ManCountAuxTotal.exit.thread ], [ @.str.4, %.fold.split ]
  %i.kn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.hx, ptr noundef nonnull %i.km, i32 noundef %i.kl, i32 noundef %i.kk, i32 noundef %i.kj) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ad, %Exa9_ManAlloc.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fs, i64 52 ; 19 uses
  store i32 1, ptr %i.ko, align 4, !tbaa !42
  %i.kp = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 13 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 4 uses
  store i32 100, ptr %i.kp, align 8, !tbaa !44
  %i.kr = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 4 uses
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !45
  %i.kt = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 13 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4 ; 4 uses
  store i32 100, ptr %i.kt, align 8, !tbaa !44
  %i.kv = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 8 uses
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !45
  %i.kx = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 18 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4 ; 3 uses
  store i32 0, ptr %i.ky, align 4, !tbaa !46
  store i32 100, ptr %i.kx, align 8, !tbaa !44
  %i.kz = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 15 uses
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !45
  %i.lb = load i32, ptr %i.fx, align 4, !tbaa !38
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.lr.ph.i209, label %._crit_edge281.i

.lr.ph.i209:                                      ; preds = %bb.ao
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fs, i64 56 ; 6 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.fs, i64 44 ; 12 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 12 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 12 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge278.i, %.lr.ph.i209
  %.promoted267404.i = phi ptr [ %i.kv, %.lr.ph.i209 ], [ %.promoted267408.i, %._crit_edge278.i ]
  %.promoted264399.i = phi i32 [ 100, %.lr.ph.i209 ], [ %.promoted264403.i, %._crit_edge278.i ]
  %.promoted259392.i = phi ptr [ %i.kr, %.lr.ph.i209 ], [ %.promoted259396.i, %._crit_edge278.i ]
  %.promoted256387.i = phi i32 [ 100, %.lr.ph.i209 ], [ %.promoted256391.i, %._crit_edge278.i ]
  %indvars.iv353.i = phi i32 [ 2, %.lr.ph.i209 ], [ %indvars.iv.next354.i, %._crit_edge278.i ] ; 2 uses
  %.0138279.i = phi i32 [ 0, %.lr.ph.i209 ], [ %i.rw, %._crit_edge278.i ] ; 3 uses
  %i.lh = load i32, ptr %i.fu, align 8, !tbaa !37 ; 2 uses
  %i.li = add nsw i32 %i.lh, %.0138279.i          ; 2 uses
  %i.lj = shl i32 %.0138279.i, 2                  ; 5 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.by
  br i1 %i.ln, label %bb.ar, label %.preheader247.i, !llvm.loop !63

.preheader247.i:                                  ; preds = %bb.aq
  %.not149276.i = icmp slt i32 %i.li, 1
  br i1 %.not149276.i, label %._crit_edge278.i, label %.preheader246.lr.ph.i

.preheader246.lr.ph.i:                            ; preds = %.preheader247.i
  %i.lk = add i32 %i.lh, %indvars.iv353.i
  %i.ll = or disjoint i32 %i.lj, 2                ; 2 uses
  %i.lm = or disjoint i32 %i.lj, 3                ; 2 uses
  %.neg476.i = xor i32 %i.lj, -1
  br label %.preheader246.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.promoted267405.i = phi ptr [ %.promoted267404.i, %bb.ap ], [ %.promoted267408.i, %bb.aq ] ; 2 uses
  %.promoted264400.i = phi i32 [ %.promoted264399.i, %bb.ap ], [ %.promoted264403.i, %bb.aq ]
  %.promoted259393.i = phi ptr [ %.promoted259392.i, %bb.ap ], [ %.promoted259396.i, %bb.aq ] ; 2 uses
  %.promoted256388.i = phi i32 [ %.promoted256387.i, %bb.ap ], [ %.promoted256391.i, %bb.aq ]
  %i.ln = phi i1 [ true, %bb.ap ], [ false, %bb.aq ]
  %.0132272.i = phi i32 [ 0, %bb.ap ], [ 2, %bb.aq ]
  store i32 0, ptr %i.kq, align 4, !tbaa !46
  store i32 0, ptr %i.ku, align 4, !tbaa !46
  %i.lo = load i32, ptr %i.fz, align 8, !tbaa !39 ; 2 uses
  %.not152270.i = icmp slt i32 %i.lo, 1
  br i1 %.not152270.i, label %._crit_edge.thread.i, label %.preheader245.lr.ph.i

.preheader245.lr.ph.i:                            ; preds = %bb.ar
  %i.lp = or disjoint i32 %.0132272.i, %i.lj      ; 5 uses
  %i.lq = or disjoint i32 %i.lp, 1                ; 2 uses
  %.neg.i = xor i32 %i.lp, -1
  br label %.preheader245.i

.preheader245.i:                                  ; preds = %.split254.us.i, %.preheader245.lr.ph.i
  %.val162.us.i = phi i32 [ %i.lo, %.preheader245.lr.ph.i ], [ %i.ox, %.split254.us.i ] ; 2 uses
  %.promoted267.i = phi ptr [ %.promoted267405.i, %.preheader245.lr.ph.i ], [ %.promoted267408.i, %.split254.us.i ] ; 8 uses
  %.promoted264.i = phi i32 [ %.promoted264400.i, %.preheader245.lr.ph.i ], [ %.promoted264403.i, %.split254.us.i ] ; 8 uses
  %.promoted262.i = phi i32 [ 0, %.preheader245.lr.ph.i ], [ %.promoted262398.i, %.split254.us.i ] ; 6 uses
  %i.lr = phi ptr [ %.promoted259393.i, %.preheader245.lr.ph.i ], [ %.promoted259396.i, %.split254.us.i ] ; 9 uses
  %.promoted256.i = phi i32 [ %.promoted256388.i, %.preheader245.lr.ph.i ], [ %.promoted256391.i, %.split254.us.i ] ; 8 uses
  %.promoted.i = phi i32 [ 0, %.preheader245.lr.ph.i ], [ %.promoted386.i, %.split254.us.i ] ; 6 uses
  %.0134271.i = phi i32 [ 1, %.preheader245.lr.ph.i ], [ %i.ow, %.split254.us.i ] ; 9 uses
  %.not154.not.i = icmp sgt i32 %.0134271.i, %i.li
  br i1 %.not154.not.i, label %.preheader245.split.us.preheader.i, label %.preheader245.split.i

.preheader245.split.us.preheader.i:               ; preds = %.preheader245.i
  %i.ls = mul nsw i32 %.val162.us.i, %i.lp
  %i.lt = add i32 %i.ls, %.0134271.i
  %i.lu = sub nsw i32 0, %i.lt
  %i.lv = load ptr, ptr %i.hk, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.lv, i32 noundef %i.lu) #19
  %i.lw = load ptr, ptr %i.hk, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.lw, i32 noundef 0) #19
  %i.lx = load i32, ptr %i.ko, align 4, !tbaa !42
  %.not.i.i.us.i.a = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i.us.i.a, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.preheader245.split.us.preheader.i
  %i.ly = load i32, ptr %i.ld, align 8, !tbaa !47
  %.not12.i.i.us.i = icmp eq i32 %i.ly, 0
  br i1 %.not12.i.i.us.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lz = load i32, ptr %i.le, align 4, !tbaa !48
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.le, align 4, !tbaa !48
  br label %Exa9_ManAddUnit.exit.us.i

bb.au:                                            ; preds = %bb.as
  %i.mb = load i32, ptr %i.lf, align 8, !tbaa !49
  %i.mc = add nsw i32 %i.mb, 1
  store i32 %i.mc, ptr %i.lf, align 8, !tbaa !49
  br label %Exa9_ManAddUnit.exit.us.i

bb.av:                                            ; preds = %.preheader245.split.us.preheader.i
  %i.md = load i32, ptr %i.lg, align 8, !tbaa !50
  %i.me = add nsw i32 %i.md, 1
  store i32 %i.me, ptr %i.lg, align 8, !tbaa !50
  br label %Exa9_ManAddUnit.exit.us.i

Exa9_ManAddUnit.exit.us.i:                        ; preds = %bb.av, %bb.au, %bb.at
  %i.mf = load ptr, ptr %i.hk, align 8, !tbaa !40
  %i.mg = call i32 @kissat_is_inconsistent(ptr noundef %i.mf) #19
  %.not13.i.i.not.us.i = icmp eq i32 %i.mg, 0
  br i1 %.not13.i.i.not.us.i, label %.preheader245.split.us.1.i, label %.split.us.i

.preheader245.split.us.1.i:                       ; preds = %Exa9_ManAddUnit.exit.us.i
  %.val162.us.1.i = load i32, ptr %i.fz, align 8, !tbaa !39
  %.neg474.i = mul i32 %.val162.us.1.i, %.neg.i
  %.neg475.i = sub i32 %.neg474.i, %.0134271.i
  %i.mh = load ptr, ptr %i.hk, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.mh, i32 noundef %.neg475.i) #19
  %i.mi = load ptr, ptr %i.hk, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.mi, i32 noundef 0) #19
  %i.mj = load i32, ptr %i.ko, align 4, !tbaa !42
  %.not.i.i.us.1.i = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i.us.1.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.preheader245.split.us.1.i
  %i.mk = load i32, ptr %i.ld, align 8, !tbaa !47
  %.not12.i.i.us.1.i = icmp eq i32 %i.mk, 0
  br i1 %.not12.i.i.us.1.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ml = load i32, ptr %i.le, align 4, !tbaa !48
  %i.mm = add nsw i32 %i.ml, 1
  store i32 %i.mm, ptr %i.le, align 4, !tbaa !48
  br label %Exa9_ManAddUnit.exit.us.1.i

bb.ay:                                            ; preds = %bb.aw
  %i.mn = load i32, ptr %i.lf, align 8, !tbaa !49
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr %i.lf, align 8, !tbaa !49
  br label %Exa9_ManAddUnit.exit.us.1.i
end_hunk_0
begin_hunk_1_@Exa9_ManAddOneHot:bb.a
  br i1 %.not.i68.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i67.i
  %i.cm = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i69.i = icmp eq i32 %i.cm, 0
  br i1 %.not12.i69.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = load i32, ptr %i.bg, align 4, !tbaa !48
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.bg, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit71.i

bb.t:                                             ; preds = %bb.r
  %i.cp = load i32, ptr %i.bh, align 8, !tbaa !49
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.bh, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit71.i

bb.u:                                             ; preds = %._crit_edge.i67.i
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !50
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.bi, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit71.i

Exa9_KissatAddClause.exit71.i:                    ; preds = %bb.u, %bb.t, %bb.s
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.cu = tail call i32 @kissat_is_inconsistent(ptr noundef %i.ct) #19
  %.not13.i70.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not13.i70.not.i, label %._crit_edge.i77.i, label %Exa9_ManAddOneHotSeq.exit

._crit_edge.i77.i:                                ; preds = %Exa9_KissatAddClause.exit71.i
  %i.cv = load i32, ptr %i.bj, align 4, !tbaa !51 ; 2 uses
  %i.cw = load i32, ptr %i.ce, align 4, !tbaa !51
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.cy = ashr i32 %i.cv, 1                       ; 2 uses
  %i.cz = and i32 %i.cv, 1
  %.not.i.i74.not.i = icmp eq i32 %i.cz, 0
  %i.da = sub nsw i32 0, %i.cy
  %i.db = select i1 %.not.i.i74.not.i, i32 %i.da, i32 %i.cy
  tail call void @kissat_add(ptr noundef %i.cx, i32 noundef %i.db) #19
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.dd = sub nsw i32 0, %i.cw
  tail call void @kissat_add(ptr noundef %i.dc, i32 noundef %i.dd) #19
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.de, i32 noundef 0) #19
  %i.df = load i32, ptr %i.v, align 4, !tbaa !42
  %.not.i78.i = icmp eq i32 %i.df, 0
  br i1 %.not.i78.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i77.i
  %i.dg = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i79.i = icmp eq i32 %i.dg, 0
  br i1 %.not12.i79.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = load i32, ptr %i.bg, align 4, !tbaa !48
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.bg, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit81.i

bb.x:                                             ; preds = %bb.v
  %i.dj = load i32, ptr %i.bh, align 8, !tbaa !49
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.bh, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit81.i

bb.y:                                             ; preds = %._crit_edge.i77.i
  %i.dl = load i32, ptr %i.bi, align 8, !tbaa !50
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.bi, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit81.i

Exa9_KissatAddClause.exit81.i:                    ; preds = %bb.y, %bb.x, %bb.w
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.do = tail call i32 @kissat_is_inconsistent(ptr noundef %i.dn) #19
  %.not13.i80.not.i = icmp eq i32 %i.do, 0
  br i1 %.not13.i80.not.i, label %bb.m, label %Exa9_ManAddOneHotSeq.exit

._crit_edge.i:                                    ; preds = %bb.m
  %i.dp = zext nneg i32 %i.bf to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !51 ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %.val28, i64 %wide.trip.count.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !51
  %i.dv = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.dw = ashr i32 %i.dr, 1                       ; 2 uses
  %i.dx = and i32 %i.dr, 1
  %.not.i.i84.not.i = icmp eq i32 %i.dx, 0
  %i.dy = sub nsw i32 0, %i.dw
  %i.dz = select i1 %.not.i.i84.not.i, i32 %i.dy, i32 %i.dw
  tail call void @kissat_add(ptr noundef %i.dv, i32 noundef %i.dz) #19
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.eb = sub nsw i32 0, %i.du
  tail call void @kissat_add(ptr noundef %i.ea, i32 noundef %i.eb) #19
  %i.ec = load ptr, ptr %i.m, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.ec, i32 noundef 0) #19
  %i.ed = load i32, ptr %i.v, align 4, !tbaa !42
  %.not.i88.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i88.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.ee = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i89.i = icmp eq i32 %i.ee, 0
  br i1 %.not12.i89.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = load i32, ptr %i.bg, align 4, !tbaa !48
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.bg, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit91.i

bb.ab:                                            ; preds = %bb.z
  %i.eh = load i32, ptr %i.bh, align 8, !tbaa !49
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.bh, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit91.i

bb.ac:                                            ; preds = %._crit_edge.i
  %i.ej = load i32, ptr %i.bi, align 8, !tbaa !50
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.bi, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit91.i

Exa9_KissatAddClause.exit91.i:                    ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.el = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.em = tail call i32 @kissat_is_inconsistent(ptr noundef %i.el) #19
  %.not13.i90.i = icmp eq i32 %i.em, 0
  %i.en = zext i1 %.not13.i90.i to i32
  br label %Exa9_ManAddOneHotSeq.exit

.lr.ph.i.i42:                                     ; preds = %bb.c
  %i.eo = getelementptr i8, ptr %2, i64 8
  %.val29 = load ptr, ptr %i.eo, align 8, !tbaa !45
  %i.ep = getelementptr i8, ptr %1, i64 8
  %.val82.i = load ptr, ptr %i.ep, align 8, !tbaa !45 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %wide.trip.count.i.i43 = zext nneg i32 %.val to i64 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.i42
  %indvars.iv.i.i44 = phi i64 [ 0, %.lr.ph.i.i42 ], [ %indvars.iv.next.i.i46, %bb.ad ] ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv.i.i44
  %i.et = load i32, ptr %i.es, align 4, !tbaa !51 ; 2 uses
  %i.eu = ashr i32 %i.et, 1                       ; 2 uses
  %i.ev = and i32 %i.et, 1
  %.not.i.i.i45 = icmp eq i32 %i.ev, 0
  %i.ew = sub nsw i32 0, %i.eu
  %i.ex = select i1 %.not.i.i.i45, i32 %i.eu, i32 %i.ew
  tail call void @kissat_add(ptr noundef %i.er, i32 noundef %i.ex) #19
  %indvars.iv.next.i.i46 = add nuw nsw i64 %indvars.iv.i.i44, 1 ; 2 uses
  %exitcond.not.i.i47 = icmp eq i64 %indvars.iv.next.i.i46, %wide.trip.count.i.i43
  br i1 %exitcond.not.i.i47, label %._crit_edge.i.i30, label %bb.ad, !llvm.loop !1

._crit_edge.i.i30:                                ; preds = %bb.ad
  %i.ey = load ptr, ptr %i.eq, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.ey, i32 noundef 0) #19
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !42
  %.not.i.i31 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i31, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i30
  %i.fb = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i.i32 = icmp eq i32 %i.fb, 0
  br i1 %.not12.i.i32, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !48
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit.i33

bb.ag:                                            ; preds = %bb.ae
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !49
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit.i33

bb.ah:                                            ; preds = %._crit_edge.i.i30
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !50
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit.i33

Exa9_KissatAddClause.exit.i33:                    ; preds = %bb.ah, %bb.ag, %bb.af
  %i.fl = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.fm = tail call i32 @kissat_is_inconsistent(ptr noundef %i.fl) #19
  %.not13.i.not.i34 = icmp eq i32 %i.fm, 0
  br i1 %.not13.i.not.i34, label %.lr.ph14.i, label %Exa9_ManAddOneHotSeq.exit

.lr.ph14.i:                                       ; preds = %Exa9_KissatAddClause.exit.i33
  %i.fn = add nuw i32 %.val, 5
  %i.fo = udiv i32 %i.fn, 6                       ; 2 uses
  %i.fp = add nsw i32 %i.fo, -1
  %i.fq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fp, i1 true)
  %i.fr = sub nuw nsw i32 32, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %wide.trip.count32.i = zext nneg i32 %i.fr to i64
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i36, %.lr.ph14.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i36 ], [ 6, %.lr.ph14.i ] ; 3 uses
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %._crit_edge.i36 ], [ 0, %.lr.ph14.i ] ; 4 uses
  %.06412.i = phi i32 [ %i.ia, %._crit_edge.i36 ], [ 0, %.lr.ph14.i ] ; 3 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %wide.trip.count.i.i43)
  %i.fv = mul nuw nsw i32 %.06412.i, 6            ; 2 uses
  %i.fw = icmp sgt i32 %.val, %i.fv
  br i1 %i.fw, label %.lr.ph8.preheader.i, label %._crit_edge.i36

.lr.ph8.preheader.i:                              ; preds = %bb.ai
  %indvars110 = trunc i64 %indvars.iv to i32
  %i.fx = add nuw nsw i32 %i.fv, 6
  %i.fy = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %.val)
  %smin.i = tail call i32 @llvm.smin.i32(i32 %.val, i32 %indvars110)
  %i.fz = zext nneg i32 %i.fy to i64              ; 2 uses
  %wide.trip.count.i38 = zext i32 %smin.i to i64
  %indvars.iv.next27.i86 = or disjoint i64 %indvars.iv24.i, 1 ; 2 uses
  %i.ga = icmp samesign ult i64 %indvars.iv.next27.i86, %i.fz
  br i1 %i.ga, label %.lr.ph.i40, label %.preheader.i39.preheader

.preheader.i39.preheader:                         ; preds = %.loopexit.i, %.lr.ph8.preheader.i
  br label %.preheader.i39

.loopexit.i:                                      ; preds = %bb.aj
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv.next27.i89, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next27.i, %umin
  br i1 %exitcond109.not, label %.preheader.i39.preheader, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph8.preheader.i, %.loopexit.i
  %indvars.iv.next27.i89 = phi i64 [ %indvars.iv.next27.i, %.loopexit.i ], [ %indvars.iv.next27.i86, %.lr.ph8.preheader.i ] ; 3 uses
  %indvars.iv26.i87 = phi i64 [ %indvars.iv.next27.i89, %.loopexit.i ], [ %indvars.iv24.i, %.lr.ph8.preheader.i ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv26.i87
  br label %._crit_edge.i92.i

bb.aj:                                            ; preds = %Exa9_KissatAddClause.exit96.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count.i38
  br i1 %exitcond.not.i41, label %.loopexit.i, label %._crit_edge.i92.i, !llvm.loop !129

._crit_edge.i92.i:                                ; preds = %bb.aj, %.lr.ph.i40
  %indvars.iv19.i = phi i64 [ %indvars.iv.next27.i89, %.lr.ph.i40 ], [ %indvars.iv.next20.i, %bb.aj ] ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !51 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv19.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !51 ; 2 uses
  %i.gf = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.gg = ashr i32 %i.gc, 1                       ; 2 uses
  %i.gh = and i32 %i.gc, 1
  %.not.i.i89.not.i = icmp eq i32 %i.gh, 0
  %i.gi = sub nsw i32 0, %i.gg
  %i.gj = select i1 %.not.i.i89.not.i, i32 %i.gi, i32 %i.gg
  tail call void @kissat_add(ptr noundef %i.gf, i32 noundef %i.gj) #19
  %i.gk = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.gl = ashr i32 %i.ge, 1                       ; 2 uses
  %i.gm = and i32 %i.ge, 1
  %.not.i.i89.1.not.i = icmp eq i32 %i.gm, 0
  %i.gn = sub nsw i32 0, %i.gl
  %i.go = select i1 %.not.i.i89.1.not.i, i32 %i.gn, i32 %i.gl
  tail call void @kissat_add(ptr noundef %i.gk, i32 noundef %i.go) #19
  %i.gp = load ptr, ptr %i.eq, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.gp, i32 noundef 0) #19
  %i.gq = load i32, ptr %i.ez, align 4, !tbaa !42
  %.not.i93.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i93.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i92.i
  %i.gr = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i94.i = icmp eq i32 %i.gr, 0
  br i1 %.not12.i94.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gs = load i32, ptr %i.fs, align 4, !tbaa !48
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %i.fs, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit96.i

bb.am:                                            ; preds = %bb.ak
  %i.gu = load i32, ptr %i.ft, align 8, !tbaa !49
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.ft, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit96.i

bb.an:                                            ; preds = %._crit_edge.i92.i
  %i.gw = load i32, ptr %i.fu, align 8, !tbaa !50
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.fu, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit96.i

Exa9_KissatAddClause.exit96.i:                    ; preds = %bb.an, %bb.am, %bb.al
  %i.gy = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.gz = tail call i32 @kissat_is_inconsistent(ptr noundef %i.gy) #19
  %.not13.i95.not.i = icmp eq i32 %i.gz, 0
  br i1 %.not13.i95.not.i, label %bb.aj, label %Exa9_ManAddOneHotSeq.exit

.preheader.i39:                                   ; preds = %.preheader.i39.preheader, %.critedge.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %.critedge.i ], [ %indvars.iv24.i, %.preheader.i39.preheader ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv34.i
  br label %._crit_edge.i102.i

._crit_edge.i102.i:                               ; preds = %bb.as, %.preheader.i39
  %indvars.iv29.i = phi i64 [ 0, %.preheader.i39 ], [ %indvars.iv.next30.i, %bb.as ] ; 2 uses
  %.0629.i = phi i32 [ %.06412.i, %.preheader.i39 ], [ %i.hy, %bb.as ] ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !51 ; 2 uses
  %i.hc = and i32 %.0629.i, 1
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv29.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !51 ; 2 uses
  %i.hf = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.hg = ashr i32 %i.hb, 1                       ; 2 uses
  %i.hh = and i32 %i.hb, 1
  %.not.i.i99.not.i = icmp eq i32 %i.hh, 0
  %i.hi = sub nsw i32 0, %i.hg
  %i.hj = select i1 %.not.i.i99.not.i, i32 %i.hi, i32 %i.hg
  tail call void @kissat_add(ptr noundef %i.hf, i32 noundef %i.hj) #19
  %i.hk = load ptr, ptr %i.eq, align 8, !tbaa !40
  %.not.i.i99.1.not.i = icmp eq i32 %i.hc, 0
  %i.hl = sub nsw i32 0, %i.he
  %i.hm = select i1 %.not.i.i99.1.not.i, i32 %i.hl, i32 %i.he
  tail call void @kissat_add(ptr noundef %i.hk, i32 noundef %i.hm) #19
  %i.hn = load ptr, ptr %i.eq, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.hn, i32 noundef 0) #19
  %i.ho = load i32, ptr %i.ez, align 4, !tbaa !42
  %.not.i103.i = icmp eq i32 %i.ho, 0
  br i1 %.not.i103.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i102.i
  %i.hp = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i104.i = icmp eq i32 %i.hp, 0
  br i1 %.not12.i104.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hq = load i32, ptr %i.fs, align 4, !tbaa !48
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.fs, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit106.i

bb.aq:                                            ; preds = %bb.ao
  %i.hs = load i32, ptr %i.ft, align 8, !tbaa !49
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.ft, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit106.i

bb.ar:                                            ; preds = %._crit_edge.i102.i
  %i.hu = load i32, ptr %i.fu, align 8, !tbaa !50
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.fu, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit106.i

Exa9_KissatAddClause.exit106.i:                   ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hw = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.hx = tail call i32 @kissat_is_inconsistent(ptr noundef %i.hw) #19
  %.not13.i105.not.i = icmp eq i32 %i.hx, 0
  br i1 %.not13.i105.not.i, label %bb.as, label %Exa9_ManAddOneHotSeq.exit

bb.as:                                            ; preds = %Exa9_KissatAddClause.exit106.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.hy = lshr i32 %.0629.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count32.i
  br i1 %exitcond33.not.i, label %.critedge.i, label %._crit_edge.i102.i, !llvm.loop !130

.critedge.i:                                      ; preds = %bb.as
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.hz = icmp samesign ult i64 %indvars.iv.next35.i, %i.fz
  br i1 %i.hz, label %.preheader.i39, label %._crit_edge.i36, !llvm.loop !131

._crit_edge.i36:                                  ; preds = %.critedge.i, %bb.ai
  %i.ia = add nuw nsw i32 %.06412.i, 1            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 6
  %exitcond37.not.i = icmp eq i32 %i.ia, %i.fo
  br i1 %exitcond37.not.i, label %Exa9_ManAddOneHotSeq.exit, label %bb.ai, !llvm.loop !132

.lr.ph.i.i64:                                     ; preds = %bb.c
  %i.ib = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val106.i = load ptr, ptr %i.ib, align 8, !tbaa !45 ; 5 uses
  %i.ic = getelementptr i8, ptr %2, i64 8
  %.val105.i = load ptr, ptr %i.ic, align 8, !tbaa !45
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 18 uses
  %wide.trip.count.i.i65 = zext nneg i32 %.val to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i.i64
  %indvars.iv.i.i66 = phi i64 [ 0, %.lr.ph.i.i64 ], [ %indvars.iv.next.i.i68, %bb.at ] ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv.i.i66
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !51 ; 2 uses
  %i.ih = ashr i32 %i.ig, 1                       ; 2 uses
  %i.ii = and i32 %i.ig, 1
  %.not.i.i.i67 = icmp eq i32 %i.ii, 0
  %i.ij = sub nsw i32 0, %i.ih
  %i.ik = select i1 %.not.i.i.i67, i32 %i.ih, i32 %i.ij
  tail call void @kissat_add(ptr noundef %i.ie, i32 noundef %i.ik) #19
  %indvars.iv.next.i.i68 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %exitcond.not.i.i69 = icmp eq i64 %indvars.iv.next.i.i68, %wide.trip.count.i.i65
  br i1 %exitcond.not.i.i69, label %._crit_edge.i.i48, label %bb.at, !llvm.loop !1

end_hunk_1
begin_hunk_2_@Exa9_ManAddOneHotQuad:bb.a
  tail call void @kissat_add(ptr noundef %i.c, i32 noundef %i.i) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.k, i32 noundef 0) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !49
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit

Exa9_KissatAddClause.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.z = tail call i32 @kissat_is_inconsistent(ptr noundef %i.y) #19
  %.not13.i.not = icmp ne i32 %i.z, 0             ; 2 uses
  %brmerge = or i1 %.not13.i.not, %i.a
  %not..not13.i.not = xor i1 %.not13.i.not, true
  %.mux = zext i1 %not..not13.i.not to i32
  br i1 %brmerge, label %.loopexit1, label %.lr.ph5

.lr.ph5:                                          ; preds = %Exa9_KissatAddClause.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = zext nneg i32 %.4.val to i64
  %wide.trip.count13 = zext nneg i32 %.4.val to i64 ; 2 uses
  br label %bb.g

.loopexit:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %.loopexit1, label %bb.g, !llvm.loop !138

bb.g:                                             ; preds = %.lr.ph5, %.loopexit
  %indvars.iv10 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next11, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next11, %i.ae
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %indvars.iv10
  br label %._crit_edge.i29

bb.h:                                             ; preds = %Exa9_KissatAddClause.exit33
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next8, %wide.trip.count13
  br i1 %exitcond.not, label %.loopexit, label %._crit_edge.i29, !llvm.loop !139

._crit_edge.i29:                                  ; preds = %.lr.ph, %bb.h
  %indvars.iv7 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next8, %bb.h ] ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %indvars.iv7
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51 ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.al = ashr i32 %i.ah, 1                       ; 2 uses
  %i.am = and i32 %i.ah, 1
  %.not.i.i26.not = icmp eq i32 %i.am, 0
  %i.an = sub nsw i32 0, %i.al
  %i.ao = select i1 %.not.i.i26.not, i32 %i.an, i32 %i.al
  tail call void @kissat_add(ptr noundef %i.ak, i32 noundef %i.ao) #19
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.aq = ashr i32 %i.aj, 1                       ; 2 uses
  %i.ar = and i32 %i.aj, 1
  %.not.i.i26.1.not = icmp eq i32 %i.ar, 0
  %i.as = sub nsw i32 0, %i.aq
  %i.at = select i1 %.not.i.i26.1.not, i32 %i.as, i32 %i.aq
  tail call void @kissat_add(ptr noundef %i.ap, i32 noundef %i.at) #19
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.au, i32 noundef 0) #19
  %i.av = load i32, ptr %i.l, align 4, !tbaa !42
  %.not.i30 = icmp eq i32 %i.av, 0
  br i1 %.not.i30, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i29
  %i.aw = load i32, ptr %i.aa, align 8, !tbaa !47
  %.not12.i31 = icmp eq i32 %i.aw, 0
  br i1 %.not12.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.ab, align 4, !tbaa !48
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ab, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit33

bb.k:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ac, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit33

bb.l:                                             ; preds = %._crit_edge.i29
  %i.bb = load i32, ptr %i.ad, align 8, !tbaa !50
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ad, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit33

Exa9_KissatAddClause.exit33:                      ; preds = %bb.j, %bb.k, %bb.l
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.be = tail call i32 @kissat_is_inconsistent(ptr noundef %i.bd) #19
  %.not13.i32.not = icmp eq i32 %i.be, 0
  br i1 %.not13.i32.not, label %bb.h, label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit, %Exa9_KissatAddClause.exit33, %Exa9_KissatAddClause.exit
  %.3 = phi i32 [ 0, %Exa9_KissatAddClause.exit33 ], [ %.mux, %Exa9_KissatAddClause.exit ], [ 1, %.loopexit ]
  ret i32 %.3
}

declare void @kissat_add(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @kissat_is_inconsistent(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare i32 @kissat_value(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @Extra_TimeStamp(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

declare void @kissat_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!16 = !{!"Bmc_EsPar_t_", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !14, i64 160, !14, i64 168, !15, i64 176}
!17 = !{!16, !9, i64 80}
!18 = !{!16, !9, i64 0}
!19 = !{!16, !9, i64 4}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!16, !9, i64 120}
!24 = !{!16, !9, i64 104}
!25 = !{!"long", !8, i64 0}
!26 = !{!"timespec", !25, i64 0, !25, i64 8}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !25, i64 8}
!29 = !{!16, !13, i64 136}
!30 = !{!8, !8, i64 0}
!31 = !{!16, !13, i64 128}
!32 = !{!"p1 _ZTS12Bmc_EsPar_t_", !12, i64 0}
!33 = !{!"p1 long", !12, i64 0}
!34 = !{!"p1 _ZTS6kissat", !12, i64 0}
!35 = !{!"Exa9_Man_t_", !32, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !33, i64 64, !15, i64 72, !34, i64 80, !25, i64 88}
!36 = !{!35, !32, i64 0}
!37 = !{!35, !9, i64 8}
!38 = !{!35, !9, i64 12}
!39 = !{!35, !9, i64 16}
!40 = !{!35, !34, i64 80}
!41 = !{!35, !25, i64 88}
!42 = !{!35, !9, i64 52}
!43 = !{!"Vec_Int_t_", !9, i64 0, !9, i64 4, !14, i64 8}
!44 = !{!43, !9, i64 0}
!45 = !{!43, !14, i64 8}
!46 = !{!43, !9, i64 4}
!47 = !{!35, !9, i64 56}
!48 = !{!35, !9, i64 44}
!49 = !{!35, !9, i64 40}
!50 = !{!35, !9, i64 48}
!51 = !{!9, !9, i64 0}
!52 = distinct !{!52, !20, !106, !107}
!53 = distinct !{!53, !20, !107, !106}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20, !106, !107}
!58 = distinct !{!58, !20, !106, !107}
!59 = distinct !{!59, !20, !106, !107}
!60 = distinct !{!60, !20, !107, !106}
!61 = distinct !{!61, !20, !107, !106}
!62 = distinct !{!62, !20, !107, !106}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20, !106, !107}
!80 = distinct !{!80, !20, !106, !107}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20, !106, !107}
!83 = distinct !{!83, !20, !106, !107}
!84 = distinct !{!84, !20, !106}
!85 = distinct !{!85, !20, !106}
!86 = distinct !{!86, !20, !106, !107}
!87 = distinct !{!87, !20, !106, !107}
!88 = distinct !{!88, !120}
!89 = distinct !{!89, !20, !106}
!90 = distinct !{!90, !20, !106}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20, !106, !107}
!93 = distinct !{!93, !20, !107, !106}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20, !106, !107}
!96 = distinct !{!96, !20, !107, !106}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = !{ptr @Exa9_ManExactSynthesisIter}
!100 = !{!16, !9, i64 116}
!101 = !{!16, !9, i64 100}
!102 = !{!16, !9, i64 88}
!103 = !{!16, !9, i64 20}
!104 = !{!16, !9, i64 24}
!105 = !{!16, !9, i64 108}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!25, !25, i64 0}
!109 = !{!35, !9, i64 20}
!110 = !{!35, !9, i64 24}
!111 = !{!35, !9, i64 28}
!112 = !{!35, !9, i64 32}
!113 = !{!35, !9, i64 36}
!114 = !{!35, !33, i64 64}
!115 = !{!"Vec_Wrd_t_", !9, i64 0, !9, i64 4, !33, i64 8}
!116 = !{!115, !9, i64 0}
!117 = !{!115, !33, i64 8}
!118 = !{!115, !9, i64 4}
!119 = !{!35, !15, i64 72}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = distinct !{!121, !"vprintf"}
!122 = distinct !{!122, !121, !"vprintf: argument 0"}
!123 = distinct !{null}
!124 = !{!122}
!125 = distinct !{!125, !20}
!126 = distinct !{!126, !20}
!127 = !{}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !20}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20}
!133 = distinct !{!133, !20}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
end_hunk_2
