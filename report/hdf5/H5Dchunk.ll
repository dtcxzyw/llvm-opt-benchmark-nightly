Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dchunk?download=true
inline.NumInlined: 65
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5D__chunk_io_init:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 200
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !56
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fu, i64 328
  %i.hv = zext i1 %i.ht to i8
  store i8 %i.hv, ptr %i.hu, align 8, !tbaa !120
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fu, i64 336
  store ptr %1, ptr %i.hw, align 8, !tbaa !121
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !128
  %i.hz = add i64 %i.hy, 1
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !128
  br label %H5D__create_piece_map_single.exit.i

H5D__create_piece_map_single.exit.i:              ; preds = %bb.ad, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  br label %H5D__chunk_io_init_selections.exit.thread242

bb.ae:                                            ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  %i.ia = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ib = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !25
  %i.ic = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_io_init_selections, i32 noundef 1465, i64 noundef %i.ia, i64 noundef %i.ib, ptr noundef nonnull @.str.118) #15 ; 0 uses
  br label %.thread179.i

bb.af:                                            ; preds = %bb.i, %bb.h
  %i.id = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 4 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4040
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !300 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ii = call ptr @H5SL_create(i32 noundef 3, ptr noundef null) #15 ; 3 uses
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !23
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4040
  store ptr %i.ii, ptr %i.ik, align 8, !tbaa !300
  %i.il = icmp eq ptr %i.ii, null
  br i1 %i.il, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.im = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.in = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !25
  %i.io = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_io_init_selections, i32 noundef 1473, i64 noundef %i.im, i64 noundef %i.in, ptr noundef nonnull @.str.119) #15 ; 0 uses
  br label %.thread179.i

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.ip = phi ptr [ %i.ii, %bb.ag ], [ %i.ig, %bb.af ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.df, i64 3192
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !129
  %i.ir = getelementptr inbounds nuw i8, ptr %i.df, i64 3216
  store i8 0, ptr %i.ir, align 8, !tbaa !107
  %i.is = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.it = call i32 @H5S_get_select_type(ptr noundef %i.is) #15 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.df, i64 3184 ; 2 uses
  store i32 %i.it, ptr %i.iu, align 8, !tbaa !97
  %i.iv = icmp slt i32 %i.it, 0
  br i1 %i.iv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iw = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ix = load i64, ptr @H5E_BADSELECT_g, align 8, !tbaa !25
  %i.iy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_io_init_selections, i32 noundef 1482, i64 noundef %i.iw, i64 noundef %i.ix, ptr noundef nonnull @.str.120) #15 ; 0 uses
  br label %.thread179.i

bb.ak:                                            ; preds = %bb.ai
  %i.iz = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.ja = call i32 @H5S_get_select_type(ptr noundef %i.iz) #15 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.df, i64 3180
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !96
  %i.jc = icmp slt i32 %i.ja, 0
  br i1 %i.jc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jd = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.je = load i64, ptr @H5E_BADSELECT_g, align 8, !tbaa !25
  %i.jf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_io_init_selections, i32 noundef 1484, i64 noundef %i.jd, i64 noundef %i.je, ptr noundef nonnull @.str.120) #15 ; 0 uses
  br label %.thread179.i

bb.am:                                            ; preds = %bb.ak
  %i.jg = load i32, ptr %i.iu, align 8, !tbaa !97 ; 2 uses
  %switch.i = icmp ugt i32 %i.jg, 1
  br i1 %switch.i, label %bb.an, label %bb.cw

bb.an:                                            ; preds = %bb.am
  %i.jh = icmp eq i32 %i.jg, 3
  br i1 %i.jh, label %bb.ao, label %bb.bt

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #15
  %i.ji = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.jj = trunc nuw i8 %i.ji to i1
  %i.jk = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.jl = trunc nuw i8 %i.jk to i1
  %i.jm = xor i1 %i.jl, true
  %i.jn = select i1 %i.jj, i1 true, i1 %i.jm
  br i1 %i.jn, label %bb.ap, label %.thread160.i, !prof !14

.thread160.i:                                     ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  br label %bb.cy

bb.ap:                                            ; preds = %bb.ao
  %i.jo = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 7 uses
  %i.jp = load i64, ptr %i.dj, align 8, !tbaa !106 ; 2 uses
  %i.jq = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.jr = call i32 @H5S_get_simple_extent_dims(ptr noundef %i.jq, ptr noundef nonnull %i.r, ptr noundef null) #15
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jt = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.ju = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.jv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 1877, i64 noundef %i.jt, i64 noundef %i.ju, ptr noundef nonnull @.str.130) #15 ; 0 uses
  br label %H5D__create_piece_file_map_all.exit.thread.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.s, i8 0, i64 256, i1 false)
  %i.jw = load i32, ptr %i.jo, align 8, !tbaa !100 ; 3 uses
  %.not199.i.i = icmp eq i32 %i.jw, 0
  br i1 %.not199.i.i, label %._crit_edge.i125.i, label %.lr.ph.i120.i

.lr.ph.i120.i:                                    ; preds = %bb.ar
  %i.jx = load ptr, ptr %i.ax, align 8, !tbaa !89
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 3240
  %wide.trip.count.i121.i = zext i32 %i.jw to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.i120.i
  %indvars.iv.i122.i = phi i64 [ 0, %.lr.ph.i120.i ], [ %indvars.iv.next.i123.i, %bb.au ] ; 11 uses
  %.0124188.i.i = phi i32 [ 0, %.lr.ph.i120.i ], [ %.1125.i.i, %bb.au ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.i122.i
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !24
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kd = trunc nuw i64 %indvars.iv.i122.i to i32
  %i.ke = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.kf = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !25
  %i.kg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 1885, i64 noundef %i.ke, i64 noundef %i.kf, ptr noundef nonnull @.str.24, i32 noundef %i.kd) #15 ; 0 uses
  br label %H5D__create_piece_file_map_all.exit.thread.i

bb.au:                                            ; preds = %bb.as
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i122.i
  store i64 0, ptr %i.kh, align 8, !tbaa !25
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i122.i
  store i64 0, ptr %i.ki, align 8, !tbaa !25
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.i122.i
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !25 ; 4 uses
  %i.kl = add i64 %i.kk, -1
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i122.i
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !25
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i122.i
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !25 ; 2 uses
  %i.kp = urem i64 %i.ko, %i.kk                   ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i122.i
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !25
  %i.kr = icmp ult i64 %i.ko, %i.kk               ; 3 uses
  %.sink215.i.i = select i1 %i.kr, i64 %i.kp, i64 %i.kk
  %.sink.i.i = zext i1 %i.kr to i8
  %i.ks = zext i1 %i.kr to i32
  %.1125.i.i = add i32 %.0124188.i.i, %i.ks       ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i122.i
  store i64 %.sink215.i.i, ptr %i.kt, align 8, !tbaa !25
  %i.ku = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i122.i
  store i8 %.sink.i.i, ptr %i.ku, align 1, !tbaa !11
  %indvars.iv.next.i123.i = add nuw nsw i64 %indvars.iv.i122.i, 1 ; 2 uses
  %exitcond.not.i124.i = icmp eq i64 %indvars.iv.next.i123.i, %wide.trip.count.i121.i
  br i1 %exitcond.not.i124.i, label %._crit_edge.i125.i, label %bb.as, !llvm.loop !284

._crit_edge.i125.i:                               ; preds = %bb.au, %bb.ar
  %.0124.lcssa.i.i = phi i32 [ 0, %bb.ar ], [ %.1125.i.i, %bb.au ]
  %i.kv = load ptr, ptr %1, align 8, !tbaa !88
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !23
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 200
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !56
  %i.la = icmp ne i64 %i.kz, 0
  %i.lb = zext i1 %i.la to i8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jo, i64 3240 ; 4 uses
  %i.ld = call ptr @H5S_create_simple(i32 noundef %i.jw, ptr noundef nonnull %i.lc, ptr noundef null) #15 ; 3 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.av, label %.preheader171.i.i

.preheader171.i.i:                                ; preds = %._crit_edge.i125.i
  %.not194.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not194.i.i, label %.thread.thread.i.i, label %.lr.ph198.i.i

.lr.ph198.i.i:                                    ; preds = %.preheader171.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jo, i64 3192
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.lh = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5D_piece_info_t_reg_free_list) #15 ; 2 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %._crit_edge.i, label %.lr.ph.i

bb.av:                                            ; preds = %._crit_edge.i125.i
  %i.lj = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.lk = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !25
  %i.ll = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 1913, i64 noundef %i.lj, i64 noundef %i.lk, ptr noundef nonnull @.str.133) #15 ; 0 uses
  br label %H5D__create_piece_file_map_all.exit.thread.i

._crit_edge.i:                                    ; preds = %.critedge.thread153.i.i, %.lr.ph198.i.i
  %i.lm = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ln = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !25
  %i.lo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 1924, i64 noundef %i.lm, i64 noundef %i.ln, ptr noundef nonnull @.str.134) #15 ; 0 uses
  br label %.thread.thread.i.i

.lr.ph.i:                                         ; preds = %.lr.ph198.i.i, %.critedge.thread153.i.i
  %i.lp = phi ptr [ %i.qb, %.critedge.thread153.i.i ], [ %i.lh, %.lr.ph198.i.i ] ; 16 uses
  %.0131195.i232.i = phi i64 [ %i.ns, %.critedge.thread153.i.i ], [ %i.jp, %.lr.ph198.i.i ]
  %.0128196.i231.i = phi i64 [ %i.nt, %.critedge.thread153.i.i ], [ 0, %.lr.ph198.i.i ] ; 2 uses
  %.2126197.i230.i = phi i32 [ %.8.i.i, %.critedge.thread153.i.i ], [ %.0124.lcssa.i.i, %.lr.ph198.i.i ] ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  store i64 %.0128196.i231.i, ptr %i.lq, align 8, !tbaa !113
  %i.lr = call ptr @H5S_copy(ptr noundef nonnull %i.ld, i1 noundef zeroext true, i1 noundef zeroext false) #15 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 288 ; 3 uses
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !114
  %i.lt = icmp eq ptr %i.lr, null
  br i1 %i.lt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.i
  %i.lu = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.lv = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !25
  %i.lw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 1933, i64 noundef %i.lu, i64 noundef %i.lv, ptr noundef nonnull @.str.135) #15 ; 0 uses
  br label %.thread.thread.i.i

bb.ax:                                            ; preds = %.lr.ph.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 296
  store i32 0, ptr %i.lx, align 8, !tbaa !115
  %.not142.i.i = icmp eq i32 %.2126197.i230.i, 0
  br i1 %.not142.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ly = call i32 @H5S_select_hyperslab(ptr noundef nonnull %i.lr, i32 noundef 0, ptr noundef nonnull %i.s, ptr noundef null, ptr noundef nonnull %i.w, ptr noundef null) #15
  %i.lz = icmp slt i32 %i.ly, 0
  br i1 %i.lz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ma = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.mb = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !25
  %i.mc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 1940, i64 noundef %i.ma, i64 noundef %i.mb, ptr noundef nonnull @.str.136) #15 ; 0 uses
  br label %.thread.thread.i.i

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.md = getelementptr inbounds nuw i8, ptr %i.lp, i64 304
  store ptr null, ptr %i.md, align 8, !tbaa !116
  %i.me = getelementptr inbounds nuw i8, ptr %i.lp, i64 312
  store i32 0, ptr %i.me, align 8, !tbaa !117
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lp, i64 24 ; 2 uses
  %i.mg = load i32, ptr %i.jo, align 8, !tbaa !100
  %i.mh = zext i32 %i.mg to i64
  %i.mi = shl nuw nsw i64 %i.mh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mf, ptr nonnull align 16 %i.v, i64 %i.mi, i1 false)
  %i.mj = load i32, ptr %i.jo, align 8, !tbaa !100
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.mk
  store i64 0, ptr %i.ml, align 8, !tbaa !25
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lp, i64 336
  store ptr %1, ptr %i.mm, align 8, !tbaa !121
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lp, i64 316
  store i8 0, ptr %i.mn, align 4, !tbaa !118
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lp, i64 320
  store i64 0, ptr %i.mo, align 8, !tbaa !119
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lp, i64 328
  store i8 %i.lb, ptr %i.mp, align 8, !tbaa !120
  %i.mq = load ptr, ptr %i.lf, align 8, !tbaa !129
  %i.mr = call i32 @H5SL_insert(ptr noundef %i.mq, ptr noundef nonnull %i.lp, ptr noundef nonnull %i.lq) #15
  %i.ms = icmp slt i32 %i.mr, 0
  br i1 %i.ms, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lp, i64 304
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lp, i64 312
  %i.mv = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.mw = trunc nuw i8 %i.mv to i1
  %i.mx = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.my = trunc nuw i8 %i.mx to i1
  %i.mz = xor i1 %i.my, true
  %i.na = select i1 %i.mw, i1 true, i1 %i.mz
  br i1 %i.na, label %bb.bc, label %H5D__free_piece_info.exit.i.i, !prof !14

bb.bc:                                            ; preds = %bb.bb
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lp, i64 296
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !115
  %.not.i.i.i = icmp eq i32 %i.nc, 0
  %i.nd = load ptr, ptr %i.ls, align 8, !tbaa !114 ; 2 uses
  br i1 %.not.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ne = call i32 @H5S_close(ptr noundef %i.nd) #15 ; 0 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.nf = call i32 @H5S_select_all(ptr noundef %i.nd, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ng = load i32, ptr %i.mu, align 8, !tbaa !117
  %.not8.i.i.i = icmp eq i32 %i.ng, 0
  br i1 %.not8.i.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.nh = load ptr, ptr %i.mt, align 8, !tbaa !116 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.nh, null
  br i1 %.not9.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ni = call i32 @H5S_close(ptr noundef nonnull %i.nh) #15 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.nj = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5D_piece_info_t_reg_free_list, ptr noundef nonnull %i.lp) #15 ; 0 uses
  br label %H5D__free_piece_info.exit.i.i

H5D__free_piece_info.exit.i.i:                    ; preds = %bb.bi, %bb.bb
  %i.nk = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.nl = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !25
  %i.nm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 1962, i64 noundef %i.nk, i64 noundef %i.nl, ptr noundef nonnull @.str.137) #15 ; 0 uses
  br label %.thread.thread.i.i

bb.bj:                                            ; preds = %bb.ba
  %i.nn = load i64, ptr %i.lg, align 8, !tbaa !128
  %i.no = add i64 %i.nn, 1
  store i64 %i.no, ptr %i.lg, align 8, !tbaa !128
  %i.np = load ptr, ptr %i.ls, align 8, !tbaa !114
  %i.nq = call i64 @H5S_get_select_npoints(ptr noundef %i.np) #15 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i64 %i.nq, ptr %i.nr, align 8, !tbaa !112
  %i.ns = sub i64 %.0131195.i232.i, %i.nq         ; 2 uses
  %.not143.i.i = icmp eq i64 %i.ns, 0
  br i1 %.not143.i.i, label %.thread.thread.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nt = add i64 %.0128196.i231.i, 1
  %i.nu = load i32, ptr %i.jo, align 8, !tbaa !100 ; 3 uses
  %i.nv = add nsw i32 %i.nu, -1                   ; 2 uses
  %i.nw = sext i32 %i.nv to i64                   ; 5 uses
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.nw
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !25 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.nw ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !25
  %i.ob = add i64 %i.oa, %i.ny                    ; 2 uses
  store i64 %i.ob, ptr %i.nz, align 8, !tbaa !25
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.nw ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !25
  %i.oe = add i64 %i.od, 1
  store i64 %i.oe, ptr %i.oc, align 8, !tbaa !25
  %i.of = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.nw ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !25
  %i.oh = add i64 %i.og, %i.ny
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !25
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.nw
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !25
  %.not144.i.i = icmp ult i64 %i.ob, %i.oj
  br i1 %.not144.i.i, label %.critedge.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.bk
  %i.ok = sext i32 %i.nu to i64
  %i.ol = add nsw i64 %i.ok, -1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bo, %.preheader.preheader.i.i
  %i.om = phi i64 [ %i.ol, %.preheader.preheader.i.i ], [ %indvars.iv.next213.i.i, %bb.bo ] ; 9 uses
  %.3127.i.i = phi i32 [ %.2126197.i230.i, %.preheader.preheader.i.i ], [ %.4.i.i, %bb.bo ] ; 3 uses
  %5 = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.om
  store i64 0, ptr %5, align 8, !tbaa !25
  %i.on = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.om
  store i64 0, ptr %i.on, align 8, !tbaa !25
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.om
  %6 = load i64, ptr %i.oo, align 8, !tbaa !25    ; 2 uses
  %i.op = add i64 %6, -1                          ; 2 uses
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.om
  store i64 %i.op, ptr %i.oq, align 8, !tbaa !25
  %i.or = getelementptr inbounds i8, ptr %i.y, i64 %i.om ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.preheader.i.i
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.om
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !25
  %i.ow = icmp ult i64 %i.op, %i.ov
  br i1 %i.ow, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.om
  store i64 %6, ptr %i.ox, align 8, !tbaa !25
  store i8 0, ptr %i.or, align 1, !tbaa !11
  %i.oy = add i32 %.3127.i.i, -1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %.preheader.i.i
  %.4.i.i = phi i32 [ %i.oy, %bb.bm ], [ %.3127.i.i, %bb.bl ], [ %.3127.i.i, %.preheader.i.i ] ; 3 uses
  %i.oz = icmp sgt i64 %i.om, 0
  br i1 %i.oz, label %bb.bo, label %.critedge.thread153.i.i

bb.bo:                                            ; preds = %bb.bn
  %indvars.iv.next213.i.i = add nsw i64 %i.om, -1 ; 7 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next213.i.i
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !25 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next213.i.i ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !25
  %i.pe = add i64 %i.pd, %i.pb                    ; 3 uses
  store i64 %i.pe, ptr %i.pc, align 8, !tbaa !25
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next213.i.i ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !25
  %i.ph = add i64 %i.pg, 1
  store i64 %i.ph, ptr %i.pf, align 8, !tbaa !25
  %i.pi = add i64 %i.pb, -1
  %i.pj = add i64 %i.pi, %i.pe
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next213.i.i
  store i64 %i.pj, ptr %i.pk, align 8, !tbaa !25
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next213.i.i
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !25
  %.not145.i.i = icmp ult i64 %i.pe, %i.pm
  br i1 %.not145.i.i, label %.critedge.thread.loopexit.i.i, label %.preheader.i.i, !llvm.loop !285

.critedge.i.i:                                    ; preds = %bb.bk
  %i.pn = icmp sgt i32 %i.nu, 0
  br i1 %i.pn, label %.critedge.thread.i.i, label %.critedge.thread153.i.i

.critedge.thread.loopexit.i.i:                    ; preds = %bb.bo
  %i.po = trunc nuw nsw i64 %indvars.iv.next213.i.i to i32
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.critedge.thread.loopexit.i.i, %.critedge.i.i
  %.1152.i.i = phi i32 [ %i.nv, %.critedge.i.i ], [ %i.po, %.critedge.thread.loopexit.i.i ]
  %.5151.i.i = phi i32 [ %.2126197.i230.i, %.critedge.i.i ], [ %.4.i.i, %.critedge.thread.loopexit.i.i ] ; 3 uses
  %i.pp = zext nneg i32 %.1152.i.i to i64         ; 5 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.pp ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %.critedge.thread153.i.i, label %bb.bp

bb.bp:                                            ; preds = %.critedge.thread.i.i
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.pp
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !25
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.pp
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !25
  %.not146.i.i = icmp ugt i64 %i.pu, %i.pw
  br i1 %.not146.i.i, label %.critedge.thread153.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.pp
  %i.py = load i64, ptr %i.px, align 8, !tbaa !25
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.pp
  store i64 %i.py, ptr %i.pz, align 8, !tbaa !25
  store i8 1, ptr %i.pq, align 1, !tbaa !11
  %i.qa = add i32 %.5151.i.i, 1
  br label %.critedge.thread153.i.i

.critedge.thread153.i.i:                          ; preds = %bb.bn, %bb.bq, %bb.bp, %.critedge.thread.i.i, %.critedge.i.i
  %.8.i.i = phi i32 [ %.5151.i.i, %bb.bp ], [ %.5151.i.i, %.critedge.thread.i.i ], [ %.2126197.i230.i, %.critedge.i.i ], [ %i.qa, %bb.bq ], [ %.4.i.i, %bb.bn ]
  %i.qb = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5D_piece_info_t_reg_free_list) #15 ; 2 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %._crit_edge.i, label %.lr.ph.i

.thread.thread.i.i:                               ; preds = %bb.bj, %H5D__free_piece_info.exit.i.i, %bb.az, %bb.aw, %._crit_edge.i, %.preheader171.i.i
  %i.qd = phi i1 [ true, %H5D__free_piece_info.exit.i.i ], [ true, %bb.aw ], [ true, %bb.az ], [ true, %._crit_edge.i ], [ false, %.preheader171.i.i ], [ false, %bb.bj ]
  %i.qe = call i32 @H5S_close(ptr noundef nonnull %i.ld) #15
  %i.qf = icmp slt i32 %i.qe, 0
  br i1 %i.qf, label %bb.br, label %H5D__create_piece_file_map_all.exit.i

bb.br:                                            ; preds = %.thread.thread.i.i
  %i.qg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.qh = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !25
  %i.qi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_all, i32 noundef 2041, i64 noundef %i.qg, i64 noundef %i.qh, ptr noundef nonnull @.str.138) #15 ; 0 uses
  br label %H5D__create_piece_file_map_all.exit.thread.i

H5D__create_piece_file_map_all.exit.thread.i:     ; preds = %bb.br, %bb.av, %bb.at, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  br label %bb.bs

H5D__create_piece_file_map_all.exit.i:            ; preds = %.thread.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  br i1 %i.qd, label %bb.bs, label %bb.cy

bb.bs:                                            ; preds = %H5D__create_piece_file_map_all.exit.i, %H5D__create_piece_file_map_all.exit.thread.i
  %i.qj = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.qk = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !25
  %i.ql = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_io_init_selections, i32 noundef 1497, i64 noundef %i.qj, i64 noundef %i.qk, ptr noundef nonnull @.str.121) #15 ; 0 uses
  br label %.thread179.i

bb.bt:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  store ptr null, ptr %i.j, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  %i.qm = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.qn = trunc nuw i8 %i.qm to i1
  %i.qo = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.qp = trunc nuw i8 %i.qo to i1
  %i.qq = xor i1 %i.qp, true
  %i.qr = select i1 %i.qn, i1 true, i1 %i.qq
  br i1 %i.qr, label %bb.bu, label %H5D__create_piece_file_map_hyper.exit.i, !prof !14

bb.bu:                                            ; preds = %bb.bt
  %i.qs = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 6 uses
  %i.qt = load i64, ptr %i.dj, align 8, !tbaa !106 ; 2 uses
  %i.qu = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.qv = call i32 @H5S_get_select_bounds(ptr noundef %i.qu, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #15
  %i.qw = icmp slt i32 %i.qv, 0
  br i1 %i.qw, label %bb.bv, label %.preheader126.i.i

.preheader126.i.i:                                ; preds = %bb.bu
  %i.qx = load i32, ptr %i.qs, align 8, !tbaa !100 ; 3 uses
  %.not144.i128.i = icmp eq i32 %i.qx, 0
  %.pre.i130.i = load ptr, ptr %i.ax, align 8, !tbaa !89 ; 2 uses
  br i1 %.not144.i128.i, label %._crit_edge.i136.i, label %.lr.ph.i131.i

.lr.ph.i131.i:                                    ; preds = %.preheader126.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %.pre.i130.i, i64 32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qs, i64 3240
  %wide.trip.count.i132.i = zext i32 %i.qx to i64
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ra = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.rb = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.rc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2090, i64 noundef %i.ra, i64 noundef %i.rb, ptr noundef nonnull @.str.130) #15 ; 0 uses
  br label %.thread.i.i

bb.bw:                                            ; preds = %bb.by, %.lr.ph.i131.i
  %indvars.iv.i133.i = phi i64 [ 0, %.lr.ph.i131.i ], [ %indvars.iv.next.i134.i, %bb.by ] ; 10 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.i133.i
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !24 ; 3 uses
  %i.rf = icmp eq i64 %i.re, 0
  br i1 %i.rf, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rg = trunc nuw i64 %indvars.iv.i133.i to i32
  %i.rh = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ri = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !25
  %i.rj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2096, i64 noundef %i.rh, i64 noundef %i.ri, ptr noundef nonnull @.str.24, i32 noundef %i.rg) #15 ; 0 uses
  br label %.thread.i.i

bb.by:                                            ; preds = %bb.bw
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i133.i
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !25
  %i.rm = udiv i64 %i.rl, %i.re                   ; 3 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i133.i
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !25
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i133.i
  store i64 %i.rm, ptr %i.ro, align 8, !tbaa !25
  %i.rp = mul i64 %i.rm, %i.re                    ; 3 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i133.i
  store i64 %i.rp, ptr %i.rq, align 8, !tbaa !25
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i133.i
  store i64 %i.rp, ptr %i.rr, align 8, !tbaa !25
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv.i133.i
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !25
  %i.ru = add i64 %i.rp, -1
  %i.rv = add i64 %i.ru, %i.rt
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i133.i
  store i64 %i.rv, ptr %i.rw, align 8, !tbaa !25
  %indvars.iv.next.i134.i = add nuw nsw i64 %indvars.iv.i133.i, 1 ; 2 uses
  %exitcond.not.i135.i = icmp eq i64 %indvars.iv.next.i134.i, %wide.trip.count.i132.i
  br i1 %exitcond.not.i135.i, label %._crit_edge.i136.i, label %bb.bw, !llvm.loop !286

._crit_edge.i136.i:                               ; preds = %bb.by, %.preheader126.i.i
  %i.rx = getelementptr inbounds nuw i8, ptr %.pre.i130.i, i64 856
  %i.ry = call i64 @H5VM_array_offset_pre(i32 noundef %i.qx, ptr noundef nonnull %i.rx, ptr noundef nonnull %i.q) #15
  %i.rz = load ptr, ptr %1, align 8, !tbaa !88
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !23
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 200
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !56
  %i.se = icmp ne i64 %i.sd, 0
  %i.sf = zext i1 %i.se to i8
  %.not138.i.i = icmp eq i64 %i.qt, 0
  br i1 %.not138.i.i, label %H5D__create_piece_file_map_hyper.exit.i, label %.lr.ph142.i.i

.lr.ph142.i.i:                                    ; preds = %._crit_edge.i136.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qs, i64 3240 ; 6 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.qs, i64 3192
  br label %bb.bz

bb.bz:                                            ; preds = %.backedge, %.lr.ph142.i.i
  %.0107140.i.i = phi i64 [ %i.ry, %.lr.ph142.i.i ], [ %.0107140.i.i.be, %.backedge ] ; 2 uses
  %.0109139.i.i = phi i64 [ %i.qt, %.lr.ph142.i.i ], [ %.2111.i.i, %.backedge ] ; 2 uses
  %i.sj = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.sk = call i32 @H5S_select_intersect_block(ptr noundef %i.sj, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #15
  %i.sl = icmp eq i32 %i.sk, 1
  br i1 %i.sl, label %bb.ca, label %bb.cs

bb.ca:                                            ; preds = %bb.bz
  %i.sm = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.sn = call i32 @H5S_combine_hyperslab(ptr noundef %i.sm, i32 noundef 2, ptr noundef nonnull %i.n, ptr noundef null, ptr noundef nonnull %i.sg, ptr noundef null, ptr noundef nonnull %i.j) #15
  %i.so = icmp slt i32 %i.sn, 0
  br i1 %i.so, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.sp = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.sq = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !25
  %i.sr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2121, i64 noundef %i.sp, i64 noundef %i.sq, ptr noundef nonnull @.str.139) #15 ; 0 uses
  br label %.thread.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.ss = load ptr, ptr %i.j, align 8, !tbaa !130
  %i.st = call i32 @H5S_set_extent_real(ptr noundef %i.ss, ptr noundef nonnull %i.sg) #15
  %i.su = icmp slt i32 %i.st, 0
  br i1 %i.su, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.sv = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.sw = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !25
  %i.sx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2125, i64 noundef %i.sv, i64 noundef %i.sw, ptr noundef nonnull @.str.115) #15 ; 0 uses
  br label %.thread.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.sy = load ptr, ptr %i.j, align 8, !tbaa !130
  %i.sz = call i32 @H5S_select_adjust_u(ptr noundef %i.sy, ptr noundef nonnull %i.n) #15
  %i.ta = icmp slt i32 %i.sz, 0
  br i1 %i.ta, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.tb = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.tc = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !25
  %i.td = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2129, i64 noundef %i.tb, i64 noundef %i.tc, ptr noundef nonnull @.str.132) #15 ; 0 uses
  br label %.thread.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.te = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5D_piece_info_t_reg_free_list) #15 ; 17 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.tg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.th = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !25
  %i.ti = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2135, i64 noundef %i.tg, i64 noundef %i.th, ptr noundef nonnull @.str.117) #15 ; 0 uses
  br label %.thread.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  store i64 %.0107140.i.i, ptr %i.tj, align 8, !tbaa !113
  %i.tk = load ptr, ptr %i.j, align 8, !tbaa !130
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 288 ; 3 uses
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !114
  %i.tm = getelementptr inbounds nuw i8, ptr %i.te, i64 296
  store i32 0, ptr %i.tm, align 8, !tbaa !115
  store ptr null, ptr %i.j, align 8, !tbaa !130
  %i.tn = getelementptr inbounds nuw i8, ptr %i.te, i64 304
  store ptr null, ptr %i.tn, align 8, !tbaa !116
  %i.to = getelementptr inbounds nuw i8, ptr %i.te, i64 312
  store i32 0, ptr %i.to, align 8, !tbaa !117
  %i.tp = getelementptr inbounds nuw i8, ptr %i.te, i64 24 ; 2 uses
  %i.tq = load i32, ptr %i.qs, align 8, !tbaa !100
  %i.tr = zext i32 %i.tq to i64                   ; 2 uses
  %i.ts = shl nuw nsw i64 %i.tr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tp, ptr nonnull align 16 %i.q, i64 %i.ts, i1 false)
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.tr
  store i64 0, ptr %i.tt, align 8, !tbaa !25
  %i.tu = getelementptr inbounds nuw i8, ptr %i.te, i64 336
  store ptr %1, ptr %i.tu, align 8, !tbaa !121
  %i.tv = getelementptr inbounds nuw i8, ptr %i.te, i64 316
  store i8 0, ptr %i.tv, align 4, !tbaa !118
  %i.tw = getelementptr inbounds nuw i8, ptr %i.te, i64 320
  store i64 0, ptr %i.tw, align 8, !tbaa !119
  %i.tx = getelementptr inbounds nuw i8, ptr %i.te, i64 328
  store i8 %i.sf, ptr %i.tx, align 8, !tbaa !120
  %i.ty = load i64, ptr %i.sh, align 8, !tbaa !128
  %i.tz = add i64 %i.ty, 1
  store i64 %i.tz, ptr %i.sh, align 8, !tbaa !128
  %i.ua = load ptr, ptr %i.si, align 8, !tbaa !129
  %i.ub = call i32 @H5SL_insert(ptr noundef %i.ua, ptr noundef nonnull %i.te, ptr noundef nonnull %i.tj) #15
  %i.uc = icmp slt i32 %i.ub, 0
  br i1 %i.uc, label %bb.cj, label %bb.cr

bb.cj:                                            ; preds = %bb.ci
  %i.ud = getelementptr inbounds nuw i8, ptr %i.te, i64 304
  %i.ue = getelementptr inbounds nuw i8, ptr %i.te, i64 312
  %i.uf = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ug = trunc nuw i8 %i.uf to i1
  %i.uh = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.ui = trunc nuw i8 %i.uh to i1
  %i.uj = xor i1 %i.ui, true
  %i.uk = select i1 %i.ug, i1 true, i1 %i.uj
  br i1 %i.uk, label %bb.ck, label %H5D__free_piece_info.exit.i140.i, !prof !14

bb.ck:                                            ; preds = %bb.cj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.te, i64 296
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !115
  %.not.i.i142.i = icmp eq i32 %i.um, 0
  %i.un = load ptr, ptr %i.tl, align 8, !tbaa !114 ; 2 uses
  br i1 %.not.i.i142.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.uo = call i32 @H5S_close(ptr noundef %i.un) #15 ; 0 uses
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.up = call i32 @H5S_select_all(ptr noundef %i.un, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.uq = load i32, ptr %i.ue, align 8, !tbaa !117
  %.not8.i.i143.i = icmp eq i32 %i.uq, 0
  br i1 %.not8.i.i143.i, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.ur = load ptr, ptr %i.ud, align 8, !tbaa !116 ; 2 uses
  %.not9.i.i144.i = icmp eq ptr %i.ur, null
  br i1 %.not9.i.i144.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.us = call i32 @H5S_close(ptr noundef nonnull %i.ur) #15 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.ut = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5D_piece_info_t_reg_free_list, ptr noundef nonnull %i.te) #15 ; 0 uses
  br label %H5D__free_piece_info.exit.i140.i

H5D__free_piece_info.exit.i140.i:                 ; preds = %bb.cq, %bb.cj
  %i.uu = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.uv = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !25
  %i.uw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2170, i64 noundef %i.uu, i64 noundef %i.uv, ptr noundef nonnull @.str.140) #15 ; 0 uses
  br label %.thread.i.i

bb.cr:                                            ; preds = %bb.ci
  %i.ux = load ptr, ptr %i.tl, align 8, !tbaa !114
  %i.uy = call i64 @H5S_get_select_npoints(ptr noundef %i.ux) #15 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !112
  %i.va = sub i64 %.0109139.i.i, %i.uy            ; 2 uses
  %i.vb = icmp eq i64 %i.va, 0
  br i1 %i.vb, label %H5D__create_piece_file_map_hyper.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.bz
  %.2111.i.i = phi i64 [ %.0109139.i.i, %bb.bz ], [ %i.va, %bb.cr ]
  %i.vc = add i64 %.0107140.i.i, 1
  %i.vd = load i32, ptr %i.qs, align 8, !tbaa !100 ; 4 uses
  %i.ve = add nsw i32 %i.vd, -1
  %i.vf = sext i32 %i.ve to i64                   ; 5 uses
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %i.vf
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !25 ; 2 uses
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.vf ; 2 uses
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !25
  %i.vk = add i64 %i.vj, %i.vh                    ; 2 uses
  store i64 %i.vk, ptr %i.vi, align 8, !tbaa !25
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.vf ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !25
  %i.vn = add i64 %i.vm, %i.vh
  store i64 %i.vn, ptr %i.vl, align 8, !tbaa !25
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.vf ; 2 uses
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !25
  %i.vq = add i64 %i.vp, 1
  store i64 %i.vq, ptr %i.vo, align 8, !tbaa !25
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.vf
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !25
  %i.vt = icmp ugt i64 %i.vk, %i.vs
  br i1 %i.vt, label %.preheader.preheader.i137.i, label %.backedge

.preheader.preheader.i137.i:                      ; preds = %bb.cs
  %i.vu = sext i32 %i.vd to i64
  %i.vv = add nsw i64 %i.vu, -1                   ; 7 uses
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.vv
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !25
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.vv
  store i64 %i.vx, ptr %i.vy, align 8, !tbaa !25
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.vv
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !25 ; 2 uses
  %i.wb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.vv
  store i64 %i.wa, ptr %i.wb, align 8, !tbaa !25
  %7 = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %i.vv
  %8 = load i64, ptr %7, align 8, !tbaa !25
  %i.wc = add i64 %i.wa, -1
  %i.wd = add i64 %i.wc, %8
  %i.we = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.vv
  store i64 %i.wd, ptr %i.we, align 8, !tbaa !25
  %i.wf = icmp sgt i32 %i.vd, 1
  br i1 %i.wf, label %.lr.ph311, label %.critedge.i139.i

.preheader.i138.i:                                ; preds = %.lr.ph311
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next150.i.i
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !25
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next150.i.i
  store i64 %i.wh, ptr %i.wi, align 8, !tbaa !25
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next150.i.i
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !25 ; 2 uses
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next150.i.i
  store i64 %i.wk, ptr %i.wl, align 8, !tbaa !25
  %9 = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %indvars.iv.next150.i.i
  %10 = load i64, ptr %9, align 8, !tbaa !25
  %i.wm = add i64 %i.wk, -1
  %i.wn = add i64 %i.wm, %10
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next150.i.i
  store i64 %i.wn, ptr %i.wo, align 8, !tbaa !25
  %i.wp = icmp sgt i64 %indvars.iv149.i.i310, 1
  br i1 %i.wp, label %.lr.ph311, label %.critedge.i139.i, !llvm.loop !287

.lr.ph311:                                        ; preds = %.preheader.preheader.i137.i, %.preheader.i138.i
  %indvars.iv149.i.i310 = phi i64 [ %indvars.iv.next150.i.i, %.preheader.i138.i ], [ %i.vv, %.preheader.preheader.i137.i ] ; 2 uses
  %indvars.iv.next150.i.i = add nsw i64 %indvars.iv149.i.i310, -1 ; 12 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next150.i.i ; 2 uses
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !25
  %i.ws = add i64 %i.wr, 1
  store i64 %i.ws, ptr %i.wq, align 8, !tbaa !25
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %indvars.iv.next150.i.i
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !25 ; 2 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next150.i.i ; 2 uses
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !25
  %i.wx = add i64 %i.ww, %i.wu                    ; 3 uses
  store i64 %i.wx, ptr %i.wv, align 8, !tbaa !25
  %i.wy = add i64 %i.wu, -1
  %i.wz = add i64 %i.wy, %i.wx
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next150.i.i
  store i64 %i.wz, ptr %i.xa, align 8, !tbaa !25
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next150.i.i
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !25
  %i.xd = icmp ugt i64 %i.wx, %i.xc
  br i1 %i.xd, label %.preheader.i138.i, label %..critedge.i139.i_crit_edge, !llvm.loop !287

..critedge.i139.i_crit_edge:                      ; preds = %.lr.ph311
  br label %.critedge.i139.i, !llvm.loop !287

.critedge.i139.i:                                 ; preds = %.preheader.i138.i, %..critedge.i139.i_crit_edge, %.preheader.preheader.i137.i
  %i.xe = load ptr, ptr %i.ax, align 8, !tbaa !89
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 856
  %i.xg = call i64 @H5VM_array_offset_pre(i32 noundef %i.vd, ptr noundef nonnull %i.xf, ptr noundef nonnull %i.q) #15
  br label %.backedge

.backedge:                                        ; preds = %.critedge.i139.i, %bb.cs
  %.0107140.i.i.be = phi i64 [ %i.xg, %.critedge.i139.i ], [ %i.vc, %bb.cs ]
  br label %bb.bz

.thread.i.i:                                      ; preds = %H5D__free_piece_info.exit.i140.i, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bx, %bb.bv
  %i.xh = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i141.i = icmp eq ptr %i.xh, null
  br i1 %.not.i141.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %.thread.i.i
  %i.xi = call i32 @H5S_close(ptr noundef nonnull %i.xh) #15
  %i.xj = icmp slt i32 %i.xi, 0
  br i1 %i.xj, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.xk = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.xl = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !25
  %i.xm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_file_map_hyper, i32 noundef 2225, i64 noundef %i.xk, i64 noundef %i.xl, ptr noundef nonnull @.str.138) #15 ; 0 uses
  br label %bb.cv

H5D__create_piece_file_map_hyper.exit.i:          ; preds = %bb.cr, %._crit_edge.i136.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  %i.xn = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.xo = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !25
  %i.xp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_io_init_selections, i32 noundef 1504, i64 noundef %i.xn, i64 noundef %i.xo, ptr noundef nonnull @.str.121) #15 ; 0 uses
  br label %.thread179.i

bb.cw:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %0, ptr %2, align 8, !tbaa !133
  %i.xq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.xq, align 8, !tbaa !134
  store i32 1, ptr %3, align 8, !tbaa !302
  %i.xr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @H5D__piece_file_cb, ptr %i.xr, align 8, !tbaa !24
  %i.xs = load ptr, ptr %i.id, align 8, !tbaa !23
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !135
  %i.xv = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.xw = call i32 @H5S_select_iterate(ptr noundef nonnull %i.ac, ptr noundef %i.xu, ptr noundef %i.xv, ptr noundef nonnull %3, ptr noundef nonnull %2) #15
  %i.xx = icmp sgt i32 %i.xw, -1
  br i1 %i.xx, label %.thread161.i, label %bb.cx

.thread161.i:                                     ; preds = %bb.cw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.df, i64 3224
  store i64 -1, ptr %i.xy, align 8, !tbaa !93
  %i.xz = getelementptr inbounds nuw i8, ptr %i.df, i64 3232
  store ptr null, ptr %i.xz, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.critedge.i

bb.cx:                                            ; preds = %bb.cw
  %i.ya = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.yb = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !25
  %i.yc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_io_init_selections, i32 noundef 1519, i64 noundef %i.ya, i64 noundef %i.yb, ptr noundef nonnull @.str.121) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.thread179.i

bb.cy:                                            ; preds = %H5D__create_piece_file_map_hyper.exit.i, %H5D__create_piece_file_map_all.exit.i, %.thread160.i
  %i.yd = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.ye = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.yf = call i32 @H5S_select_shape_same(ptr noundef %i.yd, ptr noundef %i.ye) #15
  %i.yg = icmp eq i32 %i.yf, 1
  br i1 %i.yg, label %bb.cz, label %bb.dr

bb.cz:                                            ; preds = %bb.cy
  %i.yh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr null, ptr %i.yh, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.yi = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.yj = trunc nuw i8 %i.yi to i1
  %i.yk = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.yl = trunc nuw i8 %i.yk to i1
  %i.ym = xor i1 %i.yl, true
  %i.yn = select i1 %i.yj, i1 true, i1 %i.ym
  br i1 %i.yn, label %bb.da, label %H5D__create_piece_mem_map_hyper.exit.thread.i, !prof !14

bb.da:                                            ; preds = %bb.cz
  %i.yo = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 6 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 3192 ; 3 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !129
  %i.yr = call i64 @H5SL_count(ptr noundef %i.yq) #15
  %i.ys = icmp eq i64 %i.yr, 1
  br i1 %i.ys, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yt = load ptr, ptr %i.yp, align 8, !tbaa !129
  %i.yu = call ptr @H5SL_first(ptr noundef %i.yt) #15
  %i.yv = call ptr @H5SL_item(ptr noundef %i.yu) #15 ; 2 uses
  %i.yw = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 304
  store ptr %i.yw, ptr %i.yx, align 8, !tbaa !116
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 312
  store i32 1, ptr %i.yy, align 8, !tbaa !117
  br label %H5D__create_piece_mem_map_hyper.exit.thread.i

bb.dc:                                            ; preds = %bb.da
  %i.yz = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.za = call i32 @H5S_get_select_bounds(ptr noundef %i.yz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  %i.zb = icmp slt i32 %i.za, 0
  br i1 %i.zb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.zc = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.zd = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.ze = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__create_piece_mem_map_hyper, i32 noundef 2284, i64 noundef %i.zc, i64 noundef %i.zd, ptr noundef nonnull @.str.130) #15 ; 0 uses
  br label %bb.dq

bb.de:                                            ; preds = %bb.dc
  %i.zf = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.zg = call i32 @H5S_get_select_bounds(ptr noundef %i.zf, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #15
  %i.zh = icmp slt i32 %i.zg, 0
  br i1 %i.zh, label %bb.df, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %bb.de
  %i.zi = load i32, ptr %i.yo, align 8, !tbaa !100 ; 3 uses
  %.not85.i.i = icmp eq i32 %i.zi, 0
  br i1 %.not85.i.i, label %._crit_edge.i150.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader69.i.i
  %wide.trip.count.i145.i = zext i32 %i.zi to i64 ; 3 uses
  %min.iters.check314 = icmp ult i32 %i.zi, 4
  br i1 %min.iters.check314, label %.lr.ph.i146.i.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec316 = and i64 %wide.trip.count.i145.i, 4294967292 ; 3 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next323, %vector.body317 ] ; 4 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index318 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %wide.load319 = load <2 x i64>, ptr %i.zj, align 16, !tbaa !25
  %wide.load320 = load <2 x i64>, ptr %i.zk, align 16, !tbaa !25
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index318 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %wide.load321 = load <2 x i64>, ptr %i.zl, align 16, !tbaa !25
  %wide.load322 = load <2 x i64>, ptr %i.zm, align 16, !tbaa !25
  %i.zn = sub nsw <2 x i64> %wide.load319, %wide.load321
  %i.zo = sub nsw <2 x i64> %wide.load320, %wide.load322
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index318 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store <2 x i64> %i.zn, ptr %i.zp, align 16, !tbaa !25
  store <2 x i64> %i.zo, ptr %i.zq, align 16, !tbaa !25
  %index.next323 = add nuw i64 %index318, 4       ; 2 uses
  %i.zr = icmp eq i64 %index.next323, %n.vec316
  br i1 %i.zr, label %middle.block324, label %vector.body317, !llvm.loop !288

middle.block324:                                  ; preds = %vector.body317
  %cmp.n325 = icmp eq i64 %n.vec316, %wide.trip.count.i145.i
  br i1 %cmp.n325, label %._crit_edge.i150.i, label %.lr.ph.i146.i.preheader

.lr.ph.i146.i.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block324
  %indvars.iv.i147.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec316, %middle.block324 ]
  br label %.lr.ph.i146.i

end_hunk_0
