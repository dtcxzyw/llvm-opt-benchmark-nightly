Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  %i.il = icmp slt i32 %i.ik, 8
  br i1 %i.il, label %bb.av, label %.loopexit700

bb.av:                                            ; preds = %bb.au
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.in = load i32, ptr %i.im, align 8, !tbaa !2260 ; 3 uses
  %.not395 = icmp eq i32 %i.in, 0
  br i1 %.not395, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !2258 ; 3 uses
  %.not396 = icmp ne i64 %i.ip, 0
  %i.iq = icmp sgt i32 %i.ik, 0
  %or.cond755 = and i1 %.not396, %i.iq
  br i1 %or.cond755, label %.lr.ph714, label %.critedge

bb.ax:                                            ; preds = %bb.av
  %.old = icmp sgt i32 %i.ik, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %.pre865 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !2258 ; 2 uses
  br i1 %.old, label %.lr.ph714, label %.critedge

.lr.ph714:                                        ; preds = %bb.ax, %bb.aw
  %i.ir = phi i64 [ %i.ip, %bb.aw ], [ %.pre865, %bb.ax ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 193520
  %wide.trip.count769 = zext nneg i32 %i.ik to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph714, %bb.ba
  %indvars.iv766 = phi i64 [ 0, %.lr.ph714 ], [ %indvars.iv.next767, %bb.ba ] ; 2 uses
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %indvars.iv766 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !2257
  %i.iw = icmp eq i64 %i.iv, %i.ir
  br i1 %i.iw, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !2259
  %i.iz = icmp eq i32 %i.iy, %i.in
  br i1 %i.iz, label %.loopexit700, label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv.next767 = add nuw nsw i64 %indvars.iv766, 1 ; 2 uses
  %exitcond770.not = icmp eq i64 %indvars.iv.next767, %wide.trip.count769
  br i1 %exitcond770.not, label %.critedge, label %bb.ay, !llvm.loop !2240

.critedge:                                        ; preds = %bb.ba, %bb.ax, %bb.aw
  %i.ja = phi i64 [ %.pre865, %bb.ax ], [ %i.ip, %bb.aw ], [ %i.ir, %bb.ba ]
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 193520
  %i.jc = sext i32 %i.ik to i64
  %i.jd = getelementptr inbounds [32 x i8], ptr %i.jb, i64 %i.jc ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store i64 %i.ja, ptr %i.je, align 8, !tbaa !2257
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i32 %i.in, ptr %i.jf, align 4, !tbaa !2259
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i16 -1, ptr %i.jg, align 8, !tbaa !2266
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 381824
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !2262
  store i32 %i.ji, ptr %i.jd, align 8, !tbaa !2261
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 381820
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !2264
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i32 %i.jk, ptr %i.jl, align 8, !tbaa !2253
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 193492
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jo = load <2 x i16>, ptr %i.jm, align 4, !tbaa !2263
  store <2 x i16> %i.jo, ptr %i.jn, align 4, !tbaa !2263
  %i.jp = add nsw i32 %i.ik, 1
  store i32 %i.jp, ptr %i.ij, align 8, !tbaa !2251
  br label %.loopexit700

.loopexit700:                                     ; preds = %bb.az, %.critedge, %bb.au
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 915
  store i8 0, ptr %i.jq, align 1, !tbaa !2267
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 768320
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !2268 ; 2 uses
  %.not397 = icmp eq ptr %i.js, null
  br i1 %.not397, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.loopexit700
  invoke void %i.js(ptr noundef nonnull %0)
          to label %bb.bc unwind label %bb.m

bb.bc:                                            ; preds = %bb.bb, %.loopexit700
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 4 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !2249
  %.not398 = icmp eq i32 %i.ju, 0
  br i1 %.not398, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.jv = load i32, ptr %i.ar, align 4, !tbaa !2250
  switch i32 %i.jv, label %.thread [
    i32 18, label %bb.be
    i32 8, label %bb.bi
    i32 63, label %bb.bm
  ]

bb.be:                                            ; preds = %bb.bd
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.jx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(6) @.str.30) #22
  %.not399 = icmp eq i32 %i.jx, 0
  br i1 %.not399, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(6) @.str.31) #22
  %.not400 = icmp eq i32 %i.jy, 0
  br i1 %.not400, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(6) @.str.32) #22
  %.not401 = icmp eq i32 %i.jz, 0
  br i1 %.not401, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 182
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.ka, align 2, !tbaa !2263
  br label %.thread

bb.bi:                                            ; preds = %bb.bd
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !2270
  %i.kd = icmp eq i16 %i.kc, 0
  br i1 %i.kd, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %bb.bi
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kf = load i16, ptr %i.ke, align 8, !tbaa !2271
  %i.kg = icmp eq i16 %i.kf, 0
  br i1 %i.kg, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !2272
  %i.kj = zext i16 %i.ki to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !2218
  %i.km = zext i16 %i.kl to i32
  %i.kn = shl nuw nsw i32 %i.km, 2
  %i.ko = udiv i32 %i.kn, 5
  %i.kp = icmp samesign ugt i32 %i.ko, %i.kj
  br i1 %i.kp, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.kb, align 2, !tbaa !2263
  br label %.thread

bb.bm:                                            ; preds = %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.kr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.kq, ptr noundef nonnull dereferenceable(9) @.str.33) #22
  %.not404 = icmp eq i32 %i.kr, 0
  br i1 %.not404, label %bb.bn, label %.thread

bb.bn:                                            ; preds = %bb.bm
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !2273
  %i.ku = and i32 %i.kt, 65536
  %.not405 = icmp eq i32 %i.ku, 0
  br i1 %.not405, label %.preheader699, label %.thread

.preheader699:                                    ; preds = %bb.bn
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.kv, align 4, !tbaa !2234
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 187224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5376) %i.kw, i8 0, i64 5376, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bc, %.preheader699, %bb.bn, %bb.bm
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 768416 ; 18 uses
  %.unpack406 = load i64, ptr %i.kx, align 8, !tbaa !2228 ; 2 uses
  %.elt407 = getelementptr inbounds nuw i8, ptr %0, i64 768424 ; 17 uses
  %.unpack408 = load i64, ptr %.elt407, align 8, !tbaa !2228 ; 2 uses
  %i.ky = icmp eq i64 %.unpack406, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.kz = icmp eq i64 %.unpack408, 0
  %i.la = and i1 %i.ky, %i.kz
  br i1 %i.la, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.thread
  invoke void @_ZN6LibRaw16nikon_read_curveEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %._crit_edge868 unwind label %bb.m

._crit_edge868:                                   ; preds = %bb.bo
  %.unpack409.pre = load i64, ptr %i.kx, align 8, !tbaa !2228
  %.unpack411.pre = load i64, ptr %.elt407, align 8, !tbaa !2228
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge868, %.thread
  %.unpack411 = phi i64 [ %.unpack411.pre, %._crit_edge868 ], [ %.unpack408, %.thread ]
  %.unpack409 = phi i64 [ %.unpack409.pre, %._crit_edge868 ], [ %.unpack406, %.thread ] ; 2 uses
  %i.lb = icmp eq i64 %.unpack409, ptrtoint (ptr @_ZN6LibRaw22lossless_jpeg_load_rawEv to i64)
  %i.lc = icmp eq i64 %.unpack411, 0              ; 2 uses
  %i.ld = and i1 %i.lb, %i.lc
  br i1 %i.ld, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.lf = load i16, ptr %i.le, align 8, !tbaa !2274
  %.not412 = icmp eq i16 %i.lf, 0
  br i1 %.not412, label %.thread587thread-pre-split, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lg = load i32, ptr %i.ar, align 4, !tbaa !2250 ; 2 uses
  %i.lh = icmp eq i32 %i.lg, 29
  br i1 %i.lh, label %bb.bs, label %.thread587

bb.bs:                                            ; preds = %bb.br
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.lj = tail call i32 @strncasecmp(ptr noundef nonnull %i.li, ptr noundef nonnull @.str.34, i64 noundef 9) #22
  %.not413 = icmp eq i32 %i.lj, 0
  br i1 %.not413, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lk = tail call i32 @strncasecmp(ptr noundef nonnull %i.li, ptr noundef nonnull @.str.35, i64 noundef 9) #22
  %.not414 = icmp eq i32 %i.lk, 0
  br i1 %.not414, label %bb.bu, label %.thread587thread-pre-split

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 0, ptr %i.ll, align 8, !tbaa !2230
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4501, ptr %i.lm, align 8, !tbaa !2229
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.ln, i8 0, i64 16416, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.lo, i8 0, i64 128, i1 false)
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.lp, align 8, !tbaa !2275
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !2226
  %i.ls = or i32 %i.lr, 512
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !2226
  br label %.thread587thread-pre-split

bb.bv:                                            ; preds = %bb.bp
  %i.lt = icmp eq i64 %.unpack409, ptrtoint (ptr @_ZN6LibRaw18panasonic_load_rawEv to i64)
  %i.lu = and i1 %i.lt, %i.lc
  br i1 %i.lu, label %bb.bw, label %.thread587thread-pre-split

bb.bw:                                            ; preds = %bb.bv
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 381908
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !2276 ; 2 uses
  %.off = add i32 %i.lw, -6
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %.preheader698, label %bb.bx

.preheader698:                                    ; preds = %bb.bw
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 381640
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ly, ptr noundef nonnull align 8 dereferenceable(12) %i.lx, i64 12, i1 false), !tbaa !2275
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !2275
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !2275
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.mc, align 4, !tbaa !2275
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.md, align 8, !tbaa !2275
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 0, ptr %i.me, align 8, !tbaa !2230
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !2275
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !2275
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !2275
  %.561 = tail call i32 @llvm.umax.i32(i32 %i.mi, i32 %i.mk)
  %spec.select655 = tail call i32 @llvm.umax.i32(i32 %i.mg, i32 %.561)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %spec.select655, ptr %i.ml, align 8, !tbaa !2229
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.preheader698
  switch i32 %i.lw, label %.thread587thread-pre-split [
    i32 6, label %bb.by
    i32 7, label %bb.cj
    i32 8, label %bb.cn
  ]

bb.by:                                            ; preds = %bb.bx
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !2218 ; 2 uses
  %i.mp = insertelement <2 x i16> poison, i16 %i.mo, i64 0
  %i.mq = shufflevector <2 x i16> %i.mp, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.mr = udiv <2 x i16> %i.mq, <i16 11, i16 14>
  %i.ms = zext nneg <2 x i16> %i.mr to <2 x i32>
  %i.mt = shl nuw nsw <2 x i32> %i.ms, splat (i32 4) ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !2277 ; 2 uses
  %.not421 = icmp eq i64 %i.mv, 0
  br i1 %.not421, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.mw = load ptr, ptr %i.z, align 8, !tbaa !2214 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !84
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = invoke noundef i64 %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw)
          to label %bb.ca unwind label %bb.cb, !call_target !2206

bb.ca:                                            ; preds = %bb.bz
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !2217
  %i.nd = sub nsw i64 %i.na, %i.nc
  %.pre871 = load i16, ptr %i.mn, align 2, !tbaa !2218
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ne = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.jg

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %i.nf = phi i16 [ %i.mo, %bb.by ], [ %.pre871, %bb.ca ] ; 2 uses
  %.0325 = phi i64 [ %i.mv, %bb.by ], [ %i.nd, %bb.ca ] ; 2 uses
  %i.ng = urem i16 %i.nf, 11
  %i.nh = icmp eq i16 %i.ng, 0
  br i1 %i.nh, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ni = load i16, ptr %i.mm, align 8, !tbaa !2219
  %i.nj = zext i16 %i.ni to i64
  %i.nk = extractelement <2 x i32> %i.mt, i64 0
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = mul nuw nsw i64 %i.nl, %i.nj
  %i.nn = icmp eq i64 %i.nm, %.0325
  br i1 %i.nn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread587thread-pre-split

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.no = urem i16 %i.nf, 14
  %i.np = icmp eq i16 %i.no, 0
  br i1 %i.np, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.nq = load i16, ptr %i.mm, align 8, !tbaa !2219
  %i.nr = zext i16 %i.nq to i64
  %i.ns = extractelement <2 x i32> %i.mt, i64 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = mul nuw nsw i64 %i.nt, %i.nr
  %i.nv = icmp eq i64 %i.nu, %.0325
  br i1 %i.nv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread587thread-pre-split

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nw, align 8, !tbaa !2233
  br label %.thread587thread-pre-split

bb.cj:                                            ; preds = %bb.bx
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !2278
  %i.nz = icmp eq i32 %i.ny, 14
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !2218 ; 2 uses
  %.rhs.trunc650 = select i1 %i.nz, i16 9, i16 10 ; 2 uses
  %i.oc = urem i16 %i.ob, %.rhs.trunc650
  %i.od = udiv i16 %i.ob, %.rhs.trunc650
  %i.oe = icmp eq i16 %i.oc, 0
  br i1 %i.oe, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.zext654 = zext nneg i16 %i.od to i64
  %i.of = shl nuw nsw i64 %.zext654, 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oh = load i16, ptr %i.og, align 8, !tbaa !2219
  %i.oi = zext i16 %i.oh to i64
  %i.oj = mul nuw nsw i64 %i.of, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !2277
  %i.om = icmp eq i64 %i.oj, %i.ol
  br i1 %i.om, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC7_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread587thread-pre-split

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.on, align 8, !tbaa !2233
  br label %.thread587thread-pre-split

bb.cn:                                            ; preds = %bb.bx
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.op = load i16, ptr %i.oo, align 4, !tbaa !2279
  %.not418 = icmp eq i16 %i.op, 0
  br i1 %.not418, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC8_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread587thread-pre-split

bb.cp:                                            ; preds = %bb.cn
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.oq, align 8, !tbaa !2233
  br label %.thread587thread-pre-split

.thread587thread-pre-split:                       ; preds = %bb.bv, %bb.co, %bb.cp, %bb.ch, %bb.ci, %bb.ce, %bb.cm, %bb.cl, %bb.bx, %bb.bu, %bb.bt, %bb.bq
  %.pr637 = load i32, ptr %i.ar, align 4, !tbaa !2250
  br label %.thread587

.thread587:                                       ; preds = %.thread587thread-pre-split, %bb.br
  %2 = phi i32 [ %.pr637, %.thread587thread-pre-split ], [ %i.lg, %bb.br ] ; 2 uses
  switch i32 %2, label %.thread592 [
    i32 43, label %bb.cq
    i32 63, label %bb.cw
    i32 8, label %bb.cy
  ]

bb.cq:                                            ; preds = %.thread587
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.os = tail call i32 @strncasecmp(ptr noundef nonnull %i.or, ptr noundef nonnull @.str.36, i64 noundef 1) #22
  %.not424 = icmp eq i32 %i.os, 0
  br i1 %.not424, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ot = tail call i32 @strcasecmp(ptr noundef nonnull %i.or, ptr noundef nonnull @.str.37) #22
  %.not425 = icmp eq i32 %i.ot, 0
  br i1 %.not425, label %bb.cs, label %.thread592.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !2218
  %i.ox = zext i16 %i.ow to i32                   ; 2 uses
  %i.oy = mul nuw nsw i32 %i.ox, 7
  %i.oz = lshr i32 %i.oy, 2
  %i.pa = uitofp nsz nneg i32 %i.oz to float
  %i.pb = fmul reassoc nnan nsz arcp contract afn float %i.pa, 6.250000e-02
  %i.pc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.pb)
  %i.pd = fptoui float %i.pc to i32
  %i.pe = load i16, ptr %i.ou, align 8, !tbaa !2219 ; 2 uses
  %i.pf = zext i16 %i.pe to i32
  %i.pg = shl nuw nsw i32 %i.pf, 4
  %i.ph = mul i32 %i.pg, %i.pd
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !2277 ; 2 uses
  %i.pl = icmp eq i64 %i.pk, %i.pi
  br i1 %i.pl, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.pm = mul nuw nsw i32 %i.ox, 21
  %i.pn = lshr i32 %i.pm, 2
  %i.po = uitofp nsz nneg i32 %i.pn to float
  %i.pp = fmul reassoc nnan nsz arcp contract afn float %i.po, 6.250000e-02
  %i.pq = tail call reassoc nnan nsz arcp contract afn float @llvm.ceil.f32(float %i.pp)
  %i.pr = uitofp i16 %i.pe to float
  %i.ps = fmul reassoc nnan nsz arcp contract afn float %i.pr, 1.600000e+01
  %i.pt = fmul reassoc nsz arcp contract afn float %i.ps, %i.pq
  %i.pu = sitofp reassoc nsz arcp contract afn i64 %i.pk to float
  %i.pv = fcmp reassoc nsz arcp contract afn oeq float %i.pt, %i.pu
  br i1 %i.pv, label %bb.cv, label %.thread592.thread

bb.cv:                                            ; preds = %bb.cu
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.pw, align 8, !tbaa !2224
  br label %.thread592.thread

bb.cw:                                            ; preds = %.thread587
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.py = load i32, ptr %i.px, align 8, !tbaa !2229 ; 3 uses
  %.not428 = icmp eq i32 %i.py, 0
  br i1 %.not428, label %.thread592.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !2275 ; 3 uses
  %i.qb = icmp ule i32 %i.qa, %i.py
  %i.qc = shl i32 %i.py, 2
  %.not429 = icmp ugt i32 %i.qa, %i.qc
  %or.cond563 = or i1 %i.qb, %.not429
  br i1 %or.cond563, label %.thread592.thread, label %.preheader697.preheader

.preheader697.preheader:                          ; preds = %bb.cx
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !2275
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.qg = load <2 x i32>, ptr %i.qf, align 4, !tbaa !2275
  %i.qh = insertelement <4 x i32> poison, i32 %i.qa, i64 0
  %i.qi = insertelement <4 x i32> %i.qh, i32 %i.qe, i64 1
  %i.qj = shufflevector <2 x i32> %i.qg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qk = shufflevector <4 x i32> %i.qi, <4 x i32> %i.qj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ql = lshr <4 x i32> %i.qk, splat (i32 2)
  store <4 x i32> %i.ql, ptr %i.pz, align 4, !tbaa !2275
  br label %.thread592.thread

bb.cy:                                            ; preds = %.thread587
  %i.qm = load i32, ptr %i.jt, align 4, !tbaa !2249
  %.not430 = icmp eq i32 %i.qm, 0
  br i1 %.not430, label %bb.cz, label %..thread596_crit_edge

..thread596_crit_edge:                            ; preds = %bb.cy
  %.unpack437.pre = load i64, ptr %i.kx, align 8, !tbaa !2228
  %.unpack439.pre = load i64, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread596.a

bb.cz:                                            ; preds = %bb.cy
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 2062
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !2280 ; 4 uses
  %.not431 = icmp eq i16 %i.qp, -1
  br i1 %.not431, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.qr = load i16, ptr %i.qq, align 4, !tbaa !2281
  %.not432 = icmp eq i16 %i.qr, 0
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  br i1 %.not432, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qt = load i16, ptr %i.qn, align 4, !tbaa !2282
  %i.qu = load <2 x i16>, ptr %i.qs, align 2, !tbaa !2263
  %i.qv = insertelement <2 x i16> poison, i16 %i.qp, i64 0
  %i.qw = insertelement <2 x i16> %i.qv, i16 %i.qt, i64 1
  %i.qx = add <2 x i16> %i.qu, %i.qw
  store <2 x i16> %i.qx, ptr %i.qs, align 2, !tbaa !2263
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i16 %i.qp, ptr %i.qs, align 2, !tbaa !2270
  %i.qy = load i16, ptr %i.qn, align 4, !tbaa !2282 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.qy, ptr %i.qz, align 8, !tbaa !2271
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.rc = load <2 x i16>, ptr %i.rb, align 8, !tbaa !2263
  %i.rd = insertelement <2 x i16> poison, i16 %i.qy, i64 0
  %i.re = insertelement <2 x i16> %i.rd, i16 %i.qp, i64 1
  %i.rf = sub <2 x i16> %i.rc, %i.re
  %i.rg = add <2 x i16> %i.rf, splat (i16 1)
  %i.rh = shufflevector <2 x i16> %i.rg, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.rh, ptr %i.ra, align 2, !tbaa !2263
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.dc
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 192676
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !2283 ; 6 uses
  %i.rk = icmp ugt i32 %i.rj, 13
  %.unpack437.pre872 = load i64, ptr %i.kx, align 8, !tbaa !2228 ; 4 uses
  %.unpack439.pre874 = load i64, ptr %.elt407, align 8, !tbaa !2228 ; 4 uses
  br i1 %i.rk, label %.thread596.a, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rl = icmp ne i64 %.unpack437.pre872, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.rm = icmp ne i64 %.unpack439.pre874, 0
  %i.rn = or i1 %i.rl, %i.rm
  br i1 %i.rn, label %bb.df, label %.thread596.a

bb.df:                                            ; preds = %bb.de
  %notmask = shl nsw i32 -1, %i.rj
  %i.ro = xor i32 %notmask, -1
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !2284 ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, %i.ro
  br i1 %i.rr, label %.preheader696, label %.thread596.a

.preheader696:                                    ; preds = %bb.df
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.rt = sub nuw nsw i32 14, %i.rj
  %i.ru = load <4 x i32>, ptr %i.rs, align 4, !tbaa !2275
  %i.rv = insertelement <4 x i32> poison, i32 %i.rt, i64 0
  %i.rw = shufflevector <4 x i32> %i.rv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rx = lshr <4 x i32> %i.ru, %i.rw
  store <4 x i32> %i.rx, ptr %i.rs, align 4, !tbaa !2275
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !2285
  %i.sc = sub nuw nsw i32 14, %i.rj
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !2286
  %i.sf = lshr exact i32 16384, %i.rj             ; 2 uses
  %i.sg = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.rj, i64 1
  %i.sh = lshr exact <4 x i32> <i32 1, i32 16384, i32 poison, i32 poison>, %i.sg
  %i.si = shufflevector <4 x i32> %i.sh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.sj = load <2 x i32>, ptr %i.ry, align 8, !tbaa !2275
  %i.sk = load <2 x i32>, ptr %i.rz, align 8, !tbaa !2275
  %i.sl = insertelement <2 x i32> poison, i32 %i.sf, i64 0
  %i.sm = shufflevector <2 x i32> %i.sl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.sn = sdiv <2 x i32> %i.sk, %i.sm
  store <2 x i32> %i.sn, ptr %i.rz, align 8, !tbaa !2275
  %i.so = sdiv i32 %i.sb, %i.sf
  store i32 %i.so, ptr %i.sa, align 8, !tbaa !2285
  %i.sp = lshr i32 %i.rq, %i.sc
  %i.sq = insertelement <4 x i32> poison, i32 %i.sp, i64 0
  %i.sr = insertelement <4 x i32> %i.sq, i32 %i.se, i64 1
  %i.ss = shufflevector <2 x i32> %i.sj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.st = shufflevector <4 x i32> %i.sr, <4 x i32> %i.ss, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.su = sdiv <4 x i32> %i.st, %i.si
  store <4 x i32> %i.su, ptr %i.rp, align 8, !tbaa !2275
  br label %.thread596.a

.thread596.a:                                     ; preds = %..thread596_crit_edge, %.preheader696, %bb.dd, %bb.de, %bb.df
  %.unpack439 = phi i64 [ %.unpack439.pre, %..thread596_crit_edge ], [ %.unpack439.pre874, %.preheader696 ], [ %.unpack439.pre874, %bb.dd ], [ 0, %bb.de ], [ %.unpack439.pre874, %bb.df ]
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
    i16 5504, label %bb.ga
  ]

bb.fw:                                            ; preds = %.thread609
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 3925, ptr %i.agx, align 2, !tbaa !2222
  br label %.thread625

bb.fx:                                            ; preds = %.thread609
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4256, ptr %i.agy, align 2, !tbaa !2222
  br label %.thread625

bb.fy:                                            ; preds = %.thread609
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aha = load i16, ptr %i.agz, align 4, !tbaa !2223
  %i.ahb = icmp ult i16 %i.aha, 3280
  br i1 %i.ahb, label %bb.fz, label %.thread625

bb.fz:                                            ; preds = %bb.fy
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4920, ptr %i.ahc, align 2, !tbaa !2222
  br label %.thread625

bb.ga:                                            ; preds = %.thread609
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ahe = load i16, ptr %i.ahd, align 4, !tbaa !2223
  %i.ahf = icmp ugt i16 %i.ahe, 3664
  %i.ahg = select i1 %i.ahf, i16 5496, i16 5472
  %i.ahh = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.ahg, ptr %i.ahh, align 2, !tbaa !2222
  br label %.thread625

bb.gb:                                            ; preds = %.thread601
  %.unpack475 = load i64, ptr %i.kx, align 8, !tbaa !2228
  %.unpack477 = load i64, ptr %.elt407, align 8, !tbaa !2228
  %i.ahi = icmp eq i64 %.unpack475, ptrtoint (ptr @_ZN6LibRaw17sony_arq_load_rawEv to i64)
  %i.ahj = icmp eq i64 %.unpack477, 0
  %i.ahk = and i1 %i.ahi, %i.ahj
  br i1 %i.ahk, label %.sink.split960, label %bb.gc

.sink.split960:                                   ; preds = %bb.gb
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ahm = load i16, ptr %i.ahl, align 2, !tbaa !2218 ; 2 uses
  %i.ahn = icmp ugt i16 %i.ahm, 12000
  %i.aho = getelementptr inbounds nuw i8, ptr %0, i64 22
  %. = select i1 %i.ahn, i16 -64, i16 -32
  %i.ahp = add i16 %i.ahm, %.
  store i16 %i.ahp, ptr %i.aho, align 2, !tbaa !2222
  br label %bb.gc

bb.gc:                                            ; preds = %.sink.split960, %bb.gb
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 7 uses
  %i.ahr = tail call i32 @strncasecmp(ptr noundef nonnull %i.ahq, ptr noundef nonnull @.str.43, i64 noundef 8) #22
  %.not478 = icmp eq i32 %i.ahr, 0
  br i1 %.not478, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ahs = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahq, ptr noundef nonnull @.str.44) #22
  %.not479 = icmp eq i32 %i.ahs, 0
  br i1 %.not479, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !2218 ; 3 uses
  switch i16 %i.ahu, label %bb.gf [
    i16 5216, label %bb.gp
    i16 6304, label %bb.gp
  ]

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.ahv = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahq, ptr noundef nonnull @.str.45) #22
  %.not480 = icmp eq i32 %i.ahv, 0
  br i1 %.not480, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ahx = load i16, ptr %i.ahw, align 2, !tbaa !2218 ; 2 uses
  %i.ahy = add i16 %i.ahx, -4580
  %or.cond577 = icmp ult i16 %i.ahy, 440
  br i1 %or.cond577, label %bb.gp, label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.ahz = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahq, ptr noundef nonnull @.str.46) #22
  %.not481 = icmp eq i32 %i.ahz, 0
  br i1 %.not481, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aib = load i16, ptr %i.aia, align 2, !tbaa !2218
  %i.aic = icmp eq i16 %i.aib, 3968
  br i1 %i.aic, label %bb.gp, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.aid = tail call i32 @strncasecmp(ptr noundef nonnull %i.ahq, ptr noundef nonnull @.str.47, i64 noundef 7) #22
  %.not482 = icmp eq i32 %i.aid, 0
  br i1 %.not482, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aie = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahq, ptr noundef nonnull @.str.48) #22
  %.not483 = icmp eq i32 %i.aie, 0
  br i1 %.not483, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.aig = load i64, ptr %i.aif, align 8, !tbaa !2294
  %i.aih = icmp eq i64 %i.aig, 294
  br i1 %i.aih, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %bb.gj
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !2218 ; 2 uses
  %i.aik = add i16 %i.aij, -3751
  %or.cond578 = icmp ult i16 %i.aik, 369
  br i1 %or.cond578, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.ail = tail call i32 @strncasecmp(ptr noundef nonnull %i.ahq, ptr noundef nonnull @.str.49, i64 noundef 7) #22
  %.not484 = icmp eq i32 %i.ail, 0
  br i1 %.not484, label %bb.go, label %.thread625

bb.go:                                            ; preds = %bb.gn
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ain = load i16, ptr %i.aim, align 2, !tbaa !2218
  %i.aio = icmp eq i16 %i.ain, 2816
  br i1 %i.aio, label %bb.gp, label %.thread625

bb.gp:                                            ; preds = %bb.gm, %bb.gg, %bb.ge, %bb.ge, %bb.go, %bb.gi
  %i.aip = phi i16 [ %i.aij, %bb.gm ], [ %i.ahx, %bb.gg ], [ %i.ahu, %bb.ge ], [ %i.ahu, %bb.ge ], [ 2816, %bb.go ], [ 3968, %bb.gi ]
  %i.aiq = add nsw i16 %i.aip, -32
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.aiq, ptr %i.air, align 2, !tbaa !2222
  br label %.thread625

bb.gq:                                            ; preds = %.thread601, %.thread600
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ait = load i32, ptr %i.ais, align 8, !tbaa !2233
  %i.aiu = icmp eq i32 %i.ait, 4
  br i1 %i.aiu, label %bb.gr, label %.thread625

bb.gr:                                            ; preds = %bb.gq
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.aiw = load i32, ptr %i.aiv, align 8, !tbaa !2273
  %i.aix = and i32 %i.aiw, 1
  %.not485 = icmp eq i32 %i.aix, 0
  br i1 %.not485, label %.thread625, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i32 1, ptr %i.ais, align 8, !tbaa !2233
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.aiy, align 8, !tbaa !2224
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 4, ptr %i.aiz, align 4, !tbaa !2225
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ajb = load <4 x i16>, ptr %i.aja, align 4, !tbaa !2263
  %i.ajc = add <4 x i16> %i.ajb, <i16 -4, i16 -4, i16 2, i16 2>
  store <4 x i16> %i.ajc, ptr %i.aja, align 4, !tbaa !2263
  store i32 1, ptr %i.ad, align 8, !tbaa !2295
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 768432
  %i.aje = load <2 x i64>, ptr %i.kx, align 8, !tbaa !2228
  store <2 x i64> %i.aje, ptr %i.ajd, align 8, !tbaa !2296
  store i64 ptrtoint (ptr @_ZN6LibRaw21pentax_4shot_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread625

bb.gt:                                            ; preds = %.thread601
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ajg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajf, ptr noundef nonnull dereferenceable(9) @.str.50) #22
  %.not493 = icmp eq i32 %i.ajg, 0
  br i1 %.not493, label %bb.gu, label %.thread625

bb.gu:                                            ; preds = %bb.gt
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 153268
  store <4 x float> <float 2.510040e+00, float 1.000000e+00, float f0x3FA6F896, float 1.000000e+00>, ptr %i.ajh, align 4, !tbaa !2234
  br label %.thread625

bb.gv:                                            ; preds = %.thread601
  br i1 %i.xv, label %bb.gw, label %.thread625

bb.gw:                                            ; preds = %bb.gv
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ajj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aji, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #22
  %.not495 = icmp eq i32 %i.ajj, 0
  br i1 %.not495, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ajk = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aji, ptr noundef nonnull dereferenceable(5) @.str.52, i64 noundef 4) #22
  %.not496 = icmp eq i32 %i.ajk, 0
  br i1 %.not496, label %bb.gy, label %.thread625

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ajm = load i16, ptr %i.ajl, align 2, !tbaa !2218
  %i.ajn = lshr i16 %i.ajm, 1
  store i16 %i.ajn, ptr %i.ajl, align 2, !tbaa !2218
  store i64 ptrtoint (ptr @_ZN6LibRaw30unpacked_load_raw_fuji_f700s20Ev to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread625

.thread625:                                       ; preds = %bb.gq, %bb.gr, %bb.gs, %bb.gn, %bb.go, %bb.gp, %.thread609, %bb.fr, %bb.fu, %bb.fv, %bb.ft, %bb.fq, %bb.fs, %bb.fo, %bb.fn, %bb.fw, %bb.fz, %bb.ga, %bb.fx, %bb.fy, %.thread600, %bb.gt, %bb.gu, %bb.gy, %bb.gx, %bb.gv
  %i.ajo = phi i1 [ false, %.thread600 ], [ false, %bb.gt ], [ false, %bb.gu ], [ true, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ true, %bb.fy ], [ true, %bb.fx ], [ true, %bb.ga ], [ true, %bb.fz ], [ true, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ true, %.thread609 ], [ true, %bb.go ], [ true, %bb.gp ], [ false, %bb.gs ], [ false, %bb.gr ], [ false, %bb.gq ] ; 3 uses
  %i.ajp = phi i1 [ false, %.thread600 ], [ false, %bb.gt ], [ false, %bb.gu ], [ false, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ false, %bb.fy ], [ false, %bb.fx ], [ false, %bb.ga ], [ false, %bb.fz ], [ false, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ false, %.thread609 ], [ false, %bb.go ], [ false, %bb.gp ], [ true, %bb.gs ], [ true, %bb.gr ], [ true, %bb.gq ] ; 2 uses
  %.unpack498 = load i64, ptr %i.kx, align 8, !tbaa !2228 ; 3 uses
  %.unpack500 = load i64, ptr %.elt407, align 8, !tbaa !2228 ; 2 uses
  %i.ajq = icmp eq i64 %.unpack498, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.ajr = icmp eq i64 %.unpack500, 0             ; 2 uses
  %i.ajs = and i1 %i.ajq, %i.ajr
  br i1 %i.ajs, label %bb.gz, label %.loopexit691

bb.gz:                                            ; preds = %.thread625
  %i.ajt = icmp eq i32 %i.xu, 43
  br i1 %i.ajt, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %bb.gz
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !2226
  %.not501 = icmp eq i32 %i.ajv, 0
  br i1 %.not501, label %bb.hb, label %bb.hf

bb.hb:                                            ; preds = %bb.ha
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ajx = tail call i32 @strncasecmp(ptr noundef nonnull %i.ajw, ptr noundef nonnull @.str.53, i64 noundef 4) #22
  %.not502 = icmp eq i32 %i.ajx, 0
  br i1 %.not502, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ajy = tail call i32 @strcasecmp(ptr noundef nonnull %i.ajw, ptr noundef nonnull @.str.54) #22
  %.not503 = icmp eq i32 %i.ajy, 0
  br i1 %.not503, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !2277
  %i.akb = shl nsw i64 %i.aka, 1
  %i.akc = load i16, ptr %i.vq, align 8, !tbaa !2219
  %i.akd = zext i16 %i.akc to i64
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.akf = load i16, ptr %i.ake, align 2, !tbaa !2218
  %i.akg = zext i16 %i.akf to i64
  %i.akh = mul nuw nsw i64 %i.akd, 3
  %i.aki = mul nuw nsw i64 %i.akh, %i.akg
  %i.akj = and i64 %i.aki, 4294967295
  %i.akk = icmp eq i64 %i.akb, %i.akj
  br i1 %i.akk, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  store i32 80, ptr %i.aju, align 4, !tbaa !2226
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc, %bb.ha, %bb.gz
  br i1 %i.ajo, label %bb.hg, label %.thread629.a

bb.hg:                                            ; preds = %bb.hf
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.akm = load i32, ptr %i.akl, align 8, !tbaa !2229
  %i.akn = icmp ugt i32 %i.akm, 4095
  br i1 %i.akn, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i32 4095, ptr %i.akl, align 8, !tbaa !2229
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.akp = load i32, ptr %i.ako, align 8, !tbaa !2230 ; 2 uses
  %i.akq = icmp ugt i32 %i.akp, 256
  %.phi.trans.insert879 = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %.pre880 = load i32, ptr %.phi.trans.insert879, align 8, !tbaa !2275 ; 2 uses
  %i.akr = icmp ugt i32 %.pre880, 256
  %or.cond1001 = select i1 %i.akq, i1 true, i1 %i.akr
  br i1 %or.cond1001, label %.preheader690, label %.thread629.a

.preheader690:                                    ; preds = %bb.hi
  %i.aks = lshr i32 %i.akp, 2
  store i32 %i.aks, ptr %i.ako, align 8, !tbaa !2230
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !2275
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.akx = load <2 x i32>, ptr %i.akw, align 8, !tbaa !2275
  %i.aky = insertelement <4 x i32> poison, i32 %.pre880, i64 0
  %i.akz = insertelement <4 x i32> %i.aky, i32 %i.akv, i64 1
  %i.ala = shufflevector <2 x i32> %i.akx, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.alb = shufflevector <4 x i32> %i.akz, <4 x i32> %i.ala, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.alc = lshr <4 x i32> %i.alb, splat (i32 2)
  store <4 x i32> %i.alc, ptr %i.akt, align 8, !tbaa !2275
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.alf = load i32, ptr %i.ald, align 8, !tbaa !2275
  %i.alg = load i32, ptr %i.ale, align 4, !tbaa !2275
  %i.alh = mul i32 %i.alg, %i.alf
  %.not758 = icmp eq i32 %i.alh, 0
  br i1 %.not758, label %.thread629.a, label %.lr.ph742

.lr.ph742:                                        ; preds = %.preheader690, %.lr.ph742
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %.lr.ph742 ], [ 0, %.preheader690 ] ; 2 uses
  %i.ali = add nuw nsw i64 %indvars.iv823, 6
  %i.alj = and i64 %i.ali, 4294967295
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %i.alj ; 2 uses
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !2275
  %i.alm = lshr i32 %i.all, 2
  store i32 %i.alm, ptr %i.alk, align 4, !tbaa !2275
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 1 ; 2 uses
  %i.aln = load i32, ptr %i.ald, align 8, !tbaa !2275
  %i.alo = load i32, ptr %i.ale, align 4, !tbaa !2275
  %i.alp = mul i32 %i.alo, %i.aln
  %i.alq = zext i32 %i.alp to i64
  %i.alr = icmp samesign ult i64 %indvars.iv.next824, %i.alq
  br i1 %i.alr, label %.lr.ph742, label %.thread629.a, !llvm.loop !2242

.loopexit691:                                     ; preds = %.thread625
  %i.als = icmp eq i64 %.unpack498, ptrtoint (ptr @_ZN6LibRaw18nikon_yuv_load_rawEv to i64)
  %i.alt = and i1 %i.als, %i.ajr
  br i1 %i.alt, label %vector.ph983, label %.thread629.a

vector.ph983:                                     ; preds = %.loopexit691
  store i64 ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.alw, align 8, !tbaa !2224
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 381832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.alv, i8 0, i64 16420, i1 false)
  store i32 3, ptr %i.alx, align 8, !tbaa !2297
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.aly, align 4, !tbaa !2225
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %vector.ph983
  %index985 = phi i64 [ 0, %vector.ph983 ], [ %index.next987, %vector.body984 ] ; 2 uses
  %vec.ind986 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph983 ], [ %vec.ind.next988, %vector.body984 ] ; 2 uses
  %i.alz = uitofp nneg <16 x i32> %vec.ind986 to <16 x double> ; 4 uses
  %i.ama = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alz, splat (double f0x3F35555555555555) ; 2 uses
  %i.amb = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.ama, %i.ama ; 2 uses
  %i.amc = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alz, splat (double f0xBE975608FECE194D)
  %i.amd = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.amb, splat (double f0x3F667BCEF737735E)
  %i.ame = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alz, splat (double f0xBEB267E8FF27CE95)
  %i.amf = fmul reassoc nsz arcp contract afn <16 x double> %i.ame, %i.amb
  %i.amg = fadd reassoc nnan nsz arcp contract afn <16 x double> %i.amc, splat (double f0x3EF3C65EA647FFF0)
  %i.amh = fadd reassoc nsz arcp contract afn <16 x double> %i.amg, %i.amd
  %i.ami = fadd reassoc nsz arcp contract afn <16 x double> %i.amh, %i.amf
  %i.amj = fmul reassoc nsz arcp contract afn <16 x double> %i.ami, %i.alz
  %i.amk = tail call reassoc nsz arcp contract afn <16 x double> @llvm.exp.v16f64(<16 x double> %i.amj)
  %i.aml = fsub reassoc nsz arcp contract afn <16 x double> splat (double 1.000000e+00), %i.amk ; 2 uses
  %i.amm = fcmp reassoc nsz arcp contract afn olt <16 x double> %i.aml, zeroinitializer
  %i.amn = select <16 x i1> %i.amm, <16 x double> zeroinitializer, <16 x double> %i.aml
  %i.amo = fmul reassoc nsz arcp contract afn <16 x double> %i.amn, splat (double 1.638300e+04)
  %i.amp = fptoui <16 x double> %i.amo to <16 x i16>
  %i.amq = getelementptr inbounds nuw [2 x i8], ptr %i.alu, i64 %index985
  store <16 x i16> %i.amp, ptr %i.amq, align 8, !tbaa !2263
  %index.next987 = add nuw i64 %index985, 16      ; 2 uses
  %vec.ind.next988 = add <16 x i32> %vec.ind986, splat (i32 16)
  %i.amr = icmp eq i64 %index.next987, 3072
  br i1 %i.amr, label %scalar.ph, label %vector.body984, !llvm.loop !2243

scalar.ph:                                        ; preds = %vector.body984
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 11744
  store i16 16287, ptr %i.ams, align 8, !tbaa !2263
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 153380
  store float 1.000000e+00, ptr %i.amt, align 4, !tbaa !2234
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 153384
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 153400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.amv, align 8, !tbaa !2234
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 153404
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 153420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.amw, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.amx, align 4, !tbaa !2234
  br label %.thread629.a

.thread629.a:                                     ; preds = %.lr.ph742, %bb.hi, %.preheader690, %scalar.ph, %bb.hf, %.loopexit691
  %3 = phi i1 [ %i.ajo, %scalar.ph ], [ false, %bb.hf ], [ true, %bb.hi ], [ %i.ajo, %.loopexit691 ], [ true, %.preheader690 ], [ true, %.lr.ph742 ]
  %.unpack513 = phi i64 [ 0, %scalar.ph ], [ 0, %bb.hf ], [ 0, %bb.hi ], [ %.unpack500, %.loopexit691 ], [ 0, %.preheader690 ], [ 0, %.lr.ph742 ]
  %.unpack511 = phi i64 [ ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), %scalar.ph ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hf ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hi ], [ %.unpack498, %.loopexit691 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.preheader690 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.lr.ph742 ] ; 6 uses
  %i.amy = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.amz = icmp eq i64 %.unpack513, 0             ; 5 uses
  %i.ana = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.anb = or i1 %i.amy, %i.ana
  %i.anc = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw28nikon_load_padded_packed_rawEv to i64)
  %or.cond580666 = or i1 %i.anc, %i.anb
  %i.and = icmp eq i32 %i.xu, 43                  ; 2 uses
  %i.ane = and i1 %i.and, %or.cond580666
  %or.cond660 = and i1 %i.amz, %i.ane
  br i1 %or.cond660, label %bb.hj, label %.loopexit687

bb.hj:                                            ; preds = %.thread629.a
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ang = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.anf, ptr noundef nonnull dereferenceable(8) @.str.55, i64 noundef 7) #22
  %.not514 = icmp eq i32 %i.ang, 0
  br i1 %.not514, label %.loopexit687, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !2227
  %i.anj = icmp eq i32 %i.ani, 12
  br i1 %i.anj, label %.preheader686, label %.loopexit687

.preheader686:                                    ; preds = %bb.hk
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.ank, align 8, !tbaa !2229
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.anm = load i32, ptr %i.anl, align 8, !tbaa !2230
  %i.ann = lshr i32 %i.anm, 2
  store i32 %i.ann, ptr %i.anl, align 8, !tbaa !2230
  %i.ano = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 3 uses
  %i.anp = load <4 x i32>, ptr %i.ano, align 8, !tbaa !2275
  %i.anq = lshr <4 x i32> %i.anp, splat (i32 2)
  store <4 x i32> %i.anq, ptr %i.ano, align 8, !tbaa !2275
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.ant = load i32, ptr %i.anr, align 8, !tbaa !2275
  %i.anu = load i32, ptr %i.ans, align 4, !tbaa !2275
  %i.anv = mul i32 %i.anu, %i.ant
  %.not759 = icmp eq i32 %i.anv, 0
  br i1 %.not759, label %.loopexit687, label %.lr.ph748

.lr.ph748:                                        ; preds = %.preheader686, %.lr.ph748
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %.lr.ph748 ], [ 0, %.preheader686 ] ; 2 uses
  %i.anw = add nuw nsw i64 %indvars.iv842, 6
  %i.anx = and i64 %i.anw, 4294967295
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.anx ; 2 uses
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !2275
  %i.aoa = lshr i32 %i.anz, 2
  store i32 %i.aoa, ptr %i.any, align 4, !tbaa !2275
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1 ; 2 uses
  %i.aob = load i32, ptr %i.anr, align 8, !tbaa !2275
  %i.aoc = load i32, ptr %i.ans, align 4, !tbaa !2275
  %i.aod = mul i32 %i.aoc, %i.aob
  %i.aoe = zext i32 %i.aod to i64
  %i.aof = icmp samesign ult i64 %indvars.iv.next843, %i.aoe
  br i1 %i.aof, label %.lr.ph748, label %.loopexit687, !llvm.loop !2244

.loopexit687:                                     ; preds = %.lr.ph748, %.preheader686, %.thread629.a, %bb.hk, %bb.hj
  %i.aog = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64) ; 2 uses
  %i.aoh = and i1 %i.aog, %i.amz
  br i1 %i.aoh, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.loopexit687
  %i.aoi = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 9, ptr %i.aoi, align 8, !tbaa !2298
  br label %bb.hv

bb.hm:                                            ; preds = %.loopexit687
  switch i32 %i.xu, label %.thread631.a [
    i32 8, label %bb.hn
    i32 43, label %bb.hp
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.aoj = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !2275
  %i.aol = icmp ugt i32 %i.aok, 7
  br i1 %i.aol, label %bb.ho, label %.thread631.a

bb.ho:                                            ; preds = %bb.hn
  %i.aom = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.aon = load i32, ptr %i.aom, align 8, !tbaa !2275
  %.not518 = icmp eq i32 %i.aon, 0
  br i1 %.not518, label %.thread631.a, label %.thread633

.thread633:                                       ; preds = %bb.ho
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 3, ptr %i.aoo, align 8, !tbaa !2298
  br label %bb.hz

bb.hp:                                            ; preds = %bb.hm
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 2196
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !2299
  %i.aor = icmp eq i32 %i.aoq, 1
  br i1 %i.aor, label %.thread632.a, label %.thread631.a

.thread632.a:                                     ; preds = %bb.hp
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 5, ptr %i.aos, align 8, !tbaa !2298
  br label %bb.hw

.thread631.a:                                     ; preds = %bb.hm, %bb.hn, %bb.ho, %bb.hp
  br i1 %i.ajp, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %.thread631.a
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 4129
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !2300
  %i.aov = and i8 %i.aou, 1
  %.not519 = icmp eq i8 %i.aov, 0
  br i1 %.not519, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 17, ptr %i.aow, align 8, !tbaa !2298
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hq, %.thread631.a
  %i.aox = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw19sony_ycbcr_load_rawEv to i64)
  %i.aoy = and i1 %i.aox, %3
  %or.cond662 = and i1 %i.aoy, %i.amz
  %i.aoz = getelementptr inbounds nuw i8, ptr %0, i64 192600 ; 2 uses
  br i1 %or.cond662, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 33, ptr %i.aoz, align 8, !tbaa !2298
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  store i32 0, ptr %i.aoz, align 8, !tbaa !2298
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hr, %bb.hu, %bb.ht, %bb.hl
  br i1 %i.and, label %bb.hw, label %bb.hz

bb.hw:                                            ; preds = %.thread632.a, %bb.hv
  %i.apa = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !2275
  %.not523 = icmp eq i32 %i.apb, 0
  br i1 %.not523, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.apd = load i32, ptr %i.apc, align 8, !tbaa !2229 ; 2 uses
  %i.ape = icmp ult i32 %i.apd, 1025
  %.demorgan = and i1 %i.aog, %i.amz
  %or.cond963 = or i1 %i.ape, %.demorgan
  br i1 %or.cond963, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.apf = uitofp reassoc nsz arcp contract afn i32 %i.apd to float
  %i.apg = fmul reassoc nnan nsz arcp contract afn float %i.apf, f0x3F6F4098
  %i.aph = fptosi float %i.apg to i64
  %i.api = trunc i64 %i.aph to i32
  %i.apj = insertelement <4 x i32> poison, i32 %i.api, i64 0
  %i.apk = shufflevector <4 x i32> %i.apj, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.apk, ptr %i.apa, align 4, !tbaa !2275
  br label %bb.hz

bb.hz:                                            ; preds = %.thread633, %bb.hy, %bb.hx, %bb.hw, %bb.hv
  br i1 %i.ajp, label %bb.ia, label %.loopexit

bb.ia:                                            ; preds = %bb.hz
  %i.apl = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.apm = load i64, ptr %i.apl, align 8, !tbaa !2294
  %i.apn = icmp eq i64 %i.apm, 77012
  br i1 %i.apn, label %vector.body992, label %.loopexit

vector.body992:                                   ; preds = %bb.ia
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 3 uses
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.apo, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %i.app = extractelement <8 x ptr> %wide.gep, i64 0
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 4
  %wide.vec = load <32 x i32>, ptr %i.apq, align 4, !tbaa !2275
  %strided.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.apr = icmp ne <8 x i32> %strided.vec, zeroinitializer ; 4 uses
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> %i.apr, <8 x i32> poison), !tbaa !2275
  %i.aps = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather to <8 x float>
  %i.apt = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aps, splat (float 1.050300e+00)
  %i.apu = fptosi <8 x float> %i.apt to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.apu, <8 x ptr> align 8 %wide.gep, <8 x i1> %i.apr), !tbaa !2275
  %wide.gep995 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  %wide.masked.gather996 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep995, <8 x i1> %i.apr, <8 x i32> poison), !tbaa !2275
  %i.apv = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather996 to <8 x float>
  %i.apw = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.apv, splat (float 2.286700e+00)
  %i.apx = fptosi <8 x float> %i.apw to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.apx, <8 x ptr> align 8 %wide.gep995, <8 x i1> %i.apr), !tbaa !2275
  %wide.gep.1 = getelementptr inbounds nuw [16 x i8], ptr %i.apo, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 4 uses
  %i.apy = extractelement <8 x ptr> %wide.gep.1, i64 0
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 4
  %wide.vec.1 = load <32 x i32>, ptr %i.apz, align 4, !tbaa !2275
  %strided.vec.1 = shufflevector <32 x i32> %wide.vec.1, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aqa = icmp ne <8 x i32> %strided.vec.1, zeroinitializer ; 4 uses
  %wide.masked.gather.1 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep.1, <8 x i1> %i.aqa, <8 x i32> poison), !tbaa !2275
  %i.aqb = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather.1 to <8 x float>
  %i.aqc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqb, splat (float 1.050300e+00)
  %i.aqd = fptosi <8 x float> %i.aqc to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aqd, <8 x ptr> align 8 %wide.gep.1, <8 x i1> %i.aqa), !tbaa !2275
  %wide.gep995.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 8 ; 2 uses
  %wide.masked.gather996.1 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep995.1, <8 x i1> %i.aqa, <8 x i32> poison), !tbaa !2275
  %i.aqe = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather996.1 to <8 x float>
  %i.aqf = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqe, splat (float 2.286700e+00)
  %i.aqg = fptosi <8 x float> %i.aqf to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aqg, <8 x ptr> align 8 %wide.gep995.1, <8 x i1> %i.aqa), !tbaa !2275
  %wide.gep.2 = getelementptr inbounds nuw [16 x i8], ptr %i.apo, <8 x i64> <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23> ; 4 uses
  %i.aqh = extractelement <8 x ptr> %wide.gep.2, i64 0
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %wide.vec.2 = load <32 x i32>, ptr %i.aqi, align 4, !tbaa !2275
  %strided.vec.2 = shufflevector <32 x i32> %wide.vec.2, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aqj = icmp ne <8 x i32> %strided.vec.2, zeroinitializer ; 4 uses
  %wide.masked.gather.2 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep.2, <8 x i1> %i.aqj, <8 x i32> poison), !tbaa !2275
  %i.aqk = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather.2 to <8 x float>
  %i.aql = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqk, splat (float 1.050300e+00)
  %i.aqm = fptosi <8 x float> %i.aql to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aqm, <8 x ptr> align 8 %wide.gep.2, <8 x i1> %i.aqj), !tbaa !2275
  %wide.gep995.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 8 ; 2 uses
  %wide.masked.gather996.2 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep995.2, <8 x i1> %i.aqj, <8 x i32> poison), !tbaa !2275
  %i.aqn = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather996.2 to <8 x float>
  %i.aqo = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqn, splat (float 2.286700e+00)
  %i.aqp = fptosi <8 x float> %i.aqo to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aqp, <8 x ptr> align 8 %wide.gep995.2, <8 x i1> %i.aqj), !tbaa !2275
  %i.aqq = getelementptr inbounds nuw i8, ptr %0, i64 187612
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !2275
  %.not543 = icmp eq i32 %i.aqr, 0
  br i1 %.not543, label %.preheader684, label %bb.ib

bb.ib:                                            ; preds = %vector.body992
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 187608 ; 2 uses
  %i.aqt = tail call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 8 %i.aqs, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !2275
  %i.aqu = shufflevector <3 x i32> %i.aqt, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.aqv = sitofp <2 x i32> %i.aqu to <2 x float>
  %i.aqw = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.aqv, <float 1.050300e+00, float 2.286700e+00>
  %i.aqx = shufflevector <2 x float> %i.aqw, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.aqy = fptosi <3 x float> %i.aqx to <3 x i32>
  tail call void @llvm.masked.store.v3i32.p0(<3 x i32> %i.aqy, ptr align 8 %i.aqs, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !2275
  br label %.preheader684

.preheader684:                                    ; preds = %vector.body992, %bb.ib
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 191320 ; 4 uses
  br label %bb.ic

.preheader683:                                    ; preds = %bb.ik
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 187240
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.arc = load <4 x i32>, ptr %i.ara, align 8, !tbaa !2275
  %i.ard = sitofp <4 x i32> %i.arc to <4 x float>
  store <4 x float> %i.ard, ptr %i.arb, align 4, !tbaa !2234
  br label %.loopexit

bb.ic:                                            ; preds = %bb.ik, %.preheader684
  %indvars.iv849 = phi i64 [ 0, %.preheader684 ], [ %indvars.iv.next850.3, %bb.ik ] ; 5 uses
  %i.are = getelementptr inbounds nuw [20 x i8], ptr %i.aqz, i64 %indvars.iv849 ; 3 uses
  %i.arf = load float, ptr %i.are, align 8, !tbaa !2234
  %i.arg = fcmp reassoc nsz arcp contract afn ogt float %i.arf, 0.000000e+00
  br i1 %i.arg, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 4 ; 2 uses
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !2234
  %i.arj = fmul reassoc nsz arcp contract afn float %i.ari, 1.050300e+00
  store float %i.arj, ptr %i.arh, align 4, !tbaa !2234
  %i.ark = getelementptr inbounds nuw i8, ptr %i.are, i64 12 ; 2 uses
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !2234
  %i.arm = fmul reassoc nsz arcp contract afn float %i.arl, 2.286700e+00
  store float %i.arm, ptr %i.ark, align 4, !tbaa !2234
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ic, %bb.id
  %i.arn = getelementptr inbounds nuw [20 x i8], ptr %i.aqz, i64 %indvars.iv849 ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 20
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !2234
  %i.arq = fcmp reassoc nsz arcp contract afn ogt float %i.arp, 0.000000e+00
  br i1 %i.arq, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 24 ; 2 uses
  %i.ars = load float, ptr %i.arr, align 8, !tbaa !2234
  %i.art = fmul reassoc nsz arcp contract afn float %i.ars, 1.050300e+00
  store float %i.art, ptr %i.arr, align 8, !tbaa !2234
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arn, i64 32 ; 2 uses
  %i.arv = load float, ptr %i.aru, align 8, !tbaa !2234
  %i.arw = fmul reassoc nsz arcp contract afn float %i.arv, 2.286700e+00
  store float %i.arw, ptr %i.aru, align 8, !tbaa !2234
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.arx = getelementptr inbounds nuw [20 x i8], ptr %i.aqz, i64 %indvars.iv849 ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 40
  %i.arz = load float, ptr %i.ary, align 8, !tbaa !2234
  %i.asa = fcmp reassoc nsz arcp contract afn ogt float %i.arz, 0.000000e+00
  br i1 %i.asa, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arx, i64 44 ; 2 uses
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !2234
  %i.asd = fmul reassoc nsz arcp contract afn float %i.asc, 1.050300e+00
  store float %i.asd, ptr %i.asb, align 4, !tbaa !2234
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arx, i64 52 ; 2 uses
  %i.asf = load float, ptr %i.ase, align 4, !tbaa !2234
  %i.asg = fmul reassoc nsz arcp contract afn float %i.asf, 2.286700e+00
  store float %i.asg, ptr %i.ase, align 4, !tbaa !2234
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.ash = getelementptr inbounds nuw [20 x i8], ptr %i.aqz, i64 %indvars.iv849 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 60
  %i.asj = load float, ptr %i.asi, align 4, !tbaa !2234
  %i.ask = fcmp reassoc nsz arcp contract afn ogt float %i.asj, 0.000000e+00
  br i1 %i.ask, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ash, i64 64 ; 2 uses
  %i.asm = load float, ptr %i.asl, align 8, !tbaa !2234
  %i.asn = fmul reassoc nsz arcp contract afn float %i.asm, 1.050300e+00
  store float %i.asn, ptr %i.asl, align 8, !tbaa !2234
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ash, i64 72 ; 2 uses
  %i.asp = load float, ptr %i.aso, align 8, !tbaa !2234
  %i.asq = fmul reassoc nsz arcp contract afn float %i.asp, 2.286700e+00
  store float %i.asq, ptr %i.aso, align 8, !tbaa !2234
  br label %bb.ik

end_hunk_1
