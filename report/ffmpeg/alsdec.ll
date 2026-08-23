Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alsdec?download=true
inline.NumInlined: 158
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@decode_frame:bb.a

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  %i.x = load i32, ptr %i.w, align 4, !tbaa !102
  %i.y = urem i32 %i.x, %i.v
  %.not179 = icmp eq i32 %i.y, 0
  %i.z = zext i1 %.not179 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi i32 [ 0, %bb.b ], [ %i.z, %bb.c ]   ; 6 uses
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !103 ; 2 uses
  %.not180 = icmp eq i32 %i.ab, -1
  br i1 %.not180, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !85
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = sub i64 %i.ac, %i.aj
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.ai)
  %i.am = trunc i64 %i.al to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.ao, %bb.f ], [ %i.am, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 9 uses
  store i32 %.sink, ptr %i.ap, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 440 ; 5 uses
  store i32 -1, ptr %i.aq, align 8, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 11 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 356
  %i.au = load i32, ptr %i.at, align 4, !tbaa !41 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !106
  %i.ax = icmp eq i32 %i.aw, 1
  %i.ay = icmp ne i32 %i.aa, 0
  %or.cond.i190 = and i1 %i.ay, %i.ax
  br i1 %or.cond.i190, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.r, i32 32) ; 2 uses
  store i32 %i.az, ptr %i.t, align 8, !tbaa !100
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = phi i32 [ %i.az, %bb.h ], [ 0, %bb.g ]  ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !107
  %.not190.i = icmp eq i32 %i.be, 0
  br i1 %.not190.i, label %.align_get_bits.exit_crit_edge.i, label %bb.k

.align_get_bits.exit_crit_edge.i:                 ; preds = %bb.j
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !108
  br label %align_get_bits.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bf = lshr i32 %i.ba, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !109
  %i.bj = icmp samesign ult i32 %i.ba, %i.r
  %i.bk = zext i1 %i.bj to i32
  %spec.select.i.i = add nuw nsw i32 %i.ba, %i.bk ; 4 uses
  %i.bl = zext i8 %i.bi to i32
  %i.bm = and i32 %i.ba, 7
  %i.bn = shl nuw nsw i32 %i.bl, %i.bm
  %i.bo = lshr i32 %i.bn, 7
  store i32 %spec.select.i.i, ptr %i.t, align 8, !tbaa !100
  %i.bp = and i32 %i.bo, 1                        ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !108
  %i.br = sub nsw i32 0, %spec.select.i.i
  %i.bs = and i32 %i.br, 7                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i, label %align_get_bits.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = add nuw nsw i32 %i.bs, %spec.select.i.i
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.bt) ; 2 uses
  store i32 %i.bu, ptr %i.t, align 8, !tbaa !100
  br label %align_get_bits.exit.i

align_get_bits.exit.i:                            ; preds = %bb.l, %bb.k, %.align_get_bits.exit_crit_edge.i
  %.val205.i338 = phi i32 [ %i.ba, %.align_get_bits.exit_crit_edge.i ], [ %i.bu, %bb.l ], [ %spec.select.i.i, %bb.k ]
  %i.bv = phi i32 [ %.pre.i, %.align_get_bits.exit_crit_edge.i ], [ %i.bp, %bb.l ], [ %i.bp, %bb.k ]
  %.not192.i = icmp eq i32 %i.bv, 0
  br i1 %.not192.i, label %bb.ai, label %bb.m

bb.m:                                             ; preds = %align_get_bits.exit.i, %bb.i
  %.val205.i = phi i32 [ %.val205.i338, %align_get_bits.exit.i ], [ %i.ba, %bb.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.bx = sub nsw i32 %i.o, %.val205.i
  %i.by = mul nsw i32 %i.au, 7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 8 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !110
  %i.cb = mul i32 %i.by, %i.ca
  %i.cc = icmp ult i32 %i.bx, %i.cb
  br i1 %i.cc, label %.loopexit208, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = icmp sgt i32 %i.au, 0
  br i1 %i.cd, label %.lr.ph322.i, label %.loopexit264.i

.lr.ph322.i:                                      ; preds = %bb.n
  %i.ce = load i32, ptr %i.bw, align 8, !tbaa !107
  %.not193.i = icmp eq i32 %i.ce, 0
  %i.cf = zext i1 %.not193.i to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.ch = add nsw i32 %i.au, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 344 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 116 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.ah, %.lr.ph322.i
  %.0170320.i = phi i32 [ %i.cf, %.lr.ph322.i ], [ %.3.i, %bb.ah ] ; 2 uses
  %.0172319.i = phi i32 [ 0, %.lr.ph322.i ], [ %i.ku, %bb.ah ] ; 6 uses
  call fastcc void @get_block_sizes(ptr noundef nonnull %i.e, ptr noundef %i.a, ptr noundef %i.b)
  %i.ej = load i32, ptr %i.bw, align 8, !tbaa !107
  %.not194.i = icmp eq i32 %i.ej, 0
  br i1 %.not194.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = load i32, ptr %i.cg, align 4, !tbaa !111
  %.not195.i = icmp eq i32 %i.ek, 0
  %i.el = load i32, ptr %i.b, align 4
  %.not196.i = icmp sgt i32 %i.el, -1
  %or.cond200.i = select i1 %.not195.i, i1 true, i1 %.not196.i
  %spec.select.i = select i1 %or.cond200.i, i32 %.0170320.i, i32 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1171.i = phi i32 [ %spec.select.i, %bb.p ], [ %.0170320.i, %bb.o ]
  %i.em = icmp ne i32 %.0172319.i, %i.ch
  %i.en = and i32 %.0172319.i, 1
  %.not197.i = icmp eq i32 %i.en, 0
  %or.cond201.i = and i1 %i.em, %.not197.i
  %.2.i = select i1 %or.cond201.i, i32 %.1171.i, i32 1 ; 2 uses
  %.not198.i = icmp eq i32 %.2.i, 0
  br i1 %.not198.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ci, i8 0, i64 96, i1 false)
  store i32 %i.aa, ptr %i.cj, align 4, !tbaa !112
  %i.eo = load ptr, ptr %i.ck, align 8, !tbaa !61
  store ptr %i.eo, ptr %i.cl, align 8, !tbaa !114
  %i.ep = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !58
  store <2 x ptr> %i.ep, ptr %i.cn, align 8, !tbaa !58
  %i.eq = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !58
  store <2 x ptr> %i.eq, ptr %i.cq, align 8, !tbaa !58
  %i.er = load ptr, ptr %i.cs, align 8, !tbaa !66
  store ptr %i.er, ptr %i.ct, align 8, !tbaa !115
  %i.es = load ptr, ptr %i.cu, align 8, !tbaa !67
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !58
  store ptr %i.et, ptr %i.cv, align 8, !tbaa !116
  %i.eu = load ptr, ptr %i.cw, align 8, !tbaa !52
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !58
  store ptr %i.ev, ptr %i.cx, align 8, !tbaa !117
  %i.ew = load ptr, ptr %i.cy, align 8, !tbaa !53
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !58
  store ptr %i.ex, ptr %i.cz, align 8, !tbaa !118
  %i.ey = load ptr, ptr %i.da, align 8, !tbaa !86
  store ptr %i.ey, ptr %i.db, align 8, !tbaa !119
  %i.ez = load ptr, ptr %i.dc, align 8, !tbaa !88
  %i.fa = zext i32 %.0172319.i to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !58
  store ptr %i.fc, ptr %i.dd, align 8, !tbaa !120
  %i.fd = load i32, ptr %i.bz, align 8, !tbaa !110
  %.not.i209.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i209.i, label %.loopexit263.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %bb.r ] ; 7 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !105
  store i32 %i.ff, ptr %5, align 8, !tbaa !121
  %i.fg = call fastcc i32 @read_block(ptr noundef nonnull %i.e, ptr noundef nonnull %5)
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.fi = trunc nuw i64 %indvars.iv.i.i to i32
  %i.fj = load i32, ptr %i.bz, align 8, !tbaa !110 ; 2 uses
  %i.fk = load ptr, ptr %i.dd, align 8, !tbaa !120
  %i.fl = icmp ugt i32 %i.fj, %i.fi
  br i1 %i.fl, label %.lr.ph.preheader.i.i.i, label %decode_blocks_ind.exit.thread.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.s
  %wide.trip.count.i.i.i = zext i32 %i.fj to i64  ; 2 uses
  %i.fm = sub nsw i64 %wide.trip.count.i.i.i, %indvars.iv.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.fm, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.fm, -8                      ; 3 uses
  %i.fn = add i64 %indvars.iv.i.i, %n.vec
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi486 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <4 x i32>, ptr %i.fp, align 4, !tbaa !105
  %wide.load487 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !105
  %i.fr = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.fs = add <4 x i32> %wide.load487, %vec.phi486 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fs, %i.fr
  %i.fu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph.preheader.i.i.i ], [ %i.fn, %middle.block ]
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.fu, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.09.i.i.i = phi i32 [ %i.fx, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !105
  %i.fx = add i32 %i.fw, %.09.i.i.i               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !125

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa472 = phi i32 [ %i.fu, %middle.block ], [ %i.fx, %.lr.ph.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.lcssa472, 0
  br i1 %.not.i.i.i, label %decode_blocks_ind.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.fy = zext i32 %.lcssa472 to i64
  %i.fz = shl nuw nsw i64 %i.fy, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fk, i8 0, i64 %i.fz, i1 false)
  br label %decode_blocks_ind.exit.thread.i

bb.u:                                             ; preds = %.lr.ph.i.i
  call fastcc void @decode_block(ptr noundef nonnull %i.e, ptr noundef nonnull %5)
  %i.ga = load i32, ptr %i.fe, align 4, !tbaa !105
  %i.gb = load ptr, ptr %i.dd, align 8, !tbaa !120
  %i.gc = zext i32 %i.ga to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gc
  store ptr %i.gd, ptr %i.dd, align 8, !tbaa !120
  store i32 0, ptr %i.cj, align 4, !tbaa !112
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ge = load i32, ptr %i.bz, align 8, !tbaa !110
  %i.gf = zext i32 %i.ge to i64
  %i.gg = icmp samesign ult i64 %indvars.iv.next.i.i, %i.gf
  br i1 %i.gg, label %.lr.ph.i.i, label %.loopexit263.i, !llvm.loop !126

decode_blocks_ind.exit.thread.i:                  ; preds = %bb.t, %._crit_edge.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit208

.loopexit263.i:                                   ; preds = %bb.u, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.gh = add nsw i32 %.2.i, -1
  br label %bb.ah

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 %i.aa, ptr %i.de, align 4, !tbaa !112
  %i.gi = load ptr, ptr %i.ck, align 8, !tbaa !61 ; 2 uses
  store ptr %i.gi, ptr %i.df, align 8, !tbaa !114
  %i.gj = load ptr, ptr %i.cm, align 8, !tbaa !62 ; 2 uses
  store ptr %i.gj, ptr %i.dg, align 8, !tbaa !127
  %i.gk = load ptr, ptr %i.co, align 8, !tbaa !63 ; 2 uses
  store ptr %i.gk, ptr %i.dh, align 16, !tbaa !128
  %i.gl = load ptr, ptr %i.cp, align 8, !tbaa !64 ; 2 uses
  store ptr %i.gl, ptr %i.di, align 8, !tbaa !129
  %i.gm = load ptr, ptr %i.cr, align 8, !tbaa !65 ; 2 uses
  store ptr %i.gm, ptr %i.dj, align 16, !tbaa !130
  %i.gn = load ptr, ptr %i.cs, align 8, !tbaa !66 ; 2 uses
  store ptr %i.gn, ptr %i.dk, align 8, !tbaa !115
  %i.go = load ptr, ptr %i.cu, align 8, !tbaa !67
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !58 ; 2 uses
  store ptr %i.gp, ptr %i.dl, align 16, !tbaa !116
  %i.gq = load ptr, ptr %i.cw, align 8, !tbaa !52
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !58 ; 2 uses
  store ptr %i.gr, ptr %i.dm, align 8, !tbaa !117
  %i.gs = load ptr, ptr %i.cy, align 8, !tbaa !53
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !58 ; 2 uses
  store ptr %i.gt, ptr %i.dn, align 16, !tbaa !118
  %i.gu = load ptr, ptr %i.da, align 8, !tbaa !86 ; 2 uses
  store ptr %i.gu, ptr %i.do, align 16, !tbaa !119
  store i32 %i.aa, ptr %i.dr, align 4, !tbaa !112
  store ptr %i.gi, ptr %i.ds, align 8, !tbaa !114
  store ptr %i.gj, ptr %i.dt, align 8, !tbaa !127
  store ptr %i.gk, ptr %i.du, align 16, !tbaa !128
  store ptr %i.gl, ptr %i.dv, align 8, !tbaa !129
  store ptr %i.gm, ptr %i.dw, align 16, !tbaa !130
  store ptr %i.gn, ptr %i.dx, align 8, !tbaa !115
  store ptr %i.gp, ptr %i.dy, align 16, !tbaa !116
  store ptr %i.gr, ptr %i.dz, align 8, !tbaa !117
  store ptr %i.gt, ptr %i.ea, align 16, !tbaa !118
  store ptr %i.gu, ptr %i.eb, align 16, !tbaa !119
  %i.gv = load i32, ptr %i.bz, align 8, !tbaa !110
  %.not19.i.i = icmp eq i32 %i.gv, 0
  %.pre35.i.i = zext i32 %.0172319.i to i64       ; 2 uses
  %.pre385.i = add nsw i32 %.0172319.i, 1         ; 2 uses
  br i1 %.not19.i.i, label %.loopexit.i, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %bb.v
  %i.gw = zext i32 %.pre385.i to i64
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.i.i, %.lr.ph18.i.i
  %indvars.iv31.i.i = phi i64 [ 0, %.lr.ph18.i.i ], [ %indvars.iv.next32.i.i, %.loopexit.i.i ] ; 11 uses
  %.07816.i.i = phi i32 [ 0, %.lr.ph18.i.i ], [ %i.ik, %.loopexit.i.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv31.i.i ; 5 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !105 ; 2 uses
  store i32 %i.gy, ptr %4, align 16, !tbaa !121
  store i32 %i.gy, ptr %i.dq, align 16, !tbaa !121
  %i.gz = load ptr, ptr %i.dc, align 8, !tbaa !88 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.pre35.i.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !58
  %i.hc = zext i32 %.07816.i.i to i64             ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hc ; 2 uses
  store ptr %i.hd, ptr %i.ed, align 8, !tbaa !120
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gw
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !58
end_hunk_0
