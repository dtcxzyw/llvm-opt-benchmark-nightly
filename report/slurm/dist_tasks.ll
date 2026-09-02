Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/dist_tasks?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0_@lllp_distribution:bb.a
  %i.iw = trunc i32 %i.iv to i16
  %trunc = and i16 %i.iw, -3841
  switch i16 %trunc, label %bb.cb [
    i16 34, label %bb.bu
    i16 33, label %bb.bu
    i16 4, label %bb.bu
    i16 3, label %bb.bx
    i16 2, label %bb.bx
    i16 1, label %bb.bx
    i16 8192, label %bb.bx
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt, %bb.bt
  %i.ix = call i32 @slurm_get_log_level() #9
  %i.iy = icmp sgt i32 %i.ix, 5
  br i1 %i.iy, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ja = load i32, ptr %i.iz, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.12, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.lllp_distribution, i32 noundef %i.ja) #9
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.jb = call fastcc i32 @_task_layout_lllp_block(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.w)
  br label %bb.du

bb.bx:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %i.jc = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8
  %i.jd = and i16 %i.jc, 4096
  %.not128 = icmp eq i16 %i.jd, 0
  br i1 %.not128, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.je = call i32 @slurm_get_log_level() #9
  %i.jf = icmp sgt i32 %i.je, 5
  br i1 %i.jf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.jh = load i32, ptr %i.jg, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.13, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.lllp_distribution, i32 noundef %i.jh) #9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ji = call fastcc i32 @_task_layout_lllp_block(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.w)
  br label %bb.du

bb.cb:                                            ; preds = %bb.bx, %bb.bt
  %i.jj = call i32 @slurm_get_log_level() #9
  %i.jk = icmp sgt i32 %i.jj, 5
  br i1 %i.jk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.jm = load i32, ptr %i.jl, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.14, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.lllp_distribution, i32 noundef %i.jm) #9
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.jn = load ptr, ptr %i.ag, align 8
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.ai
  %i.jp = load i16, ptr %i.jo, align 2            ; 3 uses
  %i.jq = zext i16 %i.jp to i32                   ; 8 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 6 uses
  %i.js = load i16, ptr %i.jr, align 2
  %i.jt = zext i16 %i.js to i32
  %i.ju = mul nuw nsw i32 %i.jt, %i.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.jv = call i32 @slurm_get_log_level() #9
  %i.jw = icmp sgt i32 %i.jv, 2
  br i1 %i.jw, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.29, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = call fastcc ptr @_get_avail_map(ptr noundef %i.jy, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) ; 6 uses
  store ptr %i.jz, ptr %i.k, align 8
  %.not.i154 = icmp eq ptr %i.jz, null
  br i1 %.not.i154, label %_task_layout_lllp_cyclic.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.kb = load i16, ptr %i.ka, align 8            ; 2 uses
  switch i16 %i.kb, label %bb.ci [
    i16 0, label %bb.ch
    i16 -2, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  %i.kc = load i16, ptr %i.bg, align 8
  %i.kd = and i16 %i.kc, 8192
  %.not127.i = icmp eq i16 %i.kd, 0
  %i.ke = call i32 @slurm_bit_set_count(ptr noundef nonnull %i.jz) #9 ; 2 uses
  br i1 %.not127.i, label %.thread.i155, label %.thread147.i

bb.ci:                                            ; preds = %bb.cg
  %i.kf = zext i16 %i.kb to i32
  %i.kg = call i32 @slurm_bit_set_count(ptr noundef nonnull %i.jz) #9
  br label %.thread147.i

.thread147.i:                                     ; preds = %bb.ci, %bb.ch
  %i.kh = phi i32 [ %i.kg, %bb.ci ], [ %i.ke, %bb.ch ] ; 4 uses
  %.093150.i = phi i32 [ %i.kf, %bb.ci ], [ 1, %bb.ch ] ; 3 uses
  %i.ki = load ptr, ptr @conf, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4158
  %i.kk = load i16, ptr %i.kj, align 2            ; 2 uses
  %i.kl = load i16, ptr %i.j, align 2
  %.not129.i = icmp ugt i16 %i.kk, %i.kl
  br i1 %.not129.i, label %.thread.i155, label %bb.cj

bb.cj:                                            ; preds = %.thread147.i
  %i.km = load i16, ptr %i.jr, align 2
  %i.kn = zext i16 %i.km to i32
  %.rhs.trunc.i = trunc nuw i32 %.093150.i to i16
  %i.ko = udiv i16 %i.kk, %.rhs.trunc.i
  %.zext.i = zext i16 %i.ko to i32
  %i.kp = mul nuw nsw i32 %.zext.i, %i.kn         ; 2 uses
  %i.kq = icmp slt i32 %i.kh, %i.kp
  br i1 %i.kq, label %bb.ck, label %.thread.i155

bb.ck:                                            ; preds = %bb.cj
  %i.kr = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.30, i32 noundef %i.kh, i32 noundef %i.kp) #9 ; 0 uses
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %_task_layout_lllp_cyclic.exit

.thread.i155:                                     ; preds = %bb.cj, %.thread147.i, %bb.ch
  %.not128146.i = phi i1 [ false, %.thread147.i ], [ false, %bb.cj ], [ true, %bb.ch ]
  %i.ks = phi i32 [ %i.kh, %.thread147.i ], [ %i.kh, %bb.cj ], [ %i.ke, %bb.ch ] ; 4 uses
  %.093145.i = phi i32 [ %.093150.i, %.thread147.i ], [ %.093150.i, %bb.cj ], [ 0, %bb.ch ]
  %i.kt = icmp slt i32 %i.ks, %i.jq
  br i1 %i.kt, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.thread.i155
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = and i32 %i.kv, 128
  %.not140.i = icmp eq i32 %i.kw, 0
  br i1 %.not140.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.kx = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.31, i32 noundef %i.ks, i32 noundef %i.jq) #9 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %_task_layout_lllp_cyclic.exit

bb.co:                                            ; preds = %.thread.i155
  %i.ky = icmp samesign ult i32 %i.ks, %i.ju
  br i1 %i.ky, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.kz = udiv i32 %i.ks, %i.jq                   ; 2 uses
  %i.la = trunc i32 %i.kz to i16
  %i.lb = call i32 @slurm_get_log_level() #9
  %i.lc = icmp sgt i32 %i.lb, 2
  br i1 %i.lc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ld = load i16, ptr %i.jr, align 2
  %i.le = zext i16 %i.ld to i32
  %i.lf = and i32 %i.kz, 65535
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.32, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_cyclic, i32 noundef %i.le, i32 noundef %i.lf) #9
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i16 %i.la, ptr %i.jr, align 2
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %i.lg = load i16, ptr %i.j, align 2             ; 5 uses
  %i.lh = zext i16 %i.lg to i32                   ; 3 uses
  %i.li = load i16, ptr %i.h, align 2             ; 4 uses
  %i.lj = zext i16 %i.li to i64                   ; 3 uses
  %i.lk = load i16, ptr %i.i, align 2             ; 4 uses
  %i.ll = zext i16 %i.lk to i64                   ; 2 uses
  %i.lm = mul nuw nsw i64 %i.ll, %i.lj            ; 2 uses
  %i.ln = call ptr @slurm_xcalloc(i64 noundef %i.lm, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1020, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  store ptr %i.ln, ptr %i.m, align 8
  %i.lo = call ptr @slurm_xcalloc(i64 noundef %i.lm, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1021, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  store ptr %i.lo, ptr %i.n, align 8
  %i.lp = call ptr @slurm_xcalloc(i64 noundef %i.lj, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1022, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  store ptr %i.lp, ptr %i.l, align 8
  %i.lq = zext i16 %i.jp to i64
  %i.lr = call ptr @slurm_xcalloc(i64 noundef %i.lq, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1024, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9 ; 4 uses
  store ptr %i.lr, ptr %i.w, align 8
  %i.ls = call i64 @slurm_bit_size(ptr noundef nonnull %i.jz) #9
  %.fr.i = freeze i64 %i.ls
  %i.lt = trunc i64 %.fr.i to i32                 ; 3 uses
  %.not191.i = icmp eq i16 %i.jp, 0
  br i1 %.not191.i, label %._crit_edge190.thread.i, label %.lr.ph189.i

._crit_edge190.thread.i:                          ; preds = %bb.cs
  %i.lu = load i16, ptr %i.bg, align 8
  call fastcc void @_expand_masks(i16 noundef zeroext %i.lu, i32 noundef %i.jq, ptr noundef %i.lr, i16 noundef zeroext %i.li, i16 noundef zeroext %i.lk, i16 noundef zeroext %i.lg, ptr noundef nonnull %i.jz)
  br label %bb.ds

.lr.ph189.i:                                      ; preds = %bb.cs
  %3 = mul i16 %i.lk, %i.lg
  %i.lv = icmp sgt i32 %i.lt, 0
  %i.lw = zext i16 %3 to i32                      ; 3 uses
  %i.lx = zext i16 %i.li to i32                   ; 3 uses
  %i.ly = shl nuw nsw i64 %i.lj, 2                ; 2 uses
  %i.lz = mul nuw nsw i64 %i.ly, %i.ll            ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 2 uses
  br i1 %i.lv, label %.lr.ph189.split.us.i, label %.split.us.thread.i

.split.us.thread.i:                               ; preds = %.lr.ph189.i
  %i.mb = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.34) #9 ; 0 uses
  br label %bb.dq

.lr.ph189.split.us.i:                             ; preds = %.lr.ph189.i, %._crit_edge176.us.i
  %.094187.us.i = phi i16 [ %.3.us.i, %._crit_edge176.us.i ], [ 0, %.lr.ph189.i ]
  %.095186.us.i = phi i16 [ %.6.us.i, %._crit_edge176.us.i ], [ 0, %.lr.ph189.i ]
  %.0100185.us.i = phi i32 [ %.3103.us.i, %._crit_edge176.us.i ], [ 0, %.lr.ph189.i ] ; 3 uses
  %.0104184.us.i = phi i32 [ %.0100185.us.i, %._crit_edge176.us.i ], [ -1, %.lr.ph189.i ]
  %i.mc = icmp eq i32 %.0100185.us.i, %.0104184.us.i
  br i1 %i.mc, label %.split.us.i, label %.preheader.us.i

bb.ct:                                            ; preds = %.lr.ph.us.i, %bb.cx
  %.297167.us.i = phi i32 [ %i.pf, %.lr.ph.us.i ], [ %i.me, %bb.cx ]
  %i.md = add nuw nsw i32 %.297167.us.i, 1
  %i.me = urem i32 %i.md, %i.lx                   ; 4 uses
  %i.mf = icmp eq i32 %i.me, %i.pf
  br i1 %i.mf, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.mg = call i32 @slurm_get_log_level() #9
  %i.mh = icmp sgt i32 %i.mg, 4
  br i1 %i.mh, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 5, ptr noundef nonnull @.str.35, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  call void @llvm.memset.p0.i64(ptr align 4 %i.pg, i8 0, i64 %i.lz, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %i.ph, i8 0, i64 %i.lz, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.pb, i8 0, i64 %i.ly, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  %i.mi = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4            ; 2 uses
  %.not131.us.i = icmp slt i32 %i.mk, %i.lw
  br i1 %.not131.us.i, label %._crit_edge.us.loopexit.i, label %bb.ct, !llvm.loop !29

._crit_edge.us.loopexit.i:                        ; preds = %bb.cx
  %i.ml = trunc nuw i32 %i.me to i16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.preheader.us.i, %._crit_edge.us.loopexit.i
  %.lcssa165.us.i = phi i64 [ %i.pc, %.preheader.us.i ], [ %i.mi, %._crit_edge.us.loopexit.i ]
  %.297.lcssa.us.i = phi i16 [ %.196174.us.i, %.preheader.us.i ], [ %i.ml, %._crit_edge.us.loopexit.i ] ; 5 uses
  %.lcssa162.us.i = phi i32 [ %i.pe, %.preheader.us.i ], [ %i.mk, %._crit_edge.us.loopexit.i ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %.lcssa165.us.i
  %i.mn = zext i16 %.297.lcssa.us.i to i32        ; 2 uses
  %4 = mul nuw nsw i32 %i.mn, %i.lw
  %5 = add nsw i32 %4, %.lcssa162.us.i
  %6 = and i32 %5, 65535
  %i.mo = urem i32 %6, %i.lt                      ; 2 uses
  %i.mp = add nsw i32 %.lcssa162.us.i, 1
  store i32 %i.mp, ptr %i.mm, align 4
  %i.mq = load ptr, ptr %i.k, align 8
  %i.mr = zext nneg i32 %i.mo to i64              ; 2 uses
  %i.ms = call i32 @slurm_bit_test(ptr noundef %i.mq, i64 noundef %i.mr) #9
  %.not132.us.i = icmp eq i32 %i.ms, 0
  br i1 %.not132.us.i, label %select.unfold152.us.i, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge.us.i
  %i.mt = udiv i32 %i.mo, %i.lh                   ; 3 uses
  %i.mu = load i16, ptr %i.ma, align 2            ; 2 uses
  %.not133.us.i = icmp eq i16 %i.mu, 0
  br i1 %.not133.us.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mv = zext i16 %i.mu to i32
  %i.mw = load ptr, ptr %i.m, align 8
  %i.mx = zext nneg i32 %i.mt to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4
  %.not134.us.i = icmp slt i32 %i.mz, %i.mv
  br i1 %.not134.us.i, label %bb.da, label %select.unfold152.us.i

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %.not128146.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.na = load ptr, ptr %i.n, align 8
  %i.nb = zext nneg i32 %i.mt to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4
  %.not135.us.i = icmp slt i32 %i.nd, %.093145.i
  br i1 %.not135.us.i, label %bb.dc, label %select.unfold152.us.i

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ne = sext i32 %.1101172.us.i to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %i.ne ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8            ; 2 uses
  %.not136.us.i = icmp eq ptr %i.ng, null
  br i1 %.not136.us.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.nh = load ptr, ptr @conf, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4232
  %i.nj = load i16, ptr %i.ni, align 8
  %i.nk = zext i16 %i.nj to i64
  %i.nl = call ptr @slurm_bit_alloc(i64 noundef %i.nk) #9 ; 2 uses
  store ptr %i.nl, ptr %i.nf, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.nm = phi ptr [ %i.nl, %bb.dd ], [ %i.ng, %bb.dc ]
  call void @slurm_bit_set(ptr noundef %i.nm, i64 noundef %i.mr) #9
  %i.nn = load i32, ptr %i.iu, align 8
  %i.no = and i32 %i.nn, 61695
  %.off.us.i = add nsw i32 %i.no, -49
  %switch.us.i = icmp ult i32 %.off.us.i, 2       ; 2 uses
  br i1 %switch.us.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.np = add nuw nsw i32 %i.mn, 1
  %i.nq = urem i32 %i.np, %i.lx
  %i.nr = trunc nuw i32 %i.nq to i16
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.398.us.i = phi i16 [ %.297.lcssa.us.i, %bb.de ], [ %i.nr, %bb.df ] ; 4 uses
  %i.ns = load ptr, ptr %i.n, align 8
  %i.nt = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nt ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.nu, align 4
  %i.nx = add i16 %.1175.us.i, 1                  ; 2 uses
  %i.ny = load i16, ptr %i.jr, align 2
  %i.nz = icmp ult i16 %i.nx, %i.ny
  br i1 %i.nz, label %select.unfold152.us.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.oa = load ptr, ptr %i.m, align 8
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nt ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4
  %i.od = add nsw i32 %i.oc, 1
  store i32 %i.od, ptr %i.ob, align 4
  %i.oe = load i16, ptr %i.bg, align 8
  %i.of = and i16 %i.oe, 4
  %.not137.us.i = icmp eq i16 %i.of, 0
  br i1 %.not137.us.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.og = load i16, ptr %i.ma, align 2
  %i.oh = icmp eq i16 %i.og, 1
  br i1 %i.oh, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.oi = load i16, ptr %i.jr, align 2            ; 2 uses
  %i.oj = zext i16 %i.oi to i32                   ; 2 uses
  %i.ok = icmp ult i16 %i.oi, %i.lg
  br i1 %i.ok, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ol = urem i32 %i.oj, %i.lh
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.om = sub nuw nsw i32 %i.lh, %i.oj
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0.us.i = phi i32 [ %i.om, %bb.dl ], [ %i.ol, %bb.dk ]
  %i.on = load ptr, ptr %i.l, align 8
  %i.oo = zext i16 %.398.us.i to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.oo ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4
  %i.or = add nsw i32 %i.oq, %.0.us.i
  store i32 %i.or, ptr %i.op, align 4
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.di
  br i1 %switch.us.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.os = zext i16 %.398.us.i to i32
  %i.ot = add nuw nsw i32 %i.os, 1
  %i.ou = urem i32 %i.ot, %i.lx
  %i.ov = trunc nuw i32 %i.ou to i16
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.4.us.i = phi i16 [ %.398.us.i, %bb.dn ], [ %i.ov, %bb.do ] ; 2 uses
  %i.ow = add nsw i32 %.1101172.us.i, 1           ; 3 uses
  %.not138.us.i = icmp slt i32 %i.ow, %i.jq
  br i1 %.not138.us.i, label %select.unfold152.us.i, label %._crit_edge176.us.i

select.unfold152.us.i:                            ; preds = %bb.dp, %bb.dg, %bb.db, %bb.cz, %._crit_edge.us.i
  %.2102.ph.us.i = phi i32 [ %.1101172.us.i, %._crit_edge.us.i ], [ %.1101172.us.i, %bb.dg ], [ %.1101172.us.i, %bb.db ], [ %.1101172.us.i, %bb.cz ], [ %i.ow, %bb.dp ] ; 2 uses
  %.5.ph.us.i = phi i16 [ %.297.lcssa.us.i, %._crit_edge.us.i ], [ %.398.us.i, %bb.dg ], [ %.297.lcssa.us.i, %bb.db ], [ %.297.lcssa.us.i, %bb.cz ], [ %.4.us.i, %bb.dp ] ; 2 uses
  %.2.ph.us.i = phi i16 [ %.1175.us.i, %._crit_edge.us.i ], [ %i.nx, %bb.dg ], [ %.1175.us.i, %bb.db ], [ %.1175.us.i, %bb.cz ], [ 0, %bb.dp ] ; 2 uses
  %i.ox = add i16 %.099173.us.i, 1                ; 2 uses
  %i.oy = zext i16 %i.ox to i32
  %i.oz = icmp slt i32 %i.oy, %i.lt
  br i1 %i.oz, label %.preheader.us.i, label %._crit_edge176.us.i, !llvm.loop !30

._crit_edge176.us.i:                              ; preds = %select.unfold152.us.i, %bb.dp
  %.3103.us.i = phi i32 [ %i.ow, %bb.dp ], [ %.2102.ph.us.i, %select.unfold152.us.i ] ; 2 uses
  %.6.us.i = phi i16 [ %.4.us.i, %bb.dp ], [ %.5.ph.us.i, %select.unfold152.us.i ]
  %.3.us.i = phi i16 [ 0, %bb.dp ], [ %.2.ph.us.i, %select.unfold152.us.i ]
  %i.pa = icmp slt i32 %.3103.us.i, %i.jq
  br i1 %i.pa, label %.lr.ph189.split.us.i, label %._crit_edge190.i, !llvm.loop !31

.preheader.us.i:                                  ; preds = %.lr.ph189.split.us.i, %select.unfold152.us.i
  %.1175.us.i = phi i16 [ %.2.ph.us.i, %select.unfold152.us.i ], [ %.094187.us.i, %.lr.ph189.split.us.i ] ; 4 uses
  %.196174.us.i = phi i16 [ %.5.ph.us.i, %select.unfold152.us.i ], [ %.095186.us.i, %.lr.ph189.split.us.i ] ; 3 uses
  %.099173.us.i = phi i16 [ %i.ox, %select.unfold152.us.i ], [ 0, %.lr.ph189.split.us.i ]
  %.1101172.us.i = phi i32 [ %.2102.ph.us.i, %select.unfold152.us.i ], [ %.0100185.us.i, %.lr.ph189.split.us.i ] ; 6 uses
  %i.pb = load ptr, ptr %i.l, align 8             ; 4 uses
  %i.pc = zext i16 %.196174.us.i to i64           ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4            ; 2 uses
  %.not131166.us.i = icmp slt i32 %i.pe, %i.lw
  br i1 %.not131166.us.i, label %._crit_edge.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.preheader.us.i
  %i.pf = zext i16 %.196174.us.i to i32           ; 2 uses
  %i.pg = load ptr, ptr %i.m, align 8
  %i.ph = load ptr, ptr %i.n, align 8
  br label %bb.ct

.split.us.i:                                      ; preds = %.lr.ph189.split.us.i
  %.pre.i156 = load ptr, ptr %i.k, align 8
  %i.pi = icmp eq ptr %.pre.i156, null
  %i.pj = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.34) #9 ; 0 uses
  br i1 %i.pi, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.split.us.i, %.split.us.thread.i
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.split.us.i
  store ptr null, ptr %i.k, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.m) #9
  call void @slurm_xfree(ptr noundef nonnull %i.n) #9
  call void @slurm_xfree(ptr noundef nonnull %i.l) #9
  br label %_task_layout_lllp_cyclic.exit

._crit_edge190.i:                                 ; preds = %._crit_edge176.us.i
  %.pre196.i = load ptr, ptr %i.k, align 8        ; 2 uses
  %i.pk = load i16, ptr %i.bg, align 8
  call fastcc void @_expand_masks(i16 noundef zeroext %i.pk, i32 noundef %i.jq, ptr noundef %i.lr, i16 noundef zeroext %i.li, i16 noundef zeroext %i.lk, i16 noundef zeroext %i.lg, ptr noundef %.pre196.i)
  %.not130.i = icmp eq ptr %.pre196.i, null
  br i1 %.not130.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge190.i, %._crit_edge190.thread.i
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %._crit_edge190.i
  store ptr null, ptr %i.k, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.m) #9
  call void @slurm_xfree(ptr noundef nonnull %i.n) #9
end_hunk_0
