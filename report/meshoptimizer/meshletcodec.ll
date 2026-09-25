Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletcodec?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@meshopt_encodeMeshlet:bb.a
  %or.cond29.5.i.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond29.5.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = icmp ugt i8 %i.j, %i.m
  %i.cl = icmp ugt i8 %i.j, %i.p
  %or.cond.i112.i = select i1 %i.ck, i1 %i.cl, i1 false
  %i.cm = icmp ugt i8 %i.m, %i.p
  %i.cn = select i1 %i.cm, i64 2, i64 0
  %i.co = select i1 %or.cond.i112.i, i64 1, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL15encodeTrianglesEPhS0_PKhmE9rotations, i64 %i.co ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.i, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11  ; 2 uses
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %i.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !11  ; 2 uses
  %i.da = zext i8 %i.cz to i32                    ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !12
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %i.i, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !11  ; 2 uses
  %i.dg = zext i8 %i.df to i32                    ; 6 uses
  %i.dh = icmp eq i32 %.092121.i, %i.cu
  br i1 %i.dh, label %bb.w, label %bb.x

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.ph.i = phi i32 [ 22, %bb.r ], [ 18, %bb.o ], [ 14, %bb.l ], [ 10, %bb.i ], [ 6, %bb.f ], [ 2, %bb.c ], [ 21, %bb.q ], [ 17, %bb.n ], [ 13, %bb.k ], [ 9, %bb.h ], [ 5, %bb.e ], [ 1, %bb.b ], [ 20, %bb.p ], [ 16, %bb.m ], [ 12, %bb.j ], [ 8, %bb.g ], [ 4, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.di = and i32 %.ph.i, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL15encodeTrianglesEPhS0_PKhmE9rotations, i64 %i.dj ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %i.i, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !11
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !12
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.i, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !12
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.i, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !11  ; 2 uses
  %i.eb = zext i8 %i.ea to i32                    ; 3 uses
  %i.ec = icmp eq i32 %.092121.i, %i.eb           ; 3 uses
  %i.ed = zext i1 %i.ec to i32
  %spec.select.i = add nuw nsw i32 %.092121.i, %i.ed
  %not.118.i = xor i1 %i.ec, true
  %spec.select107.i = zext i1 %not.118.i to i32
  %i.ee = lshr i32 %.ph.i, 1
  %i.ef = and i32 %i.ee, 14
  %i.eg = or disjoint i32 %i.ef, %spec.select107.i
  %.0.tr105.i = trunc i64 %.0122.i to i32
  %i.eh = shl i32 %.0.tr105.i, 2
  %i.ei = and i32 %i.eh, 4
  %i.ej = shl nuw nsw i32 %i.eg, %i.ei
  %i.ek = lshr i64 %.0122.i, 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ek ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = trunc nuw i32 %i.ej to i8
  %i.eo = or i8 %i.em, %i.en
  store i8 %i.eo, ptr %i.el, align 1, !tbaa !11
  br i1 %i.ec, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %.093120.i, i64 1
  store i8 %i.ea, ptr %.093120.i, align 1, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.194.i = phi ptr [ %i.ep, %bb.u ], [ %.093120.i, %bb.t ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0117119.i ; 2 uses
  store i32 %i.eb, ptr %i.eq, align 8, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %i.dv, ptr %i.er, align 4, !tbaa !12
  %i.es = add nuw nsw i64 %.0117119.i, 1
  %i.et = and i64 %i.es, 7
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.et ; 2 uses
  store i32 %i.dp, ptr %i.eu, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.eb, ptr %i.ev, align 4, !tbaa !12
  %.pre.i = add nuw nsw i64 %.0117119.i, 2
  %.pre124.i = and i64 %.pre.i, 7
  br label %bb.ag

bb.w:                                             ; preds = %bb.s
  %i.ew = add nuw nsw i32 %.092121.i, 1
  %i.ex = icmp eq i32 %i.ew, %i.da
  %i.ey = add nuw nsw i32 %.092121.i, 2
  %i.ez = icmp eq i32 %i.ey, %i.dg
  %or.cond109.i = select i1 %i.ex, i1 %i.ez, i1 false
  br i1 %or.cond109.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.fa = icmp eq i32 %.092121.i, %i.da
  br i1 %i.fa, label %.thread.i, label %bb.z

.thread.i:                                        ; preds = %bb.x, %bb.w
  %i.fb = phi i8 [ 13, %bb.x ], [ 12, %bb.w ]     ; 2 uses
  %.not131.i = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.fc = add nuw nsw i32 %i.da, 1
  %i.fd = icmp eq i32 %i.fc, %i.dg
  br i1 %i.fd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread.i, %bb.x
  %i.fe = phi i8 [ %i.fb, %bb.y ], [ %i.fb, %.thread.i ], [ 13, %bb.x ]
  %.not130.i = phi i1 [ %.not131.i, %bb.y ], [ %.not131.i, %.thread.i ], [ false, %bb.x ]
  %.3.i = phi i32 [ %i.dg, %bb.y ], [ %i.da, %.thread.i ], [ %.092121.i, %bb.x ] ; 2 uses
  %.not103.i = phi i1 [ true, %bb.y ], [ false, %.thread.i ], [ false, %bb.x ]
  %i.ff = phi i8 [ 0, %bb.y ], [ 1, %.thread.i ], [ 1, %bb.x ]
  %i.fg = icmp eq i32 %.3.i, %i.dg                ; 3 uses
  %i.fh = zext i1 %i.fg to i32
  %spec.select110.i = add nuw nsw i32 %.3.i, %i.fh
  %not..i = xor i1 %i.fg, true
  %spec.select111.i = zext i1 %not..i to i8
  %i.fi = add nuw nsw i8 %i.ff, %i.fe
  %i.fj = add nuw nsw i8 %i.fi, %spec.select111.i
  %.0.tr.i = trunc i64 %.0122.i to i8
  %i.fk = shl i8 %.0.tr.i, 2
  %i.fl = and i8 %i.fk, 4
  %i.fm = shl nuw i8 %i.fj, %i.fl
  %i.fn = lshr i64 %.0122.i, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !11
  %i.fq = or i8 %i.fm, %i.fp
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !11
  br i1 %.not130.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fr = getelementptr inbounds nuw i8, ptr %.093120.i, i64 1
  store i8 %i.ct, ptr %.093120.i, align 1, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.295.i = phi ptr [ %i.fr, %bb.aa ], [ %.093120.i, %bb.z ] ; 3 uses
  br i1 %.not103.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = getelementptr inbounds nuw i8, ptr %.295.i, i64 1
  store i8 %i.cz, ptr %.295.i, align 1, !tbaa !11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.396.i = phi ptr [ %i.fs, %bb.ac ], [ %.295.i, %bb.ab ] ; 3 uses
  br i1 %i.fg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %.396.i, i64 1
  store i8 %i.df, ptr %.396.i, align 1, !tbaa !11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.497.i = phi ptr [ %i.ft, %bb.ae ], [ %.396.i, %bb.ad ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0117119.i ; 2 uses
  store i32 %i.dg, ptr %i.fu, align 8, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %i.da, ptr %i.fv, align 4, !tbaa !12
  %i.fw = add nuw nsw i64 %.0117119.i, 1
  %i.fx = and i64 %i.fw, 7
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fx ; 2 uses
  store i32 %i.cu, ptr %i.fy, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 %i.dg, ptr %i.fz, align 4, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.v
  %.1.pre-phi.i = phi i64 [ %i.bz, %bb.af ], [ %.pre124.i, %bb.v ]
  %.598.i = phi ptr [ %.497.i, %bb.af ], [ %.194.i, %bb.v ] ; 2 uses
  %.5.i = phi i32 [ %spec.select110.i, %bb.af ], [ %spec.select.i, %bb.v ]
  %i.ga = add nuw i64 %.0122.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ga, %5
  br i1 %exitcond.not.i, label %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit, label %.lr.ph.i, !llvm.loop !18

_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit:     ; preds = %bb.ag, %bb.a
  %.093.lcssa.i = phi ptr [ %i.c, %bb.a ], [ %.598.i, %bb.ag ]
  %i.gb = ptrtoint ptr %.093.lcssa.i to i64
  %i.gc = ptrtoint ptr %i.c to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ge = add i64 %3, 3
  %i.gf = lshr i64 %i.ge, 2                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 0, i64 %i.gf, i1 false)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit, label %.lr.ph.i39

.critedge.i:                                      ; preds = %bb.aj, %bb.ai, %bb.ah, %.lr.ph.i39
  %.sroa.7.0.i = phi i32 [ %i.hb, %bb.aj ], [ %i.hb, %bb.ai ], [ %i.hb, %bb.ah ], [ 0, %.lr.ph.i39 ] ; 8 uses
  %.sroa.11.0.i = phi i32 [ %i.hk, %bb.aj ], [ %i.hk, %bb.ai ], [ 0, %bb.ah ], [ 0, %.lr.ph.i39 ] ; 8 uses
  %.sroa.15.0.i = phi i32 [ %i.ht, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %.lr.ph.i39 ] ; 8 uses
  %.157.lcssa.i = phi i32 [ %i.ho, %bb.aj ], [ %i.hf, %bb.ai ], [ %i.gw, %bb.ah ], [ %i.gn, %.lr.ph.i39 ]
  %i.gg = or i32 %.sroa.7.0.i, %i.gs
  %i.gh = or i32 %i.gg, %.sroa.11.0.i
  %i.gi = or i32 %i.gh, %.sroa.15.0.i
  %i.gj = icmp ugt i32 %i.gi, 16777215
  br i1 %i.gj, label %.thread.i41, label %bb.ak

.thread.i41:                                      ; preds = %.critedge.i
  %i.gk = lshr exact i64 %.05587.i, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gk
  br label %.thread75.us.preheader.i

.lr.ph.i39:                                       ; preds = %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit, %.split85.us.i
  %.05388.i = phi ptr [ %.us-phi.i, %.split85.us.i ], [ %i.e, %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit ] ; 11 uses
  %.05587.i = phi i64 [ %i.iq, %.split85.us.i ], [ 0, %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit ] ; 7 uses
  %.05686.i = phi i32 [ %.157.lcssa.i, %.split85.us.i ], [ -1, %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05587.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !12 ; 3 uses
  %i.go = xor i32 %.05686.i, -1
  %i.gp = add i32 %i.gn, %i.go                    ; 2 uses
  %i.gq = shl i32 %i.gp, 1                        ; 2 uses
  %i.gr = ashr i32 %i.gp, 31                      ; 2 uses
  %i.gs = xor i32 %i.gq, %i.gr                    ; 7 uses
  %i.gt = or disjoint i64 %.05587.i, 1            ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %3
  br i1 %i.gu, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %.lr.ph.i39
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gt
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !12 ; 3 uses
  %i.gx = xor i32 %i.gn, -1
  %i.gy = add i32 %i.gw, %i.gx                    ; 2 uses
  %i.gz = shl i32 %i.gy, 1
  %i.ha = ashr i32 %i.gy, 31
  %i.hb = xor i32 %i.gz, %i.ha                    ; 3 uses
  %i.hc = or disjoint i64 %.05587.i, 2            ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %3
  br i1 %i.hd, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hc
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !12 ; 3 uses
  %i.hg = xor i32 %i.gw, -1
  %i.hh = add i32 %i.hf, %i.hg                    ; 2 uses
  %i.hi = shl i32 %i.hh, 1
  %i.hj = ashr i32 %i.hh, 31
  %i.hk = xor i32 %i.hi, %i.hj                    ; 2 uses
  %i.hl = or disjoint i64 %.05587.i, 3            ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %3
  br i1 %i.hm, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hl
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !12 ; 2 uses
  %i.hp = xor i32 %i.hf, -1
  %i.hq = add i32 %i.ho, %i.hp                    ; 2 uses
  %i.hr = shl i32 %i.hq, 1
  %i.hs = ashr i32 %i.hq, 31
  %i.ht = xor i32 %i.hr, %i.hs
  br label %.critedge.i

bb.ak:                                            ; preds = %.critedge.i
  %i.hu = icmp ugt i32 %i.gs, 65535               ; 2 uses
  %i.hv = icmp ugt i32 %.sroa.7.0.i, 65535        ; 2 uses
  %or.cond.i = and i1 %i.hu, %i.hv
  %i.hw = icmp ugt i32 %.sroa.11.0.i, 65535       ; 2 uses
  %or.cond5.i = and i1 %or.cond.i, %i.hw
  %i.hx = icmp samesign ugt i32 %.sroa.15.0.i, 65535 ; 2 uses
  %i.hy = and i1 %or.cond5.i, %i.hx
  %i.hz = lshr exact i64 %.05587.i, 2
  %i.ia = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hz ; 9 uses
  br i1 %i.hy, label %.thread75.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.ak
  %i.ib = icmp eq i32 %i.gq, %i.gr
  br i1 %i.ib, label %.thread75.i, label %bb.al

.thread75.us.preheader.i:                         ; preds = %bb.ak, %.thread.i41
  %i.ic = phi ptr [ %i.gl, %.thread.i41 ], [ %i.ia, %bb.ak ] ; 8 uses
  store i32 %i.gs, ptr %.05388.i, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.05388.i, i64 4
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !11
  %i.if = or i8 %i.ie, 17
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !11
  store i32 %.sroa.7.0.i, ptr %i.id, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %.05388.i, i64 8
  %i.ih = load i8, ptr %i.ic, align 1, !tbaa !11
  %i.ii = or i8 %i.ih, 34
  store i8 %i.ii, ptr %i.ic, align 1, !tbaa !11
  store i32 %.sroa.11.0.i, ptr %i.ig, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.05388.i, i64 12
  %i.ik = load i8, ptr %i.ic, align 1, !tbaa !11
  %i.il = or i8 %i.ik, 68
  store i8 %i.il, ptr %i.ic, align 1, !tbaa !11
  store i32 %.sroa.15.0.i, ptr %i.ij, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %.05388.i, i64 16
  %i.in = load i8, ptr %i.ic, align 1, !tbaa !11
  %i.io = or i8 %i.in, -120
  br label %.split85.us.i

.split85.us.i:                                    ; preds = %.thread75.3.i, %.thread75.us.preheader.i
  %i.ip = phi ptr [ %i.ia, %.thread75.3.i ], [ %i.ic, %.thread75.us.preheader.i ]
  %storemerge.i = phi i8 [ %i.lf, %.thread75.3.i ], [ %i.io, %.thread75.us.preheader.i ]
  %.us-phi.i = phi ptr [ %.5.3.i, %.thread75.3.i ], [ %i.im, %.thread75.us.preheader.i ] ; 2 uses
  store i8 %storemerge.i, ptr %i.ip, align 1, !tbaa !11
  %i.iq = add nuw i64 %.05587.i, 4                ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %3
  br i1 %i.ir, label %.lr.ph.i39, label %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit, !llvm.loop !19

bb.al:                                            ; preds = %.split.preheader.i
  %i.is = icmp ult i32 %i.gs, 256
  br i1 %i.is, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.it = trunc nuw i32 %i.gs to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %.05388.i, i64 1
  store i8 %i.it, ptr %.05388.i, align 1, !tbaa !11
  br label %.thread75.i

bb.an:                                            ; preds = %bb.al
  %i.iv = trunc i32 %i.gs to i16
  store i16 %i.iv, ptr %.05388.i, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.05388.i, i64 2 ; 2 uses
  br i1 %i.hu, label %bb.ao, label %.thread75.i

bb.ao:                                            ; preds = %bb.an
  %i.ix = lshr i32 %i.gs, 16
  %i.iy = trunc i32 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %.05388.i, i64 3
  store i8 %i.iy, ptr %i.iw, align 1, !tbaa !11
  br label %.thread75.i

.thread75.i:                                      ; preds = %bb.ao, %bb.an, %bb.am, %.split.preheader.i
  %i.ja = phi i8 [ 0, %.split.preheader.i ], [ 3, %bb.ao ], [ 2, %bb.an ], [ 1, %bb.am ] ; 2 uses
  %.5.i40 = phi ptr [ %.05388.i, %.split.preheader.i ], [ %i.iz, %bb.ao ], [ %i.iw, %bb.an ], [ %i.iu, %bb.am ] ; 6 uses
  %i.jb = and i8 %i.ja, 1
  %i.jc = shl nuw nsw i8 %i.ja, 3
  %i.jd = and i8 %i.jc, 16
  %i.je = or disjoint i8 %i.jd, %i.jb
  %i.jf = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.jg = or i8 %i.je, %i.jf
  store i8 %i.jg, ptr %i.ia, align 1, !tbaa !11
  %i.jh = icmp eq i32 %.sroa.7.0.i, 0
  br i1 %i.jh, label %.thread75.1.i, label %bb.ap

bb.ap:                                            ; preds = %.thread75.i
  %i.ji = icmp ult i32 %.sroa.7.0.i, 256
  br i1 %i.ji, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jj = trunc i32 %.sroa.7.0.i to i16
  store i16 %i.jj, ptr %.5.i40, align 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.5.i40, i64 2 ; 2 uses
  br i1 %i.hv, label %bb.ar, label %.thread75.1.i

bb.ar:                                            ; preds = %bb.aq
  %i.jl = lshr i32 %.sroa.7.0.i, 16
  %i.jm = trunc i32 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %.5.i40, i64 3
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !11
  br label %.thread75.1.i

bb.as:                                            ; preds = %bb.ap
  %i.jo = trunc nuw i32 %.sroa.7.0.i to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %.5.i40, i64 1
  store i8 %i.jo, ptr %.5.i40, align 1, !tbaa !11
  br label %.thread75.1.i

.thread75.1.i:                                    ; preds = %bb.as, %bb.ar, %bb.aq, %.thread75.i
  %i.jq = phi i8 [ 0, %.thread75.i ], [ 3, %bb.ar ], [ 2, %bb.aq ], [ 1, %bb.as ] ; 2 uses
  %.5.1.i = phi ptr [ %.5.i40, %.thread75.i ], [ %i.jn, %bb.ar ], [ %i.jk, %bb.aq ], [ %i.jp, %bb.as ] ; 6 uses
  %i.jr = shl nuw nsw i8 %i.jq, 1
  %i.js = and i8 %i.jr, 2
  %i.jt = shl nuw nsw i8 %i.jq, 4
  %i.ju = and i8 %i.jt, 32
  %i.jv = or disjoint i8 %i.js, %i.ju
  %i.jw = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.jx = or i8 %i.jv, %i.jw
  store i8 %i.jx, ptr %i.ia, align 1, !tbaa !11
  %i.jy = icmp eq i32 %.sroa.11.0.i, 0
  br i1 %i.jy, label %.thread75.2.i, label %bb.at

bb.at:                                            ; preds = %.thread75.1.i
  %i.jz = icmp ult i32 %.sroa.11.0.i, 256
  br i1 %i.jz, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ka = trunc i32 %.sroa.11.0.i to i16
  store i16 %i.ka, ptr %.5.1.i, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.5.1.i, i64 2 ; 2 uses
  br i1 %i.hw, label %bb.av, label %.thread75.2.i

bb.av:                                            ; preds = %bb.au
  %i.kc = lshr i32 %.sroa.11.0.i, 16
  %i.kd = trunc i32 %i.kc to i8
  %i.ke = getelementptr inbounds nuw i8, ptr %.5.1.i, i64 3
  store i8 %i.kd, ptr %i.kb, align 1, !tbaa !11
  br label %.thread75.2.i

bb.aw:                                            ; preds = %bb.at
  %i.kf = trunc nuw i32 %.sroa.11.0.i to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.5.1.i, i64 1
  store i8 %i.kf, ptr %.5.1.i, align 1, !tbaa !11
  br label %.thread75.2.i

.thread75.2.i:                                    ; preds = %bb.aw, %bb.av, %bb.au, %.thread75.1.i
  %i.kh = phi i8 [ 0, %.thread75.1.i ], [ 3, %bb.av ], [ 2, %bb.au ], [ 1, %bb.aw ] ; 2 uses
  %.5.2.i = phi ptr [ %.5.1.i, %.thread75.1.i ], [ %i.ke, %bb.av ], [ %i.kb, %bb.au ], [ %i.kg, %bb.aw ] ; 6 uses
  %i.ki = shl nuw nsw i8 %i.kh, 2
  %i.kj = and i8 %i.ki, 4
  %i.kk = shl nuw nsw i8 %i.kh, 5
  %i.kl = and i8 %i.kk, 64
  %i.km = or disjoint i8 %i.kj, %i.kl
  %i.kn = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.ko = or i8 %i.km, %i.kn
  store i8 %i.ko, ptr %i.ia, align 1, !tbaa !11
  %i.kp = icmp eq i32 %.sroa.15.0.i, 0
  br i1 %i.kp, label %.thread75.3.i, label %bb.ax

bb.ax:                                            ; preds = %.thread75.2.i
  %i.kq = icmp samesign ult i32 %.sroa.15.0.i, 256
  br i1 %i.kq, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kr = trunc i32 %.sroa.15.0.i to i16
  store i16 %i.kr, ptr %.5.2.i, align 1
  %i.ks = getelementptr inbounds nuw i8, ptr %.5.2.i, i64 2 ; 2 uses
  br i1 %i.hx, label %bb.az, label %.thread75.3.i

bb.az:                                            ; preds = %bb.ay
  %i.kt = lshr i32 %.sroa.15.0.i, 16
  %i.ku = trunc nuw i32 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %.5.2.i, i64 3
  store i8 %i.ku, ptr %i.ks, align 1, !tbaa !11
  br label %.thread75.3.i

bb.ba:                                            ; preds = %bb.ax
  %i.kw = trunc nuw i32 %.sroa.15.0.i to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %.5.2.i, i64 1
  store i8 %i.kw, ptr %.5.2.i, align 1, !tbaa !11
  br label %.thread75.3.i

.thread75.3.i:                                    ; preds = %bb.ba, %bb.az, %bb.ay, %.thread75.2.i
  %i.ky = phi i8 [ 0, %.thread75.2.i ], [ 3, %bb.az ], [ 2, %bb.ay ], [ 1, %bb.ba ] ; 2 uses
  %.5.3.i = phi ptr [ %.5.2.i, %.thread75.2.i ], [ %i.kv, %bb.az ], [ %i.ks, %bb.ay ], [ %i.kx, %bb.ba ]
  %i.kz = shl nuw nsw i8 %i.ky, 3
  %i.la = and i8 %i.kz, 8
  %i.lb = shl nuw i8 %i.ky, 6
  %i.lc = and i8 %i.lb, -128
  %i.ld = or disjoint i8 %i.la, %i.lc
  %i.le = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.lf = or i8 %i.ld, %i.le
  br label %.split85.us.i

_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit:      ; preds = %.split85.us.i, %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit
  %.053.lcssa.i = phi ptr [ %i.e, %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit ], [ %.us-phi.i, %.split85.us.i ]
  %i.lg = ptrtoint ptr %.053.lcssa.i to i64
  %i.lh = ptrtoint ptr %i.e to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 3 uses
  %i.lj = add nuw i64 %i.g, %i.gf                 ; 2 uses
  %i.lk = call i64 @llvm.usub.sat.i64(i64 16, i64 %i.lj) ; 3 uses
  %i.ll = add nuw i64 %i.lj, %i.lk
  %i.lm = add i64 %i.ll, %i.gd
  %i.ln = add i64 %i.lm, %i.li                    ; 2 uses
  %i.lo = icmp ugt i64 %i.ln, %1
  br i1 %i.lo, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.e, i64 %i.li, i1 false)
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %i.li ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lp, ptr nonnull align 16 %i.c, i64 %i.gd, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.gd ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.lq, i8 0, i64 %i.lk, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lk ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lr, ptr nonnull align 16 %i.d, i64 %i.gf, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.gf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ls, ptr nonnull align 16 %i.b, i64 %i.g, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit, %bb.bb
  %.0 = phi i64 [ %i.ln, %bb.bb ], [ 0, %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @meshopt_decodeMeshlet(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %4, 1
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = add i64 %1, 3
  %i.d = lshr i64 %i.c, 2                         ; 2 uses
  %i.e = add nuw i64 %i.b, %i.d                   ; 2 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 16, i64 %i.e) ; 2 uses
  %i.g = add nuw i64 %i.f, %i.e
  %i.h = icmp ult i64 %7, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %7
  %i.j = sub nsw i64 0, %i.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = sub nsw i64 0, %i.d
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = sub nsw i64 0, %i.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr @_ZN7meshoptL24gDecodeTablesInitializedE, align 1, !tbaa !15, !range !16, !noundef !17
  %i.q = trunc nuw i8 %i.p to i1
  %_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm._ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm = select i1 %i.q, ptr @_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm, ptr @_ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm
  %i.r = tail call noundef i32 %_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm._ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm(ptr noundef %0, ptr noundef %3, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %6, ptr noundef %i.o, i64 noundef %1, i64 noundef %4, i64 noundef %2, i64 noundef %5), !callees !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.r, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef range(i32 -3, 1) i32 @_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readnone captures(address) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.a = icmp eq i64 %8, 4
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %6, 2                           ; 2 uses
  %.not41.i144.not = icmp eq i64 %i.b, 0
  br i1 %.not41.i144.not, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.b, %bb.c
  %.031.i147 = phi i64 [ %i.ac, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.c = phi <4 x i32> [ %i.w, %bb.c ], [ splat (i32 -1), %bb.b ]
  %.038.i146 = phi ptr [ %i.d, %bb.c ], [ %3, %bb.b ] ; 2 uses
  %.067145 = phi ptr [ %i.aa, %bb.c ], [ %4, %bb.b ] ; 3 uses
  %.not.i = icmp ugt ptr %.067145, %5
  br i1 %.not.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph149
  %i.d = getelementptr inbounds nuw i8, ptr %.038.i146, i64 1 ; 2 uses
  %i.e = load i8, ptr %.038.i146, align 1, !tbaa !11
  %i.f = load <16 x i8>, ptr %.067145, align 1, !tbaa !11
  %i.g = zext i8 %i.e to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.g
  %i.i = load <16 x i8>, ptr %i.h, align 16, !tbaa !11
  %i.j = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.f, <16 x i8> %i.i) ; 2 uses
  %i.k = bitcast <16 x i8> %i.j to <4 x i32>
  %i.l = bitcast <16 x i8> %i.j to <4 x i32>
  %i.m = and <4 x i32> %i.l, splat (i32 1)
  %i.n = sub nsw <4 x i32> zeroinitializer, %i.m
  %i.o = lshr <4 x i32> %i.k, splat (i32 1)
  %i.p = xor <4 x i32> %i.o, %i.n
  %i.q = add <4 x i32> %i.p, splat (i32 1)        ; 2 uses
  %i.r = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.q, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.s = add <4 x i32> %i.q, %i.r                 ; 2 uses
  %i.t = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.s, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.u = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.v = add <4 x i32> %i.s, %i.u
  %i.w = add <4 x i32> %i.v, %i.t                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.g
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.067145, i64 %i.z ; 2 uses
  %.idx.i = shl nuw i64 %.031.i147, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  store <4 x i32> %i.w, ptr %i.ab, align 1, !tbaa !11
  %i.ac = add nuw nsw i64 %.031.i147, 1           ; 2 uses
  %exitcond191.not = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond191.not, label %._crit_edge150.loopexit, label %.lr.ph149, !llvm.loop !0

._crit_edge150.loopexit:                          ; preds = %bb.c
  %i.ad = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 poison>
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit, %bb.b
  %.067.lcssa = phi ptr [ %4, %bb.b ], [ %i.aa, %._crit_edge150.loopexit ] ; 4 uses
  %.038.i.lcssa = phi ptr [ %3, %bb.b ], [ %i.d, %._crit_edge150.loopexit ]
  %.lcssa = phi <4 x i32> [ <i32 -1, i32 -1, i32 -1, i32 undef>, %bb.b ], [ %i.ad, %._crit_edge150.loopexit ]
  %i.ae = and i64 %6, 3                           ; 3 uses
  %.not42.i = icmp eq i64 %i.ae, 0
  br i1 %.not42.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97, label %bb.d

bb.d:                                             ; preds = %._crit_edge150
  %.not44.i = icmp ugt ptr %.067.lcssa, %5
  br i1 %.not44.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %.038.i.lcssa, align 1, !tbaa !11
  %i.ag = load <16 x i8>, ptr %.067.lcssa, align 1, !tbaa !11
  %i.ah = zext i8 %i.af to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.ah
  %i.aj = load <16 x i8>, ptr %i.ai, align 16, !tbaa !11
  %i.ak = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ag, <16 x i8> %i.aj) ; 2 uses
  %i.al = bitcast <16 x i8> %i.ak to <4 x i32>
  %i.am = bitcast <16 x i8> %i.ak to <4 x i32>
  %i.an = and <4 x i32> %i.am, splat (i32 1)
  %i.ao = sub nsw <4 x i32> zeroinitializer, %i.an
  %i.ap = lshr <4 x i32> %i.al, splat (i32 1)
  %i.aq = xor <4 x i32> %i.ap, %i.ao
  %i.ar = add <4 x i32> %i.aq, splat (i32 1)      ; 2 uses
  %i.as = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ar, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.at = add <4 x i32> %i.ar, %i.as              ; 2 uses
  %i.au = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.at, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.av = add <4 x i32> %i.at, %.lcssa
  %i.aw = add <4 x i32> %i.av, %i.au              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.ah
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 %i.az ; 3 uses
  %i.bb = and i64 %6, 4294967292
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb ; 3 uses
  %i.bd = extractelement <4 x i32> %i.aw, i64 0
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !12
  %cond.i = icmp eq i64 %i.ae, 1
  br i1 %cond.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = extractelement <4 x i32> %i.aw, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !12
end_hunk_0
