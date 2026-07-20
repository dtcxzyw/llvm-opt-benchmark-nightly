inline.NumInlined: 56
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5arrow9dict_util16LogicalNullCountERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 42 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 16 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !7    ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 32 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43   ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 8 uses
  %i.w = icmp sgt i64 %i.f, 0                     ; 8 uses
  switch i32 %i.m, label %bb.ag [
    i32 2, label %bb.e
    i32 3, label %bb.i
    i32 4, label %bb.m
    i32 5, label %bb.q
    i32 6, label %bb.u
    i32 7, label %bb.y
    i32 8, label %bb.ac
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.not.i = icmp eq ptr %i.o, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !43   ; 3 uses
  %xtraiter240 = and i64 %i.f, 1
  %i.aa = icmp eq i64 %i.f, 1
  br i1 %i.aa, label %.epil.preheader239, label %.lr.ph.split.us.i.new

.lr.ph.split.us.i.new:                            ; preds = %.lr.ph.split.us.i
  %unroll_iter244 = and i64 %i.f, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.split.us.i.new
  %.021.us.i = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %.2.us.i.1, %bb.f ]
  %.01820.us.i = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %i.bc, %bb.f ] ; 3 uses
  %niter245 = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %niter245.next.1, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01820.us.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nsw i64 %i.z, %i.ad                 ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !44
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = lshr i8 %i.ah, %i.aj
  %i.al = and i8 %i.ak, 1
  %i.am = xor i8 %i.al, 1
  %i.an = zext nneg i8 %i.am to i64
  %.2.us.i = add nuw nsw i64 %.021.us.i, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01820.us.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !44
  %i.ar = zext i8 %i.aq to i64
  %i.as = add nsw i64 %i.z, %i.ar                 ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !44
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = and i8 %i.ay, 1
  %i.ba = xor i8 %i.az, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %.2.us.i.1 = add nuw nsw i64 %.2.us.i, %i.bb    ; 3 uses
  %i.bc = add nuw nsw i64 %.01820.us.i, 2         ; 2 uses
  %niter245.next.1 = add nuw nsw i64 %niter245, 2 ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit188.unr-lcssa, label %bb.f, !llvm.loop !45

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %.021.i = phi i64 [ %.2.i, %bb.h ], [ 0, %.lr.ph.i ]
  %.01820.i = phi i64 [ %i.bz, %bb.h ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.bd = add nsw i64 %.01820.i, %i.t             ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !44
  %i.bh = trunc i64 %i.bd to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = lshr i8 %i.bg, %i.bi
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01820.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !44
  %i.bn = zext i8 %i.bm to i64
  %i.bo = load i64, ptr %i.y, align 8, !tbaa !43
  %i.bp = add nsw i64 %i.bo, %i.bn                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !44
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = and i8 %i.bv, 1
  %i.bx = xor i8 %i.bw, 1
  %i.by = zext nneg i8 %i.bx to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.i
  %.pn.i = phi i64 [ %i.by, %bb.g ], [ 1, %.lr.ph.split.i ]
  %.2.i = add nuw nsw i64 %.pn.i, %.021.i         ; 2 uses
  %i.bz = add nuw nsw i64 %.01820.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, %i.f
  br i1 %exitcond.not.i, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i, !llvm.loop !45

bb.i:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds i8, ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i14, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i14:                                       ; preds = %bb.i
  %.not.i15 = icmp eq ptr %i.o, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i15, label %.lr.ph.split.us.i22, label %.lr.ph.split.i16

.lr.ph.split.us.i22:                              ; preds = %.lr.ph.i14
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !43 ; 3 uses
  %xtraiter233 = and i64 %i.f, 1
  %i.cd = icmp eq i64 %i.f, 1
  br i1 %i.cd, label %.epil.preheader232, label %.lr.ph.split.us.i22.new

.lr.ph.split.us.i22.new:                          ; preds = %.lr.ph.split.us.i22
  %unroll_iter237 = and i64 %i.f, 9223372036854775806
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.split.us.i22.new
  %.021.us.i23 = phi i64 [ 0, %.lr.ph.split.us.i22.new ], [ %.2.us.i25.1, %bb.j ]
  %.01820.us.i24 = phi i64 [ 0, %.lr.ph.split.us.i22.new ], [ %i.df, %bb.j ] ; 3 uses
  %niter238 = phi i64 [ 0, %.lr.ph.split.us.i22.new ], [ %niter238.next.1, %bb.j ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.01820.us.i24
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !44
  %i.cg = sext i8 %i.cf to i64
  %i.ch = add nsw i64 %i.cc, %i.cg                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !44
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = and i8 %i.cn, 1
  %i.cp = xor i8 %i.co, 1
  %i.cq = zext nneg i8 %i.cp to i64
  %.2.us.i25 = add nuw nsw i64 %.021.us.i23, %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.01820.us.i24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !44
  %i.cu = sext i8 %i.ct to i64
  %i.cv = add nsw i64 %i.cc, %i.cu                ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !44
  %i.cz = trunc i64 %i.cv to i8
  %i.da = and i8 %i.cz, 7
  %i.db = lshr i8 %i.cy, %i.da
  %i.dc = and i8 %i.db, 1
  %i.dd = xor i8 %i.dc, 1
  %i.de = zext nneg i8 %i.dd to i64
  %.2.us.i25.1 = add nuw nsw i64 %.2.us.i25, %i.de ; 3 uses
  %i.df = add nuw nsw i64 %.01820.us.i24, 2       ; 2 uses
  %niter238.next.1 = add nuw nsw i64 %niter238, 2 ; 2 uses
  %niter238.ncmp.1 = icmp eq i64 %niter238.next.1, %unroll_iter237
  br i1 %niter238.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit190.unr-lcssa, label %bb.j, !llvm.loop !47

.lr.ph.split.i16:                                 ; preds = %.lr.ph.i14, %bb.l
  %.021.i17 = phi i64 [ %.2.i20, %bb.l ], [ 0, %.lr.ph.i14 ]
  %.01820.i18 = phi i64 [ %i.ec, %bb.l ], [ 0, %.lr.ph.i14 ] ; 3 uses
  %i.dg = add nsw i64 %.01820.i18, %i.t           ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !44
  %i.dk = trunc i64 %i.dg to i8
  %i.dl = and i8 %i.dk, 7
  %i.dm = lshr i8 %i.dj, %i.dl
  %i.dn = trunc i8 %i.dm to i1
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.01820.i18
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !44
  %i.dq = sext i8 %i.dp to i64
  %i.dr = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.ds = add nsw i64 %i.dr, %i.dq                ; 2 uses
  %i.dt = lshr i64 %i.ds, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !44
  %i.dw = trunc i64 %i.ds to i8
  %i.dx = and i8 %i.dw, 7
  %i.dy = lshr i8 %i.dv, %i.dx
  %i.dz = and i8 %i.dy, 1
  %i.ea = xor i8 %i.dz, 1
  %i.eb = zext nneg i8 %i.ea to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.i16
  %.pn.i19 = phi i64 [ %i.eb, %bb.k ], [ 1, %.lr.ph.split.i16 ]
  %.2.i20 = add nuw nsw i64 %.pn.i19, %.021.i17   ; 2 uses
  %i.ec = add nuw nsw i64 %.01820.i18, 1          ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %i.ec, %i.f
  br i1 %exitcond.not.i21, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i16, !llvm.loop !47

bb.m:                                             ; preds = %bb.d
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i28, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i28:                                       ; preds = %bb.m
  %.not.i29 = icmp eq ptr %i.o, null
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i29, label %.lr.ph.split.us.i36, label %.lr.ph.split.i30

.lr.ph.split.us.i36:                              ; preds = %.lr.ph.i28
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !43 ; 3 uses
  %xtraiter226 = and i64 %i.f, 1
  %i.eg = icmp eq i64 %i.f, 1
  br i1 %i.eg, label %.epil.preheader225, label %.lr.ph.split.us.i36.new

.lr.ph.split.us.i36.new:                          ; preds = %.lr.ph.split.us.i36
  %unroll_iter230 = and i64 %i.f, 9223372036854775806
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.split.us.i36.new
  %.021.us.i37 = phi i64 [ 0, %.lr.ph.split.us.i36.new ], [ %.2.us.i39.1, %bb.n ]
  %.01820.us.i38 = phi i64 [ 0, %.lr.ph.split.us.i36.new ], [ %i.fi, %bb.n ] ; 3 uses
  %niter231 = phi i64 [ 0, %.lr.ph.split.us.i36.new ], [ %niter231.next.1, %bb.n ]
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %.01820.us.i38
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !48
  %i.ej = zext i16 %i.ei to i64
  %i.ek = add nsw i64 %i.ef, %i.ej                ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !44
  %i.eo = trunc i64 %i.ek to i8
  %i.ep = and i8 %i.eo, 7
  %i.eq = lshr i8 %i.en, %i.ep
  %i.er = and i8 %i.eq, 1
  %i.es = xor i8 %i.er, 1
  %i.et = zext nneg i8 %i.es to i64
  %.2.us.i39 = add nuw nsw i64 %.021.us.i37, %i.et
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %.01820.us.i38
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !48
  %i.ex = zext i16 %i.ew to i64
  %i.ey = add nsw i64 %i.ef, %i.ex                ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !44
  %i.fc = trunc i64 %i.ey to i8
  %i.fd = and i8 %i.fc, 7
  %i.fe = lshr i8 %i.fb, %i.fd
  %i.ff = and i8 %i.fe, 1
  %i.fg = xor i8 %i.ff, 1
  %i.fh = zext nneg i8 %i.fg to i64
  %.2.us.i39.1 = add nuw nsw i64 %.2.us.i39, %i.fh ; 3 uses
  %i.fi = add nuw nsw i64 %.01820.us.i38, 2       ; 2 uses
  %niter231.next.1 = add nuw nsw i64 %niter231, 2 ; 2 uses
  %niter231.ncmp.1 = icmp eq i64 %niter231.next.1, %unroll_iter230
  br i1 %niter231.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit192.unr-lcssa, label %bb.n, !llvm.loop !50

.lr.ph.split.i30:                                 ; preds = %.lr.ph.i28, %bb.p
  %.021.i31 = phi i64 [ %.2.i34, %bb.p ], [ 0, %.lr.ph.i28 ]
  %.01820.i32 = phi i64 [ %i.gf, %bb.p ], [ 0, %.lr.ph.i28 ] ; 3 uses
  %i.fj = add nsw i64 %.01820.i32, %i.t           ; 2 uses
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !44
  %i.fn = trunc i64 %i.fj to i8
  %i.fo = and i8 %i.fn, 7
  %i.fp = lshr i8 %i.fm, %i.fo
  %i.fq = trunc i8 %i.fp to i1
  br i1 %i.fq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.split.i30
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %.01820.i32
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !48
  %i.ft = zext i16 %i.fs to i64
  %i.fu = load i64, ptr %i.ee, align 8, !tbaa !43
  %i.fv = add nsw i64 %i.fu, %i.ft                ; 2 uses
  %i.fw = lshr i64 %i.fv, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !44
  %i.fz = trunc i64 %i.fv to i8
  %i.ga = and i8 %i.fz, 7
  %i.gb = lshr i8 %i.fy, %i.ga
  %i.gc = and i8 %i.gb, 1
  %i.gd = xor i8 %i.gc, 1
  %i.ge = zext nneg i8 %i.gd to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.i30
  %.pn.i33 = phi i64 [ %i.ge, %bb.o ], [ 1, %.lr.ph.split.i30 ]
  %.2.i34 = add nuw nsw i64 %.pn.i33, %.021.i31   ; 2 uses
  %i.gf = add nuw nsw i64 %.01820.i32, 1          ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.gf, %i.f
  br i1 %exitcond.not.i35, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i30, !llvm.loop !50

bb.q:                                             ; preds = %bb.d
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i42, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i42:                                       ; preds = %bb.q
  %.not.i43 = icmp eq ptr %i.o, null
  %i.gh = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i43, label %.lr.ph.split.us.i50, label %.lr.ph.split.i44

.lr.ph.split.us.i50:                              ; preds = %.lr.ph.i42
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !43 ; 3 uses
  %xtraiter219 = and i64 %i.f, 1
  %i.gj = icmp eq i64 %i.f, 1
  br i1 %i.gj, label %.epil.preheader218, label %.lr.ph.split.us.i50.new

.lr.ph.split.us.i50.new:                          ; preds = %.lr.ph.split.us.i50
  %unroll_iter223 = and i64 %i.f, 9223372036854775806
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.split.us.i50.new
  %.021.us.i51 = phi i64 [ 0, %.lr.ph.split.us.i50.new ], [ %.2.us.i53.1, %bb.r ]
  %.01820.us.i52 = phi i64 [ 0, %.lr.ph.split.us.i50.new ], [ %i.hl, %bb.r ] ; 3 uses
  %niter224 = phi i64 [ 0, %.lr.ph.split.us.i50.new ], [ %niter224.next.1, %bb.r ]
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %.01820.us.i52
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !48
  %i.gm = sext i16 %i.gl to i64
  %i.gn = add nsw i64 %i.gi, %i.gm                ; 2 uses
  %i.go = lshr i64 %i.gn, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !44
  %i.gr = trunc i64 %i.gn to i8
  %i.gs = and i8 %i.gr, 7
  %i.gt = lshr i8 %i.gq, %i.gs
  %i.gu = and i8 %i.gt, 1
  %i.gv = xor i8 %i.gu, 1
  %i.gw = zext nneg i8 %i.gv to i64
  %.2.us.i53 = add nuw nsw i64 %.021.us.i51, %i.gw
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %.01820.us.i52
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !48
  %i.ha = sext i16 %i.gz to i64
  %i.hb = add nsw i64 %i.gi, %i.ha                ; 2 uses
  %i.hc = lshr i64 %i.hb, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !44
  %i.hf = trunc i64 %i.hb to i8
  %i.hg = and i8 %i.hf, 7
  %i.hh = lshr i8 %i.he, %i.hg
  %i.hi = and i8 %i.hh, 1
  %i.hj = xor i8 %i.hi, 1
  %i.hk = zext nneg i8 %i.hj to i64
  %.2.us.i53.1 = add nuw nsw i64 %.2.us.i53, %i.hk ; 3 uses
  %i.hl = add nuw nsw i64 %.01820.us.i52, 2       ; 2 uses
  %niter224.next.1 = add nuw nsw i64 %niter224, 2 ; 2 uses
  %niter224.ncmp.1 = icmp eq i64 %niter224.next.1, %unroll_iter223
  br i1 %niter224.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit194.unr-lcssa, label %bb.r, !llvm.loop !51

.lr.ph.split.i44:                                 ; preds = %.lr.ph.i42, %bb.t
  %.021.i45 = phi i64 [ %.2.i48, %bb.t ], [ 0, %.lr.ph.i42 ]
  %.01820.i46 = phi i64 [ %i.ii, %bb.t ], [ 0, %.lr.ph.i42 ] ; 3 uses
  %i.hm = add nsw i64 %.01820.i46, %i.t           ; 2 uses
  %i.hn = lshr i64 %i.hm, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !44
  %i.hq = trunc i64 %i.hm to i8
  %i.hr = and i8 %i.hq, 7
  %i.hs = lshr i8 %i.hp, %i.hr
  %i.ht = trunc i8 %i.hs to i1
  br i1 %i.ht, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.i44
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %.01820.i46
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !48
  %i.hw = sext i16 %i.hv to i64
  %i.hx = load i64, ptr %i.gh, align 8, !tbaa !43
  %i.hy = add nsw i64 %i.hx, %i.hw                ; 2 uses
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !44
  %i.ic = trunc i64 %i.hy to i8
  %i.id = and i8 %i.ic, 7
  %i.ie = lshr i8 %i.ib, %i.id
  %i.if = and i8 %i.ie, 1
  %i.ig = xor i8 %i.if, 1
  %i.ih = zext nneg i8 %i.ig to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i44
  %.pn.i47 = phi i64 [ %i.ih, %bb.s ], [ 1, %.lr.ph.split.i44 ]
  %.2.i48 = add nuw nsw i64 %.pn.i47, %.021.i45   ; 2 uses
  %i.ii = add nuw nsw i64 %.01820.i46, 1          ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %i.ii, %i.f
  br i1 %exitcond.not.i49, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i44, !llvm.loop !51

bb.u:                                             ; preds = %bb.d
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i56, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i56:                                       ; preds = %bb.u
  %.not.i57 = icmp eq ptr %i.o, null
  %i.ik = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i57, label %.lr.ph.split.us.i64, label %.lr.ph.split.i58

.lr.ph.split.us.i64:                              ; preds = %.lr.ph.i56
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !43 ; 3 uses
  %xtraiter212 = and i64 %i.f, 1
  %i.im = icmp eq i64 %i.f, 1
  br i1 %i.im, label %.epil.preheader211, label %.lr.ph.split.us.i64.new

.lr.ph.split.us.i64.new:                          ; preds = %.lr.ph.split.us.i64
  %unroll_iter216 = and i64 %i.f, 9223372036854775806
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.split.us.i64.new
  %.021.us.i65 = phi i64 [ 0, %.lr.ph.split.us.i64.new ], [ %.2.us.i67.1, %bb.v ]
  %.01820.us.i66 = phi i64 [ 0, %.lr.ph.split.us.i64.new ], [ %i.jo, %bb.v ] ; 3 uses
  %niter217 = phi i64 [ 0, %.lr.ph.split.us.i64.new ], [ %niter217.next.1, %bb.v ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.01820.us.i66
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = zext i32 %i.io to i64
  %i.iq = add nsw i64 %i.il, %i.ip                ; 2 uses
  %i.ir = lshr i64 %i.iq, 3
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !44
  %i.iu = trunc i64 %i.iq to i8
  %i.iv = and i8 %i.iu, 7
  %i.iw = lshr i8 %i.it, %i.iv
  %i.ix = and i8 %i.iw, 1
  %i.iy = xor i8 %i.ix, 1
  %i.iz = zext nneg i8 %i.iy to i64
  %.2.us.i67 = add nuw nsw i64 %.021.us.i65, %i.iz
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.01820.us.i66
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = zext i32 %i.jc to i64
  %i.je = add nsw i64 %i.il, %i.jd                ; 2 uses
  %i.jf = lshr i64 %i.je, 3
  %i.jg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !44
  %i.ji = trunc i64 %i.je to i8
  %i.jj = and i8 %i.ji, 7
  %i.jk = lshr i8 %i.jh, %i.jj
  %i.jl = and i8 %i.jk, 1
  %i.jm = xor i8 %i.jl, 1
  %i.jn = zext nneg i8 %i.jm to i64
  %.2.us.i67.1 = add nuw nsw i64 %.2.us.i67, %i.jn ; 3 uses
  %i.jo = add nuw nsw i64 %.01820.us.i66, 2       ; 2 uses
  %niter217.next.1 = add nuw nsw i64 %niter217, 2 ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit196.unr-lcssa, label %bb.v, !llvm.loop !52

.lr.ph.split.i58:                                 ; preds = %.lr.ph.i56, %bb.x
  %.021.i59 = phi i64 [ %.2.i62, %bb.x ], [ 0, %.lr.ph.i56 ]
  %.01820.i60 = phi i64 [ %i.kl, %bb.x ], [ 0, %.lr.ph.i56 ] ; 3 uses
  %i.jp = add nsw i64 %.01820.i60, %i.t           ; 2 uses
  %i.jq = lshr i64 %i.jp, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !44
  %i.jt = trunc i64 %i.jp to i8
  %i.ju = and i8 %i.jt, 7
  %i.jv = lshr i8 %i.js, %i.ju
  %i.jw = trunc i8 %i.jv to i1
  br i1 %i.jw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i58
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.01820.i60
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !3
  %i.jz = zext i32 %i.jy to i64
  %i.ka = load i64, ptr %i.ik, align 8, !tbaa !43
  %i.kb = add nsw i64 %i.ka, %i.jz                ; 2 uses
  %i.kc = lshr i64 %i.kb, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !44
  %i.kf = trunc i64 %i.kb to i8
  %i.kg = and i8 %i.kf, 7
  %i.kh = lshr i8 %i.ke, %i.kg
  %i.ki = and i8 %i.kh, 1
  %i.kj = xor i8 %i.ki, 1
  %i.kk = zext nneg i8 %i.kj to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.split.i58
  %.pn.i61 = phi i64 [ %i.kk, %bb.w ], [ 1, %.lr.ph.split.i58 ]
  %.2.i62 = add nuw nsw i64 %.pn.i61, %.021.i59   ; 2 uses
  %i.kl = add nuw nsw i64 %.01820.i60, 1          ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %i.kl, %i.f
  br i1 %exitcond.not.i63, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i58, !llvm.loop !52

bb.y:                                             ; preds = %bb.d
  %i.km = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i70, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i70:                                       ; preds = %bb.y
  %.not.i71 = icmp eq ptr %i.o, null
  %i.kn = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i71, label %.lr.ph.split.us.i78, label %.lr.ph.split.i72

.lr.ph.split.us.i78:                              ; preds = %.lr.ph.i70
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !43 ; 3 uses
  %xtraiter205 = and i64 %i.f, 1
  %i.kp = icmp eq i64 %i.f, 1
  br i1 %i.kp, label %.epil.preheader204, label %.lr.ph.split.us.i78.new

.lr.ph.split.us.i78.new:                          ; preds = %.lr.ph.split.us.i78
  %unroll_iter209 = and i64 %i.f, 9223372036854775806
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.split.us.i78.new
  %.021.us.i79 = phi i64 [ 0, %.lr.ph.split.us.i78.new ], [ %.2.us.i81.1, %bb.z ]
  %.01820.us.i80 = phi i64 [ 0, %.lr.ph.split.us.i78.new ], [ %i.lr, %bb.z ] ; 3 uses
  %niter210 = phi i64 [ 0, %.lr.ph.split.us.i78.new ], [ %niter210.next.1, %bb.z ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.01820.us.i80
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !3
  %i.ks = sext i32 %i.kr to i64
  %i.kt = add nsw i64 %i.ko, %i.ks                ; 2 uses
  %i.ku = lshr i64 %i.kt, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !44
  %i.kx = trunc i64 %i.kt to i8
  %i.ky = and i8 %i.kx, 7
  %i.kz = lshr i8 %i.kw, %i.ky
  %i.la = and i8 %i.kz, 1
  %i.lb = xor i8 %i.la, 1
  %i.lc = zext nneg i8 %i.lb to i64
  %.2.us.i81 = add nuw nsw i64 %.021.us.i79, %i.lc
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.01820.us.i80
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3
  %i.lg = sext i32 %i.lf to i64
  %i.lh = add nsw i64 %i.ko, %i.lg                ; 2 uses
  %i.li = lshr i64 %i.lh, 3
  %i.lj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !44
  %i.ll = trunc i64 %i.lh to i8
  %i.lm = and i8 %i.ll, 7
  %i.ln = lshr i8 %i.lk, %i.lm
  %i.lo = and i8 %i.ln, 1
  %i.lp = xor i8 %i.lo, 1
  %i.lq = zext nneg i8 %i.lp to i64
  %.2.us.i81.1 = add nuw nsw i64 %.2.us.i81, %i.lq ; 3 uses
  %i.lr = add nuw nsw i64 %.01820.us.i80, 2       ; 2 uses
  %niter210.next.1 = add nuw nsw i64 %niter210, 2 ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit198.unr-lcssa, label %bb.z, !llvm.loop !53

.lr.ph.split.i72:                                 ; preds = %.lr.ph.i70, %bb.ab
  %.021.i73 = phi i64 [ %.2.i76, %bb.ab ], [ 0, %.lr.ph.i70 ]
  %.01820.i74 = phi i64 [ %i.mo, %bb.ab ], [ 0, %.lr.ph.i70 ] ; 3 uses
  %i.ls = add nsw i64 %.01820.i74, %i.t           ; 2 uses
  %i.lt = lshr i64 %i.ls, 3
  %i.lu = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !44
  %i.lw = trunc i64 %i.ls to i8
  %i.lx = and i8 %i.lw, 7
  %i.ly = lshr i8 %i.lv, %i.lx
  %i.lz = trunc i8 %i.ly to i1
  br i1 %i.lz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i72
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.01820.i74
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !3
  %i.mc = sext i32 %i.mb to i64
  %i.md = load i64, ptr %i.kn, align 8, !tbaa !43
  %i.me = add nsw i64 %i.md, %i.mc                ; 2 uses
  %i.mf = lshr i64 %i.me, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !44
  %i.mi = trunc i64 %i.me to i8
  %i.mj = and i8 %i.mi, 7
  %i.mk = lshr i8 %i.mh, %i.mj
  %i.ml = and i8 %i.mk, 1
  %i.mm = xor i8 %i.ml, 1
  %i.mn = zext nneg i8 %i.mm to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.split.i72
  %.pn.i75 = phi i64 [ %i.mn, %bb.aa ], [ 1, %.lr.ph.split.i72 ]
  %.2.i76 = add nuw nsw i64 %.pn.i75, %.021.i73   ; 2 uses
  %i.mo = add nuw nsw i64 %.01820.i74, 1          ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.mo, %i.f
  br i1 %exitcond.not.i77, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i72, !llvm.loop !53

bb.ac:                                            ; preds = %bb.d
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i84, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i84:                                       ; preds = %bb.ac
  %.not.i85 = icmp eq ptr %i.o, null
  %i.mq = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i85, label %.lr.ph.split.us.i92, label %.lr.ph.split.i86

.lr.ph.split.us.i92:                              ; preds = %.lr.ph.i84
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !43 ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.ms = icmp eq i64 %i.f, 1
  br i1 %i.ms, label %.epil.preheader, label %.lr.ph.split.us.i92.new

.lr.ph.split.us.i92.new:                          ; preds = %.lr.ph.split.us.i92
  %unroll_iter = and i64 %i.f, 9223372036854775806
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.split.us.i92.new
  %.021.us.i93 = phi i64 [ 0, %.lr.ph.split.us.i92.new ], [ %.2.us.i95.1, %bb.ad ]
  %.01820.us.i94 = phi i64 [ 0, %.lr.ph.split.us.i92.new ], [ %i.ns, %bb.ad ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.i92.new ], [ %niter.next.1, %bb.ad ]
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.01820.us.i94
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !54
  %i.mv = add i64 %i.mu, %i.mr                    ; 2 uses
  %i.mw = lshr i64 %i.mv, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !44
  %i.mz = trunc i64 %i.mv to i8
  %i.na = and i8 %i.mz, 7
  %i.nb = lshr i8 %i.my, %i.na
  %i.nc = and i8 %i.nb, 1
  %i.nd = xor i8 %i.nc, 1
  %i.ne = zext nneg i8 %i.nd to i64
  %.2.us.i95 = add nuw nsw i64 %.021.us.i93, %i.ne
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.01820.us.i94
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !54
  %i.ni = add i64 %i.nh, %i.mr                    ; 2 uses
  %i.nj = lshr i64 %i.ni, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !44
  %i.nm = trunc i64 %i.ni to i8
  %i.nn = and i8 %i.nm, 7
  %i.no = lshr i8 %i.nl, %i.nn
  %i.np = and i8 %i.no, 1
  %i.nq = xor i8 %i.np, 1
  %i.nr = zext nneg i8 %i.nq to i64
  %.2.us.i95.1 = add nuw nsw i64 %.2.us.i95, %i.nr ; 3 uses
  %i.ns = add nuw nsw i64 %.01820.us.i94, 2       ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit200.unr-lcssa, label %bb.ad, !llvm.loop !55

.lr.ph.split.i86:                                 ; preds = %.lr.ph.i84, %bb.af
  %.021.i87 = phi i64 [ %.2.i90, %bb.af ], [ 0, %.lr.ph.i84 ]
  %.01820.i88 = phi i64 [ %i.oo, %bb.af ], [ 0, %.lr.ph.i84 ] ; 3 uses
  %i.nt = add nsw i64 %.01820.i88, %i.t           ; 2 uses
  %i.nu = lshr i64 %i.nt, 3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !44
  %i.nx = trunc i64 %i.nt to i8
  %i.ny = and i8 %i.nx, 7
  %i.nz = lshr i8 %i.nw, %i.ny
  %i.oa = trunc i8 %i.nz to i1
  br i1 %i.oa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.i86
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.01820.i88
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !54
  %i.od = load i64, ptr %i.mq, align 8, !tbaa !43
  %i.oe = add i64 %i.od, %i.oc                    ; 2 uses
  %i.of = lshr i64 %i.oe, 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !44
  %i.oi = trunc i64 %i.oe to i8
  %i.oj = and i8 %i.oi, 7
  %i.ok = lshr i8 %i.oh, %i.oj
  %i.ol = and i8 %i.ok, 1
  %i.om = xor i8 %i.ol, 1
  %i.on = zext nneg i8 %i.om to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.split.i86
  %.pn.i89 = phi i64 [ %i.on, %bb.ae ], [ 1, %.lr.ph.split.i86 ]
  %.2.i90 = add nuw nsw i64 %.pn.i89, %.021.i87   ; 2 uses
  %i.oo = add nuw nsw i64 %.01820.i88, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %i.oo, %i.f
  br i1 %exitcond.not.i91, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i86, !llvm.loop !55

bb.ag:                                            ; preds = %bb.d
  %i.op = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.t ; 4 uses
  br i1 %i.w, label %.lr.ph.i98, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

.lr.ph.i98:                                       ; preds = %bb.ag
  %.not.i99 = icmp eq ptr %i.o, null
  %i.oq = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i99, label %.lr.ph.split.us.i106, label %.lr.ph.split.i100

.lr.ph.split.us.i106:                             ; preds = %.lr.ph.i98
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !43 ; 3 uses
  %xtraiter247 = and i64 %i.f, 1
  %i.os = icmp eq i64 %i.f, 1
  br i1 %i.os, label %.epil.preheader246, label %.lr.ph.split.us.i106.new

.lr.ph.split.us.i106.new:                         ; preds = %.lr.ph.split.us.i106
  %unroll_iter251 = and i64 %i.f, 9223372036854775806
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.split.us.i106.new
  %.021.us.i107 = phi i64 [ 0, %.lr.ph.split.us.i106.new ], [ %.2.us.i109.1, %bb.ah ]
  %.01820.us.i108 = phi i64 [ 0, %.lr.ph.split.us.i106.new ], [ %i.ps, %bb.ah ] ; 3 uses
  %niter252 = phi i64 [ 0, %.lr.ph.split.us.i106.new ], [ %niter252.next.1, %bb.ah ]
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.01820.us.i108
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !54
  %i.ov = add nsw i64 %i.ou, %i.or                ; 2 uses
  %i.ow = lshr i64 %i.ov, 3
  %i.ox = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !44
  %i.oz = trunc i64 %i.ov to i8
  %i.pa = and i8 %i.oz, 7
  %i.pb = lshr i8 %i.oy, %i.pa
  %i.pc = and i8 %i.pb, 1
  %i.pd = xor i8 %i.pc, 1
  %i.pe = zext nneg i8 %i.pd to i64
  %.2.us.i109 = add nuw nsw i64 %.021.us.i107, %i.pe
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.01820.us.i108
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !54
  %i.pi = add nsw i64 %i.ph, %i.or                ; 2 uses
  %i.pj = lshr i64 %i.pi, 3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !44
  %i.pm = trunc i64 %i.pi to i8
  %i.pn = and i8 %i.pm, 7
  %i.po = lshr i8 %i.pl, %i.pn
  %i.pp = and i8 %i.po, 1
  %i.pq = xor i8 %i.pp, 1
  %i.pr = zext nneg i8 %i.pq to i64
  %.2.us.i109.1 = add nuw nsw i64 %.2.us.i109, %i.pr ; 3 uses
  %i.ps = add nuw nsw i64 %.01820.us.i108, 2      ; 2 uses
  %niter252.next.1 = add nuw nsw i64 %niter252, 2 ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !56

.lr.ph.split.i100:                                ; preds = %.lr.ph.i98, %bb.aj
  %.021.i101 = phi i64 [ %.2.i104, %bb.aj ], [ 0, %.lr.ph.i98 ]
  %.01820.i102 = phi i64 [ %i.qo, %bb.aj ], [ 0, %.lr.ph.i98 ] ; 3 uses
  %i.pt = add nsw i64 %.01820.i102, %i.t          ; 2 uses
  %i.pu = lshr i64 %i.pt, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !44
  %i.px = trunc i64 %i.pt to i8
  %i.py = and i8 %i.px, 7
  %i.pz = lshr i8 %i.pw, %i.py
  %i.qa = trunc i8 %i.pz to i1
  br i1 %i.qa, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.i100
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.01820.i102
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !54
  %i.qd = load i64, ptr %i.oq, align 8, !tbaa !43
  %i.qe = add nsw i64 %i.qd, %i.qc                ; 2 uses
  %i.qf = lshr i64 %i.qe, 3
  %i.qg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !44
  %i.qi = trunc i64 %i.qe to i8
  %i.qj = and i8 %i.qi, 7
  %i.qk = lshr i8 %i.qh, %i.qj
  %i.ql = and i8 %i.qk, 1
  %i.qm = xor i8 %i.ql, 1
  %i.qn = zext nneg i8 %i.qm to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.split.i100
  %.pn.i103 = phi i64 [ %i.qn, %bb.ai ], [ 1, %.lr.ph.split.i100 ]
  %.2.i104 = add nuw nsw i64 %.pn.i103, %.021.i101 ; 2 uses
  %i.qo = add nuw nsw i64 %.01820.i102, 1         ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %i.qo, %i.f
  br i1 %exitcond.not.i105, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.lr.ph.split.i100, !llvm.loop !56

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i106
  %.021.us.i107.epil.init = phi i64 [ 0, %.lr.ph.split.us.i106 ], [ %.2.us.i109.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit.unr-lcssa ]
  %.01820.us.i108.epil.init = phi i64 [ 0, %.lr.ph.split.us.i106 ], [ %i.ps, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit.unr-lcssa ]
  %lcmp.mod250 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.01820.us.i108.epil.init
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !54
  %i.qr = add nsw i64 %i.qq, %i.or                ; 2 uses
  %i.qs = lshr i64 %i.qr, 3
  %i.qt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !44
  %i.qv = trunc i64 %i.qr to i8
  %i.qw = and i8 %i.qv, 7
  %i.qx = lshr i8 %i.qu, %i.qw
  %i.qy = and i8 %i.qx, 1
  %i.qz = xor i8 %i.qy, 1
  %i.ra = zext nneg i8 %i.qz to i64
  %.2.us.i109.epil = add nuw nsw i64 %.021.us.i107.epil.init, %i.ra
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit188.unr-lcssa: ; preds = %bb.f
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader239

.epil.preheader239:                               ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit188.unr-lcssa, %.lr.ph.split.us.i
  %.021.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i ], [ %.2.us.i.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit188.unr-lcssa ]
  %.01820.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.bc, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit188.unr-lcssa ]
  %lcmp.mod243 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.rb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01820.us.i.epil.init
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !44
  %i.rd = zext i8 %i.rc to i64
  %i.re = add nsw i64 %i.z, %i.rd                 ; 2 uses
  %i.rf = lshr i64 %i.re, 3
  %i.rg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !44
  %i.ri = trunc i64 %i.re to i8
  %i.rj = and i8 %i.ri, 7
  %i.rk = lshr i8 %i.rh, %i.rj
  %i.rl = and i8 %i.rk, 1
  %i.rm = xor i8 %i.rl, 1
  %i.rn = zext nneg i8 %i.rm to i64
  %.2.us.i.epil = add nuw nsw i64 %.021.us.i.epil.init, %i.rn
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit190.unr-lcssa: ; preds = %bb.j
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader232

.epil.preheader232:                               ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit190.unr-lcssa, %.lr.ph.split.us.i22
  %.021.us.i23.epil.init = phi i64 [ 0, %.lr.ph.split.us.i22 ], [ %.2.us.i25.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit190.unr-lcssa ]
  %.01820.us.i24.epil.init = phi i64 [ 0, %.lr.ph.split.us.i22 ], [ %i.df, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit190.unr-lcssa ]
  %lcmp.mod236 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.01820.us.i24.epil.init
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !44
  %i.rq = sext i8 %i.rp to i64
  %i.rr = add nsw i64 %i.cc, %i.rq                ; 2 uses
  %i.rs = lshr i64 %i.rr, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !44
  %i.rv = trunc i64 %i.rr to i8
  %i.rw = and i8 %i.rv, 7
  %i.rx = lshr i8 %i.ru, %i.rw
  %i.ry = and i8 %i.rx, 1
  %i.rz = xor i8 %i.ry, 1
  %i.sa = zext nneg i8 %i.rz to i64
  %.2.us.i25.epil = add nuw nsw i64 %.021.us.i23.epil.init, %i.sa
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit192.unr-lcssa: ; preds = %bb.n
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader225

.epil.preheader225:                               ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit192.unr-lcssa, %.lr.ph.split.us.i36
  %.021.us.i37.epil.init = phi i64 [ 0, %.lr.ph.split.us.i36 ], [ %.2.us.i39.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit192.unr-lcssa ]
  %.01820.us.i38.epil.init = phi i64 [ 0, %.lr.ph.split.us.i36 ], [ %i.fi, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit192.unr-lcssa ]
  %lcmp.mod229 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %.01820.us.i38.epil.init
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !48
  %i.sd = zext i16 %i.sc to i64
  %i.se = add nsw i64 %i.ef, %i.sd                ; 2 uses
  %i.sf = lshr i64 %i.se, 3
  %i.sg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !44
  %i.si = trunc i64 %i.se to i8
  %i.sj = and i8 %i.si, 7
  %i.sk = lshr i8 %i.sh, %i.sj
  %i.sl = and i8 %i.sk, 1
  %i.sm = xor i8 %i.sl, 1
  %i.sn = zext nneg i8 %i.sm to i64
  %.2.us.i39.epil = add nuw nsw i64 %.021.us.i37.epil.init, %i.sn
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit194.unr-lcssa: ; preds = %bb.r
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader218

.epil.preheader218:                               ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit194.unr-lcssa, %.lr.ph.split.us.i50
  %.021.us.i51.epil.init = phi i64 [ 0, %.lr.ph.split.us.i50 ], [ %.2.us.i53.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit194.unr-lcssa ]
  %.01820.us.i52.epil.init = phi i64 [ 0, %.lr.ph.split.us.i50 ], [ %i.hl, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit194.unr-lcssa ]
  %lcmp.mod222 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %.01820.us.i52.epil.init
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !48
  %i.sq = sext i16 %i.sp to i64
  %i.sr = add nsw i64 %i.gi, %i.sq                ; 2 uses
  %i.ss = lshr i64 %i.sr, 3
  %i.st = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !44
  %i.sv = trunc i64 %i.sr to i8
  %i.sw = and i8 %i.sv, 7
  %i.sx = lshr i8 %i.su, %i.sw
  %i.sy = and i8 %i.sx, 1
  %i.sz = xor i8 %i.sy, 1
  %i.ta = zext nneg i8 %i.sz to i64
  %.2.us.i53.epil = add nuw nsw i64 %.021.us.i51.epil.init, %i.ta
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit196.unr-lcssa: ; preds = %bb.v
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader211

.epil.preheader211:                               ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit196.unr-lcssa, %.lr.ph.split.us.i64
  %.021.us.i65.epil.init = phi i64 [ 0, %.lr.ph.split.us.i64 ], [ %.2.us.i67.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit196.unr-lcssa ]
  %.01820.us.i66.epil.init = phi i64 [ 0, %.lr.ph.split.us.i64 ], [ %i.jo, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit196.unr-lcssa ]
  %lcmp.mod215 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.01820.us.i66.epil.init
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !3
  %i.td = zext i32 %i.tc to i64
  %i.te = add nsw i64 %i.il, %i.td                ; 2 uses
  %i.tf = lshr i64 %i.te, 3
  %i.tg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !44
  %i.ti = trunc i64 %i.te to i8
  %i.tj = and i8 %i.ti, 7
  %i.tk = lshr i8 %i.th, %i.tj
  %i.tl = and i8 %i.tk, 1
  %i.tm = xor i8 %i.tl, 1
  %i.tn = zext nneg i8 %i.tm to i64
  %.2.us.i67.epil = add nuw nsw i64 %.021.us.i65.epil.init, %i.tn
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit198.unr-lcssa: ; preds = %bb.z
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader204

.epil.preheader204:                               ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit198.unr-lcssa, %.lr.ph.split.us.i78
  %.021.us.i79.epil.init = phi i64 [ 0, %.lr.ph.split.us.i78 ], [ %.2.us.i81.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit198.unr-lcssa ]
  %.01820.us.i80.epil.init = phi i64 [ 0, %.lr.ph.split.us.i78 ], [ %i.lr, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit198.unr-lcssa ]
  %lcmp.mod208 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.01820.us.i80.epil.init
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !3
  %i.tq = sext i32 %i.tp to i64
  %i.tr = add nsw i64 %i.ko, %i.tq                ; 2 uses
  %i.ts = lshr i64 %i.tr, 3
  %i.tt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !44
  %i.tv = trunc i64 %i.tr to i8
  %i.tw = and i8 %i.tv, 7
  %i.tx = lshr i8 %i.tu, %i.tw
  %i.ty = and i8 %i.tx, 1
  %i.tz = xor i8 %i.ty, 1
  %i.ua = zext nneg i8 %i.tz to i64
  %.2.us.i81.epil = add nuw nsw i64 %.021.us.i79.epil.init, %i.ua
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit200.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit200.unr-lcssa, %.lr.ph.split.us.i92
  %.021.us.i93.epil.init = phi i64 [ 0, %.lr.ph.split.us.i92 ], [ %.2.us.i95.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit200.unr-lcssa ]
  %.01820.us.i94.epil.init = phi i64 [ 0, %.lr.ph.split.us.i92 ], [ %i.ns, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit200.unr-lcssa ]
  %lcmp.mod203 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.01820.us.i94.epil.init
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !54
  %i.ud = add i64 %i.uc, %i.mr                    ; 2 uses
  %i.ue = lshr i64 %i.ud, 3
  %i.uf = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !44
  %i.uh = trunc i64 %i.ud to i8
  %i.ui = and i8 %i.uh, 7
  %i.uj = lshr i8 %i.ug, %i.ui
  %i.uk = and i8 %i.uj, 1
  %i.ul = xor i8 %i.uk, 1
  %i.um = zext nneg i8 %i.ul to i64
  %.2.us.i95.epil = add nuw nsw i64 %.021.us.i93.epil.init, %i.um
  br label %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit

_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit: ; preds = %bb.af, %.epil.preheader, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit200.unr-lcssa, %bb.ab, %.epil.preheader204, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit198.unr-lcssa, %bb.x, %.epil.preheader211, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit196.unr-lcssa, %bb.t, %.epil.preheader218, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit194.unr-lcssa, %bb.p, %.epil.preheader225, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit192.unr-lcssa, %bb.l, %.epil.preheader232, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit190.unr-lcssa, %bb.h, %.epil.preheader239, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit188.unr-lcssa, %bb.aj, %.epil.preheader246, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit.unr-lcssa, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e, %bb.c
  %.1 = phi i64 [ %i.h, %bb.c ], [ %.2.i20, %bb.l ], [ %.2.i, %bb.h ], [ %.2.us.i53.epil, %.epil.preheader218 ], [ %.2.us.i67.epil, %.epil.preheader211 ], [ %.2.us.i81.epil, %.epil.preheader204 ], [ %.2.us.i95.epil, %.epil.preheader ], [ %.2.i104, %bb.aj ], [ 0, %bb.e ], [ %.2.i34, %bb.p ], [ 0, %bb.i ], [ %.2.i48, %bb.t ], [ 0, %bb.m ], [ %.2.i62, %bb.x ], [ 0, %bb.q ], [ %.2.i76, %bb.ab ], [ 0, %bb.u ], [ %.2.us.i109.epil, %.epil.preheader246 ], [ 0, %bb.y ], [ %.2.us.i.epil, %.epil.preheader239 ], [ 0, %bb.ac ], [ %.2.us.i25.epil, %.epil.preheader232 ], [ 0, %bb.ag ], [ %.2.us.i39.epil, %.epil.preheader225 ], [ %.2.us.i109.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit.unr-lcssa ], [ %.2.us.i.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit188.unr-lcssa ], [ %.2.us.i25.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit190.unr-lcssa ], [ %.2.us.i39.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit192.unr-lcssa ], [ %.2.us.i53.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit194.unr-lcssa ], [ %.2.us.i67.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit196.unr-lcssa ], [ %.2.us.i81.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit198.unr-lcssa ], [ %.2.us.i95.1, %_ZN5arrow9dict_util12_GLOBAL__N_116LogicalNullCountINS_9UInt8TypeEEElRKNS_9ArraySpanE.exit.loopexit200.unr-lcssa ], [ %.2.i90, %bb.af ]
  ret i64 %.1
}

declare noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"p1 _ZTSN5arrow9ArraySpanE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN5arrow9ArraySpanE", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !5, i64 32, !15, i64 104}
!13 = !{!"p1 _ZTSN5arrow8DataTypeE", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSSt6vectorIN5arrow9ArraySpanESaIS1_EE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE12_Vector_implE", !8, i64 0}
!18 = !{!12, !13, i64 0}
!19 = !{!20, !13, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !21, i64 8}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!23 = !{!24, !33, i64 40}
!24 = !{!"_ZTSN5arrow8DataTypeE", !25, i64 0, !29, i64 24, !33, i64 40, !34, i64 48}
!25 = !{!"_ZTSN5arrow6detail15FingerprintableE", !26, i64 8, !26, i64 16}
!26 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !27, i64 0}
!27 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !28, i64 0}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!29 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !30, i64 0}
!30 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !31, i64 0}
!31 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !32, i64 8}
!32 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!33 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!34 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !10, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSN5arrow10BufferSpanE", !41, i64 0, !14, i64 8, !42, i64 16}
!41 = !{!"p1 omnipotent char", !10, i64 0}
!42 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !10, i64 0}
!43 = !{!12, !14, i64 24}
!44 = !{!5, !5, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !5, i64 0}
!50 = distinct !{!50, !46}
!51 = distinct !{!51, !46}
!52 = distinct !{!52, !46}
!53 = distinct !{!53, !46}
!54 = !{!14, !14, i64 0}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
end_hunk_0
