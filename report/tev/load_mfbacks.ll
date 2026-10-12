Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/load_mfbacks?download=true
inline.NumInlined: 187
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6LibRaw19hasselblad_load_rawEv:bb.a
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !102 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.cn
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !103 ; 2 uses
  br i1 %i.dz, label %bb.k, label %_ZN6LibRaw11ph1_bithuffEiPt.exit111

bb.k:                                             ; preds = %bb.j
  %i.ec = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc110 unwind label %.loopexit

.noexc110:                                        ; preds = %bb.k
  %i.ed = shl i64 %i.eb, 32
  %i.ee = zext i32 %i.ec to i64
  %i.ef = or disjoint i64 %i.ed, %i.ee            ; 2 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %i.ef, ptr %i.eh, align 8, !tbaa !103
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !102
  %i.ek = add nsw i32 %i.ej, 32                   ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !102
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111

.thread244:                                       ; preds = %.preheader, %.preheader122
  %.sroa.6.0243 = phi i32 [ %.0.i.1, %.preheader ], [ 0, %.preheader122 ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.el, align 8, !tbaa !8
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
  store i32 %i.ex, ptr %i.ep, align 8, !tbaa !102
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %notmask = shl nsw i32 -1, %i.cn
  %.neg103 = add nuw nsw i32 %notmask, 1
  %i.ez = icmp slt i64 %i.es, 0
  %i.fa = select i1 %i.ez, i32 0, i32 %.neg103
  %storemerge = add i32 %i.fa, %i.ew
  %storemerge.fr = freeze i32 %storemerge         ; 3 uses
  store i32 %storemerge.fr, ptr %i.ey, align 8, !tbaa !8
  %i.fb = icmp eq i32 %storemerge.fr, 65535
  %spec.select = select i1 %i.fb, i32 -32768, i32 %storemerge.fr
  br label %bb.l

bb.l:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111, %.thread244
  %i.fc = phi ptr [ %i.el, %.thread244 ], [ %i.ey, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  %.sroa.6.0242247 = phi i32 [ %.sroa.6.0243, %.thread244 ], [ %.0.i.1, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ] ; 5 uses
  %i.fd = phi i32 [ 0, %.thread244 ], [ %spec.select, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !8
  %cond262 = icmp eq i32 %.sroa.6.0242247, 0
  br i1 %cond262, label %.thread249, label %bb.m

.thread249:                                       ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !8
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !102 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %.sroa.6.0242247
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !103 ; 2 uses
  br i1 %i.fj, label %bb.n, label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

bb.n:                                             ; preds = %bb.m
  %i.fm = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc110.1 unwind label %.loopexit

.noexc110.1:                                      ; preds = %bb.n
  %i.fn = shl i64 %i.fl, 32
  %i.fo = zext i32 %i.fm to i64
  %i.fp = or disjoint i64 %i.fn, %i.fo            ; 2 uses
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !103
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !102
  %i.fu = add nsw i32 %i.ft, 32                   ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !102
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

_ZN6LibRaw11ph1_bithuffEiPt.exit111.1:            ; preds = %.noexc110.1, %bb.m
  %i.fv = phi i32 [ %i.fu, %.noexc110.1 ], [ %i.fi, %bb.m ] ; 2 uses
  %i.fw = phi i64 [ %i.fp, %.noexc110.1 ], [ %i.fl, %bb.m ]
  %i.fx = phi ptr [ %i.fq, %.noexc110.1 ], [ %i.fg, %bb.m ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = sub nsw i32 64, %i.fv
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl i64 %i.fw, %i.ga                    ; 2 uses
  %i.gc = sub nsw i32 64, %.sroa.6.0242247
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 %i.gb, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = sub nsw i32 %i.fv, %.sroa.6.0242247
  store i32 %i.gg, ptr %i.fy, align 8, !tbaa !102
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %notmask.1 = shl nsw i32 -1, %.sroa.6.0242247
  %.neg103.1 = add nuw nsw i32 %notmask.1, 1
  %i.gj = icmp slt i64 %i.gb, 0
  %i.gk = select i1 %i.gj, i32 0, i32 %.neg103.1
  %storemerge264 = add i32 %i.gk, %i.gf
  %storemerge264.fr = freeze i32 %storemerge264   ; 3 uses
  store i32 %storemerge264.fr, ptr %i.gi, align 4, !tbaa !8
  %i.gl = icmp eq i32 %storemerge264.fr, 65535
  %spec.select263 = select i1 %i.gl, i32 -32768, i32 %storemerge264.fr
  br label %bb.o

bb.o:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1, %.thread249
  %i.gm = phi ptr [ %i.ff, %.thread249 ], [ %i.gi, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  %i.gn = phi i32 [ 0, %.thread249 ], [ %spec.select263, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.go = load i32, ptr %i.o, align 8, !tbaa !105
  %i.gp = shl i32 %i.go, 1
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %.preheader122, label %.preheader126, !llvm.loop !180

bb.p:                                             ; preds = %.preheader126, %._crit_edge
  %indvars.iv204 = phi i64 [ %indvars.iv202, %.preheader126 ], [ %indvars.iv.next205, %._crit_edge ] ; 7 uses
  br i1 %.not118, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.gs = load i32, ptr %i.ai, align 4, !tbaa !188
  %i.gt = add i32 %i.gs, 32768
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gu = add nuw i64 %indvars.iv204, 4294967294
  %i.gv = and i64 %i.gu, 4294967295               ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0216.0, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !8  ; 2 uses
  %i.gy = load i32, ptr %i.ah, align 8
  %cond = icmp eq i32 %i.gy, 11
  %or.cond3 = select i1 %i.aw, i1 %cond, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %indvars.iv204
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !8
  %i.hb = sdiv i32 %i.ha, 2
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %i.gv
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !8
  %.neg = sdiv i32 %i.hd, -2
  %i.he = add i32 %i.hb, %i.gx
  %i.hf = add i32 %i.he, %.neg
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %bb.q
  %.184 = phi i32 [ %i.hf, %bb.r ], [ %i.gx, %bb.q ], [ %i.gt, %.thread ] ; 6 uses
  %i.hg = load i32, ptr %i.o, align 8, !tbaa !105 ; 10 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.hi = and i64 %indvars.iv204, 1
  %i.hj = xor i64 %i.hi, %i.av
  %i.hk = trunc nuw nsw i64 %indvars.iv204 to i32 ; 8 uses
  %i.hl = trunc i64 %indvars.iv204 to i1
  %i.hm = load ptr, ptr %i.aj, align 8, !tbaa !73
  %.fr = freeze ptr %i.hm                         ; 9 uses
  %.not101 = icmp ne ptr %.fr, null               ; 6 uses
  %i.hn = load ptr, ptr %i.h, align 8, !tbaa !107 ; 2 uses
  %.not102 = icmp eq ptr %i.hn, null
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hj ; 5 uses
  %i.ho = zext nneg i32 %i.hg to i64
  %i.hp = select i1 %i.hl, i64 %i.ho, i64 0       ; 5 uses
  %wide.trip.count200 = zext nneg i32 %i.hg to i64 ; 6 uses
  %invariant.gep259 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp ; 6 uses
  br i1 %.not102, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.hq = load i32, ptr %invariant.gep259, align 4, !tbaa !8
  %i.hr = add nsw i32 %i.hq, %.184                ; 3 uses
  %i.hs = ashr i32 %i.hr, %i.r                    ; 2 uses
  %or.cond106.peel = select i1 %.not101, i1 %i.ap, i1 false
  br i1 %or.cond106.peel, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.preheader
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = load i16, ptr %i.j, align 2, !tbaa !72
  %i.hv = zext i16 %i.hu to i32
  %i.hw = mul nuw nsw i32 %.087146, %i.hv
  %i.hx = add nuw i32 %i.hw, %i.hk
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.hy
  store i16 %i.ht, ptr %i.hz, align 2, !tbaa !74
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.preheader
  %i.ia = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.ib = zext i16 %i.ia to i32
  %i.ic = sub nsw i32 %.087146, %i.ib             ; 2 uses
  %i.id = load i16, ptr %i.al, align 2, !tbaa !81
  %i.ie = zext i16 %i.id to i32
  %i.if = sub i32 %indvars215, %i.ie              ; 2 uses
  %i.ig = load i16, ptr %i.am, align 2, !tbaa !108
  %i.ih = zext i16 %i.ig to i32                   ; 2 uses
  %i.ii = load i16, ptr %i.an, align 4, !tbaa !109
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
  store i16 %i.ip, ptr %gep.peel, align 2, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %exitcond.peel.not = icmp eq i32 %i.hg, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.peel.next

.lr.ph.split.peel.next:                           ; preds = %bb.w
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !8
  %i.it = add nsw i32 %i.is, %i.hr                ; 3 uses
  %i.iu = ashr i32 %i.it, %i.r                    ; 2 uses
  %or.cond106.peel169 = select i1 %.not101, i1 %i.aq, i1 false
  br i1 %or.cond106.peel169, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.peel.next
  %i.iv = trunc i32 %i.iu to i16
  %i.iw = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ix = zext i16 %i.iw to i32
  %i.iy = mul nuw nsw i32 %.087146, %i.ix
  %i.iz = add nuw i32 %i.iy, %i.hk
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ja
  store i16 %i.iv, ptr %i.jb, align 2, !tbaa !74
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.split.peel.next
  %i.jc = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.jd = zext i16 %i.jc to i32
  %i.je = sub nsw i32 %.087146, %i.jd
  %i.jf = add nsw i32 %i.je, 1                    ; 2 uses
  %i.jg = load i16, ptr %i.al, align 2, !tbaa !81
  %i.jh = zext i16 %i.jg to i32
  %i.ji = sub i32 %indvars215, %i.jh              ; 2 uses
  %i.jj = load i16, ptr %i.am, align 2, !tbaa !108
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = load i16, ptr %i.an, align 4, !tbaa !109
  %i.jm = zext i16 %i.jl to i32
  %i.jn = icmp ult i32 %i.jf, %i.jm
  %i.jo = icmp ult i32 %i.ji, %i.jk
  %or.cond107.peel172 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond107.peel172, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jp = mul i32 %i.jf, %i.jk
  %i.jq = add i32 %i.jp, %i.ji
  %i.jr = zext i32 %i.jq to i64
  %gep.peel171 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.jr
  %i.js = trunc i32 %i.iu to i16
  store i16 %i.js, ptr %gep.peel171, align 2, !tbaa !74
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %exitcond.peel174.not = icmp eq i32 %i.hg, 2
  br i1 %exitcond.peel174.not, label %._crit_edge, label %.lr.ph.split.peel.next167

.lr.ph.split.peel.next167:                        ; preds = %bb.aa
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !8
  %i.jw = add nsw i32 %i.jv, %i.it                ; 3 uses
  %i.jx = ashr i32 %i.jw, %i.r                    ; 2 uses
  %or.cond106.peel177 = select i1 %.not101, i1 %i.ar, i1 false
  br i1 %or.cond106.peel177, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.peel.next167
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ka = zext i16 %i.jz to i32
  %i.kb = mul nuw nsw i32 %.087146, %i.ka
  %i.kc = add nuw i32 %i.kb, %i.hk
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.kd
  store i16 %i.jy, ptr %i.ke, align 2, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.peel.next167
  %i.kf = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.kg = zext i16 %i.kf to i32
  %i.kh = sub nsw i32 %.087146, %i.kg             ; 2 uses
  %i.ki = load i16, ptr %i.al, align 2, !tbaa !81
  %i.kj = zext i16 %i.ki to i32
  %i.kk = sub i32 %.neg121.peel178, %i.kj         ; 2 uses
  %i.kl = load i16, ptr %i.am, align 2, !tbaa !108
  %i.km = zext i16 %i.kl to i32                   ; 2 uses
  %i.kn = load i16, ptr %i.an, align 4, !tbaa !109
  %i.ko = zext i16 %i.kn to i32
  %i.kp = icmp ult i32 %i.kh, %i.ko
  %i.kq = icmp ult i32 %i.kk, %i.km
  %or.cond107.peel180 = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %or.cond107.peel180, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kr = mul i32 %i.kh, %i.km
  %i.ks = add i32 %i.kr, %i.kk
  %i.kt = zext i32 %i.ks to i64
  %gep.peel179 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.kt
  %i.ku = trunc i32 %i.jx to i16
  store i16 %i.ku, ptr %gep.peel179, align 2, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %exitcond.peel182.not = icmp eq i32 %i.hg, 3
  br i1 %exitcond.peel182.not, label %._crit_edge, label %.lr.ph.split.peel.next175

.lr.ph.split.peel.next175:                        ; preds = %bb.ae
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !8
  %i.ky = add nsw i32 %i.kx, %i.jw                ; 3 uses
  %i.kz = ashr i32 %i.ky, %i.r                    ; 2 uses
  %or.cond106.peel185 = select i1 %.not101, i1 %i.as, i1 false
  br i1 %or.cond106.peel185, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.peel.next175
  %i.la = trunc i32 %i.kz to i16
  %i.lb = load i16, ptr %i.j, align 2, !tbaa !72
  %i.lc = zext i16 %i.lb to i32
  %i.ld = mul nuw nsw i32 %.087146, %i.lc
  %i.le = add nuw i32 %i.ld, %i.hk
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.lf
  store i16 %i.la, ptr %i.lg, align 2, !tbaa !74
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.split.peel.next175
  %i.lh = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.li = zext i16 %i.lh to i32
  %i.lj = sub nsw i32 %.087146, %i.li
  %i.lk = add nsw i32 %i.lj, 1                    ; 2 uses
  %i.ll = load i16, ptr %i.al, align 2, !tbaa !81
  %i.lm = zext i16 %i.ll to i32
  %i.ln = sub i32 %.neg121.peel178, %i.lm         ; 2 uses
  %i.lo = load i16, ptr %i.am, align 2, !tbaa !108
  %i.lp = zext i16 %i.lo to i32                   ; 2 uses
  %i.lq = load i16, ptr %i.an, align 4, !tbaa !109
  %i.lr = zext i16 %i.lq to i32
  %i.ls = icmp ult i32 %i.lk, %i.lr
  %i.lt = icmp ult i32 %i.ln, %i.lp
  %or.cond107.peel188 = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %or.cond107.peel188, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lu = mul i32 %i.lk, %i.lp
  %i.lv = add i32 %i.lu, %i.ln
  %i.lw = zext i32 %i.lv to i64
  %gep.peel187 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.lw
  %i.lx = trunc i32 %i.kz to i16
  store i16 %i.lx, ptr %gep.peel187, align 2, !tbaa !74
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %exitcond.peel190.not = icmp eq i32 %i.hg, 4
  br i1 %exitcond.peel190.not, label %._crit_edge, label %.lr.ph.split.peel.next183

.lr.ph.split.peel.next183:                        ; preds = %bb.ai
  %invariant.gep255 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not101, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.us.split.us.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count200, 1
  %i.ly = icmp eq i32 %i.hg, 1
  br i1 %i.ly, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter = and i64 %wide.trip.count200, 2147483646
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %min.iters.check = icmp ult i32 %i.hg, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.split.us.preheader271, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.split.us.preheader
  %n.vec = and i64 %wide.trip.count200, 2147483640 ; 3 uses
  %i.lz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.184, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.lz, %vector.ph ], [ %i.mc, %vector.body ]
  %vec.phi269 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.md, %vector.body ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep259, i64 %index ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load = load <4 x i32>, ptr %i.ma, align 4, !tbaa !8
  %wide.load270 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !8
  %i.mc = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.md = add <4 x i32> %wide.load270, %vec.phi269 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.md, %i.mc
  %i.mf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count200
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.split.us.preheader271

.lr.ph.split.us.split.us.preheader271:            ; preds = %.lr.ph.split.us.split.us.preheader, %middle.block
  %indvars.iv192.ph = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %n.vec, %middle.block ]
  %.285138.us.us.ph = phi i32 [ %.184, %.lr.ph.split.us.split.us.preheader ], [ %i.mf, %middle.block ]
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader271, %.lr.ph.split.us.split.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph.split.us.split.us ], [ %indvars.iv192.ph, %.lr.ph.split.us.split.us.preheader271 ] ; 2 uses
  %.285138.us.us = phi i32 [ %i.mh, %.lr.ph.split.us.split.us ], [ %.285138.us.us.ph, %.lr.ph.split.us.split.us.preheader271 ]
  %gep258 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep259, i64 %indvars.iv192
  %i.mg = load i32, ptr %gep258, align 4, !tbaa !8
  %i.mh = add nsw i32 %i.mg, %.285138.us.us       ; 2 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count200
  br i1 %exitcond196.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !182

.lr.ph.split.us.split:                            ; preds = %bb.al, %.lr.ph.split.us.split.preheader.new
  %indvars.iv197 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next198.1, %bb.al ] ; 4 uses
  %.285138.us = phi i32 [ %.184, %.lr.ph.split.us.split.preheader.new ], [ %i.mu, %bb.al ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter.next.1, %bb.al ]
  %gep260 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep259, i64 %indvars.iv197
  %i.mi = load i32, ptr %gep260, align 4, !tbaa !8
  %i.mj = add nsw i32 %i.mi, %.285138.us          ; 2 uses
  %i.mk = icmp eq i64 %indvars.iv197, %i.ao
  br i1 %i.mk, label %bb.aj, label %.lr.ph.split.us.split.1

bb.aj:                                            ; preds = %.lr.ph.split.us.split
  %i.ml = ashr i32 %i.mj, %i.r
  %i.mm = trunc i32 %i.ml to i16
  %i.mn = load i16, ptr %i.j, align 2, !tbaa !72
  %i.mo = zext i16 %i.mn to i32
  %i.mp = mul nuw nsw i32 %.087146, %i.mo
  %i.mq = add nuw i32 %i.mp, %i.hk
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.mr
  store i16 %i.mm, ptr %i.ms, align 2, !tbaa !74
  br label %.lr.ph.split.us.split.1

.lr.ph.split.us.split.1:                          ; preds = %bb.aj, %.lr.ph.split.us.split
  %indvars.iv.next198 = or disjoint i64 %indvars.iv197, 1 ; 2 uses
  %gep260.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep259, i64 %indvars.iv.next198
  %i.mt = load i32, ptr %gep260.1, align 4, !tbaa !8
  %i.mu = add nsw i32 %i.mt, %i.mj                ; 4 uses
  %i.mv = icmp eq i64 %indvars.iv.next198, %i.ao
  br i1 %i.mv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.us.split.1
  %i.mw = ashr i32 %i.mu, %i.r
  %i.mx = trunc i32 %i.mw to i16
  %i.my = load i16, ptr %i.j, align 2, !tbaa !72
  %i.mz = zext i16 %i.my to i32
  %i.na = mul nuw nsw i32 %.087146, %i.mz
  %i.nb = add nuw i32 %i.na, %i.hk
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.nc
  store i16 %i.mx, ptr %i.nd, align 2, !tbaa !74
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.split.us.split.1
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !183

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next183, %bb.ap
  %indvars.iv164 = phi i64 [ 4, %.lr.ph.split.peel.next183 ], [ %indvars.iv.next165, %bb.ap ] ; 4 uses
  %.285138 = phi i32 [ %i.ky, %.lr.ph.split.peel.next183 ], [ %i.nf, %bb.ap ]
  %gep256 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep255, i64 %indvars.iv164
  %i.ne = load i32, ptr %gep256, align 4, !tbaa !8
  %i.nf = add nsw i32 %i.ne, %.285138             ; 3 uses
  %i.ng = ashr i32 %i.nf, %i.r                    ; 2 uses
  %i.nh = and i32 %i.ng, 65535
  %i.ni = icmp eq i64 %indvars.iv164, %i.ao
  %or.cond106 = select i1 %.not101, i1 %i.ni, i1 false
  br i1 %or.cond106, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.split
  %i.nj = trunc i32 %i.ng to i16
  %i.nk = load i16, ptr %i.j, align 2, !tbaa !72
  %i.nl = zext i16 %i.nk to i32
  %i.nm = mul nuw nsw i32 %.087146, %i.nl
  %i.nn = add nuw i32 %i.nm, %i.hk
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.no
  store i16 %i.nj, ptr %i.np, align 2, !tbaa !74
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.split
  %i.nq = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.nr = zext i16 %i.nq to i32
  %i.ns = sub nsw i32 %.087146, %i.nr
  %i.nt = trunc nuw nsw i64 %indvars.iv164 to i32 ; 2 uses
  %i.nu = and i32 %i.nt, 1
  %i.nv = add nsw i32 %i.ns, %i.nu                ; 2 uses
  %i.nw = load i16, ptr %i.al, align 2, !tbaa !81
  %i.nx = zext i16 %i.nw to i32
  %i.ny = shl i32 %i.nt, 30
  %i.nz = ashr i32 %i.ny, 31
  %.neg121 = add nsw i32 %i.nz, %indvars215
  %i.oa = sub i32 %.neg121, %i.nx                 ; 2 uses
  %i.ob = load i16, ptr %i.am, align 2, !tbaa !108
  %i.oc = zext i16 %i.ob to i32                   ; 2 uses
  %i.od = load i16, ptr %i.an, align 4, !tbaa !109
  %i.oe = zext i16 %i.od to i32
  %i.of = icmp ult i32 %i.nv, %i.oe
  %i.og = icmp ult i32 %i.oa, %i.oc
  %or.cond107 = select i1 %i.of, i1 %i.og, i1 false
  br i1 %or.cond107, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.oh = mul i32 %i.nv, %i.oc
  %i.oi = add i32 %i.oh, %i.oa
  %i.oj = zext i32 %i.oi to i64
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.oj ; 2 uses
  %i.ok = load i16, ptr %gep, align 2, !tbaa !74
  %i.ol = zext i16 %i.ok to i32
  %i.om = add nuw nsw i32 %i.nh, %i.ol
  %i.on = lshr i32 %i.om, 1
  %i.oo = trunc nuw i32 %i.on to i16
  store i16 %i.oo, ptr %gep, align 2, !tbaa !74
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count200
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !184

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.al
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv197.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next198.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.285138.us.epil.init = phi i32 [ %.184, %.lr.ph.split.us.split.preheader ], [ %i.mu, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod279 = trunc i32 %i.hg to i1
  call void @llvm.assume(i1 %lcmp.mod279)
  %gep260.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep259, i64 %indvars.iv197.epil.init
  %i.op = load i32, ptr %gep260.epil, align 4, !tbaa !8
  %i.oq = add nsw i32 %i.op, %.285138.us.epil.init ; 3 uses
  %i.or = icmp eq i64 %indvars.iv197.epil.init, %i.ao
  br i1 %i.or, label %bb.aq, label %._crit_edge

bb.aq:                                            ; preds = %.lr.ph.split.us.split.epil.preheader
  %i.os = ashr i32 %i.oq, %i.r
  %i.ot = trunc i32 %i.os to i16
  %i.ou = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ov = zext i16 %i.ou to i32
  %i.ow = mul nuw nsw i32 %.087146, %i.ov
  %i.ox = add nuw i32 %i.ow, %i.hk
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.oy
  store i16 %i.ot, ptr %i.oz, align 2, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %.lr.ph.split.us.split.us, %._crit_edge.loopexit.unr-lcssa, %bb.aq, %.lr.ph.split.us.split.epil.preheader, %middle.block, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.s
  %.285.lcssa = phi i32 [ %.184, %bb.s ], [ %i.oq, %.lr.ph.split.us.split.epil.preheader ], [ %i.mh, %.lr.ph.split.us.split.us ], [ %i.ky, %bb.ai ], [ %i.hr, %bb.w ], [ %i.it, %bb.aa ], [ %i.jw, %bb.ae ], [ %i.mf, %middle.block ], [ %i.mu, %._crit_edge.loopexit.unr-lcssa ], [ %i.oq, %bb.aq ], [ %i.nf, %bb.ap ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0216.0, i64 %indvars.iv204
  store i32 %.285.lcssa, ptr %i.pa, align 4, !tbaa !8
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next205, %indvars.iv211
  br i1 %exitcond210.not, label %.loopexit127, label %bb.p, !llvm.loop !185

._crit_edge145:                                   ; preds = %.loopexit127, %.preheader130.preheader
  %i.pb = add nuw nsw i32 %.087146, 1             ; 2 uses
  %i.pc = load i16, ptr %i.i, align 8, !tbaa !71
  %i.pd = zext i16 %i.pc to i32
  %i.pe = icmp samesign ult i32 %i.pb, %i.pd
  br i1 %i.pe, label %bb.e, label %._crit_edge149, !llvm.loop !186

bb.ar:                                            ; preds = %bb.at, %bb.as, %bb.d
  %i.pf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.az

bb.as:                                            ; preds = %.loopexit.split-lp.thread, %bb.d, %.loopexit.split-lp
  invoke void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_rethrow() #22
          to label %bb.ba unwind label %bb.ar

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.pf

._crit_edge149:                                   ; preds = %._crit_edge145, %bb.c
  %.not99 = icmp eq ptr %i.m, null
  br i1 %.not99, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge149
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.m)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge149
  call void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
  %i.pg = load ptr, ptr %i.h, align 8, !tbaa !107
  %.not100 = icmp eq ptr %i.pg, null
  br i1 %.not100, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 381656
  store i32 1, ptr %i.ph, align 8, !tbaa !110
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.az:                                            ; preds = %bb.ar
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #25
  unreachable

bb.ba:                                            ; preds = %bb.at
  unreachable
}

declare noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17leaf_hdr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not33 = icmp eq ptr %i.e, null
  %or.cond = select i1 %.not, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 4) #21 ; 2 uses
  store i32 5, ptr %i.g, align 16, !tbaa !88
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.i = load i16, ptr %i.h, align 2, !tbaa !72
  %i.j = zext i16 %i.i to i64
  %i.k = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.j, i64 noundef 2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.026 = phi ptr [ null, %bb.a ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381832 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105  ; 2 uses
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
  %.pre = load i16, ptr %i.o, align 8, !tbaa !71
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
  %i.z = load i32, ptr %i.p, align 8, !tbaa !193
  %i.aa = urem i32 %.02452, %i.z
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !83  ; 2 uses
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !94
  %i.ae = add i32 %.151, 1
  %i.af = shl i32 %.151, 2
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ad, %i.ag
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %i.ah, i32 noundef 0)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !83  ; 2 uses
  %i.an = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i64 noundef %i.ao, i32 noundef 0)
          to label %bb.l unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.g, %.lr.ph53
  %.3 = phi ptr [ %.4, %.thread ], [ %.22850, %bb.i ], [ %.22850, %bb.h ], [ %.22850, %bb.g ], [ %.22850, %.lr.ph53 ]
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  %i.av = tail call ptr @__cxa_begin_catch(ptr %i.au) #21 ; 0 uses
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !82
  %.not40 = icmp eq i32 %i.aw, 0
  br i1 %.not40, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.3)
          to label %bb.v unwind label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.f
  %.2 = phi i32 [ %i.ae, %bb.i ], [ %.151, %bb.f ] ; 2 uses
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !82
  %.not36 = icmp eq i32 %i.ax, 0
  br i1 %.not36, label %..thread_crit_edge, label %bb.m

..thread_crit_edge:                               ; preds = %bb.l
  %.pre64 = load i16, ptr %i.s, align 2, !tbaa !72
end_hunk_0
