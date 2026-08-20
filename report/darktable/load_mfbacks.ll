inline.NumInlined: 98
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6LibRaw19hasselblad_load_rawEv:bb.a
  %i.cd = sub nsw i32 64, %i.be
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !77 ; 2 uses
  %i.cj = lshr i16 %i.ci, 8
  %i.ck = zext nneg i16 %i.cj to i32
  %i.cl = sub nsw i32 %i.bw, %i.ck
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !170
  %i.cm = and i16 %i.ci, 255                      ; 2 uses
  %i.cn = zext nneg i16 %i.cm to i32              ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  br i1 %.pre217, label %.preheader, label %bb.h

bb.h:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !170 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %.pre221.pre-phi
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !177 ; 2 uses
  br i1 %i.cs, label %bb.i, label %._crit_edge.i.1

bb.i:                                             ; preds = %bb.h
  %i.cv = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit

.noexc.1:                                         ; preds = %bb.i
  %i.cw = shl i64 %i.cu, 32
  %i.cx = zext i32 %i.cv to i64
  %i.cy = or disjoint i64 %i.cw, %i.cx            ; 2 uses
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !177
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !170
  %i.dd = add nsw i32 %i.dc, 32                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !170
  br label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %.noexc.1, %bb.h
  %i.de = phi i32 [ %i.dd, %.noexc.1 ], [ %i.cr, %bb.h ] ; 2 uses
  %i.df = phi i64 [ %i.cy, %.noexc.1 ], [ %i.cu, %bb.h ]
  %i.dg = phi ptr [ %i.cz, %.noexc.1 ], [ %i.cp, %bb.h ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = sub nsw i32 64, %i.de
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.df, %i.dj
  %i.dl = sub nsw i32 64, %.pre221.pre-phi
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = lshr i64 %i.dk, %i.dm
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !77 ; 2 uses
  %i.dr = lshr i16 %i.dq, 8
  %i.ds = zext nneg i16 %i.dr to i32
  %i.dt = sub nsw i32 %i.de, %i.ds
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !170
  %i.du = and i16 %i.dq, 255
  %i.dv = zext nneg i16 %i.du to i32
  br label %.preheader

bb.j:                                             ; preds = %.preheader
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !170 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.cn
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !177 ; 2 uses
  br i1 %i.dz, label %bb.k, label %_ZN6LibRaw11ph1_bithuffEiPt.exit111

bb.k:                                             ; preds = %bb.j
  %i.ec = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc110 unwind label %.loopexit

.noexc110:                                        ; preds = %bb.k
  %i.ed = shl i64 %i.eb, 32
  %i.ee = zext i32 %i.ec to i64
  %i.ef = or disjoint i64 %i.ed, %i.ee            ; 2 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %i.ef, ptr %i.eh, align 8, !tbaa !177
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !170
  %i.ek = add nsw i32 %i.ej, 32                   ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !170
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111

.thread238:                                       ; preds = %.preheader, %.preheader119
  %.sroa.6.0237 = phi i32 [ %.0.i.1, %.preheader ], [ 0, %.preheader119 ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.el, align 8, !tbaa !11
  br label %bb.l

_ZN6LibRaw11ph1_bithuffEiPt.exit111:              ; preds = %bb.j, %.noexc110
  %i.em = phi i32 [ %i.ek, %.noexc110 ], [ %i.dy, %bb.j ] ; 2 uses
  %i.en = phi i64 [ %i.ef, %.noexc110 ], [ %i.eb, %bb.j ]
  %i.eo = phi ptr [ %i.eg, %.noexc110 ], [ %i.dw, %bb.j ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = sub nsw i32 64, %i.em
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl i64 %i.en, %i.er                    ; 2 uses
  %i.et = sub nsw i32 64, %i.cn
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = lshr i64 %i.es, %i.eu
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = sub nsw i32 %i.em, %i.cn
  store i32 %i.ex, ptr %i.ep, align 8, !tbaa !170
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %notmask = shl nsw i32 -1, %i.cn
  %.neg103 = add nuw nsw i32 %notmask, 1
  %i.ez = icmp slt i64 %i.es, 0
  %i.fa = select i1 %i.ez, i32 0, i32 %.neg103
  %storemerge = add i32 %i.fa, %i.ew
  %storemerge.fr = freeze i32 %storemerge         ; 3 uses
  store i32 %storemerge.fr, ptr %i.ey, align 8, !tbaa !11
  %i.fb = icmp eq i32 %storemerge.fr, 65535
  %spec.select = select i1 %i.fb, i32 -32768, i32 %storemerge.fr
  br label %bb.l

bb.l:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111, %.thread238
  %i.fc = phi ptr [ %i.el, %.thread238 ], [ %i.ey, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  %.sroa.6.0236241 = phi i32 [ %.sroa.6.0237, %.thread238 ], [ %.0.i.1, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ] ; 5 uses
  %i.fd = phi i32 [ 0, %.thread238 ], [ %spec.select, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  store i32 %i.fd, ptr %i.fc, align 4
  %cond256 = icmp eq i32 %.sroa.6.0236241, 0
  br i1 %cond256, label %.thread243, label %bb.m

.thread243:                                       ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !11
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !170 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %.sroa.6.0236241
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !177 ; 2 uses
  br i1 %i.fj, label %bb.n, label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

bb.n:                                             ; preds = %bb.m
  %i.fm = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc110.1 unwind label %.loopexit

.noexc110.1:                                      ; preds = %bb.n
  %i.fn = shl i64 %i.fl, 32
  %i.fo = zext i32 %i.fm to i64
  %i.fp = or disjoint i64 %i.fn, %i.fo            ; 2 uses
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !177
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !170
  %i.fu = add nsw i32 %i.ft, 32                   ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !170
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

_ZN6LibRaw11ph1_bithuffEiPt.exit111.1:            ; preds = %.noexc110.1, %bb.m
  %i.fv = phi i32 [ %i.fu, %.noexc110.1 ], [ %i.fi, %bb.m ] ; 2 uses
  %i.fw = phi i64 [ %i.fp, %.noexc110.1 ], [ %i.fl, %bb.m ]
  %i.fx = phi ptr [ %i.fq, %.noexc110.1 ], [ %i.fg, %bb.m ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = sub nsw i32 64, %i.fv
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl i64 %i.fw, %i.ga                    ; 2 uses
  %i.gc = sub nsw i32 64, %.sroa.6.0236241
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 %i.gb, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = sub nsw i32 %i.fv, %.sroa.6.0236241
  store i32 %i.gg, ptr %i.fy, align 8, !tbaa !170
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %notmask.1 = shl nsw i32 -1, %.sroa.6.0236241
  %.neg103.1 = add nuw nsw i32 %notmask.1, 1
  %i.gj = icmp slt i64 %i.gb, 0
  %i.gk = select i1 %i.gj, i32 0, i32 %.neg103.1
  %storemerge258 = add i32 %i.gk, %i.gf
  %storemerge258.fr = freeze i32 %storemerge258   ; 3 uses
  store i32 %storemerge258.fr, ptr %i.gi, align 4, !tbaa !11
  %i.gl = icmp eq i32 %storemerge258.fr, 65535
  %spec.select257 = select i1 %i.gl, i32 -32768, i32 %storemerge258.fr
  br label %bb.o

bb.o:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1, %.thread243
  %i.gm = phi ptr [ %i.ff, %.thread243 ], [ %i.gi, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  %i.gn = phi i32 [ 0, %.thread243 ], [ %spec.select257, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  store i32 %i.gn, ptr %i.gm, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.go = load i32, ptr %i.o, align 8, !tbaa !186
  %i.gp = shl i32 %i.go, 1
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %.preheader119, label %.preheader123, !llvm.loop !190

bb.p:                                             ; preds = %.preheader123, %._crit_edge
  %indvars.iv198 = phi i64 [ %indvars.iv196, %.preheader123 ], [ %indvars.iv.next199, %._crit_edge ] ; 12 uses
  br i1 %.not118, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.gs = load i32, ptr %i.ai, align 4, !tbaa !191
  %i.gt = add i32 %i.gs, 32768
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gu = add nuw i64 %indvars.iv198, 4294967294
  %i.gv = and i64 %i.gu, 4294967295               ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0210.0, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !11 ; 2 uses
  %i.gy = load i32, ptr %i.ah, align 8
  %cond = icmp eq i32 %i.gy, 11
  %or.cond3 = select i1 %i.aw, i1 %cond, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %indvars.iv198
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !11
  %i.hb = sdiv i32 %i.ha, 2
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %i.gv
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !11
  %.neg = sdiv i32 %i.hd, -2
  %i.he = add i32 %i.hb, %i.gx
  %i.hf = add i32 %i.he, %.neg
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %bb.q
  %.184 = phi i32 [ %i.hf, %bb.r ], [ %i.gx, %bb.q ], [ %i.gt, %.thread ] ; 7 uses
  %i.hg = load i32, ptr %i.o, align 8, !tbaa !186 ; 10 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.hi = and i64 %indvars.iv198, 1
  %i.hj = xor i64 %i.hi, %i.av
  %i.hk = trunc i64 %indvars.iv198 to i1
  %i.hl = load ptr, ptr %i.aj, align 8, !tbaa !76
  %.fr = freeze ptr %i.hl                         ; 7 uses
  %.not101 = icmp ne ptr %.fr, null               ; 6 uses
  %i.hm = load ptr, ptr %i.h, align 8, !tbaa !192 ; 2 uses
  %.not102 = icmp eq ptr %i.hm, null
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %i.hj ; 5 uses
  %i.hn = zext nneg i32 %i.hg to i64
  %i.ho = select i1 %i.hk, i64 %i.hn, i64 0       ; 5 uses
  %wide.trip.count194 = zext nneg i32 %i.hg to i64 ; 9 uses
  %invariant.gep253 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ho ; 9 uses
  br i1 %.not102, label %.lr.ph.split.us.split.preheader.a, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.hp = load i32, ptr %invariant.gep253, align 4, !tbaa !11
  %i.hq = add nsw i32 %i.hp, %.184                ; 3 uses
  %i.hr = ashr i32 %i.hq, %i.r                    ; 2 uses
  %or.cond106.peel = select i1 %.not101, i1 %i.ap, i1 false
  br i1 %or.cond106.peel, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.preheader
  %i.hs = trunc i32 %i.hr to i16
  %i.ht = load i16, ptr %i.j, align 2, !tbaa !75
  %i.hu = zext i16 %i.ht to i32
  %i.hv = mul nuw nsw i32 %.087143, %i.hu
  %2 = zext nneg i32 %i.hv to i64
  %3 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %indvars.iv198
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2
  store i16 %i.hs, ptr %i.hw, align 2, !tbaa !77
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.preheader
  %i.hx = load i16, ptr %i.ak, align 8, !tbaa !96
  %i.hy = zext i16 %i.hx to i32
  %i.hz = sub nsw i32 %.087143, %i.hy             ; 2 uses
  %i.ia = load i16, ptr %i.al, align 2, !tbaa !97
  %i.ib = zext i16 %i.ia to i32
  %i.ic = sub nsw i32 %indvars209, %i.ib          ; 2 uses
  %i.id = load i16, ptr %i.am, align 2, !tbaa !193
  %i.ie = zext i16 %i.id to i32                   ; 2 uses
  %i.if = load i16, ptr %i.an, align 4, !tbaa !194
  %i.ig = zext i16 %i.if to i32
  %i.ih = icmp ult i32 %i.hz, %i.ig
  %i.ii = icmp ult i32 %i.ic, %i.ie
  %or.cond107.peel = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %or.cond107.peel, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ij = mul i32 %i.hz, %i.ie
  %i.ik = add i32 %i.ij, %i.ic
  %i.il = zext i32 %i.ik to i64
  %gep.peel = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.il
  %i.im = trunc i32 %i.hr to i16
  store i16 %i.im, ptr %gep.peel, align 2, !tbaa !77
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %exitcond.peel.not = icmp eq i32 %i.hg, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.peel.next

.lr.ph.split.peel.next:                           ; preds = %bb.w
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ho
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !11
  %i.iq = add nsw i32 %i.ip, %i.hq                ; 3 uses
  %i.ir = ashr i32 %i.iq, %i.r                    ; 2 uses
  %or.cond106.peel166 = select i1 %.not101, i1 %i.aq, i1 false
  br i1 %or.cond106.peel166, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.peel.next
  %i.is = trunc i32 %i.ir to i16
  %i.it = load i16, ptr %i.j, align 2, !tbaa !75
  %i.iu = zext i16 %i.it to i32
  %i.iv = mul nuw nsw i32 %.087143, %i.iu
  %4 = zext nneg i32 %i.iv to i64
  %5 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %indvars.iv198
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %4
  store i16 %i.is, ptr %i.iw, align 2, !tbaa !77
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.split.peel.next
  %i.ix = load i16, ptr %i.ak, align 8, !tbaa !96
  %i.iy = zext i16 %i.ix to i32
  %i.iz = sub nsw i32 %.087143, %i.iy
  %i.ja = add nsw i32 %i.iz, 1                    ; 2 uses
  %i.jb = load i16, ptr %i.al, align 2, !tbaa !97
  %i.jc = zext i16 %i.jb to i32
  %i.jd = sub nsw i32 %indvars209, %i.jc          ; 2 uses
  %i.je = load i16, ptr %i.am, align 2, !tbaa !193
  %i.jf = zext i16 %i.je to i32                   ; 2 uses
  %i.jg = load i16, ptr %i.an, align 4, !tbaa !194
  %i.jh = zext i16 %i.jg to i32
  %i.ji = icmp ult i32 %i.ja, %i.jh
  %i.jj = icmp ult i32 %i.jd, %i.jf
  %or.cond107.peel168 = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond107.peel168, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jk = mul i32 %i.ja, %i.jf
  %i.jl = add i32 %i.jk, %i.jd
  %i.jm = zext i32 %i.jl to i64
  %gep.peel167 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.jm
  %i.jn = trunc i32 %i.ir to i16
  store i16 %i.jn, ptr %gep.peel167, align 2, !tbaa !77
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %exitcond.peel170.not = icmp eq i32 %i.hg, 2
  br i1 %exitcond.peel170.not, label %._crit_edge, label %.lr.ph.split.peel.next164

.lr.ph.split.peel.next164:                        ; preds = %bb.aa
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ho
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !11
  %i.jr = add nsw i32 %i.jq, %i.iq                ; 3 uses
  %i.js = ashr i32 %i.jr, %i.r                    ; 2 uses
  %or.cond106.peel173 = select i1 %.not101, i1 %i.ar, i1 false
  br i1 %or.cond106.peel173, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.peel.next164
  %i.jt = trunc i32 %i.js to i16
  %i.ju = load i16, ptr %i.j, align 2, !tbaa !75
  %i.jv = zext i16 %i.ju to i32
  %i.jw = mul nuw nsw i32 %.087143, %i.jv
  %6 = zext nneg i32 %i.jw to i64
  %7 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %indvars.iv198
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %6
  store i16 %i.jt, ptr %i.jx, align 2, !tbaa !77
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.peel.next164
  %i.jy = load i16, ptr %i.ak, align 8, !tbaa !96
  %i.jz = zext i16 %i.jy to i32
  %i.ka = sub nsw i32 %.087143, %i.jz             ; 2 uses
  %i.kb = load i16, ptr %i.al, align 2, !tbaa !97
  %i.kc = zext i16 %i.kb to i32
  %i.kd = xor i32 %i.kc, -1
  %i.ke = add i32 %i.kd, %indvars209              ; 2 uses
  %i.kf = load i16, ptr %i.am, align 2, !tbaa !193
  %i.kg = zext i16 %i.kf to i32                   ; 2 uses
  %i.kh = load i16, ptr %i.an, align 4, !tbaa !194
  %i.ki = zext i16 %i.kh to i32
  %i.kj = icmp ult i32 %i.ka, %i.ki
  %i.kk = icmp ult i32 %i.ke, %i.kg
  %or.cond107.peel175 = select i1 %i.kj, i1 %i.kk, i1 false
  br i1 %or.cond107.peel175, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kl = mul i32 %i.ka, %i.kg
  %i.km = add i32 %i.kl, %i.ke
  %i.kn = zext i32 %i.km to i64
  %gep.peel174 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.kn
  %i.ko = trunc i32 %i.js to i16
  store i16 %i.ko, ptr %gep.peel174, align 2, !tbaa !77
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %exitcond.peel177.not = icmp eq i32 %i.hg, 3
  br i1 %exitcond.peel177.not, label %._crit_edge, label %.lr.ph.split.peel.next171

.lr.ph.split.peel.next171:                        ; preds = %bb.ae
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ho
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !11
  %i.ks = add nsw i32 %i.kr, %i.jr                ; 3 uses
  %i.kt = ashr i32 %i.ks, %i.r                    ; 2 uses
  %or.cond106.peel180 = select i1 %.not101, i1 %i.as, i1 false
  br i1 %or.cond106.peel180, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.peel.next171
  %i.ku = trunc i32 %i.kt to i16
  %i.kv = load i16, ptr %i.j, align 2, !tbaa !75
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %.087143, %i.kw
  %8 = zext nneg i32 %i.kx to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %indvars.iv198
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %8
  store i16 %i.ku, ptr %i.ky, align 2, !tbaa !77
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.split.peel.next171
  %i.kz = load i16, ptr %i.ak, align 8, !tbaa !96
  %i.la = zext i16 %i.kz to i32
  %i.lb = sub nsw i32 %.087143, %i.la
  %i.lc = add nsw i32 %i.lb, 1                    ; 2 uses
  %i.ld = load i16, ptr %i.al, align 2, !tbaa !97
  %i.le = zext i16 %i.ld to i32
  %i.lf = xor i32 %i.le, -1
  %i.lg = add i32 %i.lf, %indvars209              ; 2 uses
  %i.lh = load i16, ptr %i.am, align 2, !tbaa !193
  %i.li = zext i16 %i.lh to i32                   ; 2 uses
  %i.lj = load i16, ptr %i.an, align 4, !tbaa !194
  %i.lk = zext i16 %i.lj to i32
  %i.ll = icmp ult i32 %i.lc, %i.lk
  %i.lm = icmp ult i32 %i.lg, %i.li
  %or.cond107.peel182 = select i1 %i.ll, i1 %i.lm, i1 false
  br i1 %or.cond107.peel182, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ln = mul i32 %i.lc, %i.li
  %i.lo = add i32 %i.ln, %i.lg
  %i.lp = zext i32 %i.lo to i64
  %gep.peel181 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.lp
  %i.lq = trunc i32 %i.kt to i16
  store i16 %i.lq, ptr %gep.peel181, align 2, !tbaa !77
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %exitcond.peel184.not = icmp eq i32 %i.hg, 4
  br i1 %exitcond.peel184.not, label %._crit_edge, label %.lr.ph.split.peel.next178

.lr.ph.split.peel.next178:                        ; preds = %bb.ai
  %invariant.gep249 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ho
  %10 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %indvars.iv198
  br label %.lr.ph.split

.lr.ph.split.us.split.preheader.a:                ; preds = %.lr.ph
  br i1 %.not101, label %.lr.ph.split.us.split.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph.split.us.split.preheader.a
  %min.iters.check = icmp ult i32 %i.hg, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check263 = icmp ult i32 %i.hg, 32
  br i1 %min.iters.check263, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lr = and i64 %wide.trip.count194, 28
  %n.vec = and i64 %wide.trip.count194, 2147483616 ; 4 uses
  %i.ls = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.184, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ls, %vector.ph ], [ %i.lx, %vector.body ]
  %vec.phi264 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ly, %vector.body ]
  %vec.phi265 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.lz, %vector.body ]
  %vec.phi266 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ma, %vector.body ]
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %index ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 96
  %wide.load = load <8 x i32>, ptr %i.lt, align 4, !tbaa !11
  %wide.load267 = load <8 x i32>, ptr %i.lu, align 4, !tbaa !11
  %wide.load268 = load <8 x i32>, ptr %i.lv, align 4, !tbaa !11
  %wide.load269 = load <8 x i32>, ptr %i.lw, align 4, !tbaa !11
  %i.lx = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ly = add <8 x i32> %wide.load267, %vec.phi264 ; 2 uses
  %i.lz = add <8 x i32> %wide.load268, %vec.phi265 ; 2 uses
  %i.ma = add <8 x i32> %wide.load269, %vec.phi266 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.ly, %i.lx
  %bin.rdx270 = add <8 x i32> %i.lz, %bin.rdx
  %bin.rdx271 = add <8 x i32> %i.ma, %bin.rdx270
  %i.mc = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx271) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count194
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.preheader, label %vec.epilog.ph, !prof !196

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.mc, %vec.epilog.iter.check ], [ %.184, %vector.main.loop.iter.check ]
  %n.vec272 = and i64 %wide.trip.count194, 2147483644 ; 3 uses
  %i.md = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index273 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next276, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi274 = phi <4 x i32> [ %i.md, %vec.epilog.ph ], [ %i.mf, %vec.epilog.vector.body ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %index273
  %wide.load275 = load <4 x i32>, ptr %i.me, align 4, !tbaa !11
  %i.mf = add <4 x i32> %wide.load275, %vec.phi274 ; 2 uses
  %index.next276 = add nuw i64 %index273, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next276, %n.vec272
  br i1 %i.mg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !197

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.mh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.mf) ; 2 uses
  %cmp.n277 = icmp eq i64 %n.vec272, %wide.trip.count194
  br i1 %cmp.n277, label %._crit_edge, label %.lr.ph.split.us.split.us.preheader

.lr.ph.split.us.split.us.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv186.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec272, %vec.epilog.middle.block ]
  %.285135.us.us.ph = phi i32 [ %.184, %iter.check ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mh, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us.split.preheader.a
  %11 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %indvars.iv198 ; 5 uses
  %xtraiter = and i64 %wide.trip.count194, 3      ; 3 uses
  %12 = icmp ult i32 %i.hg, 4
  br i1 %12, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter = and i64 %wide.trip.count194, 2147483644
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %.lr.ph.split.us.split.us
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %.lr.ph.split.us.split.us ], [ %indvars.iv186.ph, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %.285135.us.us = phi i32 [ %i.mj, %.lr.ph.split.us.split.us ], [ %.285135.us.us.ph, %.lr.ph.split.us.split.us.preheader ]
  %gep252 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv186
  %i.mi = load i32, ptr %gep252, align 4, !tbaa !11
  %i.mj = add nsw i32 %i.mi, %.285135.us.us       ; 2 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count194
  br i1 %exitcond190.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !198

.lr.ph.split.us.split:                            ; preds = %bb.an, %.lr.ph.split.us.split.preheader.new
  %indvars.iv191 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next192.3, %bb.an ] ; 6 uses
  %.285135.us = phi i32 [ %.184, %.lr.ph.split.us.split.preheader.new ], [ %i.np, %bb.an ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter.next.3, %bb.an ]
  %gep254 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv191
  %i.mk = load i32, ptr %gep254, align 4, !tbaa !11
  %i.ml = add nsw i32 %i.mk, %.285135.us          ; 2 uses
  %i.mm = icmp eq i64 %indvars.iv191, %i.ao
  br i1 %i.mm, label %bb.aj, label %.lr.ph.split.us.split.1

bb.aj:                                            ; preds = %.lr.ph.split.us.split
  %i.mn = ashr i32 %i.ml, %i.r
  %i.mo = trunc i32 %i.mn to i16
  %i.mp = load i16, ptr %i.j, align 2, !tbaa !75
  %i.mq = zext i16 %i.mp to i32
  %i.mr = mul nuw nsw i32 %.087143, %i.mq
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %i.ms
  store i16 %i.mo, ptr %i.mt, align 2, !tbaa !77
  br label %.lr.ph.split.us.split.1

.lr.ph.split.us.split.1:                          ; preds = %bb.aj, %.lr.ph.split.us.split
  %indvars.iv.next192 = or disjoint i64 %indvars.iv191, 1 ; 2 uses
  %gep254.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv.next192
  %i.mu = load i32, ptr %gep254.1, align 4, !tbaa !11
  %i.mv = add nsw i32 %i.mu, %i.ml                ; 2 uses
  %i.mw = icmp eq i64 %indvars.iv.next192, %i.ao
  br i1 %i.mw, label %bb.ak, label %.lr.ph.split.us.split.2

bb.ak:                                            ; preds = %.lr.ph.split.us.split.1
  %i.mx = ashr i32 %i.mv, %i.r
  %i.my = trunc i32 %i.mx to i16
  %i.mz = load i16, ptr %i.j, align 2, !tbaa !75
  %i.na = zext i16 %i.mz to i32
  %i.nb = mul nuw nsw i32 %.087143, %i.na
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %i.nc
  store i16 %i.my, ptr %i.nd, align 2, !tbaa !77
  br label %.lr.ph.split.us.split.2

.lr.ph.split.us.split.2:                          ; preds = %bb.ak, %.lr.ph.split.us.split.1
  %indvars.iv.next192.1 = or disjoint i64 %indvars.iv191, 2 ; 2 uses
  %gep254.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv.next192.1
  %i.ne = load i32, ptr %gep254.2, align 4, !tbaa !11
  %i.nf = add nsw i32 %i.ne, %i.mv                ; 2 uses
  %i.ng = icmp eq i64 %indvars.iv.next192.1, %i.ao
  br i1 %i.ng, label %bb.al, label %.lr.ph.split.us.split.3

bb.al:                                            ; preds = %.lr.ph.split.us.split.2
  %i.nh = ashr i32 %i.nf, %i.r
  %i.ni = trunc i32 %i.nh to i16
  %i.nj = load i16, ptr %i.j, align 2, !tbaa !75
  %i.nk = zext i16 %i.nj to i32
  %i.nl = mul nuw nsw i32 %.087143, %i.nk
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %i.nm
  store i16 %i.ni, ptr %i.nn, align 2, !tbaa !77
  br label %.lr.ph.split.us.split.3

.lr.ph.split.us.split.3:                          ; preds = %bb.al, %.lr.ph.split.us.split.2
  %indvars.iv.next192.2 = or disjoint i64 %indvars.iv191, 3 ; 2 uses
  %gep254.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv.next192.2
  %i.no = load i32, ptr %gep254.3, align 4, !tbaa !11
  %i.np = add nsw i32 %i.no, %i.nf                ; 4 uses
  %i.nq = icmp eq i64 %indvars.iv.next192.2, %i.ao
  br i1 %i.nq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.split.us.split.3
  %i.nr = ashr i32 %i.np, %i.r
  %i.ns = trunc i32 %i.nr to i16
  %i.nt = load i16, ptr %i.j, align 2, !tbaa !75
  %i.nu = zext i16 %i.nt to i32
  %i.nv = mul nuw nsw i32 %.087143, %i.nu
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %i.nw
  store i16 %i.ns, ptr %i.nx, align 2, !tbaa !77
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.split.us.split.3
  %indvars.iv.next192.3 = add nuw nsw i64 %indvars.iv191, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !199

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next178, %bb.ar
  %indvars.iv161 = phi i64 [ 4, %.lr.ph.split.peel.next178 ], [ %indvars.iv.next162, %bb.ar ] ; 4 uses
  %.285135 = phi i32 [ %i.ks, %.lr.ph.split.peel.next178 ], [ %i.nz, %bb.ar ]
  %gep250 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep249, i64 %indvars.iv161
  %i.ny = load i32, ptr %gep250, align 4, !tbaa !11
  %i.nz = add nsw i32 %i.ny, %.285135             ; 3 uses
  %i.oa = ashr i32 %i.nz, %i.r                    ; 2 uses
  %i.ob = and i32 %i.oa, 65535
  %i.oc = icmp eq i64 %indvars.iv161, %i.ao
  %or.cond106 = select i1 %.not101, i1 %i.oc, i1 false
  br i1 %or.cond106, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.split
  %i.od = trunc i32 %i.oa to i16
  %i.oe = load i16, ptr %i.j, align 2, !tbaa !75
  %i.of = zext i16 %i.oe to i32
  %i.og = mul nuw nsw i32 %.087143, %i.of
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.oh
  store i16 %i.od, ptr %i.oi, align 2, !tbaa !77
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.split
  %i.oj = load i16, ptr %i.ak, align 8, !tbaa !96
  %i.ok = zext i16 %i.oj to i32
  %i.ol = sub nsw i32 %.087143, %i.ok
  %i.om = trunc nuw nsw i64 %indvars.iv161 to i32 ; 2 uses
  %i.on = and i32 %i.om, 1
  %i.oo = add nsw i32 %i.ol, %i.on                ; 2 uses
  %i.op = load i16, ptr %i.al, align 2, !tbaa !97
  %i.oq = zext i16 %i.op to i32
  %i.or = sub nsw i32 %indvars209, %i.oq
  %i.os = shl i32 %i.om, 30
  %i.ot = ashr i32 %i.os, 31
  %i.ou = add i32 %i.or, %i.ot                    ; 2 uses
  %i.ov = load i16, ptr %i.am, align 2, !tbaa !193
  %i.ow = zext i16 %i.ov to i32                   ; 2 uses
  %i.ox = load i16, ptr %i.an, align 4, !tbaa !194
  %i.oy = zext i16 %i.ox to i32
  %i.oz = icmp ult i32 %i.oo, %i.oy
  %i.pa = icmp ult i32 %i.ou, %i.ow
  %or.cond107 = select i1 %i.oz, i1 %i.pa, i1 false
  br i1 %or.cond107, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.pb = mul i32 %i.oo, %i.ow
  %i.pc = add i32 %i.pb, %i.ou
  %i.pd = zext i32 %i.pc to i64
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.pd ; 2 uses
  %i.pe = load i16, ptr %gep, align 2, !tbaa !77
  %i.pf = zext i16 %i.pe to i32
  %i.pg = add nuw nsw i32 %i.ob, %i.pf
  %i.ph = lshr i32 %i.pg, 1
  %i.pi = trunc nuw i32 %i.ph to i16
  store i16 %i.pi, ptr %gep, align 2, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count194
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !200

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.an
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv191.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next192.3, %._crit_edge.loopexit.unr-lcssa ]
  %.285135.us.epil.init = phi i32 [ %.184, %.lr.ph.split.us.split.preheader ], [ %i.np, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod289 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod289)
  br label %.lr.ph.split.us.split.epil

.lr.ph.split.us.split.epil:                       ; preds = %bb.at, %.lr.ph.split.us.split.epil.preheader
  %indvars.iv191.epil = phi i64 [ %indvars.iv191.epil.init, %.lr.ph.split.us.split.epil.preheader ], [ %indvars.iv.next192.epil, %bb.at ] ; 3 uses
  %.285135.us.epil = phi i32 [ %.285135.us.epil.init, %.lr.ph.split.us.split.epil.preheader ], [ %i.pk, %bb.at ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.us.split.epil.preheader ], [ %epil.iter.next, %bb.at ]
  %gep254.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv191.epil
  %i.pj = load i32, ptr %gep254.epil, align 4, !tbaa !11
  %i.pk = add nsw i32 %i.pj, %.285135.us.epil     ; 3 uses
  %i.pl = icmp eq i64 %indvars.iv191.epil, %i.ao
  br i1 %i.pl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.split.us.split.epil
  %i.pm = ashr i32 %i.pk, %i.r
  %i.pn = trunc i32 %i.pm to i16
  %i.po = load i16, ptr %i.j, align 2, !tbaa !75
  %i.pp = zext i16 %i.po to i32
  %i.pq = mul nuw nsw i32 %.087143, %i.pp
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %i.pr
  store i16 %i.pn, ptr %i.ps, align 2, !tbaa !77
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.split.us.split.epil
  %indvars.iv.next192.epil = add nuw nsw i64 %indvars.iv191.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.split.epil, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.ar, %.lr.ph.split.us.split.us, %._crit_edge.loopexit.unr-lcssa, %bb.at, %middle.block, %vec.epilog.middle.block, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.s
  %.285.lcssa = phi i32 [ %.184, %bb.s ], [ %i.pk, %bb.at ], [ %i.mj, %.lr.ph.split.us.split.us ], [ %i.ks, %bb.ai ], [ %i.hq, %bb.w ], [ %i.iq, %bb.aa ], [ %i.jr, %bb.ae ], [ %i.mh, %vec.epilog.middle.block ], [ %i.mc, %middle.block ], [ %i.np, %._crit_edge.loopexit.unr-lcssa ], [ %i.nz, %bb.ar ]
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0210.0, i64 %indvars.iv198
  store i32 %.285.lcssa, ptr %i.pt, align 4, !tbaa !11
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next199, %indvars.iv205
  br i1 %exitcond204.not, label %.loopexit124, label %bb.p, !llvm.loop !203

._crit_edge142:                                   ; preds = %.loopexit124, %.preheader127.preheader
  %i.pu = add nuw nsw i32 %.087143, 1             ; 2 uses
  %i.pv = load i16, ptr %i.i, align 8, !tbaa !12
  %i.pw = zext i16 %i.pv to i32
  %i.px = icmp samesign ult i32 %i.pu, %i.pw
  br i1 %i.px, label %bb.e, label %._crit_edge146, !llvm.loop !204

bb.au:                                            ; preds = %bb.aw, %bb.av, %bb.d
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ax unwind label %bb.bc

bb.av:                                            ; preds = %.loopexit.split-lp.thread, %bb.d, %.loopexit.split-lp
  invoke void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_rethrow() #22
          to label %bb.bd unwind label %bb.au

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.py

._crit_edge146:                                   ; preds = %._crit_edge142, %bb.c
  %.not99 = icmp eq ptr %i.m, null
  br i1 %.not99, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge146
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.m)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge146
  call void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
  %i.pz = load ptr, ptr %i.h, align 8, !tbaa !192
  %.not100 = icmp eq ptr %i.pz, null
  br i1 %.not100, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 381656
  store i32 1, ptr %i.qa, align 8, !tbaa !205
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.bc:                                            ; preds = %bb.au
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #25
  unreachable

bb.bd:                                            ; preds = %bb.aw
  unreachable
}

declare noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17leaf_hdr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !98
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not33 = icmp eq ptr %i.e, null
  %or.cond = select i1 %.not, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !192
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 4) #21 ; 2 uses
  store i32 5, ptr %i.g, align 16, !tbaa !154
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.i = load i16, ptr %i.h, align 2, !tbaa !75
  %i.j = zext i16 %i.i to i64
  %i.k = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.j, i64 noundef 2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.026 = phi ptr [ null, %bb.a ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381832 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !186  ; 2 uses
  %.not60 = icmp eq i32 %i.n, 0
  br i1 %.not60, label %._crit_edge58, label %.preheader44.lr.ph

.preheader44.lr.ph:                               ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 381856
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %.pre = load i16, ptr %i.o, align 8, !tbaa !12
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader44.lr.ph, %._crit_edge
  %i.x = phi i32 [ %i.n, %.preheader44.lr.ph ], [ %i.cm, %._crit_edge ]
  %i.y = phi i16 [ %.pre, %.preheader44.lr.ph ], [ %i.cn, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.preheader44.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.02556 = phi i32 [ 0, %.preheader44.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.12755 = phi ptr [ %.026, %.preheader44.lr.ph ], [ %.228.lcssa, %._crit_edge ] ; 2 uses
  %.not61 = icmp eq i16 %i.y, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader44, %.critedge
  %.02452 = phi i32 [ %i.ci, %.critedge ], [ 0, %.preheader44 ] ; 4 uses
  %.151 = phi i32 [ %.2, %.critedge ], [ %.02556, %.preheader44 ] ; 3 uses
  %.22850 = phi ptr [ %.5, %.critedge ], [ %.12755, %.preheader44 ] ; 7 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.lr.ph53
  %i.z = load i32, ptr %i.p, align 8, !tbaa !206
  %i.aa = urem i32 %.02452, %i.z
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !110 ; 2 uses
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !167
  %i.ae = add i32 %.151, 1
  %i.af = shl i32 %.151, 2
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ad, %i.ag
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %i.ah, i32 noundef 0)
          to label %bb.h unwind label %bb.j, !call_target !114 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !110 ; 2 uses
  %i.an = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i64 noundef %i.ao, i32 noundef 0)
          to label %bb.l unwind label %bb.j, !call_target !114 ; 0 uses

bb.j:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.g, %.lr.ph53
  %.3 = phi ptr [ %.4, %.thread ], [ %.22850, %bb.i ], [ %.22850, %bb.h ], [ %.22850, %bb.g ], [ %.22850, %.lr.ph53 ]
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  %i.av = tail call ptr @__cxa_begin_catch(ptr %i.au) #21 ; 0 uses
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !98
  %.not40 = icmp eq i32 %i.aw, 0
  br i1 %.not40, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.3)
          to label %bb.v unwind label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.f
  %.2 = phi i32 [ %i.ae, %bb.i ], [ %.151, %bb.f ] ; 2 uses
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !98
  %.not36 = icmp eq i32 %i.ax, 0
end_hunk_0
