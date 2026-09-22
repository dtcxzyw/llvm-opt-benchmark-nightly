Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Cimage?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5C__load_cache_image:bb.a
thread-pre-split.i.i:                             ; preds = %bb.cg, %bb.cf, %bb.ce, %.thread-pre-split_crit_edge.i.i
  %i.qz = phi i64 [ %i.pb, %bb.ce ], [ %i.qx, %bb.cg ], [ %.pr.pre.i.i, %.thread-pre-split_crit_edge.i.i ], [ %i.qo, %bb.cf ]
  %i.ra = icmp eq i64 %i.qz, 0
  br i1 %i.ra, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %thread-pre-split.i.i
  %i.rb = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.rc = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.rd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_entry, i32 noundef 2831, i64 noundef %i.rb, i64 noundef %i.rc, ptr noundef nonnull @.str.66) #15 ; 0 uses
  br label %.thread.i.i

bb.ci:                                            ; preds = %thread-pre-split.i.i
  %i.re = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = sub i64 %i.rf, %i.ja
  %i.rh = call fastcc i64 @H5C__cache_image_block_entry_header_size(ptr noundef %0)
  %.not205.i.i = icmp eq i64 %i.rg, %i.rh
  br i1 %.not205.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ri = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.rj = load i64, ptr @H5E_BADSIZE_g, align 8, !tbaa !56
  %i.rk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_entry, i32 noundef 2835, i64 noundef %i.ri, i64 noundef %i.rj, ptr noundef nonnull @.str.34) #15 ; 0 uses
  br label %.thread.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.rl = load i64, ptr %i.mm, align 8, !tbaa !88 ; 2 uses
  %.not206.i.i = icmp eq i64 %i.rl, 0
  br i1 %.not206.i.i, label %.loopexit.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rm = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15
  %i.rn = zext i8 %i.rm to i64
  %i.ro = mul i64 %i.rl, %i.rn
  %i.rp = call noalias ptr @malloc(i64 noundef %i.ro) #14 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.it, i64 176 ; 3 uses
  store ptr %i.rp, ptr %i.rq, align 8, !tbaa !92
  %i.rr = icmp eq ptr %i.rp, null
  br i1 %i.rr, label %bb.cm, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cl
  %i.rs = load i64, ptr %i.mm, align 8, !tbaa !88
  %.not.i423.i = icmp eq i64 %i.rs, 0
  br i1 %.not.i423.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.rt = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.ru = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.rv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_entry, i32 noundef 2846, i64 noundef %i.rt, i64 noundef %i.ru, ptr noundef nonnull @.str.36) #15 ; 0 uses
  br label %.thread.i.i

bb.cn:                                            ; preds = %bb.cr
  %i.rw = add i32 %.0172242.i.i, 1                ; 2 uses
  %i.rx = zext i32 %i.rw to i64                   ; 2 uses
  %i.ry = load i64, ptr %i.mm, align 8, !tbaa !88
  %i.rz = icmp ugt i64 %i.ry, %i.rx
  br i1 %i.rz, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !110

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.cn
  %i.sa = phi i64 [ %i.rx, %bb.cn ], [ 0, %.preheader.i.i ] ; 2 uses
  %.0172242.i.i = phi i32 [ %i.rw, %bb.cn ], [ 0, %.preheader.i.i ]
  %i.sb = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15
  %.not207.i.i = icmp eq i8 %i.sb, 0
  br i1 %.not207.i.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i
  %i.sc = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.sd = icmp ugt ptr %i.sc, %i.ik
  br i1 %i.sd, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.se = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15 ; 0 uses
  %i.sf = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15 ; 0 uses
  %i.sg = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15
  %i.sh = zext i8 %i.sg to i64
  %i.si = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = sub i64 %i.ky, %i.sj
  %i.sl = icmp ult i64 %i.sk, %i.sh
  br i1 %i.sl, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.sm = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.sn = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !56
  %i.so = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_entry, i32 noundef 2851, i64 noundef %i.sm, i64 noundef %i.sn, ptr noundef nonnull @.str.53) #15 ; 0 uses
  br label %.thread.i.i

bb.cr:                                            ; preds = %bb.cp, %.lr.ph.i.i
  %i.sp = load ptr, ptr %i.rq, align 8, !tbaa !92
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.sa
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.sq) #15
  %i.sr = load ptr, ptr %i.rq, align 8, !tbaa !92
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.sa
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !56
  %.not208.i.i = icmp eq i64 %i.st, -1
  br i1 %.not208.i.i, label %bb.cs, label %bb.cn

bb.cs:                                            ; preds = %bb.cr
  %i.su = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.sv = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.sw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_entry, i32 noundef 2854, i64 noundef %i.su, i64 noundef %i.sv, ptr noundef nonnull @.str.67) #15 ; 0 uses
  br label %.thread.i.i

.loopexit.i.i:                                    ; preds = %bb.cn, %.preheader.i.i, %bb.ck
  %i.sx = load i64, ptr %i.nn, align 8, !tbaa !91 ; 5 uses
  %i.sy = call noalias ptr @malloc(i64 noundef %i.sx) #14 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !93
  %i.ta = icmp eq ptr %i.sy, null
  br i1 %i.ta, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.loopexit.i.i
  %i.tb = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.tc = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.td = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_entry, i32 noundef 2860, i64 noundef %i.tb, i64 noundef %i.tc, ptr noundef nonnull @.str.68) #15 ; 0 uses
  br label %.thread.i.i

bb.cu:                                            ; preds = %.loopexit.i.i
  %.not209.i.i = icmp eq i64 %i.sx, 0
  %.pre.i424.i = load ptr, ptr %i.b, align 8, !tbaa !69 ; 4 uses
  br i1 %.not209.i.i, label %bb.dc, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.te = icmp ugt ptr %.pre.i424.i, %i.ik
  %i.tf = ptrtoint ptr %.pre.i424.i to i64
  %i.tg = sub i64 %i.ky, %i.tf
  %i.th = icmp ugt i64 %i.sx, %i.tg
  %or.cond273.i.i = select i1 %i.te, i1 true, i1 %i.th
  br i1 %or.cond273.i.i, label %bb.cw, label %bb.dc

bb.cw:                                            ; preds = %bb.cv
  %i.ti = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.tj = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !56
  %i.tk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_entry, i32 noundef 2868, i64 noundef %i.ti, i64 noundef %i.tj, ptr noundef nonnull @.str.53) #15 ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cw, %bb.ct, %bb.cs, %bb.cq, %bb.cm, %bb.cj, %bb.ch, %bb.cc, %bb.by, %bb.bv, %bb.br, %bb.bp, %bb.bn, %bb.bk, %bb.bi, %bb.bh, %bb.be, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.aq
  %i.tl = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !93 ; 2 uses
  %.not210.i.i = icmp eq ptr %i.tm, null
  br i1 %.not210.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.thread.i.i
  %i.tn = call ptr @H5MM_xfree(ptr noundef nonnull %i.tm) #15 ; 0 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.thread.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.it, i64 168
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !88
  %.not211.i.i = icmp eq i64 %i.tp, 0
  br i1 %.not211.i.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tq = getelementptr inbounds nuw i8, ptr %i.it, i64 176
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !92 ; 2 uses
  %.not212.i.i = icmp eq ptr %i.tr, null
  br i1 %.not212.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ts = call ptr @H5MM_xfree(ptr noundef nonnull %i.tr) #15 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.tt = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5C_cache_entry_t_reg_free_list, ptr noundef nonnull %i.it) #15 ; 0 uses
  br label %.loopexit529.i

.loopexit529.i:                                   ; preds = %bb.al, %bb.db, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.tu = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.tv = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.tw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__reconstruct_cache_contents, i32 noundef 2488, i64 noundef %i.tu, i64 noundef %i.tv, ptr noundef nonnull @.str.41) #15 ; 0 uses
  br label %.thread481.i

bb.dc:                                            ; preds = %bb.cv, %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sy, ptr align 1 %.pre.i424.i, i64 %i.sx, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %.pre.i424.i, i64 %i.sx ; 2 uses
  store ptr %i.m, ptr %i.it, align 8, !tbaa !119
  %i.ty = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  store i8 1, ptr %i.ty, align 8, !tbaa !120
  %i.tz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  store ptr @H5AC_PREFETCHED_ENTRY, ptr %i.tz, align 8, !tbaa !94
  %i.ua = getelementptr inbounds nuw i8, ptr %i.it, i64 204
  store i8 1, ptr %i.ua, align 4, !tbaa !121
  %i.ub = xor i8 %i.ir, 1
  %i.uc = and i8 %i.js, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.it, i64 216
  store i8 %i.uc, ptr %i.ud, align 8, !tbaa !122
  %i.ue = ptrtoint ptr %i.tx to i64
  %.neg.i.i = add i64 %.0463614.i, %i.ja
  %i.uf = sub i64 %.neg.i.i, %i.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ug = load i64, ptr %i.nk, align 8, !tbaa !90 ; 10 uses
  store i64 %i.ug, ptr %i.a, align 8, !tbaa !56
  %i.uh = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ui = trunc nuw i8 %i.uh to i1
  %i.uj = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.uk = trunc nuw i8 %i.uj to i1
  %i.ul = xor i1 %i.uk, true
  %i.um = select i1 %i.ui, i1 true, i1 %i.ul
  %i.un = lshr i64 %i.ug, 56
  %1 = trunc nuw nsw i64 %i.un to i32             ; 2 uses
  %i.uo = lshr i64 %i.ug, 48
  %i.up = trunc nuw nsw i64 %i.uo to i32          ; 2 uses
  %i.uq = lshr i64 %i.ug, 40
  %i.ur = trunc nuw nsw i64 %i.uq to i32          ; 2 uses
  %i.us = lshr i64 %i.ug, 32
  %i.ut = trunc nuw i64 %i.us to i32              ; 2 uses
  %i.uu = lshr i64 %i.ug, 24
  %i.uv = trunc i64 %i.uu to i32                  ; 2 uses
  %i.uw = lshr i64 %i.ug, 16
  %i.ux = trunc i64 %i.uw to i32                  ; 2 uses
  %i.uy = lshr i64 %i.ug, 8
  %i.uz = trunc i64 %i.uy to i32                  ; 2 uses
  %i.va = trunc i64 %i.ug to i32                  ; 2 uses
  br i1 %i.um, label %bb.dd, label %bb.ev, !prof !12

bb.dd:                                            ; preds = %bb.dc
  %.not.i425.i = icmp eq ptr %.0457616.i, null    ; 2 uses
  br i1 %.not.i425.i, label %.critedge.i427.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vb = shl nuw i32 %1, 24
  %i.vc = add i32 %i.vb, -1640531527
  %i.vd = shl nuw i32 %i.up, 16
  %i.ve = and i32 %i.vd, 16711680
  %i.vf = shl nuw i32 %i.ur, 8
  %i.vg = and i32 %i.vf, 65280
  %i.vh = and i32 %i.ut, 255
  %i.vi = add nuw nsw i32 %i.vc, %i.vh
  %i.vj = add i32 %i.vi, %i.ve
  %i.vk = add i32 %i.vj, %i.vg                    ; 2 uses
  %i.vl = shl i32 %i.uv, 24
  %i.vm = shl i32 %i.ux, 16
  %i.vn = and i32 %i.vm, 16711680
  %i.vo = shl i32 %i.uz, 8
  %i.vp = and i32 %i.vo, 65280
  %i.vq = and i32 %i.va, 255
  %i.vr = add nuw nsw i32 %i.vq, -1622558014
  %i.vs = add i32 %i.vr, %i.vl
  %i.vt = add i32 %i.vs, %i.vn
  %i.vu = add i32 %i.vt, %i.vp
  %i.vv = sub i32 %i.vu, %i.vk
  %i.vw = xor i32 %i.vv, 522093                   ; 4 uses
  %i.vx = add i32 %i.vk, 17973513
  %i.vy = sub i32 %i.vx, %i.vw
  %i.vz = shl i32 %i.vw, 8
  %i.wa = xor i32 %i.vy, %i.vz                    ; 4 uses
  %i.wb = add i32 %i.vw, %i.wa
  %i.wc = sub i32 -17973513, %i.wb
  %i.wd = lshr i32 %i.wa, 13
  %i.we = xor i32 %i.wc, %i.wd                    ; 4 uses
  %i.wf = add i32 %i.wa, %i.we
  %i.wg = sub i32 %i.vw, %i.wf
  %i.wh = lshr i32 %i.we, 12
  %i.wi = xor i32 %i.wg, %i.wh                    ; 4 uses
  %i.wj = add i32 %i.we, %i.wi
  %i.wk = sub i32 %i.wa, %i.wj
  %i.wl = shl i32 %i.wi, 16
  %i.wm = xor i32 %i.wk, %i.wl                    ; 4 uses
  %i.wn = add i32 %i.wi, %i.wm
  %i.wo = sub i32 %i.we, %i.wn
  %i.wp = lshr i32 %i.wm, 5
  %i.wq = xor i32 %i.wo, %i.wp                    ; 4 uses
  %i.wr = add i32 %i.wm, %i.wq
  %i.ws = sub i32 %i.wi, %i.wr
  %i.wt = lshr i32 %i.wq, 3
  %i.wu = xor i32 %i.ws, %i.wt                    ; 3 uses
  %i.wv = add i32 %i.wq, %i.wu
  %i.ww = sub i32 %i.wm, %i.wv
  %i.wx = shl i32 %i.wu, 10
  %i.wy = xor i32 %i.ww, %i.wx                    ; 2 uses
  %i.wz = add i32 %i.wu, %i.wy
  %i.xa = sub i32 %i.wq, %i.wz
  %i.xb = lshr i32 %i.wy, 15
  %i.xc = xor i32 %i.xa, %i.xb                    ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.0457616.i, i64 16
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !127 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !130
  %i.xh = add i32 %i.xg, -1
  %i.xi = and i32 %i.xh, %i.xc
  %i.xj = load ptr, ptr %i.xe, align 8, !tbaa !131
  %i.xk = zext i32 %i.xi to i64
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %i.xj, i64 %i.xk
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !133 ; 2 uses
  %.not564.i.i = icmp eq ptr %i.xm, null
  br i1 %.not564.i.i, label %.critedge.i427.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !134
  %i.xp = sub i64 0, %i.xo
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dj, %bb.df
  %.pn.i = phi ptr [ %i.xm, %bb.df ], [ %i.ye, %bb.dj ]
  %.1627.i.i = getelementptr inbounds i8, ptr %.pn.i, i64 %i.xp ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.1627.i.i, i64 68
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !135
  %i.xs = icmp eq i32 %i.xr, %i.xc
  br i1 %i.xs, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.xt = getelementptr inbounds nuw i8, ptr %.1627.i.i, i64 64
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !136
  %i.xv = icmp eq i32 %i.xu, 8
  br i1 %i.xv, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.xw = getelementptr inbounds nuw i8, ptr %.1627.i.i, i64 56
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !137
  %i.xy = load i64, ptr %i.xx, align 1
  %i.xz = load i64, ptr %i.a, align 8
  %i.ya = icmp ne i64 %i.xy, %i.xz
  %i.yb = zext i1 %i.ya to i32
  %i.yc = icmp eq i32 %i.yb, 0
  br i1 %i.yc, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %i.yd = getelementptr inbounds nuw i8, ptr %.1627.i.i, i64 48
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !138 ; 2 uses
  %.not566.i.i = icmp eq ptr %i.ye, null
  br i1 %.not566.i.i, label %.critedge.i427.i, label %bb.dg

bb.dk:                                            ; preds = %bb.di
  %i.yf = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.yg = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.yh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__check_for_duplicates, i32 noundef 2418, i64 noundef %i.yf, i64 noundef %i.yg, ptr noundef nonnull @.str.69) #15 ; 0 uses
  br label %bb.ep

.critedge.i427.i:                                 ; preds = %bb.dj, %bb.de, %bb.dd
  %i.yi = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #14 ; 17 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.critedge.i427.i
  %i.yk = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.yl = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.ym = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__check_for_duplicates, i32 noundef 2422, i64 noundef %i.yk, i64 noundef %i.yl, ptr noundef nonnull @.str.70) #15 ; 0 uses
  br label %bb.ep

bb.dm:                                            ; preds = %.critedge.i427.i
  store i64 %i.ug, ptr %i.yi, align 8, !tbaa !139
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  store ptr %i.it, ptr %i.yn, align 8, !tbaa !140
  %i.yo = shl nuw i32 %1, 24
  %i.yp = add i32 %i.yo, -1640531527
  %i.yq = shl nuw i32 %i.up, 16
  %i.yr = and i32 %i.yq, 16711680
  %i.ys = shl nuw i32 %i.ur, 8
  %i.yt = and i32 %i.ys, 65280
  %i.yu = and i32 %i.ut, 255
  %i.yv = add nuw nsw i32 %i.yp, %i.yu
  %i.yw = add i32 %i.yv, %i.yr
  %i.yx = add i32 %i.yw, %i.yt                    ; 2 uses
  %i.yy = shl i32 %i.uv, 24
  %i.yz = shl i32 %i.ux, 16
  %i.za = and i32 %i.yz, 16711680
  %i.zb = shl i32 %i.uz, 8
  %i.zc = and i32 %i.zb, 65280
  %i.zd = and i32 %i.va, 255
  %i.ze = add nuw nsw i32 %i.zd, -1622558014
  %i.zf = add i32 %i.ze, %i.yy
  %i.zg = add i32 %i.zf, %i.za
  %i.zh = add i32 %i.zg, %i.zc
  %i.zi = sub i32 %i.zh, %i.yx
  %i.zj = xor i32 %i.zi, 522093                   ; 4 uses
  %i.zk = add i32 %i.yx, 17973513
  %i.zl = sub i32 %i.zk, %i.zj
  %i.zm = shl i32 %i.zj, 8
  %i.zn = xor i32 %i.zl, %i.zm                    ; 4 uses
  %i.zo = add i32 %i.zj, %i.zn
  %i.zp = sub i32 -17973513, %i.zo
  %i.zq = lshr i32 %i.zn, 13
  %i.zr = xor i32 %i.zp, %i.zq                    ; 4 uses
  %i.zs = add i32 %i.zn, %i.zr
  %i.zt = sub i32 %i.zj, %i.zs
  %i.zu = lshr i32 %i.zr, 12
  %i.zv = xor i32 %i.zt, %i.zu                    ; 4 uses
  %i.zw = add i32 %i.zr, %i.zv
  %i.zx = sub i32 %i.zn, %i.zw
  %i.zy = shl i32 %i.zv, 16
  %i.zz = xor i32 %i.zx, %i.zy                    ; 4 uses
  %i.aaa = add i32 %i.zv, %i.zz
  %i.aab = sub i32 %i.zr, %i.aaa
  %i.aac = lshr i32 %i.zz, 5
  %i.aad = xor i32 %i.aab, %i.aac                 ; 4 uses
  %i.aae = add i32 %i.zz, %i.aad
  %i.aaf = sub i32 %i.zv, %i.aae
  %i.aag = lshr i32 %i.aad, 3
  %i.aah = xor i32 %i.aaf, %i.aag                 ; 3 uses
  %i.aai = add i32 %i.aad, %i.aah
  %i.aaj = sub i32 %i.zz, %i.aai
  %i.aak = shl i32 %i.aah, 10
  %i.aal = xor i32 %i.aaj, %i.aak                 ; 2 uses
  %i.aam = add i32 %i.aah, %i.aal
  %i.aan = sub i32 %i.aad, %i.aam
  %i.aao = lshr i32 %i.aal, 15
  %i.aap = xor i32 %i.aan, %i.aao                 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.yi, i64 16 ; 10 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.yi, i64 68
  store i32 %i.aap, ptr %i.aar, align 4, !tbaa !135
  %i.aas = getelementptr inbounds nuw i8, ptr %i.yi, i64 56
  store ptr %i.yi, ptr %i.aas, align 8, !tbaa !137
  %i.aat = getelementptr inbounds nuw i8, ptr %i.yi, i64 64
  store i32 8, ptr %i.aat, align 8, !tbaa !136
  br i1 %.not.i425.i, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.aau = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aau, i8 0, i64 16, i1 false)
  %calloc669.i.i = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) ; 10 uses
  store ptr %calloc669.i.i, ptr %i.aaq, align 8, !tbaa !127
  %.not569.i.i = icmp eq ptr %calloc669.i.i, null
  br i1 %.not569.i.i, label %.critedge589.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aav = getelementptr inbounds nuw i8, ptr %calloc669.i.i, i64 24
  store ptr %i.aaq, ptr %i.aav, align 8, !tbaa !141
  %i.aaw = getelementptr inbounds nuw i8, ptr %calloc669.i.i, i64 8
  store i32 32, ptr %i.aaw, align 8, !tbaa !130
  %i.aax = getelementptr inbounds nuw i8, ptr %calloc669.i.i, i64 12
  store i32 5, ptr %i.aax, align 4, !tbaa !142
  %i.aay = getelementptr inbounds nuw i8, ptr %calloc669.i.i, i64 32
  store i64 16, ptr %i.aay, align 8, !tbaa !134
  %calloc668.i.i = call dereferenceable_or_null(512) ptr @calloc(i64 1, i64 512) ; 3 uses
  store ptr %calloc668.i.i, ptr %calloc669.i.i, align 8, !tbaa !131
  %i.aaz = getelementptr inbounds nuw i8, ptr %calloc669.i.i, i64 56
  store i32 -1609490463, ptr %i.aaz, align 8, !tbaa !143
  %.not570.i.i = icmp eq ptr %calloc668.i.i, null
  br i1 %.not570.i.i, label %bb.dp, label %.critedge590.i.i

bb.dp:                                            ; preds = %bb.do
  call void @free(ptr noundef nonnull %calloc669.i.i) #15
  br label %.critedge589.i.i

bb.dq:                                            ; preds = %bb.dm
  %i.aba = getelementptr inbounds nuw i8, ptr %.0457616.i, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !127 ; 6 uses
  store ptr %i.abb, ptr %i.aaq, align 8, !tbaa !127
  %i.abc = getelementptr inbounds nuw i8, ptr %i.yi, i64 32
  store ptr null, ptr %i.abc, align 8, !tbaa !144
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 24 ; 2 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !141 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 32
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !134 ; 2 uses
  %i.abh = sub i64 0, %i.abg
  %i.abi = getelementptr inbounds i8, ptr %i.abe, i64 %i.abh ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  store ptr %i.abi, ptr %i.abj, align 8, !tbaa !145
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  store ptr %i.yi, ptr %i.abk, align 8, !tbaa !146
  store ptr %i.aaq, ptr %i.abd, align 8, !tbaa !141
  %.phi.trans.insert.i428.i = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %.pre.i429.i = load i32, ptr %.phi.trans.insert.i428.i, align 8, !tbaa !130
  %.pre637.i.i = load ptr, ptr %i.abb, align 8, !tbaa !131
  br label %.critedge590.i.i

.critedge590.i.i:                                 ; preds = %bb.dq, %bb.do
  %.8.i = phi ptr [ %.0457616.i, %bb.dq ], [ %i.yi, %bb.do ] ; 9 uses
  %i.abl = phi i64 [ %i.abg, %bb.dq ], [ 16, %bb.do ] ; 2 uses
  %i.abm = phi ptr [ %i.abi, %bb.dq ], [ null, %bb.do ] ; 3 uses
  %i.abn = phi ptr [ %.pre637.i.i, %bb.dq ], [ %calloc668.i.i, %bb.do ] ; 4 uses
  %i.abo = phi i32 [ %.pre.i429.i, %bb.dq ], [ 32, %bb.do ] ; 4 uses
  %i.abp = phi ptr [ %i.abb, %bb.dq ], [ %calloc669.i.i, %bb.do ] ; 7 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16 ; 2 uses
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !147
  %i.abs = add i32 %i.abr, 1                      ; 3 uses
  store i32 %i.abs, ptr %i.abq, align 8, !tbaa !147
  %i.abt = add i32 %i.abo, -1
  %i.abu = and i32 %i.abt, %i.aap
  %i.abv = zext i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [16 x i8], ptr %i.abn, i64 %i.abv ; 5 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8 ; 3 uses
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !148
  %i.abz = add i32 %i.aby, 1                      ; 3 uses
  store i32 %i.abz, ptr %i.abx, align 8, !tbaa !148
  %i.aca = load ptr, ptr %i.abw, align 8, !tbaa !133 ; 6 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.yi, i64 48 ; 2 uses
  store ptr %i.aca, ptr %i.acb, align 8, !tbaa !138
  %i.acc = getelementptr inbounds nuw i8, ptr %i.yi, i64 40 ; 3 uses
  store ptr null, ptr %i.acc, align 8, !tbaa !149
  %.not573.i.i = icmp eq ptr %i.aca, null
  br i1 %.not573.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.critedge590.i.i
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  store ptr %i.aaq, ptr %i.acd, align 8, !tbaa !150
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.critedge590.i.i
  store ptr %i.aaq, ptr %i.abw, align 8, !tbaa !133
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abw, i64 12
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !151
  %i.acg = mul i32 %i.acf, 10
  %i.ach = add i32 %i.acg, 10
  %.not574.i.i = icmp ult i32 %i.abz, %i.ach
  br i1 %.not574.i.i, label %bb.ev, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abp, i64 52
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !152
  %.not575.i.i = icmp eq i32 %i.acj, 0
  br i1 %.not575.i.i, label %bb.du, label %bb.ev

bb.du:                                            ; preds = %bb.dt
  %i.ack = zext i32 %i.abo to i64                 ; 2 uses
  %i.acl = shl nuw nsw i64 %i.ack, 5
  %calloc.i.i = call ptr @calloc(i64 1, i64 %i.acl) ; 3 uses
  %.not576.not.i.i = icmp eq ptr %calloc.i.i, null
  br i1 %.not576.not.i.i, label %bb.ed, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abp, i64 12
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !142
  %i.aco = add i32 %i.acn, 1
  %i.acp = lshr i32 %i.abs, %i.aco
  %i.acq = shl i32 %i.abo, 1
  %i.acr = add i32 %i.acq, -1                     ; 2 uses
  %i.acs = and i32 %i.abs, %i.acr
  %.not577.i.i = icmp ne i32 %i.acs, 0
  %i.act = zext i1 %.not577.i.i to i32
  %i.acu = add i32 %i.acp, %i.act                 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abp, i64 40
  store i32 %i.acu, ptr %i.acv, align 8, !tbaa !153
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abp, i64 44 ; 2 uses
  store i32 0, ptr %i.acw, align 4, !tbaa !154
  %.not635.i.i = icmp eq i32 %i.abo, 0
  br i1 %.not635.i.i, label %._crit_edge634.i.i, label %.lr.ph633.i.i

.lr.ph633.i.i:                                    ; preds = %bb.dv, %._crit_edge.i430.i
  %i.acx = phi i32 [ %i.adw, %._crit_edge.i430.i ], [ 0, %bb.dv ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.i430.i ], [ 0, %bb.dv ] ; 2 uses
  %i.acy = getelementptr inbounds nuw [16 x i8], ptr %i.abn, i64 %indvars.iv.i.i
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !133 ; 2 uses
  %.not581628.i.i = icmp eq ptr %i.acz, null
  br i1 %.not581628.i.i, label %._crit_edge.i430.i, label %.lr.ph630.i.i

.lr.ph630.i.i:                                    ; preds = %.lr.ph633.i.i, %bb.ea
  %i.ada = phi i32 [ %i.ads, %bb.ea ], [ %i.acx, %.lr.ph633.i.i ] ; 2 uses
  %.0492629.i.i = phi ptr [ %i.adc, %bb.ea ], [ %i.acz, %.lr.ph633.i.i ] ; 5 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.0492629.i.i, i64 32 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !155 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.0492629.i.i, i64 52
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !156
  %i.adf = and i32 %i.ade, %i.acr
end_hunk_0
