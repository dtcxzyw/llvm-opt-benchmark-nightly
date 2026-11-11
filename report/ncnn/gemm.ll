Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm?download=true
inline.NumInlined: 65
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn4Gemm7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.hj = load <4 x i32>, ptr %i.hh, align 8, !tbaa !57
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !66
  store <4 x i32> %i.hj, ptr %i.dw, align 8, !tbaa !57
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !58 ; 2 uses
  store i32 %i.hm, ptr %i.dz, align 8, !tbaa !58
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !22
  store i64 %i.ho, ptr %i.ea, align 16, !tbaa !22
  br label %_ZN4ncnn3MataSERKS0_.exit207

_ZN4ncnn3MataSERKS0_.exit207.loopexit:            ; preds = %._crit_edge235
  %.pre260 = load i32, ptr %i.dz, align 8
  %.pre261 = load i32, ptr %i.dy, align 16
  br label %_ZN4ncnn3MataSERKS0_.exit207

_ZN4ncnn3MataSERKS0_.exit207:                     ; preds = %_ZN4ncnn3MataSERKS0_.exit207.loopexit, %bb.ac, %.lr.ph240, %_ZN4ncnn3Mat7releaseEv.exit.i202, %bb.ad
  %i.hp = phi i32 [ %.pre261, %_ZN4ncnn3MataSERKS0_.exit207.loopexit ], [ %i.fb, %bb.ac ], [ %i.fb, %.lr.ph240 ], [ %i.hk, %_ZN4ncnn3Mat7releaseEv.exit.i202 ], [ 0, %bb.ad ]
  %i.hq = phi i32 [ %.pre260, %_ZN4ncnn3MataSERKS0_.exit207.loopexit ], [ %i.ep, %bb.ac ], [ %i.ep, %.lr.ph240 ], [ %i.hm, %_ZN4ncnn3Mat7releaseEv.exit.i202 ], [ 0, %bb.ad ]
  %i.hr = load i32, ptr %i.ac, align 8, !tbaa !62
  %i.hs = icmp eq i32 %i.hr, 3
  %i.ht = load i32, ptr %i.af, align 8
  %i.hu = load i32, ptr %i.ae, align 16
  %i.hv = select i1 %i.hs, i32 %i.ht, i32 %i.hu   ; 4 uses
  %i.hw = load i32, ptr %i.dw, align 8, !tbaa !62
  %i.hx = icmp eq i32 %i.hw, 3
  %i.hy = select i1 %i.hx, i32 %i.hq, i32 %i.hp   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 11 uses
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  store i64 0, ptr %i.if, align 16, !tbaa !22
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ic, i8 0, i64 28, i1 false)
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !45
  %.not115 = icmp eq i32 %i.ih, 0
  br i1 %.not115, label %bb.as, label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit207
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !19 ; 2 uses
  %.not.i192 = icmp eq ptr %i.ik, null
  br i1 %.not.i192, label %.thread335, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.il = atomicrmw add ptr %i.ik, i32 1 acq_rel, align 4 ; 0 uses
  %.pre262 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i193 = icmp eq ptr %.pre262, null
  br i1 %.not.i.i193, label %.thread335, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.im = atomicrmw add ptr %.pre262, i32 -1 acq_rel, align 4
  %i.in = icmp eq i32 %i.im, 1
  br i1 %i.in, label %bb.ao, label %.thread335

bb.ao:                                            ; preds = %bb.an
  %i.io = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i195 = icmp eq ptr %i.io, null
  %i.ip = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i195, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !13
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  invoke void %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef %i.ip)
          to label %.thread335 unwind label %bb.bx, !inline_history !1

bb.aq:                                            ; preds = %bb.ao
  %.not.i18.i196 = icmp eq ptr %i.ip, null
  br i1 %.not.i18.i196, label %.thread335, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.ip) #12
  br label %.thread335

.thread335:                                       ; preds = %bb.al, %bb.an, %bb.am, %bb.ap, %bb.ar, %bb.aq
  %i.it = load <2 x ptr>, ptr %i.ii, align 8, !tbaa !54
  store <2 x ptr> %i.it, ptr %6, align 16, !tbaa !54
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !55
  store i64 %i.iv, ptr %i.ia, align 16, !tbaa !55
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !56
  store i32 %i.ix, ptr %i.ib, align 8, !tbaa !56
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !20
  store ptr %i.iz, ptr %i.ic, align 16, !tbaa !20
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.jb = load <4 x i32>, ptr %i.ja, align 8, !tbaa !57
  store <4 x i32> %i.jb, ptr %i.id, align 8, !tbaa !57
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !58
  store i32 %i.jd, ptr %i.ie, align 8, !tbaa !58
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !22
  store i64 %i.jf, ptr %i.if, align 16, !tbaa !22
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !49
  br label %_ZNK4ncnn3Mat5emptyEv.exit216.thread

bb.as:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit207
  %i.ji = load i32, ptr %i.k, align 8, !tbaa !43
  %.not116 = icmp eq i32 %i.ji, 0
  %i.jj = load i32, ptr %i.m, align 4, !tbaa !44
  %.not119 = icmp eq i32 %i.jj, 0                 ; 2 uses
  br i1 %.not116, label %bb.bd, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.pre265 = load ptr, ptr %1, align 8, !tbaa !61 ; 13 uses
  br i1 %.not119, label %.thread224, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !71
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %.pre265 to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp eq i64 %i.jo, 72
  br i1 %i.jp, label %bb.av, label %.thread224

bb.av:                                            ; preds = %bb.au
  %i.jq = icmp eq ptr %6, %.pre265
  br i1 %i.jq, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jr = getelementptr inbounds nuw i8, ptr %.pre265, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !19 ; 2 uses
  %.not.i184 = icmp eq ptr %i.js, null
  br i1 %.not.i184, label %_ZN4ncnn3Mat7releaseEv.exit.i186, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jt = atomicrmw add ptr %i.js, i32 1 acq_rel, align 4 ; 0 uses
  %.pre263 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i185 = icmp eq ptr %.pre263, null
  br i1 %.not.i.i185, label %_ZN4ncnn3Mat7releaseEv.exit.i186, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ju = atomicrmw add ptr %.pre263, i32 -1 acq_rel, align 4
  %i.jv = icmp eq i32 %i.ju, 1
  br i1 %i.jv, label %bb.az, label %_ZN4ncnn3Mat7releaseEv.exit.i186

bb.az:                                            ; preds = %bb.ay
  %i.jw = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i187 = icmp eq ptr %i.jw, null
  %i.jx = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i187, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !13
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef %i.jx)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i186 unwind label %bb.bx, !inline_history !1

bb.bb:                                            ; preds = %bb.az
  %.not.i18.i188 = icmp eq ptr %i.jx, null
  br i1 %.not.i18.i188, label %_ZN4ncnn3Mat7releaseEv.exit.i186, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.jx) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i186

_ZN4ncnn3Mat7releaseEv.exit.i186:                 ; preds = %bb.aw, %bb.bb, %bb.bc, %bb.ba, %bb.ay, %bb.ax
  %i.kb = load <2 x ptr>, ptr %.pre265, align 8, !tbaa !54
  %i.kc = load ptr, ptr %.pre265, align 8, !tbaa !21
  store <2 x ptr> %i.kb, ptr %6, align 16, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %.pre265, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !55
  store i64 %i.ke, ptr %i.ia, align 16, !tbaa !55
  %i.kf = getelementptr inbounds nuw i8, ptr %.pre265, i64 24
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !56
  store i32 %i.kg, ptr %i.ib, align 8, !tbaa !56
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre265, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !20
  store ptr %i.ki, ptr %i.ic, align 16, !tbaa !20
  %i.kj = getelementptr inbounds nuw i8, ptr %.pre265, i64 40 ; 2 uses
  %i.kk = load <4 x i32>, ptr %i.kj, align 8, !tbaa !57 ; 3 uses
  %i.kl = load i32, ptr %i.kj, align 8, !tbaa !62
  store <4 x i32> %i.kk, ptr %i.id, align 8, !tbaa !57
  %i.km = getelementptr inbounds nuw i8, ptr %.pre265, i64 56
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !58 ; 2 uses
  store i32 %i.kn, ptr %i.ie, align 8, !tbaa !58
  %i.ko = getelementptr inbounds nuw i8, ptr %.pre265, i64 64
  %i.kp = extractelement <4 x i32> %i.kk, i64 1
  %i.kq = extractelement <4 x i32> %i.kk, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit191

bb.bd:                                            ; preds = %bb.as
  br i1 %.not119, label %._crit_edge267, label %..thread224_crit_edge

._crit_edge267:                                   ; preds = %bb.bd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre268 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71
  %.pre269 = load ptr, ptr %1, align 8, !tbaa !61
  %.pre272 = ptrtoint ptr %.pre268 to i64
  br label %bb.bm

..thread224_crit_edge:                            ; preds = %bb.bd
  %.pre264 = load ptr, ptr %1, align 8, !tbaa !61
  br label %.thread224

.thread224:                                       ; preds = %..thread224_crit_edge, %bb.at, %bb.au
  %i.kr = phi ptr [ %.pre264, %..thread224_crit_edge ], [ %.pre265, %bb.at ], [ %.pre265, %bb.au ] ; 10 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !71
  %i.ku = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = icmp eq i64 %i.kw, 144
  br i1 %i.kx, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %.thread224
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 72 ; 3 uses
  %i.kz = icmp eq ptr %6, %i.ky
  br i1 %i.kz, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 80
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !19 ; 2 uses
  %.not.i176 = icmp eq ptr %i.lb, null
  br i1 %.not.i176, label %_ZN4ncnn3Mat7releaseEv.exit.i178, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lc = atomicrmw add ptr %i.lb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre266 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i177 = icmp eq ptr %.pre266, null
  br i1 %.not.i.i177, label %_ZN4ncnn3Mat7releaseEv.exit.i178, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ld = atomicrmw add ptr %.pre266, i32 -1 acq_rel, align 4
  %i.le = icmp eq i32 %i.ld, 1
  br i1 %i.le, label %bb.bi, label %_ZN4ncnn3Mat7releaseEv.exit.i178

bb.bi:                                            ; preds = %bb.bh
  %i.lf = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i179 = icmp eq ptr %i.lf, null
  %i.lg = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i179, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !13
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  invoke void %i.lj(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef %i.lg)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i178 unwind label %bb.bx, !inline_history !1

bb.bk:                                            ; preds = %bb.bi
  %.not.i18.i180 = icmp eq ptr %i.lg, null
  br i1 %.not.i18.i180, label %_ZN4ncnn3Mat7releaseEv.exit.i178, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.lg) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i178

_ZN4ncnn3Mat7releaseEv.exit.i178:                 ; preds = %bb.bf, %bb.bk, %bb.bl, %bb.bj, %bb.bh, %bb.bg
  %i.lk = load <2 x ptr>, ptr %i.ky, align 8, !tbaa !54
  %i.ll = load ptr, ptr %i.ky, align 8, !tbaa !21
  store <2 x ptr> %i.lk, ptr %6, align 16, !tbaa !54
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !55
  store i64 %i.ln, ptr %i.ia, align 16, !tbaa !55
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kr, i64 96
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !56
  store i32 %i.lp, ptr %i.ib, align 8, !tbaa !56
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kr, i64 104
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !20
  store ptr %i.lr, ptr %i.ic, align 16, !tbaa !20
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kr, i64 112 ; 2 uses
  %i.lt = load <4 x i32>, ptr %i.ls, align 8, !tbaa !57 ; 3 uses
  %i.lu = load i32, ptr %i.ls, align 8, !tbaa !62
  store <4 x i32> %i.lt, ptr %i.id, align 8, !tbaa !57
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kr, i64 128
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !58 ; 2 uses
  store i32 %i.lw, ptr %i.ie, align 8, !tbaa !58
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kr, i64 136
  %i.ly = extractelement <4 x i32> %i.lt, i64 1
  %i.lz = extractelement <4 x i32> %i.lt, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit191

bb.bm:                                            ; preds = %._crit_edge267, %.thread224
  %.pre-phi273.a = phi i64 [ %.pre272, %._crit_edge267 ], [ %i.ku, %.thread224 ]
  %7 = phi ptr [ %.pre269, %._crit_edge267 ], [ %i.kr, %.thread224 ] ; 9 uses
  %.pre-phi273 = ptrtoint ptr %7 to i64
  %i.ma = sub i64 %.pre-phi273.a, %.pre-phi273
  %i.mb = icmp eq i64 %i.ma, 216
  br i1 %i.mb, label %bb.bn, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread

bb.bn:                                            ; preds = %bb.bm
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  %i.md = icmp eq ptr %6, %i.mc
  br i1 %i.md, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.me = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !19 ; 2 uses
  %.not.i174 = icmp eq ptr %i.mf, null
  br i1 %.not.i174, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mg = atomicrmw add ptr %i.mf, i32 1 acq_rel, align 4 ; 0 uses
  %.pre270 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre270, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mh = atomicrmw add ptr %.pre270, i32 -1 acq_rel, align 4
  %i.mi = icmp eq i32 %i.mh, 1
  br i1 %i.mi, label %bb.br, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.mj = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.mj, null
  %i.mk = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ml = load ptr, ptr %i.mj, align 8, !tbaa !13
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8
  invoke void %i.mn(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef %i.mk)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i unwind label %bb.bx, !inline_history !1

bb.bt:                                            ; preds = %bb.br
  %.not.i18.i = icmp eq ptr %i.mk, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @free(ptr noundef nonnull %i.mk) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.bo, %bb.bt, %bb.bu, %bb.bs, %bb.bq, %bb.bp
  %i.mo = load <2 x ptr>, ptr %i.mc, align 8, !tbaa !54
  %i.mp = load ptr, ptr %i.mc, align 8, !tbaa !21
  store <2 x ptr> %i.mo, ptr %6, align 16, !tbaa !54
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !55
  store i64 %i.mr, ptr %i.ia, align 16, !tbaa !55
  %i.ms = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !56
  store i32 %i.mt, ptr %i.ib, align 8, !tbaa !56
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !20
  store ptr %i.mv, ptr %i.ic, align 16, !tbaa !20
  %i.mw = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 2 uses
  %i.mx = load <4 x i32>, ptr %i.mw, align 8, !tbaa !57 ; 3 uses
  %i.my = load i32, ptr %i.mw, align 8, !tbaa !62
  store <4 x i32> %i.mx, ptr %i.id, align 8, !tbaa !57
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !58 ; 2 uses
  store i32 %i.na, ptr %i.ie, align 8, !tbaa !58
  %i.nb = getelementptr inbounds nuw i8, ptr %7, i64 208
  %i.nc = extractelement <4 x i32> %i.mx, i64 1
  %i.nd = extractelement <4 x i32> %i.mx, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit191

_ZN4ncnn3MataSERKS0_.exit191:                     ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i, %_ZN4ncnn3Mat7releaseEv.exit.i178, %_ZN4ncnn3Mat7releaseEv.exit.i186
  %.sink.in = phi ptr [ %i.nb, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lx, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.ko, %_ZN4ncnn3Mat7releaseEv.exit.i186 ]
  %i.ne = phi i32 [ %i.nd, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lz, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kq, %_ZN4ncnn3Mat7releaseEv.exit.i186 ] ; 2 uses
  %i.nf = phi i32 [ %i.nc, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.ly, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kp, %_ZN4ncnn3Mat7releaseEv.exit.i186 ] ; 3 uses
  %i.ng = phi i32 [ %i.my, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lu, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kl, %_ZN4ncnn3Mat7releaseEv.exit.i186 ] ; 2 uses
  %i.nh = phi i32 [ %i.na, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lw, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kn, %_ZN4ncnn3Mat7releaseEv.exit.i186 ]
  %i.ni = phi ptr [ %i.mp, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.ll, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kc, %_ZN4ncnn3Mat7releaseEv.exit.i186 ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !22 ; 2 uses
  store i64 %.sink, ptr %i.if, align 16, !tbaa !22
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %_ZNK4ncnn3Mat5emptyEv.exit216

_ZNK4ncnn3Mat5emptyEv.exit216:                    ; preds = %_ZN4ncnn3MataSERKS0_.exit191
  %i.nk = sext i32 %i.nh to i64
  %i.nl = mul i64 %.sink, %i.nk
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %bb.bv

bb.bv:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit216
  %i.nn = icmp eq i32 %i.ng, 1                    ; 2 uses
  %i.no = icmp eq i32 %i.nf, 1
  %i.np = icmp eq i32 %i.nf, %i.hv
  %or.cond127 = select i1 %i.nn, i1 %i.np, i1 false
  %.1 = zext i1 %or.cond127 to i32
  %i.nq = icmp eq i32 %i.nf, %i.hy                ; 3 uses
  %or.cond129 = select i1 %i.nn, i1 %i.nq, i1 false
  %.2 = select i1 %or.cond129, i32 4, i32 %.1
  %i.nr = icmp eq i32 %i.ng, 2                    ; 3 uses
  %or.cond5 = select i1 %i.nr, i1 %i.no, i1 false
  %i.ns = icmp eq i32 %i.ne, %i.hv                ; 2 uses
  %or.cond132 = select i1 %or.cond5, i1 %i.ns, i1 false
  %.3 = select i1 %or.cond132, i32 2, i32 %.2
  %or.cond134 = select i1 %i.nr, i1 %i.nq, i1 false
  %or.cond137 = select i1 %or.cond134, i1 %i.ns, i1 false
  %.4 = select i1 %or.cond137, i32 3, i32 %.3     ; 2 uses
  br i1 %i.nr, label %bb.bw, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread

bb.bw:                                            ; preds = %bb.bv
  %i.nt = icmp eq i32 %i.ne, 1
  %or.cond8 = select i1 %i.nq, i1 %i.nt, i1 false
  %spec.select = select i1 %or.cond8, i32 4, i32 %.4
  br label %_ZNK4ncnn3Mat5emptyEv.exit216.thread

_ZNK4ncnn3Mat5emptyEv.exit216.thread:             ; preds = %bb.bm, %bb.av, %bb.be, %bb.bn, %_ZN4ncnn3MataSERKS0_.exit191, %bb.bw, %_ZNK4ncnn3Mat5emptyEv.exit216, %bb.bv, %.thread335
  %.5 = phi i32 [ %i.jh, %.thread335 ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit216 ], [ %.4, %bb.bv ], [ %spec.select, %bb.bw ], [ 0, %_ZN4ncnn3MataSERKS0_.exit191 ], [ 0, %bb.bn ], [ 0, %bb.be ], [ 0, %bb.av ], [ 0, %bb.bm ]
  %i.nu = load ptr, ptr %2, align 8, !tbaa !61    ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !51
  %.not120 = icmp eq i32 %i.nw, 0                 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !50
  %.not121 = icmp eq i32 %i.ny, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !72 ; 2 uses
  %. = select i1 %.not120, i32 %i.hy, i32 %i.hv   ; 2 uses
  %.344 = select i1 %.not120, i32 %i.hv, i32 %i.hy ; 2 uses
  br i1 %.not121, label %.invoke, label %.invoke343

bb.bx:                                            ; preds = %.invoke343, %.invoke, %bb.ap, %bb.ba, %bb.bj, %bb.bs
  %i.ob = landingpad { ptr, i32 }
          cleanup
  %i.oc = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i143 = icmp eq ptr %i.oc, null
  br i1 %.not.i143, label %_ZN4ncnn3MatD2Ev.exit141, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.od = atomicrmw add ptr %i.oc, i32 -1 acq_rel, align 4
  %i.oe = icmp eq i32 %i.od, 1
  br i1 %i.oe, label %bb.bz, label %_ZN4ncnn3MatD2Ev.exit141

bb.bz:                                            ; preds = %bb.by
  %i.of = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i144 = icmp eq ptr %i.of, null
  %i.og = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i144, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oh = load ptr, ptr %i.of, align 8, !tbaa !13
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8
  invoke void %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef %i.og)
          to label %_ZN4ncnn3MatD2Ev.exit141 unwind label %bb.cd, !inline_history !0

bb.cb:                                            ; preds = %bb.bz
  %.not.i170 = icmp eq ptr %i.og, null
  br i1 %.not.i170, label %_ZN4ncnn3MatD2Ev.exit141, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef nonnull %i.og) #12
  br label %_ZN4ncnn3MatD2Ev.exit141

bb.cd:                                            ; preds = %bb.ca
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  %i.ol = extractvalue { ptr, i32 } %i.ok, 0
  call void @__clang_call_terminate(ptr %i.ol) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit141:                         ; preds = %bb.by, %bb.bx, %bb.ca, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.cs

.invoke343:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit216.thread
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nu, i32 noundef %., i32 noundef 1, i32 noundef %.344, i64 noundef %i.x, ptr noundef %i.oa)
          to label %bb.ce unwind label %bb.bx

.invoke:                                          ; preds = %_ZNK4ncnn3Mat5emptyEv.exit216.thread
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nu, i32 noundef %., i32 noundef %.344, i64 noundef %i.x, ptr noundef %i.oa)
          to label %bb.ce unwind label %bb.bx

bb.ce:                                            ; preds = %.invoke343, %.invoke
  %i.om = load ptr, ptr %i.nu, align 8, !tbaa !21
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ce
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nu, i64 64
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !22
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !58
  %i.os = sext i32 %i.or to i64
  %i.ot = mul i64 %i.op, %i.os
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !39
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 212
end_hunk_0
begin_hunk_1_@_ZNK4ncnn4Gemm12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  call void @free(ptr noundef nonnull %i.tx) #12
  br label %_ZN4ncnn3MataSERKS0_.exit338

_ZN4ncnn3MataSERKS0_.exit338:                     ; preds = %bb.am, %bb.ar, %bb.as, %bb.aq, %bb.an, %bb.ao
  %i.ub = load <2 x ptr>, ptr %7, align 16, !tbaa !54
  store <2 x ptr> %i.ub, ptr %8, align 16, !tbaa !54
  %i.uc = load i64, ptr %i.nw, align 16, !tbaa !55
  store i64 %i.uc, ptr %i.rr, align 16, !tbaa !55
  %i.ud = load i32, ptr %i.nz, align 8, !tbaa !56
  store i32 %i.ud, ptr %i.rs, align 8, !tbaa !56
  %i.ue = load ptr, ptr %i.oc, align 16, !tbaa !20
  store ptr %i.ue, ptr %i.rt, align 16, !tbaa !20
  %i.uf = load <4 x i32>, ptr %i.of, align 8, !tbaa !57
  %i.ug = load i32, ptr %i.oj, align 16, !tbaa !66
  store <4 x i32> %i.uf, ptr %i.ru, align 8, !tbaa !57
  %i.uh = load i32, ptr %i.om, align 8, !tbaa !58
  store i32 %i.uh, ptr %i.rx, align 8, !tbaa !58
  %i.ui = load i64, ptr %i.op, align 16, !tbaa !22
  store i64 %i.ui, ptr %i.ry, align 16, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge447, %.preheader, %_ZN4ncnn3MataSERKS0_.exit338
  %i.uj = phi i32 [ %i.ug, %_ZN4ncnn3MataSERKS0_.exit338 ], [ %i.sn, %.preheader ], [ %i.sz, %._crit_edge447 ] ; 3 uses
  %i.uk = load i32, ptr %i.jq, align 8, !tbaa !66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ul = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.um = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 11 uses
  %i.up = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 5 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store i64 0, ptr %i.ur, align 16, !tbaa !22
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.uo, i8 0, i64 28, i1 false)
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !45
  %.not190 = icmp eq i32 %i.ut, 0
  br i1 %.not190, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !19 ; 2 uses
  %.not.i323 = icmp eq ptr %i.uw, null
  br i1 %.not.i323, label %.thread637, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ux = atomicrmw add ptr %i.uw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre532 = load ptr, ptr %i.ul, align 8, !tbaa !19 ; 2 uses
  %.not.i.i324 = icmp eq ptr %.pre532, null
  br i1 %.not.i.i324, label %.thread637, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.uy = atomicrmw add ptr %.pre532, i32 -1 acq_rel, align 4
  %i.uz = icmp eq i32 %i.uy, 1
  br i1 %i.uz, label %bb.aw, label %.thread637

bb.aw:                                            ; preds = %bb.av
  %i.va = load ptr, ptr %i.uo, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i326 = icmp eq ptr %i.va, null
  %i.vb = load ptr, ptr %9, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i326, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.vc = load ptr, ptr %i.va, align 8, !tbaa !13
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8
  invoke void %i.ve(ptr noundef nonnull align 8 dereferenceable(8) %i.va, ptr noundef %i.vb)
          to label %.thread637 unwind label %bb.cf, !inline_history !1

bb.ay:                                            ; preds = %bb.aw
  %.not.i18.i327 = icmp eq ptr %i.vb, null
  br i1 %.not.i18.i327, label %.thread637, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.vb) #12
  br label %.thread637

.thread637:                                       ; preds = %bb.at, %bb.av, %bb.au, %bb.ax, %bb.az, %bb.ay
  %i.vf = load <2 x ptr>, ptr %i.uu, align 8, !tbaa !54
  store <2 x ptr> %i.vf, ptr %9, align 16, !tbaa !54
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !55
  store i64 %i.vh, ptr %i.um, align 16, !tbaa !55
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !56
  store i32 %i.vj, ptr %i.un, align 8, !tbaa !56
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !20
  store ptr %i.vl, ptr %i.uo, align 16, !tbaa !20
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.vn = load <4 x i32>, ptr %i.vm, align 8, !tbaa !57
  store <4 x i32> %i.vn, ptr %i.up, align 8, !tbaa !57
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !58
  store i32 %i.vp, ptr %i.uq, align 8, !tbaa !58
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !22
  store i64 %i.vr, ptr %i.ur, align 16, !tbaa !22
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !49
  br label %_ZNK4ncnn3Mat5emptyEv.exit347.thread

bb.ba:                                            ; preds = %.loopexit
  %i.vu = load i32, ptr %i.i, align 8, !tbaa !43
  %.not191 = icmp eq i32 %i.vu, 0
  %i.vv = load i32, ptr %i.k, align 4, !tbaa !44
  %.not194 = icmp eq i32 %i.vv, 0                 ; 2 uses
  br i1 %.not191, label %bb.bl, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.pre535 = load ptr, ptr %1, align 8, !tbaa !61 ; 13 uses
  br i1 %.not194, label %.thread388, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !71
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %.pre535 to i64
  %i.wa = sub i64 %i.vy, %i.vz
  %i.wb = icmp eq i64 %i.wa, 72
  br i1 %i.wb, label %bb.bd, label %.thread388

bb.bd:                                            ; preds = %bb.bc
  %i.wc = icmp eq ptr %9, %.pre535
  br i1 %i.wc, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.wd = getelementptr inbounds nuw i8, ptr %.pre535, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !19 ; 2 uses
  %.not.i315 = icmp eq ptr %i.we, null
  br i1 %.not.i315, label %_ZN4ncnn3Mat7releaseEv.exit.i317, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.wf = atomicrmw add ptr %i.we, i32 1 acq_rel, align 4 ; 0 uses
  %.pre533 = load ptr, ptr %i.ul, align 8, !tbaa !19 ; 2 uses
  %.not.i.i316 = icmp eq ptr %.pre533, null
  br i1 %.not.i.i316, label %_ZN4ncnn3Mat7releaseEv.exit.i317, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.wg = atomicrmw add ptr %.pre533, i32 -1 acq_rel, align 4
  %i.wh = icmp eq i32 %i.wg, 1
  br i1 %i.wh, label %bb.bh, label %_ZN4ncnn3Mat7releaseEv.exit.i317

bb.bh:                                            ; preds = %bb.bg
  %i.wi = load ptr, ptr %i.uo, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i318 = icmp eq ptr %i.wi, null
  %i.wj = load ptr, ptr %9, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i318, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.wk = load ptr, ptr %i.wi, align 8, !tbaa !13
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8
  invoke void %i.wm(ptr noundef nonnull align 8 dereferenceable(8) %i.wi, ptr noundef %i.wj)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i317 unwind label %bb.cf, !inline_history !1

bb.bj:                                            ; preds = %bb.bh
  %.not.i18.i319 = icmp eq ptr %i.wj, null
  br i1 %.not.i18.i319, label %_ZN4ncnn3Mat7releaseEv.exit.i317, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.wj) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i317

_ZN4ncnn3Mat7releaseEv.exit.i317:                 ; preds = %bb.be, %bb.bj, %bb.bk, %bb.bi, %bb.bg, %bb.bf
  store i64 0, ptr %i.ur, align 16, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.up, i8 0, i64 20, i1 false)
  %i.wn = load <2 x ptr>, ptr %.pre535, align 8, !tbaa !54
  %i.wo = load ptr, ptr %.pre535, align 8, !tbaa !21
  store <2 x ptr> %i.wn, ptr %9, align 16, !tbaa !54
  %i.wp = getelementptr inbounds nuw i8, ptr %.pre535, i64 16
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !55
  store i64 %i.wq, ptr %i.um, align 16, !tbaa !55
  %i.wr = getelementptr inbounds nuw i8, ptr %.pre535, i64 24
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !56
  store i32 %i.ws, ptr %i.un, align 8, !tbaa !56
  %i.wt = getelementptr inbounds nuw i8, ptr %.pre535, i64 32
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !20
  store ptr %i.wu, ptr %i.uo, align 16, !tbaa !20
  %i.wv = getelementptr inbounds nuw i8, ptr %.pre535, i64 40 ; 2 uses
  %i.ww = load <4 x i32>, ptr %i.wv, align 8, !tbaa !57 ; 3 uses
  %i.wx = load i32, ptr %i.wv, align 8, !tbaa !62
  store <4 x i32> %i.ww, ptr %i.up, align 8, !tbaa !57
  %i.wy = getelementptr inbounds nuw i8, ptr %.pre535, i64 56
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !58 ; 2 uses
  store i32 %i.wz, ptr %i.uq, align 8, !tbaa !58
  %i.xa = getelementptr inbounds nuw i8, ptr %.pre535, i64 64
  %i.xb = extractelement <4 x i32> %i.ww, i64 1
  %i.xc = extractelement <4 x i32> %i.ww, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit322

bb.bl:                                            ; preds = %bb.ba
  br i1 %.not194, label %._crit_edge537, label %..thread388_crit_edge

._crit_edge537:                                   ; preds = %bb.bl
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre538 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71
  %.pre539 = load ptr, ptr %1, align 8, !tbaa !61
  %.pre542 = ptrtoint ptr %.pre538 to i64
  br label %bb.bu

..thread388_crit_edge:                            ; preds = %bb.bl
  %.pre534 = load ptr, ptr %1, align 8, !tbaa !61
  br label %.thread388

.thread388:                                       ; preds = %..thread388_crit_edge, %bb.bb, %bb.bc
  %i.xd = phi ptr [ %.pre534, %..thread388_crit_edge ], [ %.pre535, %bb.bb ], [ %.pre535, %bb.bc ] ; 10 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !71
  %i.xg = ptrtoint ptr %i.xf to i64               ; 2 uses
  %i.xh = ptrtoint ptr %i.xd to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %i.xj = icmp eq i64 %i.xi, 144
  br i1 %i.xj, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %.thread388
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xd, i64 72 ; 3 uses
  %i.xl = icmp eq ptr %9, %i.xk
  br i1 %i.xl, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !19 ; 2 uses
  %.not.i307 = icmp eq ptr %i.xn, null
  br i1 %.not.i307, label %_ZN4ncnn3Mat7releaseEv.exit.i309, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xo = atomicrmw add ptr %i.xn, i32 1 acq_rel, align 4 ; 0 uses
  %.pre536 = load ptr, ptr %i.ul, align 8, !tbaa !19 ; 2 uses
  %.not.i.i308 = icmp eq ptr %.pre536, null
  br i1 %.not.i.i308, label %_ZN4ncnn3Mat7releaseEv.exit.i309, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.xp = atomicrmw add ptr %.pre536, i32 -1 acq_rel, align 4
  %i.xq = icmp eq i32 %i.xp, 1
  br i1 %i.xq, label %bb.bq, label %_ZN4ncnn3Mat7releaseEv.exit.i309

bb.bq:                                            ; preds = %bb.bp
  %i.xr = load ptr, ptr %i.uo, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i310 = icmp eq ptr %i.xr, null
  %i.xs = load ptr, ptr %9, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i310, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xt = load ptr, ptr %i.xr, align 8, !tbaa !13
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8
  invoke void %i.xv(ptr noundef nonnull align 8 dereferenceable(8) %i.xr, ptr noundef %i.xs)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i309 unwind label %bb.cf, !inline_history !1

bb.bs:                                            ; preds = %bb.bq
  %.not.i18.i311 = icmp eq ptr %i.xs, null
  br i1 %.not.i18.i311, label %_ZN4ncnn3Mat7releaseEv.exit.i309, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef nonnull %i.xs) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i309

_ZN4ncnn3Mat7releaseEv.exit.i309:                 ; preds = %bb.bn, %bb.bs, %bb.bt, %bb.br, %bb.bp, %bb.bo
  %i.xw = load <2 x ptr>, ptr %i.xk, align 8, !tbaa !54
  %i.xx = load ptr, ptr %i.xk, align 8, !tbaa !21
  store <2 x ptr> %i.xw, ptr %9, align 16, !tbaa !54
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xd, i64 88
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !55
  store i64 %i.xz, ptr %i.um, align 16, !tbaa !55
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !56
  store i32 %i.yb, ptr %i.un, align 8, !tbaa !56
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xd, i64 104
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !20
  store ptr %i.yd, ptr %i.uo, align 16, !tbaa !20
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xd, i64 112 ; 2 uses
  %i.yf = load <4 x i32>, ptr %i.ye, align 8, !tbaa !57 ; 3 uses
  %i.yg = load i32, ptr %i.ye, align 8, !tbaa !62
  store <4 x i32> %i.yf, ptr %i.up, align 8, !tbaa !57
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xd, i64 128
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !58 ; 2 uses
  store i32 %i.yi, ptr %i.uq, align 8, !tbaa !58
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xd, i64 136
  %i.yk = extractelement <4 x i32> %i.yf, i64 1
  %i.yl = extractelement <4 x i32> %i.yf, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit322

bb.bu:                                            ; preds = %._crit_edge537, %.thread388
  %.pre-phi543.a = phi i64 [ %.pre542, %._crit_edge537 ], [ %i.xg, %.thread388 ]
  %10 = phi ptr [ %.pre539, %._crit_edge537 ], [ %i.xd, %.thread388 ] ; 9 uses
  %.pre-phi543 = ptrtoint ptr %10 to i64
  %i.ym = sub i64 %.pre-phi543.a, %.pre-phi543
  %i.yn = icmp eq i64 %i.ym, 216
  br i1 %i.yn, label %bb.bv, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread

bb.bv:                                            ; preds = %bb.bu
  %i.yo = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 3 uses
  %i.yp = icmp eq ptr %9, %i.yo
  br i1 %i.yp, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.yq = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !19 ; 2 uses
  %.not.i305 = icmp eq ptr %i.yr, null
  br i1 %.not.i305, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ys = atomicrmw add ptr %i.yr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre540 = load ptr, ptr %i.ul, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre540, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.yt = atomicrmw add ptr %.pre540, i32 -1 acq_rel, align 4
  %i.yu = icmp eq i32 %i.yt, 1
  br i1 %i.yu, label %bb.bz, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.yv = load ptr, ptr %i.uo, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.yv, null
  %i.yw = load ptr, ptr %9, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.yx = load ptr, ptr %i.yv, align 8, !tbaa !13
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.yz = load ptr, ptr %i.yy, align 8
  invoke void %i.yz(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef %i.yw)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i unwind label %bb.cf, !inline_history !1

bb.cb:                                            ; preds = %bb.bz
  %.not.i18.i = icmp eq ptr %i.yw, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef nonnull %i.yw) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.bw, %bb.cb, %bb.cc, %bb.ca, %bb.by, %bb.bx
  %i.za = load <2 x ptr>, ptr %i.yo, align 8, !tbaa !54
  %i.zb = load ptr, ptr %i.yo, align 8, !tbaa !21
  store <2 x ptr> %i.za, ptr %9, align 16, !tbaa !54
  %i.zc = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !55
  store i64 %i.zd, ptr %i.um, align 16, !tbaa !55
  %i.ze = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !56
  store i32 %i.zf, ptr %i.un, align 8, !tbaa !56
  %i.zg = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !20
  store ptr %i.zh, ptr %i.uo, align 16, !tbaa !20
  %i.zi = getelementptr inbounds nuw i8, ptr %10, i64 184 ; 2 uses
  %i.zj = load <4 x i32>, ptr %i.zi, align 8, !tbaa !57 ; 3 uses
  %i.zk = load i32, ptr %i.zi, align 8, !tbaa !62
  store <4 x i32> %i.zj, ptr %i.up, align 8, !tbaa !57
  %i.zl = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !58 ; 2 uses
  store i32 %i.zm, ptr %i.uq, align 8, !tbaa !58
  %i.zn = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.zo = extractelement <4 x i32> %i.zj, i64 1
  %i.zp = extractelement <4 x i32> %i.zj, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit322

_ZN4ncnn3MataSERKS0_.exit322:                     ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i, %_ZN4ncnn3Mat7releaseEv.exit.i309, %_ZN4ncnn3Mat7releaseEv.exit.i317
  %.sink.in = phi ptr [ %i.zn, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.yj, %_ZN4ncnn3Mat7releaseEv.exit.i309 ], [ %i.xa, %_ZN4ncnn3Mat7releaseEv.exit.i317 ]
  %i.zq = phi i32 [ %i.zp, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.yl, %_ZN4ncnn3Mat7releaseEv.exit.i309 ], [ %i.xc, %_ZN4ncnn3Mat7releaseEv.exit.i317 ] ; 2 uses
  %i.zr = phi i32 [ %i.zo, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.yk, %_ZN4ncnn3Mat7releaseEv.exit.i309 ], [ %i.xb, %_ZN4ncnn3Mat7releaseEv.exit.i317 ] ; 3 uses
  %i.zs = phi i32 [ %i.zk, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.yg, %_ZN4ncnn3Mat7releaseEv.exit.i309 ], [ %i.wx, %_ZN4ncnn3Mat7releaseEv.exit.i317 ] ; 2 uses
  %i.zt = phi i32 [ %i.zm, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.yi, %_ZN4ncnn3Mat7releaseEv.exit.i309 ], [ %i.wz, %_ZN4ncnn3Mat7releaseEv.exit.i317 ]
  %i.zu = phi ptr [ %i.zb, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.xx, %_ZN4ncnn3Mat7releaseEv.exit.i309 ], [ %i.wo, %_ZN4ncnn3Mat7releaseEv.exit.i317 ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !22 ; 2 uses
  store i64 %.sink, ptr %i.ur, align 16, !tbaa !22
  %i.zv = icmp eq ptr %i.zu, null
  br i1 %i.zv, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread, label %_ZNK4ncnn3Mat5emptyEv.exit347

_ZNK4ncnn3Mat5emptyEv.exit347:                    ; preds = %_ZN4ncnn3MataSERKS0_.exit322
  %i.zw = sext i32 %i.zt to i64
  %i.zx = mul i64 %.sink, %i.zw
  %i.zy = icmp eq i64 %i.zx, 0
  br i1 %i.zy, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread, label %bb.cd

bb.cd:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit347
  %i.zz = icmp eq i32 %i.zs, 1                    ; 2 uses
  %i.aaa = icmp eq i32 %i.zr, 1
  %i.aab = icmp eq i32 %i.zr, %i.uk
  %or.cond209 = select i1 %i.zz, i1 %i.aab, i1 false
  %.1 = zext i1 %or.cond209 to i32
  %i.aac = icmp eq i32 %i.zr, %i.uj               ; 3 uses
  %or.cond211 = select i1 %i.zz, i1 %i.aac, i1 false
  %.2 = select i1 %or.cond211, i32 4, i32 %.1
  %i.aad = icmp eq i32 %i.zs, 2                   ; 3 uses
  %or.cond5 = select i1 %i.aad, i1 %i.aaa, i1 false
  %i.aae = icmp eq i32 %i.zq, %i.uk               ; 2 uses
  %or.cond214 = select i1 %or.cond5, i1 %i.aae, i1 false
  %.3 = select i1 %or.cond214, i32 2, i32 %.2
  %or.cond216 = select i1 %i.aad, i1 %i.aac, i1 false
  %or.cond219 = select i1 %or.cond216, i1 %i.aae, i1 false
  %.4 = select i1 %or.cond219, i32 3, i32 %.3     ; 2 uses
  br i1 %i.aad, label %bb.ce, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread

bb.ce:                                            ; preds = %bb.cd
  %i.aaf = icmp eq i32 %i.zq, 1
  %or.cond8 = select i1 %i.aac, i1 %i.aaf, i1 false
  %spec.select = select i1 %or.cond8, i32 4, i32 %.4
  br label %_ZNK4ncnn3Mat5emptyEv.exit347.thread

_ZNK4ncnn3Mat5emptyEv.exit347.thread:             ; preds = %bb.bu, %bb.bd, %bb.bm, %bb.bv, %_ZN4ncnn3MataSERKS0_.exit322, %bb.ce, %_ZNK4ncnn3Mat5emptyEv.exit347, %bb.cd, %.thread637
  %.5 = phi i32 [ %i.vt, %.thread637 ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit347 ], [ %.4, %bb.cd ], [ %spec.select, %bb.ce ], [ 0, %_ZN4ncnn3MataSERKS0_.exit322 ], [ 0, %bb.bv ], [ 0, %bb.bm ], [ 0, %bb.bd ], [ 0, %bb.bu ]
  %i.aag = load ptr, ptr %2, align 8, !tbaa !61   ; 6 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !51
  %.not195 = icmp eq i32 %i.aai, 0                ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !50
  %.not196 = icmp eq i32 %i.aak, 0
  %i.aal = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !72 ; 2 uses
  %. = select i1 %.not195, i32 %i.uj, i32 %i.uk   ; 2 uses
  %.654 = select i1 %.not195, i32 %i.uk, i32 %i.uj ; 2 uses
  br i1 %.not196, label %.invoke, label %.invoke653

bb.cf:                                            ; preds = %.invoke653, %.invoke, %bb.ax, %bb.bi, %bb.br, %bb.ca
  %i.aan = landingpad { ptr, i32 }
          cleanup
  %i.aao = load ptr, ptr %i.ul, align 8, !tbaa !19 ; 2 uses
  %.not.i236 = icmp eq ptr %i.aao, null
  br i1 %.not.i236, label %_ZN4ncnn3MatD2Ev.exit229, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aap = atomicrmw add ptr %i.aao, i32 -1 acq_rel, align 4
  %i.aaq = icmp eq i32 %i.aap, 1
  br i1 %i.aaq, label %bb.ch, label %_ZN4ncnn3MatD2Ev.exit229

bb.ch:                                            ; preds = %bb.cg
  %i.aar = load ptr, ptr %i.uo, align 16, !tbaa !20 ; 3 uses
  %.not3.i237 = icmp eq ptr %i.aar, null
  %i.aas = load ptr, ptr %9, align 16, !tbaa !21  ; 3 uses
  br i1 %.not3.i237, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aat = load ptr, ptr %i.aar, align 8, !tbaa !13
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 24
  %i.aav = load ptr, ptr %i.aau, align 8
  invoke void %i.aav(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, ptr noundef %i.aas)
          to label %_ZN4ncnn3MatD2Ev.exit229 unwind label %bb.cl, !inline_history !0

bb.cj:                                            ; preds = %bb.ch
  %.not.i299 = icmp eq ptr %i.aas, null
  br i1 %.not.i299, label %_ZN4ncnn3MatD2Ev.exit229, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @free(ptr noundef nonnull %i.aas) #12
  br label %_ZN4ncnn3MatD2Ev.exit229

bb.cl:                                            ; preds = %bb.ci
  %i.aaw = landingpad { ptr, i32 }
          catch ptr null
  %i.aax = extractvalue { ptr, i32 } %i.aaw, 0
  call void @__clang_call_terminate(ptr %i.aax) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit229:                         ; preds = %bb.cg, %bb.cf, %bb.ci, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.da

.invoke653:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit347.thread
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aag, i32 noundef %., i32 noundef 1, i32 noundef %.654, i64 noundef 4, ptr noundef %i.aam)
          to label %bb.cm unwind label %bb.cf

.invoke:                                          ; preds = %_ZNK4ncnn3Mat5emptyEv.exit347.thread
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aag, i32 noundef %., i32 noundef %.654, i64 noundef 4, ptr noundef %i.aam)
          to label %bb.cm unwind label %bb.cf

bb.cm:                                            ; preds = %.invoke653, %.invoke
  %i.aay = load ptr, ptr %i.aag, align 8, !tbaa !21
  %i.aaz = icmp eq ptr %i.aay, null
  br i1 %i.aaz, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.cm
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aag, i64 64
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !22
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aag, i64 56
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !58
  %i.abe = sext i32 %i.abd to i64
  %i.abf = mul i64 %i.abb, %i.abe
  %i.abg = icmp eq i64 %i.abf, 0
  br i1 %i.abg, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.abi = load float, ptr %i.abh, align 8, !tbaa !39
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 212
end_hunk_1
