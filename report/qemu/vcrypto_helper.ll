Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vcrypto_helper?download=true
inline.NumInlined: 368
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@helper_vsm3c_vi:bb.a
  %i.i = shl i32 %4, 18
  %i.j = ashr i32 %i.i, 29
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.l = shl nuw nsw i32 %i.h, %i.k
  %i.m = lshr i32 %4, 14
  %i.n = and i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4616 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %.not = icmp ult i32 %i.p, %i.r
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.s = lshr i32 %i.p, 3
  %i.t = lshr i32 %i.r, 3
  %i.u = icmp samesign ult i32 %i.s, %i.t
  br i1 %i.u, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.v = shl i32 %2, 1                            ; 3 uses
  %i.w = icmp ult i32 %i.v, 16                    ; 3 uses
  %i.x = select i1 %i.w, i32 2043430169, i32 2055708042 ; 2 uses
  %i.y = tail call noundef i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 %i.v)
  %i.z = or disjoint i32 %i.v, 1
  %i.aa = lshr i32 %i.p, 3
  %i.ab = zext nneg i32 %i.aa to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %sm3c.exit
  %indvars.iv = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %indvars.iv.next, %sm3c.exit ] ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = shl nuw i32 %indvars.iv.tr, 3
  %i.ad = sext i32 %i.ac to i64                   ; 9 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af) ; 9 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 2 uses
  %i.ak = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am) ; 5 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap) ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %i.ad
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at) ; 4 uses
  %i.av = getelementptr [4 x i8], ptr %0, i64 %i.ad
  %i.aw = getelementptr i8, ptr %i.av, i64 12     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = or disjoint i64 %i.ad, 4                ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb) ; 8 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.az
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = or disjoint i64 %i.ad, 5                ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi) ; 4 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = getelementptr [4 x i8], ptr %0, i64 %i.ad
  %i.bo = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp) ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %0, i64 %i.ad
  %i.bs = getelementptr i8, ptr %i.br, i64 28     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = xor i32 %i.bf, %i.aj
  %i.bw = tail call noundef i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 12) ; 2 uses
  %i.bx = add i32 %i.bc, %i.y
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  %i.bz = tail call noundef i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 7) ; 2 uses
  %i.ca = xor i32 %i.bz, %i.bw
  br i1 %i.w, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %sm3c.exit, %bb.b
  %.lcssa = phi i32 [ %i.r, %bb.b ], [ %i.eo, %sm3c.exit ]
  %i.cb = shl i32 %.lcssa, %i.e
  %i.cc = shl nsw i32 -1, %i.e
  %i.cd = and i32 %i.l, %i.cc
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.cb, i32 noundef %i.cd) #12
  br label %bb.g

bb.c:                                             ; preds = %.preheader
  %i.ce = xor i32 %i.an, %i.ag
  %i.cf = xor i32 %i.ce, %i.au
  %i.cg = xor i32 %i.bj, %i.bq
  %i.ch = xor i32 %i.cg, %i.bc
  br label %gg_j.exit.i

bb.d:                                             ; preds = %.preheader
  %i.ci = or i32 %i.au, %i.an
  %i.cj = and i32 %i.ci, %i.ag
  %i.ck = and i32 %i.au, %i.an
  %i.cl = or i32 %i.cj, %i.ck
  %i.cm = and i32 %i.bj, %i.bc
  %i.cn = xor i32 %i.bc, -1
  %i.co = and i32 %i.bq, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.cm
  br label %gg_j.exit.i

gg_j.exit.i:                                      ; preds = %bb.d, %bb.c
  %.pn66 = phi i32 [ %i.cf, %bb.c ], [ %i.cl, %bb.d ]
  %i.cq = phi i32 [ %i.ch, %bb.c ], [ %i.cp, %bb.d ]
  %.pn71.i = add i32 %i.ay, %.pn66
  %.pn.i = add i32 %i.ca, %i.bv
  %i.cr = add i32 %.pn.i, %.pn71.i                ; 5 uses
  %i.cs = add i32 %i.bz, %i.aj
  %i.ct = add i32 %i.cs, %i.cq
  %i.cu = add i32 %i.ct, %i.bu                    ; 5 uses
  %i.cv = tail call noundef i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 9) ; 4 uses
  %i.cw = tail call noundef i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 19) ; 3 uses
  %i.cx = tail call noundef i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 9)
  %i.cy = tail call noundef i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 17)
  %i.cz = xor i32 %i.cy, %i.cx
  %i.da = xor i32 %i.cz, %i.cu                    ; 5 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gg_j.exit.i
  %i.db = xor i32 %i.cv, %i.ag
  %i.dc = xor i32 %i.db, %i.cr
  %i.dd = xor i32 %i.da, %i.bc
  %i.de = xor i32 %i.dd, %i.cw
  br label %sm3c.exit

bb.f:                                             ; preds = %gg_j.exit.i
  %i.df = or i32 %i.cv, %i.ag
  %i.dg = and i32 %i.cr, %i.df
  %i.dh = and i32 %i.cv, %i.ag
  %i.di = or i32 %i.dg, %i.dh
  %i.dj = and i32 %i.da, %i.bc
  %i.dk = xor i32 %i.da, -1
  %i.dl = and i32 %i.cw, %i.dk
  %i.dm = or disjoint i32 %i.dl, %i.dj
  br label %sm3c.exit

sm3c.exit:                                        ; preds = %bb.e, %bb.f
  %i.dn = phi i32 [ 2043430169, %bb.e ], [ 2055708042, %bb.f ] ; 2 uses
  %.pn = phi i32 [ %i.dc, %bb.e ], [ %i.di, %bb.f ]
  %i.do = phi i32 [ %i.de, %bb.e ], [ %i.dm, %bb.f ]
  %i.dp = xor i32 %i.bm, %i.aq
  %i.dq = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 12) ; 2 uses
  %i.dr = add i32 %i.da, %i.dq
  %i.ds = tail call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 %i.z)
  %i.dt = add i32 %i.dr, %i.ds                    ; 2 uses
  %i.du = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 7) ; 2 uses
  %i.dv = xor i32 %i.du, %i.dq
  %.pn73.i = add i32 %i.au, %i.dp
  %.pn72.i = add i32 %.pn73.i, %.pn
  %i.dw = add i32 %.pn72.i, %i.dv
  %i.dx = add i32 %i.bq, %i.aq
  %i.dy = add i32 %i.dx, %i.do
  %i.dz = add i32 %i.dy, %i.du                    ; 5 uses
  %i.ea = tail call noundef i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 9)
  %i.eb = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 19)
  %i.ec = tail call noundef i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 9)
  %i.ed = tail call noundef i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 17)
  %i.ee = xor i32 %i.ed, %i.ec
  %i.ef = xor i32 %i.ee, %i.dz
  %i.eg = tail call i32 @llvm.bswap.i32(i32 %i.dw)
  store i32 %i.eg, ptr %i.ae, align 4
  %i.eh = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  store i32 %i.eh, ptr %i.al, align 4
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.ea)
  store i32 %i.ei, ptr %i.as, align 4
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  store i32 %i.ej, ptr %i.aw, align 4
  %i.ek = tail call i32 @llvm.bswap.i32(i32 %i.ef)
  store i32 %i.ek, ptr %i.ba, align 4
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.da)
  store i32 %i.el, ptr %i.bh, align 4
  %i.em = tail call i32 @llvm.bswap.i32(i32 %i.eb)
  store i32 %i.em, ptr %i.bo, align 4
  %i.en = tail call i32 @llvm.bswap.i32(i32 %i.cw)
  store i32 %i.en, ptr %i.bs, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = load i32, ptr %i.q, align 8             ; 2 uses
  %i.ep = lshr i32 %i.eo, 3
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = icmp samesign ult i64 %indvars.iv.next, %i.eq
  br i1 %i.er, label %.preheader, label %._crit_edge, !llvm.loop !113

bb.g:                                             ; preds = %bb.a, %._crit_edge
  store i32 0, ptr %i.o, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vghsh_vv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 14
  %i.b = and i32 %i.a, 1
  %i.c = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.c, align 16
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %4, 18
  %i.k = ashr i32 %i.j, 29
  %reass.sub = sub nsw i32 %i.k, %i.i
  %i.l = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.m = add nsw i32 %i.l, 2
  %i.n = shl nuw nsw i32 %i.f, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4616 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %.not = icmp ult i32 %i.p, %i.r
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = lshr i32 %i.p, 2
  %i.t = lshr i32 %i.r, 2
  %i.u = icmp samesign ult i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.b
  %i.v = lshr i32 %i.p, 2
  %i.w = zext nneg i32 %i.v to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i32 [ %i.r, %bb.b ], [ %i.dh, %bb.d ]
  %i.x = shl i32 %.lcssa, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.x, i32 noundef %i.n) #12
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.a, %bb.d
  %indvars.iv = phi i64 [ %i.w, %.lr.ph.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.y = shl nuw nsw i64 %indvars.iv, 1           ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = shl i64 %i.ad, 1
  %i.af = and i64 %i.ae, -6148914691236517206
  %i.ag = lshr i64 %i.ad, 1
  %i.ah = and i64 %i.ag, 6148914691236517205
  %i.ai = or disjoint i64 %i.af, %i.ah            ; 2 uses
  %i.aj = shl i64 %i.ai, 2
  %i.ak = and i64 %i.aj, -3689348814741910324
  %i.al = lshr i64 %i.ai, 2
  %i.am = and i64 %i.al, 3689348814741910323
  %i.an = or disjoint i64 %i.ak, %i.am            ; 2 uses
  %i.ao = shl i64 %i.an, 4
  %i.ap = and i64 %i.ao, -1085102592571150096
  %i.aq = lshr i64 %i.an, 4
  %i.ar = and i64 %i.aq, 1085102592571150095
  %i.as = or disjoint i64 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aa
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = shl i64 %i.au, 1
  %i.aw = and i64 %i.av, -6148914691236517206
  %i.ax = lshr i64 %i.au, 1
  %i.ay = and i64 %i.ax, 6148914691236517205
  %i.az = or disjoint i64 %i.aw, %i.ay            ; 2 uses
  %i.ba = shl i64 %i.az, 2
  %i.bb = and i64 %i.ba, -3689348814741910324
  %i.bc = lshr i64 %i.az, 2
  %i.bd = and i64 %i.bc, 3689348814741910323
  %i.be = or disjoint i64 %i.bb, %i.bd            ; 2 uses
  %i.bf = shl i64 %i.be, 4
  %i.bg = and i64 %i.bf, -1085102592571150096
  %i.bh = lshr i64 %i.be, 4
  %i.bi = and i64 %i.bh, 1085102592571150095
  %i.bj = or disjoint i64 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %i.bl = load <2 x i64>, ptr %i.z, align 8
  %i.bm = load <2 x i64>, ptr %i.bk, align 8
  %i.bn = xor <2 x i64> %i.bm, %i.bl              ; 2 uses
  %i.bo = shl <2 x i64> %i.bn, splat (i64 1)
  %i.bp = and <2 x i64> %i.bo, splat (i64 -6148914691236517206)
  %i.bq = lshr <2 x i64> %i.bn, splat (i64 1)
  %i.br = and <2 x i64> %i.bq, splat (i64 6148914691236517205)
  %i.bs = or disjoint <2 x i64> %i.bp, %i.br      ; 2 uses
  %i.bt = shl <2 x i64> %i.bs, splat (i64 2)
  %i.bu = and <2 x i64> %i.bt, splat (i64 -3689348814741910324)
  %i.bv = lshr <2 x i64> %i.bs, splat (i64 2)
  %i.bw = and <2 x i64> %i.bv, splat (i64 3689348814741910323)
  %i.bx = or disjoint <2 x i64> %i.bu, %i.bw      ; 2 uses
  %i.by = shl <2 x i64> %i.bx, splat (i64 4)
  %i.bz = and <2 x i64> %i.by, splat (i64 -1085102592571150096)
  %i.ca = lshr <2 x i64> %i.bx, splat (i64 4)
  %i.cb = and <2 x i64> %i.ca, splat (i64 1085102592571150095)
  %i.cc = or disjoint <2 x i64> %i.bz, %i.cb      ; 2 uses
  %5 = extractelement <2 x i64> %i.cc, i64 0
  %6 = extractelement <2 x i64> %i.cc, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.cd = shl i64 %.sroa.0.1, 1
  %i.ce = and i64 %i.cd, -6148914691236517206
  %i.cf = lshr i64 %.sroa.0.1, 1
  %i.cg = and i64 %i.cf, 6148914691236517205
  %i.ch = or disjoint i64 %i.ce, %i.cg            ; 2 uses
  %i.ci = shl i64 %i.ch, 2
  %i.cj = and i64 %i.ci, -3689348814741910324
  %i.ck = lshr i64 %i.ch, 2
  %i.cl = and i64 %i.ck, 3689348814741910323
  %i.cm = or disjoint i64 %i.cj, %i.cl            ; 2 uses
  %i.cn = shl i64 %i.cm, 4
  %i.co = and i64 %i.cn, -1085102592571150096
  %i.cp = lshr i64 %i.cm, 4
  %i.cq = and i64 %i.cp, 1085102592571150095
  %i.cr = or disjoint i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.z, align 8
  %i.cs = shl i64 %.sroa.6.1, 1
  %i.ct = and i64 %i.cs, -6148914691236517206
  %i.cu = lshr i64 %.sroa.6.1, 1
  %i.cv = and i64 %i.cu, 6148914691236517205
  %i.cw = or disjoint i64 %i.ct, %i.cv            ; 2 uses
  %i.cx = shl i64 %i.cw, 2
  %i.cy = and i64 %i.cx, -3689348814741910324
  %i.cz = lshr i64 %i.cw, 2
  %i.da = and i64 %i.cz, 3689348814741910323
  %i.db = or disjoint i64 %i.cy, %i.da            ; 2 uses
  %i.dc = shl i64 %i.db, 4
  %i.dd = and i64 %i.dc, -1085102592571150096
  %i.de = lshr i64 %i.db, 4
  %i.df = and i64 %i.de, 1085102592571150095
  %i.dg = or disjoint i64 %i.dd, %i.df
  store i64 %i.dg, ptr %i.ab, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = load i32, ptr %i.q, align 8             ; 2 uses
  %i.di = lshr i32 %i.dh, 2
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %bb.c, label %._crit_edge, !llvm.loop !114

bb.e:                                             ; preds = %bb.c, %bb.e
  %.062 = phi i32 [ 0, %bb.c ], [ %i.du, %bb.e ]  ; 3 uses
  %.sroa.6.061 = phi i64 [ 0, %bb.c ], [ %.sroa.6.1, %bb.e ]
  %.sroa.0.060 = phi i64 [ 0, %bb.c ], [ %.sroa.0.1, %bb.e ]
  %.sroa.10.059 = phi i64 [ %i.bj, %bb.c ], [ %i.dr, %bb.e ] ; 3 uses
  %.sroa.09.058 = phi i64 [ %i.as, %bb.c ], [ %.sroa.09.1, %bb.e ] ; 3 uses
  %.sroa.idx.not = icmp samesign ult i32 %.062, 64
  %.sroa.speculated = select i1 %.sroa.idx.not, i64 %5, i64 %6
  %i.dl = and i32 %.062, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %.sroa.speculated
  %.not55 = icmp eq i64 %i.do, 0                  ; 2 uses
  %i.dp = select i1 %.not55, i64 0, i64 %.sroa.09.058
  %.sroa.0.1 = xor i64 %i.dp, %.sroa.0.060        ; 3 uses
  %i.dq = select i1 %.not55, i64 0, i64 %.sroa.10.059
  %.sroa.6.1 = xor i64 %i.dq, %.sroa.6.061        ; 3 uses
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %.sroa.10.059, i64 %.sroa.09.058, i64 1)
  %i.ds = shl i64 %.sroa.09.058, 1                ; 2 uses
  %i.dt = xor i64 %i.ds, 135
  %.not5657 = icmp slt i64 %.sroa.10.059, 0
  %.sroa.09.1 = select i1 %.not5657, i64 %i.dt, i64 %i.ds
  %i.du = add nuw nsw i32 %.062, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !115

bb.f:                                             ; preds = %bb.a, %._crit_edge
  store i32 0, ptr %i.o, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vgmul_vv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 14
  %i.b = and i32 %i.a, 1
  %i.c = getelementptr i8, ptr %2, i64 4608
  %.val = load i64, ptr %i.c, align 16
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %3, 18
  %i.k = ashr i32 %i.j, 29
  %reass.sub = sub nsw i32 %i.k, %i.i
  %i.l = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.m = add nsw i32 %i.l, 2
  %i.n = shl nuw nsw i32 %i.f, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4620 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4616 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %.not = icmp ult i32 %i.p, %i.r
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = lshr i32 %i.p, 2
  %i.t = lshr i32 %i.r, 2
  %i.u = icmp samesign ult i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.b
  %i.v = lshr i32 %i.p, 2
  %i.w = zext nneg i32 %i.v to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i32 [ %i.r, %bb.b ], [ %i.de, %bb.d ]
  %i.x = shl i32 %.lcssa, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.x, i32 noundef %i.n) #12
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.a, %bb.d
  %indvars.iv = phi i64 [ %i.w, %.lr.ph.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.y = shl nuw nsw i64 %indvars.iv, 1           ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load <2 x i64>, ptr %i.z, align 8       ; 2 uses
  %i.ad = shl <2 x i64> %i.ac, splat (i64 1)
  %i.ae = and <2 x i64> %i.ad, splat (i64 -6148914691236517206)
  %i.af = lshr <2 x i64> %i.ac, splat (i64 1)
  %i.ag = and <2 x i64> %i.af, splat (i64 6148914691236517205)
  %i.ah = or disjoint <2 x i64> %i.ae, %i.ag      ; 2 uses
  %i.ai = shl <2 x i64> %i.ah, splat (i64 2)
  %i.aj = and <2 x i64> %i.ai, splat (i64 -3689348814741910324)
  %i.ak = lshr <2 x i64> %i.ah, splat (i64 2)
  %i.al = and <2 x i64> %i.ak, splat (i64 3689348814741910323)
  %i.am = or disjoint <2 x i64> %i.aj, %i.al      ; 2 uses
  %i.an = shl <2 x i64> %i.am, splat (i64 4)
  %i.ao = and <2 x i64> %i.an, splat (i64 -1085102592571150096)
  %i.ap = lshr <2 x i64> %i.am, splat (i64 4)
  %i.aq = and <2 x i64> %i.ap, splat (i64 1085102592571150095)
  %i.ar = or disjoint <2 x i64> %i.ao, %i.aq      ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = shl i64 %i.at, 1
  %i.av = and i64 %i.au, -6148914691236517206
  %i.aw = lshr i64 %i.at, 1
  %i.ax = and i64 %i.aw, 6148914691236517205
  %i.ay = or disjoint i64 %i.av, %i.ax            ; 2 uses
  %i.az = shl i64 %i.ay, 2
  %i.ba = and i64 %i.az, -3689348814741910324
  %i.bb = lshr i64 %i.ay, 2
  %i.bc = and i64 %i.bb, 3689348814741910323
  %i.bd = or disjoint i64 %i.ba, %i.bc            ; 2 uses
  %i.be = shl i64 %i.bd, 4
  %i.bf = and i64 %i.be, -1085102592571150096
  %i.bg = lshr i64 %i.bd, 4
  %i.bh = and i64 %i.bg, 1085102592571150095
  %i.bi = or disjoint i64 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = shl i64 %i.bk, 1
  %i.bm = and i64 %i.bl, -6148914691236517206
  %i.bn = lshr i64 %i.bk, 1
  %i.bo = and i64 %i.bn, 6148914691236517205
  %i.bp = or disjoint i64 %i.bm, %i.bo            ; 2 uses
  %i.bq = shl i64 %i.bp, 2
  %i.br = and i64 %i.bq, -3689348814741910324
  %i.bs = lshr i64 %i.bp, 2
  %i.bt = and i64 %i.bs, 3689348814741910323
  %i.bu = or disjoint i64 %i.br, %i.bt            ; 2 uses
  %i.bv = shl i64 %i.bu, 4
  %i.bw = and i64 %i.bv, -1085102592571150096
  %i.bx = lshr i64 %i.bu, 4
  %i.by = and i64 %i.bx, 1085102592571150095
  %i.bz = or disjoint i64 %i.bw, %i.by
  %4 = extractelement <2 x i64> %i.ar, i64 0
  %5 = extractelement <2 x i64> %i.ar, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.ca = shl i64 %.sroa.0.1, 1
  %i.cb = and i64 %i.ca, -6148914691236517206
  %i.cc = lshr i64 %.sroa.0.1, 1
  %i.cd = and i64 %i.cc, 6148914691236517205
  %i.ce = or disjoint i64 %i.cb, %i.cd            ; 2 uses
  %i.cf = shl i64 %i.ce, 2
  %i.cg = and i64 %i.cf, -3689348814741910324
  %i.ch = lshr i64 %i.ce, 2
  %i.ci = and i64 %i.ch, 3689348814741910323
  %i.cj = or disjoint i64 %i.cg, %i.ci            ; 2 uses
  %i.ck = shl i64 %i.cj, 4
  %i.cl = and i64 %i.ck, -1085102592571150096
  %i.cm = lshr i64 %i.cj, 4
  %i.cn = and i64 %i.cm, 1085102592571150095
  %i.co = or disjoint i64 %i.cl, %i.cn
  store i64 %i.co, ptr %i.z, align 8
  %i.cp = shl i64 %.sroa.6.1, 1
  %i.cq = and i64 %i.cp, -6148914691236517206
  %i.cr = lshr i64 %.sroa.6.1, 1
  %i.cs = and i64 %i.cr, 6148914691236517205
  %i.ct = or disjoint i64 %i.cq, %i.cs            ; 2 uses
  %i.cu = shl i64 %i.ct, 2
  %i.cv = and i64 %i.cu, -3689348814741910324
  %i.cw = lshr i64 %i.ct, 2
  %i.cx = and i64 %i.cw, 3689348814741910323
  %i.cy = or disjoint i64 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl i64 %i.cy, 4
  %i.da = and i64 %i.cz, -1085102592571150096
  %i.db = lshr i64 %i.cy, 4
  %i.dc = and i64 %i.db, 1085102592571150095
  %i.dd = or disjoint i64 %i.da, %i.dc
  store i64 %i.dd, ptr %i.ab, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = load i32, ptr %i.q, align 8             ; 2 uses
  %i.df = lshr i32 %i.de, 2
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.c, label %._crit_edge, !llvm.loop !116

bb.e:                                             ; preds = %bb.c, %bb.e
  %.054 = phi i32 [ 0, %bb.c ], [ %i.dr, %bb.e ]  ; 3 uses
  %.sroa.6.053 = phi i64 [ 0, %bb.c ], [ %.sroa.6.1, %bb.e ]
  %.sroa.0.052 = phi i64 [ 0, %bb.c ], [ %.sroa.0.1, %bb.e ]
  %.sroa.10.051 = phi i64 [ %i.bz, %bb.c ], [ %i.do, %bb.e ] ; 3 uses
  %.sroa.08.050 = phi i64 [ %i.bi, %bb.c ], [ %.sroa.08.1, %bb.e ] ; 3 uses
  %.sroa.idx.not = icmp samesign ult i32 %.054, 64
  %.sroa.speculated = select i1 %.sroa.idx.not, i64 %4, i64 %5
  %i.di = and i32 %.054, 63
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %.sroa.speculated
  %.not47 = icmp eq i64 %i.dl, 0                  ; 2 uses
  %i.dm = select i1 %.not47, i64 0, i64 %.sroa.08.050
  %.sroa.0.1 = xor i64 %i.dm, %.sroa.0.052        ; 3 uses
  %i.dn = select i1 %.not47, i64 0, i64 %.sroa.10.051
  %.sroa.6.1 = xor i64 %i.dn, %.sroa.6.053        ; 3 uses
  %i.do = tail call i64 @llvm.fshl.i64(i64 %.sroa.10.051, i64 %.sroa.08.050, i64 1)
  %i.dp = shl i64 %.sroa.08.050, 1                ; 2 uses
  %i.dq = xor i64 %i.dp, 135
  %.not4849 = icmp slt i64 %.sroa.10.051, 0
  %.sroa.08.1 = select i1 %.not4849, i64 %i.dq, i64 %i.dp
  %i.dr = add nuw nsw i32 %.054, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !117

bb.f:                                             ; preds = %bb.a, %._crit_edge
  store i32 0, ptr %i.o, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsm4k_vi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %.sroa.14 = alloca [4 x i32], align 16          ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4616 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i32 %i.e, 2                         ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.g, align 16
  %i.h = shl i32 %4, 3
  %i.i = and i32 %i.h, 2040
  %i.j = add nuw nsw i32 %i.i, 8
  %i.k = trunc i64 %.val to i32
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 7
  %i.n = shl i32 %4, 18
  %i.o = ashr i32 %i.n, 29
  %reass.sub = sub nsw i32 %i.o, %i.m
  %i.p = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.q = add nsw i32 %i.p, 2
  %i.r = shl nuw nsw i32 %i.j, %i.q
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = lshr i32 %i.c, 2                         ; 2 uses
  %i.t = icmp samesign ult i32 %i.s, %i.f
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.u = shl i32 %2, 2
  %i.v = and i32 %i.u, 28
  %i.w = zext i32 %i.c to i64                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = and i64 %i.x, 17179869168
  %i.z = and i32 %i.c, -4                         ; 2 uses
  %i.aa = add i32 %i.z, 4
  %i.ab = and i64 %i.w, 4294967292
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = sub nuw nsw i32 -4, %i.z
  %i.ae = or disjoint i32 %i.ad, 3
  %i.af = zext nneg i32 %i.v to i64               ; 4 uses
  %i.ag = sub nuw nsw i32 %i.f, %i.s
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 16
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.af
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %.sroa.14.4..sroa_idx105 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 4
  %.sroa.14.8..sroa_idx106 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.12..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 12
  br label %.preheader60.preheader

._crit_edge.loopexit:                             ; preds = %.preheader60.preheader
  %.pre = load i32, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.as = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.c ]
  store i32 0, ptr %i.b, align 4
  %i.at = lshr i32 %4, 14
  %i.au = and i32 %i.at, 1
  %i.av = shl i32 %i.as, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.r) #12
  br label %bb.d

.preheader60.preheader:                           ; preds = %.lr.ph, %.preheader60.preheader
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.preheader60.preheader ] ; 4 uses
  %i.aw = shl nuw nsw i64 %indvar, 4
  %i.ax = add nuw nsw i64 %i.y, %i.aw             ; 2 uses
  %scevgep75 = getelementptr i8, ptr %0, i64 %i.ax
  %i.ay = shl nuw nsw i64 %indvar, 2              ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %i.aa, %i.az
  %i.bb = add nuw nsw i64 %i.ac, %i.ay
  %i.bc = trunc i64 %i.bb to i32
  %umax77 = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 %i.bc)
  %indvar.tr = trunc i64 %indvar to i32
  %i.bd = shl i32 %indvar.tr, 2
  %i.be = sub i32 %i.ae, %i.bd
  %i.bf = add i32 %umax77, %i.be                  ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 4                ; 3 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.bj = icmp ugt i32 %i.bf, 2
  %i.bk = sub nsw i64 12, %i.bh
  %i.bl = select i1 %i.bj, i64 0, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.a, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %i.bl, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.bi, i1 false)
  %.0..sroa.0.0.copyload = load i32, ptr %i.a, align 16
  %.4..sroa.5.0.copyload = load i32, ptr %.4..sroa_idx, align 4 ; 2 uses
  %.8..sroa.7.0.copyload = load i32, ptr %.8..sroa_idx, align 8 ; 3 uses
  %.12..sroa.10.0.copyload = load i32, ptr %.12..sroa_idx, align 4 ; 4 uses
  %i.bn = xor i32 %.4..sroa.5.0.copyload, %i.ai
  %i.bo = xor i32 %i.bn, %.8..sroa.7.0.copyload
  %i.bp = xor i32 %i.bo, %.12..sroa.10.0.copyload ; 4 uses
  %i.bq = and i32 %i.bp, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = lshr i32 %i.bp, 8
  %i.bw = and i32 %i.bv, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = or disjoint i32 %i.cb, %i.bu
  %i.cd = lshr i32 %i.bp, 16
  %i.ce = and i32 %i.cd, 255
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 16
  %i.ck = or disjoint i32 %i.cc, %i.cj
  %i.cl = lshr i32 %i.bp, 24
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 24
  %i.cr = or disjoint i32 %i.ck, %i.cq            ; 5 uses
  %i.cs = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 13)
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 23)
  %i.cu = xor i32 %.0..sroa.0.0.copyload, %i.ct
  %i.cv = xor i32 %i.cu, %i.cs
  %i.cw = xor i32 %i.cv, %i.cr                    ; 4 uses
  store i32 %i.cw, ptr %.sroa.14, align 16
  %i.cx = xor i32 %.8..sroa.7.0.copyload, %i.al
  %i.cy = xor i32 %i.cx, %.12..sroa.10.0.copyload
  %i.cz = xor i32 %i.cy, %i.cw                    ; 4 uses
  %i.da = and i32 %i.cz, 255
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i32
  %i.df = lshr i32 %i.cz, 8
  %i.dg = and i32 %i.df, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = or disjoint i32 %i.dl, %i.de
  %i.dn = lshr i32 %i.cz, 16
  %i.do = and i32 %i.dn, 255
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 16
  %i.du = or disjoint i32 %i.dm, %i.dt
  %i.dv = lshr i32 %i.cz, 24
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw i32 %i.dz, 24
end_hunk_0
