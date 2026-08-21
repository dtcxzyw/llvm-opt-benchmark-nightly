inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@h5tools_dump_region_data_blocks:bb.a
  %i.iq = icmp eq i64 %indvars.iv.i.ph, %i.ip
  br i1 %i.iq, label %._crit_edge.i, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  %i.ir = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %bb.bb, label %.loopexit197.i

bb.bb:                                            ; preds = %bb.ba
  %i.it = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.iu = icmp sgt i64 %i.it, -1
  %i.iv = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.iw = icmp sgt i64 %i.iv, -1
  %or.cond5.i = select i1 %i.iu, i1 %i.iw, i1 false
  br i1 %or.cond5.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ix = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.iy = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.iz = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.it, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 530, i64 noundef %i.iv, i64 noundef %i.ix, i64 noundef %i.iy, ptr noundef nonnull @.str.308) #12 ; 0 uses
  br label %.loopexit197.i

bb.bd:                                            ; preds = %bb.bb
  %i.ja = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.jb = call i64 @fwrite(ptr nonnull @.str.308, i64 34, i64 1, ptr %i.ja) #13 ; 0 uses
  %i.jc = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc191.i = call i32 @fputc(i32 10, ptr %i.jc) ; 0 uses
  br label %.loopexit197.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.0136198.i = phi i64 [ %i.jy, %.lr.ph.i ], [ %.0136198.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.jd = trunc nuw i64 %indvars.iv.i to i32
  %i.je = add i32 %.fr262, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !22
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !22
  %i.jk = sub i64 %i.jh, %i.jj
  %i.jl = add i64 %i.jk, 1                        ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !22
  %i.jn = mul i64 %i.jl, %.0136198.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.jo = trunc nuw i64 %indvars.iv.next.i to i32
  %i.jp = add i32 %.fr262, %i.jo
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jq
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !22
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !22
  %i.jv = sub i64 %i.js, %i.ju
  %i.jw = add i64 %i.jv, 1                        ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next.i
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !22
  %i.jy = mul i64 %i.jw, %i.jn                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ar
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader.i
  %.0136.lcssa.i = phi i64 [ 1, %.preheader.i ], [ %i.id, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.jy, %.lr.ph.i ] ; 7 uses
  %i.jz = call i64 @H5Screate_simple(i32 noundef %.fr262, ptr noundef nonnull %i.hf, ptr noundef null) #12 ; 16 uses
  %i.ka = icmp slt i64 %i.jz, 0
  br i1 %i.ka, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %._crit_edge.i
  %i.kb = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %bb.bf, label %.loopexit197.i

bb.bf:                                            ; preds = %bb.be
  %i.kd = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.ke = icmp sgt i64 %i.kd, -1
  %i.kf = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.kg = icmp sgt i64 %i.kf, -1
  %or.cond7.i = select i1 %i.ke, i1 %i.kg, i1 false
  br i1 %or.cond7.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kh = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.ki = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.kj = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.kd, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 541, i64 noundef %i.kf, i64 noundef %i.kh, i64 noundef %i.ki, ptr noundef nonnull @.str.309) #12 ; 0 uses
  br label %.loopexit197.i

bb.bh:                                            ; preds = %bb.bf
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.kl = call i64 @fwrite(ptr nonnull @.str.309, i64 23, i64 1, ptr %i.kk) #13 ; 0 uses
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc190.i = call i32 @fputc(i32 10, ptr %i.km) ; 0 uses
  br label %.loopexit197.i

bb.bi:                                            ; preds = %._crit_edge.i
  %i.kn = mul i64 %.0136.lcssa.i, %i.gc
  %i.ko = call noalias ptr @malloc(i64 noundef %i.kn) #15 ; 12 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.kq = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %bb.bk, label %.loopexit197.i

bb.bk:                                            ; preds = %bb.bj
  %i.ks = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.kt = icmp sgt i64 %i.ks, -1
  %i.ku = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.kv = icmp sgt i64 %i.ku, -1
  %or.cond9.i = select i1 %i.kt, i1 %i.kv, i1 false
  br i1 %or.cond9.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.kw = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.kx = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.ky = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ks, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 544, i64 noundef %i.ku, i64 noundef %i.kw, i64 noundef %i.kx, ptr noundef nonnull @.str.310) #12 ; 0 uses
  br label %.loopexit197.i

bb.bm:                                            ; preds = %bb.bk
  %i.kz = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.la = call i64 @fwrite(ptr nonnull @.str.310, i64 32, i64 1, ptr %i.kz) #13 ; 0 uses
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc189.i = call i32 @fputc(i32 10, ptr %i.lb) ; 0 uses
  br label %.loopexit197.i

bb.bn:                                            ; preds = %bb.bi
  %i.lc = call noalias ptr @malloc(i64 noundef %i.he) #15 ; 8 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.le = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.lf = icmp sgt i32 %i.le, 0
  br i1 %i.lf, label %bb.bp, label %.loopexit197.i

bb.bp:                                            ; preds = %bb.bo
  %i.lg = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.lh = icmp sgt i64 %i.lg, -1
  %i.li = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.lj = icmp sgt i64 %i.li, -1
  %or.cond11.i = select i1 %i.lh, i1 %i.lj, i1 false
  br i1 %or.cond11.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lk = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.ll = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.lm = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.lg, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 549, i64 noundef %i.li, i64 noundef %i.lk, i64 noundef %i.ll, ptr noundef nonnull @.str.311) #12 ; 0 uses
  br label %.loopexit197.i

bb.br:                                            ; preds = %bb.bp
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.lo = call i64 @fwrite(ptr nonnull @.str.311, i64 35, i64 1, ptr %i.ln) #13 ; 0 uses
  %i.lp = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc188.i = call i32 @fputc(i32 10, ptr %i.lp) ; 0 uses
  br label %.loopexit197.i

bb.bs:                                            ; preds = %bb.bn
  %i.lq = call noalias ptr @malloc(i64 noundef %i.he) #15 ; 4 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %bb.bt, label %.lr.ph222.i

bb.bt:                                            ; preds = %bb.bs
  %i.ls = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.lt = icmp sgt i32 %i.ls, 0
  br i1 %i.lt, label %bb.bu, label %.loopexit197.i

bb.bu:                                            ; preds = %bb.bt
  %i.lu = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.lv = icmp sgt i64 %i.lu, -1
  %i.lw = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.lx = icmp sgt i64 %i.lw, -1
  %or.cond13.i = select i1 %i.lv, i1 %i.lx, i1 false
  br i1 %or.cond13.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ly = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.lz = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.ma = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.lu, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 552, i64 noundef %i.lw, i64 noundef %i.ly, i64 noundef %i.lz, ptr noundef nonnull @.str.312) #12 ; 0 uses
  br label %.loopexit197.i

bb.bw:                                            ; preds = %bb.bu
  %i.mb = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.mc = call i64 @fwrite(ptr nonnull @.str.312, i64 35, i64 1, ptr %i.mb) #13 ; 0 uses
  %i.md = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc187.i = call i32 @fputc(i32 10, ptr %i.md) ; 0 uses
  br label %.loopexit197.i

.lr.ph222.i:                                      ; preds = %bb.bs
  store i64 0, ptr %i.b, align 8, !tbaa !22
  %i.me = load i32, ptr %i.al, align 8, !tbaa !37
  %i.mf = getelementptr inbounds nuw i8, ptr %10, i64 568 ; 5 uses
  store i32 %i.me, ptr %i.mf, align 8, !tbaa !37
  %i.mg = load i64, ptr %4, align 8, !tbaa !56
  store i64 %i.mg, ptr %10, align 8, !tbaa !56
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !110
  %i.mj = getelementptr inbounds nuw i8, ptr %10, i64 536
  store i32 %i.mi, ptr %i.mj, align 8, !tbaa !110
  %i.mk = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  store i32 %.fr262, ptr %i.mk, align 4, !tbaa !88
  %factor.op.mul217.i = shl nuw nsw i64 %i.ar, 4
  %i.ml = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 576
  %i.mo = getelementptr inbounds nuw i8, ptr %10, i64 832
  %i.mp = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.mq = add nsw i64 %i.g, -1
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 280
  %i.ms = getelementptr inbounds nuw i8, ptr %10, i64 1088
  %i.mt = add nsw i32 %.fr262, -1
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %10, i64 560
  %.not227.i = icmp eq i64 %.0136.lcssa.i, 0
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 3 uses
  %i.my = icmp ne i64 %.0136.lcssa.i, 1
  %exitcond240.peel.not.i = icmp eq i64 %.0136.lcssa.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cr, %.lr.ph222.i
  %.0140218.i = phi i64 [ 0, %.lr.ph222.i ], [ %i.qj, %bb.cr ] ; 4 uses
  store i32 1, ptr %i.ml, align 8, !tbaa !38
  store i64 0, ptr %i.mm, align 8, !tbaa !24
  br i1 %.not263, label %._crit_edge203.i, label %.lr.ph202.i

.lr.ph202.i:                                      ; preds = %bb.bx
  %i.mz = mul i64 %factor.op.mul217.i, %.0140218.i
  %scevgep.i = getelementptr i8, ptr %i.au, i64 %i.mz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lc, ptr align 8 %scevgep.i, i64 %i.he, i1 false), !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lq, ptr nonnull align 8 %i.hf, i64 %i.he, i1 false), !tbaa !22
  br label %._crit_edge203.i

._crit_edge203.i:                                 ; preds = %.lr.ph202.i, %bb.bx
  %i.na = call i32 @H5Sselect_hyperslab(i64 noundef %i.gq, i32 noundef 0, ptr noundef nonnull %i.lc, ptr noundef null, ptr noundef nonnull %i.lq, ptr noundef null) #12
  %i.nb = icmp sgt i32 %i.na, -1
  br i1 %i.nb, label %bb.by, label %bb.cn

bb.by:                                            ; preds = %._crit_edge203.i
  %i.nc = call i32 @H5Dread(i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.dk, i64 noundef %i.jz, i64 noundef %i.gq, i64 noundef 0, ptr noundef nonnull %i.ko) #12
  %i.nd = icmp sgt i32 %i.nc, -1
  br i1 %i.nd, label %bb.bz, label %bb.cj

bb.bz:                                            ; preds = %bb.by
  %i.ne = load i32, ptr %i.mf, align 8, !tbaa !37
  %i.nf = add i32 %i.ne, 1
  store i32 %i.nf, ptr %i.mf, align 8, !tbaa !37
  %i.ng = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.jz, ptr noundef nonnull %i.a, ptr noundef null) #12
  %i.nh = icmp sgt i32 %i.ng, -1
  br i1 %i.nh, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.ni = load i32, ptr %i.mk, align 4, !tbaa !88
  call void @init_acc_pos(i32 noundef %i.ni, ptr noundef nonnull %i.a, ptr noundef nonnull %i.mn, ptr noundef nonnull %i.mo, ptr noundef nonnull %i.mp) #12
  %i.nj = load i32, ptr %i.mk, align 4, !tbaa !88 ; 2 uses
  %.not228.i = icmp eq i32 %i.nj, 0
  br i1 %.not228.i, label %._crit_edge212.i, label %.lr.ph211.preheader.i

.lr.ph211.preheader.i:                            ; preds = %bb.ca
  %i.nk = zext i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mp, ptr nonnull align 8 %i.lc, i64 %i.nl, i1 false), !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mr, ptr nonnull align 8 %i.hf, i64 %i.nl, i1 false), !tbaa !22
  br label %._crit_edge212.i

._crit_edge212.i:                                 ; preds = %bb.ca, %.lr.ph211.preheader.i
  %.not185280.i = icmp ne i64 %.0140218.i, %i.mq
  %.not185280.i.fr = freeze i1 %.not185280.i      ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  %i.nm = mul i64 %factor.op.mul247, %.0140218.i
  store i64 %i.nm, ptr %i.ms, align 8, !tbaa !19
  %i.nn = load i64, ptr %i.mv, align 8, !tbaa !22
  store i64 %i.nn, ptr %i.mw, align 8, !tbaa !111
  call void @h5tools_region_simple_prefix(ptr noundef %i.gb, ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 0, ptr noundef nonnull %i.au, i32 noundef 0) #12
  br i1 %.not227.i, label %.loopexit.i, label %.lr.ph216.preheader.i

.lr.ph216.preheader.i:                            ; preds = %._crit_edge212.i
  %i.no = call ptr @h5tools_str_reset(ptr noundef %5) #12 ; 0 uses
  %i.np = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str) #12 ; 0 uses
  %i.nq = call ptr @h5tools_str_sprint(ptr noundef %5, ptr noundef nonnull %3, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.dk, ptr noundef nonnull %i.ko, ptr noundef nonnull %10) #12 ; 0 uses
  %brmerge.peel.i = or i1 %i.my, %.not185280.i.fr
  br i1 %brmerge.peel.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph216.preheader.i
  %i.nr = load ptr, ptr %i.mx, align 8, !tbaa !23 ; 2 uses
  %.not186.peel.i = icmp eq ptr %i.nr, null
  %spec.select.peel.i = select i1 %.not186.peel.i, ptr @.str.11, ptr %i.nr
  %i.ns = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select.peel.i) #12 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph216.preheader.i
  %i.nt = call zeroext i1 @h5tools_render_region_element(ptr noundef %i.gb, ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef %7, ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.nu = load i64, ptr %i.mm, align 8, !tbaa !24
  %i.nv = add i64 %i.nu, 1
  store i64 %i.nv, ptr %i.mm, align 8, !tbaa !24
  br i1 %exitcond240.peel.not.i, label %.loopexit.i, label %.lr.ph216.i.preheader

.lr.ph216.i.preheader:                            ; preds = %bb.cc
  br i1 %.not185280.i.fr, label %.lr.ph216.i.us, label %.lr.ph216.i

.lr.ph216.i.us:                                   ; preds = %.lr.ph216.i.preheader, %.lr.ph216.i.us
  %.0135214.i.us = phi i64 [ %i.ob, %.lr.ph216.i.us ], [ 1, %.lr.ph216.i.preheader ] ; 3 uses
  %.0138213.i.us = phi i64 [ %i.og, %.lr.ph216.i.us ], [ 1, %.lr.ph216.i.preheader ] ; 2 uses
  %i.nw = call ptr @h5tools_str_reset(ptr noundef %5) #12 ; 0 uses
  %i.nx = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.313) #12 ; 0 uses
  %i.ny = mul i64 %.0135214.i.us, %i.gc
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ny
  %i.oa = call ptr @h5tools_str_sprint(ptr noundef %5, ptr noundef nonnull %3, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.dk, ptr noundef nonnull %i.nz, ptr noundef nonnull %10) #12 ; 0 uses
  %i.ob = add nuw i64 %.0135214.i.us, 1           ; 2 uses
  %i.oc = load ptr, ptr %i.mx, align 8, !tbaa !23 ; 2 uses
  %.not186.i.us = icmp eq ptr %i.oc, null
  %spec.select.i.us = select i1 %.not186.i.us, ptr @.str.11, ptr %i.oc
  %i.od = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select.i.us) #12 ; 0 uses
  %i.oe = call zeroext i1 @h5tools_render_region_element(ptr noundef %i.gb, ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef %7, ptr noundef nonnull %i.au, i64 noundef %.0135214.i.us, i64 noundef %.0138213.i.us) #12
  %i.of = add i64 %.0138213.i.us, 1
  %i.og = select i1 %i.oe, i64 %i.of, i64 1
  %i.oh = load i64, ptr %i.mm, align 8, !tbaa !24
  %i.oi = add i64 %i.oh, 1
  store i64 %i.oi, ptr %i.mm, align 8, !tbaa !24
  %exitcond240.not.i.us = icmp eq i64 %i.ob, %.0136.lcssa.i
  br i1 %exitcond240.not.i.us, label %.loopexit.i, label %.lr.ph216.i.us, !llvm.loop !112

.lr.ph216.i:                                      ; preds = %.lr.ph216.i.preheader, %bb.ce
  %.0135214.i = phi i64 [ %i.oo, %bb.ce ], [ 1, %.lr.ph216.i.preheader ] ; 3 uses
  %.0138213.i = phi i64 [ %i.ou, %bb.ce ], [ 1, %.lr.ph216.i.preheader ] ; 2 uses
  %i.oj = call ptr @h5tools_str_reset(ptr noundef %5) #12 ; 0 uses
  %i.ok = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.313) #12 ; 0 uses
  %i.ol = mul i64 %.0135214.i, %i.gc
  %i.om = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ol
  %i.on = call ptr @h5tools_str_sprint(ptr noundef %5, ptr noundef nonnull %3, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.dk, ptr noundef nonnull %i.om, ptr noundef nonnull %10) #12 ; 0 uses
  %i.oo = add nuw i64 %.0135214.i, 1              ; 3 uses
  %i.op = icmp ult i64 %i.oo, %.0136.lcssa.i
  br i1 %i.op, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph216.i
  %i.oq = load ptr, ptr %i.mx, align 8, !tbaa !23 ; 2 uses
  %.not186.i = icmp eq ptr %i.oq, null
  %spec.select.i = select i1 %.not186.i, ptr @.str.11, ptr %i.oq
  %i.or = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select.i) #12 ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph216.i
  %i.os = call zeroext i1 @h5tools_render_region_element(ptr noundef %i.gb, ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef %7, ptr noundef nonnull %i.au, i64 noundef %.0135214.i, i64 noundef %.0138213.i) #12
  %i.ot = add i64 %.0138213.i, 1
  %i.ou = select i1 %i.os, i64 %i.ot, i64 1
  %i.ov = load i64, ptr %i.mm, align 8, !tbaa !24
  %i.ow = add i64 %i.ov, 1
  store i64 %i.ow, ptr %i.mm, align 8, !tbaa !24
  %exitcond240.not.i = icmp eq i64 %i.oo, %.0136.lcssa.i
  br i1 %exitcond240.not.i, label %.loopexit.i, label %.lr.ph216.i, !llvm.loop !112

bb.cf:                                            ; preds = %bb.bz
  %i.ox = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.oy = icmp sgt i32 %i.ox, 0
  br i1 %i.oy, label %bb.cg, label %.loopexit.i

bb.cg:                                            ; preds = %bb.cf
  %i.oz = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.pa = icmp sgt i64 %i.oz, -1
  %i.pb = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.pc = icmp sgt i64 %i.pb, -1
  %or.cond15.i = select i1 %i.pa, i1 %i.pc, i1 false
  br i1 %or.cond15.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.pd = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.pe = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.pf = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.oz, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 614, i64 noundef %i.pb, i64 noundef %i.pd, i64 noundef %i.pe, ptr noundef nonnull @.str.188) #12 ; 0 uses
  br label %.loopexit.i

bb.ci:                                            ; preds = %bb.cg
  %i.pg = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.ph = call i64 @fwrite(ptr nonnull @.str.188, i64 32, i64 1, ptr %i.pg) #13 ; 0 uses
  %i.pi = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc184.i = call i32 @fputc(i32 10, ptr %i.pi) ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ce, %.lr.ph216.i.us, %bb.ci, %bb.ch, %bb.cf, %bb.cc, %._crit_edge212.i
  %i.pj = load i32, ptr %i.mf, align 8, !tbaa !37
  %i.pk = add i32 %i.pj, -1
  store i32 %i.pk, ptr %i.mf, align 8, !tbaa !37
  br label %bb.cr

bb.cj:                                            ; preds = %bb.by
  %i.pl = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.pm = icmp sgt i32 %i.pl, 0
  br i1 %i.pm, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  %i.pn = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.po = icmp sgt i64 %i.pn, -1
  %i.pp = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.pq = icmp sgt i64 %i.pp, -1
  %or.cond17.i = select i1 %i.po, i1 %i.pq, i1 false
  br i1 %or.cond17.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.pr = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.ps = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.pt = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.pn, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 619, i64 noundef %i.pp, i64 noundef %i.pr, i64 noundef %i.ps, ptr noundef nonnull @.str.314) #12 ; 0 uses
  br label %bb.cr

bb.cm:                                            ; preds = %bb.ck
  %i.pu = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.pv = call i64 @fwrite(ptr nonnull @.str.314, i64 14, i64 1, ptr %i.pu) #13 ; 0 uses
  %i.pw = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc183.i = call i32 @fputc(i32 10, ptr %i.pw) ; 0 uses
  br label %bb.cr

bb.cn:                                            ; preds = %._crit_edge203.i
  %i.px = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.py = icmp sgt i32 %i.px, 0
  br i1 %i.py, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.pz = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.qa = icmp sgt i64 %i.pz, -1
  %i.qb = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.qc = icmp sgt i64 %i.qb, -1
  %or.cond19.i = select i1 %i.qa, i1 %i.qc, i1 false
  br i1 %or.cond19.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qd = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.qe = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.qf = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.pz, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_blocks, i32 noundef 623, i64 noundef %i.qb, i64 noundef %i.qd, i64 noundef %i.qe, ptr noundef nonnull @.str.315) #12 ; 0 uses
  br label %bb.cr

end_hunk_0
