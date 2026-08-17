inline.NumInlined: 327
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK2cv6stereo8Matching9Median1x9IhEclERKNS_5RangeE:bb.a
  %i.cy = zext nneg i32 %spec.select.384 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !28
  %i.db = icmp ult i8 %i.ch, %i.da
  %spec.select.486 = select i1 %i.db, i32 5, i32 %spec.select.384 ; 2 uses
  %i.dc = zext nneg i32 %spec.select.486 to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !28
  %i.df = icmp ult i8 %i.cg, %i.de
  %spec.select.5 = select i1 %i.df, i32 6, i32 %spec.select.486 ; 2 uses
  %i.dg = zext nneg i32 %spec.select.5 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = icmp ult i8 %i.cf, %i.di
  %spec.select.6 = select i1 %i.dj, i32 7, i32 %spec.select.5 ; 2 uses
  %i.dk = zext nneg i32 %spec.select.6 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !28  ; 2 uses
  %i.dn = icmp ult i8 %i.ce, %i.dm
  %i.do = tail call i8 @llvm.umin.i8(i8 %i.ce, i8 %i.dm)
  %i.dp = zext nneg i32 %spec.select.6 to i64
  %i.dq = select i1 %i.dn, i64 8, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  store i8 %i.do, ptr %i.a, align 1, !tbaa !28
  store i8 %i.cm, ptr %i.dr, align 1, !tbaa !28
  %i.ds = load i8, ptr %i.t, align 1, !tbaa !28   ; 2 uses
  %i.dt = load i8, ptr %i.u, align 1, !tbaa !28
  %i.du = load i8, ptr %i.v, align 1, !tbaa !28
  %i.dv = load i8, ptr %i.w, align 1, !tbaa !28
  %i.dw = load i8, ptr %i.i, align 1, !tbaa !28
  %i.dx = load i8, ptr %i.x, align 1, !tbaa !28
  %i.dy = load i8, ptr %i.y, align 1, !tbaa !28
  %i.dz = load i8, ptr %i.z, align 1, !tbaa !28   ; 2 uses
  %i.ea = icmp ult i8 %i.dy, %i.dz
  %spec.select.1 = select i1 %i.ea, i32 2, i32 1  ; 2 uses
  %i.eb = zext nneg i32 %spec.select.1 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !28
  %i.ee = icmp ult i8 %i.dx, %i.ed
  %spec.select.1.1 = select i1 %i.ee, i32 3, i32 %spec.select.1 ; 2 uses
  %i.ef = zext nneg i32 %spec.select.1.1 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !28
  %i.ei = icmp ult i8 %i.dw, %i.eh
  %spec.select.1.2 = select i1 %i.ei, i32 4, i32 %spec.select.1.1 ; 2 uses
  %i.ej = zext nneg i32 %spec.select.1.2 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !28
  %i.em = icmp ult i8 %i.dv, %i.el
  %spec.select.1.3 = select i1 %i.em, i32 5, i32 %spec.select.1.2 ; 2 uses
  %i.en = zext nneg i32 %spec.select.1.3 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %i.eq = icmp ult i8 %i.du, %i.ep
  %spec.select.1.4 = select i1 %i.eq, i32 6, i32 %spec.select.1.3 ; 2 uses
  %i.er = zext nneg i32 %spec.select.1.4 to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !28
  %i.eu = icmp ult i8 %i.dt, %i.et
  %spec.select.1.5 = select i1 %i.eu, i32 7, i32 %spec.select.1.4 ; 2 uses
  %i.ev = zext nneg i32 %spec.select.1.5 to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !28  ; 2 uses
  %i.ey = icmp ult i8 %i.ds, %i.ex
  %i.ez = tail call i8 @llvm.umin.i8(i8 %i.ds, i8 %i.ex)
  %i.fa = zext nneg i32 %spec.select.1.5 to i64
  %i.fb = select i1 %i.ey, i64 8, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb
  store i8 %i.ez, ptr %i.aa, align 1, !tbaa !28
  store i8 %i.dz, ptr %i.fc, align 1, !tbaa !28
  %i.fd = load i8, ptr %i.ab, align 1, !tbaa !28  ; 2 uses
  %i.fe = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ff = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.fg = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.fh = load i8, ptr %i.i, align 1, !tbaa !28
  %i.fi = load i8, ptr %i.af, align 1, !tbaa !28
  %i.fj = load i8, ptr %i.ag, align 1, !tbaa !28  ; 2 uses
  %i.fk = icmp ult i8 %i.fi, %i.fj
  %spec.select.2 = select i1 %i.fk, i32 3, i32 2  ; 2 uses
  %i.fl = zext nneg i32 %spec.select.2 to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !28
  %i.fo = icmp ult i8 %i.fh, %i.fn
  %spec.select.2.1 = select i1 %i.fo, i32 4, i32 %spec.select.2 ; 2 uses
  %i.fp = zext nneg i32 %spec.select.2.1 to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !28
  %i.fs = icmp ult i8 %i.fg, %i.fr
  %spec.select.2.2 = select i1 %i.fs, i32 5, i32 %spec.select.2.1 ; 2 uses
  %i.ft = zext nneg i32 %spec.select.2.2 to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !28
  %i.fw = icmp ult i8 %i.ff, %i.fv
  %spec.select.2.3 = select i1 %i.fw, i32 6, i32 %spec.select.2.2 ; 2 uses
  %i.fx = zext nneg i32 %spec.select.2.3 to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !28
  %i.ga = icmp ult i8 %i.fe, %i.fz
  %spec.select.2.4 = select i1 %i.ga, i32 7, i32 %spec.select.2.3 ; 2 uses
  %i.gb = zext nneg i32 %spec.select.2.4 to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !28  ; 2 uses
  %i.ge = icmp ult i8 %i.fd, %i.gd
  %i.gf = tail call i8 @llvm.umin.i8(i8 %i.fd, i8 %i.gd)
  %i.gg = zext nneg i32 %spec.select.2.4 to i64
  %i.gh = select i1 %i.ge, i64 8, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gh
  store i8 %i.gf, ptr %i.ah, align 1, !tbaa !28
  store i8 %i.fj, ptr %i.gi, align 1, !tbaa !28
  %i.gj = load i8, ptr %i.ai, align 1, !tbaa !28  ; 2 uses
  %i.gk = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.gl = load i8, ptr %i.ak, align 1, !tbaa !28
  %i.gm = load i8, ptr %i.al, align 1, !tbaa !28
  %i.gn = load i8, ptr %i.i, align 1, !tbaa !28
  %i.go = load i8, ptr %i.am, align 1, !tbaa !28  ; 2 uses
  %i.gp = icmp ult i8 %i.gn, %i.go
  %spec.select.3 = select i1 %i.gp, i32 4, i32 3  ; 2 uses
  %i.gq = zext nneg i32 %spec.select.3 to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !28
  %i.gt = icmp ult i8 %i.gm, %i.gs
  %spec.select.3.1 = select i1 %i.gt, i32 5, i32 %spec.select.3 ; 2 uses
  %i.gu = zext nneg i32 %spec.select.3.1 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !28
  %i.gx = icmp ult i8 %i.gl, %i.gw
  %spec.select.3.2 = select i1 %i.gx, i32 6, i32 %spec.select.3.1 ; 2 uses
  %i.gy = zext nneg i32 %spec.select.3.2 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !28
  %i.hb = icmp ult i8 %i.gk, %i.ha
  %spec.select.3.3 = select i1 %i.hb, i32 7, i32 %spec.select.3.2 ; 2 uses
  %i.hc = zext nneg i32 %spec.select.3.3 to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !28  ; 2 uses
  %i.hf = icmp ult i8 %i.gj, %i.he
  %i.hg = tail call i8 @llvm.umin.i8(i8 %i.gj, i8 %i.he)
  %i.hh = zext nneg i32 %spec.select.3.3 to i64
  %i.hi = select i1 %i.hf, i64 8, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hi
  store i8 %i.hg, ptr %i.an, align 1, !tbaa !28
  store i8 %i.go, ptr %i.hj, align 1, !tbaa !28
  %i.hk = load i8, ptr %i.ao, align 1, !tbaa !28  ; 2 uses
  %i.hl = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.hm = load i8, ptr %i.aq, align 1, !tbaa !28
  %i.hn = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.ho = load i8, ptr %i.i, align 1, !tbaa !28   ; 2 uses
  %i.hp = icmp ult i8 %i.hn, %i.ho
  %spec.select.4 = select i1 %i.hp, i32 5, i32 4  ; 2 uses
  %i.hq = zext nneg i32 %spec.select.4 to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !28
  %i.ht = icmp ult i8 %i.hm, %i.hs
  %spec.select.4.1 = select i1 %i.ht, i32 6, i32 %spec.select.4 ; 2 uses
  %i.hu = zext nneg i32 %spec.select.4.1 to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !28
  %i.hx = icmp ult i8 %i.hl, %i.hw
  %spec.select.4.2 = select i1 %i.hx, i32 7, i32 %spec.select.4.1 ; 2 uses
  %i.hy = zext nneg i32 %spec.select.4.2 to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !28  ; 2 uses
  %i.ib = icmp ult i8 %i.hk, %i.ia
  %i.ic = tail call i8 @llvm.umin.i8(i8 %i.hk, i8 %i.ia)
  %i.id = zext nneg i32 %spec.select.4.2 to i64
  %i.ie = select i1 %i.ib, i64 8, i64 %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ie
  store i8 %i.ic, ptr %i.i, align 1, !tbaa !28
  store i8 %i.ho, ptr %i.if, align 1, !tbaa !28
  %i.ig = load i8, ptr %i.i, align 1, !tbaa !28
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !171
  %i.ii = add nsw i32 %i.cb, %.04356
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.ih, i64 %i.ij
  store i8 %i.ig, ptr %i.ik, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.4, %bb.b
  %i.il = add nuw nsw i32 %.04356, 1              ; 2 uses
  %i.im = load i32, ptr %i.f, align 4, !tbaa !173 ; 3 uses
  %i.in = icmp slt i32 %i.il, %i.im
  br i1 %i.in, label %.lr.ph57.split, label %._crit_edge58, !llvm.loop !240
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6stereo8Matching9Median9x1IhED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6stereo8Matching9Median9x1IhEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 42 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !102
  %.fr = freeze i32 %i.b                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !104
  %i.e = icmp slt i32 %.fr, %i.d
  br i1 %i.e, label %.preheader46.lr.ph, label %._crit_edge57

.preheader46.lr.ph:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.f, align 8, !tbaa !177  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 8
  br i1 %i.l, label %.preheader46.preheader, label %._crit_edge57

.preheader46.preheader:                           ; preds = %.preheader46.lr.ph
  %i.m = sext i32 %.fr to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %._crit_edge54
  %i.u = phi i32 [ %i.k, %.preheader46.preheader ], [ %i.ak, %._crit_edge54 ] ; 2 uses
  %indvars.iv84 = phi i64 [ %i.m, %.preheader46.preheader ], [ %indvars.iv.next85, %._crit_edge54 ] ; 15 uses
  %i.v = icmp sgt i32 %i.u, 8
  br i1 %i.v, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %.preheader46
  %i.w = icmp slt i64 %indvars.iv84, 1
  br i1 %i.w, label %.lr.ph53.split.us, label %.lr.ph53.split.preheader

.lr.ph53.split.us:                                ; preds = %.lr.ph53, %.lr.ph53.split.us
  %.04352.us = phi i32 [ %i.ag, %.lr.ph53.split.us ], [ 4, %.lr.ph53 ] ; 2 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.y = load i32, ptr %i.g, align 4, !tbaa !178
  %i.z = mul nsw i32 %i.y, %.04352.us
  %i.aa = sext i32 %i.z to i64
  %i.ab = add nsw i64 %indvars.iv84, %i.aa        ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !28
  %i.ag = add nuw nsw i32 %.04352.us, 1           ; 2 uses
  %i.ah = load i32, ptr %i.f, align 8, !tbaa !177 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -4
  %i.aj = icmp slt i32 %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph53.split.us, label %._crit_edge54, !llvm.loop !242

._crit_edge57:                                    ; preds = %._crit_edge54, %.preheader46.lr.ph, %bb.a
  ret void

._crit_edge54:                                    ; preds = %bb.b, %.lr.ph53.split.us, %.preheader46
  %i.ak = phi i32 [ %i.ah, %.lr.ph53.split.us ], [ %i.u, %.preheader46 ], [ %i.il, %bb.b ]
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !104
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next85, %i.am
  br i1 %i.an, label %.preheader46, label %._crit_edge57, !llvm.loop !243

.lr.ph53.split.preheader:                         ; preds = %.lr.ph53, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %bb.b ], [ 0, %.lr.ph53 ] ; 10 uses
  %.04352 = phi i32 [ %i.ik, %bb.b ], [ 4, %.lr.ph53 ] ; 3 uses
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !178 ; 4 uses
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = sext i32 %i.ap to i64
  %.not = icmp slt i64 %indvars.iv84, %i.aq
  br i1 %.not, label %._crit_edge.4, label %._crit_edge96

._crit_edge96:                                    ; preds = %.lr.ph53.split.preheader
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.as = mul nsw i32 %i.ao, %.04352
  %i.at = sext i32 %i.as to i64
  %i.au = add nsw i64 %indvars.iv84, %i.at        ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.au
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !28
  %.pre97 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b

._crit_edge.4:                                    ; preds = %.lr.ph53.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !174 ; 9 uses
  %i.ba = sext i32 %i.ao to i64                   ; 9 uses
  %i.bb = mul nsw i64 %indvars.iv, %i.ba
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 %indvars.iv84
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !28  ; 3 uses
  store i8 %i.be, ptr %i.a, align 1, !tbaa !28
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = mul nsw i64 %indvars.iv.next61, %i.ba
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 %indvars.iv84
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28  ; 2 uses
  store i8 %i.bi, ptr %i.n, align 1, !tbaa !28
  %indvars.iv.next61.1 = add nuw nsw i64 %indvars.iv, 2
  %i.bj = mul nsw i64 %indvars.iv.next61.1, %i.ba
  %i.bk = getelementptr i8, ptr %i.az, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %indvars.iv84
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28  ; 2 uses
  store i8 %i.bm, ptr %i.o, align 1, !tbaa !28
  %indvars.iv.next61.2 = add nuw nsw i64 %indvars.iv, 3
  %i.bn = mul nsw i64 %indvars.iv.next61.2, %i.ba
  %i.bo = getelementptr i8, ptr %i.az, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 %indvars.iv84
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !28  ; 2 uses
  store i8 %i.bq, ptr %i.p, align 1, !tbaa !28
  %indvars.iv.next61.3 = add nuw nsw i64 %indvars.iv, 4
  %i.br = mul nsw i64 %indvars.iv.next61.3, %i.ba
  %i.bs = getelementptr i8, ptr %i.az, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %indvars.iv84
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !28  ; 2 uses
  store i8 %i.bu, ptr %i.i, align 1, !tbaa !28
  %indvars.iv.next61.4 = add nuw nsw i64 %indvars.iv, 5
  %i.bv = mul nsw i64 %indvars.iv.next61.4, %i.ba
  %i.bw = getelementptr i8, ptr %i.az, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 %indvars.iv84
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !28  ; 2 uses
  store i8 %i.by, ptr %i.q, align 1, !tbaa !28
  %indvars.iv.next61.5 = add nuw nsw i64 %indvars.iv, 6
  %i.bz = mul nsw i64 %indvars.iv.next61.5, %i.ba
  %i.ca = getelementptr i8, ptr %i.az, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %indvars.iv84
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28  ; 2 uses
  store i8 %i.cc, ptr %i.r, align 1, !tbaa !28
  %indvars.iv.next61.6 = add nuw nsw i64 %indvars.iv, 7
  %i.cd = mul nsw i64 %indvars.iv.next61.6, %i.ba
  %i.ce = getelementptr i8, ptr %i.az, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 %indvars.iv84
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !28  ; 2 uses
  store i8 %i.cg, ptr %i.s, align 1, !tbaa !28
  %indvars.iv.next61.7 = add nuw nsw i64 %indvars.iv, 8
  %i.ch = mul nsw i64 %indvars.iv.next61.7, %i.ba
  %i.ci = getelementptr i8, ptr %i.az, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 %indvars.iv84
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !28  ; 3 uses
  store i8 %i.ck, ptr %i.t, align 1, !tbaa !28
  %i.cl = icmp ult i8 %i.bi, %i.be                ; 2 uses
  %.sroa.sel.idx = zext i1 %i.cl to i64
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx
  %i.cm = load i8, ptr %.sroa.sel, align 1, !tbaa !28
  %i.cn = icmp ult i8 %i.bm, %i.cm
  %spec.select = zext i1 %i.cl to i32
  %spec.select.176 = select i1 %i.cn, i32 2, i32 %spec.select ; 2 uses
  %i.co = zext nneg i32 %spec.select.176 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !28
  %i.cr = icmp ult i8 %i.bq, %i.cq
  %spec.select.278 = select i1 %i.cr, i32 3, i32 %spec.select.176 ; 2 uses
  %i.cs = zext nneg i32 %spec.select.278 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !28
  %i.cv = icmp ult i8 %i.bu, %i.cu
  %spec.select.380 = select i1 %i.cv, i32 4, i32 %spec.select.278 ; 2 uses
  %i.cw = zext nneg i32 %spec.select.380 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !28
  %i.cz = icmp ult i8 %i.by, %i.cy
  %spec.select.482 = select i1 %i.cz, i32 5, i32 %spec.select.380 ; 2 uses
  %i.da = zext nneg i32 %spec.select.482 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !28
  %i.dd = icmp ult i8 %i.cc, %i.dc
  %spec.select.5 = select i1 %i.dd, i32 6, i32 %spec.select.482 ; 2 uses
  %i.de = zext nneg i32 %spec.select.5 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !28
  %i.dh = icmp ult i8 %i.cg, %i.dg
  %spec.select.6 = select i1 %i.dh, i32 7, i32 %spec.select.5 ; 2 uses
  %i.di = zext nneg i32 %spec.select.6 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !28  ; 2 uses
  %i.dl = icmp ult i8 %i.ck, %i.dk
  %i.dm = tail call i8 @llvm.umin.i8(i8 %i.ck, i8 %i.dk)
  %i.dn = zext nneg i32 %spec.select.6 to i64
  %i.do = select i1 %i.dl, i64 8, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.do
  store i8 %i.dm, ptr %i.a, align 1, !tbaa !28
  store i8 %i.be, ptr %i.dp, align 1, !tbaa !28
  %i.dq = load i8, ptr %i.t, align 1, !tbaa !28   ; 2 uses
  %i.dr = load i8, ptr %i.s, align 1, !tbaa !28
  %i.ds = load i8, ptr %i.r, align 1, !tbaa !28
  %i.dt = load i8, ptr %i.q, align 1, !tbaa !28
  %i.du = load i8, ptr %i.i, align 1, !tbaa !28
  %i.dv = load i8, ptr %i.p, align 1, !tbaa !28
  %i.dw = load i8, ptr %i.o, align 1, !tbaa !28
  %i.dx = load i8, ptr %i.n, align 1, !tbaa !28   ; 2 uses
  %i.dy = icmp ult i8 %i.dw, %i.dx
  %spec.select.1 = select i1 %i.dy, i32 2, i32 1  ; 2 uses
  %i.dz = zext nneg i32 %spec.select.1 to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !28
  %i.ec = icmp ult i8 %i.dv, %i.eb
  %spec.select.1.1 = select i1 %i.ec, i32 3, i32 %spec.select.1 ; 2 uses
  %i.ed = zext nneg i32 %spec.select.1.1 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !28
  %i.eg = icmp ult i8 %i.du, %i.ef
  %spec.select.1.2 = select i1 %i.eg, i32 4, i32 %spec.select.1.1 ; 2 uses
  %i.eh = zext nneg i32 %spec.select.1.2 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !28
  %i.ek = icmp ult i8 %i.dt, %i.ej
  %spec.select.1.3 = select i1 %i.ek, i32 5, i32 %spec.select.1.2 ; 2 uses
  %i.el = zext nneg i32 %spec.select.1.3 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !28
  %i.eo = icmp ult i8 %i.ds, %i.en
  %spec.select.1.4 = select i1 %i.eo, i32 6, i32 %spec.select.1.3 ; 2 uses
  %i.ep = zext nneg i32 %spec.select.1.4 to i64
end_hunk_0
