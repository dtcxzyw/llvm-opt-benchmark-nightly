Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@inflate:bb.a
  %i.cq = shl i64 %.1687.lcssa, 8
  %i.cr = and i64 %i.cq, 65280
  %i.cs = lshr i64 %.1687.lcssa, 8
  %i.ct = add nuw nsw i64 %i.cr, %i.cs
  %i.cu = urem i64 %i.ct, 31
  %.not885 = icmp eq i64 %i.cu, 0
  br i1 %.not885, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge1769
  store ptr @.str.1, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.q:                                             ; preds = %._crit_edge1769
  %i.cv = and i64 %.1687.lcssa, 15
  %.not886 = icmp eq i64 %i.cv, 8
  br i1 %.not886, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr @.str.2, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.cw = lshr i64 %.1687.lcssa, 4                ; 2 uses
  %i.cx = add i32 %.1677.lcssa, -4
  %i.cy = trunc i64 %i.cw to i32
  %i.cz = and i32 %i.cy, 15                       ; 3 uses
  %i.da = add nuw nsw i32 %i.cz, 8                ; 3 uses
  %i.db = load i32, ptr %i.bm, align 8, !tbaa !44 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.da, ptr %i.bm, align 8, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dd = phi i32 [ %i.da, %bb.t ], [ %i.db, %bb.s ]
  %i.de = icmp samesign ugt i32 %i.cz, 7
  %i.df = icmp ugt i32 %i.da, %i.dd
  %or.cond2559 = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond2559, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr @.str.3, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.dg = shl nuw nsw i32 256, %i.cz
  store i32 %i.dg, ptr %i.bn, align 4, !tbaa !31
  store i32 0, ptr %i.bo, align 8, !tbaa !30
  %i.dh = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.dh, ptr %i.ai, align 8, !tbaa !50
  store i64 %i.dh, ptr %i.aj, align 8, !tbaa !27
  %i.di = and i64 %.1687.lcssa, 8192
  %.not887 = icmp eq i64 %i.di, 0
  %i.dj = select i1 %.not887, i32 16191, i32 16189
  store i32 %i.dj, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.x:                                             ; preds = %.lr.ph1624.preheader
  %i.dk = add i32 %.0732, -1                      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0779, i64 1 ; 3 uses
  %i.dm = load i8, ptr %.0779, align 1, !tbaa !46
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, %i.bu
  %i.dp = add i64 %i.do, %.0686                   ; 3 uses
  %indvars.iv.next2161 = add nuw nsw i64 %i.bu, 8 ; 2 uses
  %i.dq = icmp ult i32 %.0676, 24
  br i1 %i.dq, label %.lr.ph1624.1, label %._crit_edge1625

.lr.ph1624.1:                                     ; preds = %bb.x
  %i.dr = icmp eq i32 %i.dk, 0
  br i1 %i.dr, label %.loopexit908.loopexit1780, label %bb.y

bb.y:                                             ; preds = %.lr.ph1624.1
  %i.ds = add i32 %.0732, -2                      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0779, i64 2 ; 3 uses
  %i.du = load i8, ptr %i.dl, align 1, !tbaa !46
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, %indvars.iv.next2161
  %i.dx = add i64 %i.dw, %i.dp                    ; 3 uses
  %indvars.iv.next2161.1 = add nuw nsw i64 %i.bu, 16 ; 2 uses
  %i.dy = icmp ult i32 %.0676, 16
  br i1 %i.dy, label %.lr.ph1624.2, label %._crit_edge1625

.lr.ph1624.2:                                     ; preds = %bb.y
  %i.dz = icmp eq i32 %i.ds, 0
  br i1 %i.dz, label %.loopexit908.loopexit1780, label %bb.z

bb.z:                                             ; preds = %.lr.ph1624.2
  %i.ea = add i32 %.0732, -3                      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0779, i64 3 ; 3 uses
  %i.ec = load i8, ptr %i.dt, align 1, !tbaa !46
  %i.ed = zext i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, %indvars.iv.next2161.1
  %i.ef = add i64 %i.ee, %i.dx                    ; 3 uses
  %indvars.iv.next2161.2 = add nuw nsw i64 %i.bu, 24 ; 2 uses
  %i.eg = icmp ult i32 %.0676, 8
  br i1 %i.eg, label %.lr.ph1624.3, label %._crit_edge1625

.lr.ph1624.3:                                     ; preds = %bb.z
  %i.eh = icmp eq i32 %i.ea, 0
  br i1 %i.eh, label %.loopexit908.loopexit1780, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1624.3
  %i.ei = add i32 %.0732, -4
  %i.ej = getelementptr inbounds nuw i8, ptr %.0779, i64 4
  %i.ek = load i8, ptr %i.eb, align 1, !tbaa !46
  %i.el = zext i8 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, %indvars.iv.next2161.2
  %i.en = add i64 %i.em, %i.ef
  br label %._crit_edge1625

._crit_edge1625:                                  ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %.preheader921
  %.2781.lcssa = phi ptr [ %.0779, %.preheader921 ], [ %i.dl, %bb.x ], [ %i.dt, %bb.y ], [ %i.eb, %bb.z ], [ %i.ej, %bb.aa ]
  %.2734.lcssa = phi i32 [ %.0732, %.preheader921 ], [ %i.dk, %bb.x ], [ %i.ds, %bb.y ], [ %i.ea, %bb.z ], [ %i.ei, %bb.aa ]
  %.2688.lcssa = phi i64 [ %.0686, %.preheader921 ], [ %i.dp, %bb.x ], [ %i.dx, %bb.y ], [ %i.ef, %bb.z ], [ %i.en, %bb.aa ]
  %trunc882 = trunc i64 %.2688.lcssa to i32
  %rev883 = tail call i32 @llvm.bswap.i32(i32 %trunc882)
  %i.eo = zext i32 %rev883 to i64                 ; 2 uses
  store i64 %i.eo, ptr %i.ai, align 8, !tbaa !50
  store i64 %i.eo, ptr %i.aj, align 8, !tbaa !27
  store i32 16190, ptr %i.l, align 8, !tbaa !22
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1625, %bb.k
  %.3782 = phi ptr [ %.2781.lcssa, %._crit_edge1625 ], [ %.0779, %bb.k ] ; 2 uses
  %.3735 = phi i32 [ %.2734.lcssa, %._crit_edge1625 ], [ %.0732, %bb.k ] ; 2 uses
  %.3689 = phi i64 [ 0, %._crit_edge1625 ], [ %.0686, %bb.k ] ; 2 uses
  %.3679 = phi i32 [ 0, %._crit_edge1625 ], [ %.0676, %bb.k ] ; 2 uses
  %i.ep = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %.0776, ptr %i.o, align 8, !tbaa !74
  store i32 %.0730, ptr %i.x, align 8, !tbaa !75
  store ptr %.3782, ptr %0, align 8, !tbaa !48
  store i32 %.3735, ptr %i.z, align 8, !tbaa !49
  store i64 %.3689, ptr %i.ab, align 8, !tbaa !33
  store i32 %.3679, ptr %i.ad, align 8, !tbaa !34
  br label %inflateStateCheck.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.er = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.er, ptr %i.ai, align 8, !tbaa !50
  store i64 %i.er, ptr %i.aj, align 8, !tbaa !27
  store i32 16191, ptr %i.l, align 8, !tbaa !22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.k
  %.4783 = phi ptr [ %.3782, %bb.ad ], [ %.0779, %bb.k ] ; 2 uses
  %.4736 = phi i32 [ %.3735, %bb.ad ], [ %.0732, %bb.k ] ; 2 uses
  %.4690 = phi i64 [ %.3689, %bb.ad ], [ %.0686, %bb.k ] ; 2 uses
  %.4680 = phi i32 [ %.3679, %bb.ad ], [ %.0676, %bb.k ] ; 2 uses
  br i1 %or.cond, label %.loopexit908, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.k
  %i.es = phi i32 [ 16191, %bb.ae ], [ %i.bp, %bb.k ]
  %.5784 = phi ptr [ %.4783, %bb.ae ], [ %.0779, %bb.k ] ; 5 uses
  %.5737 = phi i32 [ %.4736, %bb.ae ], [ %.0732, %bb.k ] ; 4 uses
  %.5691 = phi i64 [ %.4690, %bb.ae ], [ %.0686, %bb.k ] ; 4 uses
  %.5681 = phi i32 [ %.4680, %bb.ae ], [ %.0676, %bb.k ] ; 7 uses
  %i.et = load i32, ptr %i.bl, align 4, !tbaa !28
  %.not884 = icmp eq i32 %i.et, 0
  br i1 %.not884, label %.preheader919, label %bb.ag

.preheader919:                                    ; preds = %bb.af
  %i.eu = icmp ult i32 %.5681, 3
  br i1 %i.eu, label %.lr.ph1633, label %bb.ah

.lr.ph1633:                                       ; preds = %.preheader919
  %i.ev = icmp eq i32 %.5737, 0
  br i1 %i.ev, label %.loopexit908, label %._crit_edge1634

bb.ag:                                            ; preds = %bb.af
  %i.ew = and i32 %.5681, 7
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 %.5691, %i.ex
  %i.ez = and i32 %.5681, -8
  store i32 16206, ptr %i.l, align 8, !tbaa !22
  br label %.thread

._crit_edge1634:                                  ; preds = %.lr.ph1633
  %i.fa = or disjoint i32 %.5681, 8
  %i.fb = add i32 %.5737, -1
  %i.fc = getelementptr inbounds nuw i8, ptr %.5784, i64 1
  %i.fd = load i8, ptr %.5784, align 1, !tbaa !46
  %i.fe = zext i8 %i.fd to i64
  %i.ff = zext nneg i32 %.5681 to i64
  %i.fg = shl nuw nsw i64 %i.fe, %i.ff
  %i.fh = add i64 %i.fg, %.5691
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge1634, %.preheader919
  %.6785.lcssa = phi ptr [ %i.fc, %._crit_edge1634 ], [ %.5784, %.preheader919 ] ; 2 uses
  %.6738.lcssa = phi i32 [ %i.fb, %._crit_edge1634 ], [ %.5737, %.preheader919 ] ; 2 uses
  %.6692.lcssa = phi i64 [ %i.fh, %._crit_edge1634 ], [ %.5691, %.preheader919 ] ; 4 uses
  %.6682.lcssa = phi i32 [ %i.fa, %._crit_edge1634 ], [ %.5681, %.preheader919 ] ; 2 uses
  %i.fi = trunc i64 %.6692.lcssa to i32
  %i.fj = and i32 %i.fi, 1
  store i32 %i.fj, ptr %i.bl, align 4, !tbaa !28
  %2 = lshr i64 %.6692.lcssa, 1
  %3 = trunc i64 %2 to i32
  %i.fk = and i32 %3, 3
  switch i32 %i.fk, label %default.unreachable2220 [
    i32 0, label %.sink.split
    i32 1, label %bb.ai
    i32 2, label %bb.ak
    i32 3, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  tail call void @inflate_fixed(ptr noundef nonnull %i.i) #9
  store i32 16199, ptr %i.l, align 8, !tbaa !22
  br i1 %i.az, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fl = lshr i64 %.6692.lcssa, 3
  %i.fm = add i32 %.6682.lcssa, -3
  br label %.loopexit908

bb.ak:                                            ; preds = %bb.ah
  br label %.sink.split

default.unreachable2220:                          ; preds = %bb.ah
  unreachable

bb.al:                                            ; preds = %bb.ah
  store ptr @.str.4, ptr %i.ak, align 8, !tbaa !47
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.al, %bb.ak
  %.sink = phi i32 [ 16209, %bb.al ], [ 16196, %bb.ak ], [ 16193, %bb.ah ]
  store i32 %.sink, ptr %i.l, align 8, !tbaa !22
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.ai
  %i.fn = lshr i64 %.6692.lcssa, 3
  %i.fo = add i32 %.6682.lcssa, -3
  br label %.thread

bb.an:                                            ; preds = %bb.k
  %i.fp = and i32 %.0676, 7
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = lshr i64 %.0686, %i.fq                  ; 3 uses
  %i.fs = and i32 %.0676, -8
  %i.ft = icmp ult i32 %.0676, 32
  br i1 %i.ft, label %.lr.ph1614.preheader, label %._crit_edge1615

.lr.ph1614.preheader:                             ; preds = %bb.an
  %i.fu = and i32 %.0676, 24                      ; 4 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 5 uses
  %i.fw = icmp eq i32 %.0732, 0
  br i1 %i.fw, label %.loopexit908.loopexit1781, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1614.preheader
  %i.fx = add i32 %.0732, -1                      ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0779, i64 1 ; 3 uses
  %i.fz = load i8, ptr %.0779, align 1, !tbaa !46
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, %i.fv
  %i.gc = add i64 %i.gb, %i.fr                    ; 3 uses
  %indvars.iv.next2159 = add nuw nsw i64 %i.fv, 8 ; 3 uses
  %.not = icmp eq i32 %i.fu, 24
  br i1 %.not, label %._crit_edge1615.loopexit, label %.lr.ph1614.1

.lr.ph1614.1:                                     ; preds = %bb.ao
  %i.gd = icmp eq i32 %i.fx, 0
  br i1 %i.gd, label %.loopexit908.loopexit1781, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph1614.1
  %i.ge = add i32 %.0732, -2                      ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0779, i64 2 ; 3 uses
  %i.gg = load i8, ptr %i.fy, align 1, !tbaa !46
  %i.gh = zext i8 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, %indvars.iv.next2159
  %i.gj = add i64 %i.gi, %i.gc                    ; 3 uses
  %indvars.iv.next2159.1 = add nuw nsw i64 %i.fv, 16 ; 3 uses
  %i.gk = icmp samesign ult i32 %i.fu, 16
  br i1 %i.gk, label %.lr.ph1614.2, label %._crit_edge1615.loopexit

.lr.ph1614.2:                                     ; preds = %bb.ap
  %i.gl = icmp eq i32 %i.ge, 0
  br i1 %i.gl, label %.loopexit908.loopexit1781, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1614.2
  %i.gm = add i32 %.0732, -3                      ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0779, i64 3 ; 3 uses
  %i.go = load i8, ptr %i.gf, align 1, !tbaa !46
  %i.gp = zext i8 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, %indvars.iv.next2159.1
  %i.gr = add i64 %i.gq, %i.gj                    ; 3 uses
  %indvars.iv.next2159.2 = add nuw nsw i64 %i.fv, 24 ; 3 uses
  %i.gs = icmp eq i32 %i.fu, 0
  br i1 %i.gs, label %.lr.ph1614.3, label %._crit_edge1615.loopexit

.lr.ph1614.3:                                     ; preds = %bb.aq
  %i.gt = icmp eq i32 %i.gm, 0
  br i1 %i.gt, label %.loopexit908.loopexit1781, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1614.3
  %i.gu = add i32 %.0732, -4
  %i.gv = getelementptr inbounds nuw i8, ptr %.0779, i64 4
  %i.gw = load i8, ptr %i.gn, align 1, !tbaa !46
  %i.gx = zext i8 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, %indvars.iv.next2159.2
  %i.gz = add i64 %i.gy, %i.gr
  br label %._crit_edge1615.loopexit

._crit_edge1615.loopexit:                         ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.lcssa3232 = phi i32 [ %i.fx, %bb.ao ], [ %i.ge, %bb.ap ], [ %i.gm, %bb.aq ], [ %i.gu, %bb.ar ]
  %.lcssa3231 = phi ptr [ %i.fy, %bb.ao ], [ %i.gf, %bb.ap ], [ %i.gn, %bb.aq ], [ %i.gv, %bb.ar ]
  %.lcssa3230 = phi i64 [ %i.gc, %bb.ao ], [ %i.gj, %bb.ap ], [ %i.gr, %bb.aq ], [ %i.gz, %bb.ar ]
  %indvars.iv.next2159.lcssa = phi i64 [ %indvars.iv.next2159, %bb.ao ], [ %indvars.iv.next2159.1, %bb.ap ], [ %indvars.iv.next2159.2, %bb.aq ], [ 32, %bb.ar ]
  %i.ha = trunc nuw nsw i64 %indvars.iv.next2159.lcssa to i32
  br label %._crit_edge1615

._crit_edge1615:                                  ; preds = %._crit_edge1615.loopexit, %bb.an
  %.7786.lcssa = phi ptr [ %.0779, %bb.an ], [ %.lcssa3231, %._crit_edge1615.loopexit ] ; 3 uses
  %.7739.lcssa = phi i32 [ %.0732, %bb.an ], [ %.lcssa3232, %._crit_edge1615.loopexit ] ; 3 uses
  %.7693.lcssa = phi i64 [ %i.fr, %bb.an ], [ %.lcssa3230, %._crit_edge1615.loopexit ] ; 4 uses
  %.7683.lcssa = phi i32 [ %i.fs, %bb.an ], [ %i.ha, %._crit_edge1615.loopexit ]
  %i.hb = and i64 %.7693.lcssa, 65535
  %i.hc = lshr i64 %.7693.lcssa, 16
  %i.hd = xor i64 %i.hc, %i.hb
  %.not880 = icmp eq i64 %i.hd, 65535
  br i1 %.not880, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge1615
  store ptr @.str.5, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.at:                                            ; preds = %._crit_edge1615
  %i.he = trunc i64 %.7693.lcssa to i32
  %i.hf = and i32 %i.he, 65535
  store i32 %i.hf, ptr %i.al, align 4, !tbaa !51
  store i32 16194, ptr %i.l, align 8, !tbaa !22
  br i1 %i.az, label %.loopexit908, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.k
  %.8787 = phi ptr [ %.7786.lcssa, %bb.at ], [ %.0779, %bb.k ]
  %.8740 = phi i32 [ %.7739.lcssa, %bb.at ], [ %.0732, %bb.k ]
  %.8694 = phi i64 [ 0, %bb.at ], [ %.0686, %bb.k ]
  %.8684 = phi i32 [ 0, %bb.at ], [ %.0676, %bb.k ]
  store i32 16195, ptr %i.l, align 8, !tbaa !22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.k
  %.9788 = phi ptr [ %.8787, %bb.au ], [ %.0779, %bb.k ] ; 4 uses
  %.9741 = phi i32 [ %.8740, %bb.au ], [ %.0732, %bb.k ] ; 4 uses
  %.9695 = phi i64 [ %.8694, %bb.au ], [ %.0686, %bb.k ] ; 3 uses
  %.9685 = phi i32 [ %.8684, %bb.au ], [ %.0676, %bb.k ] ; 3 uses
  %i.hg = load i32, ptr %i.al, align 4, !tbaa !51 ; 2 uses
  %.not881 = icmp eq i32 %i.hg, 0
  br i1 %.not881, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.hg, i32 %.9741)
  %.1664 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %.0730) ; 5 uses
  %i.hh = icmp eq i32 %.1664, 0
  br i1 %i.hh, label %.loopexit908, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hi = zext i32 %.1664 to i64                  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0776, ptr align 1 %.9788, i64 %i.hi, i1 false)
  %i.hj = sub nuw i32 %.9741, %.1664
  %i.hk = getelementptr inbounds nuw i8, ptr %.9788, i64 %i.hi
  %i.hl = sub nuw i32 %.0730, %.1664
  %i.hm = getelementptr inbounds nuw i8, ptr %.0776, i64 %i.hi
  %i.hn = load i32, ptr %i.al, align 4, !tbaa !51
  %i.ho = sub i32 %i.hn, %.1664
  store i32 %i.ho, ptr %i.al, align 4, !tbaa !51
  br label %.thread

bb.ay:                                            ; preds = %bb.av
  store i32 16191, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.az:                                            ; preds = %.lr.ph1304.preheader
  %i.hp = add i32 %.0732, -1                      ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0779, i64 1 ; 3 uses
  %i.hr = load i8, ptr %.0779, align 1, !tbaa !46
  %i.hs = zext i8 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, %i.br
  %i.hu = add i64 %i.ht, %.0686                   ; 3 uses
  %indvars.iv.next2118 = add nuw nsw i64 %i.br, 8 ; 3 uses
  %i.hv = icmp ult i32 %.0676, 6
  br i1 %i.hv, label %.lr.ph1304.1, label %._crit_edge1305.loopexit

.lr.ph1304.1:                                     ; preds = %bb.az
  %i.hw = icmp eq i32 %i.hp, 0
  br i1 %i.hw, label %.loopexit908.loopexit1789, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1304.1
  %i.hx = add i32 %.0732, -2
  %i.hy = getelementptr inbounds nuw i8, ptr %.0779, i64 2
  %i.hz = load i8, ptr %i.hq, align 1, !tbaa !46
  %i.ia = zext i8 %i.hz to i64
  %i.ib = shl nuw nsw i64 %i.ia, %indvars.iv.next2118
  %i.ic = add i64 %i.ib, %i.hu
  %indvars.iv.next2118.1 = or disjoint i64 %i.br, 16
  br label %._crit_edge1305.loopexit

._crit_edge1305.loopexit:                         ; preds = %bb.ba, %bb.az
  %.lcssa3097 = phi i32 [ %i.hp, %bb.az ], [ %i.hx, %bb.ba ]
  %.lcssa3096 = phi ptr [ %i.hq, %bb.az ], [ %i.hy, %bb.ba ]
  %.lcssa3095 = phi i64 [ %i.hu, %bb.az ], [ %i.ic, %bb.ba ]
  %indvars.iv.next2118.lcssa = phi i64 [ %indvars.iv.next2118, %bb.az ], [ %indvars.iv.next2118.1, %bb.ba ]
  %i.id = trunc nuw nsw i64 %indvars.iv.next2118.lcssa to i32
  br label %._crit_edge1305

._crit_edge1305:                                  ; preds = %._crit_edge1305.loopexit, %.preheader935
  %.10789.lcssa = phi ptr [ %.0779, %.preheader935 ], [ %.lcssa3096, %._crit_edge1305.loopexit ] ; 2 uses
  %.10742.lcssa = phi i32 [ %.0732, %.preheader935 ], [ %.lcssa3097, %._crit_edge1305.loopexit ] ; 2 uses
  %.10696.lcssa = phi i64 [ %.0686, %.preheader935 ], [ %.lcssa3095, %._crit_edge1305.loopexit ] ; 4 uses
  %.10.lcssa = phi i32 [ %.0676, %.preheader935 ], [ %i.id, %._crit_edge1305.loopexit ]
  %i.ie = trunc i64 %.10696.lcssa to i32
  %i.if = and i32 %i.ie, 31                       ; 2 uses
  %i.ig = add nuw nsw i32 %i.if, 257
  store i32 %i.ig, ptr %i.am, align 4, !tbaa !78
  %4 = lshr i64 %.10696.lcssa, 5
  %5 = trunc i64 %4 to i32
  %i.ih = and i32 %5, 31                          ; 2 uses
  %i.ii = add nuw nsw i32 %i.ih, 1
  store i32 %i.ii, ptr %i.an, align 8, !tbaa !79
  %6 = lshr i64 %.10696.lcssa, 10
  %7 = trunc i64 %6 to i32
  %i.ij = and i32 %7, 15
  %i.ik = add nuw nsw i32 %i.ij, 4                ; 2 uses
  store i32 %i.ik, ptr %i.ao, align 8, !tbaa !80
  %i.il = lshr i64 %.10696.lcssa, 14              ; 2 uses
  %i.im = add i32 %.10.lcssa, -14                 ; 2 uses
  %i.in = icmp samesign ugt i32 %i.if, 29
  %i.io = icmp samesign ugt i32 %i.ih, 29
  %or.cond906 = select i1 %i.in, i1 true, i1 %i.io
  br i1 %or.cond906, label %bb.bb, label %.split.thread

bb.bb:                                            ; preds = %._crit_edge1305
  store ptr @.str.6, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

.split.thread:                                    ; preds = %._crit_edge1305
  store i32 0, ptr %i.ap, align 4, !tbaa !77
  store i32 16197, ptr %i.l, align 8, !tbaa !22
  br label %.preheader915.preheader

.split:                                           ; preds = %bb.k
  %.pre2167 = load i32, ptr %i.ao, align 8, !tbaa !80 ; 2 uses
  %.promoted.pre = load i32, ptr %i.ap, align 4, !tbaa !77 ; 3 uses
  %i.ip = icmp ult i32 %.promoted.pre, %.pre2167
  br i1 %i.ip, label %.preheader915.preheader, label %.preheader934

.preheader915.preheader:                          ; preds = %.split.thread, %.split
  %.112230 = phi i32 [ %i.im, %.split.thread ], [ %.0676, %.split ]
  %.116972229 = phi i64 [ %i.il, %.split.thread ], [ %.0686, %.split ]
  %.117432228 = phi i32 [ %.10742.lcssa, %.split.thread ], [ %.0732, %.split ]
  %.117902227 = phi ptr [ %.10789.lcssa, %.split.thread ], [ %.0779, %.split ]
  %i.iq = phi i32 [ %i.ik, %.split.thread ], [ %.pre2167, %.split ] ; 2 uses
  %.promoted2226 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %i.ir = zext i32 %.promoted2226 to i64
  br label %.preheader915

.preheader934:                                    ; preds = %bb.bc, %.split
  %.12791.lcssa = phi ptr [ %.0779, %.split ], [ %.13792.lcssa, %bb.bc ] ; 2 uses
  %.12744.lcssa = phi i32 [ %.0732, %.split ], [ %.13745.lcssa, %bb.bc ] ; 2 uses
  %.12698.lcssa = phi i64 [ %.0686, %.split ], [ %i.jl, %bb.bc ] ; 2 uses
  %.12.lcssa = phi i32 [ %.0676, %.split ], [ %i.jm, %bb.bc ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.iq, %bb.bc ] ; 2 uses
  %i.is = icmp ult i32 %.lcssa, 19
  br i1 %i.is, label %.lr.ph1450.preheader, label %bb.bd

.lr.ph1450.preheader:                             ; preds = %.preheader934
  %i.it = zext nneg i32 %.lcssa to i64
  br label %.lr.ph1450

.preheader915:                                    ; preds = %.preheader915.preheader, %bb.bc
  %indvars.iv2120 = phi i64 [ %i.ir, %.preheader915.preheader ], [ %indvars.iv.next2121, %bb.bc ] ; 2 uses
  %.121443 = phi i32 [ %.112230, %.preheader915.preheader ], [ %i.jm, %bb.bc ] ; 5 uses
  %.126981442 = phi i64 [ %.116972229, %.preheader915.preheader ], [ %i.jl, %bb.bc ] ; 3 uses
  %.127441441 = phi i32 [ %.117432228, %.preheader915.preheader ], [ %.13745.lcssa, %bb.bc ] ; 3 uses
  %.127911440 = phi ptr [ %.117902227, %.preheader915.preheader ], [ %.13792.lcssa, %bb.bc ] ; 4 uses
  %i.iu = icmp ult i32 %.121443, 3
  br i1 %i.iu, label %.lr.ph1314, label %bb.bc

.lr.ph1314:                                       ; preds = %.preheader915
  %i.iv = icmp eq i32 %.127441441, 0
  br i1 %i.iv, label %.loopexit908, label %._crit_edge1315

._crit_edge1315:                                  ; preds = %.lr.ph1314
  %i.iw = or disjoint i32 %.121443, 8
  %i.ix = add i32 %.127441441, -1
  %i.iy = getelementptr inbounds nuw i8, ptr %.127911440, i64 1
  %i.iz = load i8, ptr %.127911440, align 1, !tbaa !46
  %i.ja = zext i8 %i.iz to i64
  %i.jb = zext nneg i32 %.121443 to i64
  %i.jc = shl nuw nsw i64 %i.ja, %i.jb
  %i.jd = add i64 %i.jc, %.126981442
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge1315, %.preheader915
  %.13792.lcssa = phi ptr [ %i.iy, %._crit_edge1315 ], [ %.127911440, %.preheader915 ] ; 2 uses
  %.13745.lcssa = phi i32 [ %i.ix, %._crit_edge1315 ], [ %.127441441, %.preheader915 ] ; 2 uses
  %.13699.lcssa = phi i64 [ %i.jd, %._crit_edge1315 ], [ %.126981442, %.preheader915 ] ; 2 uses
  %.13.lcssa = phi i32 [ %i.iw, %._crit_edge1315 ], [ %.121443, %.preheader915 ]
  %i.je = trunc i64 %.13699.lcssa to i16
  %i.jf = and i16 %i.je, 7
  %indvars.iv.next2121 = add nuw nsw i64 %indvars.iv2120, 1 ; 2 uses
  %i.jg = trunc i64 %indvars.iv.next2121 to i32   ; 2 uses
  store i32 %i.jg, ptr %i.ap, align 4, !tbaa !77
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %indvars.iv2120
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !82
  %i.jj = zext i16 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.jj
  store i16 %i.jf, ptr %i.jk, align 2, !tbaa !82
  %i.jl = lshr i64 %.13699.lcssa, 3               ; 2 uses
  %i.jm = add i32 %.13.lcssa, -3                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.iq, %i.jg
  br i1 %exitcond.not, label %.preheader934, label %.preheader915, !llvm.loop !58

.lr.ph1450:                                       ; preds = %.lr.ph1450.preheader, %.lr.ph1450
  %indvars.iv2123 = phi i64 [ %i.it, %.lr.ph1450.preheader ], [ %indvars.iv.next2124, %.lr.ph1450 ] ; 2 uses
  %indvars.iv.next2124 = add nuw nsw i64 %indvars.iv2123, 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %indvars.iv2123
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !82
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.jp
  store i16 0, ptr %i.jq, align 2, !tbaa !82
  %i.jr = and i64 %indvars.iv.next2124, 4294967295
  %exitcond2127.not = icmp eq i64 %i.jr, 19
  br i1 %exitcond2127.not, label %._crit_edge1451, label %.lr.ph1450, !llvm.loop !59

._crit_edge1451:                                  ; preds = %.lr.ph1450
  store i32 19, ptr %i.ap, align 4, !tbaa !77
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1451, %.preheader934
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !35
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !36
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !37
  store i32 7, ptr %i.av, align 8, !tbaa !83
  %i.js = tail call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %i.aq, i32 noundef 19, ptr noundef nonnull %i.as, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw) #9 ; 2 uses
  %.not857 = icmp eq i32 %i.js, 0
  br i1 %.not857, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr @.str.7, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.bf:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ap, align 4, !tbaa !77
  store i32 16198, ptr %i.l, align 8, !tbaa !22
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge2169, %bb.bf
  %.promoted1505 = phi i32 [ 0, %bb.bf ], [ %.promoted1505.pre, %._crit_edge2169 ] ; 2 uses
  %.14793 = phi ptr [ %.12791.lcssa, %bb.bf ], [ %.0779, %._crit_edge2169 ] ; 2 uses
  %.14746 = phi i32 [ %.12744.lcssa, %bb.bf ], [ %.0732, %._crit_edge2169 ] ; 2 uses
  %.14700 = phi i64 [ %.12698.lcssa, %bb.bf ], [ %.0686, %._crit_edge2169 ] ; 2 uses
  %.14 = phi i32 [ %.12.lcssa, %bb.bf ], [ %.0676, %._crit_edge2169 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.bf ], [ %.0, %._crit_edge2169 ] ; 7 uses
  %i.jt = load i32, ptr %i.am, align 4, !tbaa !78 ; 2 uses
  %i.ju = load i32, ptr %i.an, align 8, !tbaa !79
  %i.jv = add i32 %i.ju, %i.jt                    ; 3 uses
  %i.jw = icmp ult i32 %.promoted1505, %i.jv
  br i1 %i.jw, label %.preheader913.lr.ph, label %._crit_edge1513

.preheader913.lr.ph:                              ; preds = %bb.bg
  %i.jx = load ptr, ptr %i.au, align 8, !tbaa !37 ; 3 uses
  %i.jy = load i32, ptr %i.av, align 8, !tbaa !83
  %notmask = shl nsw i32 -1, %i.jy
  %i.jz = xor i32 %notmask, -1                    ; 2 uses
  br label %.preheader913

.preheader913:                                    ; preds = %.preheader913.lr.ph, %bb.br
  %.151512 = phi i32 [ %.14, %.preheader913.lr.ph ], [ %.21, %bb.br ] ; 4 uses
  %.157011511 = phi i64 [ %.14700, %.preheader913.lr.ph ], [ %.21707, %bb.br ] ; 4 uses
  %.157471510 = phi i32 [ %.14746, %.preheader913.lr.ph ], [ %.21753, %bb.br ] ; 5 uses
  %.157941509 = phi ptr [ %.14793, %.preheader913.lr.ph ], [ %.21800, %bb.br ] ; 3 uses
  %.lcssa150315061508 = phi i32 [ %.promoted1505, %.preheader913.lr.ph ], [ %.lcssa15031507, %bb.br ] ; 11 uses
  %i.ka = trunc i64 %.157011511 to i32
  %i.kb = and i32 %i.jz, %i.ka
  %i.kc = zext nneg i32 %i.kb to i64              ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.kc
  %.sroa.1856.0..sroa_idx1455 = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %.sroa.1856.0.copyload1456 = load i8, ptr %.sroa.1856.0..sroa_idx1455, align 1, !tbaa !46 ; 2 uses
  %i.ke = zext i8 %.sroa.1856.0.copyload1456 to i32 ; 2 uses
  %.not8581457 = icmp ult i32 %.151512, %i.ke
  br i1 %.not8581457, label %.lr.ph1462.preheader, label %._crit_edge1463

.lr.ph1462.preheader:                             ; preds = %.preheader913
  %i.kf = icmp eq i32 %.157471510, 0
  br i1 %i.kf, label %.loopexit908.loopexit2231, label %.lr.ph2886

.lr.ph2886:                                       ; preds = %.lr.ph1462.preheader
  %i.kg = zext nneg i32 %.151512 to i64
  br label %bb.bh

.lr.ph1462:                                       ; preds = %bb.bh
  %i.kh = icmp eq i32 %i.ki, 0
  br i1 %i.kh, label %.loopexit908.loopexit2231, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph2886, %.lr.ph1462
  %.1679514582885 = phi ptr [ %.157941509, %.lr.ph2886 ], [ %i.kj, %.lr.ph1462 ] ; 2 uses
  %.1674814592884 = phi i32 [ %.157471510, %.lr.ph2886 ], [ %i.ki, %.lr.ph1462 ]
  %.1670214602883 = phi i64 [ %.157011511, %.lr.ph2886 ], [ %i.kn, %.lr.ph1462 ]
  %indvars.iv21282882 = phi i64 [ %i.kg, %.lr.ph2886 ], [ %indvars.iv.next2129, %.lr.ph1462 ] ; 2 uses
  %i.ki = add i32 %.1674814592884, -1             ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.1679514582885, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.1679514582885, align 1, !tbaa !46
  %i.kl = zext i8 %i.kk to i64
  %i.km = shl i64 %i.kl, %indvars.iv21282882
  %i.kn = add i64 %i.km, %.1670214602883          ; 4 uses
  %indvars.iv.next2129 = add nuw nsw i64 %indvars.iv21282882, 8 ; 3 uses
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = and i32 %i.jz, %i.ko
  %i.kq = zext nneg i32 %i.kp to i64              ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.kq
  %.sroa.1856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %.sroa.1856.0.copyload = load i8, ptr %.sroa.1856.0..sroa_idx, align 1, !tbaa !46 ; 3 uses
  %i.ks = zext i8 %.sroa.1856.0.copyload to i64
  %.not858 = icmp samesign ult i64 %indvars.iv.next2129, %i.ks
  br i1 %.not858, label %.lr.ph1462, label %._crit_edge1463.loopexit

._crit_edge1463.loopexit:                         ; preds = %bb.bh
  %i.kt = zext i8 %.sroa.1856.0.copyload to i32
  %i.ku = trunc nuw nsw i64 %indvars.iv.next2129 to i32
end_hunk_0
