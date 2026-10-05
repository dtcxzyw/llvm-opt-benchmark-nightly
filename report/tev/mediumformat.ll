Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mediumformat?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6LibRaw15parse_phase_oneEx:bb.a
bb.an:                                            ; preds = %bb.am
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !75
  switch i8 %i.ij, label %bb.ar [
    i8 67, label %bb.ao
    i8 77, label %bb.ap
    i8 72, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.aj, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false) #8
  br label %.sink.split194

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.aj, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, i64 11, i1 false) #8
  br label %.sink.split194

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.aj, ptr noundef nonnull align 1 dereferenceable(17) @.str.4, i64 17, i1 false) #8
  br label %.sink.split194

.sink.split194:                                   ; preds = %bb.ao, %bb.aq, %bb.ap
  %.sink195 = phi i16 [ 24, %bb.ap ], [ 14, %bb.aq ], [ 8, %bb.ao ]
  store i16 %.sink195, ptr %i.aq, align 2, !tbaa !77
  store i16 11, ptr %i.ar, align 8, !tbaa !78
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split194, %bb.an
  store i8 0, ptr %i.ih, align 1, !tbaa !75
  br label %bb.as

bb.as:                                            ; preds = %bb.am, %bb.ar, %bb.j
  %i.ik = icmp eq i32 %i.db, 4
  br i1 %i.ik, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.il = call noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  %i.im = fmul float %i.il, 5.000000e-01          ; 2 uses
  %i.in = call float @llvm.fabs.f32(float %i.im)
  %or.cond.i.i = fcmp ogt float %i.in, 6.400000e+01
  br i1 %or.cond.i.i, label %_ZN6LibRaw14libraw_powf64lEff.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %exp2f153 = call float @exp2f(float %i.im)
  br label %_ZN6LibRaw14libraw_powf64lEff.exit

_ZN6LibRaw14libraw_powf64lEff.exit:               ; preds = %bb.at, %bb.au
  %i.io = phi float [ %exp2f153, %bb.au ], [ 0.000000e+00, %bb.at ]
  store float %i.io, ptr %i.as, align 4, !tbaa !105
  br label %.thread

bb.av:                                            ; preds = %bb.as
  %i.ip = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.iq = fptrunc double %i.ip to float
  %i.ir = fmul float %i.iq, 5.000000e-01          ; 2 uses
  %i.is = call float @llvm.fabs.f32(float %i.ir)
  %or.cond.i.i137 = fcmp ogt float %i.is, 6.400000e+01
  br i1 %or.cond.i.i137, label %_ZN6LibRaw14libraw_powf64lEff.exit138, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %exp2f152 = call float @exp2f(float %i.ir)
  br label %_ZN6LibRaw14libraw_powf64lEff.exit138

_ZN6LibRaw14libraw_powf64lEff.exit138:            ; preds = %bb.av, %bb.aw
  %i.it = phi float [ %exp2f152, %bb.aw ], [ 0.000000e+00, %bb.av ]
  store float %i.it, ptr %i.as, align 4, !tbaa !105
  br label %.thread

bb.ax:                                            ; preds = %bb.j
  %i.iu = icmp eq i32 %i.db, 4
  br i1 %i.iu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.iv = call noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  store float %i.iv, ptr %i.ak, align 8, !tbaa !106
  br label %.thread

bb.az:                                            ; preds = %bb.ax
  %i.iw = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.ix = fptrunc double %i.iw to float
  store float %i.ix, ptr %i.ak, align 8, !tbaa !106
  br label %.thread

bb.ba:                                            ; preds = %bb.j
  %i.iy = call i32 @llvm.umin.i32(i32 %i.dc, i32 64)
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.jb = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.aj, i64 noundef %i.iz, ptr noundef %i.ja) ; 0 uses
  %i.jc = load i8, ptr %i.aj, align 4, !tbaa !75
  %i.jd = icmp eq i8 %i.jc, -1
  br i1 %i.jd, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.aj, align 4, !tbaa !75
  br label %.thread

bb.bc:                                            ; preds = %bb.j
  %i.je = call i32 @llvm.umin.i32(i32 %i.dc, i32 128)
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.jh = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.ai, i64 noundef %i.jf, ptr noundef %i.jg) ; 0 uses
  %i.ji = load i8, ptr %i.ai, align 8, !tbaa !75
  %i.jj = icmp eq i8 %i.ji, -1
  br i1 %i.jj, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %i.ai, align 8, !tbaa !75
  br label %.thread

bb.be:                                            ; preds = %bb.j
  %i.jk = icmp eq i32 %i.db, 4
  br i1 %i.jk, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.jl = call noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  %i.jm = fmul float %i.jl, 5.000000e-01          ; 2 uses
  %i.jn = call float @llvm.fabs.f32(float %i.jm)
  %or.cond.i.i139 = fcmp ogt float %i.jn, 6.400000e+01
  br i1 %or.cond.i.i139, label %_ZN6LibRaw14libraw_powf64lEff.exit140, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %exp2f151 = call float @exp2f(float %i.jm)
  br label %_ZN6LibRaw14libraw_powf64lEff.exit140

_ZN6LibRaw14libraw_powf64lEff.exit140:            ; preds = %bb.bf, %bb.bg
  %i.jo = phi float [ %exp2f151, %bb.bg ], [ 0.000000e+00, %bb.bf ]
  store float %i.jo, ptr %i.ah, align 8, !tbaa !107
  br label %.thread

bb.bh:                                            ; preds = %bb.be
  %i.jp = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.jq = fptrunc double %i.jp to float
  %i.jr = fmul float %i.jq, 5.000000e-01          ; 2 uses
  %i.js = call float @llvm.fabs.f32(float %i.jr)
  %or.cond.i.i141 = fcmp ogt float %i.js, 6.400000e+01
  br i1 %or.cond.i.i141, label %_ZN6LibRaw14libraw_powf64lEff.exit142, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %exp2f150 = call float @exp2f(float %i.jr)
  br label %_ZN6LibRaw14libraw_powf64lEff.exit142

_ZN6LibRaw14libraw_powf64lEff.exit142:            ; preds = %bb.bh, %bb.bi
  %i.jt = phi float [ %exp2f150, %bb.bi ], [ 0.000000e+00, %bb.bh ]
  store float %i.jt, ptr %i.ah, align 8, !tbaa !107
  br label %.thread

bb.bj:                                            ; preds = %bb.j
  %i.ju = icmp eq i32 %i.db, 4
  br i1 %i.ju, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.jv = call noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  %i.jw = fmul float %i.jv, 5.000000e-01          ; 2 uses
  %i.jx = call float @llvm.fabs.f32(float %i.jw)
  %or.cond.i.i143 = fcmp ogt float %i.jx, 6.400000e+01
  br i1 %or.cond.i.i143, label %_ZN6LibRaw14libraw_powf64lEff.exit144, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %exp2f149 = call float @exp2f(float %i.jw)
  br label %_ZN6LibRaw14libraw_powf64lEff.exit144

_ZN6LibRaw14libraw_powf64lEff.exit144:            ; preds = %bb.bk, %bb.bl
  %i.jy = phi float [ %exp2f149, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  store float %i.jy, ptr %i.ag, align 4, !tbaa !108
  br label %.thread

bb.bm:                                            ; preds = %bb.bj
  %i.jz = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.ka = fptrunc double %i.jz to float
  %i.kb = fmul float %i.ka, 5.000000e-01          ; 2 uses
  %i.kc = call float @llvm.fabs.f32(float %i.kb)
  %or.cond.i.i145 = fcmp ogt float %i.kc, 6.400000e+01
  br i1 %or.cond.i.i145, label %_ZN6LibRaw14libraw_powf64lEff.exit146, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exp2f = call float @exp2f(float %i.kb)
  br label %_ZN6LibRaw14libraw_powf64lEff.exit146

_ZN6LibRaw14libraw_powf64lEff.exit146:            ; preds = %bb.bm, %bb.bn
  %i.kd = phi float [ %exp2f, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  store float %i.kd, ptr %i.ag, align 4, !tbaa !108
  br label %.thread

bb.bo:                                            ; preds = %bb.j
  %i.ke = icmp eq i32 %i.db, 4
  br i1 %i.ke, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kf = call noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.kg = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.kh = fptrunc double %i.kg to float
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ki = phi float [ %i.kh, %bb.bq ], [ %i.kf, %bb.bp ] ; 2 uses
  %i.kj = fcmp ogt float %i.ki, 1.000000e+03
  %spec.store.select = select i1 %i.kj, float 0.000000e+00, float %i.ki
  store float %spec.store.select, ptr %i.af, align 8
  br label %.thread

bb.bs:                                            ; preds = %bb.j
  %i.kk = icmp eq i32 %i.db, 4
  br i1 %i.kk, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kl = call noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  store float %i.kl, ptr %i.ae, align 4, !tbaa !109
  br label %.thread

bb.bu:                                            ; preds = %bb.bs
  %i.km = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.kn = fptrunc double %i.km to float
  store float %i.kn, ptr %i.ae, align 4, !tbaa !109
  br label %.thread

.loopexit155:                                     ; preds = %bb.j
  br i1 %i.dp, label %.thread, label %.thread148

.thread:                                          ; preds = %bb.br, %.preheader.preheader, %.preheader154.preheader, %.preheader156.preheader, %bb.k, %bb.o, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %_ZN6LibRaw14libraw_powf64lEff.exit138, %_ZN6LibRaw14libraw_powf64lEff.exit, %bb.az, %bb.ay, %bb.bb, %bb.ba, %bb.bd, %bb.bc, %_ZN6LibRaw14libraw_powf64lEff.exit142, %_ZN6LibRaw14libraw_powf64lEff.exit140, %_ZN6LibRaw14libraw_powf64lEff.exit146, %_ZN6LibRaw14libraw_powf64lEff.exit144, %bb.bu, %bb.bt, %.loopexit155
  %i.ko = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !72
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = call noundef i32 %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, i64 noundef %i.dn, i32 noundef 0) ; 0 uses
  br label %.thread148

.thread148:                                       ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %.loopexit155, %.thread, %bb.i
  %.not124 = icmp eq i32 %i.cz, 0
  br i1 %.not124, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %.thread148, %bb.e, %bb.d
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.ku = load i8, ptr %i.kt, align 4, !tbaa !75
  %.not129 = icmp eq i8 %i.ku, 0
  br i1 %.not129, label %bb.bv, label %.loopexit

bb.bv:                                            ; preds = %._crit_edge
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 5110 ; 3 uses
  %i.kw = load i8, ptr %i.kv, align 2, !tbaa !75
  %.not130 = icmp eq i8 %i.kw, 0
  br i1 %.not130, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.kx = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 381768 ; 3 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !92
  %i.la = load ptr, ptr %i.kx, align 8, !tbaa !72
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = call noundef i32 %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, i64 noundef %i.kz, i32 noundef 0) ; 0 uses
  %i.le = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.le, ptr %i.k, align 8, !tbaa !81
  %i.lf = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !72
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = call noundef i32 %i.li(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, i64 noundef 6, i32 noundef 1) ; 0 uses
  %i.lk = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.ll = load i64, ptr %i.ky, align 8, !tbaa !92
  %i.lm = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ln = zext i32 %i.lm to i64
  %i.lo = add nsw i64 %i.ll, %i.ln
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !72
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = call noundef i32 %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, i64 noundef %i.lo, i32 noundef 0) ; 0 uses
  %i.lt = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.lu = icmp ugt i32 %i.lt, 8192
  br i1 %i.lu, label %bb.cn, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lv = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %.not131163 = icmp eq i32 %i.lt, 0
  br i1 %.not131163, label %.loopexit, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.bx
  %i.lw = shl nsw i64 %i.ac, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 5111
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 5112
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph165, %bb.ce
  %.in172 = phi i32 [ %i.lt, %.lr.ph165 ], [ %i.ma, %bb.ce ]
  %i.ma = add nsw i32 %.in172, -1                 ; 2 uses
  %i.mb = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mc = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.md = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !72
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 80
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = call noundef i32 %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.md)
  %.not132 = icmp eq i32 %i.mh, 0
  br i1 %.not132, label %bb.bz, label %.loopexit

bb.bz:                                            ; preds = %bb.by
  %i.mi = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mj = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !72
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = call noundef i64 %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.mj)
  %i.mo = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.mp = load i64, ptr %i.ky, align 8, !tbaa !92
  %i.mq = zext i32 %i.mi to i64
  %i.mr = add nsw i64 %i.mp, %i.mq
  %i.ms = load ptr, ptr %i.mo, align 8, !tbaa !72
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = call noundef i32 %i.mu(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, i64 noundef %i.mr, i32 noundef 0) ; 0 uses
  %i.mw = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !72
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = call noundef i64 %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw)
  %i.nb = icmp ult i32 %i.mc, 9
  %i.nc = zext i32 %i.mc to i64
  %i.nd = add nsw i64 %i.na, %i.nc
  %i.ne = icmp sle i64 %i.nd, %i.lw
  %or.cond171.not205 = select i1 %i.nb, i1 true, i1 %i.ne
  %i.nf = icmp eq i32 %i.mb, 1031
  %or.cond202 = and i1 %or.cond171.not205, %i.nf
  br i1 %or.cond202, label %bb.ca, label %bb.ce, !llvm.loop !80

bb.ca:                                            ; preds = %bb.bz
  %i.ng = call i32 @llvm.umin.i32(i32 %i.mc, i32 64)
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.nj = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.kv, i64 noundef %i.nh, ptr noundef %i.ni) ; 0 uses
  %i.nk = load i8, ptr %i.kv, align 2, !tbaa !75  ; 2 uses
  %i.nl = icmp eq i8 %i.nk, 76
  %.pre177 = load i8, ptr %i.lx, align 1, !tbaa !75 ; 2 uses
  %i.nm = icmp eq i8 %.pre177, 73
  %or.cond196 = select i1 %i.nl, i1 %i.nm, i1 false
  br i1 %or.cond196, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.nn = load i8, ptr %i.lz, align 8, !tbaa !75
  %i.no = and i8 %i.nn, 63
  %i.np = zext nneg i8 %i.no to i64
  %i.nq = add nuw nsw i64 %i.np, 319
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.nr = and i8 %i.nk, 63
  %i.ns = zext nneg i8 %i.nr to i32
  %i.nt = shl nuw nsw i32 %i.ns, 5
  %i.nu = and i8 %.pre177, 63
  %i.nv = zext nneg i8 %i.nu to i32
  %i.nw = or i32 %i.nt, %i.nv
  %i.nx = add nsw i32 %i.nw, -65
  %i.ny = sext i32 %i.nx to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.nz = phi i64 [ %i.ny, %bb.cc ], [ %i.nq, %bb.cb ] ; 2 uses
  store i64 %i.nz, ptr %i.ly, align 8, !tbaa !82
  call void @_ZN6LibRaw19setPhaseOneFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.nz)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bz
  %i.oa = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !72
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = call noundef i32 %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, i64 noundef %i.mn, i32 noundef 0) ; 0 uses
  %.not131 = icmp eq i32 %i.ma, 0
  br i1 %.not131, label %.loopexit, label %bb.by

.loopexit:                                        ; preds = %bb.by, %bb.ce, %bb.bx, %bb.bv, %._crit_edge
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.og = load float, ptr %i.of, align 8, !tbaa !107 ; 5 uses
  %i.oh = fcmp ogt float %i.og, f0x3F333333
  br i1 %i.oh, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %.loopexit
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 1500 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !108 ; 5 uses
  %i.ok = fcmp ogt float %i.oj, f0x3F333333
  br i1 %i.ok, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ol = fcmp ogt float %i.og, %i.oj
  %. = select i1 %i.ol, float %i.og, float %i.oj
  %i.om = fcmp olt float %i.og, %i.oj
  %i.on = select i1 %i.om, float %i.og, float %i.oj
  store float %i.on, ptr %i.of, align 8, !tbaa !107
  store float %., ptr %i.oi, align 4, !tbaa !108
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.loopexit
  %i.oo = load i32, ptr %i.b, align 4, !tbaa !89  ; 2 uses
  %i.op = icmp eq i32 %i.oo, 6
  %i.oq = icmp slt i32 %i.oo, 3
  %.elt = select i1 %i.oq, i64 ptrtoint (ptr @_ZN6LibRaw18phase_one_load_rawEv to i64), i64 ptrtoint (ptr @_ZN6LibRaw20phase_one_load_raw_cEv to i64)
  %.elt.sink = select i1 %i.op, i64 ptrtoint (ptr @_ZN6LibRaw20phase_one_load_raw_sEv to i64), i64 %.elt
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 %.elt.sink, ptr %i.or, align 8, !tbaa !110
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %i.os, align 8, !tbaa !110
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 65535, ptr %i.ot, align 8, !tbaa !111
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ou, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false) #8
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 5 uses
  %i.ow = load i8, ptr %i.ov, align 4, !tbaa !75
  %.not136 = icmp eq i8 %i.ow, 0
  br i1 %.not136, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oy = load i16, ptr %i.ox, align 8, !tbaa !84
  switch i16 %i.oy, label %bb.cn [
    i16 2060, label %bb.cj
    i16 2682, label %bb.ck
    i16 4128, label %bb.cl
    i16 5488, label %bb.cm
  ]

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.ov, ptr noundef nonnull align 1 dereferenceable(11) @.str.6, i64 11, i1 false) #8
  br label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ov, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false) #8
  br label %bb.cn

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ov, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false) #8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ov, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false) #8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.b, %bb.c, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.ch, %bb.bw, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw19setPhaseOneFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #3

declare noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw10romm_coeffEPA3_f(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

declare noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

declare void @_ZN6LibRaw20phase_one_load_raw_sEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw18phase_one_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw20phase_one_load_raw_cEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw9parse_mosEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 33 uses
  %i.b = alloca i32, align 4                      ; 20 uses
  %i.c = alloca [4 x i32], align 16               ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [3 x [3 x float]], align 16       ; 6 uses
  %i.f = alloca [64 x i8], align 16               ; 4 uses
  %i.g = alloca [4 x ptr], align 16               ; 5 uses
  %i.h = alloca [64 x i8], align 16               ; 4 uses
  %i.i = alloca [4 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 22 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384226 ; 4 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !116
  %i.m = add i16 %i.l, -1                         ; 2 uses
  store i16 %i.m, ptr %i.k, align 2, !tbaa !116
  %i.n = icmp slt i16 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #8 ; 2 uses
  store i32 5, ptr %i.o, align 16, !tbaa !118
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %1, i32 noundef 0) ; 0 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %.not87 = icmp eq i32 %i.y, 0
  br i1 %.not87, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5110
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 381624
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 153872
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 153260
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.bc
  %.088 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.bc ] ; 3 uses
  %i.av = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.not35 = icmp eq i32 %i.av, 1347114067
  br i1 %.not35, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.aw = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 40) ; 0 uses
  store i8 0, ptr %i.z, align 1, !tbaa !75
  %i.bc = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 6 uses
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 4 uses
  %i.bi = load i128, ptr %i.a, align 16
  %i.bj = xor i128 %i.bi, 129529094622389673090914430064335348035
  %i.bk = getelementptr i8, ptr %i.a, i64 6
  %i.bl = load i128, ptr %i.bk, align 2
  %i.bm = xor i128 %i.bl, 526703235210860075479596392082203215
  %i.bn = or i128 %i.bj, %i.bm
  %i.bo = icmp ne i128 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not36 = icmp eq i32 %i.bp, 0
  br i1 %.not36, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.bq = call i32 @llvm.umin.i32(i32 %i.bc, i32 64)
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.bt = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.aa, i64 noundef %i.br, ptr noundef %i.bs) ; 0 uses
  %i.bu = load i8, ptr %i.aa, align 4, !tbaa !75
  %.not37 = icmp eq i8 %i.bu, 0
  br i1 %.not37, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(9) @.str.42, i64 noundef 8) #9
  %.not38 = icmp eq i32 %i.bv, 0
  br i1 %.not38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 23, ptr %i.ac, align 2, !tbaa !77
  store i16 16, ptr %i.ad, align 8, !tbaa !78
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.bw = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(13) @.str.43, i64 noundef 12) #9
  %.not39 = icmp eq i32 %i.bw, 0
  br i1 %.not39, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 12, ptr %i.ad, align 8, !tbaa !78
  store i16 15, ptr %i.ac, align 2, !tbaa !77
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.bx = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(13) @.str.44, i64 noundef 12) #9
  %.not40 = icmp eq i32 %i.bx, 0
  br i1 %.not40, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 14, ptr %i.ac, align 2, !tbaa !77
  store i16 11, ptr %i.ad, align 8, !tbaa !78
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.by = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(9) @.str.45, i64 noundef 8) #9
  %.not41 = icmp eq i32 %i.by, 0
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(12) @.str.46, i64 noundef 11) #9
  %.not42 = icmp eq i32 %i.bz, 0
  br i1 %.not42, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i16 24, ptr %i.ac, align 2, !tbaa !77
  store i16 11, ptr %i.ad, align 8, !tbaa !78
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ca = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(8) @.str.47, i64 noundef 7) #9
  %.not43 = icmp eq i32 %i.ca, 0
  br i1 %.not43, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i16 41, ptr %i.ac, align 2, !tbaa !77
  store i16 14, ptr %i.ad, align 8, !tbaa !78
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.cb = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(9) @.str.48, i64 noundef 8) #9
  %.not44 = icmp eq i32 %i.cb, 0
  br i1 %.not44, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i16 36, ptr %i.ac, align 2, !tbaa !77
  store i16 12, ptr %i.ad, align 8, !tbaa !78
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.j, %bb.o, %bb.r, %bb.s, %bb.q, %bb.l, %bb.h, %bb.e
  %i.cc = load i128, ptr %i.a, align 16
  %i.cd = xor i128 %i.cc, 130832685731055655506845902247037198690
  %i.ce = getelementptr i8, ptr %i.a, i64 3
  %i.cf = load i128, ptr %i.ce, align 1
  %i.cg = xor i128 %i.cf, 593978163478697178255345357927178091
  %i.ch = or i128 %i.cd, %i.cg
  %i.ci = icmp ne i128 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %.not46 = icmp eq i32 %i.cj, 0
  br i1 %.not46, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.ck = call i32 @llvm.umin.i32(i32 %i.bc, i32 64)
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.cn = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.f, i64 noundef %i.cl, ptr noundef %i.cm) ; 0 uses
  %i.co = call noundef i32 @_ZN6LibRaw8getwordsEPcPS0_ii(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef 4, i32 noundef 64) ; 0 uses
  %i.cp = load ptr, ptr %i.g, align 16, !tbaa !119 ; 2 uses
  %.not47 = icmp eq ptr %i.cp, null
  br i1 %.not47, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.cp) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.cr = load i128, ptr %i.a, align 16
  %i.cs = xor i128 %i.cr, 126839403408381324978911410932715381059
  %i.ct = getelementptr i8, ptr %i.a, i64 7
  %i.cu = load i128, ptr %i.ct, align 1
  %i.cv = xor i128 %i.cu, 593978163478697178255345357927178086
  %i.cw = or i128 %i.cs, %i.cv
  %i.cx = icmp ne i128 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %.not49 = icmp eq i32 %i.cy, 0
  br i1 %.not49, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.cz = call i32 @llvm.umin.i32(i32 %i.bc, i32 64)
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.dc = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.h, i64 noundef %i.da, ptr noundef %i.db) ; 0 uses
  %i.dd = call noundef i32 @_ZN6LibRaw8getwordsEPcPS0_ii(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 4, i32 noundef 64) ; 0 uses
  %i.de = load ptr, ptr %i.i, align 16, !tbaa !119 ; 2 uses
  %.not50 = icmp eq ptr %i.de, null
  br i1 %.not50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) %i.de) #8 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.dg = load i128, ptr %i.a, align 16
  %i.dh = xor i128 %i.dg, 154696136110915239267991214683322667082
  %i.di = getelementptr i8, ptr %i.a, i64 16
  %i.dj = load i16, ptr %i.di, align 16
  %i.dk = zext i16 %i.dj to i128
  %i.dl = xor i128 %i.dk, 97
  %i.dm = or i128 %i.dh, %i.dl
  %i.dn = icmp ne i128 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %.not52 = icmp eq i32 %i.do, 0
  br i1 %.not52, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.bh, ptr %i.ag, align 8, !tbaa !120
  store i32 %i.bc, ptr %i.ah, align 8, !tbaa !121
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = load i128, ptr %i.a, align 16
  %i.dq = xor i128 %i.dp, 140100814251240880267201700840889082729
  %i.dr = getelementptr i8, ptr %i.a, i64 3
  %i.ds = load i128, ptr %i.dr, align 1
  %i.dt = xor i128 %i.ds, 526620833608478159084518284145550175
  %i.du = or i128 %i.dq, %i.dt
  %i.dv = icmp ne i128 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %.not54 = icmp eq i32 %i.dw, 0
  br i1 %.not54, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.bh, ptr %i.ai, align 8, !tbaa !122
  store i32 %i.bc, ptr %i.aj, align 8, !tbaa !123
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dx = load i128, ptr %i.a, align 16
  %i.dy = xor i128 %i.dx, 161440829262647342890082155304766629971
  %i.dz = getelementptr i8, ptr %i.a, i64 3
  %i.ea = load i128, ptr %i.dz, align 1
  %i.eb = xor i128 %i.ea, 526703235210907022151935213085619311
  %i.ec = or i128 %i.dy, %i.eb
  %i.ed = icmp ne i128 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %.not56 = icmp eq i32 %i.ee, 0
  br i1 %.not56, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !72
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call noundef i32 %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b) ; 0 uses
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !115 ; 2 uses
  %i.el = icmp ult i32 %i.ek, 39
  br i1 %i.el, label %sub_0, label %bb.ai

sub_0:                                            ; preds = %bb.ag
  %i.em = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6LibRaw9parse_mosExE3mod, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !119
  %i.ep = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.eo) #8 ; 0 uses
  %i.eq = load i8, ptr %i.ab, align 4
  %.not91 = icmp eq i8 %i.eq, 65
  br i1 %.not91, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.er = load i8, ptr %i.ak, align 1
  %.not92 = icmp eq i8 %i.er, 70
  br i1 %.not92, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.es = load i8, ptr %i.al, align 2
  %i.et = icmp eq i8 %i.es, 105
  br i1 %i.et, label %bb.ah, label %.tail.thread

bb.ah:                                            ; preds = %.tail
  store i16 36, ptr %i.ac, align 2, !tbaa !77
  store i16 12, ptr %i.ad, align 8, !tbaa !78
  br label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %bb.ah, %.tail
  store i64 %i.em, ptr %i.am, align 8, !tbaa !124
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %.tail.thread, %bb.af
  %i.eu = load i128, ptr %i.a, align 16
  %i.ev = xor i128 %i.eu, 148148549626969657161189554489426928489
  %i.ew = getelementptr i8, ptr %i.a, i64 10
  %i.ex = load i128, ptr %i.ew, align 2
  %i.ey = xor i128 %i.ex, 625214344061132808427528271535502431
  %i.ez = or i128 %i.ev, %i.ey
  %i.fa = icmp ne i128 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %.not59 = icmp eq i32 %i.fb, 0
  br i1 %.not59, label %.preheader81, label %bb.al

.preheader81:                                     ; preds = %bb.ai
  store i32 0, ptr %i.b, align 4, !tbaa !115
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader81, %bb.aj
  %i.fc = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fd = call noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.fc)
  %i.fe = load i32, ptr %i.b, align 4, !tbaa !115 ; 3 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ff
  store float %i.fd, ptr %i.fg, align 4, !tbaa !74
  %i.fh = add nsw i32 %i.fe, 1
  store i32 %i.fh, ptr %i.b, align 4, !tbaa !115
  %i.fi = icmp slt i32 %i.fe, 8
  br i1 %i.fi, label %bb.aj, label %bb.ak, !llvm.loop !112

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN6LibRaw10romm_coeffEPA3_f(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.e)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.fj = load i128, ptr %i.a, align 16
  %i.fk = xor i128 %i.fj, 145381440764696535245781395953970864451
  %i.fl = getelementptr i8, ptr %i.a, i64 6
  %i.fm = load i128, ptr %i.fl, align 2
  %i.fn = xor i128 %i.fm, 625214344061132809364555149061613167
  %i.fo = or i128 %i.fk, %i.fn
  %i.fp = icmp ne i128 %i.fo, 0
  %i.fq = zext i1 %i.fp to i32
  %.not61 = icmp eq i32 %i.fq, 0
  br i1 %.not61, label %.preheader80, label %bb.ao

.preheader80:                                     ; preds = %bb.al
  store i32 0, ptr %i.b, align 4, !tbaa !115
  br label %bb.am

bb.am:                                            ; preds = %.preheader80, %bb.am
  %storemerge6282 = phi i32 [ 0, %.preheader80 ], [ %i.fz, %bb.am ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.fs = sext i32 %storemerge6282 to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fs
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !72
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call noundef i32 %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.ft) ; 0 uses
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !115 ; 2 uses
  %i.fz = add nsw i32 %i.fy, 1                    ; 2 uses
  store i32 %i.fz, ptr %i.b, align 4, !tbaa !115
  %i.ga = icmp slt i32 %i.fy, 8
  br i1 %i.ga, label %bb.am, label %bb.an, !llvm.loop !113

bb.an:                                            ; preds = %bb.am
  call void @_ZN6LibRaw10romm_coeffEPA3_f(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.e)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.gb = load i128, ptr %i.a, align 16
  %i.gc = xor i128 %i.gb, 126870637763045705103688620919833518403
  %i.gd = getelementptr i8, ptr %i.a, i64 10
  %i.ge = load i128, ptr %i.gd, align 2
  %i.gf = xor i128 %i.ge, 599171407350491171127804319133494645
  %i.gg = or i128 %i.gc, %i.gf
  %i.gh = icmp ne i128 %i.gg, 0
  %i.gi = zext i1 %i.gh to i32
  %.not64 = icmp eq i32 %i.gi, 0
  br i1 %.not64, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !72
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 72
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.go = load i128, ptr %i.a, align 16
  %i.gp = xor i128 %i.go, 154696136110910445641807203602575417667
  %i.gq = getelementptr i8, ptr %i.a, i64 11
  %i.gr = load i128, ptr %i.gq, align 1
  %i.gs = xor i128 %i.gr, 573412356879977166431525121437228919
  %i.gt = or i128 %i.gp, %i.gs
  %i.gu = icmp ne i128 %i.gt, 0
  %i.gv = zext i1 %i.gu to i32
  %.not66 = icmp eq i32 %i.gv, 0
  br i1 %.not66, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gw = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !72
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = call noundef i32 %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.an) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hb = load i128, ptr %i.a, align 16
  %i.hc = xor i128 %i.hb, 126792834362427586563321921438011646275
  %i.hd = getelementptr i8, ptr %i.a, i64 16
  %i.he = load i64, ptr %i.hd, align 16
  %i.hf = zext i64 %i.he to i128
  %i.hg = xor i128 %i.hf, 31088027509219696
  %i.hh = or i128 %i.hc, %i.hg
  %i.hi = icmp ne i128 %i.hh, 0
  %i.hj = zext i1 %i.hi to i32
  %.not68 = icmp eq i32 %i.hj, 0
  br i1 %.not68, label %.preheader78.preheader, label %.loopexit79

.preheader78.preheader:                           ; preds = %bb.as
  %i.hk = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !72
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call noundef i32 %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b) ; 0 uses
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !115
  %i.hq = icmp eq i32 %i.hp, 1
  %.2 = select i1 %i.hq, i32 0, i32 %.088
  %i.hr = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !72
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = call noundef i32 %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b) ; 0 uses
  %i.hw = load i32, ptr %i.b, align 4, !tbaa !115
  %i.hx = icmp eq i32 %i.hw, 1
  %.2.1 = select i1 %i.hx, i32 1, i32 %.2
  %i.hy = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !72
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 72
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call noundef i32 %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b) ; 0 uses
  %i.id = load i32, ptr %i.b, align 4, !tbaa !115
  %i.ie = icmp eq i32 %i.id, 1
  %.2.2 = select i1 %i.ie, i32 3, i32 %.2.1
  %i.if = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !72
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 72
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call noundef i32 %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b) ; 0 uses
  %i.ik = load i32, ptr %i.b, align 4, !tbaa !115
  %i.il = icmp eq i32 %i.ik, 1
  %.2.3 = select i1 %i.il, i32 2, i32 %.2.2
  br label %.loopexit79

.loopexit79:                                      ; preds = %.preheader78.preheader, %bb.as
  %.3 = phi i32 [ %.088, %bb.as ], [ %.2.3, %.preheader78.preheader ] ; 2 uses
  %i.im = load i128, ptr %i.a, align 16
  %i.in = xor i128 %i.im, 146793563361274154606471833037935439177
  %i.io = getelementptr i8, ptr %i.a, i64 7
  %i.ip = load i128, ptr %i.io, align 1
  %i.iq = xor i128 %i.ip, 526620677611018486950511654114128479
  %i.ir = or i128 %i.in, %i.iq
  %i.is = icmp ne i128 %i.ir, 0
  %i.it = zext i1 %i.is to i32
  %.not70 = icmp eq i32 %i.it, 0
  br i1 %.not70, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit79
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !72
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 72
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = call noundef i32 %i.ix(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b) ; 0 uses
  %i.iz = load i32, ptr %i.b, align 4, !tbaa !115
  %i.ja = load i32, ptr %i.an, align 8, !tbaa !76
  %i.jb = sub nsw i32 %i.iz, %i.ja
  store i32 %i.jb, ptr %i.an, align 8, !tbaa !76
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit79
  %i.jc = load i128, ptr %i.a, align 16
  %i.jd = xor i128 %i.jc, 153423964037771352061187687485443237198
  %i.je = getelementptr i8, ptr %i.a, i64 16
  %i.jf = load i8, ptr %i.je, align 16
  %i.jg = zext i8 %i.jf to i128
  %i.jh = or i128 %i.jd, %i.jg
  %i.ji = icmp ne i128 %i.jh, 0
  %i.jj = zext i1 %i.ji to i32
  %.not72 = icmp eq i32 %i.jj, 0
  br i1 %.not72, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.jk = load float, ptr %i.ao, align 4, !tbaa !74
  %i.jl = fcmp une float %i.jk, 0.000000e+00
  br i1 %i.jl, label %.loopexit, label %.preheader77.preheader

.preheader77.preheader:                           ; preds = %bb.av
  %i.jm = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !72
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = call noundef i32 %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.c) ; 0 uses
  %i.jr = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !72
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.aq) ; 0 uses
  %i.jw = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !72
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = call noundef i32 %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.ar) ; 0 uses
  %i.kb = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !72
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 72
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = call noundef i32 %i.ke(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.as) ; 0 uses
  %i.kg = load i32, ptr %i.c, align 16
  %i.kh = sitofp i32 %i.kg to float               ; 3 uses
  %i.ki = load i32, ptr %i.aq, align 4, !tbaa !115 ; 2 uses
  %.not73 = icmp eq i32 %i.ki, 0
  br i1 %.not73, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.preheader77.preheader
  %i.kj = sitofp i32 %i.ki to float
  %i.kk = fdiv float %i.kh, %i.kj
  store float %i.kk, ptr %i.ao, align 4, !tbaa !74
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader77.preheader, %bb.aw
  %i.kl = load i32, ptr %i.ar, align 8, !tbaa !115 ; 2 uses
  %.not73.1 = icmp eq i32 %i.kl, 0
  br i1 %.not73.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.km = sitofp i32 %i.kl to float
  %i.kn = fdiv float %i.kh, %i.km
  store float %i.kn, ptr %i.at, align 8, !tbaa !74
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ko = load i32, ptr %i.as, align 4, !tbaa !115 ; 2 uses
  %.not73.2 = icmp eq i32 %i.ko, 0
  br i1 %.not73.2, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kp = sitofp i32 %i.ko to float
  %i.kq = fdiv float %i.kh, %i.kp
  store float %i.kq, ptr %i.au, align 4, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %bb.az, %bb.ba, %bb.av, %bb.au
  %i.kr = load i64, ptr %i.a, align 16
  %i.ks = xor i64 %i.kr, 8386094342262452050
  %i.kt = getelementptr i8, ptr %i.a, i64 8
  %i.ku = load i16, ptr %i.kt, align 8
  %i.kv = zext i16 %i.ku to i64
  %i.kw = xor i64 %i.kv, 97
  %i.kx = or i64 %i.ks, %i.kw
  %i.ky = icmp ne i64 %i.kx, 0
  %i.kz = zext i1 %i.ky to i32
  %.not75 = icmp eq i32 %i.kz, 0
  br i1 %.not75, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit
  %i.la = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.la, ptr %i.ap, align 4, !tbaa !125
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit
  call void @_ZN6LibRaw9parse_mosEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.bh)
  %i.lb = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.lc = zext i32 %i.bc to i64
  %i.ld = add nsw i64 %i.bh, %i.lc
  %i.le = load ptr, ptr %i.lb, align 8, !tbaa !72
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = call noundef i32 %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i64 noundef %i.ld, i32 noundef 0) ; 0 uses
  %i.li = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !72
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 80
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = call noundef i32 %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %i.li)
  %.not = icmp eq i32 %i.lm, 0
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.bc, %bb.d, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %.088, %bb.d ], [ %.3, %bb.bc ]
  %i.ln = load i32, ptr %i.d, align 4, !tbaa !115 ; 2 uses
  %.not76 = icmp eq i32 %i.ln, 0
  br i1 %.not76, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  %i.lo = icmp eq i32 %i.ln, 1
  %i.lp = select i1 %i.lo, i32 16843009, i32 0
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !76
  %i.ls = sdiv i32 %i.lr, 90
  %i.lt = add nsw i32 %i.ls, %.0.lcssa
  %i.lu = and i32 %i.lt, 3
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @.str.65, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !75
  %i.ly = zext i8 %i.lx to i32
  %i.lz = mul nuw i32 %i.lp, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %i.lz, ptr %i.ma, align 8, !tbaa !126
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge
  %i.mb = load i16, ptr %i.k, align 2, !tbaa !116
  %i.mc = add i16 %i.mb, 1
  store i16 %i.mc, ptr %i.k, align 2, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN6LibRaw8getwordsEPcPS0_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare float @exp2f(float) local_unnamed_addr

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 short", !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!"_ZTS20libraw_image_sizes_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !5, i64 16, !11, i64 24, !5, i64 32, !4, i64 36, !10, i64 164, !4, i64 166}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !13, i64 432}
!15 = !{!"float", !4, i64 0}
!16 = !{!"_ZTS18libraw_nikonlens_t", !15, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!17 = !{!"_ZTS16libraw_dnglens_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!18 = !{!"long long", !4, i64 0}
!19 = !{!"_ZTS24libraw_makernotes_lens_t", !18, i64 0, !4, i64 8, !10, i64 136, !10, i64 138, !18, i64 144, !10, i64 152, !10, i64 154, !4, i64 156, !10, i64 220, !4, i64 222, !4, i64 238, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308, !15, i64 312, !18, i64 320, !4, i64 328, !18, i64 456, !4, i64 464, !18, i64 592, !4, i64 600, !10, i64 728, !15, i64 732}
!20 = !{!"_ZTS17libraw_lensinfo_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !10, i64 532, !16, i64 536, !17, i64 544, !19, i64 560}
!21 = !{!"_ZTS13libraw_area_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6}
!22 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !10, i64 52, !10, i64 54, !4, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !5, i64 84, !15, i64 88, !10, i64 92, !10, i64 94, !10, i64 96, !10, i64 98, !5, i64 100, !10, i64 104, !5, i64 108, !5, i64 112, !10, i64 116, !5, i64 120, !21, i64 124, !21, i64 132, !21, i64 140, !21, i64 148, !21, i64 156, !4, i64 164}
!23 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6}
!24 = !{!"_ZTS25libraw_nikon_makernotes_t", !11, i64 0, !10, i64 8, !10, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !10, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !10, i64 170, !23, i64 172, !10, i64 180, !10, i64 182, !10, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !13, i64 256, !10, i64 264, !10, i64 266, !4, i64 268, !10, i64 270, !11, i64 272, !11, i64 280, !11, i64 288}
!25 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !11, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!26 = !{!"_ZTS18libraw_fuji_info_t", !15, i64 0, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !10, i64 16, !10, i64 18, !4, i64 20, !4, i64 53, !15, i64 88, !10, i64 92, !10, i64 94, !4, i64 96, !10, i64 100, !5, i64 104, !5, i64 108, !10, i64 112, !4, i64 114, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !10, i64 128, !5, i64 132, !10, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !10, i64 168, !5, i64 172, !10, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!27 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !10, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !10, i64 82, !4, i64 84, !10, i64 88, !10, i64 90, !4, i64 92, !4, i64 352, !10, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !10, i64 416, !10, i64 418, !10, i64 420, !10, i64 422, !11, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !10, i64 456, !10, i64 458}
!28 = !{!"_ZTS18libraw_sony_info_t", !10, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !10, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !10, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !10, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !10, i64 54, !5, i64 56, !10, i64 60, !4, i64 62, !10, i64 66, !10, i64 68, !10, i64 70, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !5, i64 80, !15, i64 84, !10, i64 88, !5, i64 92, !5, i64 96, !10, i64 100, !4, i64 102, !5, i64 124, !10, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !10, i64 138, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !5, i64 156, !10, i64 160, !4, i64 162, !15, i64 180}
!29 = !{!"_ZTS25libraw_kodak_makernotes_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !15, i64 236, !15, i64 240}
!30 = !{!"_ZTS29libraw_panasonic_makernotes_t", !10, i64 0, !10, i64 2, !4, i64 4, !5, i64 36, !15, i64 40, !4, i64 44, !10, i64 56, !10, i64 58, !5, i64 60, !5, i64 64}
!31 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !10, i64 12, !5, i64 16, !5, i64 20, !10, i64 24, !4, i64 26, !10, i64 30, !4, i64 32, !4, i64 33, !10, i64 34}
!32 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!33 = !{!"_ZTS25libraw_ricoh_makernotes_t", !10, i64 0, !4, i64 4, !4, i64 12, !10, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !10, i64 40, !10, i64 42, !10, i64 44, !10, i64 46, !10, i64 48, !10, i64 50, !11, i64 56, !11, i64 64}
!34 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !11, i64 88, !5, i64 96, !4, i64 100}
!35 = !{!"_ZTS24libraw_metadata_common_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !10, i64 64, !4, i64 66, !15, i64 196, !4, i64 200, !5, i64 296}
!36 = !{!"_ZTS19libraw_makernotes_t", !22, i64 0, !24, i64 168, !25, i64 464, !26, i64 848, !27, i64 1200, !28, i64 1664, !29, i64 1848, !30, i64 2092, !31, i64 2160, !32, i64 2196, !33, i64 2648, !34, i64 2720, !35, i64 2856}
!37 = !{!"_ZTS21libraw_shootinginfo_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !4, i64 14, !4, i64 78}
!38 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !15, i64 128, !15, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !15, i64 248, !15, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !15, i64 288, !15, i64 292, !5, i64 296, !5, i64 300}
!39 = !{!"any p2 pointer", !8, i64 0}
!40 = !{!"p2 omnipotent char", !39, i64 0}
!41 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !15, i64 28, !4, i64 32, !40, i64 40}
!42 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !15, i64 32}
!43 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !15, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !15, i64 32920, !15, i64 32924, !4, i64 32928}
!44 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !15, i64 147516, !15, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !42, i64 147876, !15, i64 147912, !15, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !8, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !43, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!45 = !{!"long", !4, i64 0}
!46 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !15, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!47 = !{!"_ZTS17libraw_imgother_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !45, i64 16, !5, i64 24, !4, i64 28, !46, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!48 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!49 = !{!"_ZTS18libraw_thumbnail_t", !48, i64 0, !10, i64 4, !10, i64 6, !5, i64 8, !5, i64 12, !13, i64 16}
!50 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!51 = !{!"p1 float", !8, i64 0}
!52 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 12, !10, i64 14}
!53 = !{!"_ZTS16libraw_rawdata_t", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !9, i64 56, !9, i64 64, !14, i64 72, !12, i64 512, !52, i64 696, !44, i64 712}
!54 = !{!"_ZTS13libraw_data_t", !9, i64 0, !12, i64 8, !14, i64 192, !20, i64 632, !36, i64 1928, !37, i64 5088, !38, i64 5232, !41, i64 5536, !5, i64 5584, !5, i64 5588, !44, i64 5592, !47, i64 192680, !49, i64 193480, !50, i64 193504, !53, i64 193768, !8, i64 381568}
!55 = !{!"p1 _ZTS10LibRaw_TLS", !8, i64 0}
!56 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !8, i64 0}
!57 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!58 = !{!"_ZTS15internal_data_t", !56, i64 0, !57, i64 8, !5, i64 16, !13, i64 24, !18, i64 32, !18, i64 40, !4, i64 48}
!59 = !{!"p1 int", !8, i64 0}
!60 = !{!"_ZTS13output_data_t", !59, i64 0, !59, i64 8}
!61 = !{!"_ZTS15identify_data_t", !5, i64 0, !18, i64 8, !18, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!62 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!63 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !10, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !10, i64 148, !10, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!64 = !{!"_ZTS15unpacker_data_t", !10, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !62, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !18, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !63, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !10, i64 2496, !10, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !10, i64 2608}
!65 = !{!"_ZTS22libraw_internal_data_t", !58, i64 0, !52, i64 64, !60, i64 80, !61, i64 96, !64, i64 136}
!66 = !{!"p1 _ZTS6decode", !8, i64 0}
!67 = !{!"_ZTS13libraw_memmgr", !39, i64 0, !5, i64 8}
!68 = !{!"_ZTS18libraw_callbacks_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!69 = !{!"_ZTS6LibRaw", !54, i64 8, !55, i64 381584, !65, i64 381592, !4, i64 384344, !66, i64 433496, !66, i64 433504, !4, i64 433512, !67, i64 768232, !68, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !8, i64 768448, !8, i64 768456, !8, i64 768464, !45, i64 768472, !8, i64 768480, !8, i64 768488, !8, i64 768496, !8, i64 768504}
!70 = !{!69, !56, i64 381592}
!71 = !{!"vtable pointer", !3, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!15, !15, i64 0}
!75 = !{!4, !4, i64 0}
!76 = !{!69, !5, i64 48}
!77 = !{!69, !10, i64 1354}
!78 = !{!69, !10, i64 1352}
!79 = distinct !{!79, !73}
!80 = distinct !{!80, !73}
!81 = !{!69, !10, i64 381728}
!82 = !{!69, !18, i64 381696}
!83 = !{!69, !10, i64 18}
!84 = !{!69, !10, i64 16}
!85 = !{!69, !10, i64 26}
!86 = !{!69, !10, i64 24}
!87 = !{!69, !10, i64 22}
!88 = !{!69, !10, i64 20}
!89 = !{!69, !5, i64 153476}
!90 = !{!69, !18, i64 381760}
!91 = !{!69, !18, i64 381800}
!92 = !{!69, !18, i64 381768}
!93 = !{!69, !5, i64 381808}
!94 = !{!69, !5, i64 153480}
!95 = !{!69, !15, i64 153508}
!96 = !{!69, !15, i64 4804}
!97 = !{!69, !15, i64 4808}
!98 = !{!69, !5, i64 153484}
!99 = !{!69, !18, i64 381752}
!100 = !{!69, !5, i64 153488}
!101 = !{!69, !5, i64 153492}
!102 = !{!69, !5, i64 153496}
!103 = !{!69, !5, i64 153500}
!104 = !{!69, !5, i64 153504}
!105 = !{!69, !15, i64 1492}
!106 = !{!69, !15, i64 1488}
!107 = !{!69, !15, i64 1496}
!108 = !{!69, !15, i64 1500}
!109 = !{!69, !15, i64 1460}
!110 = !{!69, !4, i64 768416}
!111 = !{!69, !5, i64 153096}
!112 = distinct !{!112, !73}
!113 = distinct !{!113, !73}
!114 = distinct !{!114, !73}
!115 = !{!5, !5, i64 0}
!116 = !{!69, !10, i64 384226}
!117 = !{!"_ZTS17LibRaw_exceptions", !4, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!13, !13, i64 0}
!120 = !{!69, !18, i64 381632}
!121 = !{!69, !5, i64 193496}
!122 = !{!69, !18, i64 381624}
!123 = !{!69, !5, i64 153872}
!124 = !{!69, !18, i64 1344}
!125 = !{!69, !5, i64 381860}
!126 = !{!69, !5, i64 544}
end_hunk_0
