Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5tools_dump?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@h5tools_dump_region_data_points:bb.a
  br label %bb.cr

bb.bi:                                            ; preds = %bb.bd
  store i64 0, ptr %i.a, align 8, !tbaa !22
  %i.id = load i32, ptr %i.al, align 8, !tbaa !37 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %10, i64 568 ; 10 uses
  store i32 %i.id, ptr %i.ie, align 8, !tbaa !37
  %i.if = load i64, ptr %4, align 8, !tbaa !56
  store i64 %i.if, ptr %10, align 8, !tbaa !56
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !110
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 536
  store i32 %i.ih, ptr %i.ii, align 8, !tbaa !110
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 7 uses
  store i32 %.fr229, ptr %i.ij, align 4, !tbaa !88
  %i.ik = call i32 @H5Dread(i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.df, i64 noundef %i.gm, i64 noundef %0, i64 noundef 0, ptr noundef nonnull %i.hp) #12
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.bu, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.bi
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 576 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %10, i64 832 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ir = add nsw i64 %i.g, -1                    ; 2 uses
  %i.is = getelementptr i8, ptr %4, i64 280       ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %10, i64 280 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 1088 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 560 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 3 uses
  store i32 1, ptr %i.im, align 8, !tbaa !38
  store i64 0, ptr %i.in, align 8, !tbaa !24
  %i.ix = add i32 %i.id, 1
  store i32 %i.ix, ptr %i.ie, align 8, !tbaa !37
  %i.iy = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.gm, ptr noundef nonnull %i.b, ptr noundef null) #12
  %i.iz = icmp sgt i32 %i.iy, -1
  br i1 %i.iz, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph115.i
  %i.ja = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %bb.bk, label %bb.bt

bb.bk:                                            ; preds = %bb.bj
  %i.jc = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.jd = icmp sgt i64 %i.jc, -1
  %i.je = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.jf = icmp sgt i64 %i.je, -1
  %or.cond11.peel.i = select i1 %i.jd, i1 %i.jf, i1 false
  br i1 %or.cond11.peel.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.jh = call i64 @fwrite(ptr nonnull @.str.188, i64 32, i64 1, ptr %i.jg) #13 ; 0 uses
  %i.ji = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc.peel.i = call i32 @fputc(i32 10, ptr %i.ji) ; 0 uses
  br label %bb.bt

bb.bm:                                            ; preds = %bb.bk
  %i.jj = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.jk = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.jl = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.jc, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_points, i32 noundef 987, i64 noundef %i.je, i64 noundef %i.jj, i64 noundef %i.jk, ptr noundef nonnull @.str.188) #12 ; 0 uses
  br label %bb.bt

bb.bn:                                            ; preds = %.lr.ph115.i
  %i.jm = load i32, ptr %i.ij, align 4, !tbaa !88
  call void @init_acc_pos(i32 noundef %i.jm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.io, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.iq) #12
  %.not102.not.peel.i = icmp eq i64 %i.ir, 0
  %i.jn = load i32, ptr %i.ij, align 4, !tbaa !88 ; 3 uses
  %.not117.peel.i = icmp eq i32 %i.jn, 0
  br i1 %.not117.peel.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jo = zext i32 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.it, ptr readonly align 8 %i.is, i64 %i.jp, i1 false), !tbaa !22
  store i64 0, ptr %i.iu, align 8, !tbaa !19
  %i.jq = add i32 %i.jn, -1
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !22
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  store i64 0, ptr %i.iu, align 8, !tbaa !19
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %storemerge.i = phi i64 [ %i.jt, %bb.bo ], [ 0, %bb.bp ]
  store i64 %storemerge.i, ptr %i.iv, align 8, !tbaa !111
  store i64 0, ptr %i.a, align 8, !tbaa !22
  call void @h5tools_region_simple_prefix(ptr noundef %i.fw, ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 0, ptr noundef nonnull %i.au, i32 noundef 0) #12
  %i.ju = call ptr @h5tools_str_reset(ptr noundef %5) #12 ; 0 uses
  %i.jv = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str) #12 ; 0 uses
  %i.jw = call ptr @h5tools_str_sprint(ptr noundef %5, ptr noundef nonnull %3, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.df, ptr noundef nonnull %i.hp, ptr noundef nonnull %10) #12 ; 0 uses
  br i1 %.not102.not.peel.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jx = load ptr, ptr %i.iw, align 8, !tbaa !23 ; 2 uses
  %.not103.peel.i = icmp eq ptr %i.jx, null
  %spec.select.peel.i = select i1 %.not103.peel.i, ptr @.str.11, ptr %i.jx
  %i.jy = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select.peel.i) #12 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jz = call zeroext i1 @h5tools_render_region_element(ptr noundef %i.fw, ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %i.a, i64 noundef %7, ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bm, %bb.bl, %bb.bj
  %i.ka = load i32, ptr %i.ie, align 8, !tbaa !37 ; 3 uses
  %i.kb = add i32 %i.ka, -1
  store i32 %i.kb, ptr %i.ie, align 8, !tbaa !37
  %exitcond.peel.not.i = icmp eq i64 %i.g, 1
  br i1 %exitcond.peel.not.i, label %.loopexit.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.bt
  %i.kc = icmp sgt i64 %i.g, 2
  br i1 %i.kc, label %.peel.next.i.preheader.split, label %.loopexit.i.loopexit.peel.begin

.peel.next.i.preheader.split:                     ; preds = %.peel.next.i.preheader
  %i.kd = add nsw i64 %i.g, -2
  br label %.peel.next.i

bb.bu:                                            ; preds = %bb.bi
  %i.ke = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %bb.bv, label %.loopexit.i

bb.bv:                                            ; preds = %bb.bu
  %i.kg = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.kh = icmp sgt i64 %i.kg, -1
  %i.ki = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.kj = icmp sgt i64 %i.ki, -1
  %or.cond9.i = select i1 %i.kh, i1 %i.kj, i1 false
  br i1 %or.cond9.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kk = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.kl = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.km = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.kg, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_points, i32 noundef 940, i64 noundef %i.ki, i64 noundef %i.kk, i64 noundef %i.kl, ptr noundef nonnull @.str.314) #12 ; 0 uses
  br label %.loopexit.i

bb.bx:                                            ; preds = %bb.bv
  %i.kn = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.ko = call i64 @fwrite(ptr nonnull @.str.314, i64 14, i64 1, ptr %i.kn) #13 ; 0 uses
  %i.kp = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc104.i = call i32 @fputc(i32 10, ptr %i.kp) ; 0 uses
  br label %.loopexit.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader.split, %bb.cg
  %i.kq = phi i32 [ %i.lx, %bb.cg ], [ %i.ka, %.peel.next.i.preheader.split ]
  %.080113.i = phi i64 [ %i.lz, %bb.cg ], [ 1, %.peel.next.i.preheader.split ] ; 5 uses
  %.081112.i = phi i64 [ %i.ma, %bb.cg ], [ 1, %.peel.next.i.preheader.split ] ; 5 uses
  store i32 1, ptr %i.im, align 8, !tbaa !38
  store i64 0, ptr %i.in, align 8, !tbaa !24
  store i32 %i.kq, ptr %i.ie, align 8, !tbaa !37
  %i.kr = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.gm, ptr noundef nonnull %i.b, ptr noundef null) #12
  %i.ks = icmp sgt i32 %i.kr, -1
  br i1 %i.ks, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %.peel.next.i
  %i.kt = load i32, ptr %i.ij, align 4, !tbaa !88
  call void @init_acc_pos(i32 noundef %i.kt, ptr noundef nonnull %i.b, ptr noundef nonnull %i.io, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.iq) #12
  %i.ku = load i32, ptr %i.ij, align 4, !tbaa !88 ; 3 uses
  %.not117.i = icmp eq i32 %i.ku, 0
  br i1 %.not117.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kv = zext i32 %i.ku to i64
  %i.kw = shl nuw nsw i64 %i.kv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.it, ptr readonly align 8 %i.is, i64 %i.kw, i1 false), !tbaa !22
  %i.kx = mul i64 %.080113.i, %i.ar
  store i64 %i.kx, ptr %i.iu, align 8, !tbaa !19
  %i.ky = add i32 %i.ku, -1
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !22
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.lc = mul i64 %.080113.i, %i.ar
  store i64 %i.lc, ptr %i.iu, align 8, !tbaa !19
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %storemerge145.i = phi i64 [ %i.lb, %bb.bz ], [ 0, %bb.ca ]
  store i64 %storemerge145.i, ptr %i.iv, align 8, !tbaa !111
  store i64 0, ptr %i.a, align 8, !tbaa !22
  call void @h5tools_region_simple_prefix(ptr noundef %i.fw, ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 0, ptr noundef nonnull %i.au, i32 noundef 0) #12
  %i.ld = call ptr @h5tools_str_reset(ptr noundef %5) #12 ; 0 uses
  %i.le = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.313) #12 ; 0 uses
  %i.lf = mul i64 %.080113.i, %i.ha
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.lf
  %i.lh = call ptr @h5tools_str_sprint(ptr noundef %5, ptr noundef nonnull %3, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.df, ptr noundef nonnull %i.lg, ptr noundef nonnull %10) #12 ; 0 uses
  %i.li = load ptr, ptr %i.iw, align 8, !tbaa !23 ; 2 uses
  %.not103.i = icmp eq ptr %i.li, null
  %spec.select.i = select i1 %.not103.i, ptr @.str.11, ptr %i.li
  %i.lj = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select.i) #12 ; 0 uses
  %i.lk = call zeroext i1 @h5tools_render_region_element(ptr noundef %i.fw, ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %i.a, i64 noundef %7, ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef %.081112.i) #12
  %spec.select110.i = select i1 %i.lk, i64 %.081112.i, i64 0
  br label %bb.cg

bb.cc:                                            ; preds = %.peel.next.i
  %i.ll = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ln = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.lo = icmp sgt i64 %i.ln, -1
  %i.lp = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  %or.cond11.i = select i1 %i.lo, i1 %i.lq, i1 false
  br i1 %or.cond11.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.lr = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.ls = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.lt = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ln, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_points, i32 noundef 987, i64 noundef %i.lp, i64 noundef %i.lr, i64 noundef %i.ls, ptr noundef nonnull @.str.188) #12 ; 0 uses
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.lu = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.lv = call i64 @fwrite(ptr nonnull @.str.188, i64 32, i64 1, ptr %i.lu) #13 ; 0 uses
  %i.lw = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc.i = call i32 @fputc(i32 10, ptr %i.lw)   ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.cb
  %.182.i = phi i64 [ %.081112.i, %bb.cc ], [ %spec.select110.i, %bb.cb ], [ %.081112.i, %bb.ce ], [ %.081112.i, %bb.cf ]
  %i.lx = load i32, ptr %i.ie, align 8, !tbaa !37 ; 3 uses
  %i.ly = add i32 %i.lx, -1
  store i32 %i.ly, ptr %i.ie, align 8, !tbaa !37
  %i.lz = add nuw i64 %.080113.i, 1               ; 2 uses
  %i.ma = add i64 %.182.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %.080113.i, %i.kd
  br i1 %exitcond.not.i, label %.loopexit.i.loopexit.peel.begin, label %.peel.next.i, !llvm.loop !118

.loopexit.i.loopexit.peel.begin:                  ; preds = %bb.cg, %.peel.next.i.preheader
  %i.mb = phi i32 [ %i.ka, %.peel.next.i.preheader ], [ %i.lx, %bb.cg ]
  %i.mc = phi i64 [ 1, %.peel.next.i.preheader ], [ %i.lz, %bb.cg ] ; 4 uses
  %i.md = phi i64 [ 1, %.peel.next.i.preheader ], [ %i.ma, %bb.cg ]
  store i32 1, ptr %i.im, align 8, !tbaa !38
  store i64 0, ptr %i.in, align 8, !tbaa !24
  store i32 %i.mb, ptr %i.ie, align 8, !tbaa !37
  %i.me = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.gm, ptr noundef nonnull %i.b, ptr noundef null) #12
  %i.mf = icmp sgt i32 %i.me, -1
  br i1 %i.mf, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i.loopexit.peel.begin
  %i.mg = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.mh = icmp sgt i32 %i.mg, 0
  br i1 %i.mh, label %bb.ci, label %.loopexit.i.loopexit.peel.next

bb.ci:                                            ; preds = %bb.ch
  %i.mi = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.mj = icmp sgt i64 %i.mi, -1
  %i.mk = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ml = icmp sgt i64 %i.mk, -1
  %or.cond11.i.peel = select i1 %i.mj, i1 %i.ml, i1 false
  br i1 %or.cond11.i.peel, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mm = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.mn = call i64 @fwrite(ptr nonnull @.str.188, i64 32, i64 1, ptr %i.mm) #13 ; 0 uses
  %i.mo = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc.i.peel = call i32 @fputc(i32 10, ptr %i.mo) ; 0 uses
  br label %.loopexit.i.loopexit.peel.next

bb.ck:                                            ; preds = %bb.ci
  %i.mp = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.mq = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.mr = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.mi, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_points, i32 noundef 987, i64 noundef %i.mk, i64 noundef %i.mp, i64 noundef %i.mq, ptr noundef nonnull @.str.188) #12 ; 0 uses
  br label %.loopexit.i.loopexit.peel.next

bb.cl:                                            ; preds = %.loopexit.i.loopexit.peel.begin
  %i.ms = load i32, ptr %i.ij, align 4, !tbaa !88
  call void @init_acc_pos(i32 noundef %i.ms, ptr noundef nonnull %i.b, ptr noundef nonnull %i.io, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.iq) #12
  %.not102.not.i.peel = icmp eq i64 %i.mc, %i.ir
  %i.mt = load i32, ptr %i.ij, align 4, !tbaa !88 ; 3 uses
  %.not117.i.peel = icmp eq i32 %i.mt, 0
  br i1 %.not117.i.peel, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mu = zext i32 %i.mt to i64
  %i.mv = shl nuw nsw i64 %i.mu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.it, ptr readonly align 8 %i.is, i64 %i.mv, i1 false), !tbaa !22
  %i.mw = mul i64 %i.mc, %i.ar
  store i64 %i.mw, ptr %i.iu, align 8, !tbaa !19
  %i.mx = add i32 %i.mt, -1
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.my
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !22
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.nb = mul i64 %i.mc, %i.ar
  store i64 %i.nb, ptr %i.iu, align 8, !tbaa !19
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %storemerge145.i.peel = phi i64 [ %i.na, %bb.cm ], [ 0, %bb.cn ]
  store i64 %storemerge145.i.peel, ptr %i.iv, align 8, !tbaa !111
  store i64 0, ptr %i.a, align 8, !tbaa !22
  call void @h5tools_region_simple_prefix(ptr noundef %i.fw, ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 0, ptr noundef nonnull %i.au, i32 noundef 0) #12
  %i.nc = call ptr @h5tools_str_reset(ptr noundef %5) #12 ; 0 uses
  %i.nd = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.313) #12 ; 0 uses
  %i.ne = mul i64 %i.mc, %i.ha
  %i.nf = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ne
  %i.ng = call ptr @h5tools_str_sprint(ptr noundef %5, ptr noundef nonnull %3, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %i.df, ptr noundef nonnull %i.nf, ptr noundef nonnull %10) #12 ; 0 uses
  br i1 %.not102.not.i.peel, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nh = load ptr, ptr %i.iw, align 8, !tbaa !23 ; 2 uses
  %.not103.i.peel = icmp eq ptr %i.nh, null
  %spec.select.i.peel = select i1 %.not103.i.peel, ptr @.str.11, ptr %i.nh
  %i.ni = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select.i.peel) #12 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.nj = call zeroext i1 @h5tools_render_region_element(ptr noundef %i.fw, ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %i.a, i64 noundef %7, ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef %i.md) #12 ; 0 uses
  br label %.loopexit.i.loopexit.peel.next

.loopexit.i.loopexit.peel.next:                   ; preds = %bb.cq, %bb.ck, %bb.cj, %bb.ch
  %i.nk = load i32, ptr %i.ie, align 8, !tbaa !37
  %i.nl = add i32 %i.nk, -1
  store i32 %i.nl, ptr %i.ie, align 8, !tbaa !37
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.peel.next, %bb.bx, %bb.bw, %bb.bu, %bb.bt
  call void @free(ptr noundef %i.hp) #12
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.i, %bb.bh, %bb.bg, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.ar, %bb.ap
  %.077.i = phi i64 [ %i.gm, %.loopexit.i ], [ %i.gm, %bb.bb ], [ %i.gm, %bb.aw ], [ -1, %bb.ar ], [ -1, %bb.ap ], [ -1, %bb.as ], [ %i.gm, %bb.au ], [ %i.gm, %bb.ax ], [ %i.gm, %bb.az ], [ %i.gm, %bb.bc ], [ %i.gm, %bb.be ], [ %i.gm, %bb.bh ], [ %i.gm, %bb.bg ]
  call void @free(ptr noundef %i.fy) #12
  %i.nm = call i32 @H5Sclose(i64 noundef %.077.i) #12
  %i.nn = icmp slt i32 %i.nm, 0
  %i.no = load i32, ptr @enable_error_stack, align 4
  %i.np = icmp sgt i32 %i.no, 0
  %or.cond225 = select i1 %i.nn, i1 %i.np, i1 false
  br i1 %or.cond225, label %bb.cs, label %h5tools_print_region_data_points.exit

bb.cs:                                            ; preds = %bb.cr
  %i.nq = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.nr = icmp sgt i64 %i.nq, -1
  %i.ns = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.nt = icmp sgt i64 %i.ns, -1
  %or.cond13.i = select i1 %i.nr, i1 %i.nt, i1 false
  br i1 %or.cond13.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.nu = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.nv = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.nw = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.nq, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_region_data_points, i32 noundef 998, i64 noundef %i.ns, i64 noundef %i.nu, i64 noundef %i.nv, ptr noundef nonnull @.str.62) #12 ; 0 uses
  br label %h5tools_print_region_data_points.exit

bb.cu:                                            ; preds = %bb.cs
  %i.nx = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.ny = call i64 @fwrite(ptr nonnull @.str.62, i64 15, i64 1, ptr %i.nx) #13 ; 0 uses
  %i.nz = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc109.i = call i32 @fputc(i32 10, ptr %i.nz) ; 0 uses
  br label %h5tools_print_region_data_points.exit

h5tools_print_region_data_points.exit:            ; preds = %bb.cr, %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.cv

.thread:                                          ; preds = %bb.n, %bb.s, %bb.w, %bb.l, %bb.o, %bb.q, %bb.t, %bb.u, %bb.x, %bb.z, %bb.ac, %bb.ab
  %.0166.ph = phi i64 [ %i.cr, %bb.ab ], [ %i.cr, %bb.ac ], [ %i.cr, %bb.z ], [ %i.cr, %bb.x ], [ %i.cr, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.o ], [ -1, %bb.l ], [ %i.cr, %bb.w ], [ -1, %bb.s ], [ -1, %bb.n ]
  call void @free(ptr noundef %i.au) #12
  br label %bb.da

bb.cv:                                            ; preds = %bb.an, %h5tools_print_region_data_points.exit
  call void @free(ptr noundef %i.au) #12
  %.not226 = icmp eq i64 %i.df, 0
  br i1 %.not226, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oa = call i32 @H5Tclose(i64 noundef %i.df) #12
  %i.ob = icmp slt i32 %i.oa, 0
  %i.oc = load i32, ptr @enable_error_stack, align 4
  %i.od = icmp sgt i32 %i.oc, 0
  %or.cond218 = select i1 %i.ob, i1 %i.od, i1 false
  br i1 %or.cond218, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.oe = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.of = icmp sgt i64 %i.oe, -1
  %i.og = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.oh = icmp sgt i64 %i.og, -1
  %or.cond13 = select i1 %i.of, i1 %i.oh, i1 false
  br i1 %or.cond13, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.oi = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.oj = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.ok = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.oe, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_region_data_points, i32 noundef 1182, i64 noundef %i.og, i64 noundef %i.oi, i64 noundef %i.oj, ptr noundef nonnull @.str.61) #12 ; 0 uses
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.ol = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.om = call i64 @fwrite(ptr nonnull @.str.61, i64 15, i64 1, ptr %i.ol) #13 ; 0 uses
  %i.on = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc206 = call i32 @fputc(i32 10, ptr %i.on)  ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %.thread, %bb.cz, %bb.cy, %bb.cw, %bb.cv
  %.0166223 = phi i64 [ %.0166.ph, %.thread ], [ %i.cr, %bb.cz ], [ %i.cr, %bb.cy ], [ %i.cr, %bb.cw ], [ %i.cr, %bb.cv ] ; 2 uses
  %i.oo = icmp sgt i64 %.0166223, 0
  br i1 %i.oo, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.op = call i32 @H5Tclose(i64 noundef %.0166223) #12
  %i.oq = icmp slt i32 %i.op, 0
  %i.or = load i32, ptr @enable_error_stack, align 4
  %i.os = icmp sgt i32 %i.or, 0
  %or.cond220 = select i1 %i.oq, i1 %i.os, i1 false
  br i1 %or.cond220, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.ot = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.ou = icmp sgt i64 %i.ot, -1
  %i.ov = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ow = icmp sgt i64 %i.ov, -1
  %or.cond15 = select i1 %i.ou, i1 %i.ow, i1 false
  br i1 %or.cond15, label %bb.dd, label %bb.de

end_hunk_0
