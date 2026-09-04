Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/compact_literals?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zend_optimizer_compact_literals:bb.a

bb.by:                                            ; preds = %bb.bx
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !53 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !61 ; 2 uses
  %i.kf = icmp ne i32 %i.ke, 0
  call void @llvm.assume(i1 %i.kf)
  %i.kg = add i32 %i.ke, -1                       ; 2 uses
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !61
  %.not3.i649 = icmp eq i32 %i.kg, 0
  br i1 %.not3.i649, label %bb.bz, label %zval_ptr_dtor_nogc.exit650

bb.bz:                                            ; preds = %bb.by
  %i.kh = load ptr, ptr %i.ka, align 8, !tbaa !53
  call void @rc_dtor_func(ptr noundef %i.kh) #8
  br label %zval_ptr_dtor_nogc.exit650

bb.ca:                                            ; preds = %bias_key.exit
  %i.ki = getelementptr inbounds [4 x i8], ptr %.0.i638, i64 %i.gw
  store i32 %.0575742, ptr %i.ki, align 4, !tbaa !63
  %i.kj = sext i32 %.0575742 to i64               ; 3 uses
  store i64 %i.kj, ptr %6, align 8, !tbaa !53
  store i32 4, ptr %i.gv, align 8, !tbaa !53
  %i.kk = call ptr @zend_hash_add_new(ptr noundef nonnull %7, ptr noundef nonnull %i.jk, ptr noundef nonnull %6) #8 ; 0 uses
  %.not625 = icmp eq i32 %.0572743, %.0575742
  br i1 %.not625, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kl = load ptr, ptr %i.gu, align 8, !tbaa !58 ; 2 uses
  %i.km = getelementptr inbounds [16 x i8], ptr %i.kl, i64 %i.kj
  %i.kn = getelementptr inbounds [16 x i8], ptr %i.kl, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i64 16, i1 false), !tbaa.struct !62
  %i.ko = getelementptr inbounds i8, ptr %.0.i, i64 %i.kj
  %i.kp = load i8, ptr %i.gx, align 1, !tbaa !53
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !53
  %i.kq = load ptr, ptr %i.gu, align 8, !tbaa !58 ; 2 uses
  %i.kr = add nsw i32 %.0575742, 1
  %i.ks = sext i32 %i.kr to i64                   ; 2 uses
  %i.kt = getelementptr inbounds [16 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = getelementptr inbounds [16 x i8], ptr %i.kq, i64 %i.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %i.ku, i64 16, i1 false), !tbaa.struct !62
  %i.kv = getelementptr inbounds i8, ptr %.0.i, i64 %i.ks
  %i.kw = getelementptr inbounds i8, ptr %.0.i, i64 %i.jc
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !53
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !53
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ky = add nsw i32 %.0575742, 2
  br label %zval_ptr_dtor_nogc.exit650

zval_ptr_dtor_nogc.exit650:                       ; preds = %bb.bz, %bb.by, %bb.bx, %bb.cc
  %.4 = phi i32 [ %i.ky, %bb.cc ], [ %.0575742, %bb.bx ], [ %.0575742, %bb.by ], [ %.0575742, %bb.bz ] ; 3 uses
  %i.kz = load i32, ptr %i.jl, align 4, !tbaa !53
  %i.la = and i32 %i.kz, 64
  %.not.i659 = icmp eq i32 %i.la, 0
  br i1 %.not.i659, label %bb.cd, label %zval_ptr_dtor_nogc.exit653

bb.cd:                                            ; preds = %zval_ptr_dtor_nogc.exit650
  %i.lb = load i32, ptr %i.jk, align 8, !tbaa !61 ; 2 uses
  %i.lc = icmp ne i32 %i.lb, 0
  call void @llvm.assume(i1 %i.lc)
  %i.ld = add i32 %i.lb, -1                       ; 2 uses
  store i32 %i.ld, ptr %i.jk, align 8, !tbaa !61
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.ce, label %zval_ptr_dtor_nogc.exit653

bb.ce:                                            ; preds = %bb.cd
  call void @_efree(ptr noundef nonnull %i.jk) #8
  br label %zval_ptr_dtor_nogc.exit653

bias_key.exit668:                                 ; preds = %bb.bb
  %i.lf = icmp eq i8 %i.gy, 1
  call void @llvm.assume(i1 %i.lf)
  %i.lg = call noalias ptr @_emalloc_40() #8      ; 12 uses
  store i32 1, ptr %i.lg, align 4, !tbaa !61
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 2 uses
  store i32 22, ptr %i.lh, align 4, !tbaa !53
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  store i64 0, ptr %i.li, align 8, !tbaa !66
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store i64 8, ptr %i.lj, align 8, !tbaa !65
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.ll = load i64, ptr %i.ha, align 8
  store i64 %i.ll, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  store i8 0, ptr %i.lm, align 8, !tbaa !53
  %i.ln = call i64 @zend_string_hash_func(ptr noundef nonnull %i.lg) #8
  %i.lo = add i64 %i.ln, 200
  store i64 %i.lo, ptr %i.li, align 8, !tbaa !66
  %i.lp = call ptr @zend_hash_find(ptr noundef nonnull %7, ptr noundef nonnull %i.lg) #8 ; 2 uses
  %.not622 = icmp eq ptr %i.lp, null
  br i1 %.not622, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bias_key.exit668
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !53
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = getelementptr inbounds [4 x i8], ptr %.0.i638, i64 %i.gw
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !63
  br label %bb.cj

bb.cg:                                            ; preds = %bias_key.exit668
  %i.lt = getelementptr inbounds [4 x i8], ptr %.0.i638, i64 %i.gw
  store i32 %.0575742, ptr %i.lt, align 4, !tbaa !63
  %i.lu = sext i32 %.0575742 to i64               ; 3 uses
  store i64 %i.lu, ptr %6, align 8, !tbaa !53
  store i32 4, ptr %i.gv, align 8, !tbaa !53
  %i.lv = call ptr @zend_hash_add_new(ptr noundef nonnull %7, ptr noundef nonnull %i.lg, ptr noundef nonnull %6) #8 ; 0 uses
  %.not623 = icmp eq i32 %.0572743, %.0575742
  br i1 %.not623, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lw = load ptr, ptr %i.gu, align 8, !tbaa !58 ; 2 uses
  %i.lx = getelementptr inbounds [16 x i8], ptr %i.lw, i64 %i.lu
  %i.ly = getelementptr inbounds [16 x i8], ptr %i.lw, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lx, ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i64 16, i1 false), !tbaa.struct !62
  %i.lz = getelementptr inbounds i8, ptr %.0.i, i64 %i.lu
  %i.ma = load i8, ptr %i.gx, align 1, !tbaa !53
  store i8 %i.ma, ptr %i.lz, align 1, !tbaa !53
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.mb = add nsw i32 %.0575742, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cf
  %.5 = phi i32 [ %.0575742, %bb.cf ], [ %i.mb, %bb.ci ] ; 3 uses
  %i.mc = load i32, ptr %i.lh, align 4, !tbaa !53
  %i.md = and i32 %i.mc, 64
  %.not.i657 = icmp eq i32 %i.md, 0
  br i1 %.not.i657, label %bb.ck, label %zval_ptr_dtor_nogc.exit653

bb.ck:                                            ; preds = %bb.cj
  %i.me = load i32, ptr %i.lg, align 8, !tbaa !61 ; 2 uses
  %i.mf = icmp ne i32 %i.me, 0
  call void @llvm.assume(i1 %i.mf)
  %i.mg = add i32 %i.me, -1                       ; 2 uses
  store i32 %i.mg, ptr %i.lg, align 8, !tbaa !61
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.cl, label %zval_ptr_dtor_nogc.exit653

bb.cl:                                            ; preds = %bb.ck
  call void @_efree(ptr noundef nonnull %i.lg) #8
  br label %zval_ptr_dtor_nogc.exit653

bb.cm:                                            ; preds = %bb.bb
  %i.mi = zext nneg i8 %i.gy to i64
  %i.mj = load ptr, ptr %i.ha, align 8, !tbaa !53 ; 9 uses
  switch i8 %i.gy, label %.unreachabledefault.i [
    i8 1, label %bb.cn
    i8 2, label %bb.cp
    i8 3, label %bb.cq
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !53
  %i.mm = and i32 %i.ml, 64
  %.not.i.i670 = icmp eq i32 %i.mm, 0
  br i1 %.not.i.i670, label %bb.co, label %create_str_cache_key.exit

bb.co:                                            ; preds = %bb.cn
  %i.mn = load i32, ptr %i.mj, align 4, !tbaa !61
  %i.mo = add i32 %i.mn, 1
  store i32 %i.mo, ptr %i.mj, align 4, !tbaa !61
  br label %create_str_cache_key.exit

bb.cp:                                            ; preds = %bb.cm
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !65
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !53 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !65
  %i.mx = call ptr @zend_string_concat2(ptr noundef nonnull %i.mp, i64 noundef %i.mr, ptr noundef nonnull %i.mu, i64 noundef %i.mw) #8
  br label %bb.cr

.unreachabledefault.i:                            ; preds = %bb.cm
  unreachable

bb.cq:                                            ; preds = %bb.cm
  %i.my = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !65
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !53 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !65
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !53 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !65
  %i.nl = call ptr @zend_string_concat3(ptr noundef nonnull %i.my, i64 noundef %i.na, ptr noundef nonnull %i.nd, i64 noundef %i.nf, ptr noundef nonnull %i.ni, i64 noundef %i.nk) #8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.0.i669 = phi ptr [ %i.mx, %bb.cp ], [ %i.nl, %bb.cq ] ; 3 uses
  %i.nm = add nuw nsw i64 %i.mi, 4294967295
  %i.nn = getelementptr inbounds nuw i8, ptr %.0.i669, i64 8 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.no, 0
  br i1 %.not.i.i.i, label %bb.cs, label %bias_key.exit.i

bb.cs:                                            ; preds = %bb.cr
  %i.np = call i64 @zend_string_hash_func(ptr noundef nonnull %.0.i669) #8
  br label %bias_key.exit.i

bias_key.exit.i:                                  ; preds = %bb.cs, %bb.cr
  %i.nq = phi i64 [ %i.np, %bb.cs ], [ %i.no, %bb.cr ]
  %8 = and i64 %i.nm, 4294967295
  %i.nr = add i64 %i.nq, %8
  store i64 %i.nr, ptr %i.nn, align 8, !tbaa !66
  br label %create_str_cache_key.exit

create_str_cache_key.exit:                        ; preds = %bb.cn, %bb.co, %bias_key.exit.i
  %.017.i = phi ptr [ %.0.i669, %bias_key.exit.i ], [ %i.mj, %bb.cn ], [ %i.mj, %bb.co ] ; 10 uses
  %i.ns = call ptr @zend_hash_find(ptr noundef nonnull %7, ptr noundef nonnull %.017.i) #8 ; 2 uses
  %.not619 = icmp eq ptr %i.ns, null
  br i1 %.not619, label %bb.da, label %bb.ct

bb.ct:                                            ; preds = %create_str_cache_key.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !53
  %i.nv = and i32 %i.nu, 64
  %.not.i655 = icmp eq i32 %i.nv, 0
  br i1 %.not.i655, label %bb.cu, label %zend_string_release_ex.exit656

bb.cu:                                            ; preds = %bb.ct
  %i.nw = load i32, ptr %.017.i, align 4, !tbaa !61 ; 2 uses
  %i.nx = icmp ne i32 %i.nw, 0
  call void @llvm.assume(i1 %i.nx)
  %i.ny = add i32 %i.nw, -1                       ; 2 uses
  store i32 %i.ny, ptr %.017.i, align 4, !tbaa !61
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.cv, label %zend_string_release_ex.exit656

bb.cv:                                            ; preds = %bb.cu
  call void @_efree(ptr noundef nonnull %.017.i) #8
  br label %zend_string_release_ex.exit656

zend_string_release_ex.exit656:                   ; preds = %bb.ct, %bb.cu, %bb.cv
  %i.oa = load i64, ptr %i.ns, align 8, !tbaa !53
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = getelementptr inbounds [4 x i8], ptr %.0.i638, i64 %i.gw
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !63
  %i.od = load ptr, ptr %i.gu, align 8, !tbaa !58
  %i.oe = getelementptr inbounds [16 x i8], ptr %i.od, i64 %i.gw ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 9
  %i.og = load i8, ptr %i.of, align 1, !tbaa !53
  %.not.i645 = icmp eq i8 %i.og, 0
  br i1 %.not.i645, label %zval_ptr_dtor_nogc.exit647, label %bb.cw

bb.cw:                                            ; preds = %zend_string_release_ex.exit656
  %i.oh = load ptr, ptr %i.oe, align 8, !tbaa !53 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !61 ; 2 uses
  %i.oj = icmp ne i32 %i.oi, 0
  call void @llvm.assume(i1 %i.oj)
  %i.ok = add i32 %i.oi, -1                       ; 2 uses
  store i32 %i.ok, ptr %i.oh, align 4, !tbaa !61
  %.not3.i646 = icmp eq i32 %i.ok, 0
  br i1 %.not3.i646, label %bb.cx, label %zval_ptr_dtor_nogc.exit647

bb.cx:                                            ; preds = %bb.cw
  %i.ol = load ptr, ptr %i.oe, align 8, !tbaa !53
  call void @rc_dtor_func(ptr noundef %i.ol) #8
  br label %zval_ptr_dtor_nogc.exit647

zval_ptr_dtor_nogc.exit647:                       ; preds = %zend_string_release_ex.exit656, %bb.cw, %bb.cx
  %i.om = load i8, ptr %i.gx, align 1, !tbaa !55  ; 2 uses
  %i.on = icmp ugt i8 %i.om, 1
  br i1 %i.on, label %.lr.ph728.preheader, label %zval_ptr_dtor_nogc.exit653

.lr.ph728.preheader:                              ; preds = %zval_ptr_dtor_nogc.exit647
  %i.oo = zext i8 %i.om to i32
  br label %.lr.ph728

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %zval_ptr_dtor_nogc.exit644
  %indvars.iv = phi i64 [ %i.gw, %.lr.ph728.preheader ], [ %indvars.iv.next, %zval_ptr_dtor_nogc.exit644 ]
  %.0591726 = phi i32 [ %i.oo, %.lr.ph728.preheader ], [ %i.oy, %zval_ptr_dtor_nogc.exit644 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.op = load ptr, ptr %i.gu, align 8, !tbaa !58
  %i.oq = getelementptr inbounds [16 x i8], ptr %i.op, i64 %indvars.iv.next ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 9
  %i.os = load i8, ptr %i.or, align 1, !tbaa !53
  %.not.i642 = icmp eq i8 %i.os, 0
  br i1 %.not.i642, label %zval_ptr_dtor_nogc.exit644, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph728
  %i.ot = load ptr, ptr %i.oq, align 8, !tbaa !53 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !61 ; 2 uses
  %i.ov = icmp ne i32 %i.ou, 0
  call void @llvm.assume(i1 %i.ov)
  %i.ow = add i32 %i.ou, -1                       ; 2 uses
  store i32 %i.ow, ptr %i.ot, align 4, !tbaa !61
  %.not3.i643 = icmp eq i32 %i.ow, 0
  br i1 %.not3.i643, label %bb.cz, label %zval_ptr_dtor_nogc.exit644

bb.cz:                                            ; preds = %bb.cy
  %i.ox = load ptr, ptr %i.oq, align 8, !tbaa !53
  call void @rc_dtor_func(ptr noundef %i.ox) #8
  br label %zval_ptr_dtor_nogc.exit644

zval_ptr_dtor_nogc.exit644:                       ; preds = %.lr.ph728, %bb.cy, %bb.cz
  %i.oy = add nsw i32 %.0591726, -1
  %i.oz = icmp sgt i32 %.0591726, 2
  br i1 %i.oz, label %.lr.ph728, label %zval_ptr_dtor_nogc.exit653.loopexit759, !llvm.loop !13

bb.da:                                            ; preds = %create_str_cache_key.exit
  %i.pa = getelementptr inbounds [4 x i8], ptr %.0.i638, i64 %i.gw
  store i32 %.0575742, ptr %i.pa, align 4, !tbaa !63
  %i.pb = sext i32 %.0575742 to i64               ; 3 uses
  store i64 %i.pb, ptr %6, align 8, !tbaa !53
  store i32 4, ptr %i.gv, align 8, !tbaa !53
  %i.pc = call ptr @zend_hash_add_new(ptr noundef nonnull %7, ptr noundef nonnull %.017.i, ptr noundef nonnull %6) #8 ; 0 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !53
  %i.pf = and i32 %i.pe, 64
  %.not.i654 = icmp eq i32 %i.pf, 0
  br i1 %.not.i654, label %bb.db, label %zend_string_release_ex.exit

bb.db:                                            ; preds = %bb.da
  %i.pg = load i32, ptr %.017.i, align 4, !tbaa !61 ; 2 uses
  %i.ph = icmp ne i32 %i.pg, 0
  call void @llvm.assume(i1 %i.ph)
  %i.pi = add i32 %i.pg, -1                       ; 2 uses
  store i32 %i.pi, ptr %.017.i, align 4, !tbaa !61
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.dc, label %zend_string_release_ex.exit

bb.dc:                                            ; preds = %bb.db
  call void @_efree(ptr noundef nonnull %.017.i) #8
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.da, %bb.db, %bb.dc
  %.not620 = icmp eq i32 %.0572743, %.0575742
  br i1 %.not620, label %zend_string_release_ex.exit._crit_edge, label %bb.dd

zend_string_release_ex.exit._crit_edge:           ; preds = %zend_string_release_ex.exit
  %.pre770 = load i8, ptr %i.gx, align 1, !tbaa !55
  br label %bb.de

bb.dd:                                            ; preds = %zend_string_release_ex.exit
  %i.pk = load ptr, ptr %i.gu, align 8, !tbaa !58 ; 2 uses
  %i.pl = getelementptr inbounds [16 x i8], ptr %i.pk, i64 %i.pb
  %i.pm = getelementptr inbounds [16 x i8], ptr %i.pk, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull align 8 dereferenceable(16) %i.pm, i64 16, i1 false), !tbaa.struct !62
  %i.pn = getelementptr inbounds i8, ptr %.0.i, i64 %i.pb
  %i.po = load i8, ptr %i.gx, align 1, !tbaa !53  ; 2 uses
  store i8 %i.po, ptr %i.pn, align 1, !tbaa !53
  br label %bb.de

bb.de:                                            ; preds = %zend_string_release_ex.exit._crit_edge, %bb.dd
  %i.pp = phi i8 [ %.pre770, %zend_string_release_ex.exit._crit_edge ], [ %i.po, %bb.dd ] ; 3 uses
  %.6729 = add i32 %.0575742, 1                   ; 3 uses
  %i.pq = icmp ugt i8 %i.pp, 1
  br i1 %i.pq, label %.lr.ph735.preheader, label %zval_ptr_dtor_nogc.exit653

.lr.ph735.preheader:                              ; preds = %bb.de
  %i.pr = zext i8 %i.pp to i32                    ; 3 uses
  %i.ps = sext i32 %.6729 to i64                  ; 3 uses
  %i.pt = and i32 %i.pr, 1
  %lcmp.mod.not.not = icmp eq i32 %i.pt, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph735.prol, label %.lr.ph735.prol.loopexit

.lr.ph735.prol:                                   ; preds = %.lr.ph735.preheader
  %indvars.iv.next766.prol = add nsw i64 %i.gw, 1 ; 3 uses
  %.not621.prol = icmp eq i32 %.0575742, %.0572743
  br i1 %.not621.prol, label %.lr.ph735.prol.loopexit.unr-lcssa, label %bb.df

bb.df:                                            ; preds = %.lr.ph735.prol
  %i.pu = load ptr, ptr %i.gu, align 8, !tbaa !58 ; 2 uses
  %i.pv = getelementptr inbounds [16 x i8], ptr %i.pu, i64 %i.ps
  %i.pw = getelementptr inbounds [16 x i8], ptr %i.pu, i64 %indvars.iv.next766.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pv, ptr noundef nonnull align 8 dereferenceable(16) %i.pw, i64 16, i1 false), !tbaa.struct !62
  br label %.lr.ph735.prol.loopexit.unr-lcssa

.lr.ph735.prol.loopexit.unr-lcssa:                ; preds = %bb.df, %.lr.ph735.prol
  %i.px = add nsw i32 %i.pr, -1
  %indvars.iv.next764.prol = add nsw i64 %i.ps, 1 ; 2 uses
  br label %.lr.ph735.prol.loopexit

.lr.ph735.prol.loopexit:                          ; preds = %.lr.ph735.prol.loopexit.unr-lcssa, %.lr.ph735.preheader
  %indvars.iv765.unr = phi i64 [ %i.gw, %.lr.ph735.preheader ], [ %indvars.iv.next766.prol, %.lr.ph735.prol.loopexit.unr-lcssa ]
  %indvars.iv763.unr = phi i64 [ %i.ps, %.lr.ph735.preheader ], [ %indvars.iv.next764.prol, %.lr.ph735.prol.loopexit.unr-lcssa ]
  %.6.in731.unr = phi i32 [ %.0575742, %.lr.ph735.preheader ], [ %.6729, %.lr.ph735.prol.loopexit.unr-lcssa ]
  %.1592730.unr = phi i32 [ %i.pr, %.lr.ph735.preheader ], [ %i.px, %.lr.ph735.prol.loopexit.unr-lcssa ]
  %indvars.iv.next764.lcssa.unr = phi i64 [ poison, %.lr.ph735.preheader ], [ %indvars.iv.next764.prol, %.lr.ph735.prol.loopexit.unr-lcssa ]
  %indvars.iv.next766.lcssa.unr = phi i64 [ poison, %.lr.ph735.preheader ], [ %indvars.iv.next766.prol, %.lr.ph735.prol.loopexit.unr-lcssa ]
  %i.py = icmp eq i8 %i.pp, 2
  br i1 %i.py, label %zval_ptr_dtor_nogc.exit653.loopexit, label %.lr.ph735

.lr.ph735:                                        ; preds = %.lr.ph735.prol.loopexit, %bb.di
  %indvars.iv765 = phi i64 [ %indvars.iv.next766.1, %bb.di ], [ %indvars.iv765.unr, %.lr.ph735.prol.loopexit ] ; 3 uses
  %indvars.iv763 = phi i64 [ %indvars.iv.next764.1, %bb.di ], [ %indvars.iv763.unr, %.lr.ph735.prol.loopexit ] ; 4 uses
  %.6.in731 = phi i32 [ %i.qi, %bb.di ], [ %.6.in731.unr, %.lr.ph735.prol.loopexit ]
  %.1592730 = phi i32 [ %i.qg, %bb.di ], [ %.1592730.unr, %.lr.ph735.prol.loopexit ] ; 2 uses
  %indvars.iv.next766 = add nsw i64 %indvars.iv765, 1 ; 2 uses
  %i.pz = trunc nsw i64 %indvars.iv765 to i32
  %.not621 = icmp eq i32 %.6.in731, %i.pz
  br i1 %.not621, label %.lr.ph735.1, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph735
  %i.qa = load ptr, ptr %i.gu, align 8, !tbaa !58 ; 2 uses
  %i.qb = getelementptr inbounds [16 x i8], ptr %i.qa, i64 %indvars.iv763
  %i.qc = getelementptr inbounds [16 x i8], ptr %i.qa, i64 %indvars.iv.next766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qb, ptr noundef nonnull align 8 dereferenceable(16) %i.qc, i64 16, i1 false), !tbaa.struct !62
  br label %.lr.ph735.1

.lr.ph735.1:                                      ; preds = %bb.dg, %.lr.ph735
  %indvars.iv.next764 = add nsw i64 %indvars.iv763, 1 ; 2 uses
  %indvars.iv.next766.1 = add nsw i64 %indvars.iv765, 2 ; 3 uses
end_hunk_0
