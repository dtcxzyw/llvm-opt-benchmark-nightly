Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@qoa_decode_header:bb.a
  %i.i = or disjoint i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 40
  %i.n = or disjoint i64 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 32
  %i.s = or disjoint i64 %i.n, %i.r
  %.not = icmp eq i64 %i.s, 8173858939415298048
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 1              ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.v, ptr %i.w, align 4
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ac, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag            ; 2 uses
  %i.am = zext i8 %i.y to i32
  store i32 %i.am, ptr %2, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.al, ptr %i.an, align 4
  %i.ao = icmp eq i8 %i.y, 0
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp eq i32 %i.al, 0
  %spec.select = select i1 %i.ap, i32 0, i32 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @qoa_decode_frame(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #20 {
bb.a:
  store i32 0, ptr %4, align 4
  %i.a = load i32, ptr %2, align 4                ; 7 uses
  %i.b = shl i32 %i.a, 4                          ; 2 uses
  %i.c = or disjoint i32 %i.b, 8
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 5 uses
  %i.n = zext i8 %i.e to i32
  %.not = icmp eq i32 %i.a, %i.n
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.u, %i.q               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 16
  %i.ai = or disjoint i32 %i.ad, %i.ah
  %reass.sub = sub nsw i32 %i.v, %i.b
  %i.aj = add nsw i32 %reass.sub, -8
  %i.ak = lshr i32 %i.aj, 3
  %i.al = mul i32 %i.ak, 20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %.not88 = icmp ne i32 %i.ai, %i.an
  %i.ao = icmp ugt i32 %i.v, %1
  %or.cond = or i1 %i.ao, %.not88
  %i.ap = mul nuw nsw i32 %i.m, %i.a
  %i.aq = icmp ugt i32 %i.ap, %i.al
  %or.cond90 = select i1 %or.cond, i1 true, i1 %i.aq
  br i1 %or.cond90, label %bb.g, label %.preheader97

.preheader97:                                     ; preds = %bb.c
  %.not116 = icmp eq i8 %i.e, 0
  br i1 %.not116, label %._crit_edge113, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader97
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.f

.preheader96.thread:                              ; preds = %bb.f
  %i.as = trunc nuw nsw i64 %indvars.iv.next123 to i32 ; 2 uses
  %.not117144 = icmp eq i32 %i.m, 0
  br i1 %.not117144, label %._crit_edge113, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader96.thread
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = zext nneg i32 %i.m to i64
  %i.av = zext nneg i32 %i.a to i64               ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge109.us
  %indvars.iv132 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next133, %._crit_edge109.us ] ; 2 uses
  %.195111.us = phi i32 [ %i.as, %.preheader.us.preheader ], [ %i.bb, %._crit_edge109.us ]
  %i.aw = mul nuw nsw i64 %indvars.iv132, %i.av   ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 20 ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next133 to i32
  %..i.us = tail call i32 @llvm.smin.i32(i32 range(i32 -32770, 65555) %i.ax, i32 %i.m)
  %i.ay = mul nuw nsw i32 %..i.us, %i.a
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp samesign ult i64 %i.aw, %i.az
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %._crit_edge.us
  %indvars.iv127 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next128, %._crit_edge.us ] ; 4 uses
  %.2106.us = phi i32 [ %.195111.us, %.preheader.us ], [ %i.bb, %._crit_edge.us ] ; 2 uses
  %i.bb = add i32 %.2106.us, 8                    ; 3 uses
  %i.bc = add nuw nsw i64 %indvars.iv127, %i.az
  br i1 %i.ba, label %.lr.ph105.us, label %._crit_edge.us

bb.e:                                             ; preds = %.lr.ph105.us, %bb.e
  %i.bd = phi i32 [ %.pre138, %.lr.ph105.us ], [ %.0.i.us, %bb.e ]
  %.076104.us = phi i32 [ %i.en, %.lr.ph105.us ], [ %i.co, %bb.e ] ; 2 uses
  %.077103.us = phi i64 [ %i.ef, %.lr.ph105.us ], [ %i.cc, %bb.e ] ; 2 uses
  %i.be = phi <4 x i32> [ %i.eo, %.lr.ph105.us ], [ %i.cn, %bb.e ] ; 4 uses
  %i.bf = load i32, ptr %i.eh, align 4
  %i.bg = extractelement <4 x i32> %i.be, i64 0
  %i.bh = mul nsw i32 %i.bf, %i.bg
  %i.bi = load i32, ptr %i.ej, align 4
  %i.bj = extractelement <4 x i32> %i.be, i64 1
  %i.bk = mul nsw i32 %i.bi, %i.bj
  %i.bl = add nsw i32 %i.bk, %i.bh
  %i.bm = load i32, ptr %i.ek, align 4
  %i.bn = extractelement <4 x i32> %i.be, i64 2
  %i.bo = mul nsw i32 %i.bm, %i.bn
  %i.bp = add nsw i32 %i.bl, %i.bo
  %i.bq = extractelement <4 x i32> %i.be, i64 3
  %i.br = mul nsw i32 %i.bd, %i.bq
  %i.bs = add nsw i32 %i.bp, %i.br
  %i.bt = ashr i32 %i.bs, 13
  %i.bu = lshr i64 %.077103.us, 61
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = add nsw i32 %i.bt, %i.bw
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 -32768)
  %.0.i.us = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.by, i32 32767) ; 3 uses
  %i.bz = trunc nsw i32 %.0.i.us to i16
  %i.ca = sext i32 %.076104.us to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ca
  store i16 %i.bz, ptr %i.cb, align 2
  %i.cc = shl i64 %.077103.us, 3
  %i.cd = ashr i32 %i.bw, 4                       ; 2 uses
  %i.ce = sub nsw i32 0, %i.cd
  %i.cf = load <4 x i32>, ptr %i.eh, align 4
  %i.cg = icmp slt <4 x i32> %i.cf, zeroinitializer
  %i.ch = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cl = select <4 x i1> %i.cg, <4 x i32> %i.ci, <4 x i32> %i.ck
  %i.cm = load <4 x i32>, ptr %i.ei, align 4
  %i.cn = add nsw <4 x i32> %i.cl, %i.cm          ; 2 uses
  store <4 x i32> %i.cn, ptr %i.ei, align 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eh, ptr noundef nonnull align 4 dereferenceable(12) %i.ej, i64 12, i1 false)
  store i32 %.0.i.us, ptr %i.el, align 4
  %i.co = add i32 %.076104.us, %i.a               ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp sgt i64 %i.bc, %i.cp
  br i1 %i.cq, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.e, %bb.d
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %i.av
  br i1 %exitcond131.not, label %._crit_edge109.us, label %bb.d

.lr.ph105.us:                                     ; preds = %bb.d
  %i.cr = add nuw nsw i64 %indvars.iv127, %i.aw
  %i.cs = zext i32 %.2106.us to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 48
  %i.db = load i8, ptr %i.ct, align 1
  %i.dc = zext i8 %i.db to i64                    ; 2 uses
  %i.dd = shl nuw i64 %i.dc, 56
  %i.de = or disjoint i64 %i.da, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 40
  %i.dj = or disjoint i64 %i.de, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 3
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dj, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 24
  %i.dt = or disjoint i64 %i.do, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 5
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 16
  %i.dy = or disjoint i64 %i.dt, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 7
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i64
  %i.ec = or disjoint i64 %i.dy, %i.eb
  %i.ed = shl nuw nsw i64 %i.cw, 12
  %i.ee = shl i64 %i.ec, 4
  %i.ef = or i64 %i.ed, %i.ee
  %i.eg = lshr i64 %i.dc, 4
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %indvars.iv127 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 12 ; 2 uses
  %i.em = getelementptr inbounds nuw [32 x i8], ptr @qoa_dequant_tab, i64 %i.eg
  %i.en = trunc nuw nsw i64 %i.cr to i32
  %i.eo = load <4 x i32>, ptr %i.ei, align 4
  %.pre138 = load i32, ptr %i.el, align 4
  br label %bb.e

._crit_edge109.us:                                ; preds = %._crit_edge.us
  %i.ep = icmp samesign ult i64 %indvars.iv.next133, %i.au
  br i1 %i.ep, label %.preheader.us, label %._crit_edge113

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv122 = phi i64 [ 8, %.lr.ph ], [ %indvars.iv.next123, %bb.f ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv122 ; 8 uses
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i64
  %i.et = shl nuw i64 %i.es, 56
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 48
  %i.ey = or disjoint i64 %i.ex, %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i64
  %i.fc = shl nuw i64 %i.fb, 56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 48
  %i.fh = or disjoint i64 %i.fc, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i64
  %i.fl = shl nuw i64 %i.fk, 56
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eq, i64 5
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 48
  %i.fq = or disjoint i64 %i.fl, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 6
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eq, i64 7
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv122 ; 8 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw i64 %i.ga, 56
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 9
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 48
  %i.gg = or disjoint i64 %i.gf, %i.gb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 10
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i64
  %i.gk = shl nuw i64 %i.gj, 56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 11
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = zext i8 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 48
  %i.gp = or disjoint i64 %i.gk, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = zext i8 %i.gr to i64
  %i.gt = shl nuw i64 %i.gs, 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fx, i64 13
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = zext i8 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 48
  %i.gy = or disjoint i64 %i.gt, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fx, i64 14
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fx, i64 15
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv ; 8 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = ashr exact i64 %i.ey, 48
  %i.hi = trunc nsw i64 %i.hh to i32
  store i32 %i.hi, ptr %i.hf, align 4
  %i.hj = ashr exact i64 %i.gg, 48
  %i.hk = trunc nsw i64 %i.hj to i32
  store i32 %i.hk, ptr %i.hg, align 4
  %i.hl = ashr exact i64 %i.fh, 48
  %i.hm = trunc nsw i64 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 %i.hm, ptr %i.hn, align 4
  %i.ho = ashr exact i64 %i.gp, 48
  %i.hp = trunc nsw i64 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  store i32 %i.hp, ptr %i.hq, align 4
  %i.hr = ashr exact i64 %i.fq, 48
  %i.hs = trunc nsw i64 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 %i.hs, ptr %i.ht, align 4
  %i.hu = shl nuw i64 %i.ft, 56
  %i.hv = shl nuw nsw i64 %i.fw, 48
  %i.hw = or disjoint i64 %i.hu, %i.hv
  %i.hx = ashr exact i64 %i.gy, 48
  %i.hy = trunc nsw i64 %i.hx to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store i32 %i.hy, ptr %i.hz, align 4
  %i.ia = shl nuw i64 %i.hb, 56
  %i.ib = shl nuw nsw i64 %i.he, 48
  %i.ic = or disjoint i64 %i.ia, %i.ib
  %i.id = ashr exact i64 %i.hw, 48
  %i.ie = trunc nsw i64 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 %i.ie, ptr %i.if, align 4
  %i.ig = ashr exact i64 %i.ic, 48
  %i.ih = trunc nsw i64 %i.ig to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hf, i64 28
  store i32 %i.ih, ptr %i.ii, align 4
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader96.thread, label %bb.f

._crit_edge113:                                   ; preds = %._crit_edge109.us, %.preheader97, %.preheader96.thread
  %.195.lcssa = phi i32 [ 8, %.preheader97 ], [ %i.as, %.preheader96.thread ], [ %i.bb, %._crit_edge109.us ]
  store i32 %i.m, ptr %4, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge113, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.195.lcssa, %._crit_edge113 ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoa_decode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #49 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp slt i32 %1, 16
  br i1 %i.b, label %qoa_decode_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1
  %i.d = zext i8 %i.c to i64
end_hunk_0
