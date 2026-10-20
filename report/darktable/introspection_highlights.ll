Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@dt_segments_combine:bb.a

_intimage_borderfill.exit:                        ; preds = %.lr.ph37.i, %._crit_edge.i, %.lr.ph41.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 214 uses
  %i.ag = icmp slt i32 %i.g, %i.h                 ; 2 uses
  br i1 %i.ag, label %.preheader.lr.ph.i, label %_dilating.exit

.preheader.lr.ph.i:                               ; preds = %_intimage_borderfill.exit
  %i.ah = sub nsw i32 %i.c, %i.g                  ; 2 uses
  %i.ai = icmp slt i32 %i.g, %i.ah
  %i.aj = sext i32 %i.c to i64                    ; 20 uses
  %i.ak = shl nsw i64 %i.aj, 1                    ; 2 uses
  %i.al = icmp samesign ult i32 %1, 3
  %i.am = mul nsw i64 %i.aj, 3                    ; 2 uses
  %i.an = icmp samesign ult i32 %1, 4
  %i.ao = shl nsw i64 %i.aj, 2                    ; 5 uses
  %i.ap = icmp samesign ult i32 %1, 5
  %i.aq = mul nsw i64 %i.aj, 5                    ; 2 uses
  %i.ar = icmp samesign ult i32 %1, 6
  %i.as = mul nsw i64 %i.aj, 6                    ; 2 uses
  %i.at = icmp samesign ult i32 %1, 7
  %i.au = mul nsw i64 %i.aj, 7                    ; 2 uses
  %i.av = icmp samesign ult i32 %1, 8
  %i.aw = shl nsw i64 %i.aj, 3                    ; 2 uses
  br i1 %i.ai, label %.preheader.lr.ph.split.i, label %_dilating.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ax = icmp slt i32 %1, 2
  %wide.trip.count35.i = sext i32 %i.ah to i64    ; 2 uses
  br i1 %i.ax, label %.preheader.us.i.preheader, label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %i.ay = add nsw i64 %i.aj, 1
  %i.az = mul i64 %i.ay, %i.p
  %i.ba = shl i64 %i.az, 2                        ; 3 uses
  %scevgep92 = getelementptr i8, ptr %i.af, i64 %i.ba ; 3 uses
  %i.bb = shl nsw i64 %i.q, 2                     ; 2 uses
  %i.bc = shl nsw i64 %i.p, 2                     ; 2 uses
  %i.bd = sub nsw i64 %i.bb, %i.bc
  %i.be = mul i64 %i.bd, %i.aj                    ; 2 uses
  %i.bf = add nsw i64 %i.ao, -4
  %i.bg = mul i64 %i.bf, %i.p                     ; 4 uses
  %i.bh = getelementptr i8, ptr %i.af, i64 %i.be
  %scevgep93 = getelementptr i8, ptr %i.bh, i64 %i.bg ; 3 uses
  %i.bi = getelementptr i8, ptr %i.a, i64 %i.ba
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ao
  %scevgep94 = getelementptr i8, ptr %i.bj, i64 -4
  %i.bk = add nsw i64 %i.bb, 4
  %i.bl = sub nsw i64 %i.bk, %i.bc
  %i.bm = mul i64 %i.bl, %i.aj
  %i.bn = getelementptr i8, ptr %i.a, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bg
  %scevgep95 = getelementptr i8, ptr %i.bo, i64 4
  %i.bp = add i64 %i.ba, -4                       ; 2 uses
  %scevgep96 = getelementptr i8, ptr %i.a, i64 %i.bp
  %i.bq = getelementptr i8, ptr %i.a, i64 %i.be
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bg
  %scevgep97 = getelementptr i8, ptr %i.br, i64 4
  %i.bs = sub i64 %i.bp, %i.ao
  %scevgep98 = getelementptr i8, ptr %i.a, i64 %i.bs
  %i.bt = xor i64 %i.p, -1
  %i.bu = add nsw i64 %i.bt, %i.q
  %i.bv = mul i64 %i.bu, %i.aj
  %i.bw = shl i64 %i.bv, 2
  %i.bx = getelementptr i8, ptr %i.a, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bg
  %scevgep99 = getelementptr i8, ptr %i.by, i64 4
  %i.bz = shl nsw i64 %i.p, 1
  %i.ca = sub nsw i64 %i.aj, %i.bz                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ca, 8
  %bound0 = icmp ult ptr %scevgep92, %scevgep95
  %bound1 = icmp ult ptr %scevgep94, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.c, 0
  %i.cb = or i1 %found.conflict, %stride.check
  %bound0100 = icmp ult ptr %scevgep92, %scevgep97
  %bound1101 = icmp ult ptr %scevgep96, %scevgep93
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx = or i1 %i.cb, %found.conflict102
  %bound0103 = icmp ult ptr %scevgep92, %scevgep99
  %bound1104 = icmp ult ptr %scevgep98, %scevgep93
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx, %found.conflict105
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.cc = add nsw i64 %n.vec, %i.p
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %._crit_edge.split.us.us.i ], [ %i.p, %.preheader.us.i.preheader ] ; 2 uses
  %i.cd = mul nsw i64 %indvars.iv37.i, %i.aj      ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx106
  br i1 %brmerge, label %_test_dilate.exit.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %invariant.op = add i64 %i.p, %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op         ; 3 uses
  %i.ce = sub nsw i64 %.reass, %i.aj
  %i.cf = getelementptr [4 x i8], ptr %i.a, i64 %i.ce ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %wide.load = load <8 x i32>, ptr %i.cg, align 4, !tbaa !15, !alias.scope !291
  %wide.load107 = load <8 x i32>, ptr %i.cf, align 4, !tbaa !15, !alias.scope !291
  %i.ch = or <8 x i32> %wide.load107, %wide.load
  %i.ci = getelementptr i8, ptr %i.cf, i64 4
  %wide.load108 = load <8 x i32>, ptr %i.ci, align 4, !tbaa !15, !alias.scope !291
  %i.cj = or <8 x i32> %i.ch, %wide.load108
  %i.ck = getelementptr [4 x i8], ptr %i.a, i64 %.reass ; 4 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  %wide.load109 = load <8 x i32>, ptr %i.cl, align 4, !tbaa !15, !alias.scope !292
  %i.cm = or <8 x i32> %i.cj, %wide.load109
  %wide.load110 = load <8 x i32>, ptr %i.ck, align 4, !tbaa !15, !alias.scope !292
  %i.cn = or <8 x i32> %i.cm, %wide.load110
  %i.co = getelementptr i8, ptr %i.ck, i64 4
  %wide.load111 = load <8 x i32>, ptr %i.co, align 4, !tbaa !15, !alias.scope !292
  %i.cp = or <8 x i32> %i.cn, %wide.load111
  %i.cq = getelementptr [4 x i8], ptr %i.ck, i64 %i.aj ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  %wide.load112 = load <8 x i32>, ptr %i.cr, align 4, !tbaa !15, !alias.scope !293
  %i.cs = or <8 x i32> %i.cp, %wide.load112
  %wide.load113 = load <8 x i32>, ptr %i.cq, align 4, !tbaa !15, !alias.scope !293
  %i.ct = or <8 x i32> %i.cs, %wide.load113
  %i.cu = getelementptr i8, ptr %i.cq, i64 4
  %wide.load114 = load <8 x i32>, ptr %i.cu, align 4, !tbaa !15, !alias.scope !293
  %i.cv = or <8 x i32> %i.ct, %wide.load114
  %i.cw = icmp ne <8 x i32> %i.cv, zeroinitializer
  %i.cx = zext <8 x i1> %i.cw to <8 x i32>
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.reass
  store <8 x i32> %i.cx, ptr %i.cy, align 4, !tbaa !15, !alias.scope !294, !noalias !295
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.i, label %_test_dilate.exit.us.us.i.preheader

_test_dilate.exit.us.us.i.preheader:              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv32.i.ph = phi i64 [ %i.cc, %middle.block ], [ %i.p, %.preheader.us.i ]
  br label %_test_dilate.exit.us.us.i

_test_dilate.exit.us.us.i:                        ; preds = %_test_dilate.exit.us.us.i.preheader, %_test_dilate.exit.us.us.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %_test_dilate.exit.us.us.i ], [ %indvars.iv32.i.ph, %_test_dilate.exit.us.us.i.preheader ] ; 2 uses
  %i.da = add nsw i64 %indvars.iv32.i, %i.cd      ; 3 uses
  %i.db = sub nsw i64 %i.da, %i.aj
  %i.dc = getelementptr [4 x i8], ptr %i.a, i64 %i.db ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !15
  %i.df = getelementptr [4 x i8], ptr %i.a, i64 %i.da ; 3 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -4
  %i.dh = getelementptr i8, ptr %i.df, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !15
  %i.dj = getelementptr [4 x i8], ptr %i.df, i64 %i.aj ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15
  %i.dm = load <2 x i32>, ptr %i.dc, align 4, !tbaa !15
  %i.dn = load <2 x i32>, ptr %i.dg, align 4, !tbaa !15
  %i.do = load <2 x i32>, ptr %i.dj, align 4, !tbaa !15
  %i.dp = insertelement <8 x i32> poison, i32 %i.di, i64 4
  %i.dq = insertelement <8 x i32> %i.dp, i32 %i.dl, i64 5
  %i.dr = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> %i.dq, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 12, i32 13, i32 poison, i32 poison>
  %i.dt = shufflevector <2 x i32> %i.dn, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.dv = shufflevector <2 x i32> %i.do, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i32> %i.du, <8 x i32> %i.dv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dx = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.dw)
  %op.rdx858 = or i32 %i.dx, %i.de
  %.not.us.us.i = icmp ne i32 %op.rdx858, 0
  %i.dy = zext i1 %.not.us.us.i to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.da
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !15
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %._crit_edge.split.us.us.i, label %_test_dilate.exit.us.us.i, !llvm.loop !184

._crit_edge.split.us.us.i:                        ; preds = %_test_dilate.exit.us.us.i, %middle.block
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.q
  br i1 %exitcond41.not.i, label %_dilating.exit, label %.preheader.us.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.split.i, %._crit_edge.split.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.split.i ], [ %i.p, %.preheader.lr.ph.split.i ] ; 2 uses
  %i.ea = mul nsw i64 %indvars.iv27.i, %i.aj
  br label %bb.b

._crit_edge.split.i:                              ; preds = %_test_dilate.exit.i
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %i.q
  br i1 %exitcond31.not.i, label %_dilating.exit, label %.preheader.i

bb.b:                                             ; preds = %_test_dilate.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.preheader.i ], [ %indvars.iv.next.i, %_test_dilate.exit.i ] ; 2 uses
  %i.eb = add nsw i64 %indvars.iv.i, %i.ea        ; 10 uses
  %i.ec = sub nsw i64 %i.eb, %i.aj
  %i.ed = getelementptr [4 x i8], ptr %i.a, i64 %i.ec ; 14 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !15
  %i.eg = getelementptr [4 x i8], ptr %i.a, i64 %i.eb ; 19 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = getelementptr i8, ptr %i.eg, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.ek = getelementptr [4 x i8], ptr %i.eg, i64 %i.aj ; 9 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !15
  %i.en = load <2 x i32>, ptr %i.ed, align 4, !tbaa !15
  %i.eo = load <2 x i32>, ptr %i.eh, align 4, !tbaa !15
  %i.ep = load <2 x i32>, ptr %i.ek, align 4, !tbaa !15
  %i.eq = insertelement <8 x i32> poison, i32 %i.ej, i64 4
  %i.er = insertelement <8 x i32> %i.eq, i32 %i.em, i64 5
  %i.es = shufflevector <2 x i32> %i.en, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i32> %i.es, <8 x i32> %i.er, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 12, i32 13, i32 poison, i32 poison>
  %i.eu = shufflevector <2 x i32> %i.eo, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.ew = shufflevector <2 x i32> %i.ep, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ey = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.ex)
  %op.rdx859 = or i32 %i.ey, %i.ef                ; 2 uses
  %.not24.i = icmp eq i32 %op.rdx859, 0
  br i1 %.not24.i, label %bb.c, label %_test_dilate.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ez = sub nsw i64 %i.eb, %i.ak
  %i.fa = getelementptr [4 x i8], ptr %i.a, i64 %i.ez ; 11 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 -4
  %i.fc = load <2 x i32>, ptr %i.fb, align 4, !tbaa !15
  %i.fd = getelementptr i8, ptr %i.fa, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !15
  %i.ff = getelementptr i8, ptr %i.ed, i64 -8
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !15
  %i.fh = getelementptr i8, ptr %i.ed, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !15
  %i.fj = getelementptr i8, ptr %i.eg, i64 -8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !15
  %i.fl = getelementptr i8, ptr %i.eg, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !15
  %i.fn = getelementptr i8, ptr %i.ek, i64 -8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !15
  %i.fp = getelementptr i8, ptr %i.ek, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !15
  %i.fr = getelementptr [4 x i8], ptr %i.eg, i64 %i.ak ; 11 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -4
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !15
  %i.fu = getelementptr i8, ptr %i.fr, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !15
  %i.fw = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.fq, i64 1
  %i.fy = shufflevector <2 x i32> %i.ft, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x i32> %i.fx, <4 x i32> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ga = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fz)
  %i.gb = insertelement <4 x i32> poison, i32 %i.fe, i64 2
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fv, i64 3
  %i.gd = shufflevector <2 x i32> %i.fc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x i32> %i.gd, <4 x i32> %i.gc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gf = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ge)
  %op.rdx868 = or i32 %i.gf, %i.fg
  %op.rdx869 = or i32 %i.fi, %i.fk
  %op.rdx870 = or i32 %i.fm, %i.ga
  %op.rdx871 = or i32 %op.rdx868, %op.rdx869
  %op.rdx872 = or i32 %op.rdx871, %op.rdx870      ; 2 uses
  %i.gg = icmp ne i32 %op.rdx872, 0
  %or.cond3.i.i = or i1 %i.al, %i.gg
  br i1 %or.cond3.i.i, label %_test_dilate.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gh = sub nsw i64 %i.eb, %i.am
  %i.gi = getelementptr [4 x i8], ptr %i.a, i64 %i.gh ; 11 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 -8
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !15
  %i.gl = getelementptr [4 x i8], ptr %i.eg, i64 %i.am ; 9 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 -8
  %i.gn = load <2 x i32>, ptr %i.gj, align 4, !tbaa !15
  %i.go = getelementptr i8, ptr %i.gi, i64 4
  %i.gp = load <2 x i32>, ptr %i.go, align 4, !tbaa !15
  %i.gq = getelementptr i8, ptr %i.fa, i64 -12
  %i.gr = tail call <7 x i32> @llvm.masked.load.v7i32.p0(ptr align 4 %i.gq, <7 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 true, i1 true>, <7 x i32> poison), !tbaa !15
  %i.gs = getelementptr i8, ptr %i.ed, i64 -12
  %i.gt = tail call <7 x i32> @llvm.masked.load.v7i32.p0(ptr align 4 %i.gs, <7 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>, <7 x i32> poison), !tbaa !15
  %i.gu = getelementptr i8, ptr %i.eg, i64 -12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !15
  %i.gw = getelementptr i8, ptr %i.eg, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !15
  %i.gy = getelementptr i8, ptr %i.ek, i64 -12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !15
  %i.ha = insertelement <4 x ptr> poison, ptr %i.ek, i64 0
  %i.hb = insertelement <4 x ptr> %i.ha, ptr %i.fr, i64 1 ; 2 uses
  %i.hc = shufflevector <4 x ptr> %i.hb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hd = getelementptr i8, <4 x ptr> %i.hc, <4 x i64> <i64 12, i64 -12, i64 -8, i64 8>
  %i.he = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.hd, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.hf = getelementptr i8, ptr %i.fr, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !15
  %i.hh = load <4 x i32>, ptr %i.gm, align 4, !tbaa !15
  %i.hi = getelementptr i8, ptr %i.gl, i64 8
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !15
  %i.hk = shufflevector <2 x i32> %i.gp, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = shufflevector <7 x i32> %i.gr, <7 x i32> poison, <16 x i32> <i32 0, i32 1, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = shufflevector <16 x i32> %i.hk, <16 x i32> %i.hl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <7 x i32> %i.gt, <7 x i32> poison, <16 x i32> <i32 0, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ho = shufflevector <16 x i32> %i.hm, <16 x i32> %i.hn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hp = insertelement <16 x i32> %i.ho, i32 %i.gv, i64 8
  %i.hq = insertelement <16 x i32> %i.hp, i32 %i.gx, i64 9
  %i.hr = insertelement <16 x i32> %i.hq, i32 %i.gz, i64 10
  %i.hs = shufflevector <4 x i32> %i.he, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = shufflevector <16 x i32> %i.hr, <16 x i32> %i.hs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 18, i32 19, i32 poison>
  %i.hu = insertelement <16 x i32> %i.ht, i32 %i.hg, i64 15
  %i.hv = insertelement <24 x i32> poison, i32 %i.hj, i64 20
  %i.hw = shufflevector <2 x i32> %i.gn, <2 x i32> poison, <24 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hx = shufflevector <24 x i32> %i.hv, <24 x i32> %i.hw, <24 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 20, i32 25, i32 24, i32 poison>
  %i.hy = insertelement <24 x i32> %i.hx, i32 %i.gk, i64 23
  %i.hz = shufflevector <16 x i32> %i.hu, <16 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = shufflevector <24 x i32> %i.hz, <24 x i32> %i.hy, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 44, i32 45, i32 46, i32 47>
  %i.ib = shufflevector <4 x i32> %i.hh, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ic = shufflevector <24 x i32> %i.ia, <24 x i32> %i.ib, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 20, i32 21, i32 22, i32 23>
  %i.id = tail call i32 @llvm.vector.reduce.or.v24i32(<24 x i32> %i.ic) ; 2 uses
  %i.ie = icmp ne i32 %i.id, 0
  %or.cond5.i.i = or i1 %i.an, %i.ie
  br i1 %or.cond5.i.i, label %_test_dilate.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.if = sub nsw i64 %i.eb, %i.ao
  %i.ig = getelementptr [4 x i8], ptr %i.a, i64 %i.if ; 10 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 -8
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !15
  %i.ij = getelementptr [4 x i8], ptr %i.eg, i64 %i.ao ; 8 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8
  %i.il = load <2 x i32>, ptr %i.ih, align 4, !tbaa !15
  %i.im = getelementptr i8, ptr %i.ig, i64 4
  %i.in = load <2 x i32>, ptr %i.im, align 4, !tbaa !15
  %i.io = getelementptr i8, ptr %i.gi, i64 -12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !15
  %i.iq = getelementptr i8, ptr %i.gi, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !15
  %i.is = insertelement <4 x ptr> poison, ptr %i.fa, i64 0
  %i.it = insertelement <4 x ptr> %i.is, ptr %i.ed, i64 1
  %i.iu = shufflevector <4 x ptr> %i.it, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.iv = getelementptr i8, <4 x ptr> %i.iu, <4 x i64> <i64 -16, i64 16, i64 -16, i64 16>
  %i.iw = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.iv, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.ix = getelementptr i8, ptr %i.eg, i64 -16
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !15
  %i.iz = getelementptr i8, ptr %i.eg, i64 16
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !15
  %i.jb = getelementptr i8, ptr %i.ek, i64 -16
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !15
  %i.jd = getelementptr i8, ptr %i.ek, i64 16
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !15
  %i.jf = insertelement <4 x ptr> poison, ptr %i.fr, i64 0
  %i.jg = insertelement <4 x ptr> %i.jf, ptr %i.gl, i64 1
  %i.jh = shufflevector <4 x ptr> %i.jg, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ji = getelementptr i8, <4 x ptr> %i.jh, <4 x i64> <i64 -16, i64 16, i64 -12, i64 12>
  %i.jj = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.ji, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.jk = load <4 x i32>, ptr %i.ik, align 4, !tbaa !15
  %i.jl = getelementptr i8, ptr %i.ij, i64 8
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !15
  %i.jn = shufflevector <2 x i32> %i.in, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jo = insertelement <16 x i32> %i.jn, i32 %i.ip, i64 2
  %i.jp = insertelement <16 x i32> %i.jo, i32 %i.ir, i64 3
  %i.jq = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jr = shufflevector <16 x i32> %i.jp, <16 x i32> %i.jq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.js = insertelement <16 x i32> %i.jr, i32 %i.iy, i64 8
  %i.jt = insertelement <16 x i32> %i.js, i32 %i.ja, i64 9
  %i.ju = insertelement <16 x i32> %i.jt, i32 %i.jc, i64 10
  %i.jv = insertelement <16 x i32> %i.ju, i32 %i.je, i64 11
  %i.jw = shufflevector <4 x i32> %i.jj, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jx = insertelement <24 x i32> poison, i32 %i.jm, i64 20
  %i.jy = shufflevector <2 x i32> %i.il, <2 x i32> poison, <24 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jz = shufflevector <24 x i32> %i.jx, <24 x i32> %i.jy, <24 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 20, i32 25, i32 24, i32 poison>
  %i.ka = insertelement <24 x i32> %i.jz, i32 %i.ii, i64 23
  %i.kb = shufflevector <16 x i32> %i.jv, <16 x i32> %i.jw, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kc = shufflevector <24 x i32> %i.kb, <24 x i32> %i.ka, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 44, i32 45, i32 46, i32 47>
  %i.kd = shufflevector <4 x i32> %i.jk, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ke = shufflevector <24 x i32> %i.kc, <24 x i32> %i.kd, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 20, i32 21, i32 22, i32 23>
  %i.kf = tail call i32 @llvm.vector.reduce.or.v24i32(<24 x i32> %i.ke) ; 2 uses
  %i.kg = icmp ne i32 %i.kf, 0
  %or.cond7.i.i = or i1 %i.ap, %i.kg
  br i1 %or.cond7.i.i, label %_test_dilate.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.kh = sub nsw i64 %i.eb, %i.aq
  %i.ki = getelementptr [4 x i8], ptr %i.a, i64 %i.kh ; 8 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -8
  %i.kk = load i32, ptr %i.ki, align 4, !tbaa !15
  %i.kl = getelementptr [4 x i8], ptr %i.eg, i64 %i.aq ; 9 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 -8
  %i.kn = load <2 x i32>, ptr %i.kj, align 4, !tbaa !15
  %i.ko = getelementptr i8, ptr %i.ki, i64 4
  %i.kp = load <2 x i32>, ptr %i.ko, align 4, !tbaa !15
  %i.kq = getelementptr i8, ptr %i.ig, i64 -16
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !15
  %i.ks = insertelement <4 x ptr> poison, ptr %i.ig, i64 0
  %i.kt = insertelement <4 x ptr> %i.ks, ptr %i.gi, i64 1
  %i.ku = shufflevector <4 x ptr> %i.kt, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.kv = getelementptr i8, <4 x ptr> %i.ku, <4 x i64> <i64 -12, i64 12, i64 16, i64 -16>
  %i.kw = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.kv, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.kx = getelementptr i8, ptr %i.gi, i64 16
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !15
  %i.kz = getelementptr i8, ptr %i.fa, i64 -20
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !15
  %i.lb = getelementptr i8, ptr %i.fa, i64 20
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !15
  %i.ld = getelementptr i8, ptr %i.ed, i64 -20
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !15
  %i.lf = getelementptr i8, ptr %i.ed, i64 20
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !15
  %i.lh = insertelement <4 x ptr> poison, ptr %i.eg, i64 0
  %i.li = insertelement <4 x ptr> %i.lh, ptr %i.ek, i64 1
  %i.lj = shufflevector <4 x ptr> %i.li, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 3 uses
  %i.lk = getelementptr i8, <4 x ptr> %i.lj, <4 x i64> <i64 -20, i64 20, i64 -20, i64 20>
  %i.ll = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.lk, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.lm = getelementptr i8, ptr %i.fr, i64 -20
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !15
  %i.lo = getelementptr i8, ptr %i.fr, i64 20
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !15
  %i.lq = getelementptr i8, ptr %i.gl, i64 -16
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !15
  %i.ls = insertelement <4 x ptr> poison, ptr %i.gl, i64 0
  %i.lt = insertelement <4 x ptr> %i.ls, ptr %i.ij, i64 1 ; 2 uses
  %i.lu = shufflevector <4 x ptr> %i.lt, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.lv = getelementptr i8, <4 x ptr> %i.lu, <4 x i64> <i64 16, i64 -16, i64 -12, i64 12>
  %i.lw = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.lv, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.lx = getelementptr i8, ptr %i.ij, i64 16
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !15
  %i.lz = load <4 x i32>, ptr %i.km, align 4, !tbaa !15
  %i.ma = getelementptr i8, ptr %i.kl, i64 8
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !15
  %i.mc = shufflevector <2 x i32> %i.kp, <2 x i32> poison, <24 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.md = insertelement <24 x i32> %i.mc, i32 %i.kr, i64 2
  %i.me = shufflevector <4 x i32> %i.kw, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mf = shufflevector <24 x i32> %i.md, <24 x i32> %i.me, <24 x i32> <i32 0, i32 1, i32 2, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mg = insertelement <24 x i32> %i.mf, i32 %i.ky, i64 7
  %i.mh = insertelement <24 x i32> %i.mg, i32 %i.la, i64 8
  %i.mi = insertelement <24 x i32> %i.mh, i32 %i.lc, i64 9
  %i.mj = insertelement <24 x i32> %i.mi, i32 %i.le, i64 10
  %i.mk = insertelement <24 x i32> %i.mj, i32 %i.lg, i64 11
  %i.ml = shufflevector <4 x i32> %i.ll, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mm = shufflevector <24 x i32> %i.mk, <24 x i32> %i.ml, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mn = insertelement <24 x i32> %i.mm, i32 %i.ln, i64 16
  %i.mo = insertelement <24 x i32> %i.mn, i32 %i.lp, i64 17
  %i.mp = insertelement <24 x i32> %i.mo, i32 %i.lr, i64 18
  %i.mq = shufflevector <4 x i32> %i.lw, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mr = shufflevector <24 x i32> %i.mp, <24 x i32> %i.mq, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 24, i32 25, i32 26, i32 27, i32 poison>
  %i.ms = insertelement <24 x i32> %i.mr, i32 %i.ly, i64 23
  %i.mt = insertelement <32 x i32> poison, i32 %i.mb, i64 28
  %i.mu = shufflevector <2 x i32> %i.kn, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mv = shufflevector <32 x i32> %i.mt, <32 x i32> %i.mu, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 33, i32 32, i32 poison>
  %i.mw = insertelement <32 x i32> %i.mv, i32 %i.kk, i64 31
  %i.mx = shufflevector <24 x i32> %i.ms, <24 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.my = shufflevector <32 x i32> %i.mx, <32 x i32> %i.mw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 60, i32 61, i32 62, i32 63>
  %i.mz = shufflevector <4 x i32> %i.lz, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.na = shufflevector <32 x i32> %i.my, <32 x i32> %i.mz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 30, i32 31>
  %i.nb = tail call i32 @llvm.vector.reduce.or.v32i32(<32 x i32> %i.na) ; 2 uses
  %i.nc = icmp ne i32 %i.nb, 0
  %or.cond9.i.i = or i1 %i.ar, %i.nc
  br i1 %or.cond9.i.i, label %_test_dilate.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.nd = sub nsw i64 %i.eb, %i.as
  %i.ne = getelementptr [4 x i8], ptr %i.a, i64 %i.nd ; 7 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 -8
  %i.ng = load i32, ptr %i.ne, align 4, !tbaa !15
  %i.nh = getelementptr i8, ptr %i.ne, i64 4
  %i.ni = getelementptr i8, ptr %i.ki, i64 -16
  %i.nj = load <2 x i32>, ptr %i.nh, align 4, !tbaa !15
  %i.nk = load <2 x i32>, ptr %i.ni, align 4, !tbaa !15
  %i.nl = getelementptr i8, ptr %i.ki, i64 12
  %i.nm = getelementptr i8, ptr %i.ig, i64 -20
  %i.nn = getelementptr i8, ptr %i.ig, i64 20
  %i.no = insertelement <4 x ptr> poison, ptr %i.gi, i64 0
  %i.np = insertelement <4 x ptr> %i.no, ptr %i.fa, i64 1
  %i.nq = shufflevector <4 x ptr> %i.np, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.nr = getelementptr i8, <4 x ptr> %i.nq, <4 x i64> <i64 -20, i64 20, i64 -24, i64 24>
  %i.ns = getelementptr i8, ptr %i.ed, i64 -24
  %i.nt = getelementptr i8, ptr %i.ed, i64 24
  %i.nu = getelementptr i8, ptr %i.eg, i64 -24
  %i.nv = getelementptr i8, ptr %i.eg, i64 24
  %i.nw = shufflevector <4 x ptr> %i.hb, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.nx = getelementptr i8, <4 x ptr> %i.nw, <4 x i64> <i64 -24, i64 24, i64 -24, i64 24>
  %i.ny = getelementptr i8, ptr %i.gl, i64 -20
  %i.nz = getelementptr i8, ptr %i.gl, i64 20
  %i.oa = getelementptr i8, ptr %i.ij, i64 -20
  %i.ob = insertelement <4 x ptr> poison, ptr %i.ij, i64 0
  %i.oc = insertelement <4 x ptr> %i.ob, ptr %i.kl, i64 1
  %i.od = shufflevector <4 x ptr> %i.oc, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.oe = getelementptr i8, <4 x ptr> %i.od, <4 x i64> <i64 20, i64 -16, i64 -12, i64 12>
  %i.of = getelementptr i8, ptr %i.kl, i64 16
  %i.og = getelementptr [4 x i8], ptr %i.eg, i64 %i.as ; 6 uses
  %i.oh = getelementptr i8, ptr %i.og, i64 -8
  %i.oi = load <2 x i32>, ptr %i.nf, align 4, !tbaa !15
  %i.oj = load <2 x i32>, ptr %i.nl, align 4, !tbaa !15
  %i.ok = load i32, ptr %i.nm, align 4, !tbaa !15
  %i.ol = load i32, ptr %i.nn, align 4, !tbaa !15
  %i.om = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.nr, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.on = load i32, ptr %i.ns, align 4, !tbaa !15
  %i.oo = load i32, ptr %i.nt, align 4, !tbaa !15
  %i.op = load i32, ptr %i.nu, align 4, !tbaa !15
  %i.oq = load i32, ptr %i.nv, align 4, !tbaa !15
  %i.or = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.nx, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.os = load i32, ptr %i.ny, align 4, !tbaa !15
  %i.ot = load i32, ptr %i.nz, align 4, !tbaa !15
  %i.ou = load i32, ptr %i.oa, align 4, !tbaa !15
  %i.ov = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.oe, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.ow = load i32, ptr %i.of, align 4, !tbaa !15
  %i.ox = load <4 x i32>, ptr %i.oh, align 4, !tbaa !15
  %i.oy = getelementptr i8, ptr %i.og, i64 8
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !15
  %i.pa = shufflevector <2 x i32> %i.oj, <2 x i32> poison, <24 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pb = insertelement <24 x i32> %i.pa, i32 %i.ok, i64 2
  %i.pc = insertelement <24 x i32> %i.pb, i32 %i.ol, i64 3
  %i.pd = shufflevector <4 x i32> %i.om, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pe = shufflevector <24 x i32> %i.pc, <24 x i32> %i.pd, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pf = insertelement <24 x i32> %i.pe, i32 %i.on, i64 8
  %i.pg = insertelement <24 x i32> %i.pf, i32 %i.oo, i64 9
  %i.ph = insertelement <24 x i32> %i.pg, i32 %i.op, i64 10
  %i.pi = insertelement <24 x i32> %i.ph, i32 %i.oq, i64 11
  %i.pj = shufflevector <4 x i32> %i.or, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pk = shufflevector <24 x i32> %i.pi, <24 x i32> %i.pj, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pl = insertelement <24 x i32> %i.pk, i32 %i.os, i64 16
  %i.pm = insertelement <24 x i32> %i.pl, i32 %i.ot, i64 17
  %i.pn = insertelement <24 x i32> %i.pm, i32 %i.ou, i64 18
  %i.po = shufflevector <4 x i32> %i.ov, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pp = shufflevector <24 x i32> %i.pn, <24 x i32> %i.po, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 24, i32 25, i32 26, i32 27, i32 poison>
  %i.pq = insertelement <24 x i32> %i.pp, i32 %i.ow, i64 23
  %i.pr = insertelement <32 x i32> poison, i32 %i.oz, i64 28
  %i.ps = shufflevector <2 x i32> %i.oi, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pt = shufflevector <32 x i32> %i.pr, <32 x i32> %i.ps, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 33, i32 32, i32 poison>
  %i.pu = insertelement <32 x i32> %i.pt, i32 %i.ng, i64 31
  %i.pv = shufflevector <24 x i32> %i.pq, <24 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pw = shufflevector <32 x i32> %i.pv, <32 x i32> %i.pu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 60, i32 61, i32 62, i32 63>
  %i.px = shufflevector <4 x i32> %i.ox, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.py = shufflevector <32 x i32> %i.pw, <32 x i32> %i.px, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 30, i32 31>
  %i.pz = tail call i32 @llvm.vector.reduce.or.v32i32(<32 x i32> %i.py)
  %i.qa = shufflevector <2 x i32> %i.nj, <2 x i32> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qb = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.qa)
  %op.rdx877 = or i32 %i.qb, %i.pz                ; 2 uses
  %i.qc = icmp ne i32 %op.rdx877, 0
  %or.cond11.i.i = or i1 %i.at, %i.qc
  br i1 %or.cond11.i.i, label %_test_dilate.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.qd = sub nsw i64 %i.eb, %i.au
  %i.qe = getelementptr [4 x i8], ptr %i.a, i64 %i.qd ; 9 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 -12
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !15
  %i.qh = getelementptr i8, ptr %i.qe, i64 -8
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !15
  %i.qj = getelementptr i8, ptr %i.qe, i64 -4
  %i.qk = load <2 x i32>, ptr %i.qj, align 4, !tbaa !15
  %i.ql = getelementptr i8, ptr %i.qe, i64 4
  %i.qm = getelementptr i8, ptr %i.qe, i64 12
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !15
  %i.qo = getelementptr i8, ptr %i.ne, i64 -16
  %i.qp = getelementptr i8, ptr %i.ne, i64 12
  %i.qq = getelementptr i8, ptr %i.ki, i64 -24
  %i.qr = getelementptr i8, ptr %i.ki, i64 20
  %i.qs = getelementptr i8, ptr %i.ig, i64 -24
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !15
  %i.qu = getelementptr i8, ptr %i.ig, i64 24
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !15
  %i.qw = getelementptr i8, ptr %i.gi, i64 -28
  %i.qx = getelementptr i8, ptr %i.gi, i64 24
  %i.qy = load <2 x i32>, ptr %i.ql, align 4, !tbaa !15
  %i.qz = load <2 x i32>, ptr %i.qo, align 4, !tbaa !15
  %i.ra = load <2 x i32>, ptr %i.qp, align 4, !tbaa !15
  %i.rb = load <2 x i32>, ptr %i.qq, align 4, !tbaa !15
  %i.rc = load <2 x i32>, ptr %i.qr, align 4, !tbaa !15
  %i.rd = load <2 x i32>, ptr %i.qw, align 4, !tbaa !15
  %i.re = load <2 x i32>, ptr %i.qx, align 4, !tbaa !15
  %i.rf = getelementptr i8, ptr %i.fa, i64 -28
  %i.rg = getelementptr i8, ptr %i.fa, i64 28
  %i.rh = getelementptr i8, ptr %i.ed, i64 -28
  %i.ri = getelementptr i8, ptr %i.ed, i64 28
  %i.rj = getelementptr i8, <4 x ptr> %i.lj, <4 x i64> <i64 -28, i64 28, i64 -28, i64 28>
  %i.rk = getelementptr i8, ptr %i.fr, i64 -28
  %i.rl = getelementptr i8, ptr %i.fr, i64 28
  %i.rm = getelementptr i8, ptr %i.gl, i64 -28
  %i.rn = shufflevector <4 x ptr> %i.lt, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ro = getelementptr i8, <4 x ptr> %i.rn, <4 x i64> <i64 -24, i64 24, i64 28, i64 -24>
  %i.rp = getelementptr i8, ptr %i.ij, i64 24
  %i.rq = getelementptr i8, ptr %i.kl, i64 -24
  %i.rr = getelementptr i8, ptr %i.kl, i64 20
  %i.rs = insertelement <4 x ptr> poison, ptr %i.kl, i64 0
  %i.rt = insertelement <4 x ptr> %i.rs, ptr %i.og, i64 1
  %i.ru = shufflevector <4 x ptr> %i.rt, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.rv = getelementptr i8, <4 x ptr> %i.ru, <4 x i64> <i64 24, i64 -16, i64 -12, i64 12>
  %i.rw = getelementptr i8, ptr %i.og, i64 16
  %i.rx = getelementptr [4 x i8], ptr %i.eg, i64 %i.au ; 7 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 -12
  %i.rz = getelementptr i8, ptr %i.rx, i64 4
  %i.sa = load i32, ptr %i.rf, align 4, !tbaa !15
  %i.sb = load i32, ptr %i.rg, align 4, !tbaa !15
  %i.sc = load i32, ptr %i.rh, align 4, !tbaa !15
  %i.sd = load i32, ptr %i.ri, align 4, !tbaa !15
  %i.se = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.rj, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.sf = load i32, ptr %i.rk, align 4, !tbaa !15
  %i.sg = load i32, ptr %i.rl, align 4, !tbaa !15
  %i.sh = load i32, ptr %i.rm, align 4, !tbaa !15
  %i.si = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.ro, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.sj = load i32, ptr %i.rp, align 4, !tbaa !15
  %i.sk = load <2 x i32>, ptr %i.rq, align 4, !tbaa !15
  %i.sl = load i32, ptr %i.rr, align 4, !tbaa !15
  %i.sm = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.rv, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.sn = load i32, ptr %i.rw, align 4, !tbaa !15
  %i.so = load <4 x i32>, ptr %i.ry, align 4, !tbaa !15
  %i.sp = load <2 x i32>, ptr %i.rz, align 4, !tbaa !15
  %i.sq = getelementptr i8, ptr %i.rx, i64 12
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !15
  %i.ss = insertelement <24 x i32> poison, i32 %i.sa, i64 0
  %i.st = insertelement <24 x i32> %i.ss, i32 %i.sb, i64 1
  %i.su = insertelement <24 x i32> %i.st, i32 %i.sc, i64 2
  %i.sv = insertelement <24 x i32> %i.su, i32 %i.sd, i64 3
  %i.sw = shufflevector <4 x i32> %i.se, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sx = shufflevector <24 x i32> %i.sv, <24 x i32> %i.sw, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sy = insertelement <24 x i32> %i.sx, i32 %i.sf, i64 8
  %i.sz = insertelement <24 x i32> %i.sy, i32 %i.sg, i64 9
  %i.ta = insertelement <24 x i32> %i.sz, i32 %i.sh, i64 10
  %i.tb = shufflevector <4 x i32> %i.si, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tc = shufflevector <24 x i32> %i.ta, <24 x i32> %i.tb, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.td = insertelement <24 x i32> %i.tc, i32 %i.sj, i64 15
  %i.te = shufflevector <2 x i32> %i.sk, <2 x i32> poison, <24 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tf = shufflevector <24 x i32> %i.td, <24 x i32> %i.te, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tg = insertelement <24 x i32> %i.tf, i32 %i.sl, i64 18
  %i.th = shufflevector <4 x i32> %i.sm, <4 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ti = shufflevector <24 x i32> %i.tg, <24 x i32> %i.th, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 24, i32 25, i32 26, i32 27, i32 poison>
  %i.tj = insertelement <24 x i32> %i.ti, i32 %i.sn, i64 23
  %i.tk = insertelement <32 x i32> poison, i32 %i.sr, i64 30
  %i.tl = insertelement <32 x i32> %i.tk, i32 %i.qi, i64 31
  %i.tm = shufflevector <24 x i32> %i.tj, <24 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tn = shufflevector <32 x i32> %i.tm, <32 x i32> %i.tl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 62, i32 63>
  %i.to = shufflevector <4 x i32> %i.so, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tp = shufflevector <32 x i32> %i.tn, <32 x i32> %i.to, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 30, i32 31>
  %i.tq = shufflevector <2 x i32> %i.sp, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tr = shufflevector <32 x i32> %i.tp, <32 x i32> %i.tq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 30, i32 31>
  %i.ts = tail call i32 @llvm.vector.reduce.or.v32i32(<32 x i32> %i.tr)
  %i.tt = insertelement <16 x i32> poison, i32 %i.qt, i64 8
  %i.tu = insertelement <16 x i32> %i.tt, i32 %i.qv, i64 9
  %i.tv = shufflevector <2 x i32> %i.qz, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tw = shufflevector <16 x i32> %i.tv, <16 x i32> %i.tu, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tx = shufflevector <2 x i32> %i.ra, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ty = shufflevector <16 x i32> %i.tw, <16 x i32> %i.tx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tz = shufflevector <2 x i32> %i.rb, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ua = shufflevector <16 x i32> %i.ty, <16 x i32> %i.tz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ub = shufflevector <2 x i32> %i.rc, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uc = shufflevector <16 x i32> %i.ua, <16 x i32> %i.ub, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ud = shufflevector <2 x i32> %i.rd, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ue = shufflevector <16 x i32> %i.uc, <16 x i32> %i.ud, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uf = shufflevector <2 x i32> %i.re, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ug = shufflevector <16 x i32> %i.ue, <16 x i32> %i.uf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison> ; 2 uses
  %i.uh = shufflevector <2 x i32> %i.qy, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ui = shufflevector <16 x i32> %i.ug, <16 x i32> %i.uh, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.uj = insertelement <4 x i32> poison, i32 %i.qn, i64 0
  %i.uk = insertelement <4 x i32> %i.uj, i32 %i.qg, i64 1
  %i.ul = shufflevector <2 x i32> %i.qk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.um = shufflevector <4 x i32> %i.uk, <4 x i32> %i.ul, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.un = or <16 x i32> %i.ug, %i.um
  %i.uo = shufflevector <16 x i32> %i.un, <16 x i32> %i.ui, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.up = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.uo)
  %op.rdx908 = or i32 %i.up, %i.ts                ; 2 uses
  %i.uq = icmp ne i32 %op.rdx908, 0
  %or.cond13.i.i = or i1 %i.av, %i.uq
  br i1 %or.cond13.i.i, label %_test_dilate.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ur = sub nsw i64 %i.eb, %i.aw
  %i.us = getelementptr [4 x i8], ptr %i.a, i64 %i.ur ; 3 uses
  %i.ut = getelementptr i8, ptr %i.us, i64 -16
  %2 = load i32, ptr %i.us, align 4, !tbaa !15
  %3 = getelementptr i8, ptr %i.us, i64 4
  %4 = load <4 x i32>, ptr %3, align 4, !tbaa !15
  %i.uu = getelementptr i8, ptr %i.qe, i64 -24
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !15
  %i.uw = getelementptr i8, ptr %i.qe, i64 -20
  %i.ux = getelementptr i8, ptr %i.qe, i64 16
  %5 = insertelement <4 x ptr> poison, ptr %i.qe, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %i.ne, i64 1
  %7 = shufflevector <4 x ptr> %6, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %8 = getelementptr i8, <4 x ptr> %7, <4 x i64> <i64 24, i64 -24, i64 -20, i64 20>
  %i.uy = getelementptr i8, ptr %i.ne, i64 24
  %i.uz = getelementptr i8, ptr %i.ki, i64 -28
  %i.va = getelementptr i8, ptr %i.ig, i64 -32
  %9 = getelementptr i8, <4 x ptr> %i.ku, <4 x i64> <i64 -28, i64 28, i64 32, i64 -32>
  %i.vb = getelementptr i8, ptr %i.gi, i64 32
  %10 = getelementptr i8, ptr %i.fa, i64 -32
  %i.vc = getelementptr i8, ptr %i.fa, i64 32
  %11 = getelementptr i8, ptr %i.ed, i64 -32
  %i.vd = getelementptr i8, ptr %i.ed, i64 32
  %12 = getelementptr i8, <4 x ptr> %i.lj, <4 x i64> <i64 -32, i64 32, i64 -32, i64 32>
  %i.ve = getelementptr i8, ptr %i.fr, i64 -32
  %i.vf = getelementptr i8, ptr %i.fr, i64 32
  %i.vg = getelementptr i8, ptr %i.gl, i64 -32
  %i.vh = getelementptr i8, <4 x ptr> %i.lu, <4 x i64> <i64 32, i64 -32, i64 -28, i64 28>
  %i.vi = getelementptr i8, ptr %i.ij, i64 32
  %i.vj = getelementptr i8, ptr %i.kl, i64 -28
  %i.vk = getelementptr i8, ptr %i.kl, i64 28
  %i.vl = getelementptr i8, ptr %i.og, i64 -24
  %13 = insertelement <4 x ptr> poison, ptr %i.og, i64 0
  %14 = insertelement <4 x ptr> %13, ptr %i.rx, i64 1
  %15 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %16 = getelementptr i8, <4 x ptr> %15, <4 x i64> <i64 -20, i64 20, i64 24, i64 -24>
  %17 = getelementptr i8, ptr %i.rx, i64 -20
  %18 = getelementptr [4 x i8], ptr %i.eg, i64 %i.aw ; 3 uses
  %i.vm = getelementptr i8, ptr %18, i64 -12
  %i.vn = getelementptr i8, ptr %18, i64 4
  %19 = load <4 x i32>, ptr %i.ut, align 4, !tbaa !15
  %20 = load <2 x i32>, ptr %i.uw, align 4, !tbaa !15
  %21 = load <2 x i32>, ptr %i.ux, align 4, !tbaa !15
  %22 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %8, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.vo = load i32, ptr %i.uy, align 4, !tbaa !15
  %i.vp = load i32, ptr %i.uz, align 4, !tbaa !15
  %i.vq = load i32, ptr %i.va, align 4, !tbaa !15
  %i.vr = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %9, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.vs = load i32, ptr %i.vb, align 4, !tbaa !15
  %i.vt = load i32, ptr %10, align 4, !tbaa !15
  %23 = load i32, ptr %i.vc, align 4, !tbaa !15
  %i.vu = load i32, ptr %11, align 4, !tbaa !15
  %24 = load i32, ptr %i.vd, align 4, !tbaa !15
  %i.vv = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %12, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.vw = load i32, ptr %i.ve, align 4, !tbaa !15
  %i.vx = load i32, ptr %i.vf, align 4, !tbaa !15
  %25 = load i32, ptr %i.vg, align 4, !tbaa !15
  %26 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.vh, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %27 = load i32, ptr %i.vi, align 4, !tbaa !15
  %i.vy = load i32, ptr %i.vj, align 4, !tbaa !15
  %28 = load i32, ptr %i.vk, align 4, !tbaa !15
  %i.vz = load i32, ptr %i.vl, align 4, !tbaa !15
  %29 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %16, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !15
  %i.wa = load i32, ptr %17, align 4, !tbaa !15
  %i.wb = getelementptr i8, ptr %i.rx, i64 -16
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !15
  %30 = getelementptr i8, ptr %i.rx, i64 16
  %31 = load <2 x i32>, ptr %30, align 4, !tbaa !15
  %32 = getelementptr i8, ptr %18, i64 -16
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = load <4 x i32>, ptr %i.vm, align 4, !tbaa !15
  %35 = load <4 x i32>, ptr %i.vn, align 4, !tbaa !15
  %36 = shufflevector <2 x i32> %20, <2 x i32> %21, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %37 = shufflevector <4 x i32> %22, <4 x i32> poison, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %38 = shufflevector <40 x i32> %36, <40 x i32> %37, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 40, i32 41, i32 42, i32 43, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %39 = insertelement <40 x i32> %38, i32 %i.vo, i64 8
  %40 = insertelement <40 x i32> %39, i32 %i.vp, i64 9
  %41 = insertelement <40 x i32> %40, i32 %i.vq, i64 10
  %42 = shufflevector <4 x i32> %i.vr, <4 x i32> poison, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %43 = shufflevector <40 x i32> %41, <40 x i32> %42, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 40, i32 41, i32 42, i32 43, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = insertelement <40 x i32> %43, i32 %i.vs, i64 15
  %45 = insertelement <40 x i32> %44, i32 %i.vt, i64 16
  %46 = insertelement <40 x i32> %45, i32 %23, i64 17
  %47 = insertelement <40 x i32> %46, i32 %i.vu, i64 18
  %48 = insertelement <40 x i32> %47, i32 %24, i64 19
  %49 = shufflevector <4 x i32> %i.vv, <4 x i32> poison, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <40 x i32> %48, <40 x i32> %49, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 40, i32 41, i32 42, i32 43, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %51 = insertelement <40 x i32> %50, i32 %i.vw, i64 24
  %52 = insertelement <40 x i32> %51, i32 %i.vx, i64 25
  %53 = insertelement <40 x i32> %52, i32 %25, i64 26
  %54 = shufflevector <4 x i32> %26, <4 x i32> poison, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %55 = shufflevector <40 x i32> %53, <40 x i32> %54, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 40, i32 41, i32 42, i32 43, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %56 = insertelement <40 x i32> %55, i32 %27, i64 31
  %57 = insertelement <40 x i32> %56, i32 %i.vy, i64 32
  %58 = insertelement <40 x i32> %57, i32 %28, i64 33
  %59 = insertelement <40 x i32> %58, i32 %i.vz, i64 34
  %60 = shufflevector <4 x i32> %29, <4 x i32> poison, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %61 = shufflevector <40 x i32> %59, <40 x i32> %60, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 40, i32 41, i32 42, i32 43, i32 poison>
  %62 = insertelement <40 x i32> %61, i32 %i.wa, i64 39
  %i.wd = insertelement <4 x i32> poison, i32 %i.wc, i64 0
  %i.we = shufflevector <2 x i32> %31, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wf = shufflevector <4 x i32> %i.wd, <4 x i32> %i.we, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.wg = insertelement <4 x i32> %i.wf, i32 %33, i64 3
  %63 = shufflevector <40 x i32> %62, <40 x i32> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %64 = shufflevector <4 x i32> %i.wg, <4 x i32> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %65 = shufflevector <56 x i32> %63, <56 x i32> %64, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 56, i32 57, i32 58, i32 59, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %66 = shufflevector <4 x i32> %34, <4 x i32> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %67 = shufflevector <56 x i32> %65, <56 x i32> %66, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 56, i32 57, i32 58, i32 59, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %68 = shufflevector <4 x i32> %35, <4 x i32> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %69 = shufflevector <56 x i32> %67, <56 x i32> %68, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 poison, i32 poison, i32 poison, i32 poison>
  %70 = shufflevector <4 x i32> %19, <4 x i32> poison, <56 x i32> <i32 1, i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %71 = shufflevector <56 x i32> %69, <56 x i32> %70, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59>
  %i.wh = tail call i32 @llvm.vector.reduce.or.v56i32(<56 x i32> %71)
  %72 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %4)
  %op.rdx884 = or i32 %72, %2
  %op.rdx885 = or i32 %i.uv, %i.wh
  %op.rdx886 = or i32 %op.rdx884, %op.rdx885
  br label %_test_dilate.exit.i

_test_dilate.exit.i:                              ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.6.i.i = phi i32 [ %op.rdx859, %bb.b ], [ %op.rdx872, %bb.c ], [ %i.id, %bb.d ], [ %i.kf, %bb.e ], [ %i.nb, %bb.f ], [ %op.rdx877, %bb.g ], [ %op.rdx886, %bb.i ], [ %op.rdx908, %bb.h ]
  %.not.i32 = icmp ne i32 %.6.i.i, 0
  %i.wi = zext i1 %.not.i32 to i32
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.eb
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !15
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count35.i
  br i1 %exitcond.not.i33, label %._crit_edge.split.i, label %bb.b

_dilating.exit:                                   ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %_intimage_borderfill.exit, %.preheader.lr.ph.i
  %i.wk = icmp sgt i32 %1, 3
  br i1 %i.wk, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_dilating.exit
  br i1 %.not.i, label %._crit_edge.i38, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check117 = icmp ult i32 %i.l, 8
  %i.wl = shl nsw i64 %i.k, 2
  %diff.check = icmp ugt i64 %i.wl, -128
  %or.cond = select i1 %min.iters.check117, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i35.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i32 %i.l, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check
  %n.vec121 = and i64 %i.m, -32                   ; 4 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph120, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next124, %vector.body122 ] ; 2 uses
  %i.wm = getelementptr [4 x i8], ptr %i.af, i64 %index123 ; 5 uses
  %i.wn = getelementptr [4 x i8], ptr %i.wm, i64 %i.k ; 4 uses
  %i.wo = getelementptr i8, ptr %i.wn, i64 32
  %i.wp = getelementptr i8, ptr %i.wn, i64 64
  %i.wq = getelementptr i8, ptr %i.wn, i64 96
  store <8 x i32> splat (i32 1), ptr %i.wn, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.wo, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.wp, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.wq, align 4, !tbaa !15
  %i.wr = getelementptr i8, ptr %i.wm, i64 32
  %i.ws = getelementptr i8, ptr %i.wm, i64 64
  %i.wt = getelementptr i8, ptr %i.wm, i64 96
  store <8 x i32> splat (i32 1), ptr %i.wm, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.wr, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.ws, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.wt, align 4, !tbaa !15
  %index.next124 = add nuw i64 %index123, 32      ; 2 uses
  %i.wu = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.wu, label %middle.block125, label %vector.body122, !llvm.loop !185

middle.block125:                                  ; preds = %vector.body122
  %cmp.n126 = icmp eq i64 %n.vec121, %i.m
  br i1 %cmp.n126, label %._crit_edge.i38, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block125
  %i.wv = and i32 %i.l, 24
  %min.epilog.iters.check = icmp eq i32 %i.wv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i35.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec121, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %i.m, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 2 uses
  %i.ww = getelementptr [4 x i8], ptr %i.af, i64 %index128 ; 2 uses
  %i.wx = getelementptr [4 x i8], ptr %i.ww, i64 %i.k
  store <8 x i32> splat (i32 1), ptr %i.wx, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.ww, align 4, !tbaa !15
  %index.next129 = add nuw i64 %index128, 8       ; 2 uses
  %i.wy = icmp eq i64 %index.next129, %n.vec127
  br i1 %i.wy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !186

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n130 = icmp eq i64 %n.vec127, %i.m
  br i1 %cmp.n130, label %._crit_edge.i38, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03334.i36.ph = phi i64 [ 0, %iter.check ], [ %n.vec121, %vec.epilog.iter.check ], [ %n.vec127, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.m, 7
  %i.wz = and i32 %i.l, 7
  %lcmp.mod.not = icmp eq i32 %i.wz, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader, %.lr.ph.i35.prol
  %.03334.i36.prol = phi i64 [ %i.xc, %.lr.ph.i35.prol ], [ %.03334.i36.ph, %.lr.ph.i35.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i35.prol ], [ 0, %.lr.ph.i35.preheader ]
  %i.xa = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36.prol ; 2 uses
  %i.xb = getelementptr [4 x i8], ptr %i.xa, i64 %i.k
  store i32 1, ptr %i.xb, align 4, !tbaa !15
  store i32 1, ptr %i.xa, align 4, !tbaa !15
  %i.xc = add nuw i64 %.03334.i36.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol, !llvm.loop !187

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader
  %.03334.i36.unr = phi i64 [ %.03334.i36.ph, %.lr.ph.i35.preheader ], [ %i.xc, %.lr.ph.i35.prol ]
  %i.xd = sub nsw i64 %.03334.i36.ph, %i.m
  %i.xe = icmp ugt i64 %i.xd, -8
  br i1 %i.xe, label %._crit_edge.i38, label %.lr.ph.i35

._crit_edge.i38:                                  ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block125, %vec.epilog.middle.block, %bb.j
  br i1 %i.r, label %.lr.ph41.i39, label %_intimage_borderfill.exit46

.lr.ph41.i39:                                     ; preds = %._crit_edge.i38
  %i.xf = sext i32 %i.c to i64                    ; 3 uses
  %i.xg = sub nsw i32 %i.c, %i.g
  %i.xh = sext i32 %i.xg to i64                   ; 11 uses
  %.not43.i40 = icmp eq i32 %i.g, 0
  br i1 %.not43.i40, label %_intimage_borderfill.exit46, label %.lr.ph37.i41.preheader

.lr.ph37.i41.preheader:                           ; preds = %.lr.ph41.i39
  %.neg = xor i64 %i.xf, -1
  %.neg840 = mul nsw i64 %.neg, %i.p
  %.neg841 = shl i64 %.neg840, 2
  %i.xi = shl nsw i64 %i.p, 2
  %i.xj = add nsw i64 %i.xi, 4
  %i.xk = mul i64 %i.xj, %i.xf
  %min.iters.check135 = icmp ult i32 %i.g, 8
  %i.xl = add i64 %.neg841, %i.xk
  %diff.check133 = icmp ugt i64 %i.xl, -128
  %or.cond842 = select i1 %min.iters.check135, i1 true, i1 %diff.check133
  %min.iters.check137 = icmp ult i32 %i.g, 32
  %n.vec139 = and i64 %i.p, -32                   ; 4 uses
  %cmp.n144 = icmp eq i64 %n.vec139, %i.p
  %i.xm = and i32 %i.g, 24
  %min.epilog.iters.check149 = icmp eq i32 %i.xm, 0
  %n.vec151 = and i64 %i.p, -8                    ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec151, %i.p
  %xtraiter911 = and i64 %i.p, 7
  %i.xn = and i32 %i.g, 7
  %lcmp.mod912.not = icmp eq i32 %i.xn, 0
  br label %iter.check146

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %.03334.i36 = phi i64 [ %i.yl, %.lr.ph.i35 ], [ %.03334.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 9 uses
  %i.xo = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36 ; 2 uses
  %i.xp = getelementptr [4 x i8], ptr %i.xo, i64 %i.k
  store i32 1, ptr %i.xp, align 4, !tbaa !15
  store i32 1, ptr %i.xo, align 4, !tbaa !15
  %i.xq = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.xr = getelementptr i8, ptr %i.xq, i64 4      ; 2 uses
  %i.xs = getelementptr [4 x i8], ptr %i.xr, i64 %i.k
  store i32 1, ptr %i.xs, align 4, !tbaa !15
  store i32 1, ptr %i.xr, align 4, !tbaa !15
  %i.xt = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.xu = getelementptr i8, ptr %i.xt, i64 8      ; 2 uses
  %i.xv = getelementptr [4 x i8], ptr %i.xu, i64 %i.k
  store i32 1, ptr %i.xv, align 4, !tbaa !15
  store i32 1, ptr %i.xu, align 4, !tbaa !15
  %i.xw = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.xx = getelementptr i8, ptr %i.xw, i64 12     ; 2 uses
  %i.xy = getelementptr [4 x i8], ptr %i.xx, i64 %i.k
  store i32 1, ptr %i.xy, align 4, !tbaa !15
  store i32 1, ptr %i.xx, align 4, !tbaa !15
  %i.xz = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.ya = getelementptr i8, ptr %i.xz, i64 16     ; 2 uses
  %i.yb = getelementptr [4 x i8], ptr %i.ya, i64 %i.k
  store i32 1, ptr %i.yb, align 4, !tbaa !15
  store i32 1, ptr %i.ya, align 4, !tbaa !15
  %i.yc = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.yd = getelementptr i8, ptr %i.yc, i64 20     ; 2 uses
  %i.ye = getelementptr [4 x i8], ptr %i.yd, i64 %i.k
  store i32 1, ptr %i.ye, align 4, !tbaa !15
  store i32 1, ptr %i.yd, align 4, !tbaa !15
  %i.yf = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.yg = getelementptr i8, ptr %i.yf, i64 24     ; 2 uses
  %i.yh = getelementptr [4 x i8], ptr %i.yg, i64 %i.k
  store i32 1, ptr %i.yh, align 4, !tbaa !15
  store i32 1, ptr %i.yg, align 4, !tbaa !15
  %i.yi = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.yj = getelementptr i8, ptr %i.yi, i64 28     ; 2 uses
  %i.yk = getelementptr [4 x i8], ptr %i.yj, i64 %i.k
  store i32 1, ptr %i.yk, align 4, !tbaa !15
  store i32 1, ptr %i.yj, align 4, !tbaa !15
  %i.yl = add nuw i64 %.03334.i36, 8              ; 2 uses
  %exitcond.not.i37.7 = icmp eq i64 %i.yl, %i.m
  br i1 %exitcond.not.i37.7, label %._crit_edge.i38, label %.lr.ph.i35, !llvm.loop !188

iter.check146:                                    ; preds = %.lr.ph37.i41.preheader, %._crit_edge38.i45
  %.03239.i42 = phi i64 [ %i.zf, %._crit_edge38.i45 ], [ %i.p, %.lr.ph37.i41.preheader ] ; 2 uses
  %i.ym = mul i64 %.03239.i42, %i.xf
  %i.yn = getelementptr [4 x i8], ptr %i.af, i64 %i.ym ; 11 uses
  br i1 %or.cond842, label %vec.epilog.scalar.ph147.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %iter.check146
  br i1 %min.iters.check137, label %vec.epilog.ph150, label %vector.body140

vector.body140:                                   ; preds = %vector.main.loop.iter.check136, %vector.body140
  %index141 = phi i64 [ %index.next142, %vector.body140 ], [ 0, %vector.main.loop.iter.check136 ] ; 2 uses
  %i.yo = getelementptr [4 x i8], ptr %i.yn, i64 %index141 ; 5 uses
  %i.yp = getelementptr [4 x i8], ptr %i.yo, i64 %i.xh ; 4 uses
end_hunk_0
begin_hunk_1_@wavelets_process:bb.a

.preheader197.i:                                  ; preds = %bb.y
  %i.adf = load <2 x float>, ptr %i.adc, align 16, !tbaa !12, !alias.scope !632
  %i.adg = fadd reassoc nsz arcp contract afn <2 x float> %i.adf, %i.adb ; 2 uses
  store <2 x float> %i.adg, ptr %i.adc, align 16, !tbaa !12, !alias.scope !632
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 8 ; 2 uses
  %i.adi = load <2 x float>, ptr %i.adh, align 8, !tbaa !12, !alias.scope !632
  %i.adj = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.adk = insertelement <2 x float> %i.adj, float %i.aay, i64 1
  %i.adl = fadd reassoc nsz arcp contract afn <2 x float> %i.adi, %i.adk ; 2 uses
  store <2 x float> %i.adl, ptr %i.adh, align 8, !tbaa !12, !alias.scope !632
  br label %.loopexit198.i

.loopexit198.i:                                   ; preds = %.preheader197.i, %.preheader199.i
  %i.adm = phi <2 x float> [ %i.adb, %.preheader199.i ], [ %i.adg, %.preheader197.i ]
  %i.adn = phi <2 x float> [ %i.ade, %.preheader199.i ], [ %i.adl, %.preheader197.i ]
  br i1 %.not80, label %.preheader196.preheader.i, label %.loopexit.i76

.preheader196.preheader.i:                        ; preds = %.loopexit198.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.aao
  %i.adp = load <2 x float>, ptr %i.ado, align 16, !tbaa !12, !alias.scope !630
  %i.adq = fadd reassoc nsz arcp contract afn <2 x float> %i.adp, %i.adm
  %i.adr = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.adq, <2 x float> zeroinitializer) ; 6 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.aap
  %i.adt = load <2 x float>, ptr %i.ads, align 8, !tbaa !12, !alias.scope !630
  %i.adu = fadd reassoc nsz arcp contract afn <2 x float> %i.adt, %i.adn ; 2 uses
  %i.adv = extractelement <2 x float> %i.adu, i64 0
  %i.adw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adv, float 0.000000e+00) ; 4 uses
  %i.adx = extractelement <2 x float> %i.adu, i64 1
  %i.ady = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adx, float 0.000000e+00) ; 3 uses
  br i1 %i.aaz, label %.loopexit195.loopexit.i, label %.loopexit.loopexit.i

.loopexit195.loopexit.i:                          ; preds = %.preheader196.preheader.i
  %foldExtExtBinop208 = fmul reassoc nsz arcp contract afn <2 x float> %i.adr, %i.adr
  %foldExtExtBinop210 = fmul reassoc nsz arcp contract afn <2 x float> %i.adr, %i.adr
  %shift = shufflevector <2 x float> %foldExtExtBinop210, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop212 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop208
  %i.adz = extractelement <2 x float> %foldExtExtBinop212, i64 0
  %i.aea = fmul reassoc nsz arcp contract afn float %i.adw, %i.adw
  %i.aeb = fadd reassoc nsz arcp contract afn float %i.adz, %i.aea
  %i.aec = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aeb) ; 2 uses
  %i.aed = fcmp reassoc nsz arcp contract afn ogt float %i.aec, f0x38D1B717
  %i.aee = select reassoc nsz arcp contract afn i1 %i.aed, float %i.aec, float 1.000000e+00 ; 2 uses
  %i.aef = insertelement <2 x float> poison, float %i.aee, i64 0
  %i.aeg = shufflevector <2 x float> %i.aef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeh = fdiv reassoc nsz arcp contract afn <2 x float> %i.adr, %i.aeg
  %i.aei = fdiv reassoc nsz arcp contract afn float %i.adw, %i.aee
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit195.loopexit.i, %.preheader196.preheader.i
  %i.aej = phi float [ %i.aei, %.loopexit195.loopexit.i ], [ %i.adw, %.preheader196.preheader.i ]
  %i.aek = phi <2 x float> [ %i.aeh, %.loopexit195.loopexit.i ], [ %i.adr, %.preheader196.preheader.i ]
  %i.ael = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aem = shufflevector <2 x float> %i.ael, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aen = fmul reassoc nsz arcp contract afn <2 x float> %i.aek, %i.aem
  store <2 x float> %i.aen, ptr %i.adc, align 16, !tbaa !12, !alias.scope !632
  %i.aeo = fmul reassoc nsz arcp contract afn float %i.aej, %i.ady
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store float %i.aeo, ptr %i.aep, align 8, !tbaa !12, !alias.scope !632
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.adc, i64 12
  store float %i.ady, ptr %i.aeq, align 4, !tbaa !12, !alias.scope !632
  br label %.loopexit.i76

.loopexit.i76:                                    ; preds = %.loopexit.loopexit.i, %.loopexit198.i
  %i.aer = add nuw nsw i64 %.0178211.i, 1         ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.aer, %3
  br i1 %exitcond.not.i77, label %._crit_edge.i78, label %.lr.ph.i75

guide_laplacians.exit:                            ; preds = %._crit_edge.i78, %._crit_edge.i65, %bb.s, %bb.i
  %i.aes = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !141
  %.not56 = icmp eq ptr %i.aes, null
  br i1 %.not56, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %guide_laplacians.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.aet = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.125, i32 noundef %.054119) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.053, i32 noundef %i.p, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  %i.aeu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.126, i32 noundef %.054119) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.0, i32 noundef %i.p, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %guide_laplacians.exit
  %i.aev = add nuw nsw i32 %.054119, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aev, %5
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: inlinehint nofree nosync nounwind memory(none) uwtable
define internal fastcc float @equivalent_sigma_at_step(i32 noundef %0) unnamed_addr #27 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %common.ret1, label %bb.b

common.ret1:                                      ; preds = %bb.a, %bb.b
  %common.ret1.op = phi float [ %i.j, %bb.b ], [ f0x3F871634, %bb.a ]
  ret float %common.ret1.op

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, -1
  %i.c = tail call fastcc float @equivalent_sigma_at_step(i32 noundef %i.b) ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.e = uitofp reassoc nsz arcp contract afn i32 %0 to float
  %i.f = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.e)
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.f, f0x3F871634 ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.i = fadd reassoc nsz arcp contract afn float %i.d, %i.h
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.i)
  br label %common.ret1
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #14

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v24i32(<24 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v32i32(<32 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x i32> @llvm.masked.load.v7i32.p0(ptr captures(none), <7 x i1>, <7 x i32>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v24i32(<24 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v32i32(<32 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v56i32(<56 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v16i32(<16 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.maxnum.v32f32(<32 x float>, <32 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.umin.v8i64(<8 x i64>, <8 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { inlinehint nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 int", !13, i64 0}
!17 = !{!"p1 float", !13, i64 0}
!18 = !{!"dt_iop_segmentation_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !17, i64 56, !17, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88}
!19 = !{!18, !8, i64 84}
!20 = !{!18, !8, i64 88}
!21 = !{!18, !8, i64 76}
!22 = !{!18, !8, i64 80}
!23 = !{!18, !16, i64 0}
!24 = !{!18, !16, i64 48}
!25 = !{!18, !16, i64 40}
!26 = !{!18, !16, i64 32}
!27 = !{!18, !16, i64 24}
!28 = !{!18, !16, i64 16}
!29 = !{!18, !17, i64 64}
!30 = !{!18, !17, i64 56}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 8, i32 24}
!34 = !{!18, !8, i64 72}
!35 = !{!18, !16, i64 8}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!38 = !{!37, !11, i64 16}
!39 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !12}
!40 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!41 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!42 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!43 = !{!"dt_dev_histogram_collection_params_t", !42, i64 0, !8, i64 8}
!44 = !{!"long", !7, i64 0}
!45 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !44, i64 8, !8, i64 16, !8, i64 20}
!46 = !{!"short", !7, i64 0}
!47 = !{!"", !46, i64 0, !46, i64 2}
!48 = !{!"", !8, i64 0, !7, i64 16}
!49 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !47, i64 48, !48, i64 64, !7, i64 96, !8, i64 112}
!50 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!51 = !{!"dt_dev_distorted_mask_cache_t", !17, i64 0, !37, i64 8, !44, i64 32, !44, i64 40}
!52 = !{!"dt_dev_pixelpipe_iop_t", !40, i64 0, !41, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !43, i64 40, !16, i64 56, !45, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !44, i64 120, !8, i64 128, !8, i64 132, !37, i64 136, !37, i64 156, !37, i64 176, !37, i64 196, !8, i64 216, !8, i64 220, !49, i64 224, !49, i64 352, !7, i64 480, !8, i64 516, !50, i64 520, !51, i64 528, !51, i64 576}
!53 = !{!52, !13, i64 16}
!54 = !{!"dt_iop_highlights_params_t", !8, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 24, !8, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 44}
!55 = !{!54, !8, i64 0}
!56 = !{!52, !41, i64 8}
!57 = !{!"any p2 pointer", !13, i64 0}
!58 = !{!"p1 long", !13, i64 0}
!59 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !13, i64 0}
!60 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !44, i64 8, !44, i64 16, !57, i64 24, !58, i64 32, !59, i64 40, !58, i64 48, !16, i64 56, !16, i64 64, !44, i64 72, !8, i64 80, !44, i64 88, !44, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!61 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !13, i64 0}
!62 = !{!"p1 _ZTS6_GList", !13, i64 0}
!63 = !{!"p1 omnipotent char", !13, i64 0}
!64 = !{!"dt_pthread_mutex_t", !7, i64 0}
!65 = !{!"dt_dev_detail_mask_t", !37, i64 0, !44, i64 24, !17, i64 32}
!66 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!67 = !{!"double", !7, i64 0}
!68 = !{!"dt_image_geoloc_t", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!70 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!71 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !44, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !44, i64 1448, !44, i64 1456, !44, i64 1464, !44, i64 1472, !8, i64 1480, !49, i64 1488, !7, i64 1616, !63, i64 1656, !8, i64 1664, !8, i64 1668, !66, i64 1672, !68, i64 1680, !69, i64 1704, !46, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !62, i64 1856, !70, i64 1864, !8, i64 1872, !8, i64 1876}
!72 = !{!"dt_dev_pixelpipe_t", !60, i64 0, !8, i64 120, !44, i64 128, !17, i64 136, !8, i64 144, !8, i64 148, !11, i64 152, !8, i64 156, !8, i64 160, !49, i64 176, !61, i64 304, !61, i64 312, !61, i64 320, !61, i64 328, !62, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !63, i64 360, !44, i64 368, !8, i64 376, !8, i64 380, !11, i64 384, !7, i64 388, !44, i64 416, !64, i64 424, !64, i64 464, !64, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !65, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !71, i64 656, !8, i64 2544, !63, i64 2552, !8, i64 2560, !62, i64 2568, !62, i64 2576, !62, i64 2584, !8, i64 2592, !17, i64 2600, !44, i64 2608, !7, i64 2616, !7, i64 2632}
!73 = !{!72, !8, i64 184}
!74 = !{!37, !8, i64 0}
!75 = !{!37, !8, i64 4}
!76 = !{!52, !11, i64 104}
!77 = !{!54, !8, i64 28}
!78 = !{!37, !8, i64 12}
!79 = !{!37, !8, i64 8}
!80 = !{!52, !8, i64 516}
!81 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!82 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!83 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!84 = !{!"", !50, i64 0, !50, i64 8}
!85 = !{!"", !40, i64 0, !8, i64 8}
!86 = !{!"", !84, i64 0, !85, i64 16}
end_hunk_1
