Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/recon_tmpl?download=true
inline.NumInlined: 111
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 39
begin_hunk_0_@dav1d_recon_b_intra_8bpc:bb.a
  %i.du = xor <2 x i32> %i.dt, splat (i32 -1)     ; 3 uses
  %i.dv = shl i32 %i.ar, %i.y
  %i.dw = add i32 %i.dv, -1
  %i.dx = shl nuw i32 %i.at, %i.w
  %i.dy = add i32 %i.dx, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 200 ; 2 uses
  %i.ed = zext nneg i32 %i.z to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ef = zext nneg i32 %i.aa to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %i.bu, label %.lr.ph702.preheader, label %._crit_edge707.split

.lr.ph702.preheader:                              ; preds = %.lr.ph706
  %i.el = zext nneg i32 %i.al to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 3248
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 3256
  %i.ep = extractelement <2 x i32> %i.du, i64 0
  %i.eq = extractelement <2 x i32> %i.du, i64 1   ; 4 uses
  br label %.lr.ph702

..loopexit659_crit_edge:                          ; preds = %.loopexit
  br i1 %i.ex, label %.lr.ph702, label %._crit_edge707.split

._crit_edge707.split:                             ; preds = %..loopexit659_crit_edge, %.lr.ph706, %bb.d
  ret void

.lr.ph702:                                        ; preds = %.lr.ph702.preheader, %..loopexit659_crit_edge
  %i.er = phi i32 [ %i.aey, %..loopexit659_crit_edge ], [ %i.r, %.lr.ph702.preheader ]
  %.0577704 = phi i32 [ %i.es, %..loopexit659_crit_edge ], [ 0, %.lr.ph702.preheader ] ; 8 uses
  %i.es = add nuw nsw i32 %.0577704, 16           ; 4 uses
  %i.et = call noundef i32 @llvm.smin.i32(i32 %i.ap, i32 %i.es) ; 2 uses
  %i.eu = lshr exact i32 %i.es, %i.w              ; 2 uses
  %i.ev = call noundef i32 @llvm.smin.i32(i32 %i.at, i32 %i.eu) ; 6 uses
  %.not602 = icmp eq i32 %.0577704, 0             ; 2 uses
  %i.ew = and i1 %.not602, %i.co
  %i.ex = icmp slt i32 %i.es, %i.ap               ; 2 uses
  %.not653 = or i1 %i.cq, %i.ex
  %.not602.not = xor i1 %.not602, true
  %i.ey = icmp sge i32 %i.eu, %i.at
  %i.ez = lshr exact i32 %.0577704, %i.w          ; 6 uses
  %i.fa = icmp slt i32 %i.ez, %i.ev
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph702, %.loopexit
  %i.fb = phi i32 [ %i.er, %.lr.ph702 ], [ %i.aey, %.loopexit ] ; 3 uses
  %indvars.iv724 = phi i64 [ 0, %.lr.ph702 ], [ %indvars.iv.next725, %.loopexit ] ; 7 uses
  %i.fc = load i8, ptr %i.bv, align 1, !tbaa !65
  %.not599 = icmp eq i8 %i.fc, 0
  br i1 %.not599, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fd = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.fe = sext i32 %i.fb to i64
  %i.ff = load i64, ptr %i.bx, align 16, !tbaa !86 ; 2 uses
  %i.fg = mul nsw i64 %i.ff, %i.fe
  %i.fh = load i32, ptr %i.n, align 8, !tbaa !63  ; 3 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = add nsw i64 %i.fg, %i.fi
  %i.fk = shl nsw i64 %i.fj, 2
  %i.fl = getelementptr inbounds i8, ptr %i.fd, i64 %i.fk
  %i.fm = load i32, ptr %i.by, align 4, !tbaa !87 ; 2 uses
  %.not600 = icmp eq i32 %i.fm, 0
  br i1 %.not600, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fn = and i32 %i.fm, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.fo ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !183, !nonnull !88, !noundef !88 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ca
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !183
  %i.fs = load ptr, ptr %i.cb, align 8, !tbaa !117
  %i.ft = ashr i32 %i.fb, 1
  %i.fu = and i32 %i.fh, 1
  %i.fv = add nsw i32 %i.fu, %i.ft
  %i.fw = sext i32 %i.fv to i64
  %i.fx = load i64, ptr %i.cc, align 16, !tbaa !118
  %i.fy = ashr i64 %i.fx, 1
  %i.fz = mul nsw i64 %i.fy, %i.fw
  %i.ga = ashr i32 %i.fh, 1
  %i.gb = and i32 %i.fb, 1
  %i.gc = add nsw i32 %i.ga, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr [24 x i8], ptr %i.fs, i64 %i.fz
  %i.gf = getelementptr [24 x i8], ptr %i.ge, i64 %i.gd
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0586645 = phi ptr [ %i.fq, %bb.g ], [ %i.cd, %bb.f ]
  %i.gg = phi ptr [ %i.gf, %bb.g ], [ %i.ce, %bb.f ]
  %i.gh = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 248
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !184
  call void %i.gj(ptr noundef %i.fl, i64 noundef %i.ff, ptr noundef %i.gg, ptr noundef nonnull %.0586645, i32 noundef %i.cf, i32 noundef %i.cg) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.gk = load ptr, ptr %i.ch, align 16, !tbaa !68 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 224
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.ci
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !65
  %.not.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i, label %sm_flag.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.ci
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !65  ; 2 uses
  %i.gq = and i8 %i.gp, -3
  %or.cond.i = icmp eq i8 %i.gq, 9
  %i.gr = icmp eq i8 %i.gp, 10
  %i.gs = or i1 %i.gr, %or.cond.i
  %i.gt = select i1 %i.gs, i32 512, i32 0
  br label %sm_flag.exit

sm_flag.exit:                                     ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.gt, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %i.gu = load i8, ptr %i.cl, align 1, !tbaa !65
  %.not.i631 = icmp eq i8 %i.gu, 0
  br i1 %.not.i631, label %.lr.ph668, label %bb.k

bb.k:                                             ; preds = %sm_flag.exit
  %i.gv = load i8, ptr %i.cn, align 1, !tbaa !65  ; 2 uses
  %i.gw = and i8 %i.gv, -3
  %or.cond.i632 = icmp eq i8 %i.gw, 9
  %i.gx = icmp eq i8 %i.gv, 10
  %i.gy = or i1 %i.gx, %or.cond.i632
  %i.gz = select i1 %i.gy, i32 512, i32 %.0.i
  br label %.lr.ph668

.lr.ph668:                                        ; preds = %bb.k, %sm_flag.exit
  %.0.i633 = phi i32 [ %i.gz, %bb.k ], [ %.0.i, %sm_flag.exit ]
  %indvars.iv.next725 = add nuw nsw i64 %indvars.iv724, 16 ; 3 uses
  %i.ha = icmp samesign ult i64 %indvars.iv.next725, %i.el ; 2 uses
  %spec.select = select i1 %i.ha, i1 true, i1 %i.ew
  %.not605 = icmp eq i64 %indvars.iv724, 0        ; 3 uses
  %.not622.not650 = select i1 %.not605, i1 %.not653, i1 false
  %i.hb = trunc nuw nsw i64 %indvars.iv.next725 to i32 ; 2 uses
  %i.hc = call noundef i32 @llvm.smin.i32(i32 %i.al, i32 %i.hb) ; 2 uses
  %i.hd = load i32, ptr %i.q, align 4, !tbaa !64
  %i.he = add nsw i32 %i.hd, %.0577704            ; 2 uses
  store i32 %i.he, ptr %i.q, align 4, !tbaa !64
  %i.hf = trunc nuw nsw i64 %indvars.iv724 to i32 ; 2 uses
  %.pre = load i32, ptr %i.n, align 8, !tbaa !63
  %invariant.op = or i32 %.0.i633, %i.bs
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph668
  %i.hg = phi i32 [ %.pre, %.lr.ph668 ], [ %i.ny, %._crit_edge ] ; 2 uses
  %.0584666 = phi i32 [ %.0577704, %.lr.ph668 ], [ %i.ob, %._crit_edge ] ; 5 uses
  %storemerge665 = phi i32 [ %i.he, %.lr.ph668 ], [ %i.oc, %._crit_edge ]
  %i.hh = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.hi = load i64, ptr %i.bx, align 16, !tbaa !86
  %i.hj = add nsw i32 %i.hg, %i.hf                ; 2 uses
  store i32 %i.hj, ptr %i.n, align 8, !tbaa !63
  %i.hk = sext i32 %storemerge665 to i64
  %i.hl = mul nsw i64 %i.hi, %i.hk
  %i.hm = add i64 %i.hl, %indvars.iv724
  %i.hn = sext i32 %i.hg to i64
  %i.ho = add i64 %i.hm, %i.hn
  %i.hp = shl nsw i64 %i.ho, 2
  %i.hq = getelementptr inbounds i8, ptr %i.hh, i64 %i.hp
  %i.hr = icmp samesign ule i32 %.0584666, %.0577704
  %or.cond = and i1 %spec.select, %i.hr
  %i.hs = add nuw nsw i32 %.0584666, %i.s
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ht ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.ag
  %.0582662 = phi ptr [ %i.hq, %.lr.ph ], [ %i.nt, %bb.ag ] ; 4 uses
  %.0583661 = phi i32 [ %i.hf, %.lr.ph ], [ %i.nu, %bb.ag ] ; 6 uses
  %storemerge619660 = phi i32 [ %i.hj, %.lr.ph ], [ %i.nw, %bb.ag ] ; 2 uses
  %i.hv = load i8, ptr %i.bv, align 1, !tbaa !65
  %.not620 = icmp eq i8 %i.hv, 0
  br i1 %.not620, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.hw = load i8, ptr %i.cr, align 1, !tbaa !65
  %i.hx = sext i8 %i.hw to i32
  store i32 %i.hx, ptr %i.a, align 4, !tbaa !78
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hy = load i8, ptr %i.bd, align 8, !tbaa !81
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nuw nsw i32 %.0583661, %i.hz
  %i.ib = icmp slt i32 %i.ia, %i.hc
  %i.ic = zext i1 %i.ib to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %not.621 = phi i32 [ 1, %bb.m ], [ %i.ic, %bb.n ]
  %i.id = zext nneg i32 %.0583661 to i64
  %i.ie = icmp samesign ult i64 %indvars.iv724, %i.id ; 2 uses
  %brmerge = select i1 %i.ie, i1 true, i1 %.not622.not650
  %.mux = select i1 %i.ie, i32 0, i32 8
  br i1 %brmerge, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.if = load i8, ptr %i.cs, align 1, !tbaa !82
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nuw nsw i32 %.0584666, %i.ig
  %.not624 = icmp slt i32 %i.ih, %i.et
  %i.ii = select i1 %.not624, i32 8, i32 0
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ij = phi i32 [ %.mux, %bb.o ], [ %i.ii, %bb.p ]
  %i.ik = or disjoint i32 %i.ij, %not.621
  %i.il = load i32, ptr %i.q, align 4, !tbaa !64  ; 4 uses
  %i.im = load i32, ptr %i.ct, align 8, !tbaa !127
  %i.in = add nsw i32 %i.im, -1
  %i.io = and i32 %i.in, %i.il
  %.not625 = icmp eq i32 %i.io, 0
  br i1 %.not625, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ip = load ptr, ptr %i.cu, align 8, !tbaa !114
  %i.iq = load i32, ptr %i.cv, align 4, !tbaa !128
  %i.ir = ashr i32 %i.il, %i.iq
  %i.is = load i32, ptr %i.cw, align 8, !tbaa !129
  %i.it = shl nsw i32 %i.is, 7
  %i.iu = add nsw i32 %i.ir, -1
  %i.iv = mul nsw i32 %i.it, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds i8, ptr %i.ip, i64 %i.iw
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0581 = phi ptr [ null, %bb.q ], [ %i.ix, %bb.r ]
  %i.iy = load i32, ptr %i.cx, align 16, !tbaa !130
  %i.iz = icmp sgt i32 %storemerge619660, %i.iy
  %i.ja = zext i1 %i.iz to i32
  %i.jb = load i32, ptr %i.cy, align 8, !tbaa !131
  %i.jc = icmp sgt i32 %i.il, %i.jb
  %i.jd = zext i1 %i.jc to i32
  %i.je = load i32, ptr %i.cz, align 4, !tbaa !132
  %i.jf = load i32, ptr %i.da, align 4, !tbaa !133
  %i.jg = load i64, ptr %i.bx, align 16, !tbaa !86
  %i.jh = load i8, ptr %i.az, align 4, !tbaa !65
  %i.ji = zext i8 %i.jh to i32
  %i.jj = load i8, ptr %i.bd, align 8, !tbaa !81
  %i.jk = zext i8 %i.jj to i32                    ; 2 uses
  %i.jl = load i8, ptr %i.cs, align 1, !tbaa !82
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = load ptr, ptr %i.bn, align 8, !tbaa !115
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 394
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !182
  %i.jq = zext i8 %i.jp to i32
  %i.jr = call i32 @dav1d_prepare_intra_edges_8bpc(i32 noundef %storemerge619660, i32 noundef %i.ja, i32 noundef %i.il, i32 noundef %i.jd, i32 noundef %i.je, i32 noundef %i.jf, i32 noundef %i.ik, ptr noundef %.0582662, i64 noundef %i.jg, ptr noundef %.0581, i32 noundef %i.ji, ptr noundef nonnull %i.a, i32 noundef %i.jk, i32 noundef %i.jm, i32 noundef %i.jq, ptr noundef nonnull %i.bi) #9
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.js
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !69
  %i.jv = load i64, ptr %i.bx, align 16, !tbaa !86
  %i.jw = shl nuw nsw i32 %i.jk, 2
  %i.jx = shl nuw nsw i32 %i.jm, 2
  %i.jy = load i32, ptr %i.a, align 4, !tbaa !78
  %.reass.reass = or i32 %i.jy, %invariant.op
  %i.jz = load i32, ptr %i.ai, align 16, !tbaa !71
  %i.ka = load i32, ptr %i.n, align 8, !tbaa !63
  %i.kb = sub nsw i32 %i.jz, %i.ka
  %i.kc = shl nsw i32 %i.kb, 2
  %i.kd = load i32, ptr %i.am, align 4, !tbaa !72
  %i.ke = load i32, ptr %i.q, align 4, !tbaa !64
  %i.kf = sub nsw i32 %i.kd, %i.ke
  %i.kg = shl nsw i32 %i.kf, 2
  call void %i.ju(ptr noundef %.0582662, i64 noundef %i.jv, ptr noundef nonnull %i.bi, i32 noundef %i.jw, i32 noundef %i.jx, i32 noundef %.reass.reass, i32 noundef %i.kc, i32 noundef %i.kg) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.s
  %i.kh = load i8, ptr %i.dc, align 2, !tbaa !67
  %.not626 = icmp eq i8 %i.kh, 0
  br i1 %.not626, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ki = load i32, ptr %i.by, align 4, !tbaa !87 ; 2 uses
  %.not627 = icmp eq i32 %i.ki, 0
  br i1 %.not627, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kj = and i32 %i.ki, 1
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !79 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  store ptr %i.ko, ptr %i.km, align 8, !tbaa !79
  %i.kp = load i16, ptr %i.kn, align 2, !tbaa !75
  %i.kq = sext i16 %i.kp to i32                   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !77 ; 2 uses
  %i.kt = load i8, ptr %i.bd, align 8, !tbaa !81
  %i.ku = call i8 @llvm.umin.i8(i8 %i.kt, i8 8)
  %i.kv = load i8, ptr %i.cs, align 1, !tbaa !82
  %i.kw = call i8 @llvm.umin.i8(i8 %i.kv, i8 8)
  %narrow654 = mul nuw nsw i8 %i.kw, %i.ku
  %i.kx = zext nneg i8 %narrow654 to i64
  %.idx655 = shl nuw nsw i64 %i.kx, 5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx655
  store ptr %i.ky, ptr %i.kr, align 8, !tbaa !77
  %i.kz = ashr i32 %i.kq, 5
  %i.la = and i32 %i.kq, 31
  store i32 %i.la, ptr %i.b, align 4, !tbaa !78
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.lb = load ptr, ptr %i.ch, align 16, !tbaa !68
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = add nuw nsw i32 %.0583661, %i.p
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.le
  %i.lg = load i8, ptr %i.ba, align 2, !tbaa !65
  %i.lh = zext i8 %i.lg to i32
  %i.li = call fastcc i32 @decode_coefs(ptr noundef nonnull %0, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.hu, i32 noundef %i.lh, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.dg, ptr noundef %i.b, ptr noundef %i.c)
  %i.lj = load ptr, ptr %i.ch, align 16, !tbaa !68
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.le ; 2 uses
  %i.lm = load i8, ptr %i.c, align 1, !tbaa !65   ; 3 uses
  %i.ln = zext i8 %i.lm to i32                    ; 2 uses
  %i.lo = load i8, ptr %i.bd, align 8, !tbaa !81
  %i.lp = zext i8 %i.lo to i32
  %i.lq = load i32, ptr %i.ai, align 16, !tbaa !71
  %i.lr = load i32, ptr %i.n, align 8, !tbaa !63
  %i.ls = sub nsw i32 %i.lq, %i.lr
  %i.lt = call noundef i32 @llvm.smin.i32(i32 %i.lp, i32 %i.ls) ; 4 uses
  %i.lu = add i32 %i.lt, -1
  %or.cond.i635 = icmp ult i32 %i.lu, 32
  call void @llvm.assume(i1 %or.cond.i635)
  %i.lv = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.lt)
  %i.lw = icmp samesign ult i32 %i.lv, 2
  br i1 %i.lw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.lx = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.lt, i1 true)
  %i.ly = xor i32 %i.lx, 31
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.lz
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !69
  call void %i.mb(ptr noundef nonnull %i.ll, i32 noundef range(i32 0, 256) %i.ln) #9, !inline_history !0
  br label %dav1d_memset_likely_pow2.exit

bb.y:                                             ; preds = %bb.w
  %i.mc = zext nneg i32 %i.lt to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ll, i8 %i.lm, i64 %i.mc, i1 false)
  br label %dav1d_memset_likely_pow2.exit

dav1d_memset_likely_pow2.exit:                    ; preds = %bb.x, %bb.y
  %i.md = load i8, ptr %i.cs, align 1, !tbaa !82
  %i.me = zext i8 %i.md to i32
  %i.mf = load i32, ptr %i.am, align 4, !tbaa !72
  %i.mg = load i32, ptr %i.q, align 4, !tbaa !64
  %i.mh = sub nsw i32 %i.mf, %i.mg
  %i.mi = call noundef i32 @llvm.smin.i32(i32 %i.me, i32 %i.mh) ; 4 uses
  %i.mj = add i32 %i.mi, -1
  %or.cond.i636 = icmp ult i32 %i.mj, 32
  call void @llvm.assume(i1 %or.cond.i636)
  %i.mk = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.mi)
  %i.ml = icmp samesign ult i32 %i.mk, 2
  br i1 %i.ml, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %dav1d_memset_likely_pow2.exit
  %i.mm = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.mi, i1 true)
  %i.mn = xor i32 %i.mm, 31
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.mo
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !69
  call void %i.mq(ptr noundef nonnull %i.hu, i32 noundef range(i32 0, 256) %i.ln) #9, !inline_history !0
  br label %dav1d_memset_likely_pow2.exit637

bb.aa:                                            ; preds = %dav1d_memset_likely_pow2.exit
  %i.mr = zext nneg i32 %i.mi to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hu, i8 %i.lm, i64 %i.mr, i1 false)
  br label %dav1d_memset_likely_pow2.exit637

dav1d_memset_likely_pow2.exit637:                 ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ab

bb.ab:                                            ; preds = %dav1d_memset_likely_pow2.exit637, %bb.v
  %.0579 = phi ptr [ %i.ks, %bb.v ], [ %i.dg, %dav1d_memset_likely_pow2.exit637 ]
  %.0578 = phi i32 [ %i.kz, %bb.v ], [ %i.li, %dav1d_memset_likely_pow2.exit637 ] ; 2 uses
  %i.ms = icmp sgt i32 %.0578, -1
  br i1 %i.ms, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.mt = load i8, ptr %i.ba, align 2, !tbaa !65
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [136 x i8], ptr %i.dh, i64 %i.mu
  %i.mw = load i32, ptr %i.b, align 4, !tbaa !78
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mx
end_hunk_0
begin_hunk_1_@dav1d_recon_b_inter_8bpc:bb.a
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !65
  %i.aid = zext i8 %i.aic to i16
  store i16 %i.aid, ptr %i.c, align 2, !tbaa !75
  %i.aie = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.aif = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.aig = load i16, ptr %i.aif, align 2, !tbaa !65
  store i16 %i.aig, ptr %i.aie, align 2, !tbaa !75
  %.not1034 = icmp eq i8 %i.ae, 0
  br i1 %.not1034, label %.loopexit963, label %.preheader962.lr.ph

.preheader962.lr.ph:                              ; preds = %bb.cf
  %.not1035 = icmp eq i8 %i.ab, 0
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aia, i64 1 ; 2 uses
  %i.aii = zext i1 %i.t to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 258564
  %i.aik = getelementptr inbounds nuw i8, ptr %i.g, i64 13552
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 9344
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.k, i64 680
  br i1 %.not1035, label %.loopexit963, label %.preheader962.preheader

.preheader962.preheader:                          ; preds = %.preheader962.lr.ph
  %i.air = zext i8 %i.ae to i64
  %i.ais = sext i32 %i.an to i64
  %.pre1095.pre = load i32, ptr %i.o, align 4, !tbaa !64
  %i.ait = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.aiu = insertelement <2 x i32> %i.ait, i32 %i.u, i64 1
  br label %.preheader962

.preheader962:                                    ; preds = %.preheader962.preheader, %._crit_edge
  %.pre1095 = phi i32 [ %.pre1095.pre, %.preheader962.preheader ], [ %i.ark, %._crit_edge ]
  %indvars.iv1081 = phi i64 [ 0, %.preheader962.preheader ], [ %indvars.iv.next1082, %._crit_edge ] ; 5 uses
  %.08851031 = phi ptr [ %i.bi, %.preheader962.preheader ], [ %i.alf, %._crit_edge ]
  %i.aiv = icmp ne i64 %indvars.iv1081, 0
  %i.aiw = zext i1 %i.aiv to i32
  %i.aix = shl nuw nsw i64 %indvars.iv1081, 2     ; 2 uses
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 16 ; 3 uses
  %i.aiy = trunc nuw nsw i64 %indvars.iv.next1082 to i32 ; 2 uses
  %i.aiz = call noundef i32 @llvm.smin.i32(i32 %i.an, i32 %i.aiy) ; 2 uses
  %i.aja = icmp slt i64 %indvars.iv1081, %i.ais
  %i.ajb = trunc nuw nsw i64 %indvars.iv1081 to i32 ; 6 uses
  %i.ajc = lshr exact i32 %i.ajb, %i.u            ; 5 uses
  %i.ajd = lshr exact i32 %i.aiy, %i.u
  %i.aje = call i32 @llvm.smin.i32(i32 %i.age, i32 %i.ajd) ; 5 uses
  %i.ajf = icmp slt i32 %i.ajc, %i.aje
  br label %bb.cg

._crit_edge:                                      ; preds = %.loopexit
  %i.ajg = icmp samesign ult i64 %indvars.iv.next1082, %i.air
  br i1 %i.ajg, label %.preheader962, label %.loopexit963

bb.cg:                                            ; preds = %.preheader962, %.loopexit
  %i.ajh = phi i32 [ %.pre1095, %.preheader962 ], [ %i.ark, %.loopexit ]
  %.08411029 = phi i32 [ 0, %.preheader962 ], [ %.pre-phi, %.loopexit ] ; 9 uses
  %.18861028 = phi ptr [ %.08851031, %.preheader962 ], [ %i.alf, %.loopexit ]
  %i.aji = load i64, ptr %i.bc, align 16, !tbaa !86 ; 4 uses
  %i.ajj = mul i64 %i.aix, %i.aji
  %i.ajk = getelementptr inbounds i8, ptr %.18861028, i64 %i.ajj ; 3 uses
  %i.ajl = add nsw i32 %i.ajh, %i.ajb             ; 3 uses
  store i32 %i.ajl, ptr %i.o, align 4, !tbaa !64
  br i1 %i.aja, label %.lr.ph991, label %._crit_edge992

.lr.ph991:                                        ; preds = %bb.cg
  %i.ajm = icmp ne i32 %.08411029, 0
  %i.ajn = zext i1 %i.ajm to i32
  %i.ajo = add nuw nsw i32 %.08411029, 16
  %i.ajp = call noundef i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ajo)
  %i.ajq = icmp sgt i32 %i.aj, %.08411029
  br i1 %i.ajq, label %.lr.ph.us.preheader, label %.lr.ph991.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph991
  %.pre1096 = load i32, ptr %i.l, align 8, !tbaa !63
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ajr = phi i32 [ %i.akl, %._crit_edge.us ], [ %.pre1096, %.lr.ph.us.preheader ]
  %.0838989.us = phi i32 [ %i.akp, %._crit_edge.us ], [ %i.ajb, %.lr.ph.us.preheader ]
  %.0840988.us = phi i32 [ %i.akq, %._crit_edge.us ], [ %i.aiw, %.lr.ph.us.preheader ] ; 2 uses
  %.2887987.us = phi ptr [ %i.akk, %._crit_edge.us ], [ %i.ajk, %.lr.ph.us.preheader ] ; 2 uses
  %i.ajs = add nsw i32 %i.ajr, %.08411029
  store i32 %i.ajs, ptr %i.l, align 8, !tbaa !63
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.us, %bb.ch
  %.0836986.us = phi i32 [ %i.ajn, %.lr.ph.us ], [ %i.akd, %bb.ch ] ; 2 uses
  %.0837985.us = phi i32 [ %.08411029, %.lr.ph.us ], [ %i.akc, %bb.ch ] ; 3 uses
  %i.ajt = load i8, ptr %i.ahx, align 2, !tbaa !65
  %i.aju = zext i8 %i.ajt to i32
  %i.ajv = shl nuw nsw i32 %.0837985.us, 2
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw i8, ptr %.2887987.us, i64 %i.ajw
  call fastcc void @read_coef_tree(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.aju, i32 noundef 0, ptr noundef %i.c, i32 noundef %.0836986.us, i32 noundef %.0840988.us, ptr noundef %i.ajx)
  %i.ajy = load i8, ptr %i.aia, align 8, !tbaa !81
  %i.ajz = zext i8 %i.ajy to i32                  ; 2 uses
  %i.aka = load i32, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %i.akb = add nsw i32 %i.aka, %i.ajz
  store i32 %i.akb, ptr %i.l, align 8, !tbaa !63
  %i.akc = add nuw nsw i32 %.0837985.us, %i.ajz   ; 2 uses
  %i.akd = add nuw nsw i32 %.0836986.us, 1
  %i.ake = icmp slt i32 %i.akc, %i.ajp
  br i1 %i.ake, label %bb.ch, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.ch
  %i.akf = load i64, ptr %i.bc, align 16, !tbaa !86 ; 2 uses
  %i.akg = shl nsw i64 %i.akf, 2
  %i.akh = load i8, ptr %i.aih, align 1, !tbaa !82 ; 2 uses
  %i.aki = zext i8 %i.akh to i64
  %i.akj = mul nsw i64 %i.akg, %i.aki
  %i.akk = getelementptr inbounds i8, ptr %.2887987.us, i64 %i.akj ; 2 uses
  %i.akl = sub nsw i32 %i.aka, %.0837985.us       ; 2 uses
  store i32 %i.akl, ptr %i.l, align 8, !tbaa !63
  %i.akm = zext i8 %i.akh to i32                  ; 2 uses
  %i.akn = load i32, ptr %i.o, align 4, !tbaa !64
  %i.ako = add nsw i32 %i.akn, %i.akm             ; 2 uses
  store i32 %i.ako, ptr %i.o, align 4, !tbaa !64
  %i.akp = add nuw nsw i32 %.0838989.us, %i.akm   ; 3 uses
  %i.akq = add nuw nsw i32 %.0840988.us, 1
  %i.akr = icmp slt i32 %i.akp, %i.aiz
  br i1 %i.akr, label %.lr.ph.us, label %._crit_edge992

.lr.ph991.split:                                  ; preds = %.lr.ph991
  %i.aks = shl nsw i64 %i.aji, 2
  %i.akt = load i8, ptr %i.aih, align 1, !tbaa !82 ; 2 uses
  %i.aku = zext i8 %i.akt to i64
  %i.akv = mul nsw i64 %i.aks, %i.aku
  %i.akw = zext i8 %i.akt to i32                  ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph991.split, %bb.ci
  %i.akx = phi i32 [ %i.ajl, %.lr.ph991.split ], [ %i.akz, %bb.ci ]
  %.0838989 = phi i32 [ %i.ajb, %.lr.ph991.split ], [ %i.ala, %bb.ci ]
  %.2887987 = phi ptr [ %i.ajk, %.lr.ph991.split ], [ %i.aky, %bb.ci ]
  %i.aky = getelementptr inbounds i8, ptr %.2887987, i64 %i.akv ; 2 uses
  %i.akz = add nsw i32 %i.akx, %i.akw             ; 2 uses
  %i.ala = add nuw nsw i32 %.0838989, %i.akw      ; 3 uses
  %i.alb = icmp slt i32 %i.ala, %i.aiz
  br i1 %i.alb, label %bb.ci, label %._crit_edge992

._crit_edge992:                                   ; preds = %bb.ci, %._crit_edge.us, %bb.cg
  %i.alc = phi i32 [ %i.ajl, %bb.cg ], [ %i.ako, %._crit_edge.us ], [ %i.akz, %bb.ci ]
  %i.ald = phi i64 [ %i.aji, %bb.cg ], [ %i.akf, %._crit_edge.us ], [ %i.aji, %bb.ci ]
  %.2887.lcssa = phi ptr [ %i.ajk, %bb.cg ], [ %i.akk, %._crit_edge.us ], [ %i.aky, %bb.ci ]
  %.0838.lcssa = phi i32 [ %i.ajb, %bb.cg ], [ %i.akp, %._crit_edge.us ], [ %i.ala, %bb.ci ] ; 2 uses
  %i.ale = zext nneg i32 %.0838.lcssa to i64
  %.neg = mul nsw i64 %i.ale, -4
  %.neg930 = mul i64 %.neg, %i.ald
  %i.alf = getelementptr inbounds i8, ptr %.2887.lcssa, i64 %.neg930 ; 2 uses
  %i.alg = sub nsw i32 %i.alc, %.0838.lcssa       ; 4 uses
  store i32 %i.alg, ptr %i.o, align 4, !tbaa !64
  br i1 %i.as, label %.preheader, label %._crit_edge992..loopexit_crit_edge

._crit_edge992..loopexit_crit_edge:               ; preds = %._crit_edge992
  %.pre1110 = add nuw nsw i32 %.08411029, 16
  br label %.loopexit

.preheader:                                       ; preds = %._crit_edge992
  %i.alh = lshr exact i32 %.08411029, %i.w        ; 2 uses
  %i.ali = add nuw nsw i32 %.08411029, 16         ; 3 uses
  %i.alj = lshr exact i32 %i.ali, %i.w
  %i.alk = call i32 @llvm.smin.i32(i32 %i.agc, i32 %i.alj) ; 2 uses
  %i.all = icmp slt i32 %i.alh, %i.alk
  br i1 %i.ajf, label %.lr.ph1005.us.preheader, label %.loopexit

.lr.ph1005.us.preheader:                          ; preds = %.preheader
  %.pre1097 = load i64, ptr %i.bn, align 8, !tbaa !86
  br label %.lr.ph1005.us

.lr.ph1005.us:                                    ; preds = %.lr.ph1005.us.preheader, %._crit_edge1006.us
  %i.alm = phi i32 [ %i.alg, %.lr.ph1005.us.preheader ], [ %i.arj, %._crit_edge1006.us ]
  %i.aln = phi i64 [ %.pre1097, %.lr.ph1005.us.preheader ], [ %i.arh, %._crit_edge1006.us ] ; 3 uses
  %i.alo = phi i1 [ true, %.lr.ph1005.us.preheader ], [ false, %._crit_edge1006.us ]
  %indvars.iv1078 = phi i64 [ 0, %.lr.ph1005.us.preheader ], [ 1, %._crit_edge1006.us ] ; 4 uses
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 2 uses
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next1079
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !69
  %i.alr = add nsw i32 %i.alm, %i.ajb             ; 3 uses
  store i32 %i.alr, ptr %i.o, align 4, !tbaa !64
  %i.als = getelementptr inbounds nuw [32 x i8], ptr %i.aip, i64 %indvars.iv1078
  br i1 %i.all, label %.lr.ph.us1008.us.preheader, label %.lr.ph1005.split.us1019

.lr.ph.us1008.us.preheader:                       ; preds = %.lr.ph1005.us
  %i.alt = getelementptr inbounds i8, ptr %i.alq, i64 %i.br
  %i.alu = mul i64 %i.aix, %i.aln
  %i.alv = ashr exact i64 %i.alu, %i.aii
  %i.alw = getelementptr inbounds i8, ptr %i.alt, i64 %i.alv
  %.pre1098 = load i32, ptr %i.l, align 8, !tbaa !63
  %i.alx = trunc nuw nsw i64 %indvars.iv.next1079 to i32
  br label %.lr.ph.us1008.us

.lr.ph1005.split.us1019:                          ; preds = %.lr.ph1005.us
  %i.aly = load i8, ptr %i.ail, align 1, !tbaa !82 ; 2 uses
  %i.alz = zext i8 %i.aly to i32                  ; 5 uses
  %i.ama = shl nuw nsw i32 %i.alz, %i.u           ; 2 uses
  %i.amb = add nuw nsw i32 %i.ajc, %i.alz         ; 3 uses
  %i.amc = call i32 @llvm.smax.i32(i32 %i.aje, i32 %i.amb)
  %i.amd = icmp slt i32 %i.amb, %i.aje
  %i.ame = zext i1 %i.amd to i32                  ; 2 uses
  %i.amf = add nuw i32 %i.amb, %i.ame
  %i.amg = sub i32 %i.amc, %i.amf
  %i.amh = call i32 @llvm.umax.i32(i32 %i.alz, i32 1)
  %i.ami = udiv i32 %i.amg, %i.amh
  %i.amj = add i32 %i.ami, %i.ame
  %i.amk = add i32 %i.amj, 1                      ; 3 uses
  %min.iters.check = icmp ult i32 %i.amk, 8
  %ident.check = icmp eq i8 %i.aly, 0
  %or.cond1208 = or i1 %min.iters.check, %ident.check
  br i1 %or.cond1208, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1005.split.us1019
  %n.vec = and i32 %i.amk, -8                     ; 3 uses
  %i.aml = mul i32 %n.vec, %i.alz
  %i.amm = add i32 %i.ajc, %i.aml                 ; 2 uses
  %i.amn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.alr, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ama, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.amn, %vector.ph ], [ %i.amo, %vector.body ]
  %vec.phi1207 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.amp, %vector.body ]
  %i.amo = add <4 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %i.amp = add <4 x i32> %vec.phi1207, %broadcast.splat ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.amq = icmp eq i32 %index.next, %n.vec
  br i1 %i.amq, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.amp, %i.amo
  %i.amr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.amk, %n.vec
  br i1 %cmp.n, label %._crit_edge1006.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1005.split.us1019, %middle.block
  %.ph = phi i32 [ %i.alr, %.lr.ph1005.split.us1019 ], [ %i.amr, %middle.block ]
  %.18391002.us1021.ph = phi i32 [ %i.ajc, %.lr.ph1005.split.us1019 ], [ %i.amm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ams = phi i32 [ %i.amt, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.18391002.us1021 = phi i32 [ %i.amu, %scalar.ph ], [ %.18391002.us1021.ph, %scalar.ph.preheader ]
  %i.amt = add nsw i32 %i.ams, %i.ama             ; 2 uses
  %i.amu = add nuw nsw i32 %.18391002.us1021, %i.alz ; 3 uses
  %i.amv = icmp slt i32 %i.amu, %i.aje
  br i1 %i.amv, label %scalar.ph, label %._crit_edge1006.us, !llvm.loop !186

.lr.ph.us1008.us:                                 ; preds = %.lr.ph.us1008.us.preheader, %._crit_edge.us1009.us
  %i.amw = phi i32 [ %i.aqz, %._crit_edge.us1009.us ], [ %.pre1098, %.lr.ph.us1008.us.preheader ]
  %.08341003.us.us = phi ptr [ %i.aqx, %._crit_edge.us1009.us ], [ %i.alw, %.lr.ph.us1008.us.preheader ] ; 2 uses
  %.18391002.us.us = phi i32 [ %i.are, %._crit_edge.us1009.us ], [ %i.ajc, %.lr.ph.us1008.us.preheader ] ; 3 uses
  %i.amx = add nsw i32 %i.amw, %.08411029
  store i32 %i.amx, ptr %i.l, align 8, !tbaa !63
  %i.amy = shl nuw i32 %.18391002.us.us, %i.u
  %i.amz = add nsw i32 %i.amy, %i.q
  %i.ana = shl nsw i32 %i.amz, 5
  %i.anb = or disjoint i32 %i.ana, %i.n
  %i.anc = add nuw nsw i32 %.18391002.us.us, %i.y
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.als, i64 %i.and ; 3 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cs, %.lr.ph.us1008.us
  %.08331001.us.us = phi i32 [ %i.alh, %.lr.ph.us1008.us ], [ %i.aqr, %bb.cs ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.anf = load i32, ptr %i.aij, align 4, !tbaa !87 ; 2 uses
  %.not931.us.us = icmp eq i32 %i.anf, 0
  br i1 %.not931.us.us, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ang = and i32 %i.anf, 1
  %i.anh = zext nneg i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [24 x i8], ptr %i.aik, i64 %i.anh ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8 ; 2 uses
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !79 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 2
  store ptr %i.anl, ptr %i.anj, align 8, !tbaa !79
  %i.anm = load i16, ptr %i.ank, align 2, !tbaa !75
  %i.ann = sext i16 %i.anm to i32                 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ani, i64 16 ; 2 uses
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !77 ; 2 uses
  %i.anq = load i8, ptr %i.ahw, align 8, !tbaa !81 ; 2 uses
  %i.anr = zext i8 %i.anq to i64
  %i.ans = load i8, ptr %i.ail, align 1, !tbaa !82 ; 2 uses
  %i.ant = zext i8 %i.ans to i64
  %i.anu = shl nuw nsw i64 %i.anr, 5
  %.idx.us.us = mul nuw nsw i64 %i.anu, %i.ant
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anp, i64 %.idx.us.us
  store ptr %i.anv, ptr %i.ano, align 8, !tbaa !77
  %i.anw = ashr i32 %i.ann, 5
  %i.anx = and i32 %i.ann, 31
  store i32 %i.anx, ptr %i.d, align 4, !tbaa !78
  br label %bb.cq

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.any = shl nuw i32 %.08331001.us.us, %i.w
  %i.anz = add nsw i32 %i.anb, %i.any
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = getelementptr inbounds i8, ptr %i.ain, i64 %i.aoa
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !65
  %i.aod = zext i8 %i.aoc to i32
  store i32 %i.aod, ptr %i.d, align 4, !tbaa !78
  %i.aoe = load ptr, ptr %i.aio, align 16, !tbaa !68
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 64
  %i.aog = getelementptr inbounds nuw [32 x i8], ptr %i.aof, i64 %indvars.iv1078
  %i.aoh = add nuw nsw i32 %.08331001.us.us, %i.x
  %i.aoi = zext nneg i32 %i.aoh to i64            ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 %i.aoi
  %i.aok = load i8, ptr %i.aht, align 1, !tbaa !73
  %i.aol = zext i8 %i.aok to i32
  %i.aom = call fastcc i32 @decode_coefs(ptr noundef nonnull %0, ptr noundef nonnull %i.aoj, ptr noundef nonnull %i.ane, i32 noundef %i.aol, i32 noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %i.alx, ptr noundef nonnull %i.aim, ptr noundef %i.d, ptr noundef %i.e)
  %i.aon = load i8, ptr %i.ahw, align 8, !tbaa !81 ; 2 uses
  %i.aoo = zext i8 %i.aon to i32
  %i.aop = load i8, ptr %i.ail, align 1, !tbaa !82 ; 2 uses
  %i.aoq = zext i8 %i.aop to i32
  %i.aor = load <2 x i32>, ptr %i.ag, align 16, !tbaa !78
  %i.aos = load <2 x i32>, ptr %i.l, align 8, !tbaa !78
  %i.aot = add <2 x i32> %i.aor, %i.aiu
  %i.aou = sub <2 x i32> %i.aot, %i.aos           ; 2 uses
  %i.aov = extractelement <2 x i32> %i.aou, i64 0
  %i.aow = ashr i32 %i.aov, %i.w
  %i.aox = call noundef i32 @llvm.smin.i32(i32 %i.aoo, i32 %i.aow) ; 4 uses
  %i.aoy = extractelement <2 x i32> %i.aou, i64 1
  %i.aoz = ashr i32 %i.aoy, %i.u
  %i.apa = call noundef i32 @llvm.smin.i32(i32 %i.aoq, i32 %i.aoz) ; 4 uses
  %i.apb = load ptr, ptr %i.aio, align 16, !tbaa !68
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 64
  %i.apd = getelementptr inbounds nuw [32 x i8], ptr %i.apc, i64 %indvars.iv1078
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.aoi ; 2 uses
  %i.apf = load i8, ptr %i.e, align 1, !tbaa !65  ; 3 uses
  %i.apg = zext i8 %i.apf to i32                  ; 2 uses
  %i.aph = add i32 %i.aox, -1
  %or.cond.i.us.us = icmp ult i32 %i.aph, 32
  call void @llvm.assume(i1 %or.cond.i.us.us)
  %i.api = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.aox)
  %i.apj = icmp samesign ult i32 %i.api, 2
  br i1 %i.apj, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.apk = zext nneg i32 %i.aox to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ape, i8 %i.apf, i64 %i.apk, i1 false)
  br label %dav1d_memset_likely_pow2.exit.us.us

bb.cn:                                            ; preds = %bb.cl
  %i.apl = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.aox, i1 true)
  %i.apm = xor i32 %i.apl, 31
  %i.apn = zext nneg i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.apn
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !69
  call void %i.app(ptr noundef nonnull %i.ape, i32 noundef range(i32 0, 256) %i.apg) #9, !inline_history !0
  br label %dav1d_memset_likely_pow2.exit.us.us

dav1d_memset_likely_pow2.exit.us.us:              ; preds = %bb.cn, %bb.cm
  %i.apq = add i32 %i.apa, -1
  %or.cond.i943.us.us = icmp ult i32 %i.apq, 32
  call void @llvm.assume(i1 %or.cond.i943.us.us)
  %i.apr = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.apa)
  %i.aps = icmp samesign ult i32 %i.apr, 2
  br i1 %i.aps, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %dav1d_memset_likely_pow2.exit.us.us
  %i.apt = zext nneg i32 %i.apa to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ane, i8 %i.apf, i64 %i.apt, i1 false)
  br label %dav1d_memset_likely_pow2.exit944.us.us

bb.cp:                                            ; preds = %dav1d_memset_likely_pow2.exit.us.us
  %i.apu = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.apa, i1 true)
  %i.apv = xor i32 %i.apu, 31
  %i.apw = zext nneg i32 %i.apv to i64
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.apw
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !69
  call void %i.apy(ptr noundef nonnull %i.ane, i32 noundef range(i32 0, 256) %i.apg) #9, !inline_history !0
  br label %dav1d_memset_likely_pow2.exit944.us.us

dav1d_memset_likely_pow2.exit944.us.us:           ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.cq

bb.cq:                                            ; preds = %dav1d_memset_likely_pow2.exit944.us.us, %bb.ck
  %i.apz = phi i8 [ %i.ans, %bb.ck ], [ %i.aop, %dav1d_memset_likely_pow2.exit944.us.us ] ; 2 uses
  %i.aqa = phi i8 [ %i.anq, %bb.ck ], [ %i.aon, %dav1d_memset_likely_pow2.exit944.us.us ]
  %.0832.us.us = phi ptr [ %i.anp, %bb.ck ], [ %i.aim, %dav1d_memset_likely_pow2.exit944.us.us ]
  %.0831.us.us = phi i32 [ %i.anw, %bb.ck ], [ %i.aom, %dav1d_memset_likely_pow2.exit944.us.us ] ; 2 uses
  %i.aqb = icmp sgt i32 %.0831.us.us, -1
  br i1 %i.aqb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.aqc = load i8, ptr %i.aht, align 1, !tbaa !73
  %i.aqd = zext i8 %i.aqc to i64
  %i.aqe = getelementptr inbounds nuw [136 x i8], ptr %i.aiq, i64 %i.aqd
  %i.aqf = load i32, ptr %i.d, align 4, !tbaa !78
  %i.aqg = zext i32 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %i.aqg
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !69
  %i.aqj = shl nuw nsw i32 %.08331001.us.us, 2
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw i8, ptr %.08341003.us.us, i64 %i.aqk
  %i.aqm = load i64, ptr %i.bn, align 8, !tbaa !86
end_hunk_1
