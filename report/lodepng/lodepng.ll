Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  %i.dj = and i16 %i.di, 7
  %i.dk = ashr i16 -129, %i.dj
  %i.dl = trunc i16 %i.dk to i8
  %i.dm = and i8 %i.dd, %i.dl
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.2

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.2:     ; preds = %bb.q, %bb.p
  %.sink.i.us.i.2 = phi i8 [ %i.dh, %bb.p ], [ %i.dm, %bb.q ]
  store i8 %.sink.i.us.i.2, ptr %i.dc, align 1, !tbaa !35
  %i.dn = add i64 %i.az, 3                        ; 3 uses
  br i1 %exitcond.not.i.2, label %._crit_edge.us.i, label %bb.r

bb.r:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.2
  %i.do = lshr i64 %i.cx, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !35
  %i.dr = trunc i64 %i.cx to i8
  %i.ds = and i8 %i.dr, 7
  %i.dt = add nuw nsw i64 %i.ax, 4                ; 2 uses
  %i.du = lshr exact i8 -128, %i.ds
  %i.dv = and i8 %i.du, %i.dq
  %i.dw = icmp eq i8 %i.dv, 0
  %i.dx = lshr i64 %i.dn, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dx ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !35  ; 2 uses
  br i1 %i.dw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = trunc i64 %i.dn to i8
  %i.eb = and i8 %i.ea, 7
  %i.ec = lshr exact i8 -128, %i.eb
  %i.ed = or i8 %i.ec, %i.dz
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3

bb.t:                                             ; preds = %bb.r
  %i.ee = trunc i64 %i.dn to i16
  %i.ef = and i16 %i.ee, 7
  %i.eg = ashr i16 -129, %i.ef
  %i.eh = trunc i16 %i.eg to i8
  %i.ei = and i8 %i.dz, %i.eh
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3:     ; preds = %bb.t, %bb.s
  %.sink.i.us.i.3 = phi i8 [ %i.ed, %bb.s ], [ %i.ei, %bb.t ]
  store i8 %.sink.i.us.i.3, ptr %i.dy, align 1, !tbaa !35
  %i.ej = add i64 %i.az, 4                        ; 3 uses
  br i1 %exitcond.not.i.3, label %._crit_edge.us.i, label %bb.u

bb.u:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3
  %i.ek = lshr i64 %i.dt, 3
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !35
  %i.en = trunc i64 %i.dt to i8
  %i.eo = and i8 %i.en, 7
  %i.ep = add nuw nsw i64 %i.ax, 5                ; 2 uses
  %i.eq = lshr exact i8 -128, %i.eo
  %i.er = and i8 %i.eq, %i.em
  %i.es = icmp eq i8 %i.er, 0
  %i.et = lshr i64 %i.ej, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !35  ; 2 uses
  br i1 %i.es, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = trunc i64 %i.ej to i8
  %i.ex = and i8 %i.ew, 7
  %i.ey = lshr exact i8 -128, %i.ex
  %i.ez = or i8 %i.ey, %i.ev
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4

bb.w:                                             ; preds = %bb.u
  %i.fa = trunc i64 %i.ej to i16
  %i.fb = and i16 %i.fa, 7
  %i.fc = ashr i16 -129, %i.fb
  %i.fd = trunc i16 %i.fc to i8
  %i.fe = and i8 %i.ev, %i.fd
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4:     ; preds = %bb.w, %bb.v
  %.sink.i.us.i.4 = phi i8 [ %i.ez, %bb.v ], [ %i.fe, %bb.w ]
  store i8 %.sink.i.us.i.4, ptr %i.eu, align 1, !tbaa !35
  %i.ff = add i64 %i.az, 5                        ; 3 uses
  br i1 %exitcond.not.i.4, label %._crit_edge.us.i, label %bb.x

bb.x:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4
  %i.fg = lshr i64 %i.ep, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !35
  %i.fj = trunc i64 %i.ep to i8
  %i.fk = and i8 %i.fj, 7
  %i.fl = add nuw nsw i64 %i.ax, 6                ; 2 uses
  %i.fm = lshr exact i8 -128, %i.fk
  %i.fn = and i8 %i.fm, %i.fi
  %i.fo = icmp eq i8 %i.fn, 0
  %i.fp = lshr i64 %i.ff, 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fp ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !35  ; 2 uses
  br i1 %i.fo, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = trunc i64 %i.ff to i8
  %i.ft = and i8 %i.fs, 7
  %i.fu = lshr exact i8 -128, %i.ft
  %i.fv = or i8 %i.fu, %i.fr
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5

bb.z:                                             ; preds = %bb.x
  %i.fw = trunc i64 %i.ff to i16
  %i.fx = and i16 %i.fw, 7
  %i.fy = ashr i16 -129, %i.fx
  %i.fz = trunc i16 %i.fy to i8
  %i.ga = and i8 %i.fr, %i.fz
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5:     ; preds = %bb.z, %bb.y
  %.sink.i.us.i.5 = phi i8 [ %i.fv, %bb.y ], [ %i.ga, %bb.z ]
  store i8 %.sink.i.us.i.5, ptr %i.fq, align 1, !tbaa !35
  %i.gb = add i64 %i.az, 6                        ; 3 uses
  br i1 %exitcond.not.i.5, label %._crit_edge.us.i, label %bb.aa

bb.aa:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5
  %i.gc = lshr i64 %i.fl, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !35
  %i.gf = trunc i64 %i.fl to i8
  %i.gg = and i8 %i.gf, 7
  %i.gh = lshr exact i8 -128, %i.gg
  %i.gi = and i8 %i.gh, %i.ge
  %i.gj = icmp eq i8 %i.gi, 0
  %i.gk = lshr i64 %i.gb, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !35  ; 2 uses
  br i1 %i.gj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = trunc i64 %i.gb to i8
  %i.go = and i8 %i.gn, 7
  %i.gp = lshr exact i8 -128, %i.go
  %i.gq = or i8 %i.gp, %i.gm
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6

bb.ac:                                            ; preds = %bb.aa
  %i.gr = trunc i64 %i.gb to i16
  %i.gs = and i16 %i.gr, 7
  %i.gt = ashr i16 -129, %i.gs
  %i.gu = trunc i16 %i.gt to i8
  %i.gv = and i8 %i.gm, %i.gu
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6:     ; preds = %bb.ac, %bb.ab
  %.sink.i.us.i.6 = phi i8 [ %i.gq, %bb.ab ], [ %i.gv, %bb.ac ]
  store i8 %.sink.i.us.i.6, ptr %i.gl, align 1, !tbaa !35
  br label %._crit_edge.us.i

._crit_edge93.split.us.i:                         ; preds = %._crit_edge91.us.i, %.preheader84.split.us.i
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %.not.us.i = icmp eq i64 %indvars.iv.next121.i, 7
  br i1 %.not.us.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader84.split.us.i, !llvm.loop !640

.preheader83.us.i:                                ; preds = %.preheader83.lr.ph.split.us.i, %._crit_edge91.us.i
  %.06692.us.i = phi i32 [ 0, %.preheader83.lr.ph.split.us.i ], [ %i.ha, %._crit_edge91.us.i ] ; 3 uses
  %i.gw = mul i32 %.06692.us.i, %i.hh
  %i.gx = add i32 %i.gw, %i.hg
  %i.gy = mul i32 %i.gx, %3
  %invariant.op.us.i = add i32 %i.gy, %i.hi
  %i.gz = mul i32 %.06692.us.i, %i.as
  br label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.2, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.1, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond118.not.i, label %._crit_edge91.us.i, label %.lr.ph.us.i, !llvm.loop !641

._crit_edge91.us.i:                               ; preds = %._crit_edge.us.i
  %i.ha = add nuw i32 %.06692.us.i, 1             ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.ha, %i.au
  br i1 %exitcond119.not.i, label %._crit_edge93.split.us.i, label %.preheader83.us.i, !llvm.loop !642

.preheader83.lr.ph.split.us.i:                    ; preds = %.preheader84.split.us.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv120.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DX, i64 %indvars.iv120.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IX, i64 %indvars.iv120.i
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DY, i64 %indvars.iv120.i
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IY, i64 %indvars.iv120.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !29
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !29
  %i.hi = load i32, ptr %i.hd, align 4, !tbaa !29
  %i.hj = load i32, ptr %i.hc, align 4, !tbaa !29
  %i.hk = load i64, ptr %i.hb, align 8, !tbaa !25
  %i.hl = shl i64 %i.hk, 3
  %wide.trip.count.i = zext i32 %i.as to i64
  br label %.preheader83.us.i

.preheader82.split.us.preheader.i:                ; preds = %bb.i
  %i.hm = lshr i32 %.0.i.i.i, 3
  %i.hn = zext nneg i32 %i.hm to i64              ; 63 uses
  %i.ho = load i32, ptr %i.b, align 16, !tbaa !29 ; 2 uses
  %.not112.i = icmp eq i32 %i.ho, 0
  br i1 %.not112.i, label %._crit_edge101.split.us.i, label %.preheader.lr.ph.us.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.split.us.i, %._crit_edge99.us.i
  %.069100.us.i = phi i32 [ 0, %.preheader.lr.ph.split.us.i ], [ %i.sa, %._crit_edge99.us.i ] ; 3 uses
  %7 = mul i32 %.069100.us.i, %3                  ; 3 uses
  %8 = mul i32 %.069100.us.i, %i.sb               ; 3 uses
  br i1 %i.se, label %.lr.ph.us104.i.epil.preheader, label %.lr.ph.us104.i

.lr.ph.us104.i:                                   ; preds = %.preheader.us.i, %.lr.ph.us104.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ]
  %i.hp = trunc nuw i64 %indvars.iv131.i to i32   ; 2 uses
  %reass.add = add i32 %7, %i.hp
  %reass.mul = shl i32 %reass.add, 3
  %i.hq = zext i32 %reass.mul to i64
  %i.hr = mul nuw nsw i64 %i.hq, %i.hn
  %i.hs = add i32 %8, %i.hp
  %i.ht = zext i32 %i.hs to i64
  %i.hu = mul nuw nsw i64 %i.ht, %i.hn
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 %i.hr
  %i.hw = getelementptr i8, ptr %i.sd, i64 %i.hu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hv, i64 %i.hn, i1 false), !tbaa !35
  %i.hx = trunc i64 %indvars.iv131.i to i32
  %i.hy = or disjoint i32 %i.hx, 1                ; 2 uses
  %reass.add.1 = add i32 %7, %i.hy
  %reass.mul.1 = shl i32 %reass.add.1, 3
  %i.hz = zext i32 %reass.mul.1 to i64
  %i.ia = mul nuw nsw i64 %i.hz, %i.hn
  %i.ib = add i32 %8, %i.hy
  %i.ic = zext i32 %i.ib to i64
  %i.id = mul nuw nsw i64 %i.ic, %i.hn
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 %i.ia
  %i.if = getelementptr i8, ptr %i.sd, i64 %i.id
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.if, ptr align 1 %i.ie, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.i.1 = add nuw nsw i64 %indvars.iv131.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge99.us.i.unr-lcssa, label %.lr.ph.us104.i, !llvm.loop !643

._crit_edge101.split.us.i:                        ; preds = %._crit_edge99.us.i, %.preheader.lr.ph.us.i, %.preheader82.split.us.preheader.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !29 ; 2 uses
  %.not112.1.i = icmp eq i32 %i.ih, 0
  br i1 %.not112.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.us.1.i

.preheader.lr.ph.us.1.i:                          ; preds = %._crit_edge101.split.us.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !29 ; 5 uses
  %.not113.1.i = icmp eq i32 %i.ij, 0
  br i1 %.not113.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.split.us.1.i

.preheader.lr.ph.split.us.1.i:                    ; preds = %.preheader.lr.ph.us.1.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !25
  %i.im = getelementptr i8, ptr %i.an, i64 %i.il  ; 3 uses
  %wide.trip.count134.1.i = zext i32 %i.ij to i64 ; 2 uses
  %xtraiter195 = and i64 %wide.trip.count134.1.i, 1
  %i.in = icmp eq i32 %i.ij, 1
  %unroll_iter198 = and i64 %wide.trip.count134.1.i, 4294967294
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  %lcmp.mod197 = trunc i32 %i.ij to i1
  br label %.preheader.us.1.i

.preheader.us.1.i:                                ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.split.us.1.i
  %.069100.us.1.i = phi i32 [ 0, %.preheader.lr.ph.split.us.1.i ], [ %i.js, %._crit_edge99.us.1.i ] ; 3 uses
  %i.io = mul i32 %.069100.us.1.i, %3             ; 3 uses
  %i.ip = mul i32 %.069100.us.1.i, %i.ij          ; 3 uses
  br i1 %i.in, label %.lr.ph.us104.1.i.epil.preheader, label %.lr.ph.us104.1.i

.lr.ph.us104.1.i:                                 ; preds = %.preheader.us.1.i, %.lr.ph.us104.1.i
  %indvars.iv131.1.i = phi i64 [ %indvars.iv.next132.1.i.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ] ; 3 uses
  %niter199 = phi i64 [ %niter199.next.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ]
  %i.iq = trunc nuw i64 %indvars.iv131.1.i to i32 ; 2 uses
  %reass.add127 = add i32 %i.io, %i.iq
  %reass.mul128 = shl i32 %reass.add127, 3
  %i.ir = or disjoint i32 %reass.mul128, 4
  %i.is = zext i32 %i.ir to i64
  %i.it = mul nuw nsw i64 %i.is, %i.hn
  %i.iu = add i32 %i.ip, %i.iq
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul nuw nsw i64 %i.iv, %i.hn
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 %i.it
  %i.iy = getelementptr i8, ptr %i.im, i64 %i.iw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %i.ix, i64 %i.hn, i1 false), !tbaa !35
  %i.iz = trunc i64 %indvars.iv131.1.i to i32
  %i.ja = or disjoint i32 %i.iz, 1                ; 2 uses
  %reass.add127.1 = add i32 %i.io, %i.ja
  %reass.mul128.1 = shl i32 %reass.add127.1, 3
  %i.jb = or disjoint i32 %reass.mul128.1, 4
  %i.jc = zext i32 %i.jb to i64
  %i.jd = mul nuw nsw i64 %i.jc, %i.hn
  %i.je = add i32 %i.ip, %i.ja
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw nsw i64 %i.jf, %i.hn
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 %i.jd
  %i.ji = getelementptr i8, ptr %i.im, i64 %i.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr align 1 %i.jh, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.1.i.1 = add nuw nsw i64 %indvars.iv131.1.i, 2 ; 2 uses
  %niter199.next.1 = add i64 %niter199, 2         ; 2 uses
  %niter199.ncmp.1 = icmp eq i64 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %._crit_edge99.us.1.i.unr-lcssa, label %.lr.ph.us104.1.i, !llvm.loop !643

._crit_edge99.us.1.i.unr-lcssa:                   ; preds = %.lr.ph.us104.1.i
  br i1 %lcmp.mod196.not, label %._crit_edge99.us.1.i, label %.lr.ph.us104.1.i.epil.preheader

.lr.ph.us104.1.i.epil.preheader:                  ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.preheader.us.1.i
  %indvars.iv131.1.i.epil.init = phi i64 [ 0, %.preheader.us.1.i ], [ %indvars.iv.next132.1.i.1, %._crit_edge99.us.1.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.jj = trunc nuw i64 %indvars.iv131.1.i.epil.init to i32 ; 2 uses
  %reass.add127.epil = add i32 %i.io, %i.jj
  %reass.mul128.epil = shl i32 %reass.add127.epil, 3
  %i.jk = or disjoint i32 %reass.mul128.epil, 4
  %i.jl = zext i32 %i.jk to i64
  %i.jm = mul nuw nsw i64 %i.jl, %i.hn
  %i.jn = add i32 %i.ip, %i.jj
  %i.jo = zext i32 %i.jn to i64
  %i.jp = mul nuw nsw i64 %i.jo, %i.hn
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 %i.jm
  %i.jr = getelementptr i8, ptr %i.im, i64 %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr align 1 %i.jq, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.1.i

._crit_edge99.us.1.i:                             ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.lr.ph.us104.1.i.epil.preheader
  %i.js = add nuw i32 %.069100.us.1.i, 1          ; 2 uses
  %exitcond136.1.not.i = icmp eq i32 %i.js, %i.ih
  br i1 %exitcond136.1.not.i, label %._crit_edge101.split.us.1.i, label %.preheader.us.1.i, !llvm.loop !644

._crit_edge101.split.us.1.i:                      ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.us.1.i, %._crit_edge101.split.us.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !29 ; 2 uses
  %.not112.2.i = icmp eq i32 %i.ju, 0
  br i1 %.not112.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.us.2.i

.preheader.lr.ph.us.2.i:                          ; preds = %._crit_edge101.split.us.1.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !29 ; 5 uses
  %.not113.2.i = icmp eq i32 %i.jw, 0
  br i1 %.not113.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.split.us.2.i

.preheader.lr.ph.split.us.2.i:                    ; preds = %.preheader.lr.ph.us.2.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jy = load i64, ptr %i.jx, align 16, !tbaa !25
  %i.jz = getelementptr i8, ptr %i.an, i64 %i.jy  ; 3 uses
  %wide.trip.count134.2.i = zext i32 %i.jw to i64 ; 2 uses
  %xtraiter200 = and i64 %wide.trip.count134.2.i, 1
  %i.ka = icmp eq i32 %i.jw, 1
  %unroll_iter203 = and i64 %wide.trip.count134.2.i, 4294967294
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  %lcmp.mod202 = trunc i32 %i.jw to i1
  br label %.preheader.us.2.i

.preheader.us.2.i:                                ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.split.us.2.i
  %.069100.us.2.i = phi i32 [ 0, %.preheader.lr.ph.split.us.2.i ], [ %i.lk, %._crit_edge99.us.2.i ] ; 3 uses
  %i.kb = shl i32 %.069100.us.2.i, 3
  %i.kc = or disjoint i32 %i.kb, 4
  %i.kd = mul i32 %i.kc, %3                       ; 3 uses
  %i.ke = mul i32 %.069100.us.2.i, %i.jw          ; 3 uses
  br i1 %i.ka, label %.lr.ph.us104.2.i.epil.preheader, label %.lr.ph.us104.2.i

.lr.ph.us104.2.i:                                 ; preds = %.preheader.us.2.i, %.lr.ph.us104.2.i
  %indvars.iv131.2.i = phi i64 [ %indvars.iv.next132.2.i.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ] ; 3 uses
  %niter204 = phi i64 [ %niter204.next.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ]
  %i.kf = trunc nuw i64 %indvars.iv131.2.i to i32 ; 2 uses
  %i.kg = shl i32 %i.kf, 2
  %i.kh = add i32 %i.kg, %i.kd
  %i.ki = zext i32 %i.kh to i64
  %i.kj = mul nuw nsw i64 %i.ki, %i.hn
  %i.kk = add i32 %i.ke, %i.kf
  %i.kl = zext i32 %i.kk to i64
  %i.km = mul nuw nsw i64 %i.kl, %i.hn
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 %i.kj
  %i.ko = getelementptr i8, ptr %i.jz, i64 %i.km
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ko, ptr align 1 %i.kn, i64 %i.hn, i1 false), !tbaa !35
  %i.kp = trunc i64 %indvars.iv131.2.i to i32
  %i.kq = or disjoint i32 %i.kp, 1                ; 2 uses
  %i.kr = shl i32 %i.kq, 2
  %i.ks = add i32 %i.kr, %i.kd
  %i.kt = zext i32 %i.ks to i64
  %i.ku = mul nuw nsw i64 %i.kt, %i.hn
  %i.kv = add i32 %i.ke, %i.kq
  %i.kw = zext i32 %i.kv to i64
  %i.kx = mul nuw nsw i64 %i.kw, %i.hn
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 %i.ku
  %i.kz = getelementptr i8, ptr %i.jz, i64 %i.kx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr align 1 %i.ky, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.2.i.1 = add nuw nsw i64 %indvars.iv131.2.i, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %._crit_edge99.us.2.i.unr-lcssa, label %.lr.ph.us104.2.i, !llvm.loop !643

._crit_edge99.us.2.i.unr-lcssa:                   ; preds = %.lr.ph.us104.2.i
  br i1 %lcmp.mod201.not, label %._crit_edge99.us.2.i, label %.lr.ph.us104.2.i.epil.preheader

.lr.ph.us104.2.i.epil.preheader:                  ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.preheader.us.2.i
  %indvars.iv131.2.i.epil.init = phi i64 [ 0, %.preheader.us.2.i ], [ %indvars.iv.next132.2.i.1, %._crit_edge99.us.2.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.la = trunc nuw i64 %indvars.iv131.2.i.epil.init to i32 ; 2 uses
  %i.lb = shl i32 %i.la, 2
  %i.lc = add i32 %i.lb, %i.kd
  %i.ld = zext i32 %i.lc to i64
  %i.le = mul nuw nsw i64 %i.ld, %i.hn
  %i.lf = add i32 %i.ke, %i.la
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul nuw nsw i64 %i.lg, %i.hn
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.le
  %i.lj = getelementptr i8, ptr %i.jz, i64 %i.lh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lj, ptr align 1 %i.li, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.2.i
end_hunk_0
begin_hunk_1_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %._crit_edge99.us.4.i.unr-lcssa, label %.lr.ph.us104.4.i, !llvm.loop !643

._crit_edge99.us.4.i.unr-lcssa:                   ; preds = %.lr.ph.us104.4.i
  br i1 %lcmp.mod211.not, label %._crit_edge99.us.4.i, label %.lr.ph.us104.4.i.epil.preheader

.lr.ph.us104.4.i.epil.preheader:                  ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.preheader.us.4.i
  %indvars.iv131.4.i.epil.init = phi i64 [ 0, %.preheader.us.4.i ], [ %indvars.iv.next132.4.i.1, %._crit_edge99.us.4.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.of = trunc nuw i64 %indvars.iv131.4.i.epil.init to i32 ; 2 uses
  %i.og = shl i32 %i.of, 1
  %i.oh = add i32 %i.og, %i.ni
  %i.oi = zext i32 %i.oh to i64
  %i.oj = mul nuw nsw i64 %i.oi, %i.hn
  %i.ok = add i32 %i.nj, %i.of
  %i.ol = zext i32 %i.ok to i64
  %i.om = mul nuw nsw i64 %i.ol, %i.hn
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 %i.oj
  %i.oo = getelementptr i8, ptr %i.ne, i64 %i.om
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %i.on, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.4.i

._crit_edge99.us.4.i:                             ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.lr.ph.us104.4.i.epil.preheader
  %i.op = add nuw i32 %.069100.us.4.i, 1          ; 2 uses
  %exitcond136.4.not.i = icmp eq i32 %i.op, %i.mz
  br i1 %exitcond136.4.not.i, label %._crit_edge101.split.us.4.i, label %.preheader.us.4.i, !llvm.loop !644

._crit_edge101.split.us.4.i:                      ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.us.4.i, %._crit_edge101.split.us.3.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !29 ; 2 uses
  %.not112.5.i = icmp eq i32 %i.or, 0
  br i1 %.not112.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.us.5.i

.preheader.lr.ph.us.5.i:                          ; preds = %._crit_edge101.split.us.4.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !29 ; 5 uses
  %.not113.5.i = icmp eq i32 %i.ot, 0
  br i1 %.not113.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.split.us.5.i

.preheader.lr.ph.split.us.5.i:                    ; preds = %.preheader.lr.ph.us.5.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !25
  %i.ow = getelementptr i8, ptr %i.an, i64 %i.ov  ; 3 uses
  %wide.trip.count134.5.i = zext i32 %i.ot to i64 ; 2 uses
  %xtraiter215 = and i64 %wide.trip.count134.5.i, 1
  %i.ox = icmp eq i32 %i.ot, 1
  %unroll_iter218 = and i64 %wide.trip.count134.5.i, 4294967294
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  %lcmp.mod217 = trunc i32 %i.ot to i1
  br label %.preheader.us.5.i

.preheader.us.5.i:                                ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.split.us.5.i
  %.069100.us.5.i = phi i32 [ 0, %.preheader.lr.ph.split.us.5.i ], [ %i.qc, %._crit_edge99.us.5.i ] ; 3 uses
  %i.oy = mul i32 %.069100.us.5.i, %3             ; 3 uses
  %i.oz = mul i32 %.069100.us.5.i, %i.ot          ; 3 uses
  br i1 %i.ox, label %.lr.ph.us104.5.i.epil.preheader, label %.lr.ph.us104.5.i

.lr.ph.us104.5.i:                                 ; preds = %.preheader.us.5.i, %.lr.ph.us104.5.i
  %indvars.iv131.5.i = phi i64 [ %indvars.iv.next132.5.i.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ] ; 3 uses
  %niter219 = phi i64 [ %niter219.next.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ]
  %i.pa = trunc nuw i64 %indvars.iv131.5.i to i32 ; 2 uses
  %reass.add131 = add i32 %i.oy, %i.pa
  %reass.mul132 = shl i32 %reass.add131, 1
  %i.pb = or disjoint i32 %reass.mul132, 1
  %i.pc = zext i32 %i.pb to i64
  %i.pd = mul nuw nsw i64 %i.pc, %i.hn
  %i.pe = add i32 %i.oz, %i.pa
  %i.pf = zext i32 %i.pe to i64
  %i.pg = mul nuw nsw i64 %i.pf, %i.hn
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd
  %i.pi = getelementptr i8, ptr %i.ow, i64 %i.pg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pi, ptr align 1 %i.ph, i64 %i.hn, i1 false), !tbaa !35
  %i.pj = trunc i64 %indvars.iv131.5.i to i32
  %i.pk = or disjoint i32 %i.pj, 1                ; 2 uses
  %reass.add131.1 = add i32 %i.oy, %i.pk
  %reass.mul132.1 = shl i32 %reass.add131.1, 1
  %i.pl = or disjoint i32 %reass.mul132.1, 1
  %i.pm = zext i32 %i.pl to i64
  %i.pn = mul nuw nsw i64 %i.pm, %i.hn
  %i.po = add i32 %i.oz, %i.pk
  %i.pp = zext i32 %i.po to i64
  %i.pq = mul nuw nsw i64 %i.pp, %i.hn
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 %i.pn
  %i.ps = getelementptr i8, ptr %i.ow, i64 %i.pq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ps, ptr align 1 %i.pr, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.5.i.1 = add nuw nsw i64 %indvars.iv131.5.i, 2 ; 2 uses
  %niter219.next.1 = add i64 %niter219, 2         ; 2 uses
  %niter219.ncmp.1 = icmp eq i64 %niter219.next.1, %unroll_iter218
  br i1 %niter219.ncmp.1, label %._crit_edge99.us.5.i.unr-lcssa, label %.lr.ph.us104.5.i, !llvm.loop !643

._crit_edge99.us.5.i.unr-lcssa:                   ; preds = %.lr.ph.us104.5.i
  br i1 %lcmp.mod216.not, label %._crit_edge99.us.5.i, label %.lr.ph.us104.5.i.epil.preheader

.lr.ph.us104.5.i.epil.preheader:                  ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.preheader.us.5.i
  %indvars.iv131.5.i.epil.init = phi i64 [ 0, %.preheader.us.5.i ], [ %indvars.iv.next132.5.i.1, %._crit_edge99.us.5.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.pt = trunc nuw i64 %indvars.iv131.5.i.epil.init to i32 ; 2 uses
  %reass.add131.epil = add i32 %i.oy, %i.pt
  %reass.mul132.epil = shl i32 %reass.add131.epil, 1
  %i.pu = or disjoint i32 %reass.mul132.epil, 1
  %i.pv = zext i32 %i.pu to i64
  %i.pw = mul nuw nsw i64 %i.pv, %i.hn
  %i.px = add i32 %i.oz, %i.pt
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nuw nsw i64 %i.py, %i.hn
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 %i.pw
  %i.qb = getelementptr i8, ptr %i.ow, i64 %i.pz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qb, ptr align 1 %i.qa, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.5.i

._crit_edge99.us.5.i:                             ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.lr.ph.us104.5.i.epil.preheader
  %i.qc = add nuw i32 %.069100.us.5.i, 1          ; 2 uses
  %exitcond136.5.not.i = icmp eq i32 %i.qc, %i.or
  br i1 %exitcond136.5.not.i, label %._crit_edge101.split.us.5.i, label %.preheader.us.5.i, !llvm.loop !644

._crit_edge101.split.us.5.i:                      ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.us.5.i, %._crit_edge101.split.us.4.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !29 ; 2 uses
  %.not112.6.i = icmp eq i32 %i.qe, 0
  br i1 %.not112.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.us.6.i

.preheader.lr.ph.us.6.i:                          ; preds = %._crit_edge101.split.us.5.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !29 ; 5 uses
  %.not113.6.i = icmp eq i32 %i.qg, 0
  br i1 %.not113.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.split.us.6.i

.preheader.lr.ph.split.us.6.i:                    ; preds = %.preheader.lr.ph.us.6.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.qi = load i64, ptr %i.qh, align 16, !tbaa !25
  %i.qj = getelementptr i8, ptr %i.an, i64 %i.qi  ; 3 uses
  %wide.trip.count134.6.i = zext i32 %i.qg to i64 ; 2 uses
  %xtraiter220 = and i64 %wide.trip.count134.6.i, 1
  %i.qk = icmp eq i32 %i.qg, 1
  %unroll_iter223 = and i64 %wide.trip.count134.6.i, 4294967294
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  %lcmp.mod222 = trunc i32 %i.qg to i1
  br label %.preheader.us.6.i

.preheader.us.6.i:                                ; preds = %._crit_edge99.us.6.i, %.preheader.lr.ph.split.us.6.i
  %.069100.us.6.i = phi i32 [ 0, %.preheader.lr.ph.split.us.6.i ], [ %i.rr, %._crit_edge99.us.6.i ] ; 3 uses
  %i.ql = shl i32 %.069100.us.6.i, 1
  %i.qm = or disjoint i32 %i.ql, 1
  %i.qn = mul i32 %i.qm, %3                       ; 3 uses
  %i.qo = mul i32 %.069100.us.6.i, %i.qg          ; 3 uses
  br i1 %i.qk, label %.lr.ph.us104.6.i.epil.preheader, label %.lr.ph.us104.6.i

.lr.ph.us104.6.i:                                 ; preds = %.preheader.us.6.i, %.lr.ph.us104.6.i
  %indvars.iv131.6.i = phi i64 [ %indvars.iv.next132.6.i.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ] ; 3 uses
  %niter224 = phi i64 [ %niter224.next.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ]
  %i.qp = trunc nuw i64 %indvars.iv131.6.i to i32 ; 2 uses
  %i.qq = add i32 %i.qn, %i.qp
  %i.qr = zext i32 %i.qq to i64
  %i.qs = mul nuw nsw i64 %i.qr, %i.hn
  %i.qt = add i32 %i.qo, %i.qp
  %i.qu = zext i32 %i.qt to i64
  %i.qv = mul nuw nsw i64 %i.qu, %i.hn
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 %i.qs
  %i.qx = getelementptr i8, ptr %i.qj, i64 %i.qv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qx, ptr align 1 %i.qw, i64 %i.hn, i1 false), !tbaa !35
  %i.qy = trunc i64 %indvars.iv131.6.i to i32
  %i.qz = or disjoint i32 %i.qy, 1                ; 2 uses
  %i.ra = add i32 %i.qn, %i.qz
  %i.rb = zext i32 %i.ra to i64
  %i.rc = mul nuw nsw i64 %i.rb, %i.hn
  %i.rd = add i32 %i.qo, %i.qz
  %i.re = zext i32 %i.rd to i64
  %i.rf = mul nuw nsw i64 %i.re, %i.hn
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 %i.rc
  %i.rh = getelementptr i8, ptr %i.qj, i64 %i.rf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rh, ptr align 1 %i.rg, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.6.i.1 = add nuw nsw i64 %indvars.iv131.6.i, 2 ; 2 uses
  %niter224.next.1 = add i64 %niter224, 2         ; 2 uses
  %niter224.ncmp.1 = icmp eq i64 %niter224.next.1, %unroll_iter223
  br i1 %niter224.ncmp.1, label %._crit_edge99.us.6.i.unr-lcssa, label %.lr.ph.us104.6.i, !llvm.loop !643

._crit_edge99.us.6.i.unr-lcssa:                   ; preds = %.lr.ph.us104.6.i
  br i1 %lcmp.mod221.not, label %._crit_edge99.us.6.i, label %.lr.ph.us104.6.i.epil.preheader

.lr.ph.us104.6.i.epil.preheader:                  ; preds = %._crit_edge99.us.6.i.unr-lcssa, %.preheader.us.6.i
  %indvars.iv131.6.i.epil.init = phi i64 [ 0, %.preheader.us.6.i ], [ %indvars.iv.next132.6.i.1, %._crit_edge99.us.6.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.ri = trunc nuw i64 %indvars.iv131.6.i.epil.init to i32 ; 2 uses
  %i.rj = add i32 %i.qn, %i.ri
  %i.rk = zext i32 %i.rj to i64
  %i.rl = mul nuw nsw i64 %i.rk, %i.hn
  %i.rm = add i32 %i.qo, %i.ri
  %i.rn = zext i32 %i.rm to i64
  %i.ro = mul nuw nsw i64 %i.rn, %i.hn
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 %i.rl
  %i.rq = getelementptr i8, ptr %i.qj, i64 %i.ro
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.rp, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.6.i

._crit_edge99.us.6.i:                             ; preds = %._crit_edge99.us.6.i.unr-lcssa, %.lr.ph.us104.6.i.epil.preheader
  %i.rr = add nuw i32 %.069100.us.6.i, 1          ; 2 uses
  %exitcond136.6.not.i = icmp eq i32 %i.rr, %i.qe
  br i1 %exitcond136.6.not.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.us.6.i, !llvm.loop !644

._crit_edge99.us.i.unr-lcssa:                     ; preds = %.lr.ph.us104.i
  br i1 %lcmp.mod.not, label %._crit_edge99.us.i, label %.lr.ph.us104.i.epil.preheader

.lr.ph.us104.i.epil.preheader:                    ; preds = %._crit_edge99.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv131.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next132.i.1, %._crit_edge99.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.rs = trunc nuw i64 %indvars.iv131.i.epil.init to i32 ; 2 uses
  %reass.add.epil = add i32 %7, %i.rs
  %reass.mul.epil = shl i32 %reass.add.epil, 3
  %i.rt = zext i32 %reass.mul.epil to i64
  %i.ru = mul nuw nsw i64 %i.rt, %i.hn
  %i.rv = add i32 %8, %i.rs
  %i.rw = zext i32 %i.rv to i64
  %i.rx = mul nuw nsw i64 %i.rw, %i.hn
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 %i.ru
  %i.rz = getelementptr i8, ptr %i.sd, i64 %i.rx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr align 1 %i.ry, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.i

._crit_edge99.us.i:                               ; preds = %._crit_edge99.us.i.unr-lcssa, %.lr.ph.us104.i.epil.preheader
  %i.sa = add nuw i32 %.069100.us.i, 1            ; 2 uses
  %exitcond136.not.i = icmp eq i32 %i.sa, %i.ho
  br i1 %exitcond136.not.i, label %._crit_edge101.split.us.i, label %.preheader.us.i, !llvm.loop !644

.preheader.lr.ph.us.i:                            ; preds = %.preheader82.split.us.preheader.i
  %i.sb = load i32, ptr %i.a, align 16, !tbaa !29 ; 5 uses
  %.not113.i = icmp eq i32 %i.sb, 0
  br i1 %.not113.i, label %._crit_edge101.split.us.i, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.us.i
  %i.sc = load i64, ptr %i.e, align 16, !tbaa !25
  %i.sd = getelementptr i8, ptr %i.an, i64 %i.sc  ; 3 uses
  %wide.trip.count134.i = zext i32 %i.sb to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count134.i, 1
  %i.se = icmp eq i32 %i.sb, 1
  %unroll_iter = and i64 %wide.trip.count134.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod194 = trunc i32 %i.sb to i1
  br label %.preheader.us.i

_ZL15Adam7_interlacePhPKhjjj.exit:                ; preds = %._crit_edge93.split.us.i, %._crit_edge99.us.6.i, %._crit_edge101.split.us.5.i, %.preheader.lr.ph.us.6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.sf = icmp ult i32 %.0.i.i.i, 8
  br i1 %i.sf, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader

_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader: ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit
  %i.sg = load i64, ptr %i.h, align 16, !tbaa !25
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.sg
  %i.si = load i64, ptr %i.i, align 16, !tbaa !25
  %i.sj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.si
  %i.sk = load i32, ptr %i.f, align 16, !tbaa !29
  %i.sl = load i32, ptr %i.g, align 16, !tbaa !29
  %i.sm = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef nonnull %i.sh, ptr noundef %i.sj, i32 noundef %i.sk, i32 noundef %i.sl, i32 %i.l, i32 %i.n, ptr noundef %6) ; 2 uses
  %.not100 = icmp eq i32 %i.sm, 0
  br i1 %.not100, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.1, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader: ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.thread, %_ZL15Adam7_interlacePhPKhjjj.exit
  %i.sn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !25 ; 2 uses
  %i.sp = load i64, ptr %i.i, align 16, !tbaa !25
  %i.sq = sub i64 %i.so, %i.sp
  %i.sr = tail call noalias noundef ptr @malloc(i64 noundef %i.sq) #30 ; 4 uses
  %.not99.us = icmp eq ptr %i.sr, null
  br i1 %.not99.us, label %.loopexit, label %.thread119.us

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1:     ; preds = %.thread119.us
  %i.ss = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.st = load i64, ptr %i.ss, align 16, !tbaa !25 ; 2 uses
  %i.su = sub i64 %i.st, %i.so
  %i.sv = tail call noalias noundef ptr @malloc(i64 noundef %i.su) #30 ; 4 uses
  %.not99.us.1 = icmp eq ptr %i.sv, null
  br i1 %.not99.us.1, label %.loopexit, label %.thread119.us.1

.thread119.us.1:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1
  %i.sw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !25
  %i.sy = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !29 ; 2 uses
  %i.tb = zext i32 %i.ta to i64
  %i.tc = mul nuw nsw i64 %i.tb, %i.r             ; 2 uses
  %i.td = add nuw nsw i64 %i.tc, 7
  %i.te = and i64 %i.td, 68719476728
  %i.tf = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.sv, ptr noundef %i.sy, i64 noundef %i.te, i64 noundef %i.tc, i32 noundef %i.tg)
  %i.th = load ptr, ptr %0, align 8, !tbaa !28
  %i.ti = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !25
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tj
  %.val111.us.1 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.1 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.tl = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.tk, ptr noundef nonnull %i.sv, i32 noundef %i.ta, i32 noundef %i.tg, i32 %.val111.us.1, i32 %.val112.us.1, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.sv) #31
  %.not100.us.1 = icmp eq i32 %i.tl, 0
  br i1 %.not100.us.1, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2:     ; preds = %.thread119.us.1
  %i.tm = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !25 ; 2 uses
  %i.to = sub i64 %i.tn, %i.st
  %i.tp = tail call noalias noundef ptr @malloc(i64 noundef %i.to) #30 ; 4 uses
  %.not99.us.2 = icmp eq ptr %i.tp, null
  br i1 %.not99.us.2, label %.loopexit, label %.thread119.us.2

.thread119.us.2:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.tr = load i64, ptr %i.tq, align 16, !tbaa !25
  %i.ts = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !29 ; 2 uses
  %i.tv = zext i32 %i.tu to i64
  %i.tw = mul nuw nsw i64 %i.tv, %i.r             ; 2 uses
  %i.tx = add nuw nsw i64 %i.tw, 7
  %i.ty = and i64 %i.tx, 68719476728
  %i.tz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.tp, ptr noundef %i.ts, i64 noundef %i.ty, i64 noundef %i.tw, i32 noundef %i.ua)
  %i.ub = load ptr, ptr %0, align 8, !tbaa !28
  %i.uc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ud = load i64, ptr %i.uc, align 16, !tbaa !25
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ud
  %.val111.us.2 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.2 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.uf = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.ue, ptr noundef nonnull %i.tp, i32 noundef %i.tu, i32 noundef %i.ua, i32 %.val111.us.2, i32 %.val112.us.2, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.tp) #31
  %.not100.us.2 = icmp eq i32 %i.uf, 0
  br i1 %.not100.us.2, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3:     ; preds = %.thread119.us.2
  %i.ug = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.uh = load i64, ptr %i.ug, align 16, !tbaa !25 ; 2 uses
  %i.ui = sub i64 %i.uh, %i.tn
  %i.uj = tail call noalias noundef ptr @malloc(i64 noundef %i.ui) #30 ; 4 uses
  %.not99.us.3 = icmp eq ptr %i.uj, null
  br i1 %.not99.us.3, label %.loopexit, label %.thread119.us.3

.thread119.us.3:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3
  %i.uk = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !25
  %i.um = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !29 ; 2 uses
  %i.up = zext i32 %i.uo to i64
  %i.uq = mul nuw nsw i64 %i.up, %i.r             ; 2 uses
  %i.ur = add nuw nsw i64 %i.uq, 7
  %i.us = and i64 %i.ur, 68719476728
  %i.ut = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.uj, ptr noundef %i.um, i64 noundef %i.us, i64 noundef %i.uq, i32 noundef %i.uu)
  %i.uv = load ptr, ptr %0, align 8, !tbaa !28
  %i.uw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !25
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.ux
  %.val111.us.3 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.3 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.uz = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.uy, ptr noundef nonnull %i.uj, i32 noundef %i.uo, i32 noundef %i.uu, i32 %.val111.us.3, i32 %.val112.us.3, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.uj) #31
  %.not100.us.3 = icmp eq i32 %i.uz, 0
  br i1 %.not100.us.3, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4:     ; preds = %.thread119.us.3
  %i.va = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !25 ; 2 uses
  %i.vc = sub i64 %i.vb, %i.uh
  %i.vd = tail call noalias noundef ptr @malloc(i64 noundef %i.vc) #30 ; 4 uses
  %.not99.us.4 = icmp eq ptr %i.vd, null
  br i1 %.not99.us.4, label %.loopexit, label %.thread119.us.4

.thread119.us.4:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4
  %i.ve = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.vf = load i64, ptr %i.ve, align 16, !tbaa !25
  %i.vg = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vi = load i32, ptr %i.vh, align 16, !tbaa !29 ; 2 uses
  %i.vj = zext i32 %i.vi to i64
  %i.vk = mul nuw nsw i64 %i.vj, %i.r             ; 2 uses
  %i.vl = add nuw nsw i64 %i.vk, 7
  %i.vm = and i64 %i.vl, 68719476728
  %i.vn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.vo = load i32, ptr %i.vn, align 16, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.vd, ptr noundef %i.vg, i64 noundef %i.vm, i64 noundef %i.vk, i32 noundef %i.vo)
  %i.vp = load ptr, ptr %0, align 8, !tbaa !28
  %i.vq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.vr = load i64, ptr %i.vq, align 16, !tbaa !25
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vr
  %.val111.us.4 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.4 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.vt = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.vs, ptr noundef nonnull %i.vd, i32 noundef %i.vi, i32 noundef %i.vo, i32 %.val111.us.4, i32 %.val112.us.4, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.vd) #31
  %.not100.us.4 = icmp eq i32 %i.vt, 0
  br i1 %.not100.us.4, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.5, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.5:     ; preds = %.thread119.us.4
  %i.vu = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.vv = load i64, ptr %i.vu, align 16, !tbaa !25 ; 2 uses
end_hunk_1
