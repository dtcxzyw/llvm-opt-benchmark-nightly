inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  invoke void %i.js(ptr noundef nonnull %0)
          to label %bb.bc unwind label %bb.m

bb.bc:                                            ; preds = %bb.bb, %.loopexit701
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 4 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !2241
  %.not400 = icmp eq i32 %i.ju, 0
  br i1 %.not400, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.jv = load i32, ptr %i.ar, align 4, !tbaa !2242
  switch i32 %i.jv, label %.thread [
    i32 18, label %bb.be
    i32 8, label %bb.bi
    i32 63, label %bb.bm
  ]

bb.be:                                            ; preds = %bb.bd
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.jx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(6) @.str.30) #22
  %.not401 = icmp eq i32 %i.jx, 0
  br i1 %.not401, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(6) @.str.31) #22
  %.not402 = icmp eq i32 %i.jy, 0
  br i1 %.not402, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(6) @.str.32) #22
  %.not403 = icmp eq i32 %i.jz, 0
  br i1 %.not403, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 182
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.ka, align 2, !tbaa !2256
  br label %.thread

bb.bi:                                            ; preds = %bb.bd
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !2264
  %i.kd = icmp eq i16 %i.kc, 0
  br i1 %i.kd, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %bb.bi
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kf = load i16, ptr %i.ke, align 8, !tbaa !2266
  %i.kg = icmp eq i16 %i.kf, 0
  br i1 %i.kg, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !2267
  %i.kj = zext i16 %i.ki to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !2220
  %i.km = zext i16 %i.kl to i32
  %i.kn = shl nuw nsw i32 %i.km, 2
  %i.ko = udiv i32 %i.kn, 5
  %i.kp = icmp samesign ugt i32 %i.ko, %i.kj
  br i1 %i.kp, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.kb, align 2, !tbaa !2256
  br label %.thread

bb.bm:                                            ; preds = %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.kr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.kq, ptr noundef nonnull dereferenceable(9) @.str.33) #22
  %.not406 = icmp eq i32 %i.kr, 0
  br i1 %.not406, label %bb.bn, label %.thread

bb.bn:                                            ; preds = %bb.bm
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !2268
  %i.ku = and i32 %i.kt, 65536
  %.not407 = icmp eq i32 %i.ku, 0
  br i1 %.not407, label %.preheader700, label %.thread

.preheader700:                                    ; preds = %bb.bn
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.kv, align 4, !tbaa !2237
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 187224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5376) %i.kw, i8 0, i64 5376, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bc, %.preheader700, %bb.bn, %bb.bm
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 768416 ; 18 uses
  %.unpack408 = load i64, ptr %i.kx, align 8, !tbaa !2231 ; 2 uses
  %.elt409 = getelementptr inbounds nuw i8, ptr %0, i64 768424 ; 17 uses
  %.unpack410 = load i64, ptr %.elt409, align 8, !tbaa !2231 ; 2 uses
  %i.ky = icmp eq i64 %.unpack408, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.kz = icmp eq i64 %.unpack410, 0
  %i.la = and i1 %i.ky, %i.kz
  br i1 %i.la, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.thread
  invoke void @_ZN6LibRaw16nikon_read_curveEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %._crit_edge869 unwind label %bb.m

._crit_edge869:                                   ; preds = %bb.bo
  %.unpack411.pre = load i64, ptr %i.kx, align 8, !tbaa !2231
  %.unpack413.pre = load i64, ptr %.elt409, align 8, !tbaa !2231
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge869, %.thread
  %.unpack413 = phi i64 [ %.unpack413.pre, %._crit_edge869 ], [ %.unpack410, %.thread ]
  %.unpack411 = phi i64 [ %.unpack411.pre, %._crit_edge869 ], [ %.unpack408, %.thread ] ; 2 uses
  %i.lb = icmp eq i64 %.unpack411, ptrtoint (ptr @_ZN6LibRaw22lossless_jpeg_load_rawEv to i64)
  %i.lc = icmp eq i64 %.unpack413, 0              ; 2 uses
  %i.ld = and i1 %i.lb, %i.lc
  br i1 %i.ld, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.lf = load i16, ptr %i.le, align 8, !tbaa !2269
  %.not414 = icmp eq i16 %i.lf, 0
  br i1 %.not414, label %.thread588thread-pre-split, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lg = load i32, ptr %i.ar, align 4, !tbaa !2242 ; 2 uses
  %i.lh = icmp eq i32 %i.lg, 29
  br i1 %i.lh, label %bb.bs, label %.thread588

bb.bs:                                            ; preds = %bb.br
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.lj = tail call i32 @strncasecmp(ptr noundef nonnull %i.li, ptr noundef nonnull @.str.34, i64 noundef 9) #22
  %.not415 = icmp eq i32 %i.lj, 0
  br i1 %.not415, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lk = tail call i32 @strncasecmp(ptr noundef nonnull %i.li, ptr noundef nonnull @.str.35, i64 noundef 9) #22
  %.not416 = icmp eq i32 %i.lk, 0
  br i1 %.not416, label %bb.bu, label %.thread588thread-pre-split

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 0, ptr %i.ll, align 8, !tbaa !2233
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4501, ptr %i.lm, align 8, !tbaa !2232
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.ln, i8 0, i64 16416, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.lo, i8 0, i64 128, i1 false)
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.lp, align 8, !tbaa !2270
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !2228
  %i.ls = or i32 %i.lr, 512
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !2228
  br label %.thread588thread-pre-split

bb.bv:                                            ; preds = %bb.bp
  %i.lt = icmp eq i64 %.unpack411, ptrtoint (ptr @_ZN6LibRaw18panasonic_load_rawEv to i64)
  %i.lu = and i1 %i.lt, %i.lc
  br i1 %i.lu, label %bb.bw, label %.thread588thread-pre-split

bb.bw:                                            ; preds = %bb.bv
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 381908
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !2271 ; 2 uses
  %.off = add i32 %i.lw, -6
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %.preheader699, label %bb.bx

.preheader699:                                    ; preds = %bb.bw
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 381640
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ly, ptr noundef nonnull align 8 dereferenceable(12) %i.lx, i64 12, i1 false), !tbaa !2270
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !2270
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !2270
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.mc, align 4, !tbaa !2270
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.md, align 8, !tbaa !2270
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 0, ptr %i.me, align 8, !tbaa !2233
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !2270
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !2270
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !2270
  %.563 = tail call i32 @llvm.umax.i32(i32 %i.mi, i32 %i.mk)
  %spec.select656 = tail call i32 @llvm.umax.i32(i32 %i.mg, i32 %.563)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %spec.select656, ptr %i.ml, align 8, !tbaa !2232
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.preheader699
  switch i32 %i.lw, label %.thread588thread-pre-split [
    i32 6, label %bb.by
    i32 7, label %bb.cj
    i32 8, label %bb.cn
  ]

bb.by:                                            ; preds = %bb.bx
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !2220 ; 3 uses
  %2 = udiv i16 %i.mo, 11
  %.zext647 = zext nneg i16 %2 to i64
  %3 = shl nuw nsw i64 %.zext647, 4
  %4 = udiv i16 %i.mo, 14
  %.zext649 = zext nneg i16 %4 to i64
  %5 = shl nuw nsw i64 %.zext649, 4
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !2272 ; 2 uses
  %.not423 = icmp eq i64 %i.mq, 0
  br i1 %.not423, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.mr = load ptr, ptr %i.z, align 8, !tbaa !2215 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !11
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = invoke noundef i64 %i.mu(ptr noundef nonnull align 8 dereferenceable(8) %i.mr)
          to label %bb.ca unwind label %bb.cb, !call_target !2203

bb.ca:                                            ; preds = %bb.bz
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !2219
  %i.my = sub nsw i64 %i.mv, %i.mx
  %.pre872 = load i16, ptr %i.mn, align 2, !tbaa !2220
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.mz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.jh

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %i.na = phi i16 [ %i.mo, %bb.by ], [ %.pre872, %bb.ca ] ; 2 uses
  %.0328 = phi i64 [ %i.mq, %bb.by ], [ %i.my, %bb.ca ] ; 2 uses
  %i.nb = urem i16 %i.na, 11
  %i.nc = icmp eq i16 %i.nb, 0
  br i1 %i.nc, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.nd = load i16, ptr %i.mm, align 8, !tbaa !2221
  %i.ne = zext i16 %i.nd to i64
  %i.nf = mul nuw nsw i64 %3, %i.ne
  %i.ng = icmp eq i64 %i.nf, %.0328
  br i1 %i.ng, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.nh = urem i16 %i.na, 14
  %i.ni = icmp eq i16 %i.nh, 0
  br i1 %i.ni, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.nj = load i16, ptr %i.mm, align 8, !tbaa !2221
  %i.nk = zext i16 %i.nj to i64
  %i.nl = mul nuw nsw i64 %5, %i.nk
  %i.nm = icmp eq i64 %i.nl, %.0328
  br i1 %i.nm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nn, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

bb.cj:                                            ; preds = %bb.bx
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.np = load i32, ptr %i.no, align 8, !tbaa !2273
  %i.nq = icmp eq i32 %i.np, 14
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !2220 ; 2 uses
  %.rhs.trunc651 = select i1 %i.nq, i16 9, i16 10 ; 2 uses
  %i.nt = urem i16 %i.ns, %.rhs.trunc651
  %i.nu = udiv i16 %i.ns, %.rhs.trunc651
  %i.nv = icmp eq i16 %i.nt, 0
  br i1 %i.nv, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.zext655 = zext nneg i16 %i.nu to i64
  %i.nw = shl nuw nsw i64 %.zext655, 4
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ny = load i16, ptr %i.nx, align 8, !tbaa !2221
  %i.nz = zext i16 %i.ny to i64
  %i.oa = mul nuw nsw i64 %i.nw, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !2272
  %i.od = icmp eq i64 %i.oa, %i.oc
  br i1 %i.od, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC7_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.oe, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

bb.cn:                                            ; preds = %bb.bx
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.og = load i16, ptr %i.of, align 4, !tbaa !2274
  %.not420 = icmp eq i16 %i.og, 0
  br i1 %.not420, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC8_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cp:                                            ; preds = %bb.cn
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.oh, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

.thread588thread-pre-split:                       ; preds = %bb.bv, %bb.co, %bb.cp, %bb.ch, %bb.ci, %bb.ce, %bb.cm, %bb.cl, %bb.bx, %bb.bu, %bb.bt, %bb.bq
  %.pr638 = load i32, ptr %i.ar, align 4, !tbaa !2242
  br label %.thread588

.thread588:                                       ; preds = %.thread588thread-pre-split, %bb.br
  %i.oi = phi i32 [ %.pr638, %.thread588thread-pre-split ], [ %i.lg, %bb.br ] ; 2 uses
  switch i32 %i.oi, label %.thread593 [
    i32 43, label %bb.cq
    i32 63, label %bb.cw
    i32 8, label %bb.cy
  ]

bb.cq:                                            ; preds = %.thread588
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ok = tail call i32 @strncasecmp(ptr noundef nonnull %i.oj, ptr noundef nonnull @.str.36, i64 noundef 1) #22
  %.not426 = icmp eq i32 %i.ok, 0
  br i1 %.not426, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ol = tail call i32 @strcasecmp(ptr noundef nonnull %i.oj, ptr noundef nonnull @.str.37) #22
  %.not427 = icmp eq i32 %i.ol, 0
  br i1 %.not427, label %bb.cs, label %.thread593.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !2220
  %i.op = zext i16 %i.oo to i32                   ; 2 uses
  %i.oq = mul nuw nsw i32 %i.op, 7
  %i.or = lshr i32 %i.oq, 2
  %i.os = uitofp nneg i32 %i.or to float
  %i.ot = fmul reassoc nnan nsz arcp contract afn float %i.os, 6.250000e-02
  %i.ou = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ot)
  %i.ov = fptoui float %i.ou to i32
  %i.ow = load i16, ptr %i.om, align 8, !tbaa !2221 ; 2 uses
  %i.ox = zext i16 %i.ow to i32
  %i.oy = shl nuw nsw i32 %i.ox, 4
  %i.oz = mul i32 %i.oy, %i.ov
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !2272 ; 2 uses
  %i.pd = icmp eq i64 %i.pc, %i.pa
  br i1 %i.pd, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.pe = mul nuw nsw i32 %i.op, 21
  %i.pf = lshr i32 %i.pe, 2
  %i.pg = uitofp nneg i32 %i.pf to float
  %i.ph = fmul reassoc nnan nsz arcp contract afn float %i.pg, 6.250000e-02
  %i.pi = tail call reassoc nnan nsz arcp contract afn float @llvm.ceil.f32(float %i.ph)
  %i.pj = uitofp i16 %i.ow to float
  %i.pk = fmul reassoc nnan nsz arcp contract afn float %i.pj, 1.600000e+01
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.pi
  %i.pm = sitofp reassoc nsz arcp contract afn i64 %i.pc to float
  %i.pn = fcmp reassoc nsz arcp contract afn oeq float %i.pl, %i.pm
  br i1 %i.pn, label %bb.cv, label %.thread593.thread

bb.cv:                                            ; preds = %bb.cu
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.po, align 8, !tbaa !2226
  br label %.thread593.thread

bb.cw:                                            ; preds = %.thread588
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !2232 ; 3 uses
  %.not430 = icmp eq i32 %i.pq, 0
  br i1 %.not430, label %.thread593.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !2270 ; 3 uses
  %i.pt = icmp ule i32 %i.ps, %i.pq
  %i.pu = shl i32 %i.pq, 2
  %.not431 = icmp ugt i32 %i.ps, %i.pu
  %or.cond565 = or i1 %i.pt, %.not431
  br i1 %or.cond565, label %.thread593.thread, label %.preheader698.preheader

.preheader698.preheader:                          ; preds = %bb.cx
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !2270
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.py = load <2 x i32>, ptr %i.px, align 4, !tbaa !2270
  %i.pz = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %i.qa = insertelement <4 x i32> %i.pz, i32 %i.pw, i64 1
  %i.qb = shufflevector <2 x i32> %i.py, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qc = shufflevector <4 x i32> %i.qa, <4 x i32> %i.qb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qd = lshr <4 x i32> %i.qc, splat (i32 2)
  store <4 x i32> %i.qd, ptr %i.pr, align 4, !tbaa !2270
  br label %.thread593.thread

bb.cy:                                            ; preds = %.thread588
  %i.qe = load i32, ptr %i.jt, align 4, !tbaa !2241
  %.not432 = icmp eq i32 %i.qe, 0
  br i1 %.not432, label %bb.cz, label %..thread597_crit_edge

..thread597_crit_edge:                            ; preds = %bb.cy
  %.unpack439.pre = load i64, ptr %i.kx, align 8, !tbaa !2231
  %.unpack441.pre = load i64, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread597

bb.cz:                                            ; preds = %bb.cy
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 2062
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !2275 ; 4 uses
  %.not433 = icmp eq i16 %i.qh, -1
  br i1 %.not433, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.qj = load i16, ptr %i.qi, align 4, !tbaa !2276
  %.not434 = icmp eq i16 %i.qj, 0
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  br i1 %.not434, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ql = load i16, ptr %i.qf, align 4, !tbaa !2277
  %i.qm = load <2 x i16>, ptr %i.qk, align 2, !tbaa !2256
  %i.qn = insertelement <2 x i16> poison, i16 %i.qh, i64 0
  %i.qo = insertelement <2 x i16> %i.qn, i16 %i.ql, i64 1
  %i.qp = add <2 x i16> %i.qm, %i.qo
  store <2 x i16> %i.qp, ptr %i.qk, align 2, !tbaa !2256
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i16 %i.qh, ptr %i.qk, align 2, !tbaa !2264
  %i.qq = load i16, ptr %i.qf, align 4, !tbaa !2277 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.qq, ptr %i.qr, align 8, !tbaa !2266
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2064
end_hunk_0
