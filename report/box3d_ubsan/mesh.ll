Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh?download=true
inline.NumInlined: 435
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b3BuildRecursive:bb.a
.preheader.preheader.i:                           ; preds = %bb.be
  %i.lg = trunc nuw nsw i64 %indvars.iv2023.i to i32 ; 2 uses
  %i.lh = load i32, ptr %6, align 16              ; 3 uses
  %.sroa.0341.0.copyload.i = load <2 x float>, ptr %i.ii, align 4 ; 2 uses
  %.sroa.4342.0.copyload.i = load float, ptr %.sroa.4342.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.5343.0.copyload.i = load <2 x float>, ptr %.sroa.5343.0..sroa_idx.i, align 16 ; 2 uses
  %.sroa.6344.0.copyload.i = load float, ptr %.sroa.6344.0..sroa_idx.i, align 8 ; 2 uses
  %i.li = fcmp ogt float %.sroa.4342.0.copyload.i, f0x7F7FFFFF
  %i.lj = select i1 %i.li, float f0x7F7FFFFF, float %.sroa.4342.0.copyload.i ; 3 uses
  %i.lk = fcmp ogt <2 x float> %.sroa.0341.0.copyload.i, splat (float f0x7F7FFFFF)
  %i.ll = select <2 x i1> %i.lk, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %.sroa.0341.0.copyload.i ; 3 uses
  %i.lm = fcmp olt <2 x float> %.sroa.5343.0.copyload.i, splat (float f0xFF7FFFFF)
  %i.ln = select <2 x i1> %i.lm, <2 x float> splat (float f0xFF7FFFFF), <2 x float> %.sroa.5343.0.copyload.i ; 3 uses
  %i.lo = fcmp olt float %.sroa.6344.0.copyload.i, f0xFF7FFFFF
  %i.lp = select i1 %i.lo, float f0xFF7FFFFF, float %.sroa.6344.0.copyload.i ; 3 uses
  %i.lq = load i32, ptr %i.ij, align 4            ; 2 uses
  %i.lr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.lh, i32 %i.lq) ; 2 uses
  %i.ls = extractvalue { i32, i1 } %i.lr, 1
  %i.lt = extractvalue { i32, i1 } %i.lr, 0       ; 3 uses
  %.sroa.0341.0.copyload.i.1 = load <2 x float>, ptr %i.ik, align 16 ; 2 uses
  %.sroa.4342.0.copyload.i.1 = load float, ptr %.sroa.4342.0..sroa_idx.i.1, align 8 ; 2 uses
  %.sroa.5343.0.copyload.i.1 = load <2 x float>, ptr %.sroa.5343.0..sroa_idx.i.1, align 4 ; 2 uses
  %.sroa.6344.0.copyload.i.1 = load float, ptr %.sroa.6344.0..sroa_idx.i.1, align 4 ; 2 uses
  %i.lu = fcmp olt float %i.lj, %.sroa.4342.0.copyload.i.1
  %i.lv = select i1 %i.lu, float %i.lj, float %.sroa.4342.0.copyload.i.1 ; 3 uses
  %i.lw = fcmp olt <2 x float> %i.ll, %.sroa.0341.0.copyload.i.1
  %i.lx = select <2 x i1> %i.lw, <2 x float> %i.ll, <2 x float> %.sroa.0341.0.copyload.i.1 ; 3 uses
  %i.ly = fcmp ogt <2 x float> %i.ln, %.sroa.5343.0.copyload.i.1
  %i.lz = select <2 x i1> %i.ly, <2 x float> %i.ln, <2 x float> %.sroa.5343.0.copyload.i.1 ; 3 uses
  %i.ma = fcmp ogt float %i.lp, %.sroa.6344.0.copyload.i.1
  %i.mb = select i1 %i.ma, float %i.lp, float %.sroa.6344.0.copyload.i.1 ; 3 uses
  %i.mc = load i32, ptr %i.il, align 8            ; 2 uses
  %i.md = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.lt, i32 %i.mc) ; 2 uses
  %i.me = extractvalue { i32, i1 } %i.md, 1
  %i.mf = extractvalue { i32, i1 } %i.md, 0       ; 3 uses
  %.sroa.0341.0.copyload.i.2 = load <2 x float>, ptr %i.im, align 4 ; 2 uses
  %.sroa.4342.0.copyload.i.2 = load float, ptr %.sroa.4342.0..sroa_idx.i.2, align 4 ; 2 uses
  %.sroa.5343.0.copyload.i.2 = load <2 x float>, ptr %.sroa.5343.0..sroa_idx.i.2, align 8 ; 2 uses
  %.sroa.6344.0.copyload.i.2 = load float, ptr %.sroa.6344.0..sroa_idx.i.2, align 16 ; 2 uses
  %i.mg = fcmp olt float %i.lv, %.sroa.4342.0.copyload.i.2
  %i.mh = select i1 %i.mg, float %i.lv, float %.sroa.4342.0.copyload.i.2 ; 3 uses
  %i.mi = fcmp olt <2 x float> %i.lx, %.sroa.0341.0.copyload.i.2
  %i.mj = select <2 x i1> %i.mi, <2 x float> %i.lx, <2 x float> %.sroa.0341.0.copyload.i.2 ; 3 uses
  %i.mk = fcmp ogt <2 x float> %i.lz, %.sroa.5343.0.copyload.i.2
  %i.ml = select <2 x i1> %i.mk, <2 x float> %i.lz, <2 x float> %.sroa.5343.0.copyload.i.2 ; 3 uses
  %i.mm = fcmp ogt float %i.mb, %.sroa.6344.0.copyload.i.2
  %i.mn = select i1 %i.mm, float %i.mb, float %.sroa.6344.0.copyload.i.2 ; 3 uses
  %i.mo = load i32, ptr %i.in, align 4            ; 2 uses
  %i.mp = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.mf, i32 %i.mo) ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.mp, 1
  %i.mr = extractvalue { i32, i1 } %i.mp, 0       ; 3 uses
  %.sroa.0341.0.copyload.i.3 = load <2 x float>, ptr %i.io, align 8 ; 2 uses
  %.sroa.4342.0.copyload.i.3 = load float, ptr %.sroa.4342.0..sroa_idx.i.3, align 16 ; 2 uses
  %.sroa.5343.0.copyload.i.3 = load <2 x float>, ptr %.sroa.5343.0..sroa_idx.i.3, align 4 ; 2 uses
  %.sroa.6344.0.copyload.i.3 = load float, ptr %.sroa.6344.0..sroa_idx.i.3, align 4 ; 2 uses
  %i.ms = fcmp olt float %i.mh, %.sroa.4342.0.copyload.i.3
  %i.mt = select i1 %i.ms, float %i.mh, float %.sroa.4342.0.copyload.i.3 ; 3 uses
  %i.mu = fcmp olt <2 x float> %i.mj, %.sroa.0341.0.copyload.i.3
  %i.mv = select <2 x i1> %i.mu, <2 x float> %i.mj, <2 x float> %.sroa.0341.0.copyload.i.3 ; 3 uses
  %i.mw = fcmp ogt <2 x float> %i.ml, %.sroa.5343.0.copyload.i.3
  %i.mx = select <2 x i1> %i.mw, <2 x float> %i.ml, <2 x float> %.sroa.5343.0.copyload.i.3 ; 3 uses
  %i.my = fcmp ogt float %i.mn, %.sroa.6344.0.copyload.i.3
  %i.mz = select i1 %i.my, float %i.mn, float %.sroa.6344.0.copyload.i.3 ; 3 uses
  %i.na = load i32, ptr %i.ip, align 16           ; 2 uses
  %i.nb = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.mr, i32 %i.na) ; 2 uses
  %i.nc = extractvalue { i32, i1 } %i.nb, 1
  %i.nd = extractvalue { i32, i1 } %i.nb, 0       ; 3 uses
  %.sroa.0341.0.copyload.i.4 = load <2 x float>, ptr %i.iq, align 4 ; 2 uses
  %.sroa.4342.0.copyload.i.4 = load float, ptr %.sroa.4342.0..sroa_idx.i.4, align 4 ; 2 uses
  %.sroa.5343.0.copyload.i.4 = load <2 x float>, ptr %.sroa.5343.0..sroa_idx.i.4, align 16 ; 2 uses
  %.sroa.6344.0.copyload.i.4 = load float, ptr %.sroa.6344.0..sroa_idx.i.4, align 8 ; 2 uses
  %i.ne = fcmp olt float %i.mt, %.sroa.4342.0.copyload.i.4
  %i.nf = select i1 %i.ne, float %i.mt, float %.sroa.4342.0.copyload.i.4 ; 3 uses
  %i.ng = fcmp olt <2 x float> %i.mv, %.sroa.0341.0.copyload.i.4
  %i.nh = select <2 x i1> %i.ng, <2 x float> %i.mv, <2 x float> %.sroa.0341.0.copyload.i.4 ; 3 uses
  %i.ni = fcmp ogt <2 x float> %i.mx, %.sroa.5343.0.copyload.i.4
  %i.nj = select <2 x i1> %i.ni, <2 x float> %i.mx, <2 x float> %.sroa.5343.0.copyload.i.4 ; 3 uses
  %i.nk = fcmp ogt float %i.mz, %.sroa.6344.0.copyload.i.4
  %i.nl = select i1 %i.nk, float %i.mz, float %.sroa.6344.0.copyload.i.4 ; 3 uses
  %i.nm = load i32, ptr %i.ir, align 4            ; 2 uses
  %i.nn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.nd, i32 %i.nm) ; 2 uses
  %i.no = extractvalue { i32, i1 } %i.nn, 1
  %i.np = extractvalue { i32, i1 } %i.nn, 0       ; 3 uses
  %.sroa.0341.0.copyload.i.5 = load <2 x float>, ptr %i.is, align 16 ; 2 uses
  %.sroa.4342.0.copyload.i.5 = load float, ptr %.sroa.4342.0..sroa_idx.i.5, align 8 ; 2 uses
  %.sroa.5343.0.copyload.i.5 = load <2 x float>, ptr %.sroa.5343.0..sroa_idx.i.5, align 4 ; 2 uses
  %.sroa.6344.0.copyload.i.5 = load float, ptr %.sroa.6344.0..sroa_idx.i.5, align 4 ; 2 uses
  %i.nq = fcmp olt float %i.nf, %.sroa.4342.0.copyload.i.5
  %i.nr = select i1 %i.nq, float %i.nf, float %.sroa.4342.0.copyload.i.5 ; 3 uses
  %i.ns = fcmp olt <2 x float> %i.nh, %.sroa.0341.0.copyload.i.5
  %i.nt = select <2 x i1> %i.ns, <2 x float> %i.nh, <2 x float> %.sroa.0341.0.copyload.i.5 ; 3 uses
  %i.nu = fcmp ogt <2 x float> %i.nj, %.sroa.5343.0.copyload.i.5
  %i.nv = select <2 x i1> %i.nu, <2 x float> %i.nj, <2 x float> %.sroa.5343.0.copyload.i.5 ; 3 uses
  %i.nw = fcmp ogt float %i.nl, %.sroa.6344.0.copyload.i.5
  %i.nx = select i1 %i.nw, float %i.nl, float %.sroa.6344.0.copyload.i.5 ; 3 uses
  %i.ny = load i32, ptr %i.it, align 8            ; 2 uses
  %i.nz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.np, i32 %i.ny) ; 2 uses
  %i.oa = extractvalue { i32, i1 } %i.nz, 1
  %i.ob = extractvalue { i32, i1 } %i.nz, 0
  %.sroa.0341.0.copyload.i.6 = load <2 x float>, ptr %i.iu, align 4 ; 2 uses
  %.sroa.4342.0.copyload.i.6 = load float, ptr %.sroa.4342.0..sroa_idx.i.6, align 4 ; 2 uses
  %.sroa.5343.0.copyload.i.6 = load <2 x float>, ptr %.sroa.5343.0..sroa_idx.i.6, align 8 ; 2 uses
  %.sroa.6344.0.copyload.i.6 = load float, ptr %.sroa.6344.0..sroa_idx.i.6, align 16 ; 2 uses
  %i.oc = fcmp olt float %i.nr, %.sroa.4342.0.copyload.i.6
  %i.od = select i1 %i.oc, float %i.nr, float %.sroa.4342.0.copyload.i.6
  %i.oe = fcmp olt <2 x float> %i.nt, %.sroa.0341.0.copyload.i.6
  %i.of = select <2 x i1> %i.oe, <2 x float> %i.nt, <2 x float> %.sroa.0341.0.copyload.i.6
  %i.og = fcmp ogt <2 x float> %i.nv, %.sroa.5343.0.copyload.i.6
  %i.oh = select <2 x i1> %i.og, <2 x float> %i.nv, <2 x float> %.sroa.5343.0.copyload.i.6
  %i.oi = fcmp ogt float %i.nx, %.sroa.6344.0.copyload.i.6
  %i.oj = select i1 %i.oi, float %i.nx, float %.sroa.6344.0.copyload.i.6
  br label %.preheader.i89

split.i:                                          ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.lcssa1662.ph.i = phi i64 [ %i.ho, %bb.bl ], [ %i.hn, %bb.bk ], [ %i.hm, %bb.bj ], [ %i.hl, %bb.bi ], [ %i.hk, %bb.bh ], [ %i.hj, %bb.bg ], [ %i.hi, %bb.bf ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @495, i64 %i.gw, i64 %.lcssa1662.ph.i) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

bb.bf:                                            ; preds = %b3GetByIndex.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !204
  store i32 0, ptr %6, align 16, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hp, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  br i1 %.not141.1.i, label %split.i, label %bb.bg, !prof !17, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.hq, align 4, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.hr, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  br i1 %.not141.2.i, label %split.i, label %bb.bh, !prof !17, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.hs, align 8, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ht, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  br i1 %.not141.3.i, label %split.i, label %bb.bi, !prof !17, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.hu, align 4, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  br i1 %.not141.4.i, label %split.i, label %bb.bj, !prof !17, !nosanitize !9

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.hw, align 16, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hx, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  br i1 %.not141.5.i, label %split.i, label %bb.bk, !prof !17, !nosanitize !9

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.hy, align 4, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.hz, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  br i1 %.not141.6.i, label %split.i, label %bb.bl, !prof !17, !nosanitize !9

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.ia, align 8, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ib, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  br i1 %.not141.7.i, label %split.i, label %bb.bm, !prof !17, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.ic, align 4, !tbaa !206, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !51, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13, !noalias !204
  store float %i.ig, ptr %i.h, align 4, !tbaa !22, !noalias !204
  store float %i.ih, ptr %i.gx, align 4, !tbaa !22, !noalias !204
  store float %i.jg, ptr %i.gy, align 4, !tbaa !22, !noalias !204
  %i.ok = add i64 %i.jj, %i.gz, !nosanitize !9    ; 2 uses
  %.not.i151.i = icmp ult i64 %i.ok, %i.gz, !nosanitize !9
  br i1 %.not.i151.i, label %bb.ay, label %bb.az, !prof !17, !nosanitize !9

.split.us.i:                                      ; preds = %b3GetByIndex.exit156.split.split.us.split.split.us.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @496, i64 %i.n, i64 %i.ke) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.split1039.us.i:                                  ; preds = %b3GetByIndex.exit164.us.us.i
  %i.ol = bitcast float %i.kj to i32, !nosanitize !9
  %i.om = zext i32 %i.ol to i64, !nosanitize !9
  call void @__ubsan_handle_float_cast_overflow_abort(ptr nonnull @497, i64 %i.om) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.split1042.us.i:                                  ; preds = %bb.bb
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @498, i64 %i.ko) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.split1045.us.i:                                  ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @499, i64 %i.gw, i64 %i.ks) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.split1052.us.i:                                  ; preds = %bb.bd
  %i.on = zext nneg i32 %i.kt to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @500, i64 %i.on, i64 1) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.preheader.i89:                                   ; preds = %bb.cy, %.preheader.preheader.i
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.preheader.preheader.i ], [ %.sroa.13.2, %bb.cy ] ; 2 uses
  %.sroa.11187.1 = phi i32 [ %.sroa.11187.0, %.preheader.preheader.i ], [ %.sroa.11187.2, %bb.cy ] ; 2 uses
  %.sroa.10186.1 = phi float [ %.sroa.10186.0, %.preheader.preheader.i ], [ %.sroa.10186.2, %bb.cy ] ; 2 uses
  %.sroa.9185.1 = phi <2 x float> [ %.sroa.9185.0, %.preheader.preheader.i ], [ %.sroa.9185.2, %bb.cy ] ; 2 uses
  %.sroa.8184.1 = phi float [ %.sroa.8184.0, %.preheader.preheader.i ], [ %.sroa.8184.2, %bb.cy ] ; 2 uses
  %.sroa.7183.1 = phi <2 x float> [ %.sroa.7183.0, %.preheader.preheader.i ], [ %.sroa.7183.2, %bb.cy ] ; 2 uses
  %.sroa.6182.1 = phi float [ %.sroa.6182.0, %.preheader.preheader.i ], [ %.sroa.6182.2, %bb.cy ] ; 2 uses
  %.sroa.5181.1 = phi <2 x float> [ %.sroa.5181.0, %.preheader.preheader.i ], [ %.sroa.5181.2, %bb.cy ] ; 2 uses
  %.sroa.4180.1 = phi float [ %.sroa.4180.0, %.preheader.preheader.i ], [ %.sroa.4180.2, %bb.cy ] ; 2 uses
  %.sroa.0179.1 = phi <2 x float> [ %.sroa.0179.0, %.preheader.preheader.i ], [ %.sroa.0179.2, %bb.cy ] ; 2 uses
  %i.oo = phi i32 [ %i.ji, %.preheader.preheader.i ], [ %i.uh, %bb.cy ] ; 2 uses
  %indvars.iv2015.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next2016.i, %bb.cy ] ; 15 uses
  %.11533.i = phi i32 [ %.01001536.i, %.preheader.preheader.i ], [ %.3.i, %bb.cy ] ; 2 uses
  %.11021532.i = phi float [ %.01011535.i, %.preheader.preheader.i ], [ %.3104.i, %bb.cy ] ; 3 uses
  %.01151531.i = phi i32 [ 0, %.preheader.preheader.i ], [ %11, %bb.cy ] ; 2 uses
  %exitcond2014.not.i = icmp eq i64 %indvars.iv2015.i, 1
  br i1 %exitcond2014.not.i, label %.lr.ph.preheader.i90, label %bb.bq

bb.bn:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !204
  br label %bb.cz

.lr.ph.preheader.i90:                             ; preds = %bb.cg, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %.preheader.i89
  %.lcssa2432.a = phi i32 [ %i.lh, %.preheader.i89 ], [ %i.lt, %bb.bs ], [ %i.mf, %bb.bv ], [ %i.mr, %bb.by ], [ %i.nd, %bb.cb ], [ %i.np, %bb.ce ], [ %i.ob, %bb.cg ] ; 3 uses
  %.lcssa2431 = phi float [ %i.lj, %.preheader.i89 ], [ %i.lv, %bb.bs ], [ %i.mh, %bb.bv ], [ %i.mt, %bb.by ], [ %i.nf, %bb.cb ], [ %i.nr, %bb.ce ], [ %i.od, %bb.cg ] ; 2 uses
  %.lcssa2430 = phi <2 x float> [ %i.ll, %.preheader.i89 ], [ %i.lx, %bb.bs ], [ %i.mj, %bb.bv ], [ %i.mv, %bb.by ], [ %i.nh, %bb.cb ], [ %i.nt, %bb.ce ], [ %i.of, %bb.cg ] ; 2 uses
  %.lcssa2429 = phi <2 x float> [ %i.ln, %.preheader.i89 ], [ %i.lz, %bb.bs ], [ %i.ml, %bb.bv ], [ %i.mx, %bb.by ], [ %i.nj, %bb.cb ], [ %i.nv, %bb.ce ], [ %i.oh, %bb.cg ] ; 2 uses
  %.lcssa2428 = phi float [ %i.lp, %.preheader.i89 ], [ %i.mb, %bb.bs ], [ %i.mn, %bb.bv ], [ %i.mz, %bb.by ], [ %i.nl, %bb.cb ], [ %i.nx, %bb.ce ], [ %i.oj, %bb.cg ] ; 2 uses
  %11 = add nuw nsw i32 %.01151531.i, 1           ; 2 uses
  %i.op = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv2015.i ; 5 uses
  %i.oq = mul nuw nsw i64 %indvars.iv2015.i, 28
  %i.or = add i64 %i.oq, %i.gw, !nosanitize !9    ; 2 uses
  %.not138.i = icmp ult i64 %i.or, %i.gw, !nosanitize !9
  br i1 %.not138.i, label %bb.ch, label %bb.cj, !prof !17, !nosanitize !9

.split.loop.exit:                                 ; preds = %bb.cf
  %i.os = add i64 %i.gw, 168, !nosanitize !9
  br label %bb.bo

.split.loop.exit2699:                             ; preds = %bb.cc
  %i.ot = add i64 %i.gw, 140, !nosanitize !9
  br label %bb.bo

.split.loop.exit2701:                             ; preds = %bb.bz
  %i.ou = add i64 %i.gw, 112, !nosanitize !9
  br label %bb.bo

.split.loop.exit2703:                             ; preds = %bb.bw
  %i.ov = add i64 %i.gw, 84, !nosanitize !9
  br label %bb.bo

.split.loop.exit2705:                             ; preds = %bb.bt
  %i.ow = add i64 %i.gw, 56, !nosanitize !9
  br label %bb.bo

.split.loop.exit2707:                             ; preds = %bb.bq
  %i.ox = add i64 %i.gw, 28, !nosanitize !9
  br label %bb.bo

bb.bo:                                            ; preds = %.split.loop.exit2707, %.split.loop.exit2705, %.split.loop.exit2703, %.split.loop.exit2701, %.split.loop.exit2699, %.split.loop.exit
  %.lcssa2421 = phi i64 [ %i.ox, %.split.loop.exit2707 ], [ %i.ow, %.split.loop.exit2705 ], [ %i.ov, %.split.loop.exit2703 ], [ %i.ou, %.split.loop.exit2701 ], [ %i.ot, %.split.loop.exit2699 ], [ %i.os, %.split.loop.exit ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @501, i64 %i.gw, i64 %.lcssa2421) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.cg, %bb.cd, %bb.ca, %bb.bx, %bb.bu, %bb.br
  %.lcssa2426 = phi i32 [ %i.ny, %bb.cg ], [ %i.lq, %bb.br ], [ %i.mc, %bb.bu ], [ %i.mo, %bb.bx ], [ %i.na, %bb.ca ], [ %i.nm, %bb.cd ]
  %.01141519.i.lcssa2424 = phi i32 [ %i.np, %bb.cg ], [ %i.lh, %bb.br ], [ %i.lt, %bb.bu ], [ %i.mf, %bb.bx ], [ %i.mr, %bb.ca ], [ %i.nd, %bb.cd ]
  %i.oy = zext i32 %.01141519.i.lcssa2424 to i64, !nosanitize !9
  %i.oz = zext i32 %.lcssa2426 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @502, i64 %i.oy, i64 %i.oz) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

bb.bq:                                            ; preds = %.preheader.i89
  br i1 %.not139.i.1, label %.split.loop.exit2707, label %bb.br, !prof !17, !nosanitize !9

bb.br:                                            ; preds = %bb.bq
  br i1 %i.ls, label %bb.bp, label %bb.bs, !prof !17, !nosanitize !9

bb.bs:                                            ; preds = %bb.br
  %exitcond2014.not.i.1 = icmp eq i64 %indvars.iv2015.i, 2
  br i1 %exitcond2014.not.i.1, label %.lr.ph.preheader.i90, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not139.i.2, label %.split.loop.exit2705, label %bb.bu, !prof !17, !nosanitize !9

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.me, label %bb.bp, label %bb.bv, !prof !17, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  %exitcond2014.not.i.2 = icmp eq i64 %indvars.iv2015.i, 3
  br i1 %exitcond2014.not.i.2, label %.lr.ph.preheader.i90, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %.not139.i.3, label %.split.loop.exit2703, label %bb.bx, !prof !17, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.mq, label %bb.bp, label %bb.by, !prof !17, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %exitcond2014.not.i.3 = icmp eq i64 %indvars.iv2015.i, 4
  br i1 %exitcond2014.not.i.3, label %.lr.ph.preheader.i90, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  br i1 %.not139.i.4, label %.split.loop.exit2701, label %bb.ca, !prof !17, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.nc, label %bb.bp, label %bb.cb, !prof !17, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  %exitcond2014.not.i.4 = icmp eq i64 %indvars.iv2015.i, 5
  br i1 %exitcond2014.not.i.4, label %.lr.ph.preheader.i90, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not139.i.5, label %.split.loop.exit2699, label %bb.cd, !prof !17, !nosanitize !9

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.no, label %bb.bp, label %bb.ce, !prof !17, !nosanitize !9

bb.ce:                                            ; preds = %bb.cd
  %exitcond2014.not.i.5 = icmp eq i64 %indvars.iv2015.i, 6
  br i1 %exitcond2014.not.i.5, label %.lr.ph.preheader.i90, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not139.i.6, label %.split.loop.exit, label %bb.cg, !prof !17, !nosanitize !9

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.oa, label %bb.bp, label %.lr.ph.preheader.i90, !prof !17, !nosanitize !9

._crit_edge.i:                                    ; preds = %bb.cv, %bb.ct, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj
  %.lcssa2444 = phi i32 [ %i.pe, %bb.cj ], [ %i.pu, %bb.cl ], [ %i.qk, %bb.cn ], [ %i.ra, %bb.cp ], [ %i.rq, %bb.cr ], [ %i.sg, %bb.ct ], [ %i.sw, %bb.cv ] ; 2 uses
  %.lcssa2443 = phi float [ %i.ph, %bb.cj ], [ %i.px, %bb.cl ], [ %i.qn, %bb.cn ], [ %i.rd, %bb.cp ], [ %i.rt, %bb.cr ], [ %i.sj, %bb.ct ], [ %i.sz, %bb.cv ] ; 2 uses
  %.lcssa2442 = phi <2 x float> [ %i.pj, %bb.cj ], [ %i.pz, %bb.cl ], [ %i.qp, %bb.cn ], [ %i.rf, %bb.cp ], [ %i.rv, %bb.cr ], [ %i.sl, %bb.ct ], [ %i.tb, %bb.cv ] ; 2 uses
  %.lcssa2441 = phi <2 x float> [ %i.pl, %bb.cj ], [ %i.qb, %bb.cl ], [ %i.qr, %bb.cn ], [ %i.rh, %bb.cp ], [ %i.rx, %bb.cr ], [ %i.sn, %bb.ct ], [ %i.td, %bb.cv ] ; 2 uses
  %.lcssa2440 = phi float [ %i.pn, %bb.cj ], [ %i.qd, %bb.cl ], [ %i.qt, %bb.cn ], [ %i.rj, %bb.cp ], [ %i.rz, %bb.cr ], [ %i.sp, %bb.ct ], [ %i.tf, %bb.cv ] ; 2 uses
  %i.pa = icmp sgt i32 %.lcssa2432.a, 0
  %i.pb = icmp sgt i32 %.lcssa2444, 0
  %or.cond.i92 = select i1 %i.pa, i1 %i.pb, i1 false
  br i1 %or.cond.i92, label %bb.cw, label %bb.cy

bb.ch:                                            ; preds = %.lr.ph.i91.6, %.lr.ph.i91.5, %.lr.ph.i91.4, %.lr.ph.i91.3, %.lr.ph.i91.2, %.lr.ph.i91.1, %.lr.ph.preheader.i90
  %.lcssa2433 = phi i64 [ %i.or, %.lr.ph.preheader.i90 ], [ %i.pq, %.lr.ph.i91.1 ], [ %i.qg, %.lr.ph.i91.2 ], [ %i.qw, %.lr.ph.i91.3 ], [ %i.rm, %.lr.ph.i91.4 ], [ %i.sc, %.lr.ph.i91.5 ], [ %i.ss, %.lr.ph.i91.6 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @503, i64 %i.gw, i64 %.lcssa2433) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

bb.ci:                                            ; preds = %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck
  %.lcssa2438 = phi i32 [ %i.st, %bb.cu ], [ %i.pr, %bb.ck ], [ %i.qh, %bb.cm ], [ %i.qx, %bb.co ], [ %i.rn, %bb.cq ], [ %i.sd, %bb.cs ]
  %.01121525.i.lcssa2436 = phi i32 [ %i.sg, %bb.cu ], [ %i.pe, %bb.ck ], [ %i.pu, %bb.cm ], [ %i.qk, %bb.co ], [ %i.ra, %bb.cq ], [ %i.rq, %bb.cs ]
  %i.pc = zext i32 %.01121525.i.lcssa2436 to i64, !nosanitize !9
  %i.pd = zext i32 %.lcssa2438 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @504, i64 %i.pc, i64 %i.pd) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

bb.cj:                                            ; preds = %.lr.ph.preheader.i90
  %i.pe = load i32, ptr %i.op, align 4, !tbaa !206, !noalias !204 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  %.sroa.0353.0.copyload.i = load <2 x float>, ptr %i.pf, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.op, i64 12
  %.sroa.4354.0.copyload.i = load float, ptr %.sroa.4354.0..sroa_idx.i, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.5355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %.sroa.5355.0.copyload.i = load <2 x float>, ptr %.sroa.5355.0..sroa_idx.i, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.6356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %.sroa.6356.0.copyload.i = load float, ptr %.sroa.6356.0..sroa_idx.i, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %i.pg = fcmp ogt float %.sroa.4354.0.copyload.i, f0x7F7FFFFF
  %i.ph = select i1 %i.pg, float f0x7F7FFFFF, float %.sroa.4354.0.copyload.i ; 3 uses
  %i.pi = fcmp ogt <2 x float> %.sroa.0353.0.copyload.i, splat (float f0x7F7FFFFF)
  %i.pj = select <2 x i1> %i.pi, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %.sroa.0353.0.copyload.i ; 3 uses
  %i.pk = fcmp olt <2 x float> %.sroa.5355.0.copyload.i, splat (float f0xFF7FFFFF)
  %i.pl = select <2 x i1> %i.pk, <2 x float> splat (float f0xFF7FFFFF), <2 x float> %.sroa.5355.0.copyload.i ; 3 uses
  %i.pm = fcmp olt float %.sroa.6356.0.copyload.i, f0xFF7FFFFF
  %i.pn = select i1 %i.pm, float f0xFF7FFFFF, float %.sroa.6356.0.copyload.i ; 3 uses
  %indvars.iv.next2018.i = add nuw nsw i64 %indvars.iv2015.i, 1 ; 3 uses
  %exitcond2020.not.i = icmp eq i64 %indvars.iv.next2018.i, 8
  br i1 %exitcond2020.not.i, label %._crit_edge.i, label %.lr.ph.i91.1

.lr.ph.i91.1:                                     ; preds = %bb.cj
  %i.po = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next2018.i ; 5 uses
  %i.pp = mul nuw nsw i64 %indvars.iv.next2018.i, 28
  %i.pq = add i64 %i.pp, %i.gw, !nosanitize !9    ; 2 uses
  %.not138.i.1 = icmp ult i64 %i.pq, %i.gw, !nosanitize !9
  br i1 %.not138.i.1, label %bb.ch, label %bb.ck, !prof !17, !nosanitize !9

bb.ck:                                            ; preds = %.lr.ph.i91.1
  %i.pr = load i32, ptr %i.po, align 4, !tbaa !206, !noalias !204 ; 2 uses
  %i.ps = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.pe, i32 %i.pr), !nosanitize !9 ; 2 uses
  %i.pt = extractvalue { i32, i1 } %i.ps, 1, !nosanitize !9
  br i1 %i.pt, label %bb.ci, label %bb.cl, !prof !17, !nosanitize !9

bb.cl:                                            ; preds = %bb.ck
  %i.pu = extractvalue { i32, i1 } %i.ps, 0, !nosanitize !9 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %.sroa.0353.0.copyload.i.1 = load <2 x float>, ptr %i.pv, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4354.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  %.sroa.4354.0.copyload.i.1 = load float, ptr %.sroa.4354.0..sroa_idx.i.1, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.5355.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %.sroa.5355.0.copyload.i.1 = load <2 x float>, ptr %.sroa.5355.0..sroa_idx.i.1, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.6356.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %.sroa.6356.0.copyload.i.1 = load float, ptr %.sroa.6356.0..sroa_idx.i.1, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %i.pw = fcmp olt float %i.ph, %.sroa.4354.0.copyload.i.1
  %i.px = select i1 %i.pw, float %i.ph, float %.sroa.4354.0.copyload.i.1 ; 3 uses
  %i.py = fcmp olt <2 x float> %i.pj, %.sroa.0353.0.copyload.i.1
  %i.pz = select <2 x i1> %i.py, <2 x float> %i.pj, <2 x float> %.sroa.0353.0.copyload.i.1 ; 3 uses
  %i.qa = fcmp ogt <2 x float> %i.pl, %.sroa.5355.0.copyload.i.1
  %i.qb = select <2 x i1> %i.qa, <2 x float> %i.pl, <2 x float> %.sroa.5355.0.copyload.i.1 ; 3 uses
  %i.qc = fcmp ogt float %i.pn, %.sroa.6356.0.copyload.i.1
  %i.qd = select i1 %i.qc, float %i.pn, float %.sroa.6356.0.copyload.i.1 ; 3 uses
  %indvars.iv.next2018.i.1 = add nuw nsw i64 %indvars.iv2015.i, 2 ; 3 uses
  %exitcond2020.not.i.1 = icmp eq i64 %indvars.iv.next2018.i.1, 8
  br i1 %exitcond2020.not.i.1, label %._crit_edge.i, label %.lr.ph.i91.2

.lr.ph.i91.2:                                     ; preds = %bb.cl
  %i.qe = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next2018.i.1 ; 5 uses
  %i.qf = mul nuw nsw i64 %indvars.iv.next2018.i.1, 28
  %i.qg = add i64 %i.qf, %i.gw, !nosanitize !9    ; 2 uses
  %.not138.i.2 = icmp ult i64 %i.qg, %i.gw, !nosanitize !9
  br i1 %.not138.i.2, label %bb.ch, label %bb.cm, !prof !17, !nosanitize !9

bb.cm:                                            ; preds = %.lr.ph.i91.2
  %i.qh = load i32, ptr %i.qe, align 4, !tbaa !206, !noalias !204 ; 2 uses
  %i.qi = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.pu, i32 %i.qh), !nosanitize !9 ; 2 uses
  %i.qj = extractvalue { i32, i1 } %i.qi, 1, !nosanitize !9
  br i1 %i.qj, label %bb.ci, label %bb.cn, !prof !17, !nosanitize !9

bb.cn:                                            ; preds = %bb.cm
  %i.qk = extractvalue { i32, i1 } %i.qi, 0, !nosanitize !9 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %.sroa.0353.0.copyload.i.2 = load <2 x float>, ptr %i.ql, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4354.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %.sroa.4354.0.copyload.i.2 = load float, ptr %.sroa.4354.0..sroa_idx.i.2, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.5355.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %.sroa.5355.0.copyload.i.2 = load <2 x float>, ptr %.sroa.5355.0..sroa_idx.i.2, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.6356.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %.sroa.6356.0.copyload.i.2 = load float, ptr %.sroa.6356.0..sroa_idx.i.2, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %i.qm = fcmp olt float %i.px, %.sroa.4354.0.copyload.i.2
  %i.qn = select i1 %i.qm, float %i.px, float %.sroa.4354.0.copyload.i.2 ; 3 uses
  %i.qo = fcmp olt <2 x float> %i.pz, %.sroa.0353.0.copyload.i.2
  %i.qp = select <2 x i1> %i.qo, <2 x float> %i.pz, <2 x float> %.sroa.0353.0.copyload.i.2 ; 3 uses
  %i.qq = fcmp ogt <2 x float> %i.qb, %.sroa.5355.0.copyload.i.2
  %i.qr = select <2 x i1> %i.qq, <2 x float> %i.qb, <2 x float> %.sroa.5355.0.copyload.i.2 ; 3 uses
  %i.qs = fcmp ogt float %i.qd, %.sroa.6356.0.copyload.i.2
  %i.qt = select i1 %i.qs, float %i.qd, float %.sroa.6356.0.copyload.i.2 ; 3 uses
  %indvars.iv.next2018.i.2 = add nuw nsw i64 %indvars.iv2015.i, 3 ; 3 uses
  %exitcond2020.not.i.2 = icmp eq i64 %indvars.iv.next2018.i.2, 8
  br i1 %exitcond2020.not.i.2, label %._crit_edge.i, label %.lr.ph.i91.3

.lr.ph.i91.3:                                     ; preds = %bb.cn
  %i.qu = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next2018.i.2 ; 5 uses
  %i.qv = mul nuw nsw i64 %indvars.iv.next2018.i.2, 28
  %i.qw = add i64 %i.qv, %i.gw, !nosanitize !9    ; 2 uses
  %.not138.i.3 = icmp ult i64 %i.qw, %i.gw, !nosanitize !9
  br i1 %.not138.i.3, label %bb.ch, label %bb.co, !prof !17, !nosanitize !9

bb.co:                                            ; preds = %.lr.ph.i91.3
  %i.qx = load i32, ptr %i.qu, align 4, !tbaa !206, !noalias !204 ; 2 uses
  %i.qy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.qk, i32 %i.qx), !nosanitize !9 ; 2 uses
  %i.qz = extractvalue { i32, i1 } %i.qy, 1, !nosanitize !9
  br i1 %i.qz, label %bb.ci, label %bb.cp, !prof !17, !nosanitize !9

bb.cp:                                            ; preds = %bb.co
  %i.ra = extractvalue { i32, i1 } %i.qy, 0, !nosanitize !9 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  %.sroa.0353.0.copyload.i.3 = load <2 x float>, ptr %i.rb, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4354.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  %.sroa.4354.0.copyload.i.3 = load float, ptr %.sroa.4354.0..sroa_idx.i.3, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.5355.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %.sroa.5355.0.copyload.i.3 = load <2 x float>, ptr %.sroa.5355.0..sroa_idx.i.3, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.6356.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %.sroa.6356.0.copyload.i.3 = load float, ptr %.sroa.6356.0..sroa_idx.i.3, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %i.rc = fcmp olt float %i.qn, %.sroa.4354.0.copyload.i.3
  %i.rd = select i1 %i.rc, float %i.qn, float %.sroa.4354.0.copyload.i.3 ; 3 uses
  %i.re = fcmp olt <2 x float> %i.qp, %.sroa.0353.0.copyload.i.3
  %i.rf = select <2 x i1> %i.re, <2 x float> %i.qp, <2 x float> %.sroa.0353.0.copyload.i.3 ; 3 uses
  %i.rg = fcmp ogt <2 x float> %i.qr, %.sroa.5355.0.copyload.i.3
  %i.rh = select <2 x i1> %i.rg, <2 x float> %i.qr, <2 x float> %.sroa.5355.0.copyload.i.3 ; 3 uses
  %i.ri = fcmp ogt float %i.qt, %.sroa.6356.0.copyload.i.3
  %i.rj = select i1 %i.ri, float %i.qt, float %.sroa.6356.0.copyload.i.3 ; 3 uses
  %indvars.iv.next2018.i.3 = add nuw nsw i64 %indvars.iv2015.i, 4 ; 3 uses
  %exitcond2020.not.i.3 = icmp eq i64 %indvars.iv.next2018.i.3, 8
  br i1 %exitcond2020.not.i.3, label %._crit_edge.i, label %.lr.ph.i91.4

.lr.ph.i91.4:                                     ; preds = %bb.cp
  %i.rk = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next2018.i.3 ; 5 uses
  %i.rl = mul nuw nsw i64 %indvars.iv.next2018.i.3, 28
  %i.rm = add i64 %i.rl, %i.gw, !nosanitize !9    ; 2 uses
  %.not138.i.4 = icmp ult i64 %i.rm, %i.gw, !nosanitize !9
  br i1 %.not138.i.4, label %bb.ch, label %bb.cq, !prof !17, !nosanitize !9

bb.cq:                                            ; preds = %.lr.ph.i91.4
  %i.rn = load i32, ptr %i.rk, align 4, !tbaa !206, !noalias !204 ; 2 uses
  %i.ro = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ra, i32 %i.rn), !nosanitize !9 ; 2 uses
  %i.rp = extractvalue { i32, i1 } %i.ro, 1, !nosanitize !9
  br i1 %i.rp, label %bb.ci, label %bb.cr, !prof !17, !nosanitize !9

bb.cr:                                            ; preds = %bb.cq
  %i.rq = extractvalue { i32, i1 } %i.ro, 0, !nosanitize !9 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %.sroa.0353.0.copyload.i.4 = load <2 x float>, ptr %i.rr, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4354.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  %.sroa.4354.0.copyload.i.4 = load float, ptr %.sroa.4354.0..sroa_idx.i.4, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.5355.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %.sroa.5355.0.copyload.i.4 = load <2 x float>, ptr %.sroa.5355.0..sroa_idx.i.4, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.6356.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %.sroa.6356.0.copyload.i.4 = load float, ptr %.sroa.6356.0..sroa_idx.i.4, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %i.rs = fcmp olt float %i.rd, %.sroa.4354.0.copyload.i.4
  %i.rt = select i1 %i.rs, float %i.rd, float %.sroa.4354.0.copyload.i.4 ; 3 uses
  %i.ru = fcmp olt <2 x float> %i.rf, %.sroa.0353.0.copyload.i.4
  %i.rv = select <2 x i1> %i.ru, <2 x float> %i.rf, <2 x float> %.sroa.0353.0.copyload.i.4 ; 3 uses
  %i.rw = fcmp ogt <2 x float> %i.rh, %.sroa.5355.0.copyload.i.4
  %i.rx = select <2 x i1> %i.rw, <2 x float> %i.rh, <2 x float> %.sroa.5355.0.copyload.i.4 ; 3 uses
  %i.ry = fcmp ogt float %i.rj, %.sroa.6356.0.copyload.i.4
  %i.rz = select i1 %i.ry, float %i.rj, float %.sroa.6356.0.copyload.i.4 ; 3 uses
  %indvars.iv.next2018.i.4 = add nuw nsw i64 %indvars.iv2015.i, 5 ; 3 uses
  %exitcond2020.not.i.4 = icmp eq i64 %indvars.iv.next2018.i.4, 8
  br i1 %exitcond2020.not.i.4, label %._crit_edge.i, label %.lr.ph.i91.5

.lr.ph.i91.5:                                     ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next2018.i.4 ; 5 uses
  %i.sb = mul nuw nsw i64 %indvars.iv.next2018.i.4, 28
  %i.sc = add i64 %i.sb, %i.gw, !nosanitize !9    ; 2 uses
  %.not138.i.5 = icmp ult i64 %i.sc, %i.gw, !nosanitize !9
  br i1 %.not138.i.5, label %bb.ch, label %bb.cs, !prof !17, !nosanitize !9

bb.cs:                                            ; preds = %.lr.ph.i91.5
  %i.sd = load i32, ptr %i.sa, align 4, !tbaa !206, !noalias !204 ; 2 uses
  %i.se = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.rq, i32 %i.sd), !nosanitize !9 ; 2 uses
  %i.sf = extractvalue { i32, i1 } %i.se, 1, !nosanitize !9
  br i1 %i.sf, label %bb.ci, label %bb.ct, !prof !17, !nosanitize !9

bb.ct:                                            ; preds = %bb.cs
  %i.sg = extractvalue { i32, i1 } %i.se, 0, !nosanitize !9 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %.sroa.0353.0.copyload.i.5 = load <2 x float>, ptr %i.sh, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4354.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.sa, i64 12
  %.sroa.4354.0.copyload.i.5 = load float, ptr %.sroa.4354.0..sroa_idx.i.5, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.5355.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %.sroa.5355.0.copyload.i.5 = load <2 x float>, ptr %.sroa.5355.0..sroa_idx.i.5, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.6356.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %.sroa.6356.0.copyload.i.5 = load float, ptr %.sroa.6356.0..sroa_idx.i.5, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %i.si = fcmp olt float %i.rt, %.sroa.4354.0.copyload.i.5
  %i.sj = select i1 %i.si, float %i.rt, float %.sroa.4354.0.copyload.i.5 ; 3 uses
  %i.sk = fcmp olt <2 x float> %i.rv, %.sroa.0353.0.copyload.i.5
  %i.sl = select <2 x i1> %i.sk, <2 x float> %i.rv, <2 x float> %.sroa.0353.0.copyload.i.5 ; 3 uses
  %i.sm = fcmp ogt <2 x float> %i.rx, %.sroa.5355.0.copyload.i.5
  %i.sn = select <2 x i1> %i.sm, <2 x float> %i.rx, <2 x float> %.sroa.5355.0.copyload.i.5 ; 3 uses
  %i.so = fcmp ogt float %i.rz, %.sroa.6356.0.copyload.i.5
  %i.sp = select i1 %i.so, float %i.rz, float %.sroa.6356.0.copyload.i.5 ; 3 uses
  %indvars.iv.next2018.i.5 = add nuw nsw i64 %indvars.iv2015.i, 6 ; 3 uses
  %exitcond2020.not.i.5 = icmp eq i64 %indvars.iv.next2018.i.5, 8
  br i1 %exitcond2020.not.i.5, label %._crit_edge.i, label %.lr.ph.i91.6

.lr.ph.i91.6:                                     ; preds = %bb.ct
  %i.sq = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next2018.i.5 ; 5 uses
  %i.sr = mul nuw nsw i64 %indvars.iv.next2018.i.5, 28
  %i.ss = add i64 %i.sr, %i.gw, !nosanitize !9    ; 2 uses
  %.not138.i.6 = icmp ult i64 %i.ss, %i.gw, !nosanitize !9
  br i1 %.not138.i.6, label %bb.ch, label %bb.cu, !prof !17, !nosanitize !9

bb.cu:                                            ; preds = %.lr.ph.i91.6
  %i.st = load i32, ptr %i.sq, align 4, !tbaa !206, !noalias !204 ; 2 uses
  %i.su = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.sg, i32 %i.st), !nosanitize !9 ; 2 uses
  %i.sv = extractvalue { i32, i1 } %i.su, 1, !nosanitize !9
  br i1 %i.sv, label %bb.ci, label %bb.cv, !prof !17, !nosanitize !9

bb.cv:                                            ; preds = %bb.cu
  %i.sw = extractvalue { i32, i1 } %i.su, 0, !nosanitize !9
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %.sroa.0353.0.copyload.i.6 = load <2 x float>, ptr %i.sx, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4354.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.sq, i64 12
  %.sroa.4354.0.copyload.i.6 = load float, ptr %.sroa.4354.0..sroa_idx.i.6, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.5355.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %.sroa.5355.0.copyload.i.6 = load <2 x float>, ptr %.sroa.5355.0..sroa_idx.i.6, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.6356.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.sq, i64 24
  %.sroa.6356.0.copyload.i.6 = load float, ptr %.sroa.6356.0..sroa_idx.i.6, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %i.sy = fcmp olt float %i.sj, %.sroa.4354.0.copyload.i.6
  %i.sz = select i1 %i.sy, float %i.sj, float %.sroa.4354.0.copyload.i.6
  %i.ta = fcmp olt <2 x float> %i.sl, %.sroa.0353.0.copyload.i.6
  %i.tb = select <2 x i1> %i.ta, <2 x float> %i.sl, <2 x float> %.sroa.0353.0.copyload.i.6
  %i.tc = fcmp ogt <2 x float> %i.sn, %.sroa.5355.0.copyload.i.6
  %i.td = select <2 x i1> %i.tc, <2 x float> %i.sn, <2 x float> %.sroa.5355.0.copyload.i.6
  %i.te = fcmp ogt float %i.sp, %.sroa.6356.0.copyload.i.6
  %i.tf = select i1 %i.te, float %i.sp, float %.sroa.6356.0.copyload.i.6
  br label %._crit_edge.i

bb.cw:                                            ; preds = %._crit_edge.i
  %i.tg = uitofp nneg i32 %.lcssa2432.a to float
  %i.th = fsub <2 x float> %.lcssa2429, %.lcssa2430 ; 2 uses
  %i.ti = fsub float %.lcssa2428, %.lcssa2431     ; 2 uses
  %i.tj = extractelement <2 x float> %i.th, i64 0 ; 2 uses
  %i.tk = extractelement <2 x float> %i.th, i64 1 ; 2 uses
  %i.tl = fmul float %i.tj, %i.tk
  %i.tm = fmul float %i.ti, %i.tk
  %i.tn = fadd float %i.tl, %i.tm
  %i.to = fmul float %i.ti, %i.tj
  %i.tp = fadd float %i.to, %i.tn
  %i.tq = fmul float %i.tp, 2.000000e+00
  %i.tr = fmul float %i.tq, %i.tg
  %i.ts = uitofp nneg i32 %.lcssa2444 to float
  %i.tt = fsub <2 x float> %.lcssa2441, %.lcssa2442 ; 2 uses
  %i.tu = fsub float %.lcssa2440, %.lcssa2443     ; 2 uses
  %i.tv = extractelement <2 x float> %i.tt, i64 0 ; 2 uses
  %i.tw = extractelement <2 x float> %i.tt, i64 1 ; 2 uses
  %i.tx = fmul float %i.tv, %i.tw
  %i.ty = fmul float %i.tu, %i.tw
  %i.tz = fadd float %i.tx, %i.ty
  %i.ua = fmul float %i.tu, %i.tv
  %i.ub = fadd float %i.ua, %i.tz
  %i.uc = fmul float %i.ub, 2.000000e+00
  %i.ud = fmul float %i.uc, %i.ts
  %i.ue = fadd float %i.tr, %i.ud                 ; 2 uses
  %i.uf = fcmp olt float %i.ue, %.11021532.i
  br i1 %i.uf, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %._crit_edge.i
  %.sroa.13.2 = phi i32 [ %.lcssa2432.a, %bb.cx ], [ %.sroa.13.1, %bb.cw ], [ %.sroa.13.1, %._crit_edge.i ] ; 2 uses
  %.sroa.11187.2 = phi i32 [ %i.lg, %bb.cx ], [ %.sroa.11187.1, %bb.cw ], [ %.sroa.11187.1, %._crit_edge.i ] ; 2 uses
  %.sroa.10186.2 = phi float [ %.lcssa2440, %bb.cx ], [ %.sroa.10186.1, %bb.cw ], [ %.sroa.10186.1, %._crit_edge.i ] ; 2 uses
  %.sroa.9185.2 = phi <2 x float> [ %.lcssa2441, %bb.cx ], [ %.sroa.9185.1, %bb.cw ], [ %.sroa.9185.1, %._crit_edge.i ] ; 2 uses
  %.sroa.8184.2 = phi float [ %.lcssa2443, %bb.cx ], [ %.sroa.8184.1, %bb.cw ], [ %.sroa.8184.1, %._crit_edge.i ] ; 2 uses
  %.sroa.7183.2 = phi <2 x float> [ %.lcssa2442, %bb.cx ], [ %.sroa.7183.1, %bb.cw ], [ %.sroa.7183.1, %._crit_edge.i ] ; 2 uses
  %.sroa.6182.2 = phi float [ %.lcssa2428, %bb.cx ], [ %.sroa.6182.1, %bb.cw ], [ %.sroa.6182.1, %._crit_edge.i ] ; 2 uses
  %.sroa.5181.2 = phi <2 x float> [ %.lcssa2429, %bb.cx ], [ %.sroa.5181.1, %bb.cw ], [ %.sroa.5181.1, %._crit_edge.i ] ; 2 uses
  %.sroa.4180.2 = phi float [ %.lcssa2431, %bb.cx ], [ %.sroa.4180.1, %bb.cw ], [ %.sroa.4180.1, %._crit_edge.i ] ; 2 uses
  %.sroa.0179.2 = phi <2 x float> [ %.lcssa2430, %bb.cx ], [ %.sroa.0179.1, %bb.cw ], [ %.sroa.0179.1, %._crit_edge.i ] ; 2 uses
  %i.ug = phi i32 [ %i.lg, %bb.cx ], [ %i.oo, %bb.cw ], [ %i.oo, %._crit_edge.i ]
  %.3104.i = phi float [ %i.ue, %bb.cx ], [ %.11021532.i, %bb.cw ], [ %.11021532.i, %._crit_edge.i ] ; 2 uses
  %.3.i = phi i32 [ %.01151531.i, %bb.cx ], [ %.11533.i, %bb.cw ], [ %.11533.i, %._crit_edge.i ] ; 2 uses
  %i.uh = freeze i32 %i.ug                        ; 2 uses
  %indvars.iv.next2016.i = add nuw nsw i64 %indvars.iv2015.i, 1
  %exitcond2022.not.i = icmp eq i32 %11, 7
  br i1 %exitcond2022.not.i, label %bb.bn, label %.preheader.i89, !llvm.loop !190

bb.cz:                                            ; preds = %bb.bn, %b3GetByIndex.exit.i
  %.sroa.13.3 = phi i32 [ %.sroa.13.0, %b3GetByIndex.exit.i ], [ %.sroa.13.2, %bb.bn ] ; 2 uses
  %.sroa.11187.3 = phi i32 [ %.sroa.11187.0, %b3GetByIndex.exit.i ], [ %.sroa.11187.2, %bb.bn ] ; 3 uses
  %.sroa.10186.3 = phi float [ %.sroa.10186.0, %b3GetByIndex.exit.i ], [ %.sroa.10186.2, %bb.bn ] ; 2 uses
  %.sroa.9185.3 = phi <2 x float> [ %.sroa.9185.0, %b3GetByIndex.exit.i ], [ %.sroa.9185.2, %bb.bn ] ; 2 uses
  %.sroa.8184.3 = phi float [ %.sroa.8184.0, %b3GetByIndex.exit.i ], [ %.sroa.8184.2, %bb.bn ] ; 2 uses
  %.sroa.7183.3 = phi <2 x float> [ %.sroa.7183.0, %b3GetByIndex.exit.i ], [ %.sroa.7183.2, %bb.bn ] ; 2 uses
  %.sroa.6182.3 = phi float [ %.sroa.6182.0, %b3GetByIndex.exit.i ], [ %.sroa.6182.2, %bb.bn ] ; 2 uses
  %.sroa.5181.3 = phi <2 x float> [ %.sroa.5181.0, %b3GetByIndex.exit.i ], [ %.sroa.5181.2, %bb.bn ] ; 2 uses
  %.sroa.4180.3 = phi float [ %.sroa.4180.0, %b3GetByIndex.exit.i ], [ %.sroa.4180.2, %bb.bn ] ; 2 uses
  %.sroa.0179.3 = phi <2 x float> [ %.sroa.0179.0, %b3GetByIndex.exit.i ], [ %.sroa.0179.2, %bb.bn ] ; 2 uses
  %.fr1618.i = phi i32 [ %i.ji, %b3GetByIndex.exit.i ], [ %i.uh, %bb.bn ] ; 3 uses
  %.4105.i = phi float [ %.01011535.i, %b3GetByIndex.exit.i ], [ %.3104.i, %bb.bn ]
  %.4.i = phi i32 [ %.01001536.i, %b3GetByIndex.exit.i ], [ %.3.i, %bb.bn ] ; 3 uses
  %indvars.iv.next2024.i = add nuw nsw i64 %indvars.iv2023.i, 1 ; 2 uses
  %exitcond2026.not.i = icmp eq i64 %indvars.iv.next2024.i, 3
  br i1 %exitcond2026.not.i, label %bb.av, label %bb.aw, !llvm.loop !191

bb.da:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !204
  store float %i.ig, ptr %i.d, align 4, !tbaa !22, !noalias !204
  %i.ui = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.ih, ptr %i.ui, align 4, !tbaa !22, !noalias !204
  %i.uj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.jg, ptr %i.uj, align 4, !tbaa !22, !noalias !204
  %i.uk = sext i32 %.fr1618.i to i64, !nosanitize !9 ; 6 uses
  %i.ul = icmp ult i32 %.fr1618.i, 3
  br i1 %i.ul, label %bb.dc, label %bb.db, !prof !10, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @510, i64 %i.uk) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

bb.dc:                                            ; preds = %bb.da
  %i.um = shl nuw nsw i64 %i.uk, 2                ; 4 uses
  %i.un = ptrtoint ptr %i.d to i64, !nosanitize !9 ; 3 uses
  %i.uo = add i64 %i.um, %i.un, !nosanitize !9    ; 2 uses
  %.not.i248.i = icmp ult i64 %i.uo, %i.un, !nosanitize !9
  br i1 %.not.i248.i, label %bb.dd, label %bb.de, !prof !17, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @511, i64 %i.un, i64 %i.uo) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

bb.de:                                            ; preds = %bb.dc
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.uk
  %i.uq = load float, ptr %i.up, align 4, !tbaa !22, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !204
  store float %i.ie, ptr %i.c, align 4, !tbaa !22, !noalias !204
  %i.ur = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.if, ptr %i.ur, align 4, !tbaa !22, !noalias !204
  %i.us = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.jc, ptr %i.us, align 4, !tbaa !22, !noalias !204
  %i.ut = ptrtoint ptr %i.c to i64, !nosanitize !9 ; 3 uses
  %i.uu = add i64 %i.um, %i.ut, !nosanitize !9    ; 2 uses
  %.not.i252.i = icmp ult i64 %i.uu, %i.ut, !nosanitize !9
  br i1 %.not.i252.i, label %bb.df, label %b3GetByIndex.exit253.i, !prof !17, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @511, i64 %i.ut, i64 %i.uu) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

b3GetByIndex.exit253.i:                           ; preds = %bb.de
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uk
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !22, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13, !noalias !204
  %i.ux = fsub float %i.uq, %i.uw
  %i.uy = fdiv float f0x40FFFFFE, %i.ux
  %i.uz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.uk
  %i.vb = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.vc = add i64 %i.um, %i.vb                    ; 2 uses
  %.not.i256.i = icmp ult i64 %i.vc, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.uk
  %i.vg = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.vh = add i64 %i.um, %i.vg                    ; 2 uses
  br i1 %.not.i256.i, label %.split1549.us.i, label %b3GetByIndex.exit253.split.split.us.i, !prof !17, !nosanitize !9

.split1549.us.i:                                  ; preds = %b3GetByIndex.exit253.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.04.0.copyload.us.i = load <2 x float>, ptr %i.gp, align 4, !tbaa !22, !noalias !204 ; 2 uses
  %.sroa.4.0.copyload.us.i = load float, ptr %.sroa.10.0..sroa_idx310.i, align 4, !tbaa !22, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !204
  %.sroa.0.0.vec.extract.i254.us.i = extractelement <2 x float> %.sroa.04.0.copyload.us.i, i64 0
  store float %.sroa.0.0.vec.extract.i254.us.i, ptr %i.b, align 8, !tbaa !22, !noalias !204
  %.sroa.0.4.vec.extract.i255.us.i = extractelement <2 x float> %.sroa.04.0.copyload.us.i, i64 1
  store float %.sroa.0.4.vec.extract.i255.us.i, ptr %i.vi, align 4, !tbaa !22, !noalias !204
  store float %.sroa.4.0.copyload.us.i, ptr %i.uz, align 8, !tbaa !22, !noalias !204
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @511, i64 %i.vb, i64 %i.vc) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

b3GetByIndex.exit253.split.split.us.i:            ; preds = %b3GetByIndex.exit253.i
  %.not.i260.i = icmp ult i64 %i.vh, %i.vg
  br i1 %.not.i260.i, label %.split1567.us.split.us.i, label %b3GetByIndex.exit253.split.split.us.split.split.us.i, !prof !17, !nosanitize !9

.split1567.us.split.us.i:                         ; preds = %b3GetByIndex.exit253.split.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !204
  store float %i.ie, ptr %i.a, align 4, !tbaa !22, !noalias !204
  store float %i.if, ptr %i.vd, align 4, !tbaa !22, !noalias !204
  store float %i.jc, ptr %i.ve, align 4, !tbaa !22, !noalias !204
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @511, i64 %i.vg, i64 %i.vh) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

b3GetByIndex.exit253.split.split.us.split.split.us.i: ; preds = %b3GetByIndex.exit253.split.split.us.i, %bb.dk
  %indvars.iv2027.i = phi i64 [ %indvars.iv.next2028.i, %bb.dk ], [ 0, %b3GetByIndex.exit253.split.split.us.i ] ; 3 uses
  %.01081537.us1553.us1592.i = phi i32 [ %.1109.us.us.i, %bb.dk ], [ 0, %b3GetByIndex.exit253.split.split.us.i ] ; 5 uses
  %i.vj = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv2027.i ; 4 uses
  %i.vk = mul nuw nsw i64 %indvars.iv2027.i, 40
  %i.vl = add i64 %i.vk, %i.n, !nosanitize !9     ; 2 uses
  %.not357.us1554.us1593.i = icmp ult i64 %i.vl, %i.n, !nosanitize !9
  br i1 %.not357.us1554.us1593.i, label %.split1540.us.i, label %b3GetByIndex.exit261.us.us.i, !prof !17, !nosanitize !9

b3GetByIndex.exit261.us.us.i:                     ; preds = %b3GetByIndex.exit253.split.split.us.split.split.us.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %.sroa.04.0.copyload.us1555.us1594.i = load <2 x float>, ptr %i.vm, align 4, !tbaa !22, !noalias !204
  %.sroa.4.0..sroa_idx.us1556.us1595.i = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %.sroa.4.0.copyload.us1557.us1596.i = load float, ptr %.sroa.4.0..sroa_idx.us1556.us1595.i, align 4, !tbaa !22, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !204
  store <2 x float> %.sroa.04.0.copyload.us1555.us1594.i, ptr %i.b, align 8, !tbaa !22, !noalias !204
  store float %.sroa.4.0.copyload.us1557.us1596.i, ptr %i.uz, align 8, !tbaa !22, !noalias !204
  %i.vn = load float, ptr %i.va, align 4, !tbaa !22, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !204
  store float %i.ie, ptr %i.a, align 4, !tbaa !22, !noalias !204
  store float %i.if, ptr %i.vd, align 4, !tbaa !22, !noalias !204
  store float %i.jc, ptr %i.ve, align 4, !tbaa !22, !noalias !204
  %i.vo = load float, ptr %i.vf, align 4, !tbaa !22, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !204
  %i.vp = fsub float %i.vn, %i.vo
  %i.vq = fmul float %i.uy, %i.vp                 ; 4 uses
  %i.vr = fcmp ogt float %i.vq, f0xCF000001, !nosanitize !9
  %i.vs = fcmp olt float %i.vq, f0x4F000000, !nosanitize !9
  %i.vt = and i1 %i.vr, %i.vs, !nosanitize !9
  br i1 %i.vt, label %bb.dg, label %.split1574.us.i, !prof !10, !nosanitize !9

bb.dg:                                            ; preds = %b3GetByIndex.exit261.us.us.i
  %i.vu = fptosi float %i.vq to i32
  %.not.us.us.i = icmp slt i32 %.4.i, %i.vu
  br i1 %.not.us.us.i, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(40) %i.vj, i64 40, i1 false), !tbaa.struct !201, !noalias !204
  %i.vv = sext i32 %.01081537.us1553.us1592.i to i64 ; 2 uses
  %i.vw = mul nsw i64 %i.vv, 40
  %i.vx = add i64 %i.vw, %i.n, !nosanitize !9     ; 3 uses
  %i.vy = icmp ne i64 %i.vx, 0, !nosanitize !9
  %i.vz = icmp uge i64 %i.vx, %i.n, !nosanitize !9
  %i.wa = icmp slt i32 %.01081537.us1553.us1592.i, 0
  %i.wb = xor i1 %i.wa, %i.vz
  %i.wc = and i1 %i.vy, %i.wb, !nosanitize !9
  br i1 %i.wc, label %bb.di, label %.split1577.us.i, !prof !10, !nosanitize !9

bb.di:                                            ; preds = %bb.dh
  %i.wd = getelementptr inbounds [40 x i8], ptr %2, i64 %i.vv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.vj, ptr noundef nonnull align 4 dereferenceable(40) %i.wd, i64 40, i1 false), !tbaa.struct !201, !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.wd, ptr noundef nonnull align 4 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !201, !noalias !204
  %i.we = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.01081537.us1553.us1592.i, i32 1), !nosanitize !9 ; 2 uses
  %i.wf = extractvalue { i32, i1 } %i.we, 1, !nosanitize !9
  br i1 %i.wf, label %.split1583.us.i, label %bb.dj, !prof !17, !nosanitize !9

bb.dj:                                            ; preds = %bb.di
  %i.wg = extractvalue { i32, i1 } %i.we, 0, !nosanitize !9
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dg
  %.1109.us.us.i = phi i32 [ %i.wg, %bb.dj ], [ %.01081537.us1553.us1592.i, %bb.dg ]
  %indvars.iv.next2028.i = add nuw nsw i64 %indvars.iv2027.i, 1 ; 2 uses
  %exitcond2031.not.i = icmp eq i64 %indvars.iv.next2028.i, %wide.trip.count.i78
  br i1 %exitcond2031.not.i, label %b3SplitMedian.exit, label %b3GetByIndex.exit253.split.split.us.split.split.us.i, !llvm.loop !192

.split1540.us.i:                                  ; preds = %b3GetByIndex.exit253.split.split.us.split.split.us.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @505, i64 %i.n, i64 %i.vl) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.split1574.us.i:                                  ; preds = %b3GetByIndex.exit261.us.us.i
  %i.wh = bitcast float %i.vq to i32, !nosanitize !9
  %i.wi = zext i32 %i.wh to i64, !nosanitize !9
  call void @__ubsan_handle_float_cast_overflow_abort(ptr nonnull @506, i64 %i.wi) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.split1577.us.i:                                  ; preds = %bb.dh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @507, i64 %i.n, i64 %i.vx) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

.split1583.us.i:                                  ; preds = %bb.di
  %i.wj = zext nneg i32 %.01081537.us1553.us1592.i to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @508, i64 %i.wj, i64 1) #12, !noalias !204, !nosanitize !9
  unreachable, !nosanitize !9

b3SplitMedian.exit:                               ; preds = %bb.dk, %bb.av
  %i.wk = icmp slt i32 %.sroa.11187.3, 0
  br i1 %i.wk, label %bb.dl, label %b3SplitMedian.exit.thread

end_hunk_0
