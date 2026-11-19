Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/recording_replay?download=true
inline.NumInlined: 839
inline.NumDeleted: 51
begin_hunk_0_@b3RecPlayer_DrawFrameQueries:bb.a
  %i.gy = fadd <2 x float> %i.gx, %.sroa.0216.0.copyload.us.us
  %i.gz = fadd float %i.gu, %.sroa.2217.0.copyload.us.us
  call fastcc void @b3RecDrawProxy(ptr noundef %1, <2 x float> %i.gy, float %i.gz, ptr noundef %i.ad, i32 noundef %i.el)
  br label %.lr.ph2040.split.us.split.us

.lr.ph2040.split.us.split.us:                     ; preds = %bb.au, %bb.as
  %indvars.iv.next3000 = add nsw i64 %indvars.iv29993940, 1
  %i.ha = load i32, ptr %i.ei, align 8, !tbaa !225 ; 2 uses
  %i.hb = load i32, ptr %i.ek, align 4, !tbaa !226 ; 2 uses
  %i.hc = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ha, i32 %i.hb), !nosanitize !9 ; 2 uses
  %i.hd = extractvalue { i32, i1 } %i.hc, 1, !nosanitize !9
  br i1 %i.hd, label %.split2046.us, label %bb.ag, !prof !126, !nosanitize !9

.split2046.us:                                    ; preds = %.lr.ph2040, %.lr.ph2040.split.us.split.us
  %.lcssa3737 = phi i32 [ %i.ha, %.lr.ph2040.split.us.split.us ], [ %i.ej, %.lr.ph2040 ]
  %.lcssa3729 = phi i32 [ %i.hb, %.lr.ph2040.split.us.split.us ], [ %i.eo, %.lr.ph2040 ]
  %i.he = zext i32 %.lcssa3737 to i64, !nosanitize !9
  %i.hf = zext i32 %.lcssa3729 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @158, i64 %i.he, i64 %i.hf) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2050.us:                                    ; preds = %bb.ah
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @159, i64 %i.ez, i64 %i.fa) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2057.us:                                    ; preds = %bb.ak
  %i.hg = ptrtoint ptr %i.fi to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @160, i64 %i.hg) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2060.us:                                    ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @161, i64 %i.fp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2066.us:                                    ; preds = %bb.ap
  %i.hh = ptrtoint ptr %i.fv to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @162, i64 %i.hh) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2069.us:                                    ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @163, i64 %i.gc) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2078.us:                                    ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @164, i64 %i.go) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %bb.f
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ad, i64 1616
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1644
  %.sroa.0202.0.copyload = load <2 x float>, ptr %i.hj, align 4 ; 2 uses
  %.sroa.2203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1652
  %.sroa.2203.0.copyload = load float, ptr %.sroa.2203.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0200.0.copyload = load <2 x float>, ptr %i.hi, align 8
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1624
  %.sroa.2201.0.copyload = load float, ptr %.sroa.2201.0..sroa_idx, align 8
  %i.hk = fadd <2 x float> %.sroa.0202.0.copyload, %.sroa.0200.0.copyload ; 2 uses
  %i.hl = fadd float %.sroa.2203.0.copyload, %.sroa.2201.0.copyload ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ad, i64 1628
  %.sroa.0189.0.copyload = load <2 x float>, ptr %i.hm, align 4
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1636
  %.sroa.2190.0.copyload = load float, ptr %.sroa.2190.0..sroa_idx, align 4
  %i.hn = fadd <2 x float> %.sroa.0202.0.copyload, %.sroa.0189.0.copyload ; 2 uses
  %i.ho = fadd float %.sroa.2203.0.copyload, %.sroa.2190.0.copyload ; 2 uses
  br i1 %i.l, label %bb.ax, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @165, i64 %i.j) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.av
  %i.hp = load ptr, ptr %i.o, align 8, !tbaa !231 ; 5 uses
  %.not487 = icmp eq ptr %i.hp, null
  br i1 %.not487, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hq = getelementptr i8, ptr %i.hp, i64 -8
  %i.hr = load i32, ptr %i.hq, align 4, !nosanitize !9
  %i.hs = icmp eq i32 %i.hr, -1056584962, !nosanitize !9
  br i1 %i.hs, label %bb.az, label %bb.bb, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  %i.ht = getelementptr i8, ptr %i.hp, i64 -4
  %i.hu = load i32, ptr %i.ht, align 8, !nosanitize !9
  %i.hv = icmp eq i32 %i.hu, -317303226, !nosanitize !9
  br i1 %i.hv, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  %i.hw = ptrtoint ptr %i.hp to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @167, i64 %i.hw) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1640 ; 2 uses
  %i.hy = select i1 %i.am, i32 14524637, i32 8900346
  %i.hz = load float, ptr %i.hx, align 8, !tbaa !232
  %i.ia = load ptr, ptr %i.n, align 8, !tbaa !224
  call void %i.hp(<2 x float> %i.hk, float %i.hl, <2 x float> %i.hn, float %i.ho, float noundef %i.hz, i32 noundef %i.hy, float noundef 6.000000e-01, ptr noundef %i.ia) #13
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ad, i64 1668
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !233 ; 3 uses
  %i.id = fcmp ogt float %i.ic, f0x3C23D70A
  br i1 %i.id, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ad, i64 1656
  %.sroa.0174.0.copyload = load <2 x float>, ptr %i.ie, align 8
  %.sroa.2175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1664
  %.sroa.2175.0.copyload = load float, ptr %.sroa.2175.0..sroa_idx, align 8
  %i.if = fmul float %i.ic, %.sroa.2175.0.copyload ; 2 uses
  %i.ig = fadd float %i.hl, %i.if
  %i.ih = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %.sroa.0174.0.copyload ; 2 uses
  %i.ik = fadd <2 x float> %i.hk, %i.ij
  %i.il = fadd <2 x float> %i.hn, %i.ij
  %i.im = fadd float %i.ho, %i.if
  %i.in = load ptr, ptr %i.o, align 8, !tbaa !231 ; 4 uses
  %i.io = getelementptr i8, ptr %i.in, i64 -8
  %i.ip = load i32, ptr %i.io, align 4, !nosanitize !9
  %i.iq = icmp eq i32 %i.ip, -1056584962, !nosanitize !9
  br i1 %i.iq, label %bb.bd, label %bb.bf, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  %i.ir = getelementptr i8, ptr %i.in, i64 -4
  %i.is = load i32, ptr %i.ir, align 8, !nosanitize !9
  %i.it = icmp eq i32 %i.is, -317303226, !nosanitize !9
  br i1 %i.it, label %bb.bf, label %bb.be, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  %i.iu = ptrtoint ptr %i.in to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @168, i64 %i.iu) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bf:                                            ; preds = %bb.bc, %bb.bd
  %i.iv = load float, ptr %i.hx, align 8, !tbaa !232
  %i.iw = load ptr, ptr %i.n, align 8, !tbaa !224
  call void %i.in(<2 x float> %i.ik, float %i.ig, <2 x float> %i.il, float %i.im, float noundef %i.iv, i32 noundef 8900346, float noundef 3.000000e-01, ptr noundef %i.iw) #13
  br label %.loopexit

bb.bg:                                            ; preds = %bb.f
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ad, i64 1644 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ad, i64 1616
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.ix, align 4 ; 2 uses
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1652 ; 2 uses
  %.sroa.2143.0.copyload = load float, ptr %.sroa.2143.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.iy, align 8
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1624
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 8
  %i.iz = fadd <2 x float> %.sroa.0142.0.copyload, %.sroa.0140.0.copyload
  %i.ja = fadd float %.sroa.2143.0.copyload, %.sroa.2141.0.copyload
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ad, i64 1628
  %.sroa.0130.0.copyload = load <2 x float>, ptr %i.jb, align 4
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1636
  %.sroa.2131.0.copyload = load float, ptr %.sroa.2131.0..sroa_idx, align 4
  %i.jc = fadd <2 x float> %.sroa.0142.0.copyload, %.sroa.0130.0.copyload
  %i.jd = fadd float %.sroa.2143.0.copyload, %.sroa.2131.0.copyload
  br i1 %i.l, label %bb.bi, label %bb.bh, !prof !10, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @169, i64 %i.j) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bi:                                            ; preds = %bb.bg
  %i.je = load ptr, ptr %i.o, align 8, !tbaa !231 ; 5 uses
  %.not485 = icmp eq ptr %i.je, null
  br i1 %.not485, label %.lr.ph, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jf = getelementptr i8, ptr %i.je, i64 -8
  %i.jg = load i32, ptr %i.jf, align 4, !nosanitize !9
  %i.jh = icmp eq i32 %i.jg, -1056584962, !nosanitize !9
  br i1 %i.jh, label %bb.bk, label %bb.bm, !nosanitize !9

bb.bk:                                            ; preds = %bb.bj
  %i.ji = getelementptr i8, ptr %i.je, i64 -4
  %i.jj = load i32, ptr %i.ji, align 8, !nosanitize !9
  %i.jk = icmp eq i32 %i.jj, -317303226, !nosanitize !9
  br i1 %i.jk, label %bb.bm, label %bb.bl, !prof !10, !nosanitize !9

bb.bl:                                            ; preds = %bb.bk
  %i.jl = ptrtoint ptr %i.je to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @170, i64 %i.jl) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ad, i64 1640
  %i.jn = select i1 %i.am, i32 14524637, i32 13808780
  %i.jo = load float, ptr %i.jm, align 8, !tbaa !232
  %i.jp = load ptr, ptr %i.n, align 8, !tbaa !224
  call void %i.je(<2 x float> %i.iz, float %i.ja, <2 x float> %i.jc, float %i.jd, float noundef %i.jo, i32 noundef %i.jn, float noundef 6.000000e-01, ptr noundef %i.jp) #13
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.bi, %bb.bm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ad, i64 1744 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !225 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ad, i64 1748 ; 2 uses
  %i.jt = select i1 %i.am, i32 14524637, i32 16753920
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !226 ; 2 uses
  %i.jv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.jr, i32 %i.ju), !nosanitize !9 ; 2 uses
  %i.jw = extractvalue { i32, i1 } %i.jv, 1, !nosanitize !9
  br i1 %i.jw, label %.split.us, label %bb.bn, !prof !125, !nosanitize !9

bb.bn:                                            ; preds = %.lr.ph, %.lr.ph.split.us.split.us
  %i.jx = phi { i32, i1 } [ %i.lj, %.lr.ph.split.us.split.us ], [ %i.jv, %.lr.ph ]
  %.04551924.us.us3932 = phi i32 [ %6, %.lr.ph.split.us.split.us ], [ %i.jr, %.lr.ph ] ; 4 uses
  %i.jy = phi i32 [ %i.lh, %.lr.ph.split.us.split.us ], [ %i.jr, %.lr.ph ]
  %i.jz = extractvalue { i32, i1 } %i.jx, 0, !nosanitize !9
  %i.ka = icmp slt i32 %.04551924.us.us3932, %i.jz
  br i1 %i.ka, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.kb = load ptr, ptr %i.p, align 8, !tbaa !113 ; 3 uses
  %5 = sext i32 %.04551924.us.us3932 to i64       ; 2 uses
  %i.kc = getelementptr inbounds [112 x i8], ptr %i.kb, i64 %5 ; 5 uses
  %i.kd = mul nsw i64 %5, 112
  %i.ke = ptrtoint ptr %i.kb to i64, !nosanitize !9 ; 3 uses
  %i.kf = add i64 %i.kd, %i.ke, !nosanitize !9    ; 3 uses
  %i.kg = icmp ne ptr %i.kb, null, !nosanitize !9 ; 2 uses
  %i.kh = icmp eq i64 %i.kf, 0
  %i.ki = xor i1 %i.kg, %i.kh
  %i.kj = icmp uge i64 %i.kf, %i.ke, !nosanitize !9
  %i.kk = icmp slt i32 %.04551924.us.us3932, 0
  %i.kl = xor i1 %i.kk, %i.kj
  %i.km = and i1 %i.ki, %i.kl, !nosanitize !9
  br i1 %i.km, label %bb.bp, label %.split1929.us, !prof !10, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  %i.kn = ptrtoint ptr %i.kc to i64, !nosanitize !9 ; 2 uses
  %i.ko = and i64 %i.kn, 7, !nosanitize !9
  %i.kp = icmp eq i64 %i.ko, 0, !nosanitize !9
  %i.kq = and i1 %i.kg, %i.kp
  br i1 %i.kq, label %bb.bq, label %.split1933.us, !prof !10, !nosanitize !9

bb.bq:                                            ; preds = %bb.bp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kc, i64 56
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 72
  %.sroa.0111.0.copyload.us.us = load <2 x float>, ptr %i.ix, align 4
  %.sroa.2112.0.copyload.us.us = load float, ptr %.sroa.2143.0..sroa_idx, align 4
  %.sroa.0109.0.copyload.us.us = load <2 x float>, ptr %i.ks, align 8
  %.sroa.2110.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.kc, i64 80
  %.sroa.2110.0.copyload.us.us = load float, ptr %.sroa.2110.0..sroa_idx.us.us, align 8
  %i.kt = fadd <2 x float> %.sroa.0111.0.copyload.us.us, %.sroa.0109.0.copyload.us.us ; 2 uses
  %i.ku = fadd float %.sroa.2112.0.copyload.us.us, %.sroa.2110.0.copyload.us.us ; 2 uses
  %i.kv = load ptr, ptr %i.q, align 8, !tbaa !572 ; 5 uses
  %.not486.us.us = icmp eq ptr %i.kv, null
  br i1 %.not486.us.us, label %.lr.ph.split.us.split.us, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kw = getelementptr i8, ptr %i.kv, i64 -8
  %i.kx = load i32, ptr %i.kw, align 4, !nosanitize !9
  %i.ky = icmp eq i32 %i.kx, -1056584962, !nosanitize !9
  br i1 %i.ky, label %bb.bs, label %bb.bt, !nosanitize !9

bb.bs:                                            ; preds = %bb.br
  %i.kz = getelementptr i8, ptr %i.kv, i64 -4
  %i.la = load i32, ptr %i.kz, align 8, !nosanitize !9
  %i.lb = icmp eq i32 %i.la, -341714709, !nosanitize !9
  br i1 %i.lb, label %bb.bt, label %.split1942.us, !prof !10, !nosanitize !9

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sroa.2100.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %.sroa.2100.0.copyload.us.us = load float, ptr %.sroa.2100.0..sroa_idx.us.us, align 8
  %i.lc = fmul float %.sroa.2100.0.copyload.us.us, 2.000000e-01
  %i.ld = fadd float %i.ku, %i.lc
  %.sroa.099.0.copyload.us.us = load <2 x float>, ptr %i.kr, align 8
  %i.le = fmul <2 x float> %.sroa.099.0.copyload.us.us, splat (float 2.000000e-01)
  %i.lf = fadd <2 x float> %i.kt, %i.le
  %i.lg = load ptr, ptr %i.n, align 8, !tbaa !224
  call void %i.kv(<2 x float> %i.kt, float %i.ku, <2 x float> %i.lf, float %i.ld, i32 noundef %i.jt, ptr noundef %i.lg) #13
  %.pre = load i32, ptr %i.jq, align 8, !tbaa !225
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %bb.bt, %bb.bq
  %i.lh = phi i32 [ %.pre, %bb.bt ], [ %i.jy, %bb.bq ] ; 3 uses
  %6 = add nsw i32 %.04551924.us.us3932, 1
  %i.li = load i32, ptr %i.js, align 4, !tbaa !226 ; 2 uses
  %i.lj = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.lh, i32 %i.li), !nosanitize !9 ; 2 uses
  %i.lk = extractvalue { i32, i1 } %i.lj, 1, !nosanitize !9
  br i1 %i.lk, label %.split.us, label %bb.bn, !prof !126, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph, %.lr.ph.split.us.split.us
  %.lcssa3713 = phi i32 [ %i.lh, %.lr.ph.split.us.split.us ], [ %i.jr, %.lr.ph ]
  %.lcssa = phi i32 [ %i.li, %.lr.ph.split.us.split.us ], [ %i.ju, %.lr.ph ]
  %i.ll = zext i32 %.lcssa3713 to i64, !nosanitize !9
  %i.lm = zext i32 %.lcssa to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @171, i64 %i.ll, i64 %i.lm) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1929.us:                                    ; preds = %bb.bo
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @172, i64 %i.ke, i64 %i.kf) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1933.us:                                    ; preds = %bb.bp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @173, i64 %i.kn) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1942.us:                                    ; preds = %bb.bs
  %i.ln = ptrtoint ptr %i.kv to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @175, i64 %i.ln) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bu:                                            ; preds = %bb.f
  br i1 %i.l, label %bb.bw, label %bb.bv, !prof !10, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @176, i64 %i.j) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bw:                                            ; preds = %bb.bu
  %i.lo = load ptr, ptr %i.m, align 8, !tbaa !234 ; 5 uses
  %.not484 = icmp eq ptr %i.lo, null
  br i1 %.not484, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lp = getelementptr i8, ptr %i.lo, i64 -8
  %i.lq = load i32, ptr %i.lp, align 4, !nosanitize !9
  %i.lr = icmp eq i32 %i.lq, -1056584962, !nosanitize !9
  br i1 %i.lr, label %bb.by, label %bb.ca, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %i.ls = getelementptr i8, ptr %i.lo, i64 -4
  %i.lt = load i32, ptr %i.ls, align 8, !nosanitize !9
  %i.lu = icmp eq i32 %i.lt, -1434405476, !nosanitize !9
  br i1 %i.lu, label %bb.ca, label %bb.bz, !prof !10, !nosanitize !9

bb.bz:                                            ; preds = %bb.by
  %i.lv = ptrtoint ptr %i.lo to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @178, i64 %i.lv) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ca:                                            ; preds = %bb.by, %bb.bx
  %i.lw = select i1 %i.am, i32 14524637, i32 3329330
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ly = load ptr, ptr %i.n, align 8, !tbaa !224
  call void %i.lo(ptr noundef nonnull byval(%struct.b3AABB) align 8 %i.lx, i32 noundef %i.lw, ptr noundef %i.ly) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bw, %bb.ca
  %i.lz = select i1 %i.am, i32 14524637, i32 16711935
  call fastcc void @b3RecDrawHitBounds(ptr noundef %0, ptr noundef %i.ad, ptr noundef %1, i32 noundef %i.lz)
  br label %.loopexit

bb.cc:                                            ; preds = %bb.f
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ad, i64 1644
  %i.mb = select i1 %i.am, i32 14524637, i32 3329330
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.ma, align 4
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1652
  %.sroa.282.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 4
  call fastcc void @b3RecDrawProxy(ptr noundef %1, <2 x float> %.sroa.081.0.copyload, float %.sroa.282.0.copyload, ptr noundef %i.ad, i32 noundef %i.mb)
  %i.mc = select i1 %i.am, i32 14524637, i32 16711935
  call fastcc void @b3RecDrawHitBounds(ptr noundef %0, ptr noundef %i.ad, ptr noundef %1, i32 noundef %i.mc)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bn, %bb.ag, %bb.n, %bb.cb, %bb.cc, %bb.f, %bb.bb, %bb.bf, %bb.ax
  br i1 %i.am, label %bb.cd, label %.lr.ph2267.split

bb.cd:                                            ; preds = %.loopexit
  %i.md = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !235 ; 2 uses
  %.not495 = icmp eq i64 %i.me, 0
  br i1 %.not495, label %.lr.ph2267.split, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.l, label %bb.cg, label %bb.cf, !prof !10, !nosanitize !9

bb.cf:                                            ; preds = %bb.ce
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @179, i64 %i.j) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cg:                                            ; preds = %bb.ce
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !573
  %.not496 = icmp eq ptr %i.mf, null
  br i1 %.not496, label %.lr.ph2267.split, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mg = load ptr, ptr %i.u, align 8, !tbaa !100 ; 2 uses
  %.not497 = icmp eq ptr %i.mg, null
  br i1 %.not497, label %.critedge.sink.split, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call fastcc void @b3RecTagLookup_get(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %i.mg, i64 noundef %i.me)
  %.val = load ptr, ptr %i.v, align 8, !tbaa !237
  %.val503 = load ptr, ptr %i.w, align 8, !tbaa !238
  %i.mh = icmp eq ptr %.val, %.val503
  br i1 %i.mh, label %.thread683, label %bb.cj

.thread683:                                       ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.mi = load ptr, ptr %4, align 8, !tbaa !239   ; 3 uses
  %i.mj = icmp ne ptr %i.mi, null, !nosanitize !9
  %i.mk = ptrtoint ptr %i.mi to i64, !nosanitize !9 ; 2 uses
  %i.ml = and i64 %i.mk, 7, !nosanitize !9
  %i.mm = icmp eq i64 %i.ml, 0, !nosanitize !9
  %i.mn = and i1 %i.mj, %i.mm, !nosanitize !9
  br i1 %i.mn, label %bb.cl, label %bb.ck, !prof !10, !nosanitize !9

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @181, i64 %i.mk) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cl:                                            ; preds = %bb.cj
  %i.mo = load ptr, ptr %i.x, align 8, !tbaa !98  ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !241
  %i.mr = zext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds nuw [88 x i8], ptr %i.mo, i64 %i.mr ; 3 uses
  %i.mt = mul nuw nsw i64 %i.mr, 88
  %i.mu = ptrtoint ptr %i.mo to i64, !nosanitize !9 ; 3 uses
  %i.mv = add i64 %i.mt, %i.mu, !nosanitize !9    ; 3 uses
  %i.mw = icmp ne ptr %i.mo, null, !nosanitize !9 ; 2 uses
  %i.mx = icmp eq i64 %i.mv, 0
  %i.my = xor i1 %i.mw, %i.mx
  %i.mz = icmp uge i64 %i.mv, %i.mu, !nosanitize !9
  %i.na = and i1 %i.mz, %i.my, !nosanitize !9
  br i1 %i.na, label %bb.cn, label %bb.cm, !prof !10, !nosanitize !9

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @182, i64 %i.mu, i64 %i.mv) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cn:                                            ; preds = %bb.cl
  %i.nb = ptrtoint ptr %i.ms to i64, !nosanitize !9 ; 2 uses
  %i.nc = and i64 %i.nb, 7, !nosanitize !9
  %i.nd = icmp eq i64 %i.nc, 0, !nosanitize !9
  %i.ne = and i1 %i.mw, %i.nd
  br i1 %i.ne, label %bb.cp, label %bb.co, !prof !10, !nosanitize !9

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @184, i64 %i.nb) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cp:                                            ; preds = %bb.cn
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !243 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ni = load i8, ptr %i.nf, align 8, !tbaa !29
  %i.nj = icmp ne i8 %i.ni, 0                     ; 2 uses
  %i.nk = icmp ne i64 %i.nh, 0
  %or.cond3 = select i1 %i.nj, i1 %i.nk, i1 false
  br i1 %or.cond3, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.nl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.nf, i64 noundef %i.nh) #13 ; 0 uses
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  br i1 %i.nj, label %bb.cs, label %.critedge

bb.cs:                                            ; preds = %bb.cr
  %i.nm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.nf) #13 ; 0 uses
  br label %bb.ct

.critedge.sink.split:                             ; preds = %bb.ch, %.thread683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.cr
  %.1458682 = phi i64 [ %i.nh, %bb.cr ], [ 0, %.critedge.sink.split ]
  %i.nn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.11, i64 noundef %.1458682) #13 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.critedge, %bb.cq
  %i.no = getelementptr inbounds nuw i8, ptr %i.ad, i64 1644
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.no, align 4, !tbaa !35 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1652
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !35 ; 3 uses
  %i.np = load i32, ptr %i.ad, align 8, !tbaa !222
  switch i32 %i.np, label %bb.cx [
    i32 0, label %bb.cu
end_hunk_0
begin_hunk_1_@b3RecDrawProxy:bb.a

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !224
  tail call void %i.aa(<2 x float> %i.g, float %i.h, float noundef 1.000000e+01, i32 noundef %4, ptr noundef %i.aj) #13
  br label %.loopexit

bb.s:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 1612
  %i.al = load float, ptr %i.ak, align 4, !tbaa !245 ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  br i1 %i.am, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.an = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.ao = and i64 %i.an, 7, !nosanitize !9
  %i.ap = icmp eq i64 %i.ao, 0, !nosanitize !9
  br i1 %i.ap, label %bb.v, label %bb.u, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1138, i64 %i.an) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !231 ; 5 uses
  %.not92 = icmp eq ptr %i.ar, null
  br i1 %.not92, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %.sroa.028.0.copyload = load <2 x float>, ptr %i.as, align 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.229.0.copyload = load float, ptr %.sroa.229.0..sroa_idx, align 8
  %i.at = fadd <2 x float> %1, %.sroa.028.0.copyload
  %i.au = fadd float %2, %.sroa.229.0.copyload
  %.not93 = icmp ugt ptr %i.as, inttoptr (i64 -13 to ptr)
  br i1 %.not93, label %bb.x, label %bb.y, !prof !27, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.av = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 2 uses
  %i.aw = add i64 %i.av, 12, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1139, i64 %i.av, i64 %i.aw) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 84
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.ax, align 4
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 92
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %i.ay = fadd <2 x float> %1, %.sroa.019.0.copyload
  %i.az = fadd float %2, %.sroa.220.0.copyload
  %i.ba = getelementptr i8, ptr %i.ar, i64 -8
  %i.bb = load i32, ptr %i.ba, align 4, !nosanitize !9
  %i.bc = icmp eq i32 %i.bb, -1056584962, !nosanitize !9
  br i1 %i.bc, label %bb.z, label %bb.ab, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr i8, ptr %i.ar, i64 -4
  %i.be = load i32, ptr %i.bd, align 8, !nosanitize !9
  %i.bf = icmp eq i32 %i.be, -317303226, !nosanitize !9
  br i1 %i.bf, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.bg = ptrtoint ptr %i.ar to i64, !nosanitize !9
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @1140, i64 %i.bg) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.y, %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !224
  tail call void %i.ar(<2 x float> %i.at, float %i.au, <2 x float> %i.ay, float %i.az, float noundef %i.al, i32 noundef %4, float noundef 5.000000e-01, ptr noundef %i.bi) #13
  br label %.loopexit

bb.ac:                                            ; preds = %bb.c
  %i.bj = icmp sgt i32 %i.e, 1
  br i1 %i.bj, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.s, %bb.ac
  %i.bk = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bl = and i64 %i.bk, 7, !nosanitize !9
  %i.bm = icmp eq i64 %i.bl, 0, !nosanitize !9
  br i1 %i.bm, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %.thread
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1141, i64 %i.bk) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !227
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ai ], [ 0, %.lr.ph ] ; 4 uses
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !227 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = load i32, ptr %i.bt, align 4, !nosanitize !9
  %i.bv = icmp eq i32 %i.bu, -1056584962, !nosanitize !9
  br i1 %i.bv, label %bb.af, label %bb.ag, !nosanitize !9

bb.af:                                            ; preds = %.lr.ph.split.us
  %i.bw = getelementptr i8, ptr %i.bs, i64 -4
  %i.bx = load i32, ptr %i.bw, align 8, !nosanitize !9
  %i.by = icmp eq i32 %i.bx, -127790077, !nosanitize !9
  br i1 %i.by, label %bb.ag, label %.split.us, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af, %.lr.ph.split.us
  %exitcond.not = icmp eq i64 %indvars.iv, 129
  br i1 %exitcond.not, label %.split133.us, label %bb.ah, !prof !27, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.bz = mul nuw nsw i64 %indvars.iv, 12
  %i.ca = add i64 %i.bz, %i.bq, !nosanitize !9    ; 2 uses
  %.not91.us = icmp ult i64 %i.ca, %i.bq, !nosanitize !9
  br i1 %.not91.us, label %.split136.us, label %bb.ai, !prof !27, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %indvars.iv ; 2 uses
  %.sroa.24.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.24.0.copyload.us = load float, ptr %.sroa.24.0..sroa_idx.us, align 4
  %i.cc = fadd float %2, %.sroa.24.0.copyload.us
  %.sroa.03.0.copyload.us = load <2 x float>, ptr %i.cb, align 4
  %i.cd = fadd <2 x float> %1, %.sroa.03.0.copyload.us
  %i.ce = load ptr, ptr %i.br, align 8, !tbaa !224
  tail call void %i.bs(<2 x float> %i.cd, float %i.cc, float noundef 6.000000e+00, i32 noundef %4, ptr noundef %i.ce) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !244
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !574

.split.us:                                        ; preds = %bb.af
  %i.ci = ptrtoint ptr %i.bs to i64, !nosanitize !9
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @1142, i64 %i.ci) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split133.us:                                     ; preds = %bb.ag
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @1143, i64 129) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split136.us:                                     ; preds = %bb.ah
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1144, i64 %i.bq, i64 %i.ca) #12, !nosanitize !9
  unreachable, !nosanitize !9

.loopexit:                                        ; preds = %bb.ai, %bb.k, %bb.g, %bb.r, %bb.n, %bb.ab, %bb.v, %bb.ae, %bb.ac
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3RecDrawHitBounds(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef range(i32 3329330, 16776961) %3) unnamed_addr #0 !func_sanitize !576 {
bb.a:
  %4 = alloca %struct.b3AABB, align 8             ; 2 uses
  %i.a = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1145, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  br i1 %i.i, label %.lr.ph, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1146, i64 %i.g) #12, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !225  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1748 ; 2 uses
  %i.m = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.n = and i64 %i.m, 7
  %i.o = icmp eq i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.r = load i32, ptr %i.l, align 4, !tbaa !226  ; 3 uses
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.k, i32 %i.r), !nosanitize !9 ; 3 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1, !nosanitize !9 ; 2 uses
  br i1 %i.o, label %.lr.ph.split.us.split.us.split.us.preheader, label %.lr.ph.split, !prof !10, !nosanitize !9

.lr.ph.split.us.split.us.split.us.preheader:      ; preds = %.lr.ph
  br i1 %i.t, label %.split.us, label %bb.f, !prof !125, !nosanitize !9

bb.f:                                             ; preds = %.lr.ph.split.us.split.us.split.us.preheader, %.lr.ph.split.us.split.us.split.us
  %i.u = phi { i32, i1 } [ %i.ay, %.lr.ph.split.us.split.us.split.us ], [ %i.s, %.lr.ph.split.us.split.us.split.us.preheader ]
  %.065.us.us.us220 = phi i32 [ %6, %.lr.ph.split.us.split.us.split.us ], [ %i.k, %.lr.ph.split.us.split.us.split.us.preheader ] ; 4 uses
  %i.v = extractvalue { i32, i1 } %i.u, 0, !nosanitize !9
  %i.w = icmp slt i32 %.065.us.us.us220, %i.v
  br i1 %i.w, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !113  ; 3 uses
  %5 = sext i32 %.065.us.us.us220 to i64          ; 2 uses
  %i.y = getelementptr inbounds [112 x i8], ptr %i.x, i64 %5 ; 2 uses
  %i.z = mul nsw i64 %5, 112
  %i.aa = ptrtoint ptr %i.x to i64, !nosanitize !9 ; 3 uses
  %i.ab = add i64 %i.z, %i.aa, !nosanitize !9     ; 3 uses
  %i.ac = icmp ne ptr %i.x, null, !nosanitize !9  ; 2 uses
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = xor i1 %i.ac, %i.ad
  %i.af = icmp uge i64 %i.ab, %i.aa, !nosanitize !9
  %i.ag = icmp slt i32 %.065.us.us.us220, 0
  %i.ah = xor i1 %i.ag, %i.af
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !9
  br i1 %i.ai, label %bb.h, label %.split71.us, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.y to i64, !nosanitize !9 ; 2 uses
  %i.ak = and i64 %i.aj, 7, !nosanitize !9
  %i.al = icmp eq i64 %i.ak, 0, !nosanitize !9
  %i.am = and i1 %i.ac, %i.al
  br i1 %i.am, label %bb.i, label %.split75.us, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.us.us.us = load i64, ptr %i.y, align 8 ; 2 uses
  %i.an = call zeroext i1 @b3Shape_IsValid(i64 %.sroa.0.0.copyload.us.us.us) #13
  br i1 %i.an, label %bb.j, label %.lr.ph.split.us.split.us.split.us

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !234 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !nosanitize !9
  %i.ar = icmp eq i32 %i.aq, -1056584962, !nosanitize !9
  br i1 %i.ar, label %bb.k, label %bb.l, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ao, i64 -4
  %i.at = load i32, ptr %i.as, align 8, !nosanitize !9
  %i.au = icmp eq i32 %i.at, -1434405476, !nosanitize !9
  br i1 %i.au, label %bb.l, label %.split78.us, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @b3Shape_GetAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %4, i64 %.sroa.0.0.copyload.us.us.us) #13
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !224
  call void %i.ao(ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i32 noundef %3, ptr noundef %i.av) #13
  br label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %bb.l, %bb.i
  %6 = add nsw i32 %.065.us.us.us220, 1
  %i.aw = load i32, ptr %i.j, align 8, !tbaa !225 ; 2 uses
  %i.ax = load i32, ptr %i.l, align 4, !tbaa !226 ; 2 uses
  %i.ay = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aw, i32 %i.ax), !nosanitize !9 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1, !nosanitize !9
  br i1 %i.az, label %.split.us, label %bb.f, !prof !126, !nosanitize !9

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.t, label %.split.us, label %bb.m, !prof !27, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.us.split.us.split.us, %.lr.ph.split.us.split.us.split.us.preheader, %.lr.ph.split
  %.us-phi = phi i32 [ %i.r, %.lr.ph.split ], [ %i.r, %.lr.ph.split.us.split.us.split.us.preheader ], [ %i.ax, %.lr.ph.split.us.split.us.split.us ]
  %.us-phi66 = phi i32 [ %i.k, %.lr.ph.split ], [ %i.k, %.lr.ph.split.us.split.us.split.us.preheader ], [ %i.aw, %.lr.ph.split.us.split.us.split.us ]
  %i.ba = zext i32 %.us-phi66 to i64, !nosanitize !9
  %i.bb = zext i32 %.us-phi to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @1147, i64 %i.ba, i64 %i.bb) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %.lr.ph.split
  %i.bc = extractvalue { i32, i1 } %i.s, 0, !nosanitize !9
  %i.bd = icmp slt i32 %i.k, %i.bc
  br i1 %i.bd, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1148, i64 %i.m) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split71.us:                                      ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1149, i64 %i.aa, i64 %i.ab) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split75.us:                                      ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1150, i64 %i.aj) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split78.us:                                      ; preds = %bb.k
  %i.be = ptrtoint ptr %i.ao to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @1151, i64 %i.be) #12, !nosanitize !9
  unreachable, !nosanitize !9

.loopexit:                                        ; preds = %bb.f, %bb.m, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @b3RecTagLookup_get(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 !func_sanitize !581 {
bb.a:
  %i.a = lshr i64 %2, 23
  %i.b = xor i64 %i.a, %2
  %i.c = mul i64 %i.b, 2388976653695081527        ; 3 uses
  %i.d = icmp ne ptr %1, null, !nosanitize !9
  %i.e = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  %i.h = and i1 %i.d, %i.g, !nosanitize !9
  br i1 %i.h, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1152, i64 %i.e) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.c, 47
  %i.j = xor i64 %i.i, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109  ; 5 uses
  %i.m = and i64 %i.l, %i.j                       ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111  ; 5 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.m ; 3 uses
  %i.q = add i64 %i.m, 4611686018427387904
  %i.r = icmp sgt i64 %i.q, -1
  %i.s = shl i64 %i.m, 1
  %i.t = ptrtoint ptr %i.o to i64, !nosanitize !9 ; 11 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !9       ; 4 uses
  %i.v = icmp ne ptr %i.o, null, !nosanitize !9   ; 2 uses
  %i.w = icmp eq i64 %i.u, 0                      ; 2 uses
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !9
  %i.z = and i1 %i.r, %i.y, !nosanitize !9
  %i.aa = and i1 %i.x, %i.z, !nosanitize !9
  br i1 %i.aa, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1153, i64 %i.t, i64 %i.u) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 2 uses
  %i.ac = and i64 %i.ab, 1, !nosanitize !9
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !9
  %i.ae = and i1 %i.v, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1154, i64 %i.ab) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.af = load i16, ptr %i.p, align 2, !tbaa !95
  %i.ag = and i16 %i.af, 2048
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !582
  br label %bb.x

.lr.ph:                                           ; preds = %bb.g
  %i.ah = lshr i64 %i.c, 48
  %i.ai = trunc nuw i64 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %.not3484.us = phi i1 [ %.not34.us, %bb.o ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.ak = phi i64 [ %i.bw, %bb.o ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.al = phi ptr [ %i.bs, %bb.o ], [ %i.p, %.lr.ph ] ; 3 uses
  %.083.us = phi i64 [ %i.br, %bb.o ], [ %i.m, %.lr.ph ] ; 3 uses
  %i.am = ptrtoint ptr %i.al to i64, !nosanitize !9 ; 2 uses
  %i.an = and i64 %i.am, 1, !nosanitize !9
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !9
  br i1 %i.ao, label %bb.i, label %.split.us, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.ap = load i16, ptr %i.al, align 2, !tbaa !95 ; 2 uses
  %i.aq = xor i16 %i.ap, %i.ai
  %i.ar = icmp ult i16 %i.aq, 4096
  br i1 %i.ar, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !110 ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.083.us ; 3 uses
  %i.au = add nsw i64 %.083.us, 576460752303423488
  %i.av = icmp ult i64 %i.au, 1152921504606846976
  %i.aw = shl i64 %.083.us, 4
  %i.ax = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 4 uses
  %i.ay = add i64 %i.aw, %i.ax, !nosanitize !9    ; 3 uses
  %i.az = icmp ne ptr %i.as, null, !nosanitize !9 ; 2 uses
  %i.ba = icmp eq i64 %i.ay, 0                    ; 2 uses
  %i.bb = xor i1 %i.az, %i.ba
  %i.bc = icmp uge i64 %i.ay, %i.ax, !nosanitize !9
  %i.bd = and i1 %i.av, %i.bc, !nosanitize !9
  %i.be = and i1 %i.bb, %i.bd, !nosanitize !9
  br i1 %i.be, label %bb.k, label %.split86.us, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %i.bf = ptrtoint ptr %i.at to i64, !nosanitize !9 ; 2 uses
  %i.bg = and i64 %i.bf, 7, !nosanitize !9
  %i.bh = icmp eq i64 %i.bg, 0, !nosanitize !9
  %i.bi = and i1 %i.az, %i.bh
  br i1 %i.bi, label %bb.l, label %.split90.us, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !246
  %i.bk = icmp eq i64 %i.bj, %2
  br i1 %i.bk, label %.split93.us, label %bb.m, !prof !247

bb.m:                                             ; preds = %bb.l, %bb.i
  br i1 %.not3484.us, label %.split102.us, label %bb.n, !prof !27, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.bl = and i16 %i.ap, 2047                     ; 2 uses
  %.not32.us = icmp eq i16 %i.bl, 2047
  br i1 %.not32.us, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = zext nneg i16 %i.bl to i64              ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 1
  %i.bo = mul nuw nsw i64 %i.bn, %i.bm
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = add i64 %i.bp, %i.m
  %i.br = and i64 %i.bq, %i.l                     ; 4 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.br
  %i.bt = add i64 %i.br, 4611686018427387904
  %i.bu = icmp sgt i64 %i.bt, -1
  %i.bv = shl i64 %i.br, 1
  %i.bw = add i64 %i.bv, %i.t, !nosanitize !9     ; 4 uses
  %.not34.us = icmp eq i64 %i.bw, 0
  %i.bx = icmp uge i64 %i.bw, %i.t, !nosanitize !9
  %i.by = and i1 %i.bu, %i.bx, !nosanitize !9
  br i1 %i.by, label %.lr.ph.split.us, label %._crit_edge, !prof !248, !nosanitize !9

._crit_edge:                                      ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1155, i64 %i.t, i64 %i.bw) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1156, i64 %i.am) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split86.us:                                      ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1157, i64 %i.ax, i64 %i.ay) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split90.us:                                      ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1158, i64 %i.bf) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split93.us:                                      ; preds = %bb.l
  br i1 %i.ba, label %bb.p, label %bb.q, !prof !27, !nosanitize !9
end_hunk_1
