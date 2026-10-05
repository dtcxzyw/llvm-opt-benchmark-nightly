Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  %i.hf = icmp slt i32 %i.he, 8
  br i1 %i.hf, label %bb.av, label %.loopexit692

bb.av:                                            ; preds = %bb.au
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !119 ; 3 uses
  %.not395 = icmp eq i32 %i.hh, 0
  br i1 %.not395, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !117 ; 3 uses
  %.not396 = icmp ne i64 %i.hj, 0
  %i.hk = icmp sgt i32 %i.he, 0
  %or.cond747 = and i1 %.not396, %i.hk
  br i1 %or.cond747, label %.lr.ph706, label %.critedge

bb.ax:                                            ; preds = %bb.av
  %.old = icmp sgt i32 %i.he, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %.pre857 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117 ; 2 uses
  br i1 %.old, label %.lr.ph706, label %.critedge

.lr.ph706:                                        ; preds = %bb.ax, %bb.aw
  %i.hl = phi i64 [ %i.hj, %bb.aw ], [ %.pre857, %bb.ax ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 193520
  %wide.trip.count761 = zext nneg i32 %i.he to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph706, %bb.ba
  %indvars.iv758 = phi i64 [ 0, %.lr.ph706 ], [ %indvars.iv.next759, %bb.ba ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %i.hm, i64 %indvars.iv758 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !116
  %i.hq = icmp eq i64 %i.hp, %i.hl
  br i1 %i.hq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !118
  %i.ht = icmp eq i32 %i.hs, %i.hh
  br i1 %i.ht, label %.loopexit692, label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv.next759 = add nuw nsw i64 %indvars.iv758, 1 ; 2 uses
  %exitcond762.not = icmp eq i64 %indvars.iv.next759, %wide.trip.count761
  br i1 %exitcond762.not, label %.critedge, label %bb.ay, !llvm.loop !98

.critedge:                                        ; preds = %bb.ba, %bb.ax, %bb.aw
  %i.hu = phi i64 [ %.pre857, %bb.ax ], [ %i.hj, %bb.aw ], [ %i.hl, %bb.ba ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 193520
  %i.hw = sext i32 %i.he to i64
  %i.hx = getelementptr inbounds [32 x i8], ptr %i.hv, i64 %i.hw ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  store i64 %i.hu, ptr %i.hy, align 8, !tbaa !116
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 %i.hh, ptr %i.hz, align 4, !tbaa !118
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i16 -1, ptr %i.ia, align 8, !tbaa !125
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 381824
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !121
  store i32 %i.ic, ptr %i.hx, align 8, !tbaa !120
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 381820
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !123
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i32 %i.ie, ptr %i.if, align 8, !tbaa !113
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 193492
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ii = load <2 x i16>, ptr %i.ig, align 4, !tbaa !122
  store <2 x i16> %i.ii, ptr %i.ih, align 4, !tbaa !122
  %i.ij = add nsw i32 %i.he, 1
  store i32 %i.ij, ptr %i.hd, align 8, !tbaa !111
  br label %.loopexit692

.loopexit692:                                     ; preds = %bb.az, %.critedge, %bb.au
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 915
  store i8 0, ptr %i.ik, align 1, !tbaa !126
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 768320
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !127 ; 2 uses
  %.not397 = icmp eq ptr %i.im, null
  br i1 %.not397, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.loopexit692
  invoke void %i.im(ptr noundef nonnull %0)
          to label %bb.bc unwind label %bb.m

bb.bc:                                            ; preds = %bb.bb, %.loopexit692
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 4 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !109
  %.not398 = icmp eq i32 %i.io, 0
  br i1 %.not398, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.ip = load i32, ptr %i.aq, align 4, !tbaa !110
  switch i32 %i.ip, label %.thread [
    i32 18, label %bb.be
    i32 8, label %bb.bi
    i32 63, label %bb.bm
  ]

bb.be:                                            ; preds = %bb.bd
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.ir = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.iq, ptr noundef nonnull dereferenceable(6) @.str.30) #20
  %.not399 = icmp eq i32 %i.ir, 0
  br i1 %.not399, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.is = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.iq, ptr noundef nonnull dereferenceable(6) @.str.31) #20
  %.not400 = icmp eq i32 %i.is, 0
  br i1 %.not400, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.it = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.iq, ptr noundef nonnull dereferenceable(6) @.str.32) #20
  %.not401 = icmp eq i32 %i.it, 0
  br i1 %.not401, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 182
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.iu, align 2, !tbaa !122
  br label %.thread

bb.bi:                                            ; preds = %bb.bd
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !129
  %i.ix = icmp eq i16 %i.iw, 0
  br i1 %i.ix, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %bb.bi
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iz = load i16, ptr %i.iy, align 8, !tbaa !130
  %i.ja = icmp eq i16 %i.iz, 0
  br i1 %i.ja, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !131
  %i.jd = zext i16 %i.jc to i32
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !77
  %i.jg = zext i16 %i.jf to i32
  %i.jh = shl nuw nsw i32 %i.jg, 2
  %i.ji = udiv i32 %i.jh, 5
  %i.jj = icmp samesign ugt i32 %i.ji, %i.jd
  br i1 %i.jj, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.iv, align 2, !tbaa !122
  br label %.thread

bb.bm:                                            ; preds = %bb.bd
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.jl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jk, ptr noundef nonnull dereferenceable(9) @.str.33) #20
  %.not404 = icmp eq i32 %i.jl, 0
  br i1 %.not404, label %bb.bn, label %.thread

bb.bn:                                            ; preds = %bb.bm
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !132
  %i.jo = and i32 %i.jn, 65536
  %.not405 = icmp eq i32 %i.jo, 0
  br i1 %.not405, label %.preheader691, label %.thread

.preheader691:                                    ; preds = %bb.bn
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jp, align 4, !tbaa !93
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 187224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5376) %i.jq, i8 0, i64 5376, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bc, %.preheader691, %bb.bn, %bb.bm
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 768416 ; 18 uses
  %.unpack406 = load i64, ptr %i.jr, align 8, !tbaa !87 ; 2 uses
  %.elt407 = getelementptr inbounds nuw i8, ptr %0, i64 768424 ; 17 uses
  %.unpack408 = load i64, ptr %.elt407, align 8, !tbaa !87 ; 2 uses
  %i.js = icmp eq i64 %.unpack406, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.jt = icmp eq i64 %.unpack408, 0
  %i.ju = and i1 %i.js, %i.jt
  br i1 %i.ju, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.thread
  invoke void @_ZN6LibRaw16nikon_read_curveEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %._crit_edge860 unwind label %bb.m

._crit_edge860:                                   ; preds = %bb.bo
  %.unpack409.pre = load i64, ptr %i.jr, align 8, !tbaa !87
  %.unpack411.pre = load i64, ptr %.elt407, align 8, !tbaa !87
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge860, %.thread
  %.unpack411 = phi i64 [ %.unpack411.pre, %._crit_edge860 ], [ %.unpack408, %.thread ]
  %.unpack409 = phi i64 [ %.unpack409.pre, %._crit_edge860 ], [ %.unpack406, %.thread ] ; 2 uses
  %i.jv = icmp eq i64 %.unpack409, ptrtoint (ptr @_ZN6LibRaw22lossless_jpeg_load_rawEv to i64)
  %i.jw = icmp eq i64 %.unpack411, 0              ; 2 uses
  %i.jx = and i1 %i.jv, %i.jw
  br i1 %i.jx, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.jz = load i16, ptr %i.jy, align 8, !tbaa !133
  %.not412 = icmp eq i16 %i.jz, 0
  br i1 %.not412, label %.thread586thread-pre-split, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ka = load i32, ptr %i.aq, align 4, !tbaa !110 ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 29
  br i1 %i.kb, label %bb.bs, label %.thread586

bb.bs:                                            ; preds = %bb.br
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.kd = tail call i32 @strncasecmp(ptr noundef nonnull %i.kc, ptr noundef nonnull @.str.34, i64 noundef 9) #20
  %.not413 = icmp eq i32 %i.kd, 0
  br i1 %.not413, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ke = tail call i32 @strncasecmp(ptr noundef nonnull %i.kc, ptr noundef nonnull @.str.35, i64 noundef 9) #20
  %.not414 = icmp eq i32 %i.ke, 0
  br i1 %.not414, label %bb.bu, label %.thread586thread-pre-split

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 0, ptr %i.kf, align 8, !tbaa !89
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4501, ptr %i.kg, align 8, !tbaa !88
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.kh, i8 0, i64 16416, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ki, i8 0, i64 128, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.kj, align 8, !tbaa !134
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !85
  %i.km = or i32 %i.kl, 512
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !85
  br label %.thread586thread-pre-split

bb.bv:                                            ; preds = %bb.bp
  %i.kn = icmp eq i64 %.unpack409, ptrtoint (ptr @_ZN6LibRaw18panasonic_load_rawEv to i64)
  %i.ko = and i1 %i.kn, %i.jw
  br i1 %i.ko, label %bb.bw, label %.thread586thread-pre-split

bb.bw:                                            ; preds = %bb.bv
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 381908
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !135 ; 2 uses
  %.off = add i32 %i.kq, -6
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %.preheader690, label %bb.bx

.preheader690:                                    ; preds = %bb.bw
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 381640
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ks, ptr noundef nonnull align 8 dereferenceable(12) %i.kr, i64 12, i1 false), !tbaa !134
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !134
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !134
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.kw, align 4, !tbaa !134
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.kx, align 8, !tbaa !134
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 0, ptr %i.ky, align 8, !tbaa !89
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !134
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !134
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !134
  %.561 = tail call i32 @llvm.umax.i32(i32 %i.lc, i32 %i.le)
  %spec.select654 = tail call i32 @llvm.umax.i32(i32 %i.la, i32 %.561)
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %spec.select654, ptr %i.lf, align 8, !tbaa !88
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.preheader690
  switch i32 %i.kq, label %.thread586thread-pre-split [
    i32 6, label %bb.by
    i32 7, label %bb.cj
    i32 8, label %bb.cn
  ]

bb.by:                                            ; preds = %bb.bx
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !77 ; 2 uses
  %i.lj = insertelement <2 x i16> poison, i16 %i.li, i64 0
  %i.lk = shufflevector <2 x i16> %i.lj, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ll = udiv <2 x i16> %i.lk, <i16 11, i16 14>
  %i.lm = zext nneg <2 x i16> %i.ll to <2 x i32>
  %i.ln = shl nuw nsw <2 x i32> %i.lm, splat (i32 4) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !136 ; 2 uses
  %.not421 = icmp eq i64 %i.lp, 0
  br i1 %.not421, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.lq = load ptr, ptr %i.y, align 8, !tbaa !73  ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = invoke noundef i64 %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !76
  %i.lx = sub nsw i64 %i.lu, %i.lw
  %.pre863 = load i16, ptr %i.lh, align 2, !tbaa !77
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ly = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.jk

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %i.lz = phi i16 [ %i.li, %bb.by ], [ %.pre863, %bb.ca ] ; 2 uses
  %.0325 = phi i64 [ %i.lp, %bb.by ], [ %i.lx, %bb.ca ] ; 2 uses
  %i.ma = urem i16 %i.lz, 11
  %i.mb = icmp eq i16 %i.ma, 0
  br i1 %i.mb, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.mc = load i16, ptr %i.lg, align 8, !tbaa !78
  %i.md = zext i16 %i.mc to i64
  %i.me = extractelement <2 x i32> %i.ln, i64 0
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = mul nuw nsw i64 %i.mf, %i.md
  %i.mh = icmp eq i64 %i.mg, %.0325
  br i1 %i.mh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread586thread-pre-split

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.mi = urem i16 %i.lz, 14
  %i.mj = icmp eq i16 %i.mi, 0
  br i1 %i.mj, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.mk = load i16, ptr %i.lg, align 8, !tbaa !78
  %i.ml = zext i16 %i.mk to i64
  %i.mm = extractelement <2 x i32> %i.ln, i64 1
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = mul nuw nsw i64 %i.mn, %i.ml
  %i.mp = icmp eq i64 %i.mo, %.0325
  br i1 %i.mp, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread586thread-pre-split

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.mq, align 8, !tbaa !92
  br label %.thread586thread-pre-split

bb.cj:                                            ; preds = %bb.bx
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !137
  %i.mt = icmp eq i32 %i.ms, 14
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !77 ; 2 uses
  %.rhs.trunc649 = select i1 %i.mt, i16 9, i16 10 ; 2 uses
  %i.mw = urem i16 %i.mv, %.rhs.trunc649
  %i.mx = udiv i16 %i.mv, %.rhs.trunc649
  %i.my = icmp eq i16 %i.mw, 0
  br i1 %i.my, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.zext653 = zext nneg i16 %i.mx to i64
  %i.mz = shl nuw nsw i64 %.zext653, 4
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nb = load i16, ptr %i.na, align 8, !tbaa !78
  %i.nc = zext i16 %i.nb to i64
  %i.nd = mul nuw nsw i64 %i.mz, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !136
  %i.ng = icmp eq i64 %i.nd, %i.nf
  br i1 %i.ng, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC7_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread586thread-pre-split

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nh, align 8, !tbaa !92
  br label %.thread586thread-pre-split

bb.cn:                                            ; preds = %bb.bx
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.nj = load i16, ptr %i.ni, align 4, !tbaa !138
  %.not418 = icmp eq i16 %i.nj, 0
  br i1 %.not418, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC8_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread586thread-pre-split

bb.cp:                                            ; preds = %bb.cn
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nk, align 8, !tbaa !92
  br label %.thread586thread-pre-split

.thread586thread-pre-split:                       ; preds = %bb.bv, %bb.co, %bb.cp, %bb.ch, %bb.ci, %bb.ce, %bb.cm, %bb.cl, %bb.bx, %bb.bu, %bb.bt, %bb.bq
  %.pr636 = load i32, ptr %i.aq, align 4, !tbaa !110
  br label %.thread586

.thread586:                                       ; preds = %.thread586thread-pre-split, %bb.br
  %2 = phi i32 [ %.pr636, %.thread586thread-pre-split ], [ %i.ka, %bb.br ] ; 2 uses
  switch i32 %2, label %.thread591 [
    i32 43, label %bb.cq
    i32 63, label %bb.cw
    i32 8, label %bb.cy
  ]

bb.cq:                                            ; preds = %.thread586
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.nm = tail call i32 @strncasecmp(ptr noundef nonnull %i.nl, ptr noundef nonnull @.str.36, i64 noundef 1) #20
  %.not424 = icmp eq i32 %i.nm, 0
  br i1 %.not424, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nn = tail call i32 @strcasecmp(ptr noundef nonnull %i.nl, ptr noundef nonnull @.str.37) #20
  %.not425 = icmp eq i32 %i.nn, 0
  br i1 %.not425, label %bb.cs, label %.thread591.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !77
  %i.nr = zext i16 %i.nq to i32                   ; 2 uses
  %i.ns = mul nuw nsw i32 %i.nr, 7
  %i.nt = lshr i32 %i.ns, 2
  %i.nu = uitofp nneg i32 %i.nt to float
  %i.nv = fmul nnan float %i.nu, 6.250000e-02
  %i.nw = tail call float @llvm.ceil.f32(float %i.nv)
  %i.nx = fptoui float %i.nw to i32
  %i.ny = load i16, ptr %i.no, align 8, !tbaa !78 ; 2 uses
  %i.nz = zext i16 %i.ny to i32
  %i.oa = shl nuw nsw i32 %i.nz, 4
  %i.ob = mul i32 %i.oa, %i.nx
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !136 ; 2 uses
  %i.of = icmp eq i64 %i.oe, %i.oc
  br i1 %i.of, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.og = mul nuw nsw i32 %i.nr, 21
  %i.oh = lshr i32 %i.og, 2
  %i.oi = uitofp nneg i32 %i.oh to float
  %i.oj = fmul nnan float %i.oi, 6.250000e-02
  %i.ok = tail call nnan float @llvm.ceil.f32(float %i.oj)
  %i.ol = fmul nnan float %i.ok, 1.600000e+01
  %i.om = uitofp i16 %i.ny to float
  %i.on = fmul float %i.ol, %i.om
  %i.oo = sitofp i64 %i.oe to float
  %i.op = fcmp oeq float %i.on, %i.oo
  br i1 %i.op, label %bb.cv, label %.thread591.thread

bb.cv:                                            ; preds = %bb.cu
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.oq, align 8, !tbaa !83
  br label %.thread591.thread

bb.cw:                                            ; preds = %.thread586
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.os = load i32, ptr %i.or, align 8, !tbaa !88 ; 3 uses
  %.not428 = icmp eq i32 %i.os, 0
  br i1 %.not428, label %.thread591.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !134 ; 3 uses
  %i.ov = icmp ule i32 %i.ou, %i.os
  %i.ow = shl i32 %i.os, 2
  %.not429 = icmp ugt i32 %i.ou, %i.ow
  %or.cond563 = or i1 %i.ov, %.not429
  br i1 %or.cond563, label %.thread591.thread, label %.preheader689.preheader

.preheader689.preheader:                          ; preds = %bb.cx
  %i.ox = lshr i32 %i.ou, 2
  store i32 %i.ox, ptr %i.ot, align 4, !tbaa !134
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 153104 ; 2 uses
  %i.oz = load <2 x i32>, ptr %i.oy, align 8, !tbaa !134
  %i.pa = lshr <2 x i32> %i.oz, splat (i32 2)
  store <2 x i32> %i.pa, ptr %i.oy, align 8, !tbaa !134
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 153112 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !134
  %i.pd = lshr i32 %i.pc, 2
  store i32 %i.pd, ptr %i.pb, align 8, !tbaa !134
  br label %.thread591.thread

bb.cy:                                            ; preds = %.thread586
  %i.pe = load i32, ptr %i.in, align 4, !tbaa !109
  %.not430 = icmp eq i32 %i.pe, 0
  br i1 %.not430, label %bb.cz, label %..thread595_crit_edge

..thread595_crit_edge:                            ; preds = %bb.cy
  %.unpack437.pre = load i64, ptr %i.jr, align 8, !tbaa !87
  %.unpack439.pre = load i64, ptr %.elt407, align 8, !tbaa !87
  br label %.thread595.a

bb.cz:                                            ; preds = %bb.cy
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 2062
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !139 ; 4 uses
  %.not431 = icmp eq i16 %i.ph, -1
  br i1 %.not431, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.pj = load i16, ptr %i.pi, align 4, !tbaa !140
  %.not432 = icmp eq i16 %i.pj, 0
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  br i1 %.not432, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pl = load i16, ptr %i.pf, align 4, !tbaa !141
  %i.pm = load <2 x i16>, ptr %i.pk, align 2, !tbaa !122
  %i.pn = insertelement <2 x i16> poison, i16 %i.ph, i64 0
  %i.po = insertelement <2 x i16> %i.pn, i16 %i.pl, i64 1
  %i.pp = add <2 x i16> %i.pm, %i.po
  store <2 x i16> %i.pp, ptr %i.pk, align 2, !tbaa !122
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i16 %i.ph, ptr %i.pk, align 2, !tbaa !129
  %i.pq = load i16, ptr %i.pf, align 4, !tbaa !141 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.pq, ptr %i.pr, align 8, !tbaa !130
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.pu = load <2 x i16>, ptr %i.pt, align 8, !tbaa !122
  %i.pv = insertelement <2 x i16> poison, i16 %i.pq, i64 0
  %i.pw = insertelement <2 x i16> %i.pv, i16 %i.ph, i64 1
  %i.px = sub <2 x i16> %i.pu, %i.pw
  %i.py = add <2 x i16> %i.px, splat (i16 1)
  %i.pz = shufflevector <2 x i16> %i.py, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.pz, ptr %i.ps, align 2, !tbaa !122
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.dc
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 192676
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !142 ; 5 uses
  %i.qc = icmp ugt i32 %i.qb, 13
  %.unpack437.pre864 = load i64, ptr %i.jr, align 8, !tbaa !87 ; 4 uses
  %.unpack439.pre866 = load i64, ptr %.elt407, align 8, !tbaa !87 ; 4 uses
  br i1 %i.qc, label %.thread595.a, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qd = icmp ne i64 %.unpack437.pre864, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.qe = icmp ne i64 %.unpack439.pre866, 0
  %i.qf = or i1 %i.qd, %i.qe
  br i1 %i.qf, label %bb.df, label %.thread595.a

bb.df:                                            ; preds = %bb.de
  %notmask = shl nsw i32 -1, %i.qb
  %i.qg = xor i32 %notmask, -1
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !143 ; 2 uses
  %i.qj = icmp sgt i32 %i.qi, %i.qg
  br i1 %i.qj, label %.preheader688, label %.thread595.a

.preheader688:                                    ; preds = %bb.df
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.ql = sub nuw nsw i32 14, %i.qb
  %i.qm = load <4 x i32>, ptr %i.qk, align 4, !tbaa !134
  %i.qn = insertelement <4 x i32> poison, i32 %i.ql, i64 0
  %i.qo = shufflevector <4 x i32> %i.qn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qp = lshr <4 x i32> %i.qm, %i.qo
  store <4 x i32> %i.qp, ptr %i.qk, align 4, !tbaa !134
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !144
  %i.qu = sub nuw nsw i32 14, %i.qb
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !145
  %i.qx = lshr exact i32 16384, %i.qb             ; 3 uses
  %i.qy = load <2 x i32>, ptr %i.qq, align 8, !tbaa !134
  %i.qz = load <2 x i32>, ptr %i.qr, align 8, !tbaa !134
  %i.ra = insertelement <2 x i32> poison, i32 %i.qx, i64 0
  %i.rb = shufflevector <2 x i32> %i.ra, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.rc = sdiv <2 x i32> %i.qz, %i.rb
  store <2 x i32> %i.rc, ptr %i.qr, align 8, !tbaa !134
  %i.rd = sdiv i32 %i.qt, %i.qx
  store i32 %i.rd, ptr %i.qs, align 8, !tbaa !144
  %i.re = lshr i32 %i.qi, %i.qu
  %i.rf = insertelement <4 x i32> poison, i32 %i.re, i64 0
  %i.rg = insertelement <4 x i32> %i.rf, i32 %i.qw, i64 1
  %i.rh = shufflevector <2 x i32> %i.qy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ri = shufflevector <4 x i32> %i.rg, <4 x i32> %i.rh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.rj = insertelement <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>, i32 %i.qx, i64 1
  %i.rk = shufflevector <4 x i32> %i.rj, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.rl = sdiv <4 x i32> %i.ri, %i.rk
  store <4 x i32> %i.rl, ptr %i.qh, align 8, !tbaa !134
  br label %.thread595.a

.thread595.a:                                     ; preds = %..thread595_crit_edge, %.preheader688, %bb.dd, %bb.de, %bb.df
  %.unpack439 = phi i64 [ %.unpack439.pre, %..thread595_crit_edge ], [ %.unpack439.pre866, %.preheader688 ], [ %.unpack439.pre866, %bb.dd ], [ 0, %bb.de ], [ %.unpack439.pre866, %bb.df ]
  %.unpack437 = phi i64 [ %.unpack437.pre, %..thread595_crit_edge ], [ %.unpack437.pre864, %.preheader688 ], [ %.unpack437.pre864, %bb.dd ], [ ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64), %bb.de ], [ %.unpack437.pre864, %bb.df ]
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
    i16 5504, label %bb.ge
  ]

bb.ga:                                            ; preds = %.thread608
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 3925, ptr %i.ajs, align 2, !tbaa !81
  br label %.thread624

bb.gb:                                            ; preds = %.thread608
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4256, ptr %i.ajt, align 2, !tbaa !81
  br label %.thread624

bb.gc:                                            ; preds = %.thread608
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ajv = load i16, ptr %i.aju, align 4, !tbaa !82
  %i.ajw = icmp ult i16 %i.ajv, 3280
  br i1 %i.ajw, label %bb.gd, label %.thread624

bb.gd:                                            ; preds = %bb.gc
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4920, ptr %i.ajx, align 2, !tbaa !81
  br label %.thread624

bb.ge:                                            ; preds = %.thread608
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ajz = load i16, ptr %i.ajy, align 4, !tbaa !82
  %i.aka = icmp ugt i16 %i.ajz, 3664
  %i.akb = select i1 %i.aka, i16 5496, i16 5472
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.akb, ptr %i.akc, align 2, !tbaa !81
  br label %.thread624

bb.gf:                                            ; preds = %.thread600
  %.unpack475 = load i64, ptr %i.jr, align 8, !tbaa !87
  %.unpack477 = load i64, ptr %.elt407, align 8, !tbaa !87
  %i.akd = icmp eq i64 %.unpack475, ptrtoint (ptr @_ZN6LibRaw17sony_arq_load_rawEv to i64)
  %i.ake = icmp eq i64 %.unpack477, 0
  %i.akf = and i1 %i.akd, %i.ake
  br i1 %i.akf, label %.sink.split952, label %bb.gg

.sink.split952:                                   ; preds = %bb.gf
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.akh = load i16, ptr %i.akg, align 2, !tbaa !77 ; 2 uses
  %i.aki = icmp ugt i16 %i.akh, 12000
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 22
  %. = select i1 %i.aki, i16 -64, i16 -32
  %i.akk = add i16 %i.akh, %.
  store i16 %i.akk, ptr %i.akj, align 2, !tbaa !81
  br label %bb.gg

bb.gg:                                            ; preds = %.sink.split952, %bb.gf
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 7 uses
  %i.akm = tail call i32 @strncasecmp(ptr noundef nonnull %i.akl, ptr noundef nonnull @.str.43, i64 noundef 8) #20
  %.not478 = icmp eq i32 %i.akm, 0
  br i1 %.not478, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.akn = tail call i32 @strcasecmp(ptr noundef nonnull %i.akl, ptr noundef nonnull @.str.44) #20
  %.not479 = icmp eq i32 %i.akn, 0
  br i1 %.not479, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.akp = load i16, ptr %i.ako, align 2, !tbaa !77 ; 3 uses
  switch i16 %i.akp, label %bb.gj [
    i16 5216, label %bb.gt
    i16 6304, label %bb.gt
  ]

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.akq = tail call i32 @strcasecmp(ptr noundef nonnull %i.akl, ptr noundef nonnull @.str.45) #20
  %.not480 = icmp eq i32 %i.akq, 0
  br i1 %.not480, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aks = load i16, ptr %i.akr, align 2, !tbaa !77 ; 2 uses
  %i.akt = add i16 %i.aks, -4580
  %or.cond576 = icmp ult i16 %i.akt, 440
  br i1 %or.cond576, label %bb.gt, label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.aku = tail call i32 @strcasecmp(ptr noundef nonnull %i.akl, ptr noundef nonnull @.str.46) #20
  %.not481 = icmp eq i32 %i.aku, 0
  br i1 %.not481, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.akv = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.akw = load i16, ptr %i.akv, align 2, !tbaa !77
  %i.akx = icmp eq i16 %i.akw, 3968
  br i1 %i.akx, label %bb.gt, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.aky = tail call i32 @strncasecmp(ptr noundef nonnull %i.akl, ptr noundef nonnull @.str.47, i64 noundef 7) #20
  %.not482 = icmp eq i32 %i.aky, 0
  br i1 %.not482, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.akz = tail call i32 @strcasecmp(ptr noundef nonnull %i.akl, ptr noundef nonnull @.str.48) #20
  %.not483 = icmp eq i32 %i.akz, 0
  br i1 %.not483, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.alb = load i64, ptr %i.ala, align 8, !tbaa !151
  %i.alc = icmp eq i64 %i.alb, 294
  br i1 %i.alc, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp, %bb.go, %bb.gn
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ale = load i16, ptr %i.ald, align 2, !tbaa !77 ; 2 uses
  %i.alf = add i16 %i.ale, -3751
  %or.cond577 = icmp ult i16 %i.alf, 369
  br i1 %or.cond577, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.alg = tail call i32 @strncasecmp(ptr noundef nonnull %i.akl, ptr noundef nonnull @.str.49, i64 noundef 7) #20
  %.not484 = icmp eq i32 %i.alg, 0
  br i1 %.not484, label %bb.gs, label %.thread624

bb.gs:                                            ; preds = %bb.gr
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ali = load i16, ptr %i.alh, align 2, !tbaa !77
  %i.alj = icmp eq i16 %i.ali, 2816
  br i1 %i.alj, label %bb.gt, label %.thread624

bb.gt:                                            ; preds = %bb.gq, %bb.gk, %bb.gi, %bb.gi, %bb.gs, %bb.gm
  %i.alk = phi i16 [ %i.ale, %bb.gq ], [ %i.aks, %bb.gk ], [ %i.akp, %bb.gi ], [ %i.akp, %bb.gi ], [ 2816, %bb.gs ], [ 3968, %bb.gm ]
  %i.all = add nsw i16 %i.alk, -32
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.all, ptr %i.alm, align 2, !tbaa !81
  br label %.thread624

bb.gu:                                            ; preds = %.thread600, %.thread599
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 8, !tbaa !92
  %i.alp = icmp eq i32 %i.alo, 4
  br i1 %i.alp, label %bb.gv, label %.thread624

bb.gv:                                            ; preds = %bb.gu
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.alr = load i32, ptr %i.alq, align 8, !tbaa !132
  %i.als = and i32 %i.alr, 1
  %.not485 = icmp eq i32 %i.als, 0
  br i1 %.not485, label %.thread624, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  store i32 1, ptr %i.aln, align 8, !tbaa !92
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.alt, align 8, !tbaa !83
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 4, ptr %i.alu, align 4, !tbaa !84
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.alw = load <4 x i16>, ptr %i.alv, align 4, !tbaa !122
  %i.alx = add <4 x i16> %i.alw, <i16 -4, i16 -4, i16 2, i16 2>
  store <4 x i16> %i.alx, ptr %i.alv, align 4, !tbaa !122
  store i32 1, ptr %i.ac, align 8, !tbaa !152
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 768432
  %i.alz = load <2 x i64>, ptr %i.jr, align 8, !tbaa !87
  store <2 x i64> %i.alz, ptr %i.aly, align 8, !tbaa !153
  store i64 ptrtoint (ptr @_ZN6LibRaw21pentax_4shot_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread624

bb.gx:                                            ; preds = %.thread600
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.amb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ama, ptr noundef nonnull dereferenceable(9) @.str.50) #20
  %.not493 = icmp eq i32 %i.amb, 0
  br i1 %.not493, label %bb.gy, label %.thread624

bb.gy:                                            ; preds = %bb.gx
  %i.amc = getelementptr inbounds nuw i8, ptr %0, i64 153268
  store <4 x float> <float 2.510040e+00, float 1.000000e+00, float f0x3FA6F896, float 1.000000e+00>, ptr %i.amc, align 4, !tbaa !93
  br label %.thread624

bb.gz:                                            ; preds = %.thread600
  br i1 %i.wq, label %bb.ha, label %.thread624

bb.ha:                                            ; preds = %bb.gz
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ame = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.amd, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #20
  %.not495 = icmp eq i32 %i.ame, 0
  br i1 %.not495, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.amf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.amd, ptr noundef nonnull dereferenceable(5) @.str.52, i64 noundef 4) #20
  %.not496 = icmp eq i32 %i.amf, 0
  br i1 %.not496, label %bb.hc, label %.thread624

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.amh = load i16, ptr %i.amg, align 2, !tbaa !77
  %i.ami = lshr i16 %i.amh, 1
  store i16 %i.ami, ptr %i.amg, align 2, !tbaa !77
  store i64 ptrtoint (ptr @_ZN6LibRaw30unpacked_load_raw_fuji_f700s20Ev to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread624

.thread624:                                       ; preds = %bb.gu, %bb.gv, %bb.gw, %bb.gr, %bb.gs, %bb.gt, %.thread608, %bb.fv, %bb.fy, %bb.fz, %bb.fx, %bb.fu, %bb.fw, %bb.fs, %bb.fr, %bb.ga, %bb.gd, %bb.ge, %bb.gb, %bb.gc, %.thread599, %bb.gx, %bb.gy, %bb.hc, %bb.hb, %bb.gz
  %i.amj = phi i1 [ false, %.thread599 ], [ false, %bb.gx ], [ false, %bb.gy ], [ true, %bb.gr ], [ false, %bb.hc ], [ false, %bb.hb ], [ false, %bb.gz ], [ true, %bb.gc ], [ true, %bb.gb ], [ true, %bb.ge ], [ true, %bb.gd ], [ true, %bb.ga ], [ false, %bb.fr ], [ false, %bb.fs ], [ false, %bb.fw ], [ false, %bb.fu ], [ false, %bb.fx ], [ false, %bb.fz ], [ false, %bb.fy ], [ false, %bb.fv ], [ true, %.thread608 ], [ true, %bb.gs ], [ true, %bb.gt ], [ false, %bb.gw ], [ false, %bb.gv ], [ false, %bb.gu ] ; 3 uses
  %i.amk = phi i1 [ false, %.thread599 ], [ false, %bb.gx ], [ false, %bb.gy ], [ false, %bb.gr ], [ false, %bb.hc ], [ false, %bb.hb ], [ false, %bb.gz ], [ false, %bb.gc ], [ false, %bb.gb ], [ false, %bb.ge ], [ false, %bb.gd ], [ false, %bb.ga ], [ false, %bb.fr ], [ false, %bb.fs ], [ false, %bb.fw ], [ false, %bb.fu ], [ false, %bb.fx ], [ false, %bb.fz ], [ false, %bb.fy ], [ false, %bb.fv ], [ false, %.thread608 ], [ false, %bb.gs ], [ false, %bb.gt ], [ true, %bb.gw ], [ true, %bb.gv ], [ true, %bb.gu ] ; 2 uses
  %.unpack498 = load i64, ptr %i.jr, align 8, !tbaa !87 ; 3 uses
  %.unpack500 = load i64, ptr %.elt407, align 8, !tbaa !87 ; 2 uses
  %i.aml = icmp eq i64 %.unpack498, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.amm = icmp eq i64 %.unpack500, 0             ; 2 uses
  %i.amn = and i1 %i.aml, %i.amm
  br i1 %i.amn, label %bb.hd, label %.loopexit683

bb.hd:                                            ; preds = %.thread624
  %i.amo = icmp eq i32 %i.wp, 43
  br i1 %i.amo, label %bb.he, label %bb.hj

bb.he:                                            ; preds = %bb.hd
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !85
  %.not501 = icmp eq i32 %i.amq, 0
  br i1 %.not501, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %bb.he
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ams = tail call i32 @strncasecmp(ptr noundef nonnull %i.amr, ptr noundef nonnull @.str.53, i64 noundef 4) #20
  %.not502 = icmp eq i32 %i.ams, 0
  br i1 %.not502, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.amt = tail call i32 @strcasecmp(ptr noundef nonnull %i.amr, ptr noundef nonnull @.str.54) #20
  %.not503 = icmp eq i32 %i.amt, 0
  br i1 %.not503, label %bb.hh, label %bb.hj

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.amv = load i64, ptr %i.amu, align 8, !tbaa !136
  %i.amw = shl nsw i64 %i.amv, 1
  %i.amx = load i16, ptr %i.uh, align 8, !tbaa !78
  %i.amy = zext i16 %i.amx to i64
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ana = load i16, ptr %i.amz, align 2, !tbaa !77
  %i.anb = zext i16 %i.ana to i64
  %i.anc = mul nuw nsw i64 %i.amy, 3
  %i.and = mul nuw nsw i64 %i.anc, %i.anb
  %i.ane = and i64 %i.and, 4294967295
  %i.anf = icmp eq i64 %i.amw, %i.ane
  br i1 %i.anf, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  store i32 80, ptr %i.amp, align 4, !tbaa !85
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %bb.hd
  br i1 %i.amj, label %bb.hk, label %.thread628.a

bb.hk:                                            ; preds = %bb.hj
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.anh = load i32, ptr %i.ang, align 8, !tbaa !88
  %i.ani = icmp ugt i32 %i.anh, 4095
  br i1 %i.ani, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  store i32 4095, ptr %i.ang, align 8, !tbaa !88
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !89 ; 2 uses
  %i.anl = icmp ugt i32 %i.ank, 256
  %.phi.trans.insert871 = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %.pre872 = load i32, ptr %.phi.trans.insert871, align 8, !tbaa !134 ; 2 uses
  %i.anm = icmp ugt i32 %.pre872, 256
  %or.cond958 = select i1 %i.anl, i1 true, i1 %i.anm
  br i1 %or.cond958, label %.preheader682, label %.thread628.a

.preheader682:                                    ; preds = %bb.hm
  %i.ann = lshr i32 %i.ank, 2
  store i32 %i.ann, ptr %i.anj, align 8, !tbaa !89
  %i.ano = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 2 uses
  %i.anp = lshr i32 %.pre872, 2
  store i32 %i.anp, ptr %i.ano, align 8, !tbaa !134
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 136676 ; 2 uses
  %i.anr = load <2 x i32>, ptr %i.anq, align 4, !tbaa !134
  %i.ans = lshr <2 x i32> %i.anr, splat (i32 2)
  store <2 x i32> %i.ans, ptr %i.anq, align 4, !tbaa !134
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 136684 ; 2 uses
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !134
  %i.anv = lshr i32 %i.anu, 2
  store i32 %i.anv, ptr %i.ant, align 4, !tbaa !134
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.any = load i32, ptr %i.anw, align 8, !tbaa !134
  %i.anz = load i32, ptr %i.anx, align 4, !tbaa !134
  %i.aoa = mul i32 %i.anz, %i.any
  %.not750 = icmp eq i32 %i.aoa, 0
  br i1 %.not750, label %.thread628.a, label %.lr.ph734

.lr.ph734:                                        ; preds = %.preheader682, %.lr.ph734
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %.lr.ph734 ], [ 0, %.preheader682 ] ; 2 uses
  %i.aob = add nuw nsw i64 %indvars.iv815, 6
  %i.aoc = and i64 %i.aob, 4294967295
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.aoc ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !134
  %i.aof = lshr i32 %i.aoe, 2
  store i32 %i.aof, ptr %i.aod, align 4, !tbaa !134
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1 ; 2 uses
  %i.aog = load i32, ptr %i.anw, align 8, !tbaa !134
  %i.aoh = load i32, ptr %i.anx, align 4, !tbaa !134
  %i.aoi = mul i32 %i.aoh, %i.aog
  %i.aoj = zext i32 %i.aoi to i64
  %i.aok = icmp samesign ult i64 %indvars.iv.next816, %i.aoj
  br i1 %i.aok, label %.lr.ph734, label %.thread628.a, !llvm.loop !101

.loopexit683:                                     ; preds = %.thread624
  %i.aol = icmp eq i64 %.unpack498, ptrtoint (ptr @_ZN6LibRaw18nikon_yuv_load_rawEv to i64)
  %i.aom = and i1 %i.aol, %i.amm
  br i1 %i.aom, label %bb.hn, label %.thread628.a

bb.hn:                                            ; preds = %.loopexit683
  store i64 ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.aop, align 8, !tbaa !83
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 381832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.aoo, i8 0, i64 16420, i1 false)
  store i32 3, ptr %i.aoq, align 8, !tbaa !154
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.aor, align 4, !tbaa !84
  br label %bb.ho

.preheader681:                                    ; preds = %bb.ho
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 153380
  store float 1.000000e+00, ptr %i.aos, align 4, !tbaa !93
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 153384
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 153400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aot, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aou, align 8, !tbaa !93
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 153404
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 153420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aov, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.aow, align 4, !tbaa !93
  br label %.thread628.a

bb.ho:                                            ; preds = %bb.hn, %bb.ho
  %indvars.iv818 = phi i64 [ 0, %bb.hn ], [ %indvars.iv.next819, %bb.ho ] ; 3 uses
  %i.aox = trunc nuw nsw i64 %indvars.iv818 to i32
  %i.aoy = uitofp nneg i32 %i.aox to double
  %i.aoz = fdiv double %i.aoy, 3.072000e+03       ; 8 uses
  %i.apa = fmul nnan double %i.aoz, f0x400A40CA1EA7DC78
  %i.apb = fneg double %i.aoz                     ; 3 uses
  %i.apc = fmul double %i.apa, %i.apb
  %i.apd = tail call double @llvm.fmuladd.f64(double %i.aoz, double f0x3FADA98DF96BFFE8, double %i.apc)
  %i.ape = fmul nnan double %i.aoz, f0xC020DCDB39699687
  %i.apf = fmul double %i.ape, %i.apb
  %i.apg = tail call double @llvm.fmuladd.f64(double %i.apf, double %i.aoz, double %i.apd)
  %i.aph = fmul nnan double %i.aoz, f0x4024B4E61F0CC868
  %i.api = fmul double %i.aoz, %i.aph
  %i.apj = fmul double %i.api, %i.apb
  %i.apk = tail call double @llvm.fmuladd.f64(double %i.apj, double %i.aoz, double %i.apg)
  %i.apl = tail call double @exp(double noundef %i.apk) #16
  %i.apm = fsub double 1.000000e+00, %i.apl       ; 2 uses
  %i.apn = fcmp olt double %i.apm, 0.000000e+00
  %spec.store.select = select i1 %i.apn, double 0.000000e+00, double %i.apm
  %i.apo = fmul double %spec.store.select, 1.638300e+04
  %i.app = fptoui double %i.apo to i16
  %i.apq = getelementptr inbounds nuw [2 x i8], ptr %i.aon, i64 %indvars.iv818
  store i16 %i.app, ptr %i.apq, align 2, !tbaa !122
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %exitcond821.not = icmp eq i64 %indvars.iv.next819, 3073
  br i1 %exitcond821.not, label %.preheader681, label %bb.ho, !llvm.loop !102

.thread628.a:                                     ; preds = %.lr.ph734, %bb.hm, %.preheader682, %.preheader681, %bb.hj, %.loopexit683
  %3 = phi i1 [ %i.amj, %.preheader681 ], [ false, %bb.hj ], [ true, %bb.hm ], [ %i.amj, %.loopexit683 ], [ true, %.preheader682 ], [ true, %.lr.ph734 ]
  %.unpack513 = phi i64 [ 0, %.preheader681 ], [ 0, %bb.hj ], [ 0, %bb.hm ], [ %.unpack500, %.loopexit683 ], [ 0, %.preheader682 ], [ 0, %.lr.ph734 ]
  %.unpack511 = phi i64 [ ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), %.preheader681 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hj ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hm ], [ %.unpack498, %.loopexit683 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.preheader682 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.lr.ph734 ] ; 6 uses
  %i.apr = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.aps = icmp eq i64 %.unpack513, 0             ; 5 uses
  %i.apt = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.apu = or i1 %i.apr, %i.apt
  %i.apv = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw28nikon_load_padded_packed_rawEv to i64)
  %or.cond579665 = or i1 %i.apv, %i.apu
  %i.apw = icmp eq i32 %i.wp, 43                  ; 2 uses
  %i.apx = and i1 %i.apw, %or.cond579665
  %or.cond659 = and i1 %i.aps, %i.apx
  br i1 %or.cond659, label %bb.hp, label %.loopexit679

bb.hp:                                            ; preds = %.thread628.a
  %i.apy = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.apz = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.apy, ptr noundef nonnull dereferenceable(8) @.str.55, i64 noundef 7) #20
  %.not514 = icmp eq i32 %i.apz, 0
  br i1 %.not514, label %.loopexit679, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !86
  %i.aqc = icmp eq i32 %i.aqb, 12
  br i1 %i.aqc, label %.preheader678, label %.loopexit679

.preheader678:                                    ; preds = %bb.hq
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.aqd, align 8, !tbaa !88
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !89
  %i.aqg = lshr i32 %i.aqf, 2
  store i32 %i.aqg, ptr %i.aqe, align 8, !tbaa !89
  %i.aqh = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 3 uses
  %i.aqi = load <4 x i32>, ptr %i.aqh, align 8, !tbaa !134
  %i.aqj = lshr <4 x i32> %i.aqi, splat (i32 2)
  store <4 x i32> %i.aqj, ptr %i.aqh, align 8, !tbaa !134
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.aqm = load i32, ptr %i.aqk, align 8, !tbaa !134
  %i.aqn = load i32, ptr %i.aql, align 4, !tbaa !134
  %i.aqo = mul i32 %i.aqn, %i.aqm
  %.not751 = icmp eq i32 %i.aqo, 0
  br i1 %.not751, label %.loopexit679, label %.lr.ph740

.lr.ph740:                                        ; preds = %.preheader678, %.lr.ph740
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %.lr.ph740 ], [ 0, %.preheader678 ] ; 2 uses
  %i.aqp = add nuw nsw i64 %indvars.iv834, 6
  %i.aqq = and i64 %i.aqp, 4294967295
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %i.aqq ; 2 uses
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !134
  %i.aqt = lshr i32 %i.aqs, 2
  store i32 %i.aqt, ptr %i.aqr, align 4, !tbaa !134
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %i.aqu = load i32, ptr %i.aqk, align 8, !tbaa !134
  %i.aqv = load i32, ptr %i.aql, align 4, !tbaa !134
  %i.aqw = mul i32 %i.aqv, %i.aqu
  %i.aqx = zext i32 %i.aqw to i64
  %i.aqy = icmp samesign ult i64 %indvars.iv.next835, %i.aqx
  br i1 %i.aqy, label %.lr.ph740, label %.loopexit679, !llvm.loop !103

.loopexit679:                                     ; preds = %.lr.ph740, %.preheader678, %.thread628.a, %bb.hq, %bb.hp
  %i.aqz = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64) ; 2 uses
  %i.ara = and i1 %i.aqz, %i.aps
  br i1 %i.ara, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %.loopexit679
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 9, ptr %i.arb, align 8, !tbaa !155
  br label %bb.ib

bb.hs:                                            ; preds = %.loopexit679
  switch i32 %i.wp, label %.thread630.a [
    i32 8, label %bb.ht
    i32 43, label %bb.hv
  ]

bb.ht:                                            ; preds = %bb.hs
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !134
  %i.are = icmp ugt i32 %i.ard, 7
  br i1 %i.are, label %bb.hu, label %.thread630.a

bb.hu:                                            ; preds = %bb.ht
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.arg = load i32, ptr %i.arf, align 8, !tbaa !134
  %.not518 = icmp eq i32 %i.arg, 0
  br i1 %.not518, label %.thread630.a, label %.thread632

.thread632:                                       ; preds = %bb.hu
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 3, ptr %i.arh, align 8, !tbaa !155
  br label %bb.if

bb.hv:                                            ; preds = %bb.hs
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 2196
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !156
  %i.ark = icmp eq i32 %i.arj, 1
  br i1 %i.ark, label %.thread631.a, label %.thread630.a

.thread631.a:                                     ; preds = %bb.hv
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 5, ptr %i.arl, align 8, !tbaa !155
  br label %bb.ic

.thread630.a:                                     ; preds = %bb.hs, %bb.ht, %bb.hu, %bb.hv
  br i1 %i.amk, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %.thread630.a
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 4129
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !157
  %i.aro = and i8 %i.arn, 1
  %.not519 = icmp eq i8 %i.aro, 0
  br i1 %.not519, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 17, ptr %i.arp, align 8, !tbaa !155
  br label %bb.ib

bb.hy:                                            ; preds = %bb.hw, %.thread630.a
  %i.arq = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw19sony_ycbcr_load_rawEv to i64)
  %i.arr = and i1 %i.arq, %3
  %or.cond661 = and i1 %i.arr, %i.aps
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 192600 ; 2 uses
  br i1 %or.cond661, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 33, ptr %i.ars, align 8, !tbaa !155
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hy
  store i32 0, ptr %i.ars, align 8, !tbaa !155
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hx, %bb.ia, %bb.hz, %bb.hr
  br i1 %i.apw, label %bb.ic, label %bb.if

bb.ic:                                            ; preds = %.thread631.a, %bb.ib
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !134
  %.not523 = icmp eq i32 %i.aru, 0
  br i1 %.not523, label %bb.id, label %bb.if

bb.id:                                            ; preds = %bb.ic
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !88 ; 2 uses
  %i.arx = icmp ult i32 %i.arw, 1025
  %.demorgan = and i1 %i.aqz, %i.aps
  %or.cond955 = or i1 %i.arx, %.demorgan
  br i1 %or.cond955, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ary = uitofp i32 %i.arw to float
  %i.arz = fdiv float %i.ary, 1.070000e+00
  %i.asa = fptosi float %i.arz to i64
  %i.asb = trunc i64 %i.asa to i32
  %i.asc = insertelement <4 x i32> poison, i32 %i.asb, i64 0
  %i.asd = shufflevector <4 x i32> %i.asc, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.asd, ptr %i.art, align 4, !tbaa !134
  br label %bb.if

bb.if:                                            ; preds = %.thread632, %bb.ie, %bb.id, %bb.ic, %bb.ib
  br i1 %i.amk, label %bb.ig, label %.loopexit

bb.ig:                                            ; preds = %bb.if
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !151
  %i.asg = icmp eq i64 %i.asf, 77012
  br i1 %i.asg, label %.preheader677, label %.loopexit

.preheader677:                                    ; preds = %bb.ig
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 187224
  br label %bb.ih

.preheader676:                                    ; preds = %bb.ij
  %i.asi = getelementptr inbounds nuw i8, ptr %0, i64 191320 ; 2 uses
  br label %bb.ik

bb.ih:                                            ; preds = %.preheader677, %bb.ij
  %indvars.iv837.a = phi i64 [ 0, %.preheader677 ], [ %indvars.iv.next838, %bb.ij ] ; 2 uses
  %i.asj = getelementptr inbounds nuw [16 x i8], ptr %i.ash, i64 %indvars.iv837.a ; 4 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 4
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !134
  %.not543 = icmp eq i32 %i.asl, 0
  br i1 %.not543, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.asm = load i32, ptr %i.asj, align 8, !tbaa !134
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asj, i64 8 ; 2 uses
  %i.aso = load i32, ptr %i.asn, align 8, !tbaa !134
  %i.asp = insertelement <2 x i32> poison, i32 %i.asm, i64 0
  %i.asq = insertelement <2 x i32> %i.asp, i32 %i.aso, i64 1
  %i.asr = sitofp <2 x i32> %i.asq to <2 x float>
  %i.ass = fmul nnan <2 x float> %i.asr, <float 1.050300e+00, float 2.286700e+00>
  %i.ast = fptosi <2 x float> %i.ass to <2 x i32> ; 2 uses
  %i.asu = extractelement <2 x i32> %i.ast, i64 0
  store i32 %i.asu, ptr %i.asj, align 8, !tbaa !134
  %i.asv = extractelement <2 x i32> %i.ast, i64 1
  store i32 %i.asv, ptr %i.asn, align 8, !tbaa !134
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837.a, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next838, 25
  br i1 %exitcond840.not, label %.preheader676, label %bb.ih, !llvm.loop !104

.preheader675:                                    ; preds = %bb.io
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 187240
  %i.asx = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.asy = load <4 x i32>, ptr %i.asw, align 8, !tbaa !134
  %i.asz = sitofp <4 x i32> %i.asy to <4 x float>
  store <4 x float> %i.asz, ptr %i.asx, align 4, !tbaa !93
  br label %.loopexit

bb.ik:                                            ; preds = %bb.io, %.preheader676
  %indvars.iv841 = phi i64 [ 0, %.preheader676 ], [ %indvars.iv.next842.1, %bb.io ] ; 3 uses
  %i.ata = getelementptr inbounds nuw [20 x i8], ptr %i.asi, i64 %indvars.iv841 ; 3 uses
  %i.atb = load float, ptr %i.ata, align 8, !tbaa !93
  %i.atc = fcmp ogt float %i.atb, 0.000000e+00
  br i1 %i.atc, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ata, i64 4 ; 2 uses
  %i.ate = load float, ptr %i.atd, align 4, !tbaa !93
  %i.atf = fmul float %i.ate, 1.050300e+00
  store float %i.atf, ptr %i.atd, align 4, !tbaa !93
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ata, i64 12 ; 2 uses
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !93
  %i.ati = fmul float %i.ath, 2.286700e+00
  store float %i.ati, ptr %i.atg, align 4, !tbaa !93
  br label %bb.im

bb.im:                                            ; preds = %bb.ik, %bb.il
  %i.atj = getelementptr inbounds nuw [20 x i8], ptr %i.asi, i64 %indvars.iv841 ; 3 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 20
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !93
  %i.atm = fcmp ogt float %i.atl, 0.000000e+00
  br i1 %i.atm, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atj, i64 24 ; 2 uses
  %i.ato = load float, ptr %i.atn, align 8, !tbaa !93
  %i.atp = fmul float %i.ato, 1.050300e+00
  store float %i.atp, ptr %i.atn, align 8, !tbaa !93
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atj, i64 32 ; 2 uses
  %i.atr = load float, ptr %i.atq, align 8, !tbaa !93
  %i.ats = fmul float %i.atr, 2.286700e+00
  store float %i.ats, ptr %i.atq, align 8, !tbaa !93
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv841, 2 ; 2 uses
  %exitcond844.not.1 = icmp eq i64 %indvars.iv.next842.1, 64
  br i1 %exitcond844.not.1, label %.preheader675, label %bb.ik, !llvm.loop !105

.loopexit:                                        ; preds = %.preheader675, %bb.ig, %bb.if
  %i.att = icmp eq i64 %.unpack511, ptrtoint (ptr @_ZN6LibRaw18panasonic_load_rawEv to i64)
  %i.atu = icmp eq i32 %i.wp, 47
  %i.atv = and i1 %i.atu, %i.att
  %or.cond662 = and i1 %i.atv, %i.aps
  br i1 %or.cond662, label %bb.ip, label %bb.iu

bb.ip:                                            ; preds = %.loopexit
  %i.atw = getelementptr inbounds nuw i8, ptr %0, i64 381640
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !134 ; 2 uses
  %.not530 = icmp eq i32 %i.atx, 0
  br i1 %.not530, label %bb.iu, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 381644
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !134 ; 2 uses
  %.not531 = icmp eq i32 %i.atz, 0
  br i1 %.not531, label %bb.iu, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 381648
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !134 ; 2 uses
  %.not532 = icmp eq i32 %i.aub, 0
  br i1 %.not532, label %bb.iu, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 381908
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !135 ; 2 uses
  %i.aue = icmp eq i32 %i.aud, 5
  br i1 %i.aue, label %bb.it, label %.preheader

bb.it:                                            ; preds = %bb.is
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 381664
  store i32 0, ptr %i.auf, align 8, !tbaa !75
  br label %.preheader

.preheader:                                       ; preds = %bb.it, %bb.is
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.auh = icmp eq i32 %i.aud, 4
  %i.aui = select i1 %i.auh, i32 15, i32 0        ; 3 uses
  %i.auj = add i32 %i.aui, %i.atx                 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.aul = add i32 %i.aui, %i.atz                 ; 2 uses
  %i.aum = add i32 %i.aui, %i.aub                 ; 2 uses
  %spec.select582 = tail call i32 @llvm.umin.i32(i32 %i.aul, i32 %i.auj)
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.auo = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %spec.select582.2 = tail call i32 @llvm.umin.i32(i32 %spec.select582, i32 %i.aum) ; 4 uses
  %i.aup = sub i32 %i.auj, %spec.select582.2
  store i32 %i.aup, ptr %i.auk, align 8, !tbaa !134
  %i.auq = sub i32 %i.aul, %spec.select582.2      ; 2 uses
  store i32 %i.auq, ptr %i.aun, align 4, !tbaa !134
  %i.aur = sub i32 %i.aum, %spec.select582.2
  store i32 %i.aur, ptr %i.auo, align 8, !tbaa !134
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.auq, ptr %i.aus, align 4, !tbaa !134
  store i32 %spec.select582.2, ptr %i.aug, align 8, !tbaa !89
  br label %bb.iu

bb.iu:                                            ; preds = %.preheader, %bb.ir, %bb.iq, %bb.ip, %.loopexit
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 153872 ; 4 uses
  %i.auu = load i32, ptr %i.aut, align 8, !tbaa !158 ; 2 uses
  %.not533 = icmp eq i32 %i.auu, 0
  br i1 %.not533, label %bb.jj, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 153864 ; 4 uses
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !159 ; 2 uses
end_hunk_1
