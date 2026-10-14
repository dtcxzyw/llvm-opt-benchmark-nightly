Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@get_block_rd:bb.a
  %i.hg = tail call i32 %i.hc(ptr noundef nonnull %i.gr, ptr noundef %i.he, ptr noundef %i.hf, i64 noundef %i.bd, i32 noundef 16) #12
  %i.hh = add nsw i32 %i.hg, %i.gz
  %i.hi = add nsw i32 %i.au, 16
  %i.hj = mul nsw i32 %i.hi, %i.i                 ; 2 uses
  %i.hk = add nsw i32 %i.as, %i.hj
  %i.hl = load ptr, ptr %i.gs, align 8, !tbaa !89
  %i.hm = sext i32 %i.hk to i64                   ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.m, i64 %i.hm
  %i.ho = getelementptr inbounds i8, ptr %i.j, i64 %i.hm
  %i.hp = tail call i32 %i.hl(ptr noundef nonnull %i.gr, ptr noundef %i.hn, ptr noundef %i.ho, i64 noundef %i.bd, i32 noundef 16) #12
  %i.hq = add nsw i32 %i.hp, %i.hh
  %i.hr = add nsw i32 %i.ha, %i.hj
  %i.hs = load ptr, ptr %i.gs, align 8, !tbaa !89
  %i.ht = sext i32 %i.hr to i64                   ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %i.m, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.j, i64 %i.ht
  %i.hw = tail call i32 %i.hs(ptr noundef nonnull %i.gr, ptr noundef %i.hu, ptr noundef %i.hv, i64 noundef %i.bd, i32 noundef 16) #12
  %i.hx = add nsw i32 %i.hw, %i.hq
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.hy = sext i32 %i.as to i64                   ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.m, i64 %i.hy
  %i.ia = mul nsw i32 %i.au, %i.i
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.j, i64 %i.hy
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 %i.ib
  %i.if = tail call i32 @ff_w97_32_c(ptr noundef nonnull %i.gr, ptr noundef %i.ic, ptr noundef %i.ie, i64 noundef %i.bd, i32 noundef 32) #12
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.ig = sext i32 %i.as to i64                   ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.m, i64 %i.ig
  %i.ii = mul nsw i32 %i.au, %i.i
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ih, i64 %i.ij
  %i.il = getelementptr inbounds i8, ptr %i.j, i64 %i.ig
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 %i.ij
  %i.in = tail call i32 @ff_w53_32_c(ptr noundef nonnull %i.gr, ptr noundef %i.ik, ptr noundef %i.im, i64 noundef %i.bd, i32 noundef 32) #12
  br label %.loopexit

bb.s:                                             ; preds = %.loopexit243
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 156784
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 161896
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !89
  %i.ir = sext i32 %i.as to i64                   ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.m, i64 %i.ir
  %i.it = mul nsw i32 %i.au, %i.i
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %i.is, i64 %i.iu
  %i.iw = getelementptr inbounds i8, ptr %i.j, i64 %i.ir
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.iu
  %i.iy = tail call i32 %i.iq(ptr noundef nonnull %i.io, ptr noundef %i.iv, ptr noundef %i.ix, i64 noundef %i.bd, i32 noundef %i.e) #12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.s, %bb.r, %bb.q
  %.1230 = phi i32 [ %i.if, %bb.q ], [ %i.in, %bb.r ], [ %i.iy, %bb.s ], [ %i.hx, %.preheader ]
  %i.iz = tail call fastcc i32 @get_block_bits(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 1)
  %i.ja = add nsw i32 %1, 1                       ; 2 uses
  %i.jb = tail call fastcc i32 @get_block_bits(ptr noundef nonnull %0, i32 noundef %i.ja, i32 noundef %2, i32 noundef 1)
  %i.jc = add nuw nsw i32 %i.jb, %i.iz
  %i.jd = add i32 %1, -1
  %i.je = add nsw i32 %2, 1                       ; 3 uses
  %i.jf = tail call fastcc i32 @get_block_bits(ptr noundef nonnull %0, i32 noundef %i.jd, i32 noundef %i.je, i32 noundef 1)
  %i.jg = add nuw nsw i32 %i.jf, %i.jc
  %i.jh = tail call fastcc i32 @get_block_bits(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.je, i32 noundef 1)
  %i.ji = add nuw nsw i32 %i.jh, %i.jg            ; 2 uses
  %i.jj = add nsw i32 %i.u, -2
  %i.jk = icmp eq i32 %1, %i.jj
  br i1 %i.jk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.jl = tail call fastcc i32 @get_block_bits(ptr noundef nonnull %0, i32 noundef %i.ja, i32 noundef %i.je, i32 noundef 1)
  %i.jm = add nuw nsw i32 %i.jl, %i.ji
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.t
  %.1228 = phi i32 [ %i.jm, %bb.t ], [ %i.ji, %.loopexit ]
  %i.jn = mul nsw i32 %.1228, %.0.i
  %i.jo = add nsw i32 %i.jn, %.1230
  ret i32 %i.jo
}

declare i32 @ff_w97_32_c(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_w53_32_c(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 1645) i32 @get_block_bits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 3) %3) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6368
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6376
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %i.e = shl i32 %i.b, %i.d                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6372
  %i.g = load i32, ptr %i.f, align 4, !tbaa !106
  %i.h = shl i32 %i.g, %i.d
  %i.i = mul nsw i32 %i.e, %2
  %i.j = add nsw i32 %i.i, %1                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 155032
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 4 uses
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [10 x i8], ptr %i.l, i64 %i.m ; 8 uses
  %.not114 = icmp eq i32 %1, 0                    ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -10
  %i.p = select i1 %.not114, ptr @null_block, ptr %i.o ; 9 uses
  %.not113 = icmp eq i32 %2, 0
  br i1 %.not113, label %.thread111, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sub nsw i32 %i.j, %i.e
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [10 x i8], ptr %i.l, i64 %i.r ; 2 uses
  %i.t = xor i32 %i.e, -1
  %i.u = add i32 %i.j, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [10 x i8], ptr %i.l, i64 %i.v
  %i.x = select i1 %.not114, ptr @null_block, ptr %i.w
  %i.y = add nsw i32 %3, %1
  %i.z = icmp slt i32 %i.y, %i.e
  br i1 %i.z, label %bb.c, label %.thread111

bb.c:                                             ; preds = %bb.b
  %i.aa = sub i32 %3, %i.e
  %i.ab = add i32 %i.aa, %i.j
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [10 x i8], ptr %i.l, i64 %i.ac
  br label %.thread111

.thread111:                                       ; preds = %bb.a, %bb.b, %bb.c
  %i.ae = phi ptr [ %i.s, %bb.c ], [ %i.s, %bb.b ], [ @null_block, %bb.a ] ; 5 uses
  %i.af = phi ptr [ %i.ad, %bb.c ], [ %i.x, %bb.b ], [ %i.p, %bb.a ] ; 5 uses
  %i.ag = icmp sgt i32 %1, -1
  %.not = icmp slt i32 %1, %i.e
  %or.cond75 = select i1 %i.ag, i1 %.not, i1 false
  %.not71 = icmp slt i32 %2, %i.h
  %or.cond76 = select i1 %or.cond75, i1 %.not71, i1 false
  br i1 %or.cond76, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.thread111
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !136
  %i.aj = and i8 %i.ai, 1
  %.not72 = icmp eq i8 %i.aj, 0
  br i1 %.not72, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !86
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !86
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub nsw i32 %i.am, %i.ap
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 3 uses
  %i.as = shl nuw nsw i32 %i.ar, 1
  %.not11.i104 = icmp samesign ult i32 %i.ar, 128 ; 2 uses
  %i.at = lshr i32 %i.ar, 7
  %.110.i105 = select i1 %.not11.i104, i32 %i.as, i32 %i.at
  %.1.i106 = select i1 %.not11.i104, i32 0, i32 8
  %i.au = zext nneg i32 %.110.i105 to i64
  %i.av = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !86
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !86
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !86
  %i.bd = zext i8 %i.bc to i32
  %i.be = sub nsw i32 %i.ba, %i.bd
  %i.bf = tail call i32 @llvm.abs.i32(i32 %i.be, i1 true) ; 3 uses
  %i.bg = shl nuw nsw i32 %i.bf, 1
  %.not11.i98 = icmp samesign ult i32 %i.bf, 128  ; 2 uses
  %i.bh = lshr i32 %i.bf, 7
  %.110.i99 = select i1 %.not11.i98, i32 %i.bg, i32 %i.bh
  %.1.i100 = select i1 %.not11.i98, i32 0, i32 8
  %i.bi = zext nneg i32 %.110.i99 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !86
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !86
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !86
  %i.br = zext i8 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br
  %i.bt = tail call i32 @llvm.abs.i32(i32 %i.bs, i1 true) ; 3 uses
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %.not11.i92 = icmp samesign ult i32 %i.bt, 128  ; 2 uses
  %i.bv = lshr i32 %i.bt, 7
  %.110.i93 = select i1 %.not11.i92, i32 %i.bu, i32 %i.bv
  %.1.i94 = select i1 %.not11.i92, i32 0, i32 8
  %i.bw = zext nneg i32 %.110.i93 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !86
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bl, %i.ax
  %i.cb = add nuw nsw i32 %i.ca, %.1.i106
  %i.cc = add nuw nsw i32 %i.cb, %i.bz
  %i.cd = add nuw nsw i32 %i.cc, %.1.i100
  %i.ce = add nuw nsw i32 %i.cd, %.1.i94
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = add nuw nsw i32 %i.cf, 3
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !139 ; 2 uses
  %i.cj = zext i8 %i.ci to i64                    ; 2 uses
  %i.ck = getelementptr i8, ptr %0, i64 6152
  %.val = load i32, ptr %i.ck, align 8, !tbaa !155
  %i.cl = icmp eq i32 %.val, 1
  br i1 %i.cl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cm = load i16, ptr %i.p, align 2, !tbaa !137
  %i.cn = sext i16 %i.cm to i32                   ; 2 uses
  %i.co = load i16, ptr %i.ae, align 2, !tbaa !137
  %i.cp = sext i16 %i.co to i32                   ; 2 uses
  %i.cq = load i16, ptr %i.af, align 2, !tbaa !137
  %i.cr = sext i16 %i.cq to i32
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.cp)
  %.20.i.i = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cs = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 %..i.i)
  %i.ct = tail call noundef i32 @llvm.smax.i32(i32 %i.cs, i32 %.20.i.i)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !138
  %i.cw = sext i16 %i.cv to i32                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !138
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !138
  %i.dc = sext i16 %i.db to i32
  %..i29.i = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 %i.cz)
  %.20.i30.i = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.cz)
  %i.dd = tail call i32 @llvm.smin.i32(i32 %i.dc, i32 %..i29.i)
  %i.de = tail call noundef i32 @llvm.smax.i32(i32 %i.dd, i32 %.20.i30.i)
  br label %pred_mv.exit

bb.h:                                             ; preds = %bb.f
  %i.df = getelementptr inbounds nuw [32 x i8], ptr @ff_scale_mv_ref, i64 %i.cj ; 3 uses
  %i.dg = load i16, ptr %i.p, align 2, !tbaa !137
  %i.dh = sext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !139
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !87 ; 2 uses
  %i.dn = mul nsw i32 %i.dm, %i.dh
  %i.do = add nsw i32 %i.dn, 128
  %i.dp = ashr i32 %i.do, 8                       ; 2 uses
  %i.dq = load i16, ptr %i.ae, align 2, !tbaa !137
  %i.dr = sext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !139
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !87 ; 2 uses
  %i.dx = mul nsw i32 %i.dw, %i.dr
  %i.dy = add nsw i32 %i.dx, 128
  %i.dz = ashr i32 %i.dy, 8                       ; 2 uses
  %i.ea = load i16, ptr %i.af, align 2, !tbaa !137
  %i.eb = sext i16 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !139
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !87 ; 2 uses
  %i.eh = mul nsw i32 %i.eg, %i.eb
  %i.ei = add nsw i32 %i.eh, 128
  %i.ej = ashr i32 %i.ei, 8
  %..i31.i = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 %i.dz)
  %.20.i32.i = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 %i.dz)
  %i.ek = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %..i31.i)
  %i.el = tail call noundef i32 @llvm.smax.i32(i32 %i.ek, i32 %.20.i32.i)
  %i.em = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !138
  %i.eo = sext i16 %i.en to i32
  %i.ep = mul nsw i32 %i.dm, %i.eo
  %i.eq = add nsw i32 %i.ep, 128
  %i.er = ashr i32 %i.eq, 8                       ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.et = load i16, ptr %i.es, align 2, !tbaa !138
  %i.eu = sext i16 %i.et to i32
  %i.ev = mul nsw i32 %i.dw, %i.eu
  %i.ew = add nsw i32 %i.ev, 128
  %i.ex = ashr i32 %i.ew, 8                       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !138
  %i.fa = sext i16 %i.ez to i32
  %i.fb = mul nsw i32 %i.eg, %i.fa
  %i.fc = add nsw i32 %i.fb, 128
  %i.fd = ashr i32 %i.fc, 8
  %..i33.i = tail call i32 @llvm.smax.i32(i32 %i.er, i32 %i.ex)
  %.20.i34.i = tail call i32 @llvm.smin.i32(i32 %i.er, i32 %i.ex)
  %i.fe = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 %..i33.i)
  %i.ff = tail call noundef i32 @llvm.smax.i32(i32 %i.fe, i32 %.20.i34.i)
  br label %pred_mv.exit

pred_mv.exit:                                     ; preds = %bb.g, %bb.h
  %.0109 = phi i32 [ %i.ct, %bb.g ], [ %i.el, %bb.h ]
  %storemerge.i = phi i32 [ %i.de, %bb.g ], [ %i.ff, %bb.h ]
  %i.fg = load i16, ptr %i.n, align 2, !tbaa !137
  %i.fh = sext i16 %i.fg to i32
  %i.fi = sub nsw i32 %.0109, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !138
  %i.fl = sext i16 %i.fk to i32
  %i.fm = sub nsw i32 %storemerge.i, %i.fl
  %i.fn = tail call i32 @llvm.abs.i32(i32 %i.fi, i1 true) ; 3 uses
  %i.fo = shl nuw nsw i32 %i.fn, 1
  %.not.i83 = icmp samesign ult i32 %i.fn, 32768  ; 2 uses
  %i.fp = lshr i32 %i.fn, 15
  %spec.select.i84 = select i1 %.not.i83, i32 %i.fo, i32 %i.fp ; 3 uses
  %spec.select12.i85 = select i1 %.not.i83, i32 0, i32 16 ; 2 uses
  %.not11.i86 = icmp samesign ult i32 %spec.select.i84, 256 ; 2 uses
  %i.fq = lshr i32 %spec.select.i84, 8
  %i.fr = or disjoint i32 %spec.select12.i85, 8
  %.110.i87 = select i1 %.not11.i86, i32 %spec.select.i84, i32 %i.fq
  %.1.i88 = select i1 %.not11.i86, i32 %spec.select12.i85, i32 %i.fr
  %i.fs = zext nneg i32 %.110.i87 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !86
  %i.fv = zext i8 %i.fu to i32
  %i.fw = tail call i32 @llvm.abs.i32(i32 %i.fm, i1 true) ; 3 uses
  %i.fx = shl nuw nsw i32 %i.fw, 1
  %.not.i77 = icmp samesign ult i32 %i.fw, 32768  ; 2 uses
  %i.fy = lshr i32 %i.fw, 15
  %spec.select.i78 = select i1 %.not.i77, i32 %i.fx, i32 %i.fy ; 3 uses
  %spec.select12.i79 = select i1 %.not.i77, i32 0, i32 16 ; 2 uses
  %.not11.i80 = icmp samesign ult i32 %spec.select.i78, 256 ; 2 uses
  %i.fz = lshr i32 %spec.select.i78, 8
  %i.ga = or disjoint i32 %spec.select12.i79, 8
  %.110.i81 = select i1 %.not11.i80, i32 %spec.select.i78, i32 %i.fz
  %.1.i82 = select i1 %.not11.i80, i32 %spec.select12.i79, i32 %i.ga
  %i.gb = zext nneg i32 %.110.i81 to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !86
  %i.ge = zext i8 %i.gd to i32
  %i.gf = shl nuw nsw i64 %i.cj, 1
  %.not11.i = icmp sgt i8 %i.ci, -1               ; 2 uses
  %i.gg = select i1 %.not11.i, i64 %i.gf, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !86
  %i.gj = zext i8 %i.gi to i32
  %i.gk = select i1 %.not11.i, i32 1, i32 9
  %i.gl = add nuw nsw i32 %i.gk, %i.fv
  %i.gm = add nuw nsw i32 %i.gl, %i.ge
  %i.gn = add nuw nsw i32 %i.gm, %i.gj
  %i.go = add nuw nsw i32 %i.gn, %.1.i88
  %i.gp = add nuw nsw i32 %i.go, %.1.i82
  %i.gq = shl nuw nsw i32 %i.gp, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread111, %pred_mv.exit, %bb.e
  %.0 = phi i32 [ %i.gq, %pred_mv.exit ], [ %i.cg, %bb.e ], [ 0, %.thread111 ]
  ret i32 %.0
}

declare i32 @ff_epzs_motion_search(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_get_mb_score(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @put_symbol2(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 -4, 276) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %3, -1
  %i.b = shl nuw i32 1, %3
  %i.c = select i1 %i.a, i32 %i.b, i32 1          ; 2 uses
  %.not42 = icmp slt i32 %2, %i.c
  br i1 %.not42, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre55 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !141
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  %i.j = sext i32 %3 to i64
  %.pre = load i32, ptr %i.e, align 4, !tbaa !141
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %put_rac.exit
  %i.k = phi i32 [ %.pre, %.lr.ph ], [ %i.bb, %put_rac.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %put_rac.exit ] ; 3 uses
  %.02345 = phi i32 [ %i.c, %.lr.ph ], [ %spec.select, %put_rac.exit ] ; 2 uses
  %.02543 = phi i32 [ %2, %.lr.ph ], [ %i.bc, %put_rac.exit ]
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !86
  %i.n = zext i8 %i.m to i32
end_hunk_0
