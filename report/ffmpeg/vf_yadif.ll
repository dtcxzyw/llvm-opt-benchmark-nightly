inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_edges:bb.a
  %i.ox = icmp ugt i8 %i.jj, %i.js                ; 2 uses
  %.894 = select i1 %i.ox, i32 %i.ov, i32 %i.ow
  %i.oy = sub nsw i32 %i.om, %i.jk                ; 2 uses
  %i.oz = sub nsw i32 %i.ou, %i.jt                ; 2 uses
  %i.pa = tail call i32 @llvm.smin.i32(i32 %i.oy, i32 %i.oz)
  %i.pb = tail call i32 @llvm.smax.i32(i32 %.894, i32 %i.pa)
  %i.pc = select i1 %i.ox, i32 %i.ow, i32 %i.ov
  %i.pd = tail call i32 @llvm.smax.i32(i32 %i.oy, i32 %i.oz)
  %i.pe = tail call i32 @llvm.smin.i32(i32 %i.pc, i32 %i.pd)
  %i.pf = tail call i32 @llvm.smax.i32(i32 %i.kw, i32 %i.pe)
  %i.pg = sub nsw i32 0, %i.pb
  %i.ph = tail call i32 @llvm.smax.i32(i32 %i.pf, i32 %i.pg)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0730 = phi i32 [ %i.kw, %bb.n ], [ %i.ph, %bb.o ] ; 2 uses
  %i.pi = add nuw nsw i32 %.0730, %i.jq           ; 2 uses
  %i.pj = icmp samesign ugt i32 %.3, %i.pi
  %i.pk = sub nsw i32 %i.jq, %.0730
  %spec.select899 = tail call i32 @llvm.smax.i32(i32 %.3, i32 %i.pk)
  %.4 = select i1 %i.pj, i32 %i.pi, i32 %spec.select899
  %i.pl = trunc i32 %.4 to i8
  store i8 %i.pl, ptr %.1752916, align 1, !tbaa !65
  %i.pm = getelementptr inbounds nuw i8, ptr %.1752916, i64 1 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.1746918, i64 1 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.1749917, i64 1 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.1743919, i64 1 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.1737921, i64 1 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.1734922, i64 1 ; 2 uses
  %i.ps = add nuw nsw i32 %.1740920, 1            ; 2 uses
  %exitcond947.not = icmp eq i32 %i.ps, %i.iz
  br i1 %exitcond947.not, label %._crit_edge925, label %bb.j, !llvm.loop !67

._crit_edge925:                                   ; preds = %bb.p, %._crit_edge
  %.1752.lcssa = phi ptr [ %i.it, %._crit_edge ], [ %i.pm, %bb.p ]
  %.1749.lcssa = phi ptr [ %i.iu, %._crit_edge ], [ %i.po, %bb.p ]
  %.1746.lcssa = phi ptr [ %i.iv, %._crit_edge ], [ %i.pn, %bb.p ]
  %.1743.lcssa = phi ptr [ %i.iw, %._crit_edge ], [ %i.pp, %bb.p ]
  %.1737.lcssa = phi ptr [ %i.ix, %._crit_edge ], [ %i.pq, %bb.p ]
  %.1734.lcssa = phi ptr [ %i.iy, %._crit_edge ], [ %i.pr, %bb.p ]
  %i.pt = icmp slt i32 %i.b, %4
  br i1 %i.pt, label %.lr.ph940, label %._crit_edge941

.lr.ph940:                                        ; preds = %._crit_edge925
  %i.pu = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.iz)
  %i.pv = sext i32 %6 to i64                      ; 3 uses
  %i.pw = sext i32 %5 to i64                      ; 3 uses
  %i.px = and i32 %8, 2
  %.not887 = icmp eq i32 %i.px, 0
  %i.py = shl nsw i32 %6, 1
  %i.pz = sext i32 %i.py to i64                   ; 2 uses
  %i.qa = shl nsw i32 %5, 1
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph940, %bb.s
  %.2735938 = phi ptr [ %.1734.lcssa, %.lr.ph940 ], [ %i.tf, %bb.s ] ; 4 uses
  %.2738937 = phi ptr [ %.1737.lcssa, %.lr.ph940 ], [ %i.te, %bb.s ] ; 4 uses
  %.2741936 = phi i32 [ %i.pu, %.lr.ph940 ], [ %i.tg, %bb.s ]
  %.2744935 = phi ptr [ %.1743.lcssa, %.lr.ph940 ], [ %i.td, %bb.s ] ; 3 uses
  %.2747934 = phi ptr [ %.1746.lcssa, %.lr.ph940 ], [ %i.tb, %bb.s ] ; 3 uses
  %.2750933 = phi ptr [ %.1749.lcssa, %.lr.ph940 ], [ %i.tc, %bb.s ] ; 3 uses
  %.2753932 = phi ptr [ %.1752.lcssa, %.lr.ph940 ], [ %i.ta, %bb.s ] ; 2 uses
  %i.qc = getelementptr inbounds i8, ptr %.2747934, i64 %i.pv
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !65  ; 2 uses
  %i.qe = zext i8 %i.qd to i32                    ; 5 uses
  %i.qf = load i8, ptr %.2738937, align 1, !tbaa !65
  %i.qg = zext i8 %i.qf to i32                    ; 2 uses
  %i.qh = load i8, ptr %.2735938, align 1, !tbaa !65
  %i.qi = zext i8 %i.qh to i32                    ; 2 uses
  %i.qj = add nuw nsw i32 %i.qi, %i.qg
  %i.qk = lshr i32 %i.qj, 1                       ; 4 uses
  %i.ql = getelementptr inbounds i8, ptr %.2747934, i64 %i.pw
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !65  ; 2 uses
  %i.qn = zext i8 %i.qm to i32                    ; 5 uses
  %i.qo = sub nsw i32 %i.qg, %i.qi
  %i.qp = tail call i32 @llvm.abs.i32(i32 %i.qo, i1 true)
  %i.qq = getelementptr inbounds i8, ptr %.2750933, i64 %i.pv
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !65
  %i.qs = zext i8 %i.qr to i32
  %i.qt = sub nsw i32 %i.qs, %i.qe
  %i.qu = tail call i32 @llvm.abs.i32(i32 %i.qt, i1 true)
  %i.qv = getelementptr inbounds i8, ptr %.2750933, i64 %i.pw
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !65
  %i.qx = zext i8 %i.qw to i32
  %i.qy = sub nsw i32 %i.qx, %i.qn
  %i.qz = tail call i32 @llvm.abs.i32(i32 %i.qy, i1 true)
  %i.ra = add nuw nsw i32 %i.qz, %i.qu
  %i.rb = lshr i32 %i.ra, 1
  %i.rc = getelementptr inbounds i8, ptr %.2744935, i64 %i.pv
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !65
  %i.re = zext i8 %i.rd to i32
  %i.rf = sub nsw i32 %i.re, %i.qe
  %i.rg = tail call i32 @llvm.abs.i32(i32 %i.rf, i1 true)
  %i.rh = getelementptr inbounds i8, ptr %.2744935, i64 %i.pw
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !65
  %i.rj = zext i8 %i.ri to i32
  %i.rk = sub nsw i32 %i.rj, %i.qn
  %i.rl = tail call i32 @llvm.abs.i32(i32 %i.rk, i1 true)
  %i.rm = add nuw nsw i32 %i.rl, %i.rg
  %i.rn = lshr i32 %i.rm, 1
  %i.ro = lshr i32 %i.qp, 1
  %i.rp = tail call i32 @llvm.umax.i32(i32 %i.ro, i32 %i.rb)
  %i.rq = tail call i32 @llvm.umax.i32(i32 %i.rp, i32 %i.rn) ; 2 uses
  %i.rr = add nuw nsw i32 %i.qn, %i.qe
  %i.rs = lshr i32 %i.rr, 1                       ; 2 uses
  br i1 %.not887, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.rt = getelementptr inbounds i8, ptr %.2738937, i64 %i.pz
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !65
  %i.rv = zext i8 %i.ru to i32
  %i.rw = getelementptr inbounds i8, ptr %.2735938, i64 %i.pz
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !65
  %i.ry = zext i8 %i.rx to i32
  %i.rz = add nuw nsw i32 %i.ry, %i.rv
  %i.sa = lshr i32 %i.rz, 1
  %i.sb = getelementptr inbounds i8, ptr %.2738937, i64 %i.qb
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !65
  %i.sd = zext i8 %i.sc to i32
  %i.se = getelementptr inbounds i8, ptr %.2735938, i64 %i.qb
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !65
  %i.sg = zext i8 %i.sf to i32
  %i.sh = add nuw nsw i32 %i.sg, %i.sd
  %i.si = lshr i32 %i.sh, 1
  %i.sj = sub nsw i32 %i.qk, %i.qn                ; 2 uses
  %i.sk = sub nsw i32 %i.qk, %i.qe                ; 2 uses
  %i.sl = icmp ugt i8 %i.qd, %i.qm                ; 2 uses
  %.900 = select i1 %i.sl, i32 %i.sj, i32 %i.sk
  %i.sm = sub nsw i32 %i.sa, %i.qe                ; 2 uses
  %i.sn = sub nsw i32 %i.si, %i.qn                ; 2 uses
  %i.so = tail call i32 @llvm.smin.i32(i32 %i.sm, i32 %i.sn)
  %i.sp = tail call i32 @llvm.smax.i32(i32 %.900, i32 %i.so)
  %i.sq = select i1 %i.sl, i32 %i.sk, i32 %i.sj
  %i.sr = tail call i32 @llvm.smax.i32(i32 %i.sm, i32 %i.sn)
  %i.ss = tail call i32 @llvm.smin.i32(i32 %i.sq, i32 %i.sr)
  %i.st = tail call i32 @llvm.smax.i32(i32 %i.rq, i32 %i.ss)
  %i.su = sub nsw i32 0, %i.sp
  %i.sv = tail call i32 @llvm.smax.i32(i32 %i.st, i32 %i.su)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0726 = phi i32 [ %i.rq, %bb.q ], [ %i.sv, %bb.r ] ; 2 uses
  %i.sw = add nuw nsw i32 %.0726, %i.qk           ; 2 uses
  %i.sx = icmp samesign ugt i32 %i.rs, %i.sw
  %i.sy = sub nsw i32 %i.qk, %.0726
  %spec.select905 = tail call i32 @llvm.smax.i32(i32 %i.rs, i32 %i.sy)
  %.0 = select i1 %i.sx, i32 %i.sw, i32 %spec.select905
  %i.sz = trunc i32 %.0 to i8
  store i8 %i.sz, ptr %.2753932, align 1, !tbaa !65
  %i.ta = getelementptr inbounds nuw i8, ptr %.2753932, i64 1
  %i.tb = getelementptr inbounds nuw i8, ptr %.2747934, i64 1
  %i.tc = getelementptr inbounds nuw i8, ptr %.2750933, i64 1
  %i.td = getelementptr inbounds nuw i8, ptr %.2744935, i64 1
  %i.te = getelementptr inbounds nuw i8, ptr %.2738937, i64 1
  %i.tf = getelementptr inbounds nuw i8, ptr %.2735938, i64 1
  %i.tg = add nuw nsw i32 %.2741936, 1            ; 2 uses
  %i.th = icmp slt i32 %i.tg, %4
  br i1 %i.th, label %bb.q, label %._crit_edge941, !llvm.loop !68

._crit_edge941:                                   ; preds = %bb.s, %._crit_edge925
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr [20 x i8], ptr %i.l, i64 %i.h
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37
  %i.p = add nsw i32 %i.o, 7
  %i.q = sdiv i32 %i.p, 8                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !57
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = sext i32 %2 to i64
  %i.v = mul nsw i64 %i.t, %i.u
  %i.w = sext i32 %3 to i64                       ; 2 uses
  %i.x = sdiv i64 %i.v, %i.w                      ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = add nsw i32 %2, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.t, %i.aa
  %i.ac = sdiv i64 %i.ab, %i.w
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = icmp slt i32 %i.y, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = sdiv i32 8, %i.q
  %i.ag = mul nsw i32 %i.q, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.am = sext i32 %i.ag to i64                   ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ao = sub nsw i32 0, %i.j                     ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %sext = shl i64 %i.x, 32
  %i.ar = ashr exact i64 %sext, 32
  %i.as = sext i32 %i.j to i64                    ; 2 uses
  %invariant.op = sub i32 -2, %i.af
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.g ] ; 10 uses
  %i.at = load i32, ptr %i.ah, align 4, !tbaa !43 ; 2 uses
  %i.au = trunc nsw i64 %indvars.iv to i32
  %i.av = xor i32 %i.at, %i.au
  %i.aw = and i32 %i.av, 1
  %.not = icmp eq i32 %i.aw, 0
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !58
  %i.ay = sext i32 %i.ax to i64                   ; 8 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !71
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72
  %i.bc = mul nsw i64 %indvars.iv, %i.as          ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bc ; 2 uses
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ay
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ay
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ay
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !70
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %indvars.iv, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 %i.bt ; 2 uses
  %i.bv = icmp eq i64 %indvars.iv, 1
  %.pre = load i32, ptr %i.r, align 8, !tbaa !57  ; 2 uses
  %i.bw = trunc i64 %indvars.iv to i32
  %i.bx = add i32 %i.bw, 2
  %i.by = icmp eq i32 %i.bx, %.pre
  %or.cond = select i1 %i.bv, i1 true, i1 %i.by
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bz = load i32, ptr %i.ak, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bz, %bb.d ], [ 2, %bb.c ]  ; 2 uses
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.cc = getelementptr inbounds i8, ptr %i.bu, i64 %i.am
  %i.cd = getelementptr inbounds i8, ptr %i.bd, i64 %i.am
  %i.ce = getelementptr inbounds i8, ptr %i.bh, i64 %i.am
  %i.cf = getelementptr inbounds i8, ptr %i.bl, i64 %i.am
  %i.cg = load i32, ptr %i.an, align 4, !tbaa !56
  %.reass.reass = add i32 %i.cg, %invariant.op
  %i.ch = add nsw i64 %indvars.iv, 1              ; 3 uses
  %i.ci = sext i32 %.pre to i64
  %i.cj = icmp slt i64 %i.ch, %i.ci
  %i.ck = select i1 %i.cj, i32 %i.j, i32 %i.ao
  %i.cl = icmp eq i64 %indvars.iv, 0
  %i.cm = select i1 %i.cl, i32 %i.j, i32 %i.ao    ; 2 uses
  %i.cn = load i32, ptr %i.ap, align 8, !tbaa !44
  %i.co = xor i32 %i.cn, %i.at
  tail call void %i.cb(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, i32 noundef %.reass.reass, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.ca) #7
  %i.cp = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.cq = load i32, ptr %i.an, align 4, !tbaa !56
  %i.cr = load i32, ptr %i.r, align 8, !tbaa !57
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %i.ch, %i.cs
  %i.cu = select i1 %i.ct, i32 %i.j, i32 %i.ao
  %i.cv = load i32, ptr %i.ah, align 4, !tbaa !43
  %i.cw = load i32, ptr %i.ap, align 8, !tbaa !44
  %i.cx = xor i32 %i.cw, %i.cv
  tail call void %i.cp(ptr noundef %i.bu, ptr noundef %i.bd, ptr noundef %i.bh, ptr noundef %i.bl, i32 noundef %i.cq, i32 noundef %i.cu, i32 noundef %i.cm, i32 noundef %i.cx, i32 noundef %i.ca) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.cy = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ay
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !72
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ay
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !70
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %indvars.iv, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.da, i64 %i.df
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ay
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !72
  %i.dk = mul nsw i64 %indvars.iv, %i.as
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.an, align 4, !tbaa !56
  %i.dn = mul nsw i32 %i.dm, %i.q
  %i.do = sext i32 %i.dn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.dl, i64 %i.do, i1 false)
  %.pre92 = add nsw i64 %indvars.iv, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next.pre-phi = phi i64 [ %i.ch, %bb.e ], [ %.pre92, %bb.f ] ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.pre-phi to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @av_default_item_name(ptr noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"AVFilterLink", !11, i64 0, !13, i64 8, !11, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !14, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !15, i64 72, !14, i64 96, !16, i64 104, !6, i64 112, !6, i64 116, !18, i64 120, !18, i64 168}
!11 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!14 = !{!"AVRational", !6, i64 0, !6, i64 4}
!15 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!16 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"AVFilterFormatsConfig", !19, i64 0, !19, i64 8, !20, i64 16, !19, i64 24, !19, i64 32, !19, i64 40}
!19 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!20 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!21 = !{!22, !12, i64 72}
!22 = !{!"AVFilterContext", !23, i64 0, !24, i64 8, !25, i64 16, !13, i64 24, !26, i64 32, !6, i64 40, !13, i64 48, !26, i64 56, !6, i64 64, !12, i64 72, !27, i64 80, !6, i64 88, !6, i64 92, !25, i64 96, !6, i64 104, !28, i64 112, !6, i64 120}
!23 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!24 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!25 = !{!"p1 omnipotent char", !12, i64 0}
!26 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!27 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!28 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!29 = !{!10, !6, i64 36}
!30 = !{!31, !33, i64 80}
!31 = !{!"YADIFContext", !23, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !33, i64 80, !6, i64 88, !25, i64 96, !6, i64 104, !34, i64 112, !6, i64 168, !6, i64 172}
!32 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!33 = !{!"p1 _ZTS18AVPixFmtDescriptor", !12, i64 0}
!34 = !{!"CCFifo", !35, i64 0, !35, i64 8, !14, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !12, i64 48}
!35 = !{!"p1 _ZTS6AVFifo", !12, i64 0}
!36 = !{!31, !12, i64 56}
!37 = !{!38, !6, i64 16}
!38 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!39 = !{!31, !12, i64 64}
!40 = !{!31, !12, i64 72}
!41 = !{!42, !32, i64 0}
!42 = !{!"ThreadData", !32, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!43 = !{!42, !6, i64 20}
!44 = !{!42, !6, i64 24}
!45 = !{!46, !7, i64 8}
!46 = !{!"AVPixFmtDescriptor", !25, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !47, i64 16, !7, i64 24, !25, i64 104}
!47 = !{!"long", !7, i64 0}
!48 = !{!49, !6, i64 104}
!49 = !{!"AVFrame", !7, i64 0, !7, i64 64, !50, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !14, i64 124, !47, i64 136, !47, i64 144, !14, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !51, i64 248, !6, i64 256, !16, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !47, i64 304, !52, i64 312, !6, i64 320, !28, i64 328, !28, i64 336, !47, i64 344, !47, i64 352, !47, i64 360, !47, i64 368, !12, i64 376, !15, i64 384, !47, i64 408, !6, i64 416}
!50 = !{!"p2 omnipotent char", !17, i64 0}
!51 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!52 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!53 = !{!49, !6, i64 108}
!54 = !{!46, !7, i64 9}
!55 = !{!46, !7, i64 10}
!56 = !{!42, !6, i64 12}
!57 = !{!42, !6, i64 16}
!58 = !{!42, !6, i64 8}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !7, i64 0}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !60}
!65 = !{!7, !7, i64 0}
!66 = distinct !{!66, !60}
!67 = distinct !{!67, !60}
!68 = distinct !{!68, !60}
!69 = !{!31, !32, i64 24}
!70 = !{!6, !6, i64 0}
!71 = !{!31, !32, i64 40}
!72 = !{!25, !25, i64 0}
!73 = !{!31, !32, i64 32}
!74 = !{!31, !6, i64 8}
!75 = distinct !{!75, !60}
end_hunk_0
