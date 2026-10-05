Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/mediumformat?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6LibRaw15parse_phase_oneEx:bb.a

bb.aj:                                            ; preds = %bb.j
  %i.hy = add i32 %i.di, %i.au
  store i32 %i.hy, ptr %i.av, align 8, !tbaa !131
  br label %.thread

bb.ak:                                            ; preds = %bb.j
  store i8 0, ptr %i.am, align 1, !tbaa !94
  %i.hz = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !76
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call noundef i32 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull %i.an, i64 noundef 1, i64 noundef 255), !call_target !102 ; 0 uses
  store i8 0, ptr %i.ao, align 1, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(63) %i.al, ptr noundef nonnull align 4 dereferenceable(63) %i.an, i64 63, i1 false)
  store i8 0, ptr %i.am, align 1, !tbaa !94
  %i.ie = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) @.str.1) #8 ; 2 uses
  %.not126 = icmp eq ptr %i.ie, null
  br i1 %.not126, label %bb.al, label %.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.if = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.al, i32 noundef 44) #8 ; 2 uses
  %.not127 = icmp eq ptr %i.if, null
  br i1 %.not127, label %bb.am, label %.sink.split

.sink.split:                                      ; preds = %bb.al, %bb.ak
  %.sink = phi ptr [ %i.ie, %bb.ak ], [ %i.if, %bb.al ]
  store i8 0, ptr %.sink, align 1, !tbaa !94
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.al
  %i.ig = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) %i.al) #7 ; 0 uses
  %i.ih = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.al, i32 noundef 45) #8 ; 3 uses
  %.not128 = icmp eq ptr %i.ih, null
  br i1 %.not128, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !94
  switch i8 %i.ij, label %bb.ar [
    i8 67, label %bb.ao
    i8 77, label %bb.ap
    i8 72, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.aj, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false) #7
  br label %.sink.split189

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.aj, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, i64 11, i1 false) #7
  br label %.sink.split189

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.aj, ptr noundef nonnull align 1 dereferenceable(17) @.str.4, i64 17, i1 false) #7
  br label %.sink.split189

.sink.split189:                                   ; preds = %bb.ao, %bb.aq, %bb.ap
  %.sink190 = phi i16 [ 24, %bb.ap ], [ 14, %bb.aq ], [ 8, %bb.ao ]
  store i16 %.sink190, ptr %i.aq, align 2, !tbaa !103
  store i16 11, ptr %i.ar, align 8, !tbaa !104
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split189, %bb.an
  store i8 0, ptr %i.ih, align 1, !tbaa !94
  br label %bb.as

bb.as:                                            ; preds = %bb.am, %bb.ar, %bb.j
  %i.ik = icmp eq i32 %i.db, 4
  br i1 %i.ik, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.il = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, 5.000000e-01 ; 2 uses
  %i.in = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.im)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.in, 6.400000e+01
  %exp2148 = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.im)
  %i.io = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %exp2148
  store float %i.io, ptr %i.as, align 4, !tbaa !132
  br label %.thread

bb.au:                                            ; preds = %bb.as
  %i.ip = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.iq = fptrunc reassoc nsz arcp contract afn double %i.ip to float
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, 5.000000e-01 ; 2 uses
  %i.is = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ir)
  %or.cond.i.i137 = fcmp reassoc nsz arcp contract afn ogt float %i.is, 6.400000e+01
  %exp2147 = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ir)
  %i.it = select reassoc nsz arcp contract afn i1 %or.cond.i.i137, float 0.000000e+00, float %exp2147
  store float %i.it, ptr %i.as, align 4, !tbaa !132
  br label %.thread

bb.av:                                            ; preds = %bb.j
  %i.iu = icmp eq i32 %i.db, 4
  br i1 %i.iu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iv = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  store float %i.iv, ptr %i.ak, align 8, !tbaa !133
  br label %.thread

bb.ax:                                            ; preds = %bb.av
  %i.iw = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.ix = fptrunc reassoc nsz arcp contract afn double %i.iw to float
  store float %i.ix, ptr %i.ak, align 8, !tbaa !133
  br label %.thread

bb.ay:                                            ; preds = %bb.j
  %i.iy = call i32 @llvm.umin.i32(i32 %i.dc, i32 64)
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.jb = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.aj, i64 noundef %i.iz, ptr noundef %i.ja) ; 0 uses
  %i.jc = load i8, ptr %i.aj, align 4, !tbaa !94
  %i.jd = icmp eq i8 %i.jc, -1
  br i1 %i.jd, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  store i8 0, ptr %i.aj, align 4, !tbaa !94
  br label %.thread

bb.ba:                                            ; preds = %bb.j
  %i.je = call i32 @llvm.umin.i32(i32 %i.dc, i32 128)
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.jh = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.ai, i64 noundef %i.jf, ptr noundef %i.jg) ; 0 uses
  %i.ji = load i8, ptr %i.ai, align 8, !tbaa !94
  %i.jj = icmp eq i8 %i.ji, -1
  br i1 %i.jj, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.ai, align 8, !tbaa !94
  br label %.thread

bb.bc:                                            ; preds = %bb.j
  %i.jk = icmp eq i32 %i.db, 4
  br i1 %i.jk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jl = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  %i.jm = fmul reassoc nsz arcp contract afn float %i.jl, 5.000000e-01 ; 2 uses
  %i.jn = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jm)
  %or.cond.i.i138 = fcmp reassoc nsz arcp contract afn ogt float %i.jn, 6.400000e+01
  %exp2146 = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.jm)
  %i.jo = select reassoc nsz arcp contract afn i1 %or.cond.i.i138, float 0.000000e+00, float %exp2146
  store float %i.jo, ptr %i.ah, align 8, !tbaa !134
  br label %.thread

bb.be:                                            ; preds = %bb.bc
  %i.jp = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.jq = fptrunc reassoc nsz arcp contract afn double %i.jp to float
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jq, 5.000000e-01 ; 2 uses
  %i.js = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jr)
  %or.cond.i.i139 = fcmp reassoc nsz arcp contract afn ogt float %i.js, 6.400000e+01
  %exp2145 = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.jr)
  %i.jt = select reassoc nsz arcp contract afn i1 %or.cond.i.i139, float 0.000000e+00, float %exp2145
  store float %i.jt, ptr %i.ah, align 8, !tbaa !134
  br label %.thread

bb.bf:                                            ; preds = %bb.j
  %i.ju = icmp eq i32 %i.db, 4
  br i1 %i.ju, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jv = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, 5.000000e-01 ; 2 uses
  %i.jx = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jw)
  %or.cond.i.i140 = fcmp reassoc nsz arcp contract afn ogt float %i.jx, 6.400000e+01
  %exp2144 = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.jw)
  %i.jy = select reassoc nsz arcp contract afn i1 %or.cond.i.i140, float 0.000000e+00, float %exp2144
  store float %i.jy, ptr %i.ag, align 4, !tbaa !135
  br label %.thread

bb.bh:                                            ; preds = %bb.bf
  %i.jz = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.ka = fptrunc reassoc nsz arcp contract afn double %i.jz to float
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, 5.000000e-01 ; 2 uses
  %i.kc = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kb)
  %or.cond.i.i141 = fcmp reassoc nsz arcp contract afn ogt float %i.kc, 6.400000e+01
  %exp2 = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.kb)
  %i.kd = select reassoc nsz arcp contract afn i1 %or.cond.i.i141, float 0.000000e+00, float %exp2
  store float %i.kd, ptr %i.ag, align 4, !tbaa !135
  br label %.thread

bb.bi:                                            ; preds = %bb.j
  %i.ke = icmp eq i32 %i.db, 4
  br i1 %i.ke, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kf = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.kg = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.kh = fptrunc reassoc nsz arcp contract afn double %i.kg to float
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ki = phi float [ %i.kh, %bb.bk ], [ %i.kf, %bb.bj ] ; 2 uses
  %i.kj = fcmp reassoc nsz arcp contract afn ogt float %i.ki, 1.000000e+03
  %spec.store.select = select i1 %i.kj, float 0.000000e+00, float %i.ki
  store float %spec.store.select, ptr %i.af, align 8
  br label %.thread

bb.bm:                                            ; preds = %bb.j
  %i.kk = icmp eq i32 %i.db, 4
  br i1 %i.kk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kl = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  store float %i.kl, ptr %i.ae, align 4, !tbaa !136
  br label %.thread

bb.bo:                                            ; preds = %bb.bm
  %i.km = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.db)
  %i.kn = fptrunc reassoc nsz arcp contract afn double %i.km to float
  store float %i.kn, ptr %i.ae, align 4, !tbaa !136
  br label %.thread

.loopexit150:                                     ; preds = %bb.j
  br i1 %i.dp, label %.thread, label %.thread143

.thread:                                          ; preds = %bb.bl, %.preheader.preheader, %.preheader149.preheader, %.preheader151.preheader, %bb.k, %bb.o, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.au, %bb.at, %bb.ax, %bb.aw, %bb.az, %bb.ay, %bb.bb, %bb.ba, %bb.be, %bb.bd, %bb.bh, %bb.bg, %bb.bo, %bb.bn, %.loopexit150
  %i.ko = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !76
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = call noundef i32 %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, i64 noundef %i.dn, i32 noundef 0), !call_target !85 ; 0 uses
  br label %.thread143

.thread143:                                       ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %.loopexit150, %.thread, %bb.i
  %.not124 = icmp eq i32 %i.cz, 0
  br i1 %.not124, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %.thread143, %bb.e, %bb.d
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.ku = load i8, ptr %i.kt, align 4, !tbaa !94
  %.not129 = icmp eq i8 %i.ku, 0
  br i1 %.not129, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %._crit_edge
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 5110 ; 3 uses
  %i.kw = load i8, ptr %i.kv, align 2, !tbaa !94
  %.not130 = icmp eq i8 %i.kw, 0
  br i1 %.not130, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.kx = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 381768 ; 3 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !119
  %i.la = load ptr, ptr %i.kx, align 8, !tbaa !76
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = call noundef i32 %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, i64 noundef %i.kz, i32 noundef 0), !call_target !85 ; 0 uses
  %i.le = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.le, ptr %i.k, align 8, !tbaa !107
  %i.lf = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !76
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = call noundef i32 %i.li(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, i64 noundef 6, i32 noundef 1), !call_target !85 ; 0 uses
  %i.lk = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.ll = load i64, ptr %i.ky, align 8, !tbaa !119
  %i.lm = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ln = zext i32 %i.lm to i64
  %i.lo = add nsw i64 %i.ll, %i.ln
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !76
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = call noundef i32 %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, i64 noundef %i.lo, i32 noundef 0), !call_target !85 ; 0 uses
  %i.lt = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.lu = icmp ugt i32 %i.lt, 8192
  br i1 %i.lu, label %bb.ch, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lv = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %.not131158 = icmp eq i32 %i.lt, 0
  br i1 %.not131158, label %.loopexit, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.br
  %i.lw = shl nsw i64 %i.ac, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 5111
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 5112
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph160, %bb.by
  %.in167 = phi i32 [ %i.lt, %.lr.ph160 ], [ %i.ma, %bb.by ]
  %i.ma = add nsw i32 %.in167, -1                 ; 2 uses
  %i.mb = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mc = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.md = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !76
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 80
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = call noundef i32 %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.md), !call_target !90
  %.not132 = icmp eq i32 %i.mh, 0
  br i1 %.not132, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.mi = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mj = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !76
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = call noundef i64 %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.mj), !call_target !91
  %i.mo = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.mp = load i64, ptr %i.ky, align 8, !tbaa !119
  %i.mq = zext i32 %i.mi to i64
  %i.mr = add nsw i64 %i.mp, %i.mq
  %i.ms = load ptr, ptr %i.mo, align 8, !tbaa !76
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = call noundef i32 %i.mu(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, i64 noundef %i.mr, i32 noundef 0), !call_target !85 ; 0 uses
  %i.mw = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !76
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = call noundef i64 %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw), !call_target !91
  %i.nb = icmp ult i32 %i.mc, 9
  %i.nc = zext i32 %i.mc to i64
  %i.nd = add nsw i64 %i.na, %i.nc
  %i.ne = icmp sle i64 %i.nd, %i.lw
  %or.cond166.not200 = select i1 %i.nb, i1 true, i1 %i.ne
  %i.nf = icmp eq i32 %i.mb, 1031
  %or.cond197 = and i1 %or.cond166.not200, %i.nf
  br i1 %or.cond197, label %bb.bu, label %bb.by, !llvm.loop !106

bb.bu:                                            ; preds = %bb.bt
  %i.ng = call i32 @llvm.umin.i32(i32 %i.mc, i32 64)
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.nj = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.kv, i64 noundef %i.nh, ptr noundef %i.ni) ; 0 uses
  %i.nk = load i8, ptr %i.kv, align 2, !tbaa !94  ; 2 uses
  %i.nl = icmp eq i8 %i.nk, 76
  %.pre172 = load i8, ptr %i.lx, align 1, !tbaa !94 ; 2 uses
  %i.nm = icmp eq i8 %.pre172, 73
  %or.cond191 = select i1 %i.nl, i1 %i.nm, i1 false
  br i1 %or.cond191, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.nn = load i8, ptr %i.lz, align 8, !tbaa !94
  %i.no = and i8 %i.nn, 63
  %i.np = zext nneg i8 %i.no to i64
  %i.nq = add nuw nsw i64 %i.np, 319
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.nr = and i8 %i.nk, 63
  %i.ns = zext nneg i8 %i.nr to i32
  %i.nt = shl nuw nsw i32 %i.ns, 5
  %i.nu = and i8 %.pre172, 63
  %i.nv = zext nneg i8 %i.nu to i32
  %i.nw = or i32 %i.nt, %i.nv
  %i.nx = add nsw i32 %i.nw, -65
  %i.ny = sext i32 %i.nx to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.nz = phi i64 [ %i.ny, %bb.bw ], [ %i.nq, %bb.bv ] ; 2 uses
  store i64 %i.nz, ptr %i.ly, align 8, !tbaa !109
  call void @_ZN6LibRaw19setPhaseOneFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.nz)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bt
  %i.oa = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !76
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = call noundef i32 %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, i64 noundef %i.mn, i32 noundef 0) ; 0 uses
  %.not131 = icmp eq i32 %i.ma, 0
  br i1 %.not131, label %.loopexit, label %bb.bs

.loopexit:                                        ; preds = %bb.bs, %bb.by, %bb.br, %bb.bp, %._crit_edge
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.og = load float, ptr %i.of, align 8, !tbaa !134 ; 5 uses
  %i.oh = fcmp reassoc nsz arcp contract afn ogt float %i.og, f0x3F333333
  br i1 %i.oh, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %.loopexit
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 1500 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !135 ; 5 uses
  %i.ok = fcmp reassoc nsz arcp contract afn ogt float %i.oj, f0x3F333333
  br i1 %i.ok, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ol = fcmp reassoc nsz arcp contract afn ogt float %i.og, %i.oj
  %. = select reassoc nsz arcp contract afn i1 %i.ol, float %i.og, float %i.oj
  %i.om = fcmp reassoc nsz arcp contract afn olt float %i.og, %i.oj
  %i.on = select reassoc nsz arcp contract afn i1 %i.om, float %i.og, float %i.oj
  store float %i.on, ptr %i.of, align 8, !tbaa !134
  store float %., ptr %i.oi, align 4, !tbaa !135
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %.loopexit
  %i.oo = load i32, ptr %i.b, align 4, !tbaa !116 ; 2 uses
  %i.op = icmp eq i32 %i.oo, 6
  %i.oq = icmp slt i32 %i.oo, 3
  %.elt = select i1 %i.oq, i64 ptrtoint (ptr @_ZN6LibRaw18phase_one_load_rawEv to i64), i64 ptrtoint (ptr @_ZN6LibRaw20phase_one_load_raw_cEv to i64)
  %.elt.sink = select i1 %i.op, i64 ptrtoint (ptr @_ZN6LibRaw20phase_one_load_raw_sEv to i64), i64 %.elt
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 %.elt.sink, ptr %i.or, align 8, !tbaa !137
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %i.os, align 8, !tbaa !137
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 65535, ptr %i.ot, align 8, !tbaa !138
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ou, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false) #7
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 5 uses
  %i.ow = load i8, ptr %i.ov, align 4, !tbaa !94
  %.not136 = icmp eq i8 %i.ow, 0
  br i1 %.not136, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oy = load i16, ptr %i.ox, align 8, !tbaa !111
  switch i16 %i.oy, label %bb.ch [
    i16 2060, label %bb.cd
    i16 2682, label %bb.ce
    i16 4128, label %bb.cf
    i16 5488, label %bb.cg
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.ov, ptr noundef nonnull align 1 dereferenceable(11) @.str.6, i64 11, i1 false) #7
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ov, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false) #7
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ov, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false) #7
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ov, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false) #7
  br label %bb.ch

bb.ch:                                            ; preds = %bb.b, %bb.c, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.cb, %bb.bq, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 22 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %1, i32 noundef 0), !call_target !85 ; 0 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !74   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !call_target !90
  %.not87 = icmp eq i32 %i.t, 0
  br i1 %.not87, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5110
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 381624
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 153872
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153260
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ba
  %.088 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.ba ] ; 3 uses
  %i.aq = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.not35 = icmp eq i32 %i.aq, 1347114067
  br i1 %.not35, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.ar = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 40), !call_target !102 ; 0 uses
  store i8 0, ptr %i.u, align 1, !tbaa !94
  %i.ax = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 6 uses
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay), !call_target !91 ; 4 uses
  %i.bd = load i128, ptr %i.a, align 16
  %i.be = xor i128 %i.bd, 129529094622389673090914430064335348035
  %i.bf = getelementptr i8, ptr %i.a, i64 6
  %i.bg = load i128, ptr %i.bf, align 2
  %i.bh = xor i128 %i.bg, 526703235210860075479596392082203215
  %i.bi = or i128 %i.be, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not36 = icmp eq i32 %i.bk, 0
  br i1 %.not36, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.bl = call i32 @llvm.umin.i32(i32 %i.ax, i32 64)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.bo = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.v, i64 noundef %i.bm, ptr noundef %i.bn) ; 0 uses
  %i.bp = load i8, ptr %i.v, align 4, !tbaa !94
  %.not37 = icmp eq i8 %i.bp, 0
  br i1 %.not37, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(9) @.str.42, i64 noundef 8) #8
  %.not38 = icmp eq i32 %i.bq, 0
  br i1 %.not38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 23, ptr %i.x, align 2, !tbaa !103
  store i16 16, ptr %i.y, align 8, !tbaa !104
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.br = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(13) @.str.43, i64 noundef 12) #8
  %.not39 = icmp eq i32 %i.br, 0
  br i1 %.not39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 12, ptr %i.y, align 8, !tbaa !104
  store i16 15, ptr %i.x, align 2, !tbaa !103
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.bs = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(13) @.str.44, i64 noundef 12) #8
  %.not40 = icmp eq i32 %i.bs, 0
  br i1 %.not40, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 14, ptr %i.x, align 2, !tbaa !103
  store i16 11, ptr %i.y, align 8, !tbaa !104
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.bt = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(9) @.str.45, i64 noundef 8) #8
  %.not41 = icmp eq i32 %i.bt, 0
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(12) @.str.46, i64 noundef 11) #8
  %.not42 = icmp eq i32 %i.bu, 0
  br i1 %.not42, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i16 24, ptr %i.x, align 2, !tbaa !103
  store i16 11, ptr %i.y, align 8, !tbaa !104
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(8) @.str.47, i64 noundef 7) #8
  %.not43 = icmp eq i32 %i.bv, 0
  br i1 %.not43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 41, ptr %i.x, align 2, !tbaa !103
  store i16 14, ptr %i.y, align 8, !tbaa !104
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bw = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(9) @.str.48, i64 noundef 8) #8
  %.not44 = icmp eq i32 %i.bw, 0
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i16 36, ptr %i.x, align 2, !tbaa !103
  store i16 12, ptr %i.y, align 8, !tbaa !104
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.h, %bb.m, %bb.p, %bb.q, %bb.o, %bb.j, %bb.f, %bb.c
  %i.bx = load i128, ptr %i.a, align 16
  %i.by = xor i128 %i.bx, 130832685731055655506845902247037198690
  %i.bz = getelementptr i8, ptr %i.a, i64 3
  %i.ca = load i128, ptr %i.bz, align 1
  %i.cb = xor i128 %i.ca, 593978163478697178255345357927178091
  %i.cc = or i128 %i.by, %i.cb
  %i.cd = icmp ne i128 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %.not46 = icmp eq i32 %i.ce, 0
  br i1 %.not46, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.cf = call i32 @llvm.umin.i32(i32 %i.ax, i32 64)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.ci = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.f, i64 noundef %i.cg, ptr noundef %i.ch) ; 0 uses
  %i.cj = call noundef i32 @_ZN6LibRaw8getwordsEPcPS0_ii(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef 4, i32 noundef 64) ; 0 uses
  %i.ck = load ptr, ptr %i.g, align 16, !tbaa !143 ; 2 uses
  %.not47 = icmp eq ptr %i.ck, null
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) %i.ck) #7 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.cm = load i128, ptr %i.a, align 16
  %i.cn = xor i128 %i.cm, 126839403408381324978911410932715381059
  %i.co = getelementptr i8, ptr %i.a, i64 7
  %i.cp = load i128, ptr %i.co, align 1
  %i.cq = xor i128 %i.cp, 593978163478697178255345357927178086
  %i.cr = or i128 %i.cn, %i.cq
  %i.cs = icmp ne i128 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %.not49 = icmp eq i32 %i.ct, 0
  br i1 %.not49, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.cu = call i32 @llvm.umin.i32(i32 %i.ax, i32 64)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.cx = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.h, i64 noundef %i.cv, ptr noundef %i.cw) ; 0 uses
  %i.cy = call noundef i32 @_ZN6LibRaw8getwordsEPcPS0_ii(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 4, i32 noundef 64) ; 0 uses
  %i.cz = load ptr, ptr %i.i, align 16, !tbaa !143 ; 2 uses
  %.not50 = icmp eq ptr %i.cz, null
  br i1 %.not50, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(1) %i.cz) #7 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.db = load i128, ptr %i.a, align 16
  %i.dc = xor i128 %i.db, 154696136110915239267991214683322667082
  %i.dd = getelementptr i8, ptr %i.a, i64 16
  %i.de = load i16, ptr %i.dd, align 16
  %i.df = zext i16 %i.de to i128
  %i.dg = xor i128 %i.df, 97
  %i.dh = or i128 %i.dc, %i.dg
  %i.di = icmp ne i128 %i.dh, 0
  %i.dj = zext i1 %i.di to i32
  %.not52 = icmp eq i32 %i.dj, 0
  br i1 %.not52, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 %i.bc, ptr %i.ab, align 8, !tbaa !144
  store i32 %i.ax, ptr %i.ac, align 8, !tbaa !145
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dk = load i128, ptr %i.a, align 16
  %i.dl = xor i128 %i.dk, 140100814251240880267201700840889082729
  %i.dm = getelementptr i8, ptr %i.a, i64 3
  %i.dn = load i128, ptr %i.dm, align 1
  %i.do = xor i128 %i.dn, 526620833608478159084518284145550175
  %i.dp = or i128 %i.dl, %i.do
  %i.dq = icmp ne i128 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not54 = icmp eq i32 %i.dr, 0
  br i1 %.not54, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.bc, ptr %i.ad, align 8, !tbaa !146
  store i32 %i.ax, ptr %i.ae, align 8, !tbaa !147
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ds = load i128, ptr %i.a, align 16
  %i.dt = xor i128 %i.ds, 161440829262647342890082155304766629971
  %i.du = getelementptr i8, ptr %i.a, i64 3
  %i.dv = load i128, ptr %i.du, align 1
  %i.dw = xor i128 %i.dv, 526703235210907022151935213085619311
  %i.dx = or i128 %i.dt, %i.dw
  %i.dy = icmp ne i128 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not56 = icmp eq i32 %i.dz, 0
  br i1 %.not56, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ea = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !76
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b), !call_target !153 ; 0 uses
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !142 ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 39
  br i1 %i.eg, label %sub_0, label %bb.ag

sub_0:                                            ; preds = %bb.ae
  %i.eh = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6LibRaw9parse_mosExE3mod, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !143
  %i.ek = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) %i.ej) #7 ; 0 uses
  %i.el = load i8, ptr %i.w, align 4
  %.not91 = icmp eq i8 %i.el, 65
  br i1 %.not91, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.em = load i8, ptr %i.af, align 1
  %.not92 = icmp eq i8 %i.em, 70
  br i1 %.not92, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.en = load i8, ptr %i.ag, align 2
  %i.eo = icmp eq i8 %i.en, 105
  br i1 %i.eo, label %bb.af, label %.tail.thread

bb.af:                                            ; preds = %.tail
  store i16 36, ptr %i.x, align 2, !tbaa !103
  store i16 12, ptr %i.y, align 8, !tbaa !104
  br label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %bb.af, %.tail
  store i64 %i.eh, ptr %i.ah, align 8, !tbaa !154
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %.tail.thread, %bb.ad
  %i.ep = load i128, ptr %i.a, align 16
  %i.eq = xor i128 %i.ep, 148148549626969657161189554489426928489
  %i.er = getelementptr i8, ptr %i.a, i64 10
  %i.es = load i128, ptr %i.er, align 2
  %i.et = xor i128 %i.es, 625214344061132808427528271535502431
  %i.eu = or i128 %i.eq, %i.et
  %i.ev = icmp ne i128 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %.not59 = icmp eq i32 %i.ew, 0
  br i1 %.not59, label %.preheader81, label %bb.aj

.preheader81:                                     ; preds = %bb.ag
  store i32 0, ptr %i.b, align 4, !tbaa !142
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader81, %bb.ah
  %i.ex = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ey = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ex)
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !142 ; 3 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fa
  store float %i.ey, ptr %i.fb, align 4, !tbaa !93
  %i.fc = add nsw i32 %i.ez, 1
  store i32 %i.fc, ptr %i.b, align 4, !tbaa !142
  %i.fd = icmp slt i32 %i.ez, 8
  br i1 %i.fd, label %bb.ah, label %bb.ai, !llvm.loop !139

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN6LibRaw10romm_coeffEPA3_f(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.e)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.fe = load i128, ptr %i.a, align 16
  %i.ff = xor i128 %i.fe, 145381440764696535245781395953970864451
  %i.fg = getelementptr i8, ptr %i.a, i64 6
  %i.fh = load i128, ptr %i.fg, align 2
  %i.fi = xor i128 %i.fh, 625214344061132809364555149061613167
  %i.fj = or i128 %i.ff, %i.fi
  %i.fk = icmp ne i128 %i.fj, 0
  %i.fl = zext i1 %i.fk to i32
  %.not61 = icmp eq i32 %i.fl, 0
  br i1 %.not61, label %.preheader80, label %bb.am

.preheader80:                                     ; preds = %bb.aj
  store i32 0, ptr %i.b, align 4, !tbaa !142
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader80, %bb.ak
  %storemerge6282 = phi i32 [ 0, %.preheader80 ], [ %i.fu, %bb.ak ]
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.fn = sext i32 %storemerge6282 to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fn
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !76
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.fo), !call_target !153 ; 0 uses
  %i.ft = load i32, ptr %i.b, align 4, !tbaa !142 ; 2 uses
  %i.fu = add nsw i32 %i.ft, 1                    ; 2 uses
  store i32 %i.fu, ptr %i.b, align 4, !tbaa !142
  %i.fv = icmp slt i32 %i.ft, 8
  br i1 %i.fv, label %bb.ak, label %bb.al, !llvm.loop !140

bb.al:                                            ; preds = %bb.ak
  call void @_ZN6LibRaw10romm_coeffEPA3_f(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.e)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.fw = load i128, ptr %i.a, align 16
  %i.fx = xor i128 %i.fw, 126870637763045705103688620919833518403
  %i.fy = getelementptr i8, ptr %i.a, i64 10
  %i.fz = load i128, ptr %i.fy, align 2
  %i.ga = xor i128 %i.fz, 599171407350491171127804319133494645
  %i.gb = or i128 %i.fx, %i.ga
  %i.gc = icmp ne i128 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %.not64 = icmp eq i32 %i.gd, 0
  br i1 %.not64, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ge = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !76
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call noundef i32 %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.d), !call_target !153 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gj = load i128, ptr %i.a, align 16
  %i.gk = xor i128 %i.gj, 154696136110910445641807203602575417667
  %i.gl = getelementptr i8, ptr %i.a, i64 11
  %i.gm = load i128, ptr %i.gl, align 1
  %i.gn = xor i128 %i.gm, 573412356879977166431525121437228919
  %i.go = or i128 %i.gk, %i.gn
  %i.gp = icmp ne i128 %i.go, 0
  %i.gq = zext i1 %i.gp to i32
  %.not66 = icmp eq i32 %i.gq, 0
  br i1 %.not66, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gr = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !76
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef i32 %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.ai), !call_target !153 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gw = load i128, ptr %i.a, align 16
  %i.gx = xor i128 %i.gw, 126792834362427586563321921438011646275
  %i.gy = getelementptr i8, ptr %i.a, i64 16
  %i.gz = load i64, ptr %i.gy, align 16
  %i.ha = zext i64 %i.gz to i128
  %i.hb = xor i128 %i.ha, 31088027509219696
  %i.hc = or i128 %i.gx, %i.hb
  %i.hd = icmp ne i128 %i.hc, 0
  %i.he = zext i1 %i.hd to i32
  %.not68 = icmp eq i32 %i.he, 0
  br i1 %.not68, label %.preheader78.preheader, label %.loopexit79

.preheader78.preheader:                           ; preds = %bb.aq
  %i.hf = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !76
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef i32 %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b), !call_target !153 ; 0 uses
  %i.hk = load i32, ptr %i.b, align 4, !tbaa !142
  %i.hl = icmp eq i32 %i.hk, 1
  %.2 = select i1 %i.hl, i32 0, i32 %.088
  %i.hm = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !76
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call noundef i32 %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b), !call_target !153 ; 0 uses
  %i.hr = load i32, ptr %i.b, align 4, !tbaa !142
  %i.hs = icmp eq i32 %i.hr, 1
  %.2.1 = select i1 %i.hs, i32 1, i32 %.2
  %i.ht = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !76
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b), !call_target !153 ; 0 uses
  %i.hy = load i32, ptr %i.b, align 4, !tbaa !142
  %i.hz = icmp eq i32 %i.hy, 1
  %.2.2 = select i1 %i.hz, i32 3, i32 %.2.1
  %i.ia = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !76
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = call noundef i32 %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b), !call_target !153 ; 0 uses
  %i.if = load i32, ptr %i.b, align 4, !tbaa !142
  %i.ig = icmp eq i32 %i.if, 1
  %.2.3 = select i1 %i.ig, i32 2, i32 %.2.2
  br label %.loopexit79

.loopexit79:                                      ; preds = %.preheader78.preheader, %bb.aq
  %.3 = phi i32 [ %.088, %bb.aq ], [ %.2.3, %.preheader78.preheader ] ; 2 uses
  %i.ih = load i128, ptr %i.a, align 16
  %i.ii = xor i128 %i.ih, 146793563361274154606471833037935439177
  %i.ij = getelementptr i8, ptr %i.a, i64 7
  %i.ik = load i128, ptr %i.ij, align 1
  %i.il = xor i128 %i.ik, 526620677611018486950511654114128479
  %i.im = or i128 %i.ii, %i.il
  %i.in = icmp ne i128 %i.im, 0
  %i.io = zext i1 %i.in to i32
  %.not70 = icmp eq i32 %i.io, 0
  br i1 %.not70, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.loopexit79
  %i.ip = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !76
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef i32 %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.b), !call_target !153 ; 0 uses
  %i.iu = load i32, ptr %i.b, align 4, !tbaa !142
  %i.iv = load i32, ptr %i.ai, align 8, !tbaa !95
  %i.iw = sub nsw i32 %i.iu, %i.iv
  store i32 %i.iw, ptr %i.ai, align 8, !tbaa !95
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit79
  %i.ix = load i128, ptr %i.a, align 16
  %i.iy = xor i128 %i.ix, 153423964037771352061187687485443237198
  %i.iz = getelementptr i8, ptr %i.a, i64 16
  %i.ja = load i8, ptr %i.iz, align 16
  %i.jb = zext i8 %i.ja to i128
  %i.jc = or i128 %i.iy, %i.jb
  %i.jd = icmp ne i128 %i.jc, 0
  %i.je = zext i1 %i.jd to i32
  %.not72 = icmp eq i32 %i.je, 0
  br i1 %.not72, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.jf = load float, ptr %i.aj, align 4, !tbaa !93
  %i.jg = fcmp reassoc nsz arcp contract afn une float %i.jf, 0.000000e+00
  br i1 %i.jg, label %.loopexit, label %.preheader77.preheader

.preheader77.preheader:                           ; preds = %bb.at
  %i.jh = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !76
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call noundef i32 %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.c), !call_target !153 ; 0 uses
  %i.jm = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !76
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = call noundef i32 %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.al), !call_target !153 ; 0 uses
  %i.jr = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !76
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.am), !call_target !153 ; 0 uses
  %i.jw = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !76
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = call noundef i32 %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.an), !call_target !153 ; 0 uses
  %i.kb = load i32, ptr %i.c, align 16
  %i.kc = sitofp reassoc nsz arcp contract afn i32 %i.kb to float ; 3 uses
  %i.kd = load i32, ptr %i.al, align 4, !tbaa !142 ; 2 uses
  %.not73 = icmp eq i32 %i.kd, 0
  br i1 %.not73, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.preheader77.preheader
  %i.ke = sitofp reassoc nsz arcp contract afn i32 %i.kd to float
  %i.kf = fdiv reassoc nsz arcp contract afn float %i.kc, %i.ke
  store float %i.kf, ptr %i.aj, align 4, !tbaa !93
  br label %bb.av

bb.av:                                            ; preds = %.preheader77.preheader, %bb.au
  %i.kg = load i32, ptr %i.am, align 8, !tbaa !142 ; 2 uses
  %.not73.1 = icmp eq i32 %i.kg, 0
  br i1 %.not73.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kh = sitofp reassoc nsz arcp contract afn i32 %i.kg to float
  %i.ki = fdiv reassoc nsz arcp contract afn float %i.kc, %i.kh
  store float %i.ki, ptr %i.ao, align 8, !tbaa !93
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.kj = load i32, ptr %i.an, align 4, !tbaa !142 ; 2 uses
  %.not73.2 = icmp eq i32 %i.kj, 0
  br i1 %.not73.2, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kk = sitofp reassoc nsz arcp contract afn i32 %i.kj to float
  %i.kl = fdiv reassoc nsz arcp contract afn float %i.kc, %i.kk
  store float %i.kl, ptr %i.ap, align 4, !tbaa !93
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ax, %bb.ay, %bb.at, %bb.as
  %i.km = load i64, ptr %i.a, align 16
  %i.kn = xor i64 %i.km, 8386094342262452050
  %i.ko = getelementptr i8, ptr %i.a, i64 8
  %i.kp = load i16, ptr %i.ko, align 8
  %i.kq = zext i16 %i.kp to i64
  %i.kr = xor i64 %i.kq, 97
  %i.ks = or i64 %i.kn, %i.kr
  %i.kt = icmp ne i64 %i.ks, 0
  %i.ku = zext i1 %i.kt to i32
  %.not75 = icmp eq i32 %i.ku, 0
  br i1 %.not75, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.loopexit
  %i.kv = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.kv, ptr %i.ak, align 4, !tbaa !155
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit
  call void @_ZN6LibRaw9parse_mosEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.bc)
  %i.kw = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.kx = zext i32 %i.ax to i64
  %i.ky = add nsw i64 %i.bc, %i.kx
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !76
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = call noundef i32 %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, i64 noundef %i.ky, i32 noundef 0), !call_target !85 ; 0 uses
  %i.ld = load ptr, ptr %i.j, align 8, !tbaa !74  ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !76
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 80
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = call noundef i32 %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.ld), !call_target !90
  %.not = icmp eq i32 %i.lh, 0
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.ba, %bb.b
  %.0.lcssa.ph = phi i32 [ %.3, %bb.ba ], [ %.088, %bb.b ]
  %.pre = load i32, ptr %i.d, align 4, !tbaa !142 ; 2 uses
  %.not76 = icmp eq i32 %.pre, 0
  br i1 %.not76, label %._crit_edge.thread, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  %i.li = icmp eq i32 %.pre, 1
  %i.lj = select i1 %i.li, i32 16843009, i32 0
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !95
  %i.lm = sdiv i32 %i.ll, 90
  %i.ln = add nsw i32 %i.lm, %.0.lcssa.ph
  %i.lo = and i32 %i.ln, 3
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr @.str.65, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !94
  %i.ls = zext i8 %i.lr to i32
  %i.lt = mul nuw i32 %i.lj, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %i.lt, ptr %i.lu, align 8, !tbaa !156
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.bb, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN6LibRaw8getwordsEPcPS0_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !77, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 short", !12, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !9, i64 16, !15, i64 24, !9, i64 32, !8, i64 36, !14, i64 164, !8, i64 166}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTS16libraw_iparams_t", !8, i64 0, !8, i64 4, !8, i64 68, !8, i64 132, !8, i64 196, !8, i64 260, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !8, i64 348, !8, i64 384, !8, i64 420, !9, i64 428, !17, i64 432}
!19 = !{!"float", !8, i64 0}
!20 = !{!"_ZTS18libraw_nikonlens_t", !19, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"long long", !8, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !8, i64 8, !14, i64 136, !14, i64 138, !22, i64 144, !14, i64 152, !14, i64 154, !8, i64 156, !14, i64 220, !8, i64 222, !8, i64 238, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !22, i64 320, !8, i64 328, !22, i64 456, !8, i64 464, !22, i64 592, !8, i64 600, !14, i64 728, !19, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !8, i64 20, !8, i64 148, !8, i64 276, !8, i64 404, !14, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16, !9, i64 32, !8, i64 36, !14, i64 52, !14, i64 54, !8, i64 56, !14, i64 58, !14, i64 60, !14, i64 62, !14, i64 64, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !9, i64 84, !19, i64 88, !14, i64 92, !14, i64 94, !14, i64 96, !14, i64 98, !9, i64 100, !14, i64 104, !9, i64 108, !9, i64 112, !14, i64 116, !9, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !8, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 34, !8, i64 54, !8, i64 58, !8, i64 62, !8, i64 66, !8, i64 67, !8, i64 68, !8, i64 69, !8, i64 70, !8, i64 71, !8, i64 73, !8, i64 74, !8, i64 75, !8, i64 76, !8, i64 77, !8, i64 78, !8, i64 82, !8, i64 86, !14, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !8, i64 112, !8, i64 144, !8, i64 145, !8, i64 146, !9, i64 148, !9, i64 152, !9, i64 156, !8, i64 160, !8, i64 162, !14, i64 170, !27, i64 172, !14, i64 180, !14, i64 182, !14, i64 184, !9, i64 188, !8, i64 192, !8, i64 212, !9, i64 232, !8, i64 236, !9, i64 248, !17, i64 256, !14, i64 264, !14, i64 266, !8, i64 268, !14, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !9, i64 0, !15, i64 8, !8, i64 16, !8, i64 24, !8, i64 88, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !8, i64 168, !8, i64 200, !9, i64 264, !8, i64 268, !8, i64 276, !8, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !19, i64 0, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !8, i64 20, !8, i64 53, !19, i64 88, !14, i64 92, !14, i64 94, !8, i64 96, !14, i64 100, !9, i64 104, !9, i64 108, !14, i64 112, !8, i64 114, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !14, i64 128, !9, i64 132, !14, i64 136, !8, i64 138, !8, i64 151, !8, i64 156, !9, i64 164, !14, i64 168, !9, i64 172, !14, i64 176, !8, i64 178, !8, i64 196, !9, i64 324, !9, i64 328, !9, i64 332, !8, i64 336, !9, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !8, i64 0, !14, i64 6, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !8, i64 64, !8, i64 72, !14, i64 82, !8, i64 84, !14, i64 88, !14, i64 90, !8, i64 92, !8, i64 352, !14, i64 392, !8, i64 394, !8, i64 396, !8, i64 404, !14, i64 416, !14, i64 418, !14, i64 420, !14, i64 422, !15, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !9, i64 452, !14, i64 456, !14, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !14, i64 0, !8, i64 2, !8, i64 3, !9, i64 4, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 17, !14, i64 18, !8, i64 20, !8, i64 24, !8, i64 25, !14, i64 26, !8, i64 28, !8, i64 38, !8, i64 39, !8, i64 40, !14, i64 48, !8, i64 50, !8, i64 51, !8, i64 52, !14, i64 54, !9, i64 56, !14, i64 60, !8, i64 62, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !9, i64 80, !19, i64 84, !14, i64 88, !9, i64 92, !9, i64 96, !14, i64 100, !8, i64 102, !9, i64 124, !14, i64 128, !9, i64 132, !8, i64 136, !8, i64 137, !14, i64 138, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !9, i64 156, !14, i64 160, !8, i64 162, !19, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 48, !8, i64 84, !8, i64 120, !8, i64 156, !8, i64 192, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !19, i64 236, !19, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !14, i64 0, !14, i64 2, !8, i64 4, !9, i64 36, !19, i64 40, !8, i64 44, !14, i64 56, !14, i64 58, !9, i64 60, !9, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 12, !9, i64 16, !9, i64 20, !14, i64 24, !8, i64 26, !14, i64 30, !8, i64 32, !8, i64 33, !14, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !14, i64 0, !8, i64 4, !8, i64 12, !14, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !15, i64 56, !15, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 40, !15, i64 88, !9, i64 96, !8, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !14, i64 64, !8, i64 66, !19, i64 196, !8, i64 200, !9, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !8, i64 14, !8, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 64, !8, i64 112, !19, i64 128, !19, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !8, i64 224, !9, i64 240, !9, i64 244, !19, i64 248, !19, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !19, i64 288, !19, i64 292, !9, i64 296, !9, i64 300}
!43 = !{!"any p2 pointer", !12, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !19, i64 28, !8, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !19, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !9, i64 0, !8, i64 4, !9, i64 16420, !8, i64 16424, !19, i64 32840, !8, i64 32844, !8, i64 32860, !8, i64 32868, !9, i64 32884, !8, i64 32888, !8, i64 32904, !19, i64 32920, !19, i64 32924, !8, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !8, i64 0, !8, i64 131072, !9, i64 147488, !9, i64 147492, !9, i64 147496, !8, i64 147500, !19, i64 147516, !19, i64 147520, !8, i64 147524, !8, i64 147652, !8, i64 147668, !8, i64 147684, !8, i64 147732, !8, i64 147780, !8, i64 147828, !46, i64 147876, !19, i64 147912, !19, i64 147916, !8, i64 147920, !8, i64 147984, !8, i64 148048, !8, i64 148112, !8, i64 148176, !8, i64 148193, !12, i64 148264, !9, i64 148272, !8, i64 148276, !8, i64 148308, !47, i64 148648, !8, i64 181624, !8, i64 185720, !9, i64 187000, !8, i64 187004, !9, i64 187076, !9, i64 187080}
!49 = !{!"long", !8, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !8, i64 0, !8, i64 12, !8, i64 24, !19, i64 36, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !8, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !49, i64 16, !9, i64 24, !8, i64 28, !50, i64 156, !8, i64 204, !8, i64 716, !8, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !8, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !14, i64 4, !14, i64 6, !9, i64 8, !9, i64 12, !17, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !9, i64 0, !8, i64 8}
!55 = !{!"p1 float", !12, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !14, i64 12, !14, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !16, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !13, i64 0, !16, i64 8, !18, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !9, i64 5584, !9, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !12, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !12, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !12, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !9, i64 16, !17, i64 24, !22, i64 32, !22, i64 40, !8, i64 48}
!63 = !{!"p1 int", !12, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !9, i64 0, !22, i64 8, !22, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !8, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !8, i64 0, !8, i64 24, !14, i64 36, !8, i64 38, !8, i64 46, !8, i64 80, !8, i64 114, !14, i64 148, !14, i64 150, !8, i64 152, !8, i64 192, !8, i64 204, !8, i64 224, !8, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !14, i64 0, !8, i64 2, !8, i64 10, !9, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !66, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !22, i64 144, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !67, i64 192, !8, i64 440, !9, i64 2488, !9, i64 2492, !14, i64 2496, !14, i64 2498, !9, i64 2500, !9, i64 2504, !9, i64 2508, !9, i64 2512, !9, i64 2516, !9, i64 2520, !9, i64 2524, !8, i64 2528, !14, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !12, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !9, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !8, i64 384344, !70, i64 433496, !70, i64 433504, !8, i64 433512, !71, i64 768232, !72, i64 768248, !8, i64 768400, !8, i64 768416, !8, i64 768432, !12, i64 768448, !12, i64 768456, !12, i64 768464, !49, i64 768472, !12, i64 768480, !12, i64 768488, !12, i64 768496, !12, i64 768504}
!74 = !{!73, !60, i64 381592}
!75 = !{!"vtable pointer", !7, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!80 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!81 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !80, line: 109, baseType: !81)
!83 = !{!78, !79, !82, !78}
!84 = !DISubroutineType(types: !83)
!85 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !77, line: 102, type: !84, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!86 = !{!82, !79}
!87 = !DISubroutineType(types: !86)
!88 = !{!78, !79}
!89 = !DISubroutineType(types: !88)
!90 = !DISubprogram(name: "eof", linkageName: "_ZN26LibRaw_abstract_datastream3eofEv", scope: !0, file: !77, line: 108, type: !89, scopeLine: 108, containingType: !0, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!91 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !0, file: !77, line: 103, type: !87, scopeLine: 103, containingType: !0, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!19, !19, i64 0}
!94 = !{!8, !8, i64 0}
!95 = !{!73, !9, i64 48}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 18, baseType: !98)
!100 = !{!78, !79, !96, !99, !99}
!101 = !DISubroutineType(types: !100)
!102 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !77, line: 101, type: !101, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!103 = !{!73, !14, i64 1354}
!104 = !{!73, !14, i64 1352}
!105 = distinct !{!105, !92}
!106 = distinct !{!106, !92}
!107 = !{!73, !14, i64 381728}
!108 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !0, file: !77, line: 104, type: !87, scopeLine: 104, containingType: !0, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!109 = !{!73, !22, i64 381696}
!110 = !{!73, !14, i64 18}
!111 = !{!73, !14, i64 16}
!112 = !{!73, !14, i64 26}
!113 = !{!73, !14, i64 24}
!114 = !{!73, !14, i64 22}
!115 = !{!73, !14, i64 20}
!116 = !{!73, !9, i64 153476}
!117 = !{!73, !22, i64 381760}
!118 = !{!73, !22, i64 381800}
!119 = !{!73, !22, i64 381768}
!120 = !{!73, !9, i64 381808}
!121 = !{!73, !9, i64 153480}
!122 = !{!73, !19, i64 153508}
!123 = !{!73, !19, i64 4804}
!124 = !{!73, !19, i64 4808}
!125 = !{!73, !9, i64 153484}
!126 = !{!73, !22, i64 381752}
!127 = !{!73, !9, i64 153488}
!128 = !{!73, !9, i64 153492}
!129 = !{!73, !9, i64 153496}
!130 = !{!73, !9, i64 153500}
!131 = !{!73, !9, i64 153504}
!132 = !{!73, !19, i64 1492}
!133 = !{!73, !19, i64 1488}
!134 = !{!73, !19, i64 1496}
!135 = !{!73, !19, i64 1500}
!136 = !{!73, !19, i64 1460}
!137 = !{!73, !8, i64 768416}
!138 = !{!73, !9, i64 153096}
!139 = distinct !{!139, !92}
!140 = distinct !{!140, !92}
!141 = distinct !{!141, !92}
!142 = !{!9, !9, i64 0}
!143 = !{!17, !17, i64 0}
!144 = !{!73, !22, i64 381632}
!145 = !{!73, !9, i64 193496}
!146 = !{!73, !22, i64 381624}
!147 = !{!73, !9, i64 153872}
!148 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!151 = !{!78, !79, !150, !96}
!152 = !DISubroutineType(types: !151)
!153 = !DISubprogram(name: "scanf_one", linkageName: "_ZN26LibRaw_abstract_datastream9scanf_oneEPKcPv", scope: !0, file: !77, line: 107, type: !152, scopeLine: 107, containingType: !0, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!154 = !{!73, !22, i64 1344}
!155 = !{!73, !9, i64 381860}
!156 = !{!73, !9, i64 544}
end_hunk_0
