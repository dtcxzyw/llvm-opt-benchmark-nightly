Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/load_mfbacks?download=true
inline.NumInlined: 98
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6LibRaw19hasselblad_load_rawEv:bb.a
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111

.thread250:                                       ; preds = %.preheader, %.preheader122
  %.sroa.6.0249 = phi i32 [ %.0.i.1, %.preheader ], [ 0, %.preheader122 ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.el, align 8, !tbaa !12
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
  store i32 %i.ex, ptr %i.ep, align 8, !tbaa !116
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %notmask = shl nsw i32 -1, %i.cn
  %.neg103 = add nuw nsw i32 %notmask, 1
  %i.ez = icmp slt i64 %i.es, 0
  %i.fa = select i1 %i.ez, i32 0, i32 %.neg103
  %storemerge = add i32 %i.fa, %i.ew
  %storemerge.fr = freeze i32 %storemerge         ; 3 uses
  store i32 %storemerge.fr, ptr %i.ey, align 8, !tbaa !12
  %i.fb = icmp eq i32 %storemerge.fr, 65535
  %spec.select = select i1 %i.fb, i32 -32768, i32 %storemerge.fr
  br label %bb.l

bb.l:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111, %.thread250
  %i.fc = phi ptr [ %i.el, %.thread250 ], [ %i.ey, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  %.sroa.6.0248253 = phi i32 [ %.sroa.6.0249, %.thread250 ], [ %.0.i.1, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ] ; 5 uses
  %i.fd = phi i32 [ 0, %.thread250 ], [ %spec.select, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !12
  %cond268 = icmp eq i32 %.sroa.6.0248253, 0
  br i1 %cond268, label %.thread255, label %bb.m

.thread255:                                       ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !12
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !109 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !116 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %.sroa.6.0248253
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !117 ; 2 uses
  br i1 %i.fj, label %bb.n, label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

bb.n:                                             ; preds = %bb.m
  %i.fm = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc110.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc110.1:                                      ; preds = %bb.n
  %i.fn = shl i64 %i.fl, 32
  %i.fo = zext i32 %i.fm to i64
  %i.fp = or disjoint i64 %i.fn, %i.fo            ; 2 uses
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !109 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !117
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !116
  %i.fu = add nsw i32 %i.ft, 32                   ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !116
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

_ZN6LibRaw11ph1_bithuffEiPt.exit111.1:            ; preds = %.noexc110.1, %bb.m
  %i.fv = phi i32 [ %i.fu, %.noexc110.1 ], [ %i.fi, %bb.m ] ; 2 uses
  %i.fw = phi i64 [ %i.fp, %.noexc110.1 ], [ %i.fl, %bb.m ]
  %i.fx = phi ptr [ %i.fq, %.noexc110.1 ], [ %i.fg, %bb.m ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = sub nsw i32 64, %i.fv
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl i64 %i.fw, %i.ga                    ; 2 uses
  %i.gc = sub nsw i32 64, %.sroa.6.0248253
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 %i.gb, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = sub nsw i32 %i.fv, %.sroa.6.0248253
  store i32 %i.gg, ptr %i.fy, align 8, !tbaa !116
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %notmask.1 = shl nsw i32 -1, %.sroa.6.0248253
  %.neg103.1 = add nuw nsw i32 %notmask.1, 1
  %i.gj = icmp slt i64 %i.gb, 0
  %i.gk = select i1 %i.gj, i32 0, i32 %.neg103.1
  %storemerge270 = add i32 %i.gk, %i.gf
  %storemerge270.fr = freeze i32 %storemerge270   ; 3 uses
  store i32 %storemerge270.fr, ptr %i.gi, align 4, !tbaa !12
  %i.gl = icmp eq i32 %storemerge270.fr, 65535
  %spec.select269 = select i1 %i.gl, i32 -32768, i32 %storemerge270.fr
  br label %bb.o

bb.o:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1, %.thread255
  %i.gm = phi ptr [ %i.ff, %.thread255 ], [ %i.gi, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  %i.gn = phi i32 [ 0, %.thread255 ], [ %spec.select269, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.go = load i32, ptr %i.o, align 8, !tbaa !119
  %i.gp = shl i32 %i.go, 1
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %.preheader122, label %.preheader126, !llvm.loop !184

bb.p:                                             ; preds = %.preheader126, %._crit_edge
  %indvars.iv210 = phi i64 [ %indvars.iv208, %.preheader126 ], [ %indvars.iv.next211, %._crit_edge ] ; 7 uses
  br i1 %.not118, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.gs = load i32, ptr %i.ai, align 4, !tbaa !194
  %i.gt = add i32 %i.gs, 32768
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gu = add nuw i64 %indvars.iv210, 4294967294
  %i.gv = and i64 %i.gu, 4294967295               ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0222.0, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !12 ; 2 uses
  %i.gy = load i32, ptr %i.ah, align 8
  %cond = icmp eq i32 %i.gy, 11
  %or.cond3 = select i1 %i.aw, i1 %cond, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %indvars.iv210
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !12
  %i.hb = sdiv i32 %i.ha, 2
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %i.gv
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !12
  %.neg = sdiv i32 %i.hd, -2
  %i.he = add i32 %i.hb, %i.gx
  %i.hf = add i32 %i.he, %.neg
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %bb.q
  %.184 = phi i32 [ %i.hf, %bb.r ], [ %i.gx, %bb.q ], [ %i.gt, %.thread ] ; 7 uses
  %i.hg = load i32, ptr %i.o, align 8, !tbaa !119 ; 10 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.hi = and i64 %indvars.iv210, 1
  %i.hj = xor i64 %i.hi, %i.av
  %i.hk = trunc nuw nsw i64 %indvars.iv210 to i32 ; 10 uses
  %i.hl = trunc i64 %indvars.iv210 to i1
  %i.hm = load ptr, ptr %i.aj, align 8, !tbaa !77
  %.fr = freeze ptr %i.hm                         ; 11 uses
  %.not101 = icmp ne ptr %.fr, null               ; 6 uses
  %i.hn = load ptr, ptr %i.h, align 8, !tbaa !121 ; 2 uses
  %.not102 = icmp eq ptr %i.hn, null
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hj ; 5 uses
  %i.ho = zext nneg i32 %i.hg to i64
  %i.hp = select i1 %i.hl, i64 %i.ho, i64 0       ; 5 uses
  %wide.trip.count206 = zext nneg i32 %i.hg to i64 ; 9 uses
  %invariant.gep265 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp ; 9 uses
  br i1 %.not102, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.hq = load i32, ptr %invariant.gep265, align 4, !tbaa !12
  %i.hr = add nsw i32 %i.hq, %.184                ; 3 uses
  %i.hs = ashr i32 %i.hr, %i.r                    ; 2 uses
  %or.cond106.peel = select i1 %.not101, i1 %i.ap, i1 false
  br i1 %or.cond106.peel, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.preheader
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = load i16, ptr %i.j, align 2, !tbaa !76
  %i.hv = zext i16 %i.hu to i32
  %i.hw = mul nuw nsw i32 %.087146, %i.hv
  %i.hx = add i32 %i.hw, %i.hk
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.hy
  store i16 %i.ht, ptr %i.hz, align 2, !tbaa !78
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.preheader
  %i.ia = load i16, ptr %i.ak, align 8, !tbaa !84
  %i.ib = zext i16 %i.ia to i32
  %i.ic = sub nsw i32 %.087146, %i.ib             ; 2 uses
  %i.id = load i16, ptr %i.al, align 2, !tbaa !85
  %i.ie = zext i16 %i.id to i32
  %i.if = sub i32 %indvars221, %i.ie              ; 2 uses
  %i.ig = load i16, ptr %i.am, align 2, !tbaa !122
  %i.ih = zext i16 %i.ig to i32                   ; 2 uses
  %i.ii = load i16, ptr %i.an, align 4, !tbaa !123
  %i.ij = zext i16 %i.ii to i32
  %i.ik = icmp ult i32 %i.ic, %i.ij
  %i.il = icmp ult i32 %i.if, %i.ih
  %or.cond107.peel = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond107.peel, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.im = mul i32 %i.ic, %i.ih
  %i.in = add i32 %i.im, %i.if
  %i.io = zext i32 %i.in to i64
  %gep.peel = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.io
  %i.ip = trunc i32 %i.hs to i16
  store i16 %i.ip, ptr %gep.peel, align 2, !tbaa !78
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %exitcond.peel.not = icmp eq i32 %i.hg, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.peel.next

.lr.ph.split.peel.next:                           ; preds = %bb.w
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !12
  %i.it = add nsw i32 %i.is, %i.hr                ; 3 uses
  %i.iu = ashr i32 %i.it, %i.r                    ; 2 uses
  %or.cond106.peel175 = select i1 %.not101, i1 %i.aq, i1 false
  br i1 %or.cond106.peel175, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.peel.next
  %i.iv = trunc i32 %i.iu to i16
  %i.iw = load i16, ptr %i.j, align 2, !tbaa !76
  %i.ix = zext i16 %i.iw to i32
  %i.iy = mul nuw nsw i32 %.087146, %i.ix
  %i.iz = add i32 %i.iy, %i.hk
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ja
  store i16 %i.iv, ptr %i.jb, align 2, !tbaa !78
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.split.peel.next
  %i.jc = load i16, ptr %i.ak, align 8, !tbaa !84
  %i.jd = zext i16 %i.jc to i32
  %i.je = sub nsw i32 %.087146, %i.jd
  %i.jf = add nsw i32 %i.je, 1                    ; 2 uses
  %i.jg = load i16, ptr %i.al, align 2, !tbaa !85
  %i.jh = zext i16 %i.jg to i32
  %i.ji = sub i32 %indvars221, %i.jh              ; 2 uses
  %i.jj = load i16, ptr %i.am, align 2, !tbaa !122
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = load i16, ptr %i.an, align 4, !tbaa !123
  %i.jm = zext i16 %i.jl to i32
  %i.jn = icmp ult i32 %i.jf, %i.jm
  %i.jo = icmp ult i32 %i.ji, %i.jk
  %or.cond107.peel178 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond107.peel178, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jp = mul i32 %i.jf, %i.jk
  %i.jq = add i32 %i.jp, %i.ji
  %i.jr = zext i32 %i.jq to i64
  %gep.peel177 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.jr
  %i.js = trunc i32 %i.iu to i16
  store i16 %i.js, ptr %gep.peel177, align 2, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %exitcond.peel180.not = icmp eq i32 %i.hg, 2
  br i1 %exitcond.peel180.not, label %._crit_edge, label %.lr.ph.split.peel.next173

.lr.ph.split.peel.next173:                        ; preds = %bb.aa
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !12
  %i.jw = add nsw i32 %i.jv, %i.it                ; 3 uses
  %i.jx = ashr i32 %i.jw, %i.r                    ; 2 uses
  %or.cond106.peel183 = select i1 %.not101, i1 %i.ar, i1 false
  br i1 %or.cond106.peel183, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.peel.next173
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = load i16, ptr %i.j, align 2, !tbaa !76
  %i.ka = zext i16 %i.jz to i32
  %i.kb = mul nuw nsw i32 %.087146, %i.ka
  %i.kc = add i32 %i.kb, %i.hk
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.kd
  store i16 %i.jy, ptr %i.ke, align 2, !tbaa !78
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.peel.next173
  %i.kf = load i16, ptr %i.ak, align 8, !tbaa !84
  %i.kg = zext i16 %i.kf to i32
  %i.kh = sub nsw i32 %.087146, %i.kg             ; 2 uses
  %i.ki = load i16, ptr %i.al, align 2, !tbaa !85
  %i.kj = zext i16 %i.ki to i32
  %i.kk = sub i32 %.neg121.peel184, %i.kj         ; 2 uses
  %i.kl = load i16, ptr %i.am, align 2, !tbaa !122
  %i.km = zext i16 %i.kl to i32                   ; 2 uses
  %i.kn = load i16, ptr %i.an, align 4, !tbaa !123
  %i.ko = zext i16 %i.kn to i32
  %i.kp = icmp ult i32 %i.kh, %i.ko
  %i.kq = icmp ult i32 %i.kk, %i.km
  %or.cond107.peel186 = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %or.cond107.peel186, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kr = mul i32 %i.kh, %i.km
  %i.ks = add i32 %i.kr, %i.kk
  %i.kt = zext i32 %i.ks to i64
  %gep.peel185 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.kt
  %i.ku = trunc i32 %i.jx to i16
  store i16 %i.ku, ptr %gep.peel185, align 2, !tbaa !78
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %exitcond.peel188.not = icmp eq i32 %i.hg, 3
  br i1 %exitcond.peel188.not, label %._crit_edge, label %.lr.ph.split.peel.next181

.lr.ph.split.peel.next181:                        ; preds = %bb.ae
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !12
  %i.ky = add nsw i32 %i.kx, %i.jw                ; 3 uses
  %i.kz = ashr i32 %i.ky, %i.r                    ; 2 uses
  %or.cond106.peel191 = select i1 %.not101, i1 %i.as, i1 false
  br i1 %or.cond106.peel191, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.peel.next181
  %i.la = trunc i32 %i.kz to i16
  %i.lb = load i16, ptr %i.j, align 2, !tbaa !76
  %i.lc = zext i16 %i.lb to i32
  %i.ld = mul nuw nsw i32 %.087146, %i.lc
  %i.le = add i32 %i.ld, %i.hk
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.lf
  store i16 %i.la, ptr %i.lg, align 2, !tbaa !78
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.split.peel.next181
  %i.lh = load i16, ptr %i.ak, align 8, !tbaa !84
  %i.li = zext i16 %i.lh to i32
  %i.lj = sub nsw i32 %.087146, %i.li
  %i.lk = add nsw i32 %i.lj, 1                    ; 2 uses
  %i.ll = load i16, ptr %i.al, align 2, !tbaa !85
  %i.lm = zext i16 %i.ll to i32
  %i.ln = sub i32 %.neg121.peel184, %i.lm         ; 2 uses
  %i.lo = load i16, ptr %i.am, align 2, !tbaa !122
  %i.lp = zext i16 %i.lo to i32                   ; 2 uses
  %i.lq = load i16, ptr %i.an, align 4, !tbaa !123
  %i.lr = zext i16 %i.lq to i32
  %i.ls = icmp ult i32 %i.lk, %i.lr
  %i.lt = icmp ult i32 %i.ln, %i.lp
  %or.cond107.peel194 = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %or.cond107.peel194, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lu = mul i32 %i.lk, %i.lp
  %i.lv = add i32 %i.lu, %i.ln
  %i.lw = zext i32 %i.lv to i64
  %gep.peel193 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.lw
  %i.lx = trunc i32 %i.kz to i16
  store i16 %i.lx, ptr %gep.peel193, align 2, !tbaa !78
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %exitcond.peel196.not = icmp eq i32 %i.hg, 4
  br i1 %exitcond.peel196.not, label %._crit_edge, label %.lr.ph.split.peel.next189

.lr.ph.split.peel.next189:                        ; preds = %bb.ai
  %invariant.gep261 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not101, label %.lr.ph.split.us.split.preheader, label %iter.check

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count206, 3      ; 3 uses
  %i.ly = icmp ult i32 %i.hg, 4
  br i1 %i.ly, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter = and i64 %wide.trip.count206, 2147483644
  br label %.lr.ph.split.us.split

iter.check:                                       ; preds = %.lr.ph.split.us
  %min.iters.check = icmp ult i32 %i.hg, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check275 = icmp ult i32 %i.hg, 32
  br i1 %min.iters.check275, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lz = and i64 %wide.trip.count206, 28
  %n.vec = and i64 %wide.trip.count206, 2147483616 ; 4 uses
  %i.ma = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.184, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ma, %vector.ph ], [ %i.mf, %vector.body ]
  %vec.phi276 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.mg, %vector.body ]
  %vec.phi277 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.mh, %vector.body ]
  %vec.phi278 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.mi, %vector.body ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep265, i64 %index ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 96
  %wide.load = load <8 x i32>, ptr %i.mb, align 4, !tbaa !12
  %wide.load279 = load <8 x i32>, ptr %i.mc, align 4, !tbaa !12
  %wide.load280 = load <8 x i32>, ptr %i.md, align 4, !tbaa !12
  %wide.load281 = load <8 x i32>, ptr %i.me, align 4, !tbaa !12
  %i.mf = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.mg = add <8 x i32> %wide.load279, %vec.phi276 ; 2 uses
  %i.mh = add <8 x i32> %wide.load280, %vec.phi277 ; 2 uses
  %i.mi = add <8 x i32> %wide.load281, %vec.phi278 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.mg, %i.mf
  %bin.rdx282 = add <8 x i32> %i.mh, %bin.rdx
  %bin.rdx283 = add <8 x i32> %i.mi, %bin.rdx282
  %i.mk = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx283) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count206
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.mk, %vec.epilog.iter.check ], [ %.184, %vector.main.loop.iter.check ]
  %n.vec284 = and i64 %wide.trip.count206, 2147483644 ; 3 uses
  %i.ml = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index285 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next288, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi286 = phi <4 x i32> [ %i.ml, %vec.epilog.ph ], [ %i.mn, %vec.epilog.vector.body ]
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep265, i64 %index285
  %wide.load287 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !12
  %i.mn = add <4 x i32> %wide.load287, %vec.phi286 ; 2 uses
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.mo = icmp eq i64 %index.next288, %n.vec284
  br i1 %i.mo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !186

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.mp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.mn) ; 2 uses
  %cmp.n289 = icmp eq i64 %n.vec284, %wide.trip.count206
  br i1 %cmp.n289, label %._crit_edge, label %.lr.ph.split.us.split.us.preheader

.lr.ph.split.us.split.us.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv198.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec284, %vec.epilog.middle.block ]
  %.285138.us.us.ph = phi i32 [ %.184, %iter.check ], [ %i.mk, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %.lr.ph.split.us.split.us
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %.lr.ph.split.us.split.us ], [ %indvars.iv198.ph, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %.285138.us.us = phi i32 [ %i.mr, %.lr.ph.split.us.split.us ], [ %.285138.us.us.ph, %.lr.ph.split.us.split.us.preheader ]
  %gep264 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep265, i64 %indvars.iv198
  %i.mq = load i32, ptr %gep264, align 4, !tbaa !12
  %i.mr = add nsw i32 %i.mq, %.285138.us.us       ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count206
  br i1 %exitcond202.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !187

.lr.ph.split.us.split:                            ; preds = %bb.an, %.lr.ph.split.us.split.preheader.new
  %indvars.iv203 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next204.3, %bb.an ] ; 6 uses
  %.285138.us = phi i32 [ %.184, %.lr.ph.split.us.split.preheader.new ], [ %i.oa, %bb.an ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter.next.3, %bb.an ]
  %gep266 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep265, i64 %indvars.iv203
  %i.ms = load i32, ptr %gep266, align 4, !tbaa !12
  %i.mt = add nsw i32 %i.ms, %.285138.us          ; 2 uses
  %i.mu = icmp eq i64 %indvars.iv203, %i.ao
  br i1 %i.mu, label %bb.aj, label %.lr.ph.split.us.split.1

bb.aj:                                            ; preds = %.lr.ph.split.us.split
  %i.mv = ashr i32 %i.mt, %i.r
  %i.mw = trunc i32 %i.mv to i16
  %i.mx = load i16, ptr %i.j, align 2, !tbaa !76
  %i.my = zext i16 %i.mx to i32
  %i.mz = mul nuw nsw i32 %.087146, %i.my
  %i.na = add i32 %i.mz, %i.hk
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.nb
  store i16 %i.mw, ptr %i.nc, align 2, !tbaa !78
  br label %.lr.ph.split.us.split.1

.lr.ph.split.us.split.1:                          ; preds = %bb.aj, %.lr.ph.split.us.split
  %indvars.iv.next204 = or disjoint i64 %indvars.iv203, 1 ; 2 uses
  %gep266.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep265, i64 %indvars.iv.next204
  %i.nd = load i32, ptr %gep266.1, align 4, !tbaa !12
  %i.ne = add nsw i32 %i.nd, %i.mt                ; 2 uses
  %i.nf = icmp eq i64 %indvars.iv.next204, %i.ao
  br i1 %i.nf, label %bb.ak, label %.lr.ph.split.us.split.2

bb.ak:                                            ; preds = %.lr.ph.split.us.split.1
  %i.ng = ashr i32 %i.ne, %i.r
  %i.nh = trunc i32 %i.ng to i16
  %i.ni = load i16, ptr %i.j, align 2, !tbaa !76
  %i.nj = zext i16 %i.ni to i32
  %i.nk = mul nuw nsw i32 %.087146, %i.nj
  %i.nl = add i32 %i.nk, %i.hk
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.nm
  store i16 %i.nh, ptr %i.nn, align 2, !tbaa !78
  br label %.lr.ph.split.us.split.2

.lr.ph.split.us.split.2:                          ; preds = %bb.ak, %.lr.ph.split.us.split.1
  %indvars.iv.next204.1 = or disjoint i64 %indvars.iv203, 2 ; 2 uses
  %gep266.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep265, i64 %indvars.iv.next204.1
  %i.no = load i32, ptr %gep266.2, align 4, !tbaa !12
  %i.np = add nsw i32 %i.no, %i.ne                ; 2 uses
  %i.nq = icmp eq i64 %indvars.iv.next204.1, %i.ao
  br i1 %i.nq, label %bb.al, label %.lr.ph.split.us.split.3

bb.al:                                            ; preds = %.lr.ph.split.us.split.2
  %i.nr = ashr i32 %i.np, %i.r
  %i.ns = trunc i32 %i.nr to i16
  %i.nt = load i16, ptr %i.j, align 2, !tbaa !76
  %i.nu = zext i16 %i.nt to i32
  %i.nv = mul nuw nsw i32 %.087146, %i.nu
  %i.nw = add i32 %i.nv, %i.hk
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.nx
  store i16 %i.ns, ptr %i.ny, align 2, !tbaa !78
  br label %.lr.ph.split.us.split.3

.lr.ph.split.us.split.3:                          ; preds = %bb.al, %.lr.ph.split.us.split.2
  %indvars.iv.next204.2 = or disjoint i64 %indvars.iv203, 3 ; 2 uses
  %gep266.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep265, i64 %indvars.iv.next204.2
  %i.nz = load i32, ptr %gep266.3, align 4, !tbaa !12
  %i.oa = add nsw i32 %i.nz, %i.np                ; 4 uses
  %i.ob = icmp eq i64 %indvars.iv.next204.2, %i.ao
  br i1 %i.ob, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.split.us.split.3
  %i.oc = ashr i32 %i.oa, %i.r
  %i.od = trunc i32 %i.oc to i16
  %i.oe = load i16, ptr %i.j, align 2, !tbaa !76
  %i.of = zext i16 %i.oe to i32
  %i.og = mul nuw nsw i32 %.087146, %i.of
  %i.oh = add i32 %i.og, %i.hk
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.oi
  store i16 %i.od, ptr %i.oj, align 2, !tbaa !78
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.split.us.split.3
  %indvars.iv.next204.3 = add nuw nsw i64 %indvars.iv203, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !188

end_hunk_0
