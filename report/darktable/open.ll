Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 187224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5376) %i.kw, i8 0, i64 5376, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bc, %.preheader703.a, %bb.bn, %bb.bm
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
          to label %._crit_edge872 unwind label %bb.m

._crit_edge872:                                   ; preds = %bb.bo
  %.unpack411.pre = load i64, ptr %i.kx, align 8, !tbaa !2231
  %.unpack413.pre = load i64, ptr %.elt409, align 8, !tbaa !2231
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge872, %.thread
  %.unpack413 = phi i64 [ %.unpack413.pre, %._crit_edge872 ], [ %.unpack410, %.thread ]
  %.unpack411 = phi i64 [ %.unpack411.pre, %._crit_edge872 ], [ %.unpack408, %.thread ] ; 2 uses
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
  br i1 %switch, label %.preheader702, label %bb.bx

.preheader702:                                    ; preds = %bb.bw
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

bb.bx:                                            ; preds = %bb.bw, %.preheader702
  switch i32 %i.lw, label %.thread588thread-pre-split [
    i32 6, label %bb.by
    i32 7, label %bb.cj
    i32 8, label %bb.cn
  ]

bb.by:                                            ; preds = %bb.bx
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !2220 ; 2 uses
  %i.mp = insertelement <2 x i16> poison, i16 %i.mo, i64 0
  %i.mq = shufflevector <2 x i16> %i.mp, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.mr = udiv <2 x i16> %i.mq, <i16 11, i16 14>
  %i.ms = zext nneg <2 x i16> %i.mr to <2 x i32>
  %i.mt = shl nuw nsw <2 x i32> %i.ms, splat (i32 4) ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !2272 ; 2 uses
  %.not423 = icmp eq i64 %i.mv, 0
  br i1 %.not423, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.mw = load ptr, ptr %i.z, align 8, !tbaa !2215 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !11
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = invoke noundef i64 %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw)
          to label %bb.ca unwind label %bb.cb, !call_target !2203

bb.ca:                                            ; preds = %bb.bz
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !2219
  %i.nd = sub nsw i64 %i.na, %i.nc
  %.pre875 = load i16, ptr %i.mn, align 2, !tbaa !2220
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ne = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.jh

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %i.nf = phi i16 [ %i.mo, %bb.by ], [ %.pre875, %bb.ca ] ; 2 uses
  %.0328 = phi i64 [ %i.mv, %bb.by ], [ %i.nd, %bb.ca ] ; 2 uses
  %i.ng = urem i16 %i.nf, 11
  %i.nh = icmp eq i16 %i.ng, 0
  br i1 %i.nh, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ni = load i16, ptr %i.mm, align 8, !tbaa !2221
  %i.nj = zext i16 %i.ni to i64
  %i.nk = extractelement <2 x i32> %i.mt, i64 0
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = mul nuw nsw i64 %i.nl, %i.nj
  %i.nn = icmp eq i64 %i.nm, %.0328
  br i1 %i.nn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.no = urem i16 %i.nf, 14
  %i.np = icmp eq i16 %i.no, 0
  br i1 %i.np, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.nq = load i16, ptr %i.mm, align 8, !tbaa !2221
  %i.nr = zext i16 %i.nq to i64
  %i.ns = extractelement <2 x i32> %i.mt, i64 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = mul nuw nsw i64 %i.nt, %i.nr
  %i.nv = icmp eq i64 %i.nu, %.0328
  br i1 %i.nv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nw, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

bb.cj:                                            ; preds = %bb.bx
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !2273
  %i.nz = icmp eq i32 %i.ny, 14                   ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !2220 ; 4 uses
  %2 = urem i16 %i.ob, 9
  %3 = udiv i16 %i.ob, 9
  %i.oc = urem i16 %i.ob, 10
  %i.od = udiv i16 %i.ob, 10
  %.v = select i1 %i.nz, i16 %2, i16 %i.oc
  %i.oe = icmp eq i16 %.v, 0
  br i1 %i.oe, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.v668 = select i1 %i.nz, i16 %3, i16 %i.od
  %.zext655 = zext nneg i16 %.v668 to i64
  %i.of = shl nuw nsw i64 %.zext655, 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oh = load i16, ptr %i.og, align 8, !tbaa !2221
  %i.oi = zext i16 %i.oh to i64
  %i.oj = mul nuw nsw i64 %i.of, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !2272
  %i.om = icmp eq i64 %i.oj, %i.ol
  br i1 %i.om, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC7_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.on, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

bb.cn:                                            ; preds = %bb.bx
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.op = load i16, ptr %i.oo, align 4, !tbaa !2274
  %.not420 = icmp eq i16 %i.op, 0
  br i1 %.not420, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC8_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cp:                                            ; preds = %bb.cn
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.oq, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

.thread588thread-pre-split:                       ; preds = %bb.bv, %bb.co, %bb.cp, %bb.ch, %bb.ci, %bb.ce, %bb.cm, %bb.cl, %bb.bx, %bb.bu, %bb.bt, %bb.bq
  %.pr638 = load i32, ptr %i.ar, align 4, !tbaa !2242
  br label %.thread588

.thread588:                                       ; preds = %.thread588thread-pre-split, %bb.br
  %i.or = phi i32 [ %.pr638, %.thread588thread-pre-split ], [ %i.lg, %bb.br ] ; 2 uses
  switch i32 %i.or, label %.thread593 [
    i32 43, label %bb.cq
    i32 63, label %bb.cw
    i32 8, label %bb.cy
  ]

bb.cq:                                            ; preds = %.thread588
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ot = tail call i32 @strncasecmp(ptr noundef nonnull %i.os, ptr noundef nonnull @.str.36, i64 noundef 1) #22
  %.not426 = icmp eq i32 %i.ot, 0
  br i1 %.not426, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ou = tail call i32 @strcasecmp(ptr noundef nonnull %i.os, ptr noundef nonnull @.str.37) #22
  %.not427 = icmp eq i32 %i.ou, 0
  br i1 %.not427, label %bb.cs, label %.thread593.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !2220
  %i.oy = zext i16 %i.ox to i32                   ; 2 uses
  %i.oz = mul nuw nsw i32 %i.oy, 7
  %i.pa = lshr i32 %i.oz, 2
  %i.pb = uitofp nneg i32 %i.pa to float
  %i.pc = fmul reassoc nnan nsz arcp contract afn float %i.pb, 6.250000e-02
  %i.pd = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.pc)
  %i.pe = fptoui float %i.pd to i32
  %i.pf = load i16, ptr %i.ov, align 8, !tbaa !2221 ; 2 uses
  %i.pg = zext i16 %i.pf to i32
  %i.ph = shl nuw nsw i32 %i.pg, 4
  %i.pi = mul i32 %i.ph, %i.pe
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !2272 ; 2 uses
  %i.pm = icmp eq i64 %i.pl, %i.pj
  br i1 %i.pm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.pn = mul nuw nsw i32 %i.oy, 21
  %i.po = lshr i32 %i.pn, 2
  %i.pp = uitofp nneg i32 %i.po to float
  %i.pq = fmul reassoc nnan nsz arcp contract afn float %i.pp, 6.250000e-02
  %i.pr = tail call reassoc nnan nsz arcp contract afn float @llvm.ceil.f32(float %i.pq)
  %i.ps = uitofp i16 %i.pf to float
  %i.pt = fmul reassoc nnan nsz arcp contract afn float %i.ps, 1.600000e+01
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pt, %i.pr
  %i.pv = sitofp reassoc nsz arcp contract afn i64 %i.pl to float
  %i.pw = fcmp reassoc nsz arcp contract afn oeq float %i.pu, %i.pv
  br i1 %i.pw, label %bb.cv, label %.thread593.thread

bb.cv:                                            ; preds = %bb.cu
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.px, align 8, !tbaa !2226
  br label %.thread593.thread

bb.cw:                                            ; preds = %.thread588
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !2232 ; 3 uses
  %.not430 = icmp eq i32 %i.pz, 0
  br i1 %.not430, label %.thread593.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !2270 ; 3 uses
  %i.qc = icmp ule i32 %i.qb, %i.pz
  %i.qd = shl i32 %i.pz, 2
  %.not431 = icmp ugt i32 %i.qb, %i.qd
  %or.cond565 = or i1 %i.qc, %.not431
  br i1 %or.cond565, label %.thread593.thread, label %.preheader701.preheader

.preheader701.preheader:                          ; preds = %bb.cx
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !2270
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.qh = load <2 x i32>, ptr %i.qg, align 4, !tbaa !2270
  %i.qi = insertelement <4 x i32> poison, i32 %i.qb, i64 0
  %i.qj = insertelement <4 x i32> %i.qi, i32 %i.qf, i64 1
  %i.qk = shufflevector <2 x i32> %i.qh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ql = shufflevector <4 x i32> %i.qj, <4 x i32> %i.qk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qm = lshr <4 x i32> %i.ql, splat (i32 2)
  store <4 x i32> %i.qm, ptr %i.qa, align 4, !tbaa !2270
  br label %.thread593.thread

bb.cy:                                            ; preds = %.thread588
  %i.qn = load i32, ptr %i.jt, align 4, !tbaa !2241
  %.not432 = icmp eq i32 %i.qn, 0
  br i1 %.not432, label %bb.cz, label %..thread597_crit_edge

..thread597_crit_edge:                            ; preds = %bb.cy
  %.unpack439.pre = load i64, ptr %i.kx, align 8, !tbaa !2231
  %.unpack441.pre = load i64, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread597

bb.cz:                                            ; preds = %bb.cy
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2062
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !2275 ; 4 uses
  %.not433 = icmp eq i16 %i.qq, -1
  br i1 %.not433, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.qs = load i16, ptr %i.qr, align 4, !tbaa !2276
  %.not434 = icmp eq i16 %i.qs, 0
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  br i1 %.not434, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qu = load i16, ptr %i.qo, align 4, !tbaa !2277
  %i.qv = load <2 x i16>, ptr %i.qt, align 2, !tbaa !2256
  %i.qw = insertelement <2 x i16> poison, i16 %i.qq, i64 0
  %i.qx = insertelement <2 x i16> %i.qw, i16 %i.qu, i64 1
  %i.qy = add <2 x i16> %i.qv, %i.qx
  store <2 x i16> %i.qy, ptr %i.qt, align 2, !tbaa !2256
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i16 %i.qq, ptr %i.qt, align 2, !tbaa !2264
  %i.qz = load i16, ptr %i.qo, align 4, !tbaa !2277 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.qz, ptr %i.ra, align 8, !tbaa !2266
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.rd = load <2 x i16>, ptr %i.rc, align 8, !tbaa !2256
  %i.re = insertelement <2 x i16> poison, i16 %i.qz, i64 0
  %i.rf = insertelement <2 x i16> %i.re, i16 %i.qq, i64 1
  %i.rg = sub <2 x i16> %i.rd, %i.rf
  %i.rh = add <2 x i16> %i.rg, splat (i16 1)
  %i.ri = shufflevector <2 x i16> %i.rh, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.ri, ptr %i.rb, align 2, !tbaa !2256
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.dc
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 192676
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !2278 ; 5 uses
  %i.rl = icmp ugt i32 %i.rk, 13
  %.unpack439.pre876 = load i64, ptr %i.kx, align 8, !tbaa !2231 ; 4 uses
  %.unpack441.pre878 = load i64, ptr %.elt409, align 8, !tbaa !2231 ; 4 uses
  br i1 %i.rl, label %.thread597, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rm = icmp ne i64 %.unpack439.pre876, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.rn = icmp ne i64 %.unpack441.pre878, 0
  %i.ro = or i1 %i.rm, %i.rn
  br i1 %i.ro, label %bb.df, label %.thread597

bb.df:                                            ; preds = %bb.de
  %notmask = shl nsw i32 -1, %i.rk
  %i.rp = xor i32 %notmask, -1
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
end_hunk_0
