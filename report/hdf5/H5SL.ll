Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5SL?download=true
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@H5SL_remove:bb.a
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !30
  %i.jy = shl i64 %i.is, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jr, ptr align 1 %i.jx, i64 %i.jy, i1 false)
  %i.jz = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.ka = load i64, ptr %i.it, align 8, !tbaa !39
  %i.kb = getelementptr [8 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.kb, i64 -8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !20
  %i.ke = load ptr, ptr %i.jw, align 8, !tbaa !30
  %i.kf = tail call ptr @H5FL_fac_free(ptr noundef %i.kd, ptr noundef %i.ke) #9 ; 0 uses
  store ptr %i.jr, ptr %i.jw, align 8, !tbaa !30
  %.pre4882 = load i64, ptr %i.iq, align 8, !tbaa !37
  %.pre4942 = add i64 %.pre4882, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.at
  %.pre-phi4943 = phi i64 [ %.pre4942, %bb.bb ], [ %i.is, %bb.at ]
  store i64 %.pre-phi4943, ptr %i.iq, align 8, !tbaa !37
  %i.kg = load i32, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp eq i64 %i.ir, %i.kh
  br i1 %i.ki, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %i.kj = getelementptr inbounds nuw i8, ptr %.127074367, i64 24 ; 4 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !39 ; 2 uses
  %.highbits3422 = lshr i64 %i.is, %i.kk
  %.not3421 = icmp eq i64 %.highbits3422, 0
  br i1 %.not3421, label %._crit_edge4937, label %bb.be

._crit_edge4937:                                  ; preds = %bb.bd
  %.pre4889.pre = load ptr, ptr %i.hd, align 8, !tbaa !30
  br label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.kl = add i64 %i.kk, 1                        ; 3 uses
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !39
  %i.km = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3423 = icmp ult i64 %i.kl, %i.km
  br i1 %.not3423, label %._crit_edge4885, label %bb.bf

._crit_edge4885:                                  ; preds = %bb.be
  %.pre4886 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.kn = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3424 = icmp ult i64 %i.km, %i.kn
  br i1 %.not3424, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ko = shl i64 %i.kn, 1
  store i64 %i.ko, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.kp = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.kq = shl i64 %i.kn, 4
  %i.kr = tail call ptr @H5MM_realloc(ptr noundef %i.kp, i64 noundef %i.kq) #9 ; 2 uses
  store ptr %i.kr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.bh, label %._crit_edge4883

._crit_edge4883:                                  ; preds = %bb.bg
  %.pre4884 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kt = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.ku = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.kv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1145, i64 noundef %i.kt, i64 noundef %i.ku, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.bi:                                            ; preds = %._crit_edge4883, %bb.bf
  %i.kw = phi i64 [ %.pre4884, %._crit_edge4883 ], [ %i.km, %bb.bf ]
  %i.kx = shl i64 8, %i.kw
  %i.ky = tail call ptr @H5FL_fac_init(i64 noundef %i.kx) #9
  %i.kz = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.la = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.la
  store ptr %i.ky, ptr %i.lb, align 8, !tbaa !20
  %i.lc = add i64 %i.la, 1
  store i64 %i.lc, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4887 = load i64, ptr %i.kj, align 8, !tbaa !39
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge4885, %bb.bi
  %i.ld = phi i64 [ %i.kl, %._crit_edge4885 ], [ %.pre4887, %bb.bi ]
  %i.le = phi ptr [ %.pre4886, %._crit_edge4885 ], [ %i.kz, %bb.bi ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.ld
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !20
  %i.lh = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.lg) #9 ; 4 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lj = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.lk = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.ll = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1145, i64 noundef %i.lj, i64 noundef %i.lk, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.bl:                                            ; preds = %bb.bj
  %i.lm = load ptr, ptr %i.hd, align 8, !tbaa !30
  %i.ln = shl nsw i64 %i.is, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lh, ptr align 1 %i.lm, i64 %i.ln, i1 false)
  %i.lo = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.lp = load i64, ptr %i.kj, align 8, !tbaa !39
  %i.lq = getelementptr [8 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !20
  %i.lt = load ptr, ptr %i.hd, align 8, !tbaa !30
  %i.lu = tail call ptr @H5FL_fac_free(ptr noundef %i.ls, ptr noundef %i.lt) #9 ; 0 uses
  store ptr %i.lh, ptr %i.hd, align 8, !tbaa !30
  %.pre4888 = load i32, ptr %i.j, align 8, !tbaa !26
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge4937, %bb.bl
  %.pre4889 = phi ptr [ %i.lh, %bb.bl ], [ %.pre4889.pre, %._crit_edge4937 ]
  %i.lv = phi i32 [ %.pre4888, %bb.bl ], [ %i.kg, %._crit_edge4937 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.127074367, i64 16 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !37
  %i.ly = add i64 %i.lx, 1
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !37
  %i.lz = add nsw i32 %i.lv, 1
  store i32 %i.lz, ptr %i.j, align 8, !tbaa !26
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bc
  %i.ma = load ptr, ptr %i.hd, align 8, !tbaa !30 ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.is
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !31
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink5422 = phi ptr [ null, %bb.bm ], [ %i.mc, %bb.bn ]
  %i.md = phi ptr [ %.pre4889, %bb.bm ], [ %i.ma, %bb.bn ]
  %i.me = getelementptr inbounds nuw i8, ptr %.22829.lcssa, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !30
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.is
  store ptr %.sink5422, ptr %i.mg, align 8, !tbaa !31
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.is
  store ptr %.22829.lcssa, ptr %i.mh, align 8, !tbaa !31
  br label %.thread3459

bb.bp:                                            ; preds = %bb.as
  %i.mi = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv4587
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !31
  %.not3414 = icmp eq ptr %i.mk, null
  br i1 %.not3414, label %bb.bq, label %.thread3459

bb.bq:                                            ; preds = %bb.bp
  %i.ml = load i64, ptr %i.w, align 8, !tbaa !39
  %i.mm = add i64 %i.ml, -1                       ; 3 uses
  %i.mn = shl nuw i64 1, %i.mm
  %.not3415 = icmp ult i64 %i.mn, %indvars.iv4587
  br i1 %.not3415, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i64 %i.mm, ptr %i.w, align 8, !tbaa !39
  %i.mo = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mm
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !20
  %i.mr = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.mq) #9 ; 3 uses
  %.not3416 = icmp eq ptr %i.mr, null
  br i1 %.not3416, label %.thread3500, label %bb.bs

.thread3500:                                      ; preds = %bb.br
  %i.ms = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.mt = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.mu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1145, i64 noundef %i.ms, i64 noundef %i.mt, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.bs:                                            ; preds = %bb.br
  %i.mv = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.mw = shl nuw nsw i64 %indvars.iv4587, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mr, ptr align 1 %i.mv, i64 %i.mw, i1 false)
  %i.mx = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.my = load i64, ptr %i.w, align 8, !tbaa !39
  %i.mz = getelementptr [8 x i8], ptr %i.mx, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !20
  %i.nc = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.nd = tail call ptr @H5FL_fac_free(ptr noundef %i.nb, ptr noundef %i.nc) #9 ; 0 uses
  store ptr %i.mr, ptr %i.v, align 8, !tbaa !30
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %i.ne = load i64, ptr %i.x, align 8, !tbaa !37
  %i.nf = add i64 %i.ne, -1
  store i64 %i.nf, ptr %i.x, align 8, !tbaa !37
  %i.ng = load i32, ptr %i.j, align 8, !tbaa !26
  %i.nh = add nsw i32 %i.ng, -1
  store i32 %i.nh, ptr %i.j, align 8, !tbaa !26
  br label %.thread3459

.thread3459:                                      ; preds = %.lr.ph4356.peel.next4572, %.preheader, %.thread.peel4576, %.thread.peel, %bb.f, %bb.bo, %bb.ah, %bb.ai, %bb.am, %bb.bp, %bb.bt
  %.227013464 = phi ptr [ %i.ad, %.thread.peel4576 ], [ %.127094366, %bb.ai ], [ %.127094366, %bb.am ], [ %.127094366, %bb.ah ], [ %.127094366, %bb.bp ], [ %.127094366, %bb.bt ], [ %.127094366, %bb.bo ], [ %.127094366, %.thread.peel ], [ %.127094366, %bb.f ], [ %spec.select, %.lr.ph4356.peel.next4572 ], [ %.127094366, %.preheader ]
  %.227043463 = phi ptr [ %i.am, %.thread.peel4576 ], [ %spec.select5311, %bb.ai ], [ %spec.select5311, %bb.am ], [ %spec.select5311, %bb.ah ], [ %spec.select5311, %bb.bp ], [ %spec.select5311, %bb.bt ], [ %spec.select5311, %bb.bo ], [ %.127094366, %.thread.peel ], [ %i.ad, %bb.f ], [ %spec.select5418.a, %.lr.ph4356.peel.next4572 ], [ %.127094366, %.preheader ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.227043463, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !30 ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.aa
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !31 ; 2 uses
  %2 = trunc nuw i64 %indvars.iv4587 to i32
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %.preheader, label %._crit_edge4371, !llvm.loop !56

._crit_edge4371:                                  ; preds = %.thread3459, %.critedge
  %.02705.lcssa = phi ptr [ %.02827.lcssa, %.critedge ], [ %i.nl, %.thread3459 ] ; 8 uses
  %.not3405 = icmp eq ptr %.02705.lcssa, null
  br i1 %.not3405, label %.thread3479, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge4371
  %i.nm = load ptr, ptr %.02705.lcssa, align 8, !tbaa !35
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !40
  %i.no = load i32, ptr %1, align 4, !tbaa !40
  %i.np = icmp eq i32 %i.nn, %i.no
  br i1 %i.np, label %bb.bv, label %.thread3479

bb.bv:                                            ; preds = %bb.bu
  %i.nq = getelementptr inbounds nuw i8, ptr %.02705.lcssa, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !36
  %i.ns = getelementptr inbounds nuw i8, ptr %.02705.lcssa, i64 16
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !37
  %.not3406 = icmp eq i64 %i.nt, 0
  br i1 %.not3406, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nu = getelementptr inbounds nuw i8, ptr %.02705.lcssa, i64 48
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !32 ; 3 uses
  %i.nw = load <2 x ptr>, ptr %i.nv, align 8, !tbaa !73
  store <2 x ptr> %i.nw, ptr %.02705.lcssa, align 8, !tbaa !73
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !38
  %i.nz = getelementptr inbounds nuw i8, ptr %.02705.lcssa, i64 32
  store i32 %i.ny, ptr %i.nz, align 8, !tbaa !38
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.32830 = phi ptr [ %i.nv, %bb.bw ], [ %.02705.lcssa, %bb.bv ] ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.32830, i64 40 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !30 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !31 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.32830, i64 48 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !32
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !30
  store ptr %i.oc, ptr %i.og, align 8, !tbaa !31
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !34
  %i.oj = icmp eq ptr %i.oi, %.32830
  %i.ok = load ptr, ptr %i.od, align 8, !tbaa !32 ; 2 uses
  br i1 %i.oj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr %i.ok, ptr %i.oh, align 8, !tbaa !34
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 48
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !27
  %i.oo = add i64 %i.on, -1
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !27
  %i.op = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !20
  %i.or = tail call ptr @H5FL_fac_free(ptr noundef %i.oq, ptr noundef nonnull %i.ob) #9
  store ptr %i.or, ptr %i.oa, align 8, !tbaa !30
  %i.os = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.32830) #9 ; 0 uses
  br label %.thread3479

bb.cb:                                            ; preds = %bb.b
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !26 ; 4 uses
  %i.ov = icmp slt i32 %i.ou, 0
  br i1 %i.ov, label %.thread3479, label %.preheader3889

.preheader3889:                                   ; preds = %bb.cb
  %.not33674307 = icmp eq ptr %i.h, null
  br i1 %.not33674307, label %.critedge122, label %.lr.ph4311

.lr.ph4311:                                       ; preds = %.preheader3889
  %i.ow = zext nneg i32 %i.ou to i64
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph4311, %.critedge124
  %.026884310 = phi ptr [ %i.h, %.lr.ph4311 ], [ %.026904309, %.critedge124 ]
  %.026904309 = phi ptr [ %i.h, %.lr.ph4311 ], [ %.428314308, %.critedge124 ] ; 3 uses
  %.428314308 = phi ptr [ %i.h, %.lr.ph4311 ], [ %i.pe, %.critedge124 ] ; 5 uses
  %i.ox = load ptr, ptr %.428314308, align 8, !tbaa !35 ; 2 uses
  %.not3368 = icmp eq ptr %i.ox, null
  br i1 %.not3368, label %.critedge124, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !18
  %i.oz = load i64, ptr %1, align 8, !tbaa !18
  %i.pa = icmp ult i64 %i.oy, %i.oz
  br i1 %i.pa, label %.critedge124, label %.critedge122

.critedge124:                                     ; preds = %bb.cc, %bb.cd
  %i.pb = getelementptr inbounds nuw i8, ptr %.428314308, i64 40
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !30
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.ow
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !31 ; 2 uses
  %.not3367 = icmp eq ptr %i.pe, null
  br i1 %.not3367, label %.critedge122, label %bb.cc, !llvm.loop !57

.critedge122:                                     ; preds = %bb.cd, %.critedge124, %.preheader3889
  %.42831.lcssa = phi ptr [ null, %.preheader3889 ], [ null, %.critedge124 ], [ %.428314308, %bb.cd ] ; 2 uses
  %.02690.lcssa = phi ptr [ null, %.preheader3889 ], [ %.428314308, %.critedge124 ], [ %.026904309, %bb.cd ] ; 2 uses
  %.02688.lcssa = phi ptr [ null, %.preheader3889 ], [ %.026904309, %.critedge124 ], [ %.026884310, %bb.cd ]
  %.not4380 = icmp eq i32 %i.ou, 0
  br i1 %.not4380, label %._crit_edge4338, label %.preheader3888.lr.ph

.preheader3888.lr.ph:                             ; preds = %.critedge122
  %i.pf = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.pi = zext nneg i32 %i.ou to i64
  %.phi.trans.insert4835 = getelementptr inbounds nuw i8, ptr %.02690.lcssa, i64 40
  %.pre4836.a = load ptr, ptr %.phi.trans.insert4835, align 8, !tbaa !30
  br label %.preheader3888

.preheader3888:                                   ; preds = %.preheader3888.lr.ph, %.thread3507
  %i.pj = phi ptr [ %.pre4836.a, %.preheader3888.lr.ph ], [ %i.act, %.thread3507 ] ; 3 uses
  %indvars.iv4568 = phi i64 [ %i.pi, %.preheader3888.lr.ph ], [ %i.pk, %.thread3507 ] ; 9 uses
  %.026874335 = phi ptr [ %.42831.lcssa, %.preheader3888.lr.ph ], [ %i.acv, %.thread3507 ] ; 6 uses
  %.126894334 = phi ptr [ %.02688.lcssa, %.preheader3888.lr.ph ], [ %.226833512, %.thread3507 ] ; 4 uses
  %.126914333 = phi ptr [ %.02690.lcssa, %.preheader3888.lr.ph ], [ %.226863511, %.thread3507 ] ; 20 uses
  %i.pk = add nsw i64 %indvars.iv4568, -1         ; 10 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.126914333, i64 40 ; 8 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.pk
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !31 ; 7 uses
  %i.po = icmp eq ptr %i.pn, %.026874335
  br i1 %i.po, label %.thread3507, label %.lr.ph4323.preheader

.lr.ph4323.preheader:                             ; preds = %.preheader3888
  %i.pp = load ptr, ptr %i.pn, align 8, !tbaa !35
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !18
  %i.pr = load i64, ptr %1, align 8, !tbaa !18    ; 3 uses
  %i.ps = icmp ult i64 %i.pq, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !30
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.pk
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !31 ; 6 uses
  %i.px = icmp eq ptr %i.pw, %.026874335          ; 2 uses
  br i1 %i.ps, label %.thread3501.peel.thread, label %.thread3501.peel

.thread3501.peel:                                 ; preds = %.lr.ph4323.preheader
  br i1 %i.px, label %bb.cf, label %.thread3507

.thread3501.peel.thread:                          ; preds = %.lr.ph4323.preheader
  br i1 %i.px, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.thread3501.peel.thread
  %i.py = load ptr, ptr %i.pw, align 8, !tbaa !35
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !18
  %i.qa = icmp ult i64 %i.pz, %i.pr
  br i1 %i.qa, label %.thread3501.peel4557, label %.thread3507

.thread3501.peel4557:                             ; preds = %bb.ce
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !30
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.pk
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !31 ; 3 uses
  %i.qf = icmp eq ptr %i.qe, %.026874335
  br i1 %i.qf, label %.thread3507, label %.lr.ph4323.peel.next4553

.lr.ph4323.peel.next4553:                         ; preds = %.thread3501.peel4557
  %i.qg = load ptr, ptr %i.qe, align 8, !tbaa !35
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !18
  %i.qi = icmp ult i64 %i.qh, %i.pr               ; 2 uses
  %spec.select5426 = select i1 %i.qi, ptr %i.pw, ptr %i.pn
  %spec.select5427 = select i1 %i.qi, ptr %i.qe, ptr %i.pw
  br label %.thread3507

bb.cf:                                            ; preds = %.thread3501.peel, %.thread3501.peel.thread
  %.02684.lcssa.ph = phi ptr [ null, %.thread3501.peel.thread ], [ %.126914333, %.thread3501.peel ] ; 2 uses
  %.not33745322 = icmp eq ptr %.02684.lcssa.ph, null
  %spec.select34395323 = select i1 %.not33745322, ptr %i.pn, ptr %.02684.lcssa.ph ; 6 uses
  %i.qj = icmp eq ptr %.126894334, %.126914333
  br i1 %i.qj, label %bb.cg, label %bb.dm

bb.cg:                                            ; preds = %bb.cf
  %i.qk = getelementptr inbounds nuw i8, ptr %.026874335, i64 40 ; 4 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !30 ; 3 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv4568
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !31
  %i.qo = getelementptr inbounds nuw i8, ptr %.026874335, i64 16 ; 3 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !37 ; 5 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !31
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.qp
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !31
  %i.qt = getelementptr inbounds nuw i8, ptr %.026874335, i64 24 ; 3 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !39
  %i.qv = add i64 %i.qu, -1                       ; 3 uses
  %i.qw = shl nuw i64 1, %i.qv
  %.not3389 = icmp ugt i64 %i.qp, %i.qw
  br i1 %.not3389, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
end_hunk_0
begin_hunk_1_@H5SL_remove:bb.a
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !30
  %i.zi = shl i64 %i.yc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zb, ptr align 1 %i.zh, i64 %i.zi, i1 false)
  %i.zj = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.zk = load i64, ptr %i.yd, align 8, !tbaa !39
  %i.zl = getelementptr [8 x i8], ptr %i.zj, i64 %i.zk
  %i.zm = getelementptr i8, ptr %i.zl, i64 -8
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !20
  %i.zo = load ptr, ptr %i.zg, align 8, !tbaa !30
  %i.zp = tail call ptr @H5FL_fac_free(ptr noundef %i.zn, ptr noundef %i.zo) #9 ; 0 uses
  store ptr %i.zb, ptr %i.zg, align 8, !tbaa !30
  %.pre4847 = load i64, ptr %i.ya, align 8, !tbaa !37
  %.pre4946 = add i64 %.pre4847, 1
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.ds
  %.pre-phi4947 = phi i64 [ %.pre4946, %bb.ea ], [ %i.yc, %bb.ds ]
  store i64 %.pre-phi4947, ptr %i.ya, align 8, !tbaa !37
  %i.zq = load i32, ptr %i.ot, align 8, !tbaa !26 ; 2 uses
  %i.zr = sext i32 %i.zq to i64
  %i.zs = icmp eq i64 %i.yb, %i.zr
  br i1 %i.zs, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %bb.eb
  %i.zt = getelementptr inbounds nuw i8, ptr %.126894334, i64 24 ; 4 uses
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !39 ; 2 uses
  %.highbits3386 = lshr i64 %i.yc, %i.zu
  %.not3385 = icmp eq i64 %.highbits3386, 0
  br i1 %.not3385, label %._crit_edge4933, label %bb.ed

._crit_edge4933:                                  ; preds = %bb.ec
  %.pre4854.pre = load ptr, ptr %i.wn, align 8, !tbaa !30
  br label %bb.el

bb.ed:                                            ; preds = %bb.ec
  %i.zv = add i64 %i.zu, 1                        ; 3 uses
  store i64 %i.zv, ptr %i.zt, align 8, !tbaa !39
  %i.zw = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3387 = icmp ult i64 %i.zv, %i.zw
  br i1 %.not3387, label %._crit_edge4850, label %bb.ee

._crit_edge4850:                                  ; preds = %bb.ed
  %.pre4851 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  %i.zx = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3388 = icmp ult i64 %i.zw, %i.zx
  br i1 %.not3388, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zy = shl i64 %i.zx, 1
  store i64 %i.zy, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.zz = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aaa = shl i64 %i.zx, 4
  %i.aab = tail call ptr @H5MM_realloc(ptr noundef %i.zz, i64 noundef %i.aaa) #9 ; 2 uses
  store ptr %i.aab, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aac = icmp eq ptr %i.aab, null
  br i1 %i.aac, label %bb.eg, label %._crit_edge4848

._crit_edge4848:                                  ; preds = %bb.ef
  %.pre4849 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.aad = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.aae = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.aaf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1149, i64 noundef %i.aad, i64 noundef %i.aae, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.eh:                                            ; preds = %._crit_edge4848, %bb.ee
  %i.aag = phi i64 [ %.pre4849, %._crit_edge4848 ], [ %i.zw, %bb.ee ]
  %i.aah = shl i64 8, %i.aag
  %i.aai = tail call ptr @H5FL_fac_init(i64 noundef %i.aah) #9
  %i.aaj = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.aak = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %i.aak
  store ptr %i.aai, ptr %i.aal, align 8, !tbaa !20
  %i.aam = add i64 %i.aak, 1
  store i64 %i.aam, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4852 = load i64, ptr %i.zt, align 8, !tbaa !39
  br label %bb.ei

bb.ei:                                            ; preds = %._crit_edge4850, %bb.eh
  %i.aan = phi i64 [ %i.zv, %._crit_edge4850 ], [ %.pre4852, %bb.eh ]
  %i.aao = phi ptr [ %.pre4851, %._crit_edge4850 ], [ %i.aaj, %bb.eh ]
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %i.aan
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !20
  %i.aar = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.aaq) #9 ; 4 uses
  %i.aas = icmp eq ptr %i.aar, null
  br i1 %i.aas, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aat = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.aau = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.aav = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1149, i64 noundef %i.aat, i64 noundef %i.aau, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.ek:                                            ; preds = %bb.ei
  %i.aaw = load ptr, ptr %i.wn, align 8, !tbaa !30
  %i.aax = shl nsw i64 %i.yc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aar, ptr align 1 %i.aaw, i64 %i.aax, i1 false)
  %i.aay = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aaz = load i64, ptr %i.zt, align 8, !tbaa !39
  %i.aba = getelementptr [8 x i8], ptr %i.aay, i64 %i.aaz
  %i.abb = getelementptr i8, ptr %i.aba, i64 -8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !20
  %i.abd = load ptr, ptr %i.wn, align 8, !tbaa !30
  %i.abe = tail call ptr @H5FL_fac_free(ptr noundef %i.abc, ptr noundef %i.abd) #9 ; 0 uses
  store ptr %i.aar, ptr %i.wn, align 8, !tbaa !30
  %.pre4853 = load i32, ptr %i.ot, align 8, !tbaa !26
  br label %bb.el

bb.el:                                            ; preds = %._crit_edge4933, %bb.ek
  %.pre4854 = phi ptr [ %i.aar, %bb.ek ], [ %.pre4854.pre, %._crit_edge4933 ]
  %i.abf = phi i32 [ %.pre4853, %bb.ek ], [ %i.zq, %._crit_edge4933 ]
  %i.abg = getelementptr inbounds nuw i8, ptr %.126894334, i64 16 ; 2 uses
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !37
  %i.abi = add i64 %i.abh, 1
  store i64 %i.abi, ptr %i.abg, align 8, !tbaa !37
  %i.abj = add nsw i32 %i.abf, 1
  store i32 %i.abj, ptr %i.ot, align 8, !tbaa !26
  br label %bb.en

bb.em:                                            ; preds = %bb.eb
  %i.abk = load ptr, ptr %i.wn, align 8, !tbaa !30 ; 2 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %i.yc
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !31
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %.sink5432 = phi ptr [ null, %bb.el ], [ %i.abm, %bb.em ]
  %i.abn = phi ptr [ %.pre4854, %bb.el ], [ %i.abk, %bb.em ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.62833.lcssa, i64 40
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !30
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %i.yc
  store ptr %.sink5432, ptr %i.abq, align 8, !tbaa !31
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.yc
  store ptr %.62833.lcssa, ptr %i.abr, align 8, !tbaa !31
  br label %.thread3507

bb.eo:                                            ; preds = %bb.dr
  %i.abs = load ptr, ptr %i.pf, align 8, !tbaa !30
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv4568
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !31
  %.not3378 = icmp eq ptr %i.abu, null
  br i1 %.not3378, label %bb.ep, label %.thread3507

bb.ep:                                            ; preds = %bb.eo
  %i.abv = load i64, ptr %i.pg, align 8, !tbaa !39
  %i.abw = add i64 %i.abv, -1                     ; 3 uses
  %i.abx = shl nuw i64 1, %i.abw
  %.not3379 = icmp ult i64 %i.abx, %indvars.iv4568
  br i1 %.not3379, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store i64 %i.abw, ptr %i.pg, align 8, !tbaa !39
  %i.aby = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.aby, i64 %i.abw
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !20
  %i.acb = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.aca) #9 ; 3 uses
  %.not3380 = icmp eq ptr %i.acb, null
  br i1 %.not3380, label %.thread3548, label %bb.er

.thread3548:                                      ; preds = %bb.eq
  %i.acc = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.acd = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.ace = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1149, i64 noundef %i.acc, i64 noundef %i.acd, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.er:                                            ; preds = %bb.eq
  %i.acf = load ptr, ptr %i.pf, align 8, !tbaa !30
  %i.acg = shl nuw nsw i64 %indvars.iv4568, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acb, ptr align 1 %i.acf, i64 %i.acg, i1 false)
  %i.ach = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aci = load i64, ptr %i.pg, align 8, !tbaa !39
  %i.acj = getelementptr [8 x i8], ptr %i.ach, i64 %i.aci
  %i.ack = getelementptr i8, ptr %i.acj, i64 8
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !20
  %i.acm = load ptr, ptr %i.pf, align 8, !tbaa !30
  %i.acn = tail call ptr @H5FL_fac_free(ptr noundef %i.acl, ptr noundef %i.acm) #9 ; 0 uses
  store ptr %i.acb, ptr %i.pf, align 8, !tbaa !30
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ep
  %i.aco = load i64, ptr %i.ph, align 8, !tbaa !37
  %i.acp = add i64 %i.aco, -1
  store i64 %i.acp, ptr %i.ph, align 8, !tbaa !37
  %i.acq = load i32, ptr %i.ot, align 8, !tbaa !26
  %i.acr = add nsw i32 %i.acq, -1
  store i32 %i.acr, ptr %i.ot, align 8, !tbaa !26
  br label %.thread3507

.thread3507:                                      ; preds = %.lr.ph4323.peel.next4553, %.preheader3888, %.thread3501.peel4557, %.thread3501.peel, %bb.ce, %bb.en, %bb.dg, %bb.dh, %bb.dl, %bb.eo, %bb.es
  %.226833512 = phi ptr [ %i.pn, %.thread3501.peel4557 ], [ %.126914333, %bb.dh ], [ %.126914333, %bb.dl ], [ %.126914333, %bb.dg ], [ %.126914333, %bb.eo ], [ %.126914333, %bb.es ], [ %.126914333, %bb.en ], [ %.126914333, %.thread3501.peel ], [ %.126914333, %bb.ce ], [ %spec.select5426, %.lr.ph4323.peel.next4553 ], [ %.126914333, %.preheader3888 ]
  %.226863511 = phi ptr [ %i.pw, %.thread3501.peel4557 ], [ %spec.select34395323, %bb.dh ], [ %spec.select34395323, %bb.dl ], [ %spec.select34395323, %bb.dg ], [ %spec.select34395323, %bb.eo ], [ %spec.select34395323, %bb.es ], [ %spec.select34395323, %bb.en ], [ %.126914333, %.thread3501.peel ], [ %i.pn, %bb.ce ], [ %spec.select5427, %.lr.ph4323.peel.next4553 ], [ %.126914333, %.preheader3888 ] ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.226863511, i64 40
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !30 ; 2 uses
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.pk
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !31 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv4568 to i32
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %.preheader3888, label %._crit_edge4338, !llvm.loop !58

._crit_edge4338:                                  ; preds = %.thread3507, %.critedge122
  %.02687.lcssa = phi ptr [ %.42831.lcssa, %.critedge122 ], [ %i.acv, %.thread3507 ] ; 8 uses
  %.not3369 = icmp eq ptr %.02687.lcssa, null
  br i1 %.not3369, label %.thread3479, label %bb.et

bb.et:                                            ; preds = %._crit_edge4338
  %i.acw = load ptr, ptr %.02687.lcssa, align 8, !tbaa !35
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !18
  %i.acy = load i64, ptr %1, align 8, !tbaa !18
  %i.acz = icmp eq i64 %i.acx, %i.acy
  br i1 %i.acz, label %bb.eu, label %.thread3479

bb.eu:                                            ; preds = %bb.et
  %i.ada = getelementptr inbounds nuw i8, ptr %.02687.lcssa, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !36
  %i.adc = getelementptr inbounds nuw i8, ptr %.02687.lcssa, i64 16
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !37
  %.not3370 = icmp eq i64 %i.add, 0
  br i1 %.not3370, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ade = getelementptr inbounds nuw i8, ptr %.02687.lcssa, i64 48
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !32 ; 3 uses
  %i.adg = load <2 x ptr>, ptr %i.adf, align 8, !tbaa !73
  store <2 x ptr> %i.adg, ptr %.02687.lcssa, align 8, !tbaa !73
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 32
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !38
  %i.adj = getelementptr inbounds nuw i8, ptr %.02687.lcssa, i64 32
  store i32 %i.adi, ptr %i.adj, align 8, !tbaa !38
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.72834 = phi ptr [ %i.adf, %bb.ev ], [ %.02687.lcssa, %bb.eu ] ; 4 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.72834, i64 40 ; 2 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !30 ; 2 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !31 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.72834, i64 48 ; 2 uses
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !32
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 40
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !30
  store ptr %i.adm, ptr %i.adq, align 8, !tbaa !31
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !34
  %i.adt = icmp eq ptr %i.ads, %.72834
  %i.adu = load ptr, ptr %i.adn, align 8, !tbaa !32 ; 2 uses
  br i1 %i.adt, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store ptr %i.adu, ptr %i.adr, align 8, !tbaa !34
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adm, i64 48
  store ptr %i.adu, ptr %i.adv, align 8, !tbaa !32
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !27
  %i.ady = add i64 %i.adx, -1
  store i64 %i.ady, ptr %i.adw, align 8, !tbaa !27
  %i.adz = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !20
  %i.aeb = tail call ptr @H5FL_fac_free(ptr noundef %i.aea, ptr noundef nonnull %i.adl) #9
  store ptr %i.aeb, ptr %i.adk, align 8, !tbaa !30
  %i.aec = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.72834) #9 ; 0 uses
  br label %.thread3479

bb.fa:                                            ; preds = %bb.b
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.aee = load i32, ptr %i.aed, align 8, !tbaa !26 ; 4 uses
  %i.aef = icmp slt i32 %i.aee, 0
  br i1 %i.aef, label %.thread3479, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aeg = tail call i32 @H5_hash_string(ptr noundef %1) #9 ; 9 uses
  %.not33304270 = icmp eq ptr %i.h, null
  br i1 %.not33304270, label %.critedge128, label %.lr.ph4275

.lr.ph4275:                                       ; preds = %bb.fb
  %i.aeh = zext nneg i32 %i.aee to i64
  br label %bb.fc

bb.fc:                                            ; preds = %.lr.ph4275, %.critedge130
  %.026734273 = phi ptr [ %i.h, %.lr.ph4275 ], [ %.026754272, %.critedge130 ] ; 2 uses
  %.026754272 = phi ptr [ %i.h, %.lr.ph4275 ], [ %.828354271, %.critedge130 ] ; 4 uses
  %.828354271 = phi ptr [ %i.h, %.lr.ph4275 ], [ %i.aer, %.critedge130 ] ; 7 uses
  %i.aei = load ptr, ptr %.828354271, align 8, !tbaa !35 ; 2 uses
  %.not3331 = icmp eq ptr %i.aei, null
  br i1 %.not3331, label %.critedge130, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aej = getelementptr inbounds nuw i8, ptr %.828354271, i64 32
  %i.aek = load i32, ptr %i.aej, align 8, !tbaa !38 ; 2 uses
  %i.ael = icmp eq i32 %i.aek, %i.aeg
  br i1 %i.ael, label %.split, label %bb.fe

.split:                                           ; preds = %bb.fd
  %i.aem = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aei, ptr noundef nonnull dereferenceable(1) %1) #10
  %i.aen = icmp sgt i32 %i.aem, -1
  br i1 %i.aen, label %.critedge128, label %.critedge130

bb.fe:                                            ; preds = %bb.fd
  %.not3886 = icmp ult i32 %i.aek, %i.aeg
  br i1 %.not3886, label %.critedge130, label %.critedge128

.critedge130:                                     ; preds = %.split, %bb.fc, %bb.fe
  %i.aeo = getelementptr inbounds nuw i8, ptr %.828354271, i64 40
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !30
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.aeh
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !31 ; 2 uses
  %.not3330 = icmp eq ptr %i.aer, null
  br i1 %.not3330, label %.critedge128, label %bb.fc, !llvm.loop !59

.critedge128:                                     ; preds = %bb.fe, %.critedge130, %.split, %bb.fb
  %.82835.lcssa = phi ptr [ null, %bb.fb ], [ %.828354271, %.split ], [ null, %.critedge130 ], [ %.828354271, %bb.fe ] ; 2 uses
  %.02675.lcssa = phi ptr [ null, %bb.fb ], [ %.026754272, %.split ], [ %.828354271, %.critedge130 ], [ %.026754272, %bb.fe ] ; 2 uses
  %.02673.lcssa = phi ptr [ null, %bb.fb ], [ %.026734273, %.split ], [ %.026754272, %.critedge130 ], [ %.026734273, %bb.fe ]
  %.not4379 = icmp eq i32 %i.aee, 0
  br i1 %.not4379, label %._crit_edge4305, label %.preheader3890.lr.ph

.preheader3890.lr.ph:                             ; preds = %.critedge128
  %i.aes = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.aev = zext nneg i32 %i.aee to i64
  %.phi.trans.insert4800 = getelementptr inbounds nuw i8, ptr %.02675.lcssa, i64 40
  %.pre4801.a = load ptr, ptr %.phi.trans.insert4800, align 8, !tbaa !30
  br label %.preheader3890

.preheader3890:                                   ; preds = %.preheader3890.lr.ph, %.thread3555
  %i.aew = phi ptr [ %.pre4801.a, %.preheader3890.lr.ph ], [ %i.asw, %.thread3555 ] ; 3 uses
  %indvars.iv4549 = phi i64 [ %i.aev, %.preheader3890.lr.ph ], [ %i.aex, %.thread3555 ] ; 9 uses
  %.026724302 = phi ptr [ %.82835.lcssa, %.preheader3890.lr.ph ], [ %i.asy, %.thread3555 ] ; 7 uses
  %.126744301 = phi ptr [ %.02673.lcssa, %.preheader3890.lr.ph ], [ %.226683560, %.thread3555 ] ; 4 uses
  %.126764300 = phi ptr [ %.02675.lcssa, %.preheader3890.lr.ph ], [ %.226713559, %.thread3555 ] ; 21 uses
  %i.aex = add nsw i64 %indvars.iv4549, -1        ; 11 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.126764300, i64 40 ; 8 uses
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aex
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !31 ; 11 uses
  %i.afb = icmp eq ptr %i.afa, %.026724302
  br i1 %i.afb, label %.thread3555, label %.lr.ph4290.preheader

.lr.ph4290.preheader:                             ; preds = %.preheader3890
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 32
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !38 ; 2 uses
  %i.afe = icmp eq i32 %i.afd, %i.aeg
  br i1 %i.afe, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph4290.preheader
  %i.aff = icmp ult i32 %i.afd, %i.aeg
  br i1 %i.aff, label %.thread3549.peel.thread, label %.thread3549.peel

bb.fg:                                            ; preds = %.lr.ph4290.preheader
  %i.afg = load ptr, ptr %i.afa, align 8, !tbaa !35
  %i.afh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.afg, ptr noundef nonnull dereferenceable(1) %1) #10
  %i.afi = icmp slt i32 %i.afh, 0
  br i1 %i.afi, label %.thread3549.peel.thread, label %.thread3549.peel

.thread3549.peel:                                 ; preds = %bb.ff, %bb.fg
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afa, i64 40
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !30
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.aex
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !31
  %i.afn = icmp eq ptr %i.afm, %.026724302
  br i1 %i.afn, label %bb.fn, label %.thread3555

.thread3549.peel.thread:                          ; preds = %bb.ff, %bb.fg
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afa, i64 40
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !30
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %i.aex
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !31 ; 8 uses
  %i.afs = icmp eq ptr %i.afr, %.026724302
  br i1 %i.afs, label %bb.fn, label %bb.fh

bb.fh:                                            ; preds = %.thread3549.peel.thread
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !38 ; 2 uses
  %i.afv = icmp eq i32 %i.afu, %i.aeg
  br i1 %i.afv, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.afw = icmp ult i32 %i.afu, %i.aeg
  br i1 %i.afw, label %.thread3549.peel4538, label %.thread3555

bb.fj:                                            ; preds = %bb.fh
  %i.afx = load ptr, ptr %i.afr, align 8, !tbaa !35
  %i.afy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.afx, ptr noundef nonnull dereferenceable(1) %1) #10
  %i.afz = icmp slt i32 %i.afy, 0
  br i1 %i.afz, label %.thread3549.peel4538, label %.thread3555

.thread3549.peel4538:                             ; preds = %bb.fj, %bb.fi
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afr, i64 40
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !30
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %i.aex
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !31 ; 4 uses
  %i.age = icmp eq ptr %i.agd, %.026724302
  br i1 %i.age, label %.thread3555, label %.lr.ph4290.peel.next4534

end_hunk_1
begin_hunk_2_@H5SL_remove:bb.a
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !30
  %i.apl = shl i64 %i.aof, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ape, ptr align 1 %i.apk, i64 %i.apl, i1 false)
  %i.apm = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.apn = load i64, ptr %i.aog, align 8, !tbaa !39
  %i.apo = getelementptr [8 x i8], ptr %i.apm, i64 %i.apn
  %i.app = getelementptr i8, ptr %i.apo, i64 -8
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !20
  %i.apr = load ptr, ptr %i.apj, align 8, !tbaa !30
  %i.aps = tail call ptr @H5FL_fac_free(ptr noundef %i.apq, ptr noundef %i.apr) #9 ; 0 uses
  store ptr %i.ape, ptr %i.apj, align 8, !tbaa !30
  %.pre4812 = load i64, ptr %i.aod, align 8, !tbaa !37
  %.pre4950 = add i64 %.pre4812, 1
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.ha
  %.pre-phi4951 = phi i64 [ %.pre4950, %bb.hi ], [ %i.aof, %bb.ha ]
  store i64 %.pre-phi4951, ptr %i.aod, align 8, !tbaa !37
  %i.apt = load i32, ptr %i.aed, align 8, !tbaa !26 ; 2 uses
  %i.apu = sext i32 %i.apt to i64
  %i.apv = icmp eq i64 %i.aoe, %i.apu
  br i1 %i.apv, label %bb.hk, label %bb.hu

bb.hk:                                            ; preds = %bb.hj
  %i.apw = getelementptr inbounds nuw i8, ptr %.126744301, i64 24 ; 4 uses
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !39 ; 2 uses
  %.highbits3350 = lshr i64 %i.aof, %i.apx
  %.not3349 = icmp eq i64 %.highbits3350, 0
  br i1 %.not3349, label %._crit_edge4929, label %bb.hl

._crit_edge4929:                                  ; preds = %bb.hk
  %.pre4819.pre = load ptr, ptr %i.amq, align 8, !tbaa !30
  br label %bb.ht

bb.hl:                                            ; preds = %bb.hk
  %i.apy = add i64 %i.apx, 1                      ; 3 uses
  store i64 %i.apy, ptr %i.apw, align 8, !tbaa !39
  %i.apz = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3351 = icmp ult i64 %i.apy, %i.apz
  br i1 %.not3351, label %._crit_edge4815, label %bb.hm

._crit_edge4815:                                  ; preds = %bb.hl
  %.pre4816 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.hq

bb.hm:                                            ; preds = %bb.hl
  %i.aqa = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3352 = icmp ult i64 %i.apz, %i.aqa
  br i1 %.not3352, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aqb = shl i64 %i.aqa, 1
  store i64 %i.aqb, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.aqc = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aqd = shl i64 %i.aqa, 4
  %i.aqe = tail call ptr @H5MM_realloc(ptr noundef %i.aqc, i64 noundef %i.aqd) #9 ; 2 uses
  store ptr %i.aqe, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aqf = icmp eq ptr %i.aqe, null
  br i1 %i.aqf, label %bb.ho, label %._crit_edge4813

._crit_edge4813:                                  ; preds = %bb.hn
  %.pre4814 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.aqg = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.aqh = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.aqi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1153, i64 noundef %i.aqg, i64 noundef %i.aqh, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.hp:                                            ; preds = %._crit_edge4813, %bb.hm
  %i.aqj = phi i64 [ %.pre4814, %._crit_edge4813 ], [ %i.apz, %bb.hm ]
  %i.aqk = shl i64 8, %i.aqj
  %i.aql = tail call ptr @H5FL_fac_init(i64 noundef %i.aqk) #9
  %i.aqm = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.aqn = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr %i.aqm, i64 %i.aqn
  store ptr %i.aql, ptr %i.aqo, align 8, !tbaa !20
  %i.aqp = add i64 %i.aqn, 1
  store i64 %i.aqp, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4817 = load i64, ptr %i.apw, align 8, !tbaa !39
  br label %bb.hq

bb.hq:                                            ; preds = %._crit_edge4815, %bb.hp
  %i.aqq = phi i64 [ %i.apy, %._crit_edge4815 ], [ %.pre4817, %bb.hp ]
  %i.aqr = phi ptr [ %.pre4816, %._crit_edge4815 ], [ %i.aqm, %bb.hp ]
  %i.aqs = getelementptr inbounds nuw [8 x i8], ptr %i.aqr, i64 %i.aqq
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !20
  %i.aqu = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.aqt) #9 ; 4 uses
  %i.aqv = icmp eq ptr %i.aqu, null
  br i1 %i.aqv, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.aqw = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.aqx = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.aqy = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1153, i64 noundef %i.aqw, i64 noundef %i.aqx, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.hs:                                            ; preds = %bb.hq
  %i.aqz = load ptr, ptr %i.amq, align 8, !tbaa !30
  %i.ara = shl nsw i64 %i.aof, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqu, ptr align 1 %i.aqz, i64 %i.ara, i1 false)
  %i.arb = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.arc = load i64, ptr %i.apw, align 8, !tbaa !39
  %i.ard = getelementptr [8 x i8], ptr %i.arb, i64 %i.arc
  %i.are = getelementptr i8, ptr %i.ard, i64 -8
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !20
  %i.arg = load ptr, ptr %i.amq, align 8, !tbaa !30
  %i.arh = tail call ptr @H5FL_fac_free(ptr noundef %i.arf, ptr noundef %i.arg) #9 ; 0 uses
  store ptr %i.aqu, ptr %i.amq, align 8, !tbaa !30
  %.pre4818 = load i32, ptr %i.aed, align 8, !tbaa !26
  br label %bb.ht

bb.ht:                                            ; preds = %._crit_edge4929, %bb.hs
  %.pre4819 = phi ptr [ %i.aqu, %bb.hs ], [ %.pre4819.pre, %._crit_edge4929 ]
  %i.ari = phi i32 [ %.pre4818, %bb.hs ], [ %i.apt, %._crit_edge4929 ]
  %i.arj = getelementptr inbounds nuw i8, ptr %.126744301, i64 16 ; 2 uses
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !37
  %i.arl = add i64 %i.ark, 1
  store i64 %i.arl, ptr %i.arj, align 8, !tbaa !37
  %i.arm = add nsw i32 %i.ari, 1
  store i32 %i.arm, ptr %i.aed, align 8, !tbaa !26
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hj
  %i.arn = load ptr, ptr %i.amq, align 8, !tbaa !30 ; 2 uses
  %i.aro = getelementptr inbounds nuw [8 x i8], ptr %i.arn, i64 %i.aof
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !31
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ht, %bb.hu
  %.sink5440 = phi ptr [ null, %bb.ht ], [ %i.arp, %bb.hu ]
  %i.arq = phi ptr [ %.pre4819, %bb.ht ], [ %i.arn, %bb.hu ]
  %i.arr = getelementptr inbounds nuw i8, ptr %.102837.lcssa, i64 40
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !30
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %i.aof
  store ptr %.sink5440, ptr %i.art, align 8, !tbaa !31
  %i.aru = getelementptr inbounds nuw [8 x i8], ptr %i.arq, i64 %i.aof
  store ptr %.102837.lcssa, ptr %i.aru, align 8, !tbaa !31
  br label %.thread3555

bb.hw:                                            ; preds = %bb.gz
  %i.arv = load ptr, ptr %i.aes, align 8, !tbaa !30
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.arv, i64 %indvars.iv4549
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !31
  %.not3342 = icmp eq ptr %i.arx, null
  br i1 %.not3342, label %bb.hx, label %.thread3555

bb.hx:                                            ; preds = %bb.hw
  %i.ary = load i64, ptr %i.aet, align 8, !tbaa !39
  %i.arz = add i64 %i.ary, -1                     ; 3 uses
  %i.asa = shl nuw i64 1, %i.arz
  %.not3343 = icmp ult i64 %i.asa, %indvars.iv4549
  br i1 %.not3343, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  store i64 %i.arz, ptr %i.aet, align 8, !tbaa !39
  %i.asb = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.arz
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !20
  %i.ase = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.asd) #9 ; 3 uses
  %.not3344 = icmp eq ptr %i.ase, null
  br i1 %.not3344, label %.thread3596, label %bb.hz

.thread3596:                                      ; preds = %bb.hy
  %i.asf = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.asg = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.ash = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1153, i64 noundef %i.asf, i64 noundef %i.asg, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.hz:                                            ; preds = %bb.hy
  %i.asi = load ptr, ptr %i.aes, align 8, !tbaa !30
  %i.asj = shl nuw nsw i64 %indvars.iv4549, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ase, ptr align 1 %i.asi, i64 %i.asj, i1 false)
  %i.ask = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.asl = load i64, ptr %i.aet, align 8, !tbaa !39
  %i.asm = getelementptr [8 x i8], ptr %i.ask, i64 %i.asl
  %i.asn = getelementptr i8, ptr %i.asm, i64 8
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !20
  %i.asp = load ptr, ptr %i.aes, align 8, !tbaa !30
  %i.asq = tail call ptr @H5FL_fac_free(ptr noundef %i.aso, ptr noundef %i.asp) #9 ; 0 uses
  store ptr %i.ase, ptr %i.aes, align 8, !tbaa !30
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hx
  %i.asr = load i64, ptr %i.aeu, align 8, !tbaa !37
  %i.ass = add i64 %i.asr, -1
  store i64 %i.ass, ptr %i.aeu, align 8, !tbaa !37
  %i.ast = load i32, ptr %i.aed, align 8, !tbaa !26
  %i.asu = add nsw i32 %i.ast, -1
  store i32 %i.asu, ptr %i.aed, align 8, !tbaa !26
  br label %.thread3555

.thread3555:                                      ; preds = %.preheader3890, %.thread3549.peel4538, %bb.fm, %.thread3549.peel, %bb.fj, %bb.fi, %bb.fl, %bb.fk, %bb.hv, %bb.go, %bb.gp, %bb.gt, %bb.hw, %bb.ia
  %.226683560 = phi ptr [ %i.afa, %bb.fk ], [ %.126764300, %bb.gp ], [ %.126764300, %bb.gt ], [ %.126764300, %bb.go ], [ %.126764300, %bb.hw ], [ %.126764300, %bb.ia ], [ %.126764300, %bb.hv ], [ %.126764300, %.thread3549.peel ], [ %.126764300, %bb.fi ], [ %i.afr, %bb.fm ], [ %.126764300, %bb.fj ], [ %i.afa, %bb.fl ], [ %.126764300, %.preheader3890 ], [ %i.afa, %.thread3549.peel4538 ]
  %.226713559 = phi ptr [ %i.afr, %bb.fk ], [ %spec.select34415335, %bb.gp ], [ %spec.select34415335, %bb.gt ], [ %spec.select34415335, %bb.go ], [ %spec.select34415335, %bb.hw ], [ %spec.select34415335, %bb.ia ], [ %spec.select34415335, %bb.hv ], [ %.126764300, %.thread3549.peel ], [ %i.afa, %bb.fi ], [ %i.agd, %bb.fm ], [ %i.afa, %bb.fj ], [ %i.afr, %bb.fl ], [ %.126764300, %.preheader3890 ], [ %i.afr, %.thread3549.peel4538 ] ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.226713559, i64 40
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !30 ; 2 uses
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.asw, i64 %i.aex
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !31 ; 2 uses
  %6 = trunc nuw i64 %indvars.iv4549 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %.preheader3890, label %._crit_edge4305, !llvm.loop !60

._crit_edge4305:                                  ; preds = %.thread3555, %.critedge128
  %.02672.lcssa = phi ptr [ %.82835.lcssa, %.critedge128 ], [ %i.asy, %.thread3555 ] ; 8 uses
  %.not3333 = icmp eq ptr %.02672.lcssa, null
  br i1 %.not3333, label %.thread3479, label %bb.ib

bb.ib:                                            ; preds = %._crit_edge4305
  %i.asz = getelementptr inbounds nuw i8, ptr %.02672.lcssa, i64 32 ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 8, !tbaa !38
  %i.atb = icmp eq i32 %i.ata, %i.aeg
  br i1 %i.atb, label %bb.ic, label %.thread3479

bb.ic:                                            ; preds = %bb.ib
  %i.atc = load ptr, ptr %.02672.lcssa, align 8, !tbaa !35
  %i.atd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.atc, ptr noundef nonnull dereferenceable(1) %1) #10
  %i.ate = icmp eq i32 %i.atd, 0
  br i1 %i.ate, label %bb.id, label %.thread3479

bb.id:                                            ; preds = %bb.ic
  %i.atf = getelementptr inbounds nuw i8, ptr %.02672.lcssa, i64 8
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !36
  %i.ath = getelementptr inbounds nuw i8, ptr %.02672.lcssa, i64 16
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !37
  %.not3334 = icmp eq i64 %i.ati, 0
  br i1 %.not3334, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.atj = getelementptr inbounds nuw i8, ptr %.02672.lcssa, i64 48
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !32 ; 3 uses
  %i.atl = load <2 x ptr>, ptr %i.atk, align 8, !tbaa !73
  store <2 x ptr> %i.atl, ptr %.02672.lcssa, align 8, !tbaa !73
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atk, i64 32
  %i.atn = load i32, ptr %i.atm, align 8, !tbaa !38
  store i32 %i.atn, ptr %i.asz, align 8, !tbaa !38
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.112838 = phi ptr [ %i.atk, %bb.ie ], [ %.02672.lcssa, %bb.id ] ; 4 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.112838, i64 40 ; 2 uses
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !30 ; 2 uses
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !31 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.112838, i64 48 ; 2 uses
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !32
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 40
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !30
  store ptr %i.atq, ptr %i.atu, align 8, !tbaa !31
  %i.atv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !34
  %i.atx = icmp eq ptr %i.atw, %.112838
  %i.aty = load ptr, ptr %i.atr, align 8, !tbaa !32 ; 2 uses
  br i1 %i.atx, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  store ptr %i.aty, ptr %i.atv, align 8, !tbaa !34
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atq, i64 48
  store ptr %i.aty, ptr %i.atz, align 8, !tbaa !32
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !27
  %i.auc = add i64 %i.aub, -1
  store i64 %i.auc, ptr %i.aua, align 8, !tbaa !27
  %i.aud = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !20
  %i.auf = tail call ptr @H5FL_fac_free(ptr noundef %i.aue, ptr noundef nonnull %i.atp) #9
  store ptr %i.auf, ptr %i.ato, align 8, !tbaa !30
  %i.aug = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.112838) #9 ; 0 uses
  br label %.thread3479

bb.ij:                                            ; preds = %bb.b
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.aui = load i32, ptr %i.auh, align 8, !tbaa !26 ; 4 uses
  %i.auj = icmp slt i32 %i.aui, 0
  br i1 %i.auj, label %.thread3479, label %.preheader3892

.preheader3892:                                   ; preds = %bb.ij
  %.not32944237 = icmp eq ptr %i.h, null
  br i1 %.not32944237, label %.critedge134, label %.lr.ph4241

.lr.ph4241:                                       ; preds = %.preheader3892
  %i.auk = zext nneg i32 %i.aui to i64
  br label %bb.ik

bb.ik:                                            ; preds = %.lr.ph4241, %.critedge136
  %.026584240 = phi ptr [ %i.h, %.lr.ph4241 ], [ %.026604239, %.critedge136 ]
  %.026604239 = phi ptr [ %i.h, %.lr.ph4241 ], [ %.1228394238, %.critedge136 ] ; 3 uses
  %.1228394238 = phi ptr [ %i.h, %.lr.ph4241 ], [ %i.aus, %.critedge136 ] ; 5 uses
  %i.aul = load ptr, ptr %.1228394238, align 8, !tbaa !35 ; 2 uses
  %.not3295 = icmp eq ptr %i.aul, null
  br i1 %.not3295, label %.critedge136, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !18
  %i.aun = load i64, ptr %1, align 8, !tbaa !18
  %i.auo = icmp ult i64 %i.aum, %i.aun
  br i1 %i.auo, label %.critedge136, label %.critedge134

.critedge136:                                     ; preds = %bb.ik, %bb.il
  %i.aup = getelementptr inbounds nuw i8, ptr %.1228394238, i64 40
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !30
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.auq, i64 %i.auk
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !31 ; 2 uses
  %.not3294 = icmp eq ptr %i.aus, null
  br i1 %.not3294, label %.critedge134, label %bb.ik, !llvm.loop !61

.critedge134:                                     ; preds = %bb.il, %.critedge136, %.preheader3892
  %.122839.lcssa = phi ptr [ null, %.preheader3892 ], [ null, %.critedge136 ], [ %.1228394238, %bb.il ] ; 2 uses
  %.02660.lcssa = phi ptr [ null, %.preheader3892 ], [ %.1228394238, %.critedge136 ], [ %.026604239, %bb.il ] ; 2 uses
  %.02658.lcssa = phi ptr [ null, %.preheader3892 ], [ %.026604239, %.critedge136 ], [ %.026584240, %bb.il ]
  %.not4378 = icmp eq i32 %i.aui, 0
  br i1 %.not4378, label %._crit_edge4268, label %.preheader3891.lr.ph

.preheader3891.lr.ph:                             ; preds = %.critedge134
  %i.aut = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.auw = zext nneg i32 %i.aui to i64
  %.phi.trans.insert4765 = getelementptr inbounds nuw i8, ptr %.02660.lcssa, i64 40
  %.pre4766.a = load ptr, ptr %.phi.trans.insert4765, align 8, !tbaa !30
  br label %.preheader3891

.preheader3891:                                   ; preds = %.preheader3891.lr.ph, %.thread3603
  %i.aux = phi ptr [ %.pre4766.a, %.preheader3891.lr.ph ], [ %i.bih, %.thread3603 ] ; 3 uses
  %indvars.iv4530 = phi i64 [ %i.auw, %.preheader3891.lr.ph ], [ %i.auy, %.thread3603 ] ; 9 uses
  %.026574265 = phi ptr [ %.122839.lcssa, %.preheader3891.lr.ph ], [ %i.bij, %.thread3603 ] ; 6 uses
  %.126594264 = phi ptr [ %.02658.lcssa, %.preheader3891.lr.ph ], [ %.226533608, %.thread3603 ] ; 4 uses
  %.126614263 = phi ptr [ %.02660.lcssa, %.preheader3891.lr.ph ], [ %.226563607, %.thread3603 ] ; 20 uses
  %i.auy = add nsw i64 %indvars.iv4530, -1        ; 10 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %.126614263, i64 40 ; 8 uses
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.aux, i64 %i.auy
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !31 ; 7 uses
  %i.avc = icmp eq ptr %i.avb, %.026574265
  br i1 %i.avc, label %.thread3603, label %.lr.ph4253.preheader

.lr.ph4253.preheader:                             ; preds = %.preheader3891
  %i.avd = load ptr, ptr %i.avb, align 8, !tbaa !35
  %i.ave = load i64, ptr %i.avd, align 8, !tbaa !18
  %i.avf = load i64, ptr %1, align 8, !tbaa !18   ; 3 uses
  %i.avg = icmp ult i64 %i.ave, %i.avf
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avb, i64 40
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !30
  %i.avj = getelementptr inbounds nuw [8 x i8], ptr %i.avi, i64 %i.auy
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !31 ; 6 uses
  %i.avl = icmp eq ptr %i.avk, %.026574265        ; 2 uses
  br i1 %i.avg, label %.thread3597.peel.thread, label %.thread3597.peel

.thread3597.peel:                                 ; preds = %.lr.ph4253.preheader
  br i1 %i.avl, label %bb.in, label %.thread3603

.thread3597.peel.thread:                          ; preds = %.lr.ph4253.preheader
  br i1 %i.avl, label %bb.in, label %bb.im

bb.im:                                            ; preds = %.thread3597.peel.thread
  %i.avm = load ptr, ptr %i.avk, align 8, !tbaa !35
  %i.avn = load i64, ptr %i.avm, align 8, !tbaa !18
  %i.avo = icmp ult i64 %i.avn, %i.avf
  br i1 %i.avo, label %.thread3597.peel4519, label %.thread3603

.thread3597.peel4519:                             ; preds = %bb.im
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avk, i64 40
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !30
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.avq, i64 %i.auy
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !31 ; 3 uses
  %i.avt = icmp eq ptr %i.avs, %.026574265
  br i1 %i.avt, label %.thread3603, label %.lr.ph4253.peel.next4515

.lr.ph4253.peel.next4515:                         ; preds = %.thread3597.peel4519
  %i.avu = load ptr, ptr %i.avs, align 8, !tbaa !35
  %i.avv = load i64, ptr %i.avu, align 8, !tbaa !18
  %i.avw = icmp ult i64 %i.avv, %i.avf            ; 2 uses
  %spec.select5444 = select i1 %i.avw, ptr %i.avk, ptr %i.avb
  %spec.select5445.a = select i1 %i.avw, ptr %i.avs, ptr %i.avk
  br label %.thread3603

bb.in:                                            ; preds = %.thread3597.peel, %.thread3597.peel.thread
  %.02654.lcssa.ph = phi ptr [ null, %.thread3597.peel.thread ], [ %.126614263, %.thread3597.peel ] ; 2 uses
  %.not33015346 = icmp eq ptr %.02654.lcssa.ph, null
  %spec.select34435347 = select i1 %.not33015346, ptr %i.avb, ptr %.02654.lcssa.ph ; 6 uses
  %i.avx = icmp eq ptr %.126594264, %.126614263
  br i1 %i.avx, label %bb.io, label %bb.ju

bb.io:                                            ; preds = %bb.in
  %i.avy = getelementptr inbounds nuw i8, ptr %.026574265, i64 40 ; 4 uses
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !30 ; 3 uses
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %i.avz, i64 %indvars.iv4530
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !31
  %i.awc = getelementptr inbounds nuw i8, ptr %.026574265, i64 16 ; 3 uses
  %i.awd = load i64, ptr %i.awc, align 8, !tbaa !37 ; 5 uses
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.avz, i64 %i.awd
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !31
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.aux, i64 %i.awd
  store ptr %i.awf, ptr %i.awg, align 8, !tbaa !31
  %i.awh = getelementptr inbounds nuw i8, ptr %.026574265, i64 24 ; 3 uses
  %i.awi = load i64, ptr %i.awh, align 8, !tbaa !39
  %i.awj = add i64 %i.awi, -1                     ; 3 uses
  %i.awk = shl nuw i64 1, %i.awj
end_hunk_2
begin_hunk_3_@H5SL_remove:bb.a
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !30
  %i.bew = shl i64 %i.bdq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bep, ptr align 1 %i.bev, i64 %i.bew, i1 false)
  %i.bex = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bey = load i64, ptr %i.bdr, align 8, !tbaa !39
  %i.bez = getelementptr [8 x i8], ptr %i.bex, i64 %i.bey
  %i.bfa = getelementptr i8, ptr %i.bez, i64 -8
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !20
  %i.bfc = load ptr, ptr %i.beu, align 8, !tbaa !30
  %i.bfd = tail call ptr @H5FL_fac_free(ptr noundef %i.bfb, ptr noundef %i.bfc) #9 ; 0 uses
  store ptr %i.bep, ptr %i.beu, align 8, !tbaa !30
  %.pre4777 = load i64, ptr %i.bdo, align 8, !tbaa !37
  %.pre4954 = add i64 %.pre4777, 1
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.ka
  %.pre-phi4955 = phi i64 [ %.pre4954, %bb.ki ], [ %i.bdq, %bb.ka ]
  store i64 %.pre-phi4955, ptr %i.bdo, align 8, !tbaa !37
  %i.bfe = load i32, ptr %i.auh, align 8, !tbaa !26 ; 2 uses
  %i.bff = sext i32 %i.bfe to i64
  %i.bfg = icmp eq i64 %i.bdp, %i.bff
  br i1 %i.bfg, label %bb.kk, label %bb.ku

bb.kk:                                            ; preds = %bb.kj
  %i.bfh = getelementptr inbounds nuw i8, ptr %.126594264, i64 24 ; 4 uses
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !39 ; 2 uses
  %.highbits3313 = lshr i64 %i.bdq, %i.bfi
  %.not3312 = icmp eq i64 %.highbits3313, 0
  br i1 %.not3312, label %._crit_edge4925, label %bb.kl

._crit_edge4925:                                  ; preds = %bb.kk
  %.pre4784.pre = load ptr, ptr %i.bcb, align 8, !tbaa !30
  br label %bb.kt

bb.kl:                                            ; preds = %bb.kk
  %i.bfj = add i64 %i.bfi, 1                      ; 3 uses
  store i64 %i.bfj, ptr %i.bfh, align 8, !tbaa !39
  %i.bfk = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3314 = icmp ult i64 %i.bfj, %i.bfk
  br i1 %.not3314, label %._crit_edge4780, label %bb.km

._crit_edge4780:                                  ; preds = %bb.kl
  %.pre4781 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.kq

bb.km:                                            ; preds = %bb.kl
  %i.bfl = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3315 = icmp ult i64 %i.bfk, %i.bfl
  br i1 %.not3315, label %bb.kp, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bfm = shl i64 %i.bfl, 1
  store i64 %i.bfm, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.bfn = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bfo = shl i64 %i.bfl, 4
  %i.bfp = tail call ptr @H5MM_realloc(ptr noundef %i.bfn, i64 noundef %i.bfo) #9 ; 2 uses
  store ptr %i.bfp, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bfq = icmp eq ptr %i.bfp, null
  br i1 %i.bfq, label %bb.ko, label %._crit_edge4778

._crit_edge4778:                                  ; preds = %bb.kn
  %.pre4779 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.bfr = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.bfs = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.bft = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1157, i64 noundef %i.bfr, i64 noundef %i.bfs, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.kp:                                            ; preds = %._crit_edge4778, %bb.km
  %i.bfu = phi i64 [ %.pre4779, %._crit_edge4778 ], [ %i.bfk, %bb.km ]
  %i.bfv = shl i64 8, %i.bfu
  %i.bfw = tail call ptr @H5FL_fac_init(i64 noundef %i.bfv) #9
  %i.bfx = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.bfy = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.bfz = getelementptr inbounds nuw [8 x i8], ptr %i.bfx, i64 %i.bfy
  store ptr %i.bfw, ptr %i.bfz, align 8, !tbaa !20
  %i.bga = add i64 %i.bfy, 1
  store i64 %i.bga, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4782 = load i64, ptr %i.bfh, align 8, !tbaa !39
  br label %bb.kq

bb.kq:                                            ; preds = %._crit_edge4780, %bb.kp
  %i.bgb = phi i64 [ %i.bfj, %._crit_edge4780 ], [ %.pre4782, %bb.kp ]
  %i.bgc = phi ptr [ %.pre4781, %._crit_edge4780 ], [ %i.bfx, %bb.kp ]
  %i.bgd = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %i.bgb
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !20
  %i.bgf = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.bge) #9 ; 4 uses
  %i.bgg = icmp eq ptr %i.bgf, null
  br i1 %i.bgg, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bgh = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.bgi = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.bgj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1157, i64 noundef %i.bgh, i64 noundef %i.bgi, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.ks:                                            ; preds = %bb.kq
  %i.bgk = load ptr, ptr %i.bcb, align 8, !tbaa !30
  %i.bgl = shl nsw i64 %i.bdq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgf, ptr align 1 %i.bgk, i64 %i.bgl, i1 false)
  %i.bgm = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bgn = load i64, ptr %i.bfh, align 8, !tbaa !39
  %i.bgo = getelementptr [8 x i8], ptr %i.bgm, i64 %i.bgn
  %i.bgp = getelementptr i8, ptr %i.bgo, i64 -8
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !20
  %i.bgr = load ptr, ptr %i.bcb, align 8, !tbaa !30
  %i.bgs = tail call ptr @H5FL_fac_free(ptr noundef %i.bgq, ptr noundef %i.bgr) #9 ; 0 uses
  store ptr %i.bgf, ptr %i.bcb, align 8, !tbaa !30
  %.pre4783 = load i32, ptr %i.auh, align 8, !tbaa !26
  br label %bb.kt

bb.kt:                                            ; preds = %._crit_edge4925, %bb.ks
  %.pre4784 = phi ptr [ %i.bgf, %bb.ks ], [ %.pre4784.pre, %._crit_edge4925 ]
  %i.bgt = phi i32 [ %.pre4783, %bb.ks ], [ %i.bfe, %._crit_edge4925 ]
  %i.bgu = getelementptr inbounds nuw i8, ptr %.126594264, i64 16 ; 2 uses
  %i.bgv = load i64, ptr %i.bgu, align 8, !tbaa !37
  %i.bgw = add i64 %i.bgv, 1
  store i64 %i.bgw, ptr %i.bgu, align 8, !tbaa !37
  %i.bgx = add nsw i32 %i.bgt, 1
  store i32 %i.bgx, ptr %i.auh, align 8, !tbaa !26
  br label %bb.kv

bb.ku:                                            ; preds = %bb.kj
  %i.bgy = load ptr, ptr %i.bcb, align 8, !tbaa !30 ; 2 uses
  %i.bgz = getelementptr inbounds nuw [8 x i8], ptr %i.bgy, i64 %i.bdq
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !31
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kt, %bb.ku
  %.sink5450 = phi ptr [ null, %bb.kt ], [ %i.bha, %bb.ku ]
  %i.bhb = phi ptr [ %.pre4784, %bb.kt ], [ %i.bgy, %bb.ku ]
  %i.bhc = getelementptr inbounds nuw i8, ptr %.142841.lcssa, i64 40
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !30
  %i.bhe = getelementptr inbounds nuw [8 x i8], ptr %i.bhd, i64 %i.bdq
  store ptr %.sink5450, ptr %i.bhe, align 8, !tbaa !31
  %i.bhf = getelementptr inbounds nuw [8 x i8], ptr %i.bhb, i64 %i.bdq
  store ptr %.142841.lcssa, ptr %i.bhf, align 8, !tbaa !31
  br label %.thread3603

bb.kw:                                            ; preds = %bb.jz
  %i.bhg = load ptr, ptr %i.aut, align 8, !tbaa !30
  %i.bhh = getelementptr inbounds nuw [8 x i8], ptr %i.bhg, i64 %indvars.iv4530
  %i.bhi = load ptr, ptr %i.bhh, align 8, !tbaa !31
  %.not3305 = icmp eq ptr %i.bhi, null
  br i1 %.not3305, label %bb.kx, label %.thread3603

bb.kx:                                            ; preds = %bb.kw
  %i.bhj = load i64, ptr %i.auu, align 8, !tbaa !39
  %i.bhk = add i64 %i.bhj, -1                     ; 3 uses
  %i.bhl = shl nuw i64 1, %i.bhk
  %.not3306 = icmp ult i64 %i.bhl, %indvars.iv4530
  br i1 %.not3306, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  store i64 %i.bhk, ptr %i.auu, align 8, !tbaa !39
  %i.bhm = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bhn = getelementptr inbounds nuw [8 x i8], ptr %i.bhm, i64 %i.bhk
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !20
  %i.bhp = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.bho) #9 ; 3 uses
  %.not3307 = icmp eq ptr %i.bhp, null
  br i1 %.not3307, label %.thread3644, label %bb.kz

.thread3644:                                      ; preds = %bb.ky
  %i.bhq = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.bhr = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.bhs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1157, i64 noundef %i.bhq, i64 noundef %i.bhr, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.kz:                                            ; preds = %bb.ky
  %i.bht = load ptr, ptr %i.aut, align 8, !tbaa !30
  %i.bhu = shl nuw nsw i64 %indvars.iv4530, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhp, ptr align 1 %i.bht, i64 %i.bhu, i1 false)
  %i.bhv = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bhw = load i64, ptr %i.auu, align 8, !tbaa !39
  %i.bhx = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bhw
  %i.bhy = getelementptr i8, ptr %i.bhx, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !20
  %i.bia = load ptr, ptr %i.aut, align 8, !tbaa !30
  %i.bib = tail call ptr @H5FL_fac_free(ptr noundef %i.bhz, ptr noundef %i.bia) #9 ; 0 uses
  store ptr %i.bhp, ptr %i.aut, align 8, !tbaa !30
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.kx
  %i.bic = load i64, ptr %i.auv, align 8, !tbaa !37
  %i.bid = add i64 %i.bic, -1
  store i64 %i.bid, ptr %i.auv, align 8, !tbaa !37
  %i.bie = load i32, ptr %i.auh, align 8, !tbaa !26
  %i.bif = add nsw i32 %i.bie, -1
  store i32 %i.bif, ptr %i.auh, align 8, !tbaa !26
  br label %.thread3603

.thread3603:                                      ; preds = %.lr.ph4253.peel.next4515, %.preheader3891, %.thread3597.peel4519, %.thread3597.peel, %bb.im, %bb.kv, %bb.jo, %bb.jp, %bb.jt, %bb.kw, %bb.la
  %.226533608 = phi ptr [ %i.avb, %.thread3597.peel4519 ], [ %.126614263, %bb.jp ], [ %.126614263, %bb.jt ], [ %.126614263, %bb.jo ], [ %.126614263, %bb.kw ], [ %.126614263, %bb.la ], [ %.126614263, %bb.kv ], [ %.126614263, %.thread3597.peel ], [ %.126614263, %bb.im ], [ %spec.select5444, %.lr.ph4253.peel.next4515 ], [ %.126614263, %.preheader3891 ]
  %.226563607 = phi ptr [ %i.avk, %.thread3597.peel4519 ], [ %spec.select34435347, %bb.jp ], [ %spec.select34435347, %bb.jt ], [ %spec.select34435347, %bb.jo ], [ %spec.select34435347, %bb.kw ], [ %spec.select34435347, %bb.la ], [ %spec.select34435347, %bb.kv ], [ %.126614263, %.thread3597.peel ], [ %i.avb, %bb.im ], [ %spec.select5445.a, %.lr.ph4253.peel.next4515 ], [ %.126614263, %.preheader3891 ] ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %.226563607, i64 40
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !30 ; 2 uses
  %i.bii = getelementptr inbounds nuw [8 x i8], ptr %i.bih, i64 %i.auy
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !31 ; 2 uses
  %8 = trunc nuw i64 %indvars.iv4530 to i32
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %.preheader3891, label %._crit_edge4268, !llvm.loop !62

._crit_edge4268:                                  ; preds = %.thread3603, %.critedge134
  %.02657.lcssa = phi ptr [ %.122839.lcssa, %.critedge134 ], [ %i.bij, %.thread3603 ] ; 8 uses
  %.not3296 = icmp eq ptr %.02657.lcssa, null
  br i1 %.not3296, label %.thread3479, label %bb.lb

bb.lb:                                            ; preds = %._crit_edge4268
  %i.bik = load ptr, ptr %.02657.lcssa, align 8, !tbaa !35
  %i.bil = load i64, ptr %i.bik, align 8, !tbaa !18
  %i.bim = load i64, ptr %1, align 8, !tbaa !18
  %i.bin = icmp eq i64 %i.bil, %i.bim
  br i1 %i.bin, label %bb.lc, label %.thread3479

bb.lc:                                            ; preds = %bb.lb
  %i.bio = getelementptr inbounds nuw i8, ptr %.02657.lcssa, i64 8
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !36
  %i.biq = getelementptr inbounds nuw i8, ptr %.02657.lcssa, i64 16
  %i.bir = load i64, ptr %i.biq, align 8, !tbaa !37
  %.not3297 = icmp eq i64 %i.bir, 0
  br i1 %.not3297, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bis = getelementptr inbounds nuw i8, ptr %.02657.lcssa, i64 48
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !32 ; 3 uses
  %i.biu = load <2 x ptr>, ptr %i.bit, align 8, !tbaa !73
  store <2 x ptr> %i.biu, ptr %.02657.lcssa, align 8, !tbaa !73
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bit, i64 32
  %i.biw = load i32, ptr %i.biv, align 8, !tbaa !38
  %i.bix = getelementptr inbounds nuw i8, ptr %.02657.lcssa, i64 32
  store i32 %i.biw, ptr %i.bix, align 8, !tbaa !38
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %.152842 = phi ptr [ %i.bit, %bb.ld ], [ %.02657.lcssa, %bb.lc ] ; 4 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %.152842, i64 40 ; 2 uses
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !30 ; 2 uses
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !31 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %.152842, i64 48 ; 2 uses
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !32
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 40
  %i.bje = load ptr, ptr %i.bjd, align 8, !tbaa !30
  store ptr %i.bja, ptr %i.bje, align 8, !tbaa !31
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !34
  %i.bjh = icmp eq ptr %i.bjg, %.152842
  %i.bji = load ptr, ptr %i.bjb, align 8, !tbaa !32 ; 2 uses
  br i1 %i.bjh, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  store ptr %i.bji, ptr %i.bjf, align 8, !tbaa !34
  br label %bb.lh

bb.lg:                                            ; preds = %bb.le
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bja, i64 48
  store ptr %i.bji, ptr %i.bjj, align 8, !tbaa !32
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bjk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bjl = load i64, ptr %i.bjk, align 8, !tbaa !27
  %i.bjm = add i64 %i.bjl, -1
  store i64 %i.bjm, ptr %i.bjk, align 8, !tbaa !27
  %i.bjn = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !20
  %i.bjp = tail call ptr @H5FL_fac_free(ptr noundef %i.bjo, ptr noundef nonnull %i.biz) #9
  store ptr %i.bjp, ptr %i.biy, align 8, !tbaa !30
  %i.bjq = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.152842) #9 ; 0 uses
  br label %.thread3479

bb.li:                                            ; preds = %bb.b
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.bjs = load i32, ptr %i.bjr, align 8, !tbaa !26 ; 4 uses
  %i.bjt = icmp slt i32 %i.bjs, 0
  br i1 %i.bjt, label %.thread3479, label %.preheader3894

.preheader3894:                                   ; preds = %bb.li
  %.not32584204 = icmp eq ptr %i.h, null
  br i1 %.not32584204, label %.critedge140, label %.lr.ph4208

.lr.ph4208:                                       ; preds = %.preheader3894
  %i.bju = zext nneg i32 %i.bjs to i64
  br label %bb.lj

bb.lj:                                            ; preds = %.lr.ph4208, %.critedge142
  %.026434207 = phi ptr [ %i.h, %.lr.ph4208 ], [ %.026454206, %.critedge142 ]
  %.026454206 = phi ptr [ %i.h, %.lr.ph4208 ], [ %.1628434205, %.critedge142 ] ; 3 uses
  %.1628434205 = phi ptr [ %i.h, %.lr.ph4208 ], [ %i.bkc, %.critedge142 ] ; 5 uses
  %i.bjv = load ptr, ptr %.1628434205, align 8, !tbaa !35 ; 2 uses
  %.not3259 = icmp eq ptr %i.bjv, null
  br i1 %.not3259, label %.critedge142, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !40
  %i.bjx = load i32, ptr %1, align 4, !tbaa !40
  %i.bjy = icmp ult i32 %i.bjw, %i.bjx
  br i1 %i.bjy, label %.critedge142, label %.critedge140

.critedge142:                                     ; preds = %bb.lj, %bb.lk
  %i.bjz = getelementptr inbounds nuw i8, ptr %.1628434205, i64 40
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !30
  %i.bkb = getelementptr inbounds nuw [8 x i8], ptr %i.bka, i64 %i.bju
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !31 ; 2 uses
  %.not3258 = icmp eq ptr %i.bkc, null
  br i1 %.not3258, label %.critedge140, label %bb.lj, !llvm.loop !63

.critedge140:                                     ; preds = %bb.lk, %.critedge142, %.preheader3894
  %.162843.lcssa = phi ptr [ null, %.preheader3894 ], [ null, %.critedge142 ], [ %.1628434205, %bb.lk ] ; 2 uses
  %.02645.lcssa = phi ptr [ null, %.preheader3894 ], [ %.1628434205, %.critedge142 ], [ %.026454206, %bb.lk ] ; 2 uses
  %.02643.lcssa = phi ptr [ null, %.preheader3894 ], [ %.026454206, %.critedge142 ], [ %.026434207, %bb.lk ]
  %.not4377 = icmp eq i32 %i.bjs, 0
  br i1 %.not4377, label %._crit_edge4235, label %.preheader3893.lr.ph

.preheader3893.lr.ph:                             ; preds = %.critedge140
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.bkg = zext nneg i32 %i.bjs to i64
  %.phi.trans.insert4730 = getelementptr inbounds nuw i8, ptr %.02645.lcssa, i64 40
  %.pre4731.a = load ptr, ptr %.phi.trans.insert4730, align 8, !tbaa !30
  br label %.preheader3893

.preheader3893:                                   ; preds = %.preheader3893.lr.ph, %.thread3651
  %i.bkh = phi ptr [ %.pre4731.a, %.preheader3893.lr.ph ], [ %i.bxr, %.thread3651 ] ; 3 uses
  %indvars.iv4511 = phi i64 [ %i.bkg, %.preheader3893.lr.ph ], [ %i.bki, %.thread3651 ] ; 9 uses
  %.026424232 = phi ptr [ %.162843.lcssa, %.preheader3893.lr.ph ], [ %i.bxt, %.thread3651 ] ; 6 uses
  %.126444231 = phi ptr [ %.02643.lcssa, %.preheader3893.lr.ph ], [ %.226383656, %.thread3651 ] ; 4 uses
  %.126464230 = phi ptr [ %.02645.lcssa, %.preheader3893.lr.ph ], [ %.226413655, %.thread3651 ] ; 20 uses
  %i.bki = add nsw i64 %indvars.iv4511, -1        ; 10 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %.126464230, i64 40 ; 8 uses
  %i.bkk = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bki
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !31 ; 7 uses
  %i.bkm = icmp eq ptr %i.bkl, %.026424232
  br i1 %i.bkm, label %.thread3651, label %.lr.ph4220.preheader

.lr.ph4220.preheader:                             ; preds = %.preheader3893
  %i.bkn = load ptr, ptr %i.bkl, align 8, !tbaa !35
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !40
  %i.bkp = load i32, ptr %1, align 4, !tbaa !40   ; 3 uses
  %i.bkq = icmp ult i32 %i.bko, %i.bkp
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkl, i64 40
  %i.bks = load ptr, ptr %i.bkr, align 8, !tbaa !30
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.bks, i64 %i.bki
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !31 ; 6 uses
  %i.bkv = icmp eq ptr %i.bku, %.026424232        ; 2 uses
  br i1 %i.bkq, label %.thread3645.peel.thread, label %.thread3645.peel

.thread3645.peel:                                 ; preds = %.lr.ph4220.preheader
  br i1 %i.bkv, label %bb.lm, label %.thread3651

.thread3645.peel.thread:                          ; preds = %.lr.ph4220.preheader
  br i1 %i.bkv, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %.thread3645.peel.thread
  %i.bkw = load ptr, ptr %i.bku, align 8, !tbaa !35
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !40
  %i.bky = icmp ult i32 %i.bkx, %i.bkp
  br i1 %i.bky, label %.thread3645.peel4500, label %.thread3651

.thread3645.peel4500:                             ; preds = %bb.ll
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bku, i64 40
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !30
  %i.blb = getelementptr inbounds nuw [8 x i8], ptr %i.bla, i64 %i.bki
  %i.blc = load ptr, ptr %i.blb, align 8, !tbaa !31 ; 3 uses
  %i.bld = icmp eq ptr %i.blc, %.026424232
  br i1 %i.bld, label %.thread3651, label %.lr.ph4220.peel.next4496

.lr.ph4220.peel.next4496:                         ; preds = %.thread3645.peel4500
  %i.ble = load ptr, ptr %i.blc, align 8, !tbaa !35
  %i.blf = load i32, ptr %i.ble, align 4, !tbaa !40
  %i.blg = icmp ult i32 %i.blf, %i.bkp            ; 2 uses
  %spec.select5454 = select i1 %i.blg, ptr %i.bku, ptr %i.bkl
  %spec.select5455.a = select i1 %i.blg, ptr %i.blc, ptr %i.bku
  br label %.thread3651

bb.lm:                                            ; preds = %.thread3645.peel, %.thread3645.peel.thread
  %.02639.lcssa.ph = phi ptr [ null, %.thread3645.peel.thread ], [ %.126464230, %.thread3645.peel ] ; 2 uses
  %.not32655358 = icmp eq ptr %.02639.lcssa.ph, null
  %spec.select34455359 = select i1 %.not32655358, ptr %i.bkl, ptr %.02639.lcssa.ph ; 6 uses
  %i.blh = icmp eq ptr %.126444231, %.126464230
  br i1 %i.blh, label %bb.ln, label %bb.mt

bb.ln:                                            ; preds = %bb.lm
  %i.bli = getelementptr inbounds nuw i8, ptr %.026424232, i64 40 ; 4 uses
  %i.blj = load ptr, ptr %i.bli, align 8, !tbaa !30 ; 3 uses
  %i.blk = getelementptr inbounds nuw [8 x i8], ptr %i.blj, i64 %indvars.iv4511
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !31
  %i.blm = getelementptr inbounds nuw i8, ptr %.026424232, i64 16 ; 3 uses
  %i.bln = load i64, ptr %i.blm, align 8, !tbaa !37 ; 5 uses
  %i.blo = getelementptr inbounds nuw [8 x i8], ptr %i.blj, i64 %i.bln
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !31
  %i.blq = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bln
  store ptr %i.blp, ptr %i.blq, align 8, !tbaa !31
  %i.blr = getelementptr inbounds nuw i8, ptr %.026424232, i64 24 ; 3 uses
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !39
  %i.blt = add i64 %i.bls, -1                     ; 3 uses
  %i.blu = shl nuw i64 1, %i.blt
  %.not3280 = icmp ugt i64 %i.bln, %i.blu
  br i1 %.not3280, label %bb.lr, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
end_hunk_3
begin_hunk_4_@H5SL_remove:bb.a
  %i.buf = load ptr, ptr %i.bue, align 8, !tbaa !30
  %i.bug = shl i64 %i.bta, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.btz, ptr align 1 %i.buf, i64 %i.bug, i1 false)
  %i.buh = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bui = load i64, ptr %i.btb, align 8, !tbaa !39
  %i.buj = getelementptr [8 x i8], ptr %i.buh, i64 %i.bui
  %i.buk = getelementptr i8, ptr %i.buj, i64 -8
  %i.bul = load ptr, ptr %i.buk, align 8, !tbaa !20
  %i.bum = load ptr, ptr %i.bue, align 8, !tbaa !30
  %i.bun = tail call ptr @H5FL_fac_free(ptr noundef %i.bul, ptr noundef %i.bum) #9 ; 0 uses
  store ptr %i.btz, ptr %i.bue, align 8, !tbaa !30
  %.pre4742 = load i64, ptr %i.bsy, align 8, !tbaa !37
  %.pre4958 = add i64 %.pre4742, 1
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.mz
  %.pre-phi4959 = phi i64 [ %.pre4958, %bb.nh ], [ %i.bta, %bb.mz ]
  store i64 %.pre-phi4959, ptr %i.bsy, align 8, !tbaa !37
  %i.buo = load i32, ptr %i.bjr, align 8, !tbaa !26 ; 2 uses
  %i.bup = sext i32 %i.buo to i64
  %i.buq = icmp eq i64 %i.bsz, %i.bup
  br i1 %i.buq, label %bb.nj, label %bb.nt

bb.nj:                                            ; preds = %bb.ni
  %i.bur = getelementptr inbounds nuw i8, ptr %.126444231, i64 24 ; 4 uses
  %i.bus = load i64, ptr %i.bur, align 8, !tbaa !39 ; 2 uses
  %.highbits3277 = lshr i64 %i.bta, %i.bus
  %.not3276 = icmp eq i64 %.highbits3277, 0
  br i1 %.not3276, label %._crit_edge4921, label %bb.nk

._crit_edge4921:                                  ; preds = %bb.nj
  %.pre4749.pre = load ptr, ptr %i.brl, align 8, !tbaa !30
  br label %bb.ns

bb.nk:                                            ; preds = %bb.nj
  %i.but = add i64 %i.bus, 1                      ; 3 uses
  store i64 %i.but, ptr %i.bur, align 8, !tbaa !39
  %i.buu = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3278 = icmp ult i64 %i.but, %i.buu
  br i1 %.not3278, label %._crit_edge4745, label %bb.nl

._crit_edge4745:                                  ; preds = %bb.nk
  %.pre4746 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.np

bb.nl:                                            ; preds = %bb.nk
  %i.buv = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3279 = icmp ult i64 %i.buu, %i.buv
  br i1 %.not3279, label %bb.no, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.buw = shl i64 %i.buv, 1
  store i64 %i.buw, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.bux = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.buy = shl i64 %i.buv, 4
  %i.buz = tail call ptr @H5MM_realloc(ptr noundef %i.bux, i64 noundef %i.buy) #9 ; 2 uses
  store ptr %i.buz, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bva = icmp eq ptr %i.buz, null
  br i1 %i.bva, label %bb.nn, label %._crit_edge4743

._crit_edge4743:                                  ; preds = %bb.nm
  %.pre4744 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.no

bb.nn:                                            ; preds = %bb.nm
  %i.bvb = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.bvc = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.bvd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1161, i64 noundef %i.bvb, i64 noundef %i.bvc, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.no:                                            ; preds = %._crit_edge4743, %bb.nl
  %i.bve = phi i64 [ %.pre4744, %._crit_edge4743 ], [ %i.buu, %bb.nl ]
  %i.bvf = shl i64 8, %i.bve
  %i.bvg = tail call ptr @H5FL_fac_init(i64 noundef %i.bvf) #9
  %i.bvh = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.bvi = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.bvj = getelementptr inbounds nuw [8 x i8], ptr %i.bvh, i64 %i.bvi
  store ptr %i.bvg, ptr %i.bvj, align 8, !tbaa !20
  %i.bvk = add i64 %i.bvi, 1
  store i64 %i.bvk, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4747 = load i64, ptr %i.bur, align 8, !tbaa !39
  br label %bb.np

bb.np:                                            ; preds = %._crit_edge4745, %bb.no
  %i.bvl = phi i64 [ %i.but, %._crit_edge4745 ], [ %.pre4747, %bb.no ]
  %i.bvm = phi ptr [ %.pre4746, %._crit_edge4745 ], [ %i.bvh, %bb.no ]
  %i.bvn = getelementptr inbounds nuw [8 x i8], ptr %i.bvm, i64 %i.bvl
  %i.bvo = load ptr, ptr %i.bvn, align 8, !tbaa !20
  %i.bvp = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.bvo) #9 ; 4 uses
  %i.bvq = icmp eq ptr %i.bvp, null
  br i1 %i.bvq, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  %i.bvr = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.bvs = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.bvt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1161, i64 noundef %i.bvr, i64 noundef %i.bvs, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.nr:                                            ; preds = %bb.np
  %i.bvu = load ptr, ptr %i.brl, align 8, !tbaa !30
  %i.bvv = shl nsw i64 %i.bta, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bvp, ptr align 1 %i.bvu, i64 %i.bvv, i1 false)
  %i.bvw = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bvx = load i64, ptr %i.bur, align 8, !tbaa !39
  %i.bvy = getelementptr [8 x i8], ptr %i.bvw, i64 %i.bvx
  %i.bvz = getelementptr i8, ptr %i.bvy, i64 -8
  %i.bwa = load ptr, ptr %i.bvz, align 8, !tbaa !20
  %i.bwb = load ptr, ptr %i.brl, align 8, !tbaa !30
  %i.bwc = tail call ptr @H5FL_fac_free(ptr noundef %i.bwa, ptr noundef %i.bwb) #9 ; 0 uses
  store ptr %i.bvp, ptr %i.brl, align 8, !tbaa !30
  %.pre4748 = load i32, ptr %i.bjr, align 8, !tbaa !26
  br label %bb.ns

bb.ns:                                            ; preds = %._crit_edge4921, %bb.nr
  %.pre4749 = phi ptr [ %i.bvp, %bb.nr ], [ %.pre4749.pre, %._crit_edge4921 ]
  %i.bwd = phi i32 [ %.pre4748, %bb.nr ], [ %i.buo, %._crit_edge4921 ]
  %i.bwe = getelementptr inbounds nuw i8, ptr %.126444231, i64 16 ; 2 uses
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !37
  %i.bwg = add i64 %i.bwf, 1
  store i64 %i.bwg, ptr %i.bwe, align 8, !tbaa !37
  %i.bwh = add nsw i32 %i.bwd, 1
  store i32 %i.bwh, ptr %i.bjr, align 8, !tbaa !26
  br label %bb.nu

bb.nt:                                            ; preds = %bb.ni
  %i.bwi = load ptr, ptr %i.brl, align 8, !tbaa !30 ; 2 uses
  %i.bwj = getelementptr inbounds nuw [8 x i8], ptr %i.bwi, i64 %i.bta
  %i.bwk = load ptr, ptr %i.bwj, align 8, !tbaa !31
  br label %bb.nu

bb.nu:                                            ; preds = %bb.ns, %bb.nt
  %.sink5460 = phi ptr [ null, %bb.ns ], [ %i.bwk, %bb.nt ]
  %i.bwl = phi ptr [ %.pre4749, %bb.ns ], [ %i.bwi, %bb.nt ]
  %i.bwm = getelementptr inbounds nuw i8, ptr %.182845.lcssa, i64 40
  %i.bwn = load ptr, ptr %i.bwm, align 8, !tbaa !30
  %i.bwo = getelementptr inbounds nuw [8 x i8], ptr %i.bwn, i64 %i.bta
  store ptr %.sink5460, ptr %i.bwo, align 8, !tbaa !31
  %i.bwp = getelementptr inbounds nuw [8 x i8], ptr %i.bwl, i64 %i.bta
  store ptr %.182845.lcssa, ptr %i.bwp, align 8, !tbaa !31
  br label %.thread3651

bb.nv:                                            ; preds = %bb.my
  %i.bwq = load ptr, ptr %i.bkd, align 8, !tbaa !30
  %i.bwr = getelementptr inbounds nuw [8 x i8], ptr %i.bwq, i64 %indvars.iv4511
  %i.bws = load ptr, ptr %i.bwr, align 8, !tbaa !31
  %.not3269 = icmp eq ptr %i.bws, null
  br i1 %.not3269, label %bb.nw, label %.thread3651

bb.nw:                                            ; preds = %bb.nv
  %i.bwt = load i64, ptr %i.bke, align 8, !tbaa !39
  %i.bwu = add i64 %i.bwt, -1                     ; 3 uses
  %i.bwv = shl nuw i64 1, %i.bwu
  %.not3270 = icmp ult i64 %i.bwv, %indvars.iv4511
  br i1 %.not3270, label %bb.nz, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  store i64 %i.bwu, ptr %i.bke, align 8, !tbaa !39
  %i.bww = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bwx = getelementptr inbounds nuw [8 x i8], ptr %i.bww, i64 %i.bwu
  %i.bwy = load ptr, ptr %i.bwx, align 8, !tbaa !20
  %i.bwz = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.bwy) #9 ; 3 uses
  %.not3271 = icmp eq ptr %i.bwz, null
  br i1 %.not3271, label %.thread3692, label %bb.ny

.thread3692:                                      ; preds = %bb.nx
  %i.bxa = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.bxb = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.bxc = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1161, i64 noundef %i.bxa, i64 noundef %i.bxb, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.ny:                                            ; preds = %bb.nx
  %i.bxd = load ptr, ptr %i.bkd, align 8, !tbaa !30
  %i.bxe = shl nuw nsw i64 %indvars.iv4511, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bwz, ptr align 1 %i.bxd, i64 %i.bxe, i1 false)
  %i.bxf = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bxg = load i64, ptr %i.bke, align 8, !tbaa !39
  %i.bxh = getelementptr [8 x i8], ptr %i.bxf, i64 %i.bxg
  %i.bxi = getelementptr i8, ptr %i.bxh, i64 8
  %i.bxj = load ptr, ptr %i.bxi, align 8, !tbaa !20
  %i.bxk = load ptr, ptr %i.bkd, align 8, !tbaa !30
  %i.bxl = tail call ptr @H5FL_fac_free(ptr noundef %i.bxj, ptr noundef %i.bxk) #9 ; 0 uses
  store ptr %i.bwz, ptr %i.bkd, align 8, !tbaa !30
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nw
  %i.bxm = load i64, ptr %i.bkf, align 8, !tbaa !37
  %i.bxn = add i64 %i.bxm, -1
  store i64 %i.bxn, ptr %i.bkf, align 8, !tbaa !37
  %i.bxo = load i32, ptr %i.bjr, align 8, !tbaa !26
  %i.bxp = add nsw i32 %i.bxo, -1
  store i32 %i.bxp, ptr %i.bjr, align 8, !tbaa !26
  br label %.thread3651

.thread3651:                                      ; preds = %.lr.ph4220.peel.next4496, %.preheader3893, %.thread3645.peel4500, %.thread3645.peel, %bb.ll, %bb.nu, %bb.mn, %bb.mo, %bb.ms, %bb.nv, %bb.nz
  %.226383656 = phi ptr [ %i.bkl, %.thread3645.peel4500 ], [ %.126464230, %bb.mo ], [ %.126464230, %bb.ms ], [ %.126464230, %bb.mn ], [ %.126464230, %bb.nv ], [ %.126464230, %bb.nz ], [ %.126464230, %bb.nu ], [ %.126464230, %.thread3645.peel ], [ %.126464230, %bb.ll ], [ %spec.select5454, %.lr.ph4220.peel.next4496 ], [ %.126464230, %.preheader3893 ]
  %.226413655 = phi ptr [ %i.bku, %.thread3645.peel4500 ], [ %spec.select34455359, %bb.mo ], [ %spec.select34455359, %bb.ms ], [ %spec.select34455359, %bb.mn ], [ %spec.select34455359, %bb.nv ], [ %spec.select34455359, %bb.nz ], [ %spec.select34455359, %bb.nu ], [ %.126464230, %.thread3645.peel ], [ %i.bkl, %bb.ll ], [ %spec.select5455.a, %.lr.ph4220.peel.next4496 ], [ %.126464230, %.preheader3893 ] ; 2 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %.226413655, i64 40
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !30 ; 2 uses
  %i.bxs = getelementptr inbounds nuw [8 x i8], ptr %i.bxr, i64 %i.bki
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !31 ; 2 uses
  %10 = trunc nuw i64 %indvars.iv4511 to i32
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %.preheader3893, label %._crit_edge4235, !llvm.loop !64

._crit_edge4235:                                  ; preds = %.thread3651, %.critedge140
  %.02642.lcssa = phi ptr [ %.162843.lcssa, %.critedge140 ], [ %i.bxt, %.thread3651 ] ; 8 uses
  %.not3260 = icmp eq ptr %.02642.lcssa, null
  br i1 %.not3260, label %.thread3479, label %bb.oa

bb.oa:                                            ; preds = %._crit_edge4235
  %i.bxu = load ptr, ptr %.02642.lcssa, align 8, !tbaa !35
  %i.bxv = load i32, ptr %i.bxu, align 4, !tbaa !40
  %i.bxw = load i32, ptr %1, align 4, !tbaa !40
  %i.bxx = icmp eq i32 %i.bxv, %i.bxw
  br i1 %i.bxx, label %bb.ob, label %.thread3479

bb.ob:                                            ; preds = %bb.oa
  %i.bxy = getelementptr inbounds nuw i8, ptr %.02642.lcssa, i64 8
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !36
  %i.bya = getelementptr inbounds nuw i8, ptr %.02642.lcssa, i64 16
  %i.byb = load i64, ptr %i.bya, align 8, !tbaa !37
  %.not3261 = icmp eq i64 %i.byb, 0
  br i1 %.not3261, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.byc = getelementptr inbounds nuw i8, ptr %.02642.lcssa, i64 48
  %i.byd = load ptr, ptr %i.byc, align 8, !tbaa !32 ; 3 uses
  %i.bye = load <2 x ptr>, ptr %i.byd, align 8, !tbaa !73
  store <2 x ptr> %i.bye, ptr %.02642.lcssa, align 8, !tbaa !73
  %i.byf = getelementptr inbounds nuw i8, ptr %i.byd, i64 32
  %i.byg = load i32, ptr %i.byf, align 8, !tbaa !38
  %i.byh = getelementptr inbounds nuw i8, ptr %.02642.lcssa, i64 32
  store i32 %i.byg, ptr %i.byh, align 8, !tbaa !38
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %.192846 = phi ptr [ %i.byd, %bb.oc ], [ %.02642.lcssa, %bb.ob ] ; 4 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %.192846, i64 40 ; 2 uses
  %i.byj = load ptr, ptr %i.byi, align 8, !tbaa !30 ; 2 uses
  %i.byk = load ptr, ptr %i.byj, align 8, !tbaa !31 ; 2 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %.192846, i64 48 ; 2 uses
  %i.bym = load ptr, ptr %i.byl, align 8, !tbaa !32
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bym, i64 40
  %i.byo = load ptr, ptr %i.byn, align 8, !tbaa !30
  store ptr %i.byk, ptr %i.byo, align 8, !tbaa !31
  %i.byp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.byq = load ptr, ptr %i.byp, align 8, !tbaa !34
  %i.byr = icmp eq ptr %i.byq, %.192846
  %i.bys = load ptr, ptr %i.byl, align 8, !tbaa !32 ; 2 uses
  br i1 %i.byr, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  store ptr %i.bys, ptr %i.byp, align 8, !tbaa !34
  br label %bb.og

bb.of:                                            ; preds = %bb.od
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byk, i64 48
  store ptr %i.bys, ptr %i.byt, align 8, !tbaa !32
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.oe
  %i.byu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.byv = load i64, ptr %i.byu, align 8, !tbaa !27
  %i.byw = add i64 %i.byv, -1
  store i64 %i.byw, ptr %i.byu, align 8, !tbaa !27
  %i.byx = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !20
  %i.byz = tail call ptr @H5FL_fac_free(ptr noundef %i.byy, ptr noundef nonnull %i.byj) #9
  store ptr %i.byz, ptr %i.byi, align 8, !tbaa !30
  %i.bza = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.192846) #9 ; 0 uses
  br label %.thread3479

bb.oh:                                            ; preds = %bb.b
  %i.bzb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.bzc = load i32, ptr %i.bzb, align 8, !tbaa !26 ; 4 uses
  %i.bzd = icmp slt i32 %i.bzc, 0
  br i1 %i.bzd, label %.thread3479, label %.preheader3896

.preheader3896:                                   ; preds = %bb.oh
  %.not32224171 = icmp eq ptr %i.h, null
  br i1 %.not32224171, label %.critedge146, label %.lr.ph4175

.lr.ph4175:                                       ; preds = %.preheader3896
  %i.bze = zext nneg i32 %i.bzc to i64
  br label %bb.oi

bb.oi:                                            ; preds = %.lr.ph4175, %.critedge148
  %.026284174 = phi ptr [ %i.h, %.lr.ph4175 ], [ %.026304173, %.critedge148 ]
  %.026304173 = phi ptr [ %i.h, %.lr.ph4175 ], [ %.2028474172, %.critedge148 ] ; 3 uses
  %.2028474172 = phi ptr [ %i.h, %.lr.ph4175 ], [ %i.bzm, %.critedge148 ] ; 5 uses
  %i.bzf = load ptr, ptr %.2028474172, align 8, !tbaa !35 ; 2 uses
  %.not3223 = icmp eq ptr %i.bzf, null
  br i1 %.not3223, label %.critedge148, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bzg = load i64, ptr %i.bzf, align 8, !tbaa !18
  %i.bzh = load i64, ptr %1, align 8, !tbaa !18
  %i.bzi = icmp ult i64 %i.bzg, %i.bzh
  br i1 %i.bzi, label %.critedge148, label %.critedge146

.critedge148:                                     ; preds = %bb.oi, %bb.oj
  %i.bzj = getelementptr inbounds nuw i8, ptr %.2028474172, i64 40
  %i.bzk = load ptr, ptr %i.bzj, align 8, !tbaa !30
  %i.bzl = getelementptr inbounds nuw [8 x i8], ptr %i.bzk, i64 %i.bze
  %i.bzm = load ptr, ptr %i.bzl, align 8, !tbaa !31 ; 2 uses
  %.not3222 = icmp eq ptr %i.bzm, null
  br i1 %.not3222, label %.critedge146, label %bb.oi, !llvm.loop !65

.critedge146:                                     ; preds = %bb.oj, %.critedge148, %.preheader3896
  %.202847.lcssa = phi ptr [ null, %.preheader3896 ], [ null, %.critedge148 ], [ %.2028474172, %bb.oj ] ; 2 uses
  %.02630.lcssa = phi ptr [ null, %.preheader3896 ], [ %.2028474172, %.critedge148 ], [ %.026304173, %bb.oj ] ; 2 uses
  %.02628.lcssa = phi ptr [ null, %.preheader3896 ], [ %.026304173, %.critedge148 ], [ %.026284174, %bb.oj ]
  %.not4376 = icmp eq i32 %i.bzc, 0
  br i1 %.not4376, label %._crit_edge4202, label %.preheader3895.lr.ph

.preheader3895.lr.ph:                             ; preds = %.critedge146
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.bzq = zext nneg i32 %i.bzc to i64
  %.phi.trans.insert4695 = getelementptr inbounds nuw i8, ptr %.02630.lcssa, i64 40
  %.pre4696.a = load ptr, ptr %.phi.trans.insert4695, align 8, !tbaa !30
  br label %.preheader3895

.preheader3895:                                   ; preds = %.preheader3895.lr.ph, %.thread3699
  %i.bzr = phi ptr [ %.pre4696.a, %.preheader3895.lr.ph ], [ %i.cnb, %.thread3699 ] ; 3 uses
  %indvars.iv4492 = phi i64 [ %i.bzq, %.preheader3895.lr.ph ], [ %i.bzs, %.thread3699 ] ; 9 uses
  %.026274199 = phi ptr [ %.202847.lcssa, %.preheader3895.lr.ph ], [ %i.cnd, %.thread3699 ] ; 6 uses
  %.126294198 = phi ptr [ %.02628.lcssa, %.preheader3895.lr.ph ], [ %.226233704, %.thread3699 ] ; 4 uses
  %.126314197 = phi ptr [ %.02630.lcssa, %.preheader3895.lr.ph ], [ %.226263703, %.thread3699 ] ; 20 uses
  %i.bzs = add nsw i64 %indvars.iv4492, -1        ; 10 uses
  %i.bzt = getelementptr inbounds nuw i8, ptr %.126314197, i64 40 ; 8 uses
  %i.bzu = getelementptr inbounds nuw [8 x i8], ptr %i.bzr, i64 %i.bzs
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !31 ; 7 uses
  %i.bzw = icmp eq ptr %i.bzv, %.026274199
  br i1 %i.bzw, label %.thread3699, label %.lr.ph4187.preheader

.lr.ph4187.preheader:                             ; preds = %.preheader3895
  %i.bzx = load ptr, ptr %i.bzv, align 8, !tbaa !35
  %i.bzy = load i64, ptr %i.bzx, align 8, !tbaa !18
  %i.bzz = load i64, ptr %1, align 8, !tbaa !18   ; 3 uses
  %i.caa = icmp ult i64 %i.bzy, %i.bzz
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzv, i64 40
  %i.cac = load ptr, ptr %i.cab, align 8, !tbaa !30
  %i.cad = getelementptr inbounds nuw [8 x i8], ptr %i.cac, i64 %i.bzs
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !31 ; 6 uses
  %i.caf = icmp eq ptr %i.cae, %.026274199        ; 2 uses
  br i1 %i.caa, label %.thread3693.peel.thread, label %.thread3693.peel

.thread3693.peel:                                 ; preds = %.lr.ph4187.preheader
  br i1 %i.caf, label %bb.ol, label %.thread3699

.thread3693.peel.thread:                          ; preds = %.lr.ph4187.preheader
  br i1 %i.caf, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %.thread3693.peel.thread
  %i.cag = load ptr, ptr %i.cae, align 8, !tbaa !35
  %i.cah = load i64, ptr %i.cag, align 8, !tbaa !18
  %i.cai = icmp ult i64 %i.cah, %i.bzz
  br i1 %i.cai, label %.thread3693.peel4481, label %.thread3699

.thread3693.peel4481:                             ; preds = %bb.ok
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cae, i64 40
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !30
  %i.cal = getelementptr inbounds nuw [8 x i8], ptr %i.cak, i64 %i.bzs
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !31 ; 3 uses
  %i.can = icmp eq ptr %i.cam, %.026274199
  br i1 %i.can, label %.thread3699, label %.lr.ph4187.peel.next4477

.lr.ph4187.peel.next4477:                         ; preds = %.thread3693.peel4481
  %i.cao = load ptr, ptr %i.cam, align 8, !tbaa !35
  %i.cap = load i64, ptr %i.cao, align 8, !tbaa !18
  %i.caq = icmp ult i64 %i.cap, %i.bzz            ; 2 uses
  %spec.select5464 = select i1 %i.caq, ptr %i.cae, ptr %i.bzv
  %spec.select5465 = select i1 %i.caq, ptr %i.cam, ptr %i.cae
  br label %.thread3699

bb.ol:                                            ; preds = %.thread3693.peel, %.thread3693.peel.thread
  %.02624.lcssa.ph = phi ptr [ null, %.thread3693.peel.thread ], [ %.126314197, %.thread3693.peel ] ; 2 uses
  %.not32295370 = icmp eq ptr %.02624.lcssa.ph, null
  %spec.select34475371 = select i1 %.not32295370, ptr %i.bzv, ptr %.02624.lcssa.ph ; 6 uses
  %i.car = icmp eq ptr %.126294198, %.126314197
  br i1 %i.car, label %bb.om, label %bb.ps

bb.om:                                            ; preds = %bb.ol
  %i.cas = getelementptr inbounds nuw i8, ptr %.026274199, i64 40 ; 4 uses
  %i.cat = load ptr, ptr %i.cas, align 8, !tbaa !30 ; 3 uses
  %i.cau = getelementptr inbounds nuw [8 x i8], ptr %i.cat, i64 %indvars.iv4492
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !31
  %i.caw = getelementptr inbounds nuw i8, ptr %.026274199, i64 16 ; 3 uses
  %i.cax = load i64, ptr %i.caw, align 8, !tbaa !37 ; 5 uses
  %i.cay = getelementptr inbounds nuw [8 x i8], ptr %i.cat, i64 %i.cax
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !31
  %i.cba = getelementptr inbounds nuw [8 x i8], ptr %i.bzr, i64 %i.cax
  store ptr %i.caz, ptr %i.cba, align 8, !tbaa !31
  %i.cbb = getelementptr inbounds nuw i8, ptr %.026274199, i64 24 ; 3 uses
  %i.cbc = load i64, ptr %i.cbb, align 8, !tbaa !39
  %i.cbd = add i64 %i.cbc, -1                     ; 3 uses
  %i.cbe = shl nuw i64 1, %i.cbd
  %.not3244 = icmp ugt i64 %i.cax, %i.cbe
  br i1 %.not3244, label %bb.oq, label %bb.on

bb.on:                                            ; preds = %bb.om
end_hunk_4
begin_hunk_5_@H5SL_remove:bb.a
  %i.cjp = load ptr, ptr %i.cjo, align 8, !tbaa !30
  %i.cjq = shl i64 %i.cik, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cjj, ptr align 1 %i.cjp, i64 %i.cjq, i1 false)
  %i.cjr = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.cjs = load i64, ptr %i.cil, align 8, !tbaa !39
  %i.cjt = getelementptr [8 x i8], ptr %i.cjr, i64 %i.cjs
  %i.cju = getelementptr i8, ptr %i.cjt, i64 -8
  %i.cjv = load ptr, ptr %i.cju, align 8, !tbaa !20
  %i.cjw = load ptr, ptr %i.cjo, align 8, !tbaa !30
  %i.cjx = tail call ptr @H5FL_fac_free(ptr noundef %i.cjv, ptr noundef %i.cjw) #9 ; 0 uses
  store ptr %i.cjj, ptr %i.cjo, align 8, !tbaa !30
  %.pre4707 = load i64, ptr %i.cii, align 8, !tbaa !37
  %.pre4962 = add i64 %.pre4707, 1
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.py
  %.pre-phi4963 = phi i64 [ %.pre4962, %bb.qg ], [ %i.cik, %bb.py ]
  store i64 %.pre-phi4963, ptr %i.cii, align 8, !tbaa !37
  %i.cjy = load i32, ptr %i.bzb, align 8, !tbaa !26 ; 2 uses
  %i.cjz = sext i32 %i.cjy to i64
  %i.cka = icmp eq i64 %i.cij, %i.cjz
  br i1 %i.cka, label %bb.qi, label %bb.qs

bb.qi:                                            ; preds = %bb.qh
  %i.ckb = getelementptr inbounds nuw i8, ptr %.126294198, i64 24 ; 4 uses
  %i.ckc = load i64, ptr %i.ckb, align 8, !tbaa !39 ; 2 uses
  %.highbits3241 = lshr i64 %i.cik, %i.ckc
  %.not3240 = icmp eq i64 %.highbits3241, 0
  br i1 %.not3240, label %._crit_edge4917, label %bb.qj

._crit_edge4917:                                  ; preds = %bb.qi
  %.pre4714.pre = load ptr, ptr %i.cgv, align 8, !tbaa !30
  br label %bb.qr

bb.qj:                                            ; preds = %bb.qi
  %i.ckd = add i64 %i.ckc, 1                      ; 3 uses
  store i64 %i.ckd, ptr %i.ckb, align 8, !tbaa !39
  %i.cke = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3242 = icmp ult i64 %i.ckd, %i.cke
  br i1 %.not3242, label %._crit_edge4710, label %bb.qk

._crit_edge4710:                                  ; preds = %bb.qj
  %.pre4711 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.qo

bb.qk:                                            ; preds = %bb.qj
  %i.ckf = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3243 = icmp ult i64 %i.cke, %i.ckf
  br i1 %.not3243, label %bb.qn, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.ckg = shl i64 %i.ckf, 1
  store i64 %i.ckg, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.ckh = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.cki = shl i64 %i.ckf, 4
  %i.ckj = tail call ptr @H5MM_realloc(ptr noundef %i.ckh, i64 noundef %i.cki) #9 ; 2 uses
  store ptr %i.ckj, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.ckk = icmp eq ptr %i.ckj, null
  br i1 %i.ckk, label %bb.qm, label %._crit_edge4708

._crit_edge4708:                                  ; preds = %bb.ql
  %.pre4709 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.qn

bb.qm:                                            ; preds = %bb.ql
  %i.ckl = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.ckm = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.ckn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1165, i64 noundef %i.ckl, i64 noundef %i.ckm, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.qn:                                            ; preds = %._crit_edge4708, %bb.qk
  %i.cko = phi i64 [ %.pre4709, %._crit_edge4708 ], [ %i.cke, %bb.qk ]
  %i.ckp = shl i64 8, %i.cko
  %i.ckq = tail call ptr @H5FL_fac_init(i64 noundef %i.ckp) #9
  %i.ckr = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.cks = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.ckt = getelementptr inbounds nuw [8 x i8], ptr %i.ckr, i64 %i.cks
  store ptr %i.ckq, ptr %i.ckt, align 8, !tbaa !20
  %i.cku = add i64 %i.cks, 1
  store i64 %i.cku, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4712 = load i64, ptr %i.ckb, align 8, !tbaa !39
  br label %bb.qo

bb.qo:                                            ; preds = %._crit_edge4710, %bb.qn
  %i.ckv = phi i64 [ %i.ckd, %._crit_edge4710 ], [ %.pre4712, %bb.qn ]
  %i.ckw = phi ptr [ %.pre4711, %._crit_edge4710 ], [ %i.ckr, %bb.qn ]
  %i.ckx = getelementptr inbounds nuw [8 x i8], ptr %i.ckw, i64 %i.ckv
  %i.cky = load ptr, ptr %i.ckx, align 8, !tbaa !20
  %i.ckz = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.cky) #9 ; 4 uses
  %i.cla = icmp eq ptr %i.ckz, null
  br i1 %i.cla, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.clb = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.clc = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.cld = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1165, i64 noundef %i.clb, i64 noundef %i.clc, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.qq:                                            ; preds = %bb.qo
  %i.cle = load ptr, ptr %i.cgv, align 8, !tbaa !30
  %i.clf = shl nsw i64 %i.cik, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ckz, ptr align 1 %i.cle, i64 %i.clf, i1 false)
  %i.clg = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.clh = load i64, ptr %i.ckb, align 8, !tbaa !39
  %i.cli = getelementptr [8 x i8], ptr %i.clg, i64 %i.clh
  %i.clj = getelementptr i8, ptr %i.cli, i64 -8
  %i.clk = load ptr, ptr %i.clj, align 8, !tbaa !20
  %i.cll = load ptr, ptr %i.cgv, align 8, !tbaa !30
  %i.clm = tail call ptr @H5FL_fac_free(ptr noundef %i.clk, ptr noundef %i.cll) #9 ; 0 uses
  store ptr %i.ckz, ptr %i.cgv, align 8, !tbaa !30
  %.pre4713 = load i32, ptr %i.bzb, align 8, !tbaa !26
  br label %bb.qr

bb.qr:                                            ; preds = %._crit_edge4917, %bb.qq
  %.pre4714 = phi ptr [ %i.ckz, %bb.qq ], [ %.pre4714.pre, %._crit_edge4917 ]
  %i.cln = phi i32 [ %.pre4713, %bb.qq ], [ %i.cjy, %._crit_edge4917 ]
  %i.clo = getelementptr inbounds nuw i8, ptr %.126294198, i64 16 ; 2 uses
  %i.clp = load i64, ptr %i.clo, align 8, !tbaa !37
  %i.clq = add i64 %i.clp, 1
  store i64 %i.clq, ptr %i.clo, align 8, !tbaa !37
  %i.clr = add nsw i32 %i.cln, 1
  store i32 %i.clr, ptr %i.bzb, align 8, !tbaa !26
  br label %bb.qt

bb.qs:                                            ; preds = %bb.qh
  %i.cls = load ptr, ptr %i.cgv, align 8, !tbaa !30 ; 2 uses
  %i.clt = getelementptr inbounds nuw [8 x i8], ptr %i.cls, i64 %i.cik
  %i.clu = load ptr, ptr %i.clt, align 8, !tbaa !31
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qr, %bb.qs
  %.sink5470 = phi ptr [ null, %bb.qr ], [ %i.clu, %bb.qs ]
  %i.clv = phi ptr [ %.pre4714, %bb.qr ], [ %i.cls, %bb.qs ]
  %i.clw = getelementptr inbounds nuw i8, ptr %.222849.lcssa, i64 40
  %i.clx = load ptr, ptr %i.clw, align 8, !tbaa !30
  %i.cly = getelementptr inbounds nuw [8 x i8], ptr %i.clx, i64 %i.cik
  store ptr %.sink5470, ptr %i.cly, align 8, !tbaa !31
  %i.clz = getelementptr inbounds nuw [8 x i8], ptr %i.clv, i64 %i.cik
  store ptr %.222849.lcssa, ptr %i.clz, align 8, !tbaa !31
  br label %.thread3699

bb.qu:                                            ; preds = %bb.px
  %i.cma = load ptr, ptr %i.bzn, align 8, !tbaa !30
  %i.cmb = getelementptr inbounds nuw [8 x i8], ptr %i.cma, i64 %indvars.iv4492
  %i.cmc = load ptr, ptr %i.cmb, align 8, !tbaa !31
  %.not3233 = icmp eq ptr %i.cmc, null
  br i1 %.not3233, label %bb.qv, label %.thread3699

bb.qv:                                            ; preds = %bb.qu
  %i.cmd = load i64, ptr %i.bzo, align 8, !tbaa !39
  %i.cme = add i64 %i.cmd, -1                     ; 3 uses
  %i.cmf = shl nuw i64 1, %i.cme
  %.not3234 = icmp ult i64 %i.cmf, %indvars.iv4492
  br i1 %.not3234, label %bb.qy, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  store i64 %i.cme, ptr %i.bzo, align 8, !tbaa !39
  %i.cmg = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.cmh = getelementptr inbounds nuw [8 x i8], ptr %i.cmg, i64 %i.cme
  %i.cmi = load ptr, ptr %i.cmh, align 8, !tbaa !20
  %i.cmj = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.cmi) #9 ; 3 uses
  %.not3235 = icmp eq ptr %i.cmj, null
  br i1 %.not3235, label %.thread3740, label %bb.qx

.thread3740:                                      ; preds = %bb.qw
  %i.cmk = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.cml = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.cmm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1165, i64 noundef %i.cmk, i64 noundef %i.cml, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.qx:                                            ; preds = %bb.qw
  %i.cmn = load ptr, ptr %i.bzn, align 8, !tbaa !30
  %i.cmo = shl nuw nsw i64 %indvars.iv4492, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cmj, ptr align 1 %i.cmn, i64 %i.cmo, i1 false)
  %i.cmp = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.cmq = load i64, ptr %i.bzo, align 8, !tbaa !39
  %i.cmr = getelementptr [8 x i8], ptr %i.cmp, i64 %i.cmq
  %i.cms = getelementptr i8, ptr %i.cmr, i64 8
  %i.cmt = load ptr, ptr %i.cms, align 8, !tbaa !20
  %i.cmu = load ptr, ptr %i.bzn, align 8, !tbaa !30
  %i.cmv = tail call ptr @H5FL_fac_free(ptr noundef %i.cmt, ptr noundef %i.cmu) #9 ; 0 uses
  store ptr %i.cmj, ptr %i.bzn, align 8, !tbaa !30
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qv
  %i.cmw = load i64, ptr %i.bzp, align 8, !tbaa !37
  %i.cmx = add i64 %i.cmw, -1
  store i64 %i.cmx, ptr %i.bzp, align 8, !tbaa !37
  %i.cmy = load i32, ptr %i.bzb, align 8, !tbaa !26
  %i.cmz = add nsw i32 %i.cmy, -1
  store i32 %i.cmz, ptr %i.bzb, align 8, !tbaa !26
  br label %.thread3699

.thread3699:                                      ; preds = %.lr.ph4187.peel.next4477, %.preheader3895, %.thread3693.peel4481, %.thread3693.peel, %bb.ok, %bb.qt, %bb.pm, %bb.pn, %bb.pr, %bb.qu, %bb.qy
  %.226233704 = phi ptr [ %i.bzv, %.thread3693.peel4481 ], [ %.126314197, %bb.pn ], [ %.126314197, %bb.pr ], [ %.126314197, %bb.pm ], [ %.126314197, %bb.qu ], [ %.126314197, %bb.qy ], [ %.126314197, %bb.qt ], [ %.126314197, %.thread3693.peel ], [ %.126314197, %bb.ok ], [ %spec.select5464, %.lr.ph4187.peel.next4477 ], [ %.126314197, %.preheader3895 ]
  %.226263703 = phi ptr [ %i.cae, %.thread3693.peel4481 ], [ %spec.select34475371, %bb.pn ], [ %spec.select34475371, %bb.pr ], [ %spec.select34475371, %bb.pm ], [ %spec.select34475371, %bb.qu ], [ %spec.select34475371, %bb.qy ], [ %spec.select34475371, %bb.qt ], [ %.126314197, %.thread3693.peel ], [ %i.bzv, %bb.ok ], [ %spec.select5465, %.lr.ph4187.peel.next4477 ], [ %.126314197, %.preheader3895 ] ; 2 uses
  %i.cna = getelementptr inbounds nuw i8, ptr %.226263703, i64 40
  %i.cnb = load ptr, ptr %i.cna, align 8, !tbaa !30 ; 2 uses
  %i.cnc = getelementptr inbounds nuw [8 x i8], ptr %i.cnb, i64 %i.bzs
  %i.cnd = load ptr, ptr %i.cnc, align 8, !tbaa !31 ; 2 uses
  %12 = trunc nuw i64 %indvars.iv4492 to i32
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %.preheader3895, label %._crit_edge4202, !llvm.loop !66

._crit_edge4202:                                  ; preds = %.thread3699, %.critedge146
  %.02627.lcssa = phi ptr [ %.202847.lcssa, %.critedge146 ], [ %i.cnd, %.thread3699 ] ; 8 uses
  %.not3224 = icmp eq ptr %.02627.lcssa, null
  br i1 %.not3224, label %.thread3479, label %bb.qz

bb.qz:                                            ; preds = %._crit_edge4202
  %i.cne = load ptr, ptr %.02627.lcssa, align 8, !tbaa !35
  %i.cnf = load i64, ptr %i.cne, align 8, !tbaa !18
  %i.cng = load i64, ptr %1, align 8, !tbaa !18
  %i.cnh = icmp eq i64 %i.cnf, %i.cng
  br i1 %i.cnh, label %bb.ra, label %.thread3479

bb.ra:                                            ; preds = %bb.qz
  %i.cni = getelementptr inbounds nuw i8, ptr %.02627.lcssa, i64 8
  %i.cnj = load ptr, ptr %i.cni, align 8, !tbaa !36
  %i.cnk = getelementptr inbounds nuw i8, ptr %.02627.lcssa, i64 16
  %i.cnl = load i64, ptr %i.cnk, align 8, !tbaa !37
  %.not3225 = icmp eq i64 %i.cnl, 0
  br i1 %.not3225, label %bb.rc, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.cnm = getelementptr inbounds nuw i8, ptr %.02627.lcssa, i64 48
  %i.cnn = load ptr, ptr %i.cnm, align 8, !tbaa !32 ; 3 uses
  %i.cno = load <2 x ptr>, ptr %i.cnn, align 8, !tbaa !73
  store <2 x ptr> %i.cno, ptr %.02627.lcssa, align 8, !tbaa !73
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cnn, i64 32
  %i.cnq = load i32, ptr %i.cnp, align 8, !tbaa !38
  %i.cnr = getelementptr inbounds nuw i8, ptr %.02627.lcssa, i64 32
  store i32 %i.cnq, ptr %i.cnr, align 8, !tbaa !38
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %bb.ra
  %.232850 = phi ptr [ %i.cnn, %bb.rb ], [ %.02627.lcssa, %bb.ra ] ; 4 uses
  %i.cns = getelementptr inbounds nuw i8, ptr %.232850, i64 40 ; 2 uses
  %i.cnt = load ptr, ptr %i.cns, align 8, !tbaa !30 ; 2 uses
  %i.cnu = load ptr, ptr %i.cnt, align 8, !tbaa !31 ; 2 uses
  %i.cnv = getelementptr inbounds nuw i8, ptr %.232850, i64 48 ; 2 uses
  %i.cnw = load ptr, ptr %i.cnv, align 8, !tbaa !32
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnw, i64 40
  %i.cny = load ptr, ptr %i.cnx, align 8, !tbaa !30
  store ptr %i.cnu, ptr %i.cny, align 8, !tbaa !31
  %i.cnz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.coa = load ptr, ptr %i.cnz, align 8, !tbaa !34
  %i.cob = icmp eq ptr %i.coa, %.232850
  %i.coc = load ptr, ptr %i.cnv, align 8, !tbaa !32 ; 2 uses
  br i1 %i.cob, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %bb.rc
  store ptr %i.coc, ptr %i.cnz, align 8, !tbaa !34
  br label %bb.rf

bb.re:                                            ; preds = %bb.rc
  %i.cod = getelementptr inbounds nuw i8, ptr %i.cnu, i64 48
  store ptr %i.coc, ptr %i.cod, align 8, !tbaa !32
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd
  %i.coe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cof = load i64, ptr %i.coe, align 8, !tbaa !27
  %i.cog = add i64 %i.cof, -1
  store i64 %i.cog, ptr %i.coe, align 8, !tbaa !27
  %i.coh = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.coi = load ptr, ptr %i.coh, align 8, !tbaa !20
  %i.coj = tail call ptr @H5FL_fac_free(ptr noundef %i.coi, ptr noundef nonnull %i.cnt) #9
  store ptr %i.coj, ptr %i.cns, align 8, !tbaa !30
  %i.cok = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.232850) #9 ; 0 uses
  br label %.thread3479

bb.rg:                                            ; preds = %bb.b
  %i.col = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.com = load i32, ptr %i.col, align 8, !tbaa !26 ; 4 uses
  %i.con = icmp slt i32 %i.com, 0
  br i1 %i.con, label %.thread3479, label %.preheader3898

.preheader3898:                                   ; preds = %bb.rg
  %.not31864135 = icmp eq ptr %i.h, null
  br i1 %.not31864135, label %.critedge152, label %.lr.ph4139

.lr.ph4139:                                       ; preds = %.preheader3898
  %i.coo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cop = zext nneg i32 %i.com to i64
  br label %bb.rh

bb.rh:                                            ; preds = %.lr.ph4139, %.critedge154
  %.026134138 = phi ptr [ %i.h, %.lr.ph4139 ], [ %.026154137, %.critedge154 ] ; 2 uses
  %.026154137 = phi ptr [ %i.h, %.lr.ph4139 ], [ %.2428514136, %.critedge154 ] ; 4 uses
  %.2428514136 = phi ptr [ %i.h, %.lr.ph4139 ], [ %i.cpc, %.critedge154 ] ; 6 uses
  %i.coq = load ptr, ptr %.2428514136, align 8, !tbaa !35 ; 3 uses
  %.not3187 = icmp eq ptr %i.coq, null
  br i1 %.not3187, label %.critedge154, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.cor = load i64, ptr %i.coq, align 8, !tbaa !42 ; 2 uses
  %i.cos = load i64, ptr %1, align 8, !tbaa !42   ; 2 uses
  %i.cot = icmp eq i64 %i.cor, %i.cos
  br i1 %i.cot, label %.split3741, label %bb.rj

.split3741:                                       ; preds = %bb.ri
  %i.cou = getelementptr inbounds nuw i8, ptr %i.coq, i64 8
  %i.cov = load i64, ptr %i.cou, align 8, !tbaa !43
  %i.cow = load i64, ptr %i.coo, align 8, !tbaa !43
  %i.cox = icmp ult i64 %i.cov, %i.cow
  br i1 %i.cox, label %.critedge154, label %.critedge152

bb.rj:                                            ; preds = %bb.ri
  %i.coy = icmp ult i64 %i.cor, %i.cos
  br i1 %i.coy, label %.critedge154, label %.critedge152

.critedge154:                                     ; preds = %.split3741, %bb.rh, %bb.rj
  %i.coz = getelementptr inbounds nuw i8, ptr %.2428514136, i64 40
  %i.cpa = load ptr, ptr %i.coz, align 8, !tbaa !30
  %i.cpb = getelementptr inbounds nuw [8 x i8], ptr %i.cpa, i64 %i.cop
  %i.cpc = load ptr, ptr %i.cpb, align 8, !tbaa !31 ; 2 uses
  %.not3186 = icmp eq ptr %i.cpc, null
  br i1 %.not3186, label %.critedge152, label %bb.rh, !llvm.loop !67

.critedge152:                                     ; preds = %bb.rj, %.critedge154, %.split3741, %.preheader3898
  %.242851.lcssa = phi ptr [ null, %.preheader3898 ], [ %.2428514136, %.split3741 ], [ null, %.critedge154 ], [ %.2428514136, %bb.rj ] ; 2 uses
  %.02615.lcssa = phi ptr [ null, %.preheader3898 ], [ %.026154137, %.split3741 ], [ %.2428514136, %.critedge154 ], [ %.026154137, %bb.rj ] ; 2 uses
  %.02613.lcssa = phi ptr [ null, %.preheader3898 ], [ %.026134138, %.split3741 ], [ %.026154137, %.critedge154 ], [ %.026134138, %bb.rj ]
  %.not4375 = icmp eq i32 %i.com, 0
  br i1 %.not4375, label %._crit_edge4169, label %.preheader3897.lr.ph

.preheader3897.lr.ph:                             ; preds = %.critedge152
  %i.cpd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.cph = zext nneg i32 %i.com to i64
  %.phi.trans.insert4660 = getelementptr inbounds nuw i8, ptr %.02615.lcssa, i64 40
  %.pre4661.a = load ptr, ptr %.phi.trans.insert4660, align 8, !tbaa !30
  br label %.preheader3897

.preheader3897:                                   ; preds = %.preheader3897.lr.ph, %.thread3748
  %i.cpi = phi ptr [ %.pre4661.a, %.preheader3897.lr.ph ], [ %i.ddm, %.thread3748 ] ; 3 uses
  %indvars.iv4473 = phi i64 [ %i.cph, %.preheader3897.lr.ph ], [ %i.cpj, %.thread3748 ] ; 9 uses
  %.026124166 = phi ptr [ %.242851.lcssa, %.preheader3897.lr.ph ], [ %i.ddo, %.thread3748 ] ; 7 uses
  %.126144165 = phi ptr [ %.02613.lcssa, %.preheader3897.lr.ph ], [ %.226083753, %.thread3748 ] ; 4 uses
  %.126164164 = phi ptr [ %.02615.lcssa, %.preheader3897.lr.ph ], [ %.226113752, %.thread3748 ] ; 21 uses
  %i.cpj = add nsw i64 %indvars.iv4473, -1        ; 11 uses
  %i.cpk = getelementptr inbounds nuw i8, ptr %.126164164, i64 40 ; 8 uses
  %i.cpl = getelementptr inbounds nuw [8 x i8], ptr %i.cpi, i64 %i.cpj
  %i.cpm = load ptr, ptr %i.cpl, align 8, !tbaa !31 ; 10 uses
  %i.cpn = icmp eq ptr %i.cpm, %.026124166
  br i1 %i.cpn, label %.thread3748, label %.lr.ph4154.preheader

.lr.ph4154.preheader:                             ; preds = %.preheader3897
  %i.cpo = load ptr, ptr %i.cpm, align 8, !tbaa !35 ; 2 uses
  %i.cpp = load i64, ptr %i.cpo, align 8, !tbaa !42 ; 2 uses
  %i.cpq = load i64, ptr %1, align 8, !tbaa !42   ; 6 uses
  %i.cpr = icmp eq i64 %i.cpp, %i.cpq
  br i1 %i.cpr, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %.lr.ph4154.preheader
  %i.cps = icmp ult i64 %i.cpp, %i.cpq
  br i1 %i.cps, label %.thread3742.peel.thread, label %.thread3742.peel

bb.rl:                                            ; preds = %.lr.ph4154.preheader
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpo, i64 8
  %i.cpu = load i64, ptr %i.cpt, align 8, !tbaa !43
  %i.cpv = load i64, ptr %i.cpd, align 8, !tbaa !43
  %i.cpw = icmp ult i64 %i.cpu, %i.cpv
  br i1 %i.cpw, label %.thread3742.peel.thread, label %.thread3742.peel

.thread3742.peel:                                 ; preds = %bb.rk, %bb.rl
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpm, i64 40
  %i.cpy = load ptr, ptr %i.cpx, align 8, !tbaa !30
  %i.cpz = getelementptr inbounds nuw [8 x i8], ptr %i.cpy, i64 %i.cpj
  %i.cqa = load ptr, ptr %i.cpz, align 8, !tbaa !31
  %i.cqb = icmp eq ptr %i.cqa, %.026124166
  br i1 %i.cqb, label %bb.rs, label %.thread3748

.thread3742.peel.thread:                          ; preds = %bb.rk, %bb.rl
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cpm, i64 40
  %i.cqd = load ptr, ptr %i.cqc, align 8, !tbaa !30
  %i.cqe = getelementptr inbounds nuw [8 x i8], ptr %i.cqd, i64 %i.cpj
  %i.cqf = load ptr, ptr %i.cqe, align 8, !tbaa !31 ; 7 uses
  %i.cqg = icmp eq ptr %i.cqf, %.026124166
  br i1 %i.cqg, label %bb.rs, label %bb.rm

bb.rm:                                            ; preds = %.thread3742.peel.thread
  %i.cqh = load ptr, ptr %i.cqf, align 8, !tbaa !35 ; 2 uses
  %i.cqi = load i64, ptr %i.cqh, align 8, !tbaa !42 ; 2 uses
  %i.cqj = icmp eq i64 %i.cqi, %i.cpq
  br i1 %i.cqj, label %bb.ro, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.cqk = icmp ult i64 %i.cqi, %i.cpq
  br i1 %i.cqk, label %.thread3742.peel4462, label %.thread3748

bb.ro:                                            ; preds = %bb.rm
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cqh, i64 8
  %i.cqm = load i64, ptr %i.cql, align 8, !tbaa !43
  %i.cqn = load i64, ptr %i.cpd, align 8, !tbaa !43
  %i.cqo = icmp ult i64 %i.cqm, %i.cqn
  br i1 %i.cqo, label %.thread3742.peel4462, label %.thread3748

.thread3742.peel4462:                             ; preds = %bb.ro, %bb.rn
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqf, i64 40
end_hunk_5
begin_hunk_6_@H5SL_remove:bb.a
  %i.daa = load ptr, ptr %i.czz, align 8, !tbaa !30
  %i.dab = shl i64 %i.cyv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.czu, ptr align 1 %i.daa, i64 %i.dab, i1 false)
  %i.dac = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dad = load i64, ptr %i.cyw, align 8, !tbaa !39
  %i.dae = getelementptr [8 x i8], ptr %i.dac, i64 %i.dad
  %i.daf = getelementptr i8, ptr %i.dae, i64 -8
  %i.dag = load ptr, ptr %i.daf, align 8, !tbaa !20
  %i.dah = load ptr, ptr %i.czz, align 8, !tbaa !30
  %i.dai = tail call ptr @H5FL_fac_free(ptr noundef %i.dag, ptr noundef %i.dah) #9 ; 0 uses
  store ptr %i.czu, ptr %i.czz, align 8, !tbaa !30
  %.pre4672 = load i64, ptr %i.cyt, align 8, !tbaa !37
  %.pre4966 = add i64 %.pre4672, 1
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tf
  %.pre-phi4967 = phi i64 [ %.pre4966, %bb.tn ], [ %i.cyv, %bb.tf ]
  store i64 %.pre-phi4967, ptr %i.cyt, align 8, !tbaa !37
  %i.daj = load i32, ptr %i.col, align 8, !tbaa !26 ; 2 uses
  %i.dak = sext i32 %i.daj to i64
  %i.dal = icmp eq i64 %i.cyu, %i.dak
  br i1 %i.dal, label %bb.tp, label %bb.tz

bb.tp:                                            ; preds = %bb.to
  %i.dam = getelementptr inbounds nuw i8, ptr %.126144165, i64 24 ; 4 uses
  %i.dan = load i64, ptr %i.dam, align 8, !tbaa !39 ; 2 uses
  %.highbits3205 = lshr i64 %i.cyv, %i.dan
  %.not3204 = icmp eq i64 %.highbits3205, 0
  br i1 %.not3204, label %._crit_edge4913, label %bb.tq

._crit_edge4913:                                  ; preds = %bb.tp
  %.pre4679.pre = load ptr, ptr %i.cxg, align 8, !tbaa !30
  br label %bb.ty

bb.tq:                                            ; preds = %bb.tp
  %i.dao = add i64 %i.dan, 1                      ; 3 uses
  store i64 %i.dao, ptr %i.dam, align 8, !tbaa !39
  %i.dap = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3206 = icmp ult i64 %i.dao, %i.dap
  br i1 %.not3206, label %._crit_edge4675, label %bb.tr

._crit_edge4675:                                  ; preds = %bb.tq
  %.pre4676 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.tv

bb.tr:                                            ; preds = %bb.tq
  %i.daq = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3207 = icmp ult i64 %i.dap, %i.daq
  br i1 %.not3207, label %bb.tu, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.dar = shl i64 %i.daq, 1
  store i64 %i.dar, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.das = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dat = shl i64 %i.daq, 4
  %i.dau = tail call ptr @H5MM_realloc(ptr noundef %i.das, i64 noundef %i.dat) #9 ; 2 uses
  store ptr %i.dau, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dav = icmp eq ptr %i.dau, null
  br i1 %i.dav, label %bb.tt, label %._crit_edge4673

._crit_edge4673:                                  ; preds = %bb.ts
  %.pre4674 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.tu

bb.tt:                                            ; preds = %bb.ts
  %i.daw = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.dax = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.day = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1169, i64 noundef %i.daw, i64 noundef %i.dax, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.tu:                                            ; preds = %._crit_edge4673, %bb.tr
  %i.daz = phi i64 [ %.pre4674, %._crit_edge4673 ], [ %i.dap, %bb.tr ]
  %i.dba = shl i64 8, %i.daz
  %i.dbb = tail call ptr @H5FL_fac_init(i64 noundef %i.dba) #9
  %i.dbc = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.dbd = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.dbe = getelementptr inbounds nuw [8 x i8], ptr %i.dbc, i64 %i.dbd
  store ptr %i.dbb, ptr %i.dbe, align 8, !tbaa !20
  %i.dbf = add i64 %i.dbd, 1
  store i64 %i.dbf, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4677 = load i64, ptr %i.dam, align 8, !tbaa !39
  br label %bb.tv

bb.tv:                                            ; preds = %._crit_edge4675, %bb.tu
  %i.dbg = phi i64 [ %i.dao, %._crit_edge4675 ], [ %.pre4677, %bb.tu ]
  %i.dbh = phi ptr [ %.pre4676, %._crit_edge4675 ], [ %i.dbc, %bb.tu ]
  %i.dbi = getelementptr inbounds nuw [8 x i8], ptr %i.dbh, i64 %i.dbg
  %i.dbj = load ptr, ptr %i.dbi, align 8, !tbaa !20
  %i.dbk = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.dbj) #9 ; 4 uses
  %i.dbl = icmp eq ptr %i.dbk, null
  br i1 %i.dbl, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %bb.tv
  %i.dbm = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.dbn = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.dbo = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1169, i64 noundef %i.dbm, i64 noundef %i.dbn, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.tx:                                            ; preds = %bb.tv
  %i.dbp = load ptr, ptr %i.cxg, align 8, !tbaa !30
  %i.dbq = shl nsw i64 %i.cyv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dbk, ptr align 1 %i.dbp, i64 %i.dbq, i1 false)
  %i.dbr = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dbs = load i64, ptr %i.dam, align 8, !tbaa !39
  %i.dbt = getelementptr [8 x i8], ptr %i.dbr, i64 %i.dbs
  %i.dbu = getelementptr i8, ptr %i.dbt, i64 -8
  %i.dbv = load ptr, ptr %i.dbu, align 8, !tbaa !20
  %i.dbw = load ptr, ptr %i.cxg, align 8, !tbaa !30
  %i.dbx = tail call ptr @H5FL_fac_free(ptr noundef %i.dbv, ptr noundef %i.dbw) #9 ; 0 uses
  store ptr %i.dbk, ptr %i.cxg, align 8, !tbaa !30
  %.pre4678 = load i32, ptr %i.col, align 8, !tbaa !26
  br label %bb.ty

bb.ty:                                            ; preds = %._crit_edge4913, %bb.tx
  %.pre4679 = phi ptr [ %i.dbk, %bb.tx ], [ %.pre4679.pre, %._crit_edge4913 ]
  %i.dby = phi i32 [ %.pre4678, %bb.tx ], [ %i.daj, %._crit_edge4913 ]
  %i.dbz = getelementptr inbounds nuw i8, ptr %.126144165, i64 16 ; 2 uses
  %i.dca = load i64, ptr %i.dbz, align 8, !tbaa !37
  %i.dcb = add i64 %i.dca, 1
  store i64 %i.dcb, ptr %i.dbz, align 8, !tbaa !37
  %i.dcc = add nsw i32 %i.dby, 1
  store i32 %i.dcc, ptr %i.col, align 8, !tbaa !26
  br label %bb.ua

bb.tz:                                            ; preds = %bb.to
  %i.dcd = load ptr, ptr %i.cxg, align 8, !tbaa !30 ; 2 uses
  %i.dce = getelementptr inbounds nuw [8 x i8], ptr %i.dcd, i64 %i.cyv
  %i.dcf = load ptr, ptr %i.dce, align 8, !tbaa !31
  br label %bb.ua

bb.ua:                                            ; preds = %bb.ty, %bb.tz
  %.sink5478 = phi ptr [ null, %bb.ty ], [ %i.dcf, %bb.tz ]
  %i.dcg = phi ptr [ %.pre4679, %bb.ty ], [ %i.dcd, %bb.tz ]
  %i.dch = getelementptr inbounds nuw i8, ptr %.262853.lcssa, i64 40
  %i.dci = load ptr, ptr %i.dch, align 8, !tbaa !30
  %i.dcj = getelementptr inbounds nuw [8 x i8], ptr %i.dci, i64 %i.cyv
  store ptr %.sink5478, ptr %i.dcj, align 8, !tbaa !31
  %i.dck = getelementptr inbounds nuw [8 x i8], ptr %i.dcg, i64 %i.cyv
  store ptr %.262853.lcssa, ptr %i.dck, align 8, !tbaa !31
  br label %.thread3748

bb.ub:                                            ; preds = %bb.te
  %i.dcl = load ptr, ptr %i.cpe, align 8, !tbaa !30
  %i.dcm = getelementptr inbounds nuw [8 x i8], ptr %i.dcl, i64 %indvars.iv4473
  %i.dcn = load ptr, ptr %i.dcm, align 8, !tbaa !31
  %.not3197 = icmp eq ptr %i.dcn, null
  br i1 %.not3197, label %bb.uc, label %.thread3748

bb.uc:                                            ; preds = %bb.ub
  %i.dco = load i64, ptr %i.cpf, align 8, !tbaa !39
  %i.dcp = add i64 %i.dco, -1                     ; 3 uses
  %i.dcq = shl nuw i64 1, %i.dcp
  %.not3198 = icmp ult i64 %i.dcq, %indvars.iv4473
  br i1 %.not3198, label %bb.uf, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  store i64 %i.dcp, ptr %i.cpf, align 8, !tbaa !39
  %i.dcr = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dcs = getelementptr inbounds nuw [8 x i8], ptr %i.dcr, i64 %i.dcp
  %i.dct = load ptr, ptr %i.dcs, align 8, !tbaa !20
  %i.dcu = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.dct) #9 ; 3 uses
  %.not3199 = icmp eq ptr %i.dcu, null
  br i1 %.not3199, label %.thread3789, label %bb.ue

.thread3789:                                      ; preds = %bb.ud
  %i.dcv = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.dcw = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.dcx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1169, i64 noundef %i.dcv, i64 noundef %i.dcw, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.ue:                                            ; preds = %bb.ud
  %i.dcy = load ptr, ptr %i.cpe, align 8, !tbaa !30
  %i.dcz = shl nuw nsw i64 %indvars.iv4473, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dcu, ptr align 1 %i.dcy, i64 %i.dcz, i1 false)
  %i.dda = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.ddb = load i64, ptr %i.cpf, align 8, !tbaa !39
  %i.ddc = getelementptr [8 x i8], ptr %i.dda, i64 %i.ddb
  %i.ddd = getelementptr i8, ptr %i.ddc, i64 8
  %i.dde = load ptr, ptr %i.ddd, align 8, !tbaa !20
  %i.ddf = load ptr, ptr %i.cpe, align 8, !tbaa !30
  %i.ddg = tail call ptr @H5FL_fac_free(ptr noundef %i.dde, ptr noundef %i.ddf) #9 ; 0 uses
  store ptr %i.dcu, ptr %i.cpe, align 8, !tbaa !30
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.uc
  %i.ddh = load i64, ptr %i.cpg, align 8, !tbaa !37
  %i.ddi = add i64 %i.ddh, -1
  store i64 %i.ddi, ptr %i.cpg, align 8, !tbaa !37
  %i.ddj = load i32, ptr %i.col, align 8, !tbaa !26
  %i.ddk = add nsw i32 %i.ddj, -1
  store i32 %i.ddk, ptr %i.col, align 8, !tbaa !26
  br label %.thread3748

.thread3748:                                      ; preds = %.preheader3897, %.thread3742.peel4462, %bb.rr, %.thread3742.peel, %bb.ro, %bb.rn, %bb.rq, %bb.rp, %bb.ua, %bb.st, %bb.su, %bb.sy, %bb.ub, %bb.uf
  %.226083753 = phi ptr [ %i.cpm, %bb.rp ], [ %.126164164, %bb.su ], [ %.126164164, %bb.sy ], [ %.126164164, %bb.st ], [ %.126164164, %bb.ub ], [ %.126164164, %bb.uf ], [ %.126164164, %bb.ua ], [ %.126164164, %.thread3742.peel ], [ %.126164164, %bb.rn ], [ %i.cqf, %bb.rr ], [ %.126164164, %bb.ro ], [ %i.cpm, %bb.rq ], [ %.126164164, %.preheader3897 ], [ %i.cpm, %.thread3742.peel4462 ]
  %.226113752 = phi ptr [ %i.cqf, %bb.rp ], [ %spec.select34495383, %bb.su ], [ %spec.select34495383, %bb.sy ], [ %spec.select34495383, %bb.st ], [ %spec.select34495383, %bb.ub ], [ %spec.select34495383, %bb.uf ], [ %spec.select34495383, %bb.ua ], [ %.126164164, %.thread3742.peel ], [ %i.cpm, %bb.rn ], [ %i.cqs, %bb.rr ], [ %i.cpm, %bb.ro ], [ %i.cqf, %bb.rq ], [ %.126164164, %.preheader3897 ], [ %i.cqf, %.thread3742.peel4462 ] ; 2 uses
  %i.ddl = getelementptr inbounds nuw i8, ptr %.226113752, i64 40
  %i.ddm = load ptr, ptr %i.ddl, align 8, !tbaa !30 ; 2 uses
  %i.ddn = getelementptr inbounds nuw [8 x i8], ptr %i.ddm, i64 %i.cpj
  %i.ddo = load ptr, ptr %i.ddn, align 8, !tbaa !31 ; 2 uses
  %14 = trunc nuw i64 %indvars.iv4473 to i32
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %.preheader3897, label %._crit_edge4169, !llvm.loop !68

._crit_edge4169:                                  ; preds = %.thread3748, %.critedge152
  %.02612.lcssa = phi ptr [ %.242851.lcssa, %.critedge152 ], [ %i.ddo, %.thread3748 ] ; 8 uses
  %.not3188 = icmp eq ptr %.02612.lcssa, null
  br i1 %.not3188, label %.thread3479, label %bb.ug

bb.ug:                                            ; preds = %._crit_edge4169
  %i.ddp = load ptr, ptr %.02612.lcssa, align 8, !tbaa !35 ; 2 uses
  %i.ddq = load i64, ptr %i.ddp, align 8, !tbaa !42
  %i.ddr = load i64, ptr %1, align 8, !tbaa !42
  %i.dds = icmp eq i64 %i.ddq, %i.ddr
  br i1 %i.dds, label %bb.uh, label %.thread3479

bb.uh:                                            ; preds = %bb.ug
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.ddp, i64 8
  %i.ddu = load i64, ptr %i.ddt, align 8, !tbaa !43
  %i.ddv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ddw = load i64, ptr %i.ddv, align 8, !tbaa !43
  %i.ddx = icmp eq i64 %i.ddu, %i.ddw
  br i1 %i.ddx, label %bb.ui, label %.thread3479

bb.ui:                                            ; preds = %bb.uh
  %i.ddy = getelementptr inbounds nuw i8, ptr %.02612.lcssa, i64 8
  %i.ddz = load ptr, ptr %i.ddy, align 8, !tbaa !36
  %i.dea = getelementptr inbounds nuw i8, ptr %.02612.lcssa, i64 16
  %i.deb = load i64, ptr %i.dea, align 8, !tbaa !37
  %.not3189 = icmp eq i64 %i.deb, 0
  br i1 %.not3189, label %bb.uk, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.dec = getelementptr inbounds nuw i8, ptr %.02612.lcssa, i64 48
  %i.ded = load ptr, ptr %i.dec, align 8, !tbaa !32 ; 3 uses
  %i.dee = load <2 x ptr>, ptr %i.ded, align 8, !tbaa !73
  store <2 x ptr> %i.dee, ptr %.02612.lcssa, align 8, !tbaa !73
  %i.def = getelementptr inbounds nuw i8, ptr %i.ded, i64 32
  %i.deg = load i32, ptr %i.def, align 8, !tbaa !38
  %i.deh = getelementptr inbounds nuw i8, ptr %.02612.lcssa, i64 32
  store i32 %i.deg, ptr %i.deh, align 8, !tbaa !38
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui
  %.272854 = phi ptr [ %i.ded, %bb.uj ], [ %.02612.lcssa, %bb.ui ] ; 4 uses
  %i.dei = getelementptr inbounds nuw i8, ptr %.272854, i64 40 ; 2 uses
  %i.dej = load ptr, ptr %i.dei, align 8, !tbaa !30 ; 2 uses
  %i.dek = load ptr, ptr %i.dej, align 8, !tbaa !31 ; 2 uses
  %i.del = getelementptr inbounds nuw i8, ptr %.272854, i64 48 ; 2 uses
  %i.dem = load ptr, ptr %i.del, align 8, !tbaa !32
  %i.den = getelementptr inbounds nuw i8, ptr %i.dem, i64 40
  %i.deo = load ptr, ptr %i.den, align 8, !tbaa !30
  store ptr %i.dek, ptr %i.deo, align 8, !tbaa !31
  %i.dep = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.deq = load ptr, ptr %i.dep, align 8, !tbaa !34
  %i.der = icmp eq ptr %i.deq, %.272854
  %i.des = load ptr, ptr %i.del, align 8, !tbaa !32 ; 2 uses
  br i1 %i.der, label %bb.ul, label %bb.um

bb.ul:                                            ; preds = %bb.uk
  store ptr %i.des, ptr %i.dep, align 8, !tbaa !34
  br label %bb.un

bb.um:                                            ; preds = %bb.uk
  %i.det = getelementptr inbounds nuw i8, ptr %i.dek, i64 48
  store ptr %i.des, ptr %i.det, align 8, !tbaa !32
  br label %bb.un

bb.un:                                            ; preds = %bb.um, %bb.ul
  %i.deu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dev = load i64, ptr %i.deu, align 8, !tbaa !27
  %i.dew = add i64 %i.dev, -1
  store i64 %i.dew, ptr %i.deu, align 8, !tbaa !27
  %i.dex = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dey = load ptr, ptr %i.dex, align 8, !tbaa !20
  %i.dez = tail call ptr @H5FL_fac_free(ptr noundef %i.dey, ptr noundef nonnull %i.dej) #9
  store ptr %i.dez, ptr %i.dei, align 8, !tbaa !30
  %i.dfa = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.272854) #9 ; 0 uses
  br label %.thread3479

bb.uo:                                            ; preds = %bb.b
  %i.dfb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.dfc = load i32, ptr %i.dfb, align 8, !tbaa !26 ; 4 uses
  %i.dfd = icmp slt i32 %i.dfc, 0
  br i1 %i.dfd, label %.thread3479, label %.preheader3900

.preheader3900:                                   ; preds = %bb.uo
  %.not31504102 = icmp eq ptr %i.h, null
  br i1 %.not31504102, label %.critedge158, label %.lr.ph4106

.lr.ph4106:                                       ; preds = %.preheader3900
  %i.dfe = zext nneg i32 %i.dfc to i64
  br label %bb.up

bb.up:                                            ; preds = %.lr.ph4106, %.critedge160
  %.025984105 = phi ptr [ %i.h, %.lr.ph4106 ], [ %.026004104, %.critedge160 ]
  %.026004104 = phi ptr [ %i.h, %.lr.ph4106 ], [ %.2828554103, %.critedge160 ] ; 3 uses
  %.2828554103 = phi ptr [ %i.h, %.lr.ph4106 ], [ %i.dfm, %.critedge160 ] ; 5 uses
  %i.dff = load ptr, ptr %.2828554103, align 8, !tbaa !35 ; 2 uses
  %.not3151 = icmp eq ptr %i.dff, null
  br i1 %.not3151, label %.critedge160, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.dfg = load i64, ptr %i.dff, align 8, !tbaa !18
  %i.dfh = load i64, ptr %1, align 8, !tbaa !18
  %i.dfi = icmp slt i64 %i.dfg, %i.dfh
  br i1 %i.dfi, label %.critedge160, label %.critedge158

.critedge160:                                     ; preds = %bb.up, %bb.uq
  %i.dfj = getelementptr inbounds nuw i8, ptr %.2828554103, i64 40
  %i.dfk = load ptr, ptr %i.dfj, align 8, !tbaa !30
  %i.dfl = getelementptr inbounds nuw [8 x i8], ptr %i.dfk, i64 %i.dfe
  %i.dfm = load ptr, ptr %i.dfl, align 8, !tbaa !31 ; 2 uses
  %.not3150 = icmp eq ptr %i.dfm, null
  br i1 %.not3150, label %.critedge158, label %bb.up, !llvm.loop !69

.critedge158:                                     ; preds = %bb.uq, %.critedge160, %.preheader3900
  %.282855.lcssa = phi ptr [ null, %.preheader3900 ], [ null, %.critedge160 ], [ %.2828554103, %bb.uq ] ; 2 uses
  %.02600.lcssa = phi ptr [ null, %.preheader3900 ], [ %.2828554103, %.critedge160 ], [ %.026004104, %bb.uq ] ; 2 uses
  %.02598.lcssa = phi ptr [ null, %.preheader3900 ], [ %.026004104, %.critedge160 ], [ %.025984105, %bb.uq ]
  %.not4374 = icmp eq i32 %i.dfc, 0
  br i1 %.not4374, label %._crit_edge4133, label %.preheader3899.lr.ph

.preheader3899.lr.ph:                             ; preds = %.critedge158
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.dfq = zext nneg i32 %i.dfc to i64
  %.phi.trans.insert4625 = getelementptr inbounds nuw i8, ptr %.02600.lcssa, i64 40
  %.pre4626.a = load ptr, ptr %.phi.trans.insert4625, align 8, !tbaa !30
  br label %.preheader3899

.preheader3899:                                   ; preds = %.preheader3899.lr.ph, %.thread3796
  %i.dfr = phi ptr [ %.pre4626.a, %.preheader3899.lr.ph ], [ %i.dtb, %.thread3796 ] ; 3 uses
  %indvars.iv4454 = phi i64 [ %i.dfq, %.preheader3899.lr.ph ], [ %i.dfs, %.thread3796 ] ; 9 uses
  %.025974130 = phi ptr [ %.282855.lcssa, %.preheader3899.lr.ph ], [ %i.dtd, %.thread3796 ] ; 6 uses
  %.125994129 = phi ptr [ %.02598.lcssa, %.preheader3899.lr.ph ], [ %.225933801, %.thread3796 ] ; 4 uses
  %.126014128 = phi ptr [ %.02600.lcssa, %.preheader3899.lr.ph ], [ %.225963800, %.thread3796 ] ; 20 uses
  %i.dfs = add nsw i64 %indvars.iv4454, -1        ; 10 uses
  %i.dft = getelementptr inbounds nuw i8, ptr %.126014128, i64 40 ; 8 uses
  %i.dfu = getelementptr inbounds nuw [8 x i8], ptr %i.dfr, i64 %i.dfs
  %i.dfv = load ptr, ptr %i.dfu, align 8, !tbaa !31 ; 7 uses
  %i.dfw = icmp eq ptr %i.dfv, %.025974130
  br i1 %i.dfw, label %.thread3796, label %.lr.ph4118.preheader

.lr.ph4118.preheader:                             ; preds = %.preheader3899
  %i.dfx = load ptr, ptr %i.dfv, align 8, !tbaa !35
  %i.dfy = load i64, ptr %i.dfx, align 8, !tbaa !18
  %i.dfz = load i64, ptr %1, align 8, !tbaa !18   ; 3 uses
  %i.dga = icmp slt i64 %i.dfy, %i.dfz
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dfv, i64 40
  %i.dgc = load ptr, ptr %i.dgb, align 8, !tbaa !30
  %i.dgd = getelementptr inbounds nuw [8 x i8], ptr %i.dgc, i64 %i.dfs
  %i.dge = load ptr, ptr %i.dgd, align 8, !tbaa !31 ; 6 uses
  %i.dgf = icmp eq ptr %i.dge, %.025974130        ; 2 uses
  br i1 %i.dga, label %.thread3790.peel.thread, label %.thread3790.peel

.thread3790.peel:                                 ; preds = %.lr.ph4118.preheader
  br i1 %i.dgf, label %bb.us, label %.thread3796

.thread3790.peel.thread:                          ; preds = %.lr.ph4118.preheader
  br i1 %i.dgf, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %.thread3790.peel.thread
  %i.dgg = load ptr, ptr %i.dge, align 8, !tbaa !35
  %i.dgh = load i64, ptr %i.dgg, align 8, !tbaa !18
  %i.dgi = icmp slt i64 %i.dgh, %i.dfz
  br i1 %i.dgi, label %.thread3790.peel4443, label %.thread3796

.thread3790.peel4443:                             ; preds = %bb.ur
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.dge, i64 40
  %i.dgk = load ptr, ptr %i.dgj, align 8, !tbaa !30
  %i.dgl = getelementptr inbounds nuw [8 x i8], ptr %i.dgk, i64 %i.dfs
  %i.dgm = load ptr, ptr %i.dgl, align 8, !tbaa !31 ; 3 uses
  %i.dgn = icmp eq ptr %i.dgm, %.025974130
  br i1 %i.dgn, label %.thread3796, label %.lr.ph4118.peel.next4439

.lr.ph4118.peel.next4439:                         ; preds = %.thread3790.peel4443
  %i.dgo = load ptr, ptr %i.dgm, align 8, !tbaa !35
  %i.dgp = load i64, ptr %i.dgo, align 8, !tbaa !18
  %i.dgq = icmp slt i64 %i.dgp, %i.dfz            ; 2 uses
  %spec.select5482 = select i1 %i.dgq, ptr %i.dge, ptr %i.dfv
  %spec.select5483 = select i1 %i.dgq, ptr %i.dgm, ptr %i.dge
  br label %.thread3796

bb.us:                                            ; preds = %.thread3790.peel, %.thread3790.peel.thread
  %.02594.lcssa.ph = phi ptr [ null, %.thread3790.peel.thread ], [ %.126014128, %.thread3790.peel ] ; 2 uses
  %.not31575394 = icmp eq ptr %.02594.lcssa.ph, null
  %spec.select34515395 = select i1 %.not31575394, ptr %i.dfv, ptr %.02594.lcssa.ph ; 6 uses
  %i.dgr = icmp eq ptr %.125994129, %.126014128
  br i1 %i.dgr, label %bb.ut, label %bb.vz

bb.ut:                                            ; preds = %bb.us
  %i.dgs = getelementptr inbounds nuw i8, ptr %.025974130, i64 40 ; 4 uses
  %i.dgt = load ptr, ptr %i.dgs, align 8, !tbaa !30 ; 3 uses
  %i.dgu = getelementptr inbounds nuw [8 x i8], ptr %i.dgt, i64 %indvars.iv4454
  %i.dgv = load ptr, ptr %i.dgu, align 8, !tbaa !31
  %i.dgw = getelementptr inbounds nuw i8, ptr %.025974130, i64 16 ; 3 uses
  %i.dgx = load i64, ptr %i.dgw, align 8, !tbaa !37 ; 5 uses
  %i.dgy = getelementptr inbounds nuw [8 x i8], ptr %i.dgt, i64 %i.dgx
  %i.dgz = load ptr, ptr %i.dgy, align 8, !tbaa !31
  %i.dha = getelementptr inbounds nuw [8 x i8], ptr %i.dfr, i64 %i.dgx
  store ptr %i.dgz, ptr %i.dha, align 8, !tbaa !31
end_hunk_6
begin_hunk_7_@H5SL_remove:bb.a
  %i.dpp = load ptr, ptr %i.dpo, align 8, !tbaa !30
  %i.dpq = shl i64 %i.dok, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dpj, ptr align 1 %i.dpp, i64 %i.dpq, i1 false)
  %i.dpr = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dps = load i64, ptr %i.dol, align 8, !tbaa !39
  %i.dpt = getelementptr [8 x i8], ptr %i.dpr, i64 %i.dps
  %i.dpu = getelementptr i8, ptr %i.dpt, i64 -8
  %i.dpv = load ptr, ptr %i.dpu, align 8, !tbaa !20
  %i.dpw = load ptr, ptr %i.dpo, align 8, !tbaa !30
  %i.dpx = tail call ptr @H5FL_fac_free(ptr noundef %i.dpv, ptr noundef %i.dpw) #9 ; 0 uses
  store ptr %i.dpj, ptr %i.dpo, align 8, !tbaa !30
  %.pre4637 = load i64, ptr %i.doi, align 8, !tbaa !37
  %.pre4970 = add i64 %.pre4637, 1
  br label %bb.wo

bb.wo:                                            ; preds = %bb.wn, %bb.wf
  %.pre-phi4971 = phi i64 [ %.pre4970, %bb.wn ], [ %i.dok, %bb.wf ]
  store i64 %.pre-phi4971, ptr %i.doi, align 8, !tbaa !37
  %i.dpy = load i32, ptr %i.dfb, align 8, !tbaa !26 ; 2 uses
  %i.dpz = sext i32 %i.dpy to i64
  %i.dqa = icmp eq i64 %i.doj, %i.dpz
  br i1 %i.dqa, label %bb.wp, label %bb.wz

bb.wp:                                            ; preds = %bb.wo
  %i.dqb = getelementptr inbounds nuw i8, ptr %.125994129, i64 24 ; 4 uses
  %i.dqc = load i64, ptr %i.dqb, align 8, !tbaa !39 ; 2 uses
  %.highbits3169 = lshr i64 %i.dok, %i.dqc
  %.not3168 = icmp eq i64 %.highbits3169, 0
  br i1 %.not3168, label %._crit_edge4909, label %bb.wq

._crit_edge4909:                                  ; preds = %bb.wp
  %.pre4644.pre = load ptr, ptr %i.dmv, align 8, !tbaa !30
  br label %bb.wy

bb.wq:                                            ; preds = %bb.wp
  %i.dqd = add i64 %i.dqc, 1                      ; 3 uses
  store i64 %i.dqd, ptr %i.dqb, align 8, !tbaa !39
  %i.dqe = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3170 = icmp ult i64 %i.dqd, %i.dqe
  br i1 %.not3170, label %._crit_edge4640, label %bb.wr

._crit_edge4640:                                  ; preds = %bb.wq
  %.pre4641 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.wv

bb.wr:                                            ; preds = %bb.wq
  %i.dqf = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3171 = icmp ult i64 %i.dqe, %i.dqf
  br i1 %.not3171, label %bb.wu, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.dqg = shl i64 %i.dqf, 1
  store i64 %i.dqg, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.dqh = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dqi = shl i64 %i.dqf, 4
  %i.dqj = tail call ptr @H5MM_realloc(ptr noundef %i.dqh, i64 noundef %i.dqi) #9 ; 2 uses
  store ptr %i.dqj, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dqk = icmp eq ptr %i.dqj, null
  br i1 %i.dqk, label %bb.wt, label %._crit_edge4638

._crit_edge4638:                                  ; preds = %bb.ws
  %.pre4639 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.wu

bb.wt:                                            ; preds = %bb.ws
  %i.dql = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.dqm = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.dqn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1173, i64 noundef %i.dql, i64 noundef %i.dqm, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.wu:                                            ; preds = %._crit_edge4638, %bb.wr
  %i.dqo = phi i64 [ %.pre4639, %._crit_edge4638 ], [ %i.dqe, %bb.wr ]
  %i.dqp = shl i64 8, %i.dqo
  %i.dqq = tail call ptr @H5FL_fac_init(i64 noundef %i.dqp) #9
  %i.dqr = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.dqs = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.dqt = getelementptr inbounds nuw [8 x i8], ptr %i.dqr, i64 %i.dqs
  store ptr %i.dqq, ptr %i.dqt, align 8, !tbaa !20
  %i.dqu = add i64 %i.dqs, 1
  store i64 %i.dqu, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4642 = load i64, ptr %i.dqb, align 8, !tbaa !39
  br label %bb.wv

bb.wv:                                            ; preds = %._crit_edge4640, %bb.wu
  %i.dqv = phi i64 [ %i.dqd, %._crit_edge4640 ], [ %.pre4642, %bb.wu ]
  %i.dqw = phi ptr [ %.pre4641, %._crit_edge4640 ], [ %i.dqr, %bb.wu ]
  %i.dqx = getelementptr inbounds nuw [8 x i8], ptr %i.dqw, i64 %i.dqv
  %i.dqy = load ptr, ptr %i.dqx, align 8, !tbaa !20
  %i.dqz = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.dqy) #9 ; 4 uses
  %i.dra = icmp eq ptr %i.dqz, null
  br i1 %i.dra, label %bb.ww, label %bb.wx

bb.ww:                                            ; preds = %bb.wv
  %i.drb = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.drc = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.drd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1173, i64 noundef %i.drb, i64 noundef %i.drc, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.wx:                                            ; preds = %bb.wv
  %i.dre = load ptr, ptr %i.dmv, align 8, !tbaa !30
  %i.drf = shl nsw i64 %i.dok, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dqz, ptr align 1 %i.dre, i64 %i.drf, i1 false)
  %i.drg = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.drh = load i64, ptr %i.dqb, align 8, !tbaa !39
  %i.dri = getelementptr [8 x i8], ptr %i.drg, i64 %i.drh
  %i.drj = getelementptr i8, ptr %i.dri, i64 -8
  %i.drk = load ptr, ptr %i.drj, align 8, !tbaa !20
  %i.drl = load ptr, ptr %i.dmv, align 8, !tbaa !30
  %i.drm = tail call ptr @H5FL_fac_free(ptr noundef %i.drk, ptr noundef %i.drl) #9 ; 0 uses
  store ptr %i.dqz, ptr %i.dmv, align 8, !tbaa !30
  %.pre4643 = load i32, ptr %i.dfb, align 8, !tbaa !26
  br label %bb.wy

bb.wy:                                            ; preds = %._crit_edge4909, %bb.wx
  %.pre4644 = phi ptr [ %i.dqz, %bb.wx ], [ %.pre4644.pre, %._crit_edge4909 ]
  %i.drn = phi i32 [ %.pre4643, %bb.wx ], [ %i.dpy, %._crit_edge4909 ]
  %i.dro = getelementptr inbounds nuw i8, ptr %.125994129, i64 16 ; 2 uses
  %i.drp = load i64, ptr %i.dro, align 8, !tbaa !37
  %i.drq = add i64 %i.drp, 1
  store i64 %i.drq, ptr %i.dro, align 8, !tbaa !37
  %i.drr = add nsw i32 %i.drn, 1
  store i32 %i.drr, ptr %i.dfb, align 8, !tbaa !26
  br label %bb.xa

bb.wz:                                            ; preds = %bb.wo
  %i.drs = load ptr, ptr %i.dmv, align 8, !tbaa !30 ; 2 uses
  %i.drt = getelementptr inbounds nuw [8 x i8], ptr %i.drs, i64 %i.dok
  %i.dru = load ptr, ptr %i.drt, align 8, !tbaa !31
  br label %bb.xa

bb.xa:                                            ; preds = %bb.wy, %bb.wz
  %.sink5488 = phi ptr [ null, %bb.wy ], [ %i.dru, %bb.wz ]
  %i.drv = phi ptr [ %.pre4644, %bb.wy ], [ %i.drs, %bb.wz ]
  %i.drw = getelementptr inbounds nuw i8, ptr %.302857.lcssa, i64 40
  %i.drx = load ptr, ptr %i.drw, align 8, !tbaa !30
  %i.dry = getelementptr inbounds nuw [8 x i8], ptr %i.drx, i64 %i.dok
  store ptr %.sink5488, ptr %i.dry, align 8, !tbaa !31
  %i.drz = getelementptr inbounds nuw [8 x i8], ptr %i.drv, i64 %i.dok
  store ptr %.302857.lcssa, ptr %i.drz, align 8, !tbaa !31
  br label %.thread3796

bb.xb:                                            ; preds = %bb.we
  %i.dsa = load ptr, ptr %i.dfn, align 8, !tbaa !30
  %i.dsb = getelementptr inbounds nuw [8 x i8], ptr %i.dsa, i64 %indvars.iv4454
  %i.dsc = load ptr, ptr %i.dsb, align 8, !tbaa !31
  %.not3161 = icmp eq ptr %i.dsc, null
  br i1 %.not3161, label %bb.xc, label %.thread3796

bb.xc:                                            ; preds = %bb.xb
  %i.dsd = load i64, ptr %i.dfo, align 8, !tbaa !39
  %i.dse = add i64 %i.dsd, -1                     ; 3 uses
  %i.dsf = shl nuw i64 1, %i.dse
  %.not3162 = icmp ult i64 %i.dsf, %indvars.iv4454
  br i1 %.not3162, label %bb.xf, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  store i64 %i.dse, ptr %i.dfo, align 8, !tbaa !39
  %i.dsg = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dsh = getelementptr inbounds nuw [8 x i8], ptr %i.dsg, i64 %i.dse
  %i.dsi = load ptr, ptr %i.dsh, align 8, !tbaa !20
  %i.dsj = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.dsi) #9 ; 3 uses
  %.not3163 = icmp eq ptr %i.dsj, null
  br i1 %.not3163, label %.thread3837, label %bb.xe

.thread3837:                                      ; preds = %bb.xd
  %i.dsk = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.dsl = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.dsm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1173, i64 noundef %i.dsk, i64 noundef %i.dsl, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.xe:                                            ; preds = %bb.xd
  %i.dsn = load ptr, ptr %i.dfn, align 8, !tbaa !30
  %i.dso = shl nuw nsw i64 %indvars.iv4454, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dsj, ptr align 1 %i.dsn, i64 %i.dso, i1 false)
  %i.dsp = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dsq = load i64, ptr %i.dfo, align 8, !tbaa !39
  %i.dsr = getelementptr [8 x i8], ptr %i.dsp, i64 %i.dsq
  %i.dss = getelementptr i8, ptr %i.dsr, i64 8
  %i.dst = load ptr, ptr %i.dss, align 8, !tbaa !20
  %i.dsu = load ptr, ptr %i.dfn, align 8, !tbaa !30
  %i.dsv = tail call ptr @H5FL_fac_free(ptr noundef %i.dst, ptr noundef %i.dsu) #9 ; 0 uses
  store ptr %i.dsj, ptr %i.dfn, align 8, !tbaa !30
  br label %bb.xf

bb.xf:                                            ; preds = %bb.xe, %bb.xc
  %i.dsw = load i64, ptr %i.dfp, align 8, !tbaa !37
  %i.dsx = add i64 %i.dsw, -1
  store i64 %i.dsx, ptr %i.dfp, align 8, !tbaa !37
  %i.dsy = load i32, ptr %i.dfb, align 8, !tbaa !26
  %i.dsz = add nsw i32 %i.dsy, -1
  store i32 %i.dsz, ptr %i.dfb, align 8, !tbaa !26
  br label %.thread3796

.thread3796:                                      ; preds = %.lr.ph4118.peel.next4439, %.preheader3899, %.thread3790.peel4443, %.thread3790.peel, %bb.ur, %bb.xa, %bb.vt, %bb.vu, %bb.vy, %bb.xb, %bb.xf
  %.225933801 = phi ptr [ %i.dfv, %.thread3790.peel4443 ], [ %.126014128, %bb.vu ], [ %.126014128, %bb.vy ], [ %.126014128, %bb.vt ], [ %.126014128, %bb.xb ], [ %.126014128, %bb.xf ], [ %.126014128, %bb.xa ], [ %.126014128, %.thread3790.peel ], [ %.126014128, %bb.ur ], [ %spec.select5482, %.lr.ph4118.peel.next4439 ], [ %.126014128, %.preheader3899 ]
  %.225963800 = phi ptr [ %i.dge, %.thread3790.peel4443 ], [ %spec.select34515395, %bb.vu ], [ %spec.select34515395, %bb.vy ], [ %spec.select34515395, %bb.vt ], [ %spec.select34515395, %bb.xb ], [ %spec.select34515395, %bb.xf ], [ %spec.select34515395, %bb.xa ], [ %.126014128, %.thread3790.peel ], [ %i.dfv, %bb.ur ], [ %spec.select5483, %.lr.ph4118.peel.next4439 ], [ %.126014128, %.preheader3899 ] ; 2 uses
  %i.dta = getelementptr inbounds nuw i8, ptr %.225963800, i64 40
  %i.dtb = load ptr, ptr %i.dta, align 8, !tbaa !30 ; 2 uses
  %i.dtc = getelementptr inbounds nuw [8 x i8], ptr %i.dtb, i64 %i.dfs
  %i.dtd = load ptr, ptr %i.dtc, align 8, !tbaa !31 ; 2 uses
  %16 = trunc nuw i64 %indvars.iv4454 to i32
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %.preheader3899, label %._crit_edge4133, !llvm.loop !70

._crit_edge4133:                                  ; preds = %.thread3796, %.critedge158
  %.02597.lcssa = phi ptr [ %.282855.lcssa, %.critedge158 ], [ %i.dtd, %.thread3796 ] ; 8 uses
  %.not3152 = icmp eq ptr %.02597.lcssa, null
  br i1 %.not3152, label %.thread3479, label %bb.xg

bb.xg:                                            ; preds = %._crit_edge4133
  %i.dte = load ptr, ptr %.02597.lcssa, align 8, !tbaa !35
  %i.dtf = load i64, ptr %i.dte, align 8, !tbaa !18
  %i.dtg = load i64, ptr %1, align 8, !tbaa !18
  %i.dth = icmp eq i64 %i.dtf, %i.dtg
  br i1 %i.dth, label %bb.xh, label %.thread3479

bb.xh:                                            ; preds = %bb.xg
  %i.dti = getelementptr inbounds nuw i8, ptr %.02597.lcssa, i64 8
  %i.dtj = load ptr, ptr %i.dti, align 8, !tbaa !36
  %i.dtk = getelementptr inbounds nuw i8, ptr %.02597.lcssa, i64 16
  %i.dtl = load i64, ptr %i.dtk, align 8, !tbaa !37
  %.not3153 = icmp eq i64 %i.dtl, 0
  br i1 %.not3153, label %bb.xj, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  %i.dtm = getelementptr inbounds nuw i8, ptr %.02597.lcssa, i64 48
  %i.dtn = load ptr, ptr %i.dtm, align 8, !tbaa !32 ; 3 uses
  %i.dto = load <2 x ptr>, ptr %i.dtn, align 8, !tbaa !73
  store <2 x ptr> %i.dto, ptr %.02597.lcssa, align 8, !tbaa !73
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.dtn, i64 32
  %i.dtq = load i32, ptr %i.dtp, align 8, !tbaa !38
  %i.dtr = getelementptr inbounds nuw i8, ptr %.02597.lcssa, i64 32
  store i32 %i.dtq, ptr %i.dtr, align 8, !tbaa !38
  br label %bb.xj

bb.xj:                                            ; preds = %bb.xi, %bb.xh
  %.312858 = phi ptr [ %i.dtn, %bb.xi ], [ %.02597.lcssa, %bb.xh ] ; 4 uses
  %i.dts = getelementptr inbounds nuw i8, ptr %.312858, i64 40 ; 2 uses
  %i.dtt = load ptr, ptr %i.dts, align 8, !tbaa !30 ; 2 uses
  %i.dtu = load ptr, ptr %i.dtt, align 8, !tbaa !31 ; 2 uses
  %i.dtv = getelementptr inbounds nuw i8, ptr %.312858, i64 48 ; 2 uses
  %i.dtw = load ptr, ptr %i.dtv, align 8, !tbaa !32
  %i.dtx = getelementptr inbounds nuw i8, ptr %i.dtw, i64 40
  %i.dty = load ptr, ptr %i.dtx, align 8, !tbaa !30
  store ptr %i.dtu, ptr %i.dty, align 8, !tbaa !31
  %i.dtz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dua = load ptr, ptr %i.dtz, align 8, !tbaa !34
  %i.dub = icmp eq ptr %i.dua, %.312858
  %i.duc = load ptr, ptr %i.dtv, align 8, !tbaa !32 ; 2 uses
  br i1 %i.dub, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  store ptr %i.duc, ptr %i.dtz, align 8, !tbaa !34
  br label %bb.xm

bb.xl:                                            ; preds = %bb.xj
  %i.dud = getelementptr inbounds nuw i8, ptr %i.dtu, i64 48
  store ptr %i.duc, ptr %i.dud, align 8, !tbaa !32
  br label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %bb.xk
  %i.due = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.duf = load i64, ptr %i.due, align 8, !tbaa !27
  %i.dug = add i64 %i.duf, -1
  store i64 %i.dug, ptr %i.due, align 8, !tbaa !27
  %i.duh = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.dui = load ptr, ptr %i.duh, align 8, !tbaa !20
  %i.duj = tail call ptr @H5FL_fac_free(ptr noundef %i.dui, ptr noundef nonnull %i.dtt) #9
  store ptr %i.duj, ptr %i.dts, align 8, !tbaa !30
  %i.duk = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.312858) #9 ; 0 uses
  br label %.thread3479

bb.xn:                                            ; preds = %bb.b
  %i.dul = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.dum = load i32, ptr %i.dul, align 8, !tbaa !26 ; 4 uses
  %i.dun = icmp slt i32 %i.dum, 0
  br i1 %i.dun, label %.thread3479, label %.preheader3902

.preheader3902:                                   ; preds = %bb.xn
  %i.duo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not4072 = icmp eq ptr %i.h, null
  br i1 %.not4072, label %.critedge164, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader3902
  %i.dup = zext nneg i32 %i.dum to i64
  br label %bb.xo

bb.xo:                                            ; preds = %.lr.ph, %.critedge166
  %.025834075 = phi ptr [ %i.h, %.lr.ph ], [ %.025854074, %.critedge166 ]
  %.025854074 = phi ptr [ %i.h, %.lr.ph ], [ %.3228594073, %.critedge166 ] ; 3 uses
  %.3228594073 = phi ptr [ %i.h, %.lr.ph ], [ %i.dux, %.critedge166 ] ; 5 uses
  %i.duq = load ptr, ptr %.3228594073, align 8, !tbaa !35 ; 2 uses
  %.not3116 = icmp eq ptr %i.duq, null
  br i1 %.not3116, label %.critedge166, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.dur = load ptr, ptr %i.duo, align 8, !tbaa !25
  %i.dus = tail call i32 %i.dur(ptr noundef nonnull %i.duq, ptr noundef %1) #9
  %i.dut = icmp slt i32 %i.dus, 0
  br i1 %i.dut, label %.critedge166, label %.critedge164

.critedge166:                                     ; preds = %bb.xo, %bb.xp
  %i.duu = getelementptr inbounds nuw i8, ptr %.3228594073, i64 40
  %i.duv = load ptr, ptr %i.duu, align 8, !tbaa !30
  %i.duw = getelementptr inbounds nuw [8 x i8], ptr %i.duv, i64 %i.dup
  %i.dux = load ptr, ptr %i.duw, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %i.dux, null
  br i1 %.not, label %.critedge164, label %bb.xo, !llvm.loop !71

.critedge164:                                     ; preds = %bb.xp, %.critedge166, %.preheader3902
  %.322859.lcssa = phi ptr [ null, %.preheader3902 ], [ null, %.critedge166 ], [ %.3228594073, %bb.xp ] ; 2 uses
  %.02585.lcssa = phi ptr [ null, %.preheader3902 ], [ %.3228594073, %.critedge166 ], [ %.025854074, %bb.xp ] ; 2 uses
  %.02583.lcssa = phi ptr [ null, %.preheader3902 ], [ %.025854074, %.critedge166 ], [ %.025834075, %bb.xp ]
  %.not4373 = icmp eq i32 %i.dum, 0
  br i1 %.not4373, label %._crit_edge4100, label %.preheader3901.lr.ph

.preheader3901.lr.ph:                             ; preds = %.critedge164
  %i.duy = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 8 uses
  %i.duz = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.dva = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.dvb = zext nneg i32 %i.dum to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.02585.lcssa, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %.preheader3901

.preheader3901:                                   ; preds = %.preheader3901.lr.ph, %.thread3844
  %i.dvc = phi ptr [ %.pre, %.preheader3901.lr.ph ], [ %i.eiz, %.thread3844 ]
  %indvars.iv = phi i64 [ %i.dvb, %.preheader3901.lr.ph ], [ %i.dvd, %.thread3844 ] ; 9 uses
  %.025824097 = phi ptr [ %.322859.lcssa, %.preheader3901.lr.ph ], [ %i.ejb, %.thread3844 ] ; 6 uses
  %.125844096 = phi ptr [ %.02583.lcssa, %.preheader3901.lr.ph ], [ %.225783849, %.thread3844 ] ; 4 uses
  %.125864095 = phi ptr [ %.02585.lcssa, %.preheader3901.lr.ph ], [ %.225813848, %.thread3844 ] ; 20 uses
  %i.dvd = add nsw i64 %indvars.iv, -1            ; 13 uses
  %i.dve = getelementptr inbounds nuw i8, ptr %.125864095, i64 40 ; 11 uses
  %i.dvf = getelementptr inbounds nuw [8 x i8], ptr %i.dvc, i64 %i.dvd
  %i.dvg = load ptr, ptr %i.dvf, align 8, !tbaa !31 ; 2 uses
  %i.dvh = icmp eq ptr %i.dvg, %.025824097
  br i1 %i.dvh, label %.thread3844, label %.lr.ph4086.preheader

.lr.ph4086.preheader:                             ; preds = %.preheader3901
  %i.dvi = load ptr, ptr %i.duo, align 8, !tbaa !25
  %i.dvj = load ptr, ptr %i.dvg, align 8, !tbaa !35
  %i.dvk = tail call i32 %i.dvi(ptr noundef %i.dvj, ptr noundef %1) #9
  %i.dvl = icmp slt i32 %i.dvk, 0
  %i.dvm = load ptr, ptr %i.dve, align 8, !tbaa !30
  %i.dvn = getelementptr inbounds nuw [8 x i8], ptr %i.dvm, i64 %i.dvd
  %i.dvo = load ptr, ptr %i.dvn, align 8, !tbaa !31 ; 5 uses
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvo, i64 40 ; 2 uses
  %i.dvq = load ptr, ptr %i.dvp, align 8, !tbaa !30
  %i.dvr = getelementptr inbounds nuw [8 x i8], ptr %i.dvq, i64 %i.dvd
  %i.dvs = load ptr, ptr %i.dvr, align 8, !tbaa !31 ; 2 uses
  %i.dvt = icmp eq ptr %i.dvs, %.025824097        ; 2 uses
  br i1 %i.dvl, label %.thread3838.peel.thread, label %.thread3838.peel

.thread3838.peel:                                 ; preds = %.lr.ph4086.preheader
  br i1 %i.dvt, label %bb.xr, label %.thread3844

.thread3838.peel.thread:                          ; preds = %.lr.ph4086.preheader
  br i1 %i.dvt, label %bb.xr, label %bb.xq

bb.xq:                                            ; preds = %.thread3838.peel.thread
  %i.dvu = load ptr, ptr %i.duo, align 8, !tbaa !25
  %i.dvv = load ptr, ptr %i.dvs, align 8, !tbaa !35
  %i.dvw = tail call i32 %i.dvu(ptr noundef %i.dvv, ptr noundef %1) #9
  %i.dvx = icmp slt i32 %i.dvw, 0
  br i1 %i.dvx, label %.thread3838.peel4426, label %.thread3844

.thread3838.peel4426:                             ; preds = %bb.xq
  %i.dvy = load ptr, ptr %i.dvp, align 8, !tbaa !30
  %i.dvz = getelementptr inbounds nuw [8 x i8], ptr %i.dvy, i64 %i.dvd
  %i.dwa = load ptr, ptr %i.dvz, align 8, !tbaa !31 ; 4 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dwa, i64 40 ; 2 uses
  %i.dwc = load ptr, ptr %i.dwb, align 8, !tbaa !30
  %i.dwd = getelementptr inbounds nuw [8 x i8], ptr %i.dwc, i64 %i.dvd
  %i.dwe = load ptr, ptr %i.dwd, align 8, !tbaa !31 ; 2 uses
  %i.dwf = icmp eq ptr %i.dwe, %.025824097
  br i1 %i.dwf, label %.thread3844, label %.lr.ph4086.peel.next4422

.lr.ph4086.peel.next4422:                         ; preds = %.thread3838.peel4426
  %i.dwg = load ptr, ptr %i.duo, align 8, !tbaa !25
  %i.dwh = load ptr, ptr %i.dwe, align 8, !tbaa !35
  %i.dwi = tail call i32 %i.dwg(ptr noundef %i.dwh, ptr noundef %1) #9
  %i.dwj = icmp slt i32 %i.dwi, 0
  br i1 %i.dwj, label %._crit_edge4595, label %.thread3844

._crit_edge4595:                                  ; preds = %.lr.ph4086.peel.next4422
  %i.dwk = load ptr, ptr %i.dwb, align 8, !tbaa !30
  %i.dwl = getelementptr inbounds nuw [8 x i8], ptr %i.dwk, i64 %i.dvd
  %i.dwm = load ptr, ptr %i.dwl, align 8, !tbaa !31
  br label %.thread3844

bb.xr:                                            ; preds = %.thread3838.peel, %.thread3838.peel.thread
  %.02579.lcssa.ph = phi ptr [ null, %.thread3838.peel.thread ], [ %.125864095, %.thread3838.peel ] ; 2 uses
  %.not31225406 = icmp eq ptr %.02579.lcssa.ph, null
  %spec.select34535407 = select i1 %.not31225406, ptr %i.dvo, ptr %.02579.lcssa.ph ; 6 uses
  %i.dwn = icmp eq ptr %.125844096, %.125864095
  br i1 %i.dwn, label %bb.xs, label %bb.yy

bb.xs:                                            ; preds = %bb.xr
  %i.dwo = getelementptr inbounds nuw i8, ptr %.025824097, i64 40 ; 4 uses
  %i.dwp = load ptr, ptr %i.dwo, align 8, !tbaa !30 ; 3 uses
  %i.dwq = getelementptr inbounds nuw [8 x i8], ptr %i.dwp, i64 %indvars.iv
  %i.dwr = load ptr, ptr %i.dwq, align 8, !tbaa !31
  %i.dws = getelementptr inbounds nuw i8, ptr %.025824097, i64 16 ; 3 uses
end_hunk_7
begin_hunk_8_@H5SL_remove:bb.a
  %i.efn = load ptr, ptr %i.efm, align 8, !tbaa !30
  %i.efo = shl i64 %i.eei, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.efh, ptr align 1 %i.efn, i64 %i.efo, i1 false)
  %i.efp = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.efq = load i64, ptr %i.eej, align 8, !tbaa !39
  %i.efr = getelementptr [8 x i8], ptr %i.efp, i64 %i.efq
  %i.efs = getelementptr i8, ptr %i.efr, i64 -8
  %i.eft = load ptr, ptr %i.efs, align 8, !tbaa !20
  %i.efu = load ptr, ptr %i.efm, align 8, !tbaa !30
  %i.efv = tail call ptr @H5FL_fac_free(ptr noundef %i.eft, ptr noundef %i.efu) #9 ; 0 uses
  store ptr %i.efh, ptr %i.efm, align 8, !tbaa !30
  %.pre4602 = load i64, ptr %i.eeg, align 8, !tbaa !37
  %.pre4974 = add i64 %.pre4602, 1
  br label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.ze
  %.pre-phi4975 = phi i64 [ %.pre4974, %bb.zm ], [ %i.eei, %bb.ze ]
  store i64 %.pre-phi4975, ptr %i.eeg, align 8, !tbaa !37
  %i.efw = load i32, ptr %i.dul, align 8, !tbaa !26 ; 2 uses
  %i.efx = sext i32 %i.efw to i64
  %i.efy = icmp eq i64 %i.eeh, %i.efx
  br i1 %i.efy, label %bb.zo, label %bb.zy

bb.zo:                                            ; preds = %bb.zn
  %i.efz = getelementptr inbounds nuw i8, ptr %.125844096, i64 24 ; 4 uses
  %i.ega = load i64, ptr %i.efz, align 8, !tbaa !39 ; 2 uses
  %.highbits3133 = lshr i64 %i.eei, %i.ega
  %.not3132 = icmp eq i64 %.highbits3133, 0
  br i1 %.not3132, label %._crit_edge4905, label %bb.zp

._crit_edge4905:                                  ; preds = %bb.zo
  %.pre4609.pre = load ptr, ptr %i.ecs, align 8, !tbaa !30
  br label %bb.zx

bb.zp:                                            ; preds = %bb.zo
  %i.egb = add i64 %i.ega, 1                      ; 3 uses
  store i64 %i.egb, ptr %i.efz, align 8, !tbaa !39
  %i.egc = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 3 uses
  %.not3134 = icmp ult i64 %i.egb, %i.egc
  br i1 %.not3134, label %._crit_edge4605, label %bb.zq

._crit_edge4605:                                  ; preds = %bb.zp
  %.pre4606 = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  br label %bb.zu

bb.zq:                                            ; preds = %bb.zp
  %i.egd = load i64, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18 ; 3 uses
  %.not3135 = icmp ult i64 %i.egc, %i.egd
  br i1 %.not3135, label %bb.zt, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  %i.ege = shl i64 %i.egd, 1
  store i64 %i.ege, ptr @H5SL_fac_nalloc_g, align 8, !tbaa !18
  %i.egf = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.egg = shl i64 %i.egd, 4
  %i.egh = tail call ptr @H5MM_realloc(ptr noundef %i.egf, i64 noundef %i.egg) #9 ; 2 uses
  store ptr %i.egh, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.egi = icmp eq ptr %i.egh, null
  br i1 %i.egi, label %bb.zs, label %._crit_edge4603

._crit_edge4603:                                  ; preds = %bb.zr
  %.pre4604 = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  br label %bb.zt

bb.zs:                                            ; preds = %bb.zr
  %i.egj = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.egk = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.egl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1177, i64 noundef %i.egj, i64 noundef %i.egk, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.zt:                                            ; preds = %._crit_edge4603, %bb.zq
  %i.egm = phi i64 [ %.pre4604, %._crit_edge4603 ], [ %i.egc, %bb.zq ]
  %i.egn = shl i64 8, %i.egm
  %i.ego = tail call ptr @H5FL_fac_init(i64 noundef %i.egn) #9
  %i.egp = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16 ; 2 uses
  %i.egq = load i64, ptr @H5SL_fac_nused_g, align 8, !tbaa !18 ; 2 uses
  %i.egr = getelementptr inbounds nuw [8 x i8], ptr %i.egp, i64 %i.egq
  store ptr %i.ego, ptr %i.egr, align 8, !tbaa !20
  %i.egs = add i64 %i.egq, 1
  store i64 %i.egs, ptr @H5SL_fac_nused_g, align 8, !tbaa !18
  %.pre4607 = load i64, ptr %i.efz, align 8, !tbaa !39
  br label %bb.zu

bb.zu:                                            ; preds = %._crit_edge4605, %bb.zt
  %i.egt = phi i64 [ %i.egb, %._crit_edge4605 ], [ %.pre4607, %bb.zt ]
  %i.egu = phi ptr [ %.pre4606, %._crit_edge4605 ], [ %i.egp, %bb.zt ]
  %i.egv = getelementptr inbounds nuw [8 x i8], ptr %i.egu, i64 %i.egt
  %i.egw = load ptr, ptr %i.egv, align 8, !tbaa !20
  %i.egx = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.egw) #9 ; 4 uses
  %i.egy = icmp eq ptr %i.egx, null
  br i1 %i.egy, label %bb.zv, label %bb.zw

bb.zv:                                            ; preds = %bb.zu
  %i.egz = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.eha = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.ehb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1177, i64 noundef %i.egz, i64 noundef %i.eha, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.zw:                                            ; preds = %bb.zu
  %i.ehc = load ptr, ptr %i.ecs, align 8, !tbaa !30
  %i.ehd = shl nsw i64 %i.eei, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.egx, ptr align 1 %i.ehc, i64 %i.ehd, i1 false)
  %i.ehe = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.ehf = load i64, ptr %i.efz, align 8, !tbaa !39
  %i.ehg = getelementptr [8 x i8], ptr %i.ehe, i64 %i.ehf
  %i.ehh = getelementptr i8, ptr %i.ehg, i64 -8
  %i.ehi = load ptr, ptr %i.ehh, align 8, !tbaa !20
  %i.ehj = load ptr, ptr %i.ecs, align 8, !tbaa !30
  %i.ehk = tail call ptr @H5FL_fac_free(ptr noundef %i.ehi, ptr noundef %i.ehj) #9 ; 0 uses
  store ptr %i.egx, ptr %i.ecs, align 8, !tbaa !30
  %.pre4608 = load i32, ptr %i.dul, align 8, !tbaa !26
  br label %bb.zx

bb.zx:                                            ; preds = %._crit_edge4905, %bb.zw
  %.pre4609 = phi ptr [ %i.egx, %bb.zw ], [ %.pre4609.pre, %._crit_edge4905 ]
  %i.ehl = phi i32 [ %.pre4608, %bb.zw ], [ %i.efw, %._crit_edge4905 ]
  %i.ehm = getelementptr inbounds nuw i8, ptr %.125844096, i64 16 ; 2 uses
  %i.ehn = load i64, ptr %i.ehm, align 8, !tbaa !37
  %i.eho = add i64 %i.ehn, 1
  store i64 %i.eho, ptr %i.ehm, align 8, !tbaa !37
  %i.ehp = add nsw i32 %i.ehl, 1
  store i32 %i.ehp, ptr %i.dul, align 8, !tbaa !26
  br label %bb.zz

bb.zy:                                            ; preds = %bb.zn
  %i.ehq = load ptr, ptr %i.ecs, align 8, !tbaa !30 ; 2 uses
  %i.ehr = getelementptr inbounds nuw [8 x i8], ptr %i.ehq, i64 %i.eei
  %i.ehs = load ptr, ptr %i.ehr, align 8, !tbaa !31
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zx, %bb.zy
  %.sink5496 = phi ptr [ null, %bb.zx ], [ %i.ehs, %bb.zy ]
  %i.eht = phi ptr [ %.pre4609, %bb.zx ], [ %i.ehq, %bb.zy ]
  %i.ehu = getelementptr inbounds nuw i8, ptr %.342861.lcssa, i64 40
  %i.ehv = load ptr, ptr %i.ehu, align 8, !tbaa !30
  %i.ehw = getelementptr inbounds nuw [8 x i8], ptr %i.ehv, i64 %i.eei
  store ptr %.sink5496, ptr %i.ehw, align 8, !tbaa !31
  %i.ehx = getelementptr inbounds nuw [8 x i8], ptr %i.eht, i64 %i.eei
  store ptr %.342861.lcssa, ptr %i.ehx, align 8, !tbaa !31
  br label %.thread3844

bb.aaa:                                           ; preds = %bb.zd
  %i.ehy = load ptr, ptr %i.duy, align 8, !tbaa !30
  %i.ehz = getelementptr inbounds nuw [8 x i8], ptr %i.ehy, i64 %indvars.iv
  %i.eia = load ptr, ptr %i.ehz, align 8, !tbaa !31
  %.not3126 = icmp eq ptr %i.eia, null
  br i1 %.not3126, label %bb.aab, label %.thread3844

bb.aab:                                           ; preds = %bb.aaa
  %i.eib = load i64, ptr %i.duz, align 8, !tbaa !39
  %i.eic = add i64 %i.eib, -1                     ; 3 uses
  %i.eid = shl nuw i64 1, %i.eic
  %.not3127 = icmp ult i64 %i.eid, %indvars.iv
  br i1 %.not3127, label %bb.aae, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  store i64 %i.eic, ptr %i.duz, align 8, !tbaa !39
  %i.eie = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.eif = getelementptr inbounds nuw [8 x i8], ptr %i.eie, i64 %i.eic
  %i.eig = load ptr, ptr %i.eif, align 8, !tbaa !20
  %i.eih = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.eig) #9 ; 3 uses
  %.not3128 = icmp eq ptr %i.eih, null
  br i1 %.not3128, label %.thread3885, label %bb.aad

.thread3885:                                      ; preds = %bb.aac
  %i.eii = load i64, ptr @H5E_SLIST_g, align 8, !tbaa !18
  %i.eij = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.eik = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5SL_remove, i32 noundef 1177, i64 noundef %i.eii, i64 noundef %i.eij, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread3479

bb.aad:                                           ; preds = %bb.aac
  %i.eil = load ptr, ptr %i.duy, align 8, !tbaa !30
  %i.eim = shl nuw nsw i64 %indvars.iv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eih, ptr align 1 %i.eil, i64 %i.eim, i1 false)
  %i.ein = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.eio = load i64, ptr %i.duz, align 8, !tbaa !39
  %i.eip = getelementptr [8 x i8], ptr %i.ein, i64 %i.eio
  %i.eiq = getelementptr i8, ptr %i.eip, i64 8
  %i.eir = load ptr, ptr %i.eiq, align 8, !tbaa !20
  %i.eis = load ptr, ptr %i.duy, align 8, !tbaa !30
  %i.eit = tail call ptr @H5FL_fac_free(ptr noundef %i.eir, ptr noundef %i.eis) #9 ; 0 uses
  store ptr %i.eih, ptr %i.duy, align 8, !tbaa !30
  br label %bb.aae

bb.aae:                                           ; preds = %bb.aad, %bb.aab
  %i.eiu = load i64, ptr %i.dva, align 8, !tbaa !37
  %i.eiv = add i64 %i.eiu, -1
  store i64 %i.eiv, ptr %i.dva, align 8, !tbaa !37
  %i.eiw = load i32, ptr %i.dul, align 8, !tbaa !26
  %i.eix = add nsw i32 %i.eiw, -1
  store i32 %i.eix, ptr %i.dul, align 8, !tbaa !26
  br label %.thread3844

.thread3844:                                      ; preds = %.preheader3901, %.thread3838.peel4426, %.thread3838.peel, %bb.xq, %.lr.ph4086.peel.next4422, %._crit_edge4595, %bb.zz, %bb.ys, %bb.yt, %bb.yx, %bb.aaa, %bb.aae
  %.225783849 = phi ptr [ %i.dvo, %.lr.ph4086.peel.next4422 ], [ %.125864095, %bb.yt ], [ %.125864095, %bb.yx ], [ %.125864095, %bb.ys ], [ %.125864095, %bb.aaa ], [ %.125864095, %bb.aae ], [ %.125864095, %bb.zz ], [ %i.dwa, %._crit_edge4595 ], [ %.125864095, %.thread3838.peel ], [ %.125864095, %bb.xq ], [ %.125864095, %.preheader3901 ], [ %i.dvo, %.thread3838.peel4426 ]
  %.225813848 = phi ptr [ %i.dwa, %.lr.ph4086.peel.next4422 ], [ %spec.select34535407, %bb.yt ], [ %spec.select34535407, %bb.yx ], [ %spec.select34535407, %bb.ys ], [ %spec.select34535407, %bb.aaa ], [ %spec.select34535407, %bb.aae ], [ %spec.select34535407, %bb.zz ], [ %i.dwm, %._crit_edge4595 ], [ %.125864095, %.thread3838.peel ], [ %i.dvo, %bb.xq ], [ %.125864095, %.preheader3901 ], [ %i.dwa, %.thread3838.peel4426 ] ; 2 uses
  %i.eiy = getelementptr inbounds nuw i8, ptr %.225813848, i64 40
  %i.eiz = load ptr, ptr %i.eiy, align 8, !tbaa !30 ; 2 uses
  %i.eja = getelementptr inbounds nuw [8 x i8], ptr %i.eiz, i64 %i.dvd
  %i.ejb = load ptr, ptr %i.eja, align 8, !tbaa !31 ; 2 uses
  %18 = trunc nuw i64 %indvars.iv to i32
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %.preheader3901, label %._crit_edge4100, !llvm.loop !72

._crit_edge4100:                                  ; preds = %.thread3844, %.critedge164
  %.02582.lcssa = phi ptr [ %.322859.lcssa, %.critedge164 ], [ %i.ejb, %.thread3844 ] ; 8 uses
  %.not3117 = icmp eq ptr %.02582.lcssa, null
  br i1 %.not3117, label %.thread3479, label %bb.aaf

bb.aaf:                                           ; preds = %._crit_edge4100
  %i.ejc = load ptr, ptr %i.duo, align 8, !tbaa !25
  %i.ejd = load ptr, ptr %.02582.lcssa, align 8, !tbaa !35
  %i.eje = tail call i32 %i.ejc(ptr noundef %i.ejd, ptr noundef %1) #9
  %i.ejf = icmp eq i32 %i.eje, 0
  br i1 %i.ejf, label %bb.aag, label %.thread3479

bb.aag:                                           ; preds = %bb.aaf
  %i.ejg = getelementptr inbounds nuw i8, ptr %.02582.lcssa, i64 8
  %i.ejh = load ptr, ptr %i.ejg, align 8, !tbaa !36
  %i.eji = getelementptr inbounds nuw i8, ptr %.02582.lcssa, i64 16
  %i.ejj = load i64, ptr %i.eji, align 8, !tbaa !37
  %.not3118 = icmp eq i64 %i.ejj, 0
  br i1 %.not3118, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.ejk = getelementptr inbounds nuw i8, ptr %.02582.lcssa, i64 48
  %i.ejl = load ptr, ptr %i.ejk, align 8, !tbaa !32 ; 3 uses
  %i.ejm = load <2 x ptr>, ptr %i.ejl, align 8, !tbaa !73
  store <2 x ptr> %i.ejm, ptr %.02582.lcssa, align 8, !tbaa !73
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.ejl, i64 32
  %i.ejo = load i32, ptr %i.ejn, align 8, !tbaa !38
  %i.ejp = getelementptr inbounds nuw i8, ptr %.02582.lcssa, i64 32
  store i32 %i.ejo, ptr %i.ejp, align 8, !tbaa !38
  br label %bb.aai

bb.aai:                                           ; preds = %bb.aah, %bb.aag
  %.352862 = phi ptr [ %i.ejl, %bb.aah ], [ %.02582.lcssa, %bb.aag ] ; 4 uses
  %i.ejq = getelementptr inbounds nuw i8, ptr %.352862, i64 40 ; 2 uses
  %i.ejr = load ptr, ptr %i.ejq, align 8, !tbaa !30 ; 2 uses
  %i.ejs = load ptr, ptr %i.ejr, align 8, !tbaa !31 ; 2 uses
  %i.ejt = getelementptr inbounds nuw i8, ptr %.352862, i64 48 ; 2 uses
  %i.eju = load ptr, ptr %i.ejt, align 8, !tbaa !32
  %i.ejv = getelementptr inbounds nuw i8, ptr %i.eju, i64 40
  %i.ejw = load ptr, ptr %i.ejv, align 8, !tbaa !30
  store ptr %i.ejs, ptr %i.ejw, align 8, !tbaa !31
  %i.ejx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ejy = load ptr, ptr %i.ejx, align 8, !tbaa !34
  %i.ejz = icmp eq ptr %i.ejy, %.352862
  %i.eka = load ptr, ptr %i.ejt, align 8, !tbaa !32 ; 2 uses
  br i1 %i.ejz, label %bb.aaj, label %bb.aak

bb.aaj:                                           ; preds = %bb.aai
  store ptr %i.eka, ptr %i.ejx, align 8, !tbaa !34
  br label %bb.aal

bb.aak:                                           ; preds = %bb.aai
  %i.ekb = getelementptr inbounds nuw i8, ptr %i.ejs, i64 48
  store ptr %i.eka, ptr %i.ekb, align 8, !tbaa !32
  br label %bb.aal

bb.aal:                                           ; preds = %bb.aak, %bb.aaj
  %i.ekc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ekd = load i64, ptr %i.ekc, align 8, !tbaa !27
  %i.eke = add i64 %i.ekd, -1
  store i64 %i.eke, ptr %i.ekc, align 8, !tbaa !27
  %i.ekf = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.ekg = load ptr, ptr %i.ekf, align 8, !tbaa !20
  %i.ekh = tail call ptr @H5FL_fac_free(ptr noundef %i.ekg, ptr noundef nonnull %i.ejr) #9
  store ptr %i.ekh, ptr %i.ejq, align 8, !tbaa !30
  %i.eki = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %.352862) #9 ; 0 uses
  br label %.thread3479

.thread3479:                                      ; preds = %bb.zv, %bb.zs, %bb.zl, %bb.zi, %bb.yo, %bb.yl, %bb.ye, %bb.yb, %bb.ww, %bb.wt, %bb.wm, %bb.wj, %bb.vp, %bb.vm, %bb.vf, %bb.vc, %bb.tw, %bb.tt, %bb.tm, %bb.tj, %bb.sp, %bb.sm, %bb.sf, %bb.sc, %bb.qp, %bb.qm, %bb.qf, %bb.qc, %bb.pi, %bb.pf, %bb.oy, %bb.ov, %bb.nq, %bb.nn, %bb.ng, %bb.nd, %bb.mj, %bb.mg, %bb.lz, %bb.lw, %bb.kr, %bb.ko, %bb.kh, %bb.ke, %bb.jk, %bb.jh, %bb.ja, %bb.ix, %bb.hr, %bb.ho, %bb.hh, %bb.he, %bb.gk, %bb.gh, %bb.ga, %bb.fx, %bb.ej, %bb.eg, %bb.dz, %bb.dw, %bb.dc, %bb.cz, %bb.cs, %bb.cp, %bb.bk, %bb.bh, %bb.ba, %bb.ax, %bb.ad, %bb.aa, %bb.t, %bb.q, %.thread3885, %bb.zc, %.thread3867, %bb.xv, %.thread3837, %bb.wd, %.thread3819, %bb.uw, %.thread3789, %bb.td, %.thread3771, %bb.rw, %.thread3740, %bb.pw, %.thread3722, %bb.op, %.thread3692, %bb.mx, %.thread3674, %bb.lq, %.thread3644, %bb.jy, %.thread3626, %bb.ir, %.thread3596, %bb.gy, %.thread3578, %bb.fr, %.thread3548, %bb.dq, %.thread3530, %bb.cj, %.thread3500, %bb.ar, %.thread3482, %bb.k, %bb.a, %bb.b, %._crit_edge4371, %bb.bu, %bb.c, %bb.ca, %._crit_edge4338, %bb.et, %bb.cb, %bb.ez, %._crit_edge4305, %bb.ib, %bb.ic, %bb.fa, %bb.ii, %._crit_edge4268, %bb.lb, %bb.ij, %bb.lh, %._crit_edge4235, %bb.oa, %bb.li, %bb.og, %._crit_edge4202, %bb.qz, %bb.oh, %bb.rf, %._crit_edge4169, %bb.ug, %bb.uh, %bb.rg, %bb.un, %._crit_edge4133, %bb.xg, %bb.uo, %bb.xm, %._crit_edge4100, %bb.aaf, %bb.xn, %bb.aal
  %.234 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %._crit_edge4133 ], [ null, %._crit_edge4371 ], [ null, %bb.bu ], [ null, %._crit_edge4338 ], [ null, %bb.et ], [ null, %._crit_edge4305 ], [ null, %bb.ib ], [ null, %._crit_edge4268 ], [ null, %bb.lb ], [ null, %._crit_edge4235 ], [ null, %bb.oa ], [ null, %._crit_edge4202 ], [ null, %bb.qz ], [ null, %._crit_edge4169 ], [ null, %bb.ug ], [ null, %bb.xg ], [ %i.nr, %bb.ca ], [ null, %._crit_edge4100 ], [ null, %.thread3482 ], [ null, %bb.k ], [ null, %bb.ad ], [ null, %.thread3500 ], [ null, %bb.ar ], [ null, %bb.c ], [ %i.adb, %bb.ez ], [ null, %bb.bk ], [ null, %.thread3530 ], [ null, %bb.cj ], [ null, %bb.dc ], [ null, %.thread3548 ], [ null, %bb.dq ], [ null, %bb.cb ], [ %i.atg, %bb.ii ], [ null, %bb.ej ], [ null, %.thread3578 ], [ null, %bb.fr ], [ null, %bb.gk ], [ null, %.thread3596 ], [ null, %bb.gy ], [ null, %bb.fa ], [ null, %bb.ic ], [ %i.bip, %bb.lh ], [ null, %bb.hr ], [ null, %.thread3626 ], [ null, %bb.ir ], [ null, %bb.jk ], [ null, %.thread3644 ], [ null, %bb.jy ], [ null, %bb.ij ], [ %i.bxz, %bb.og ], [ null, %bb.kr ], [ null, %.thread3674 ], [ null, %bb.lq ], [ null, %bb.mj ], [ null, %.thread3692 ], [ null, %bb.mx ], [ null, %bb.li ], [ %i.cnj, %bb.rf ], [ null, %bb.nq ], [ null, %.thread3722 ], [ null, %bb.op ], [ null, %bb.pi ], [ null, %.thread3740 ], [ null, %bb.pw ], [ null, %bb.oh ], [ %i.ddz, %bb.un ], [ null, %bb.qp ], [ null, %.thread3771 ], [ null, %bb.rw ], [ null, %bb.sp ], [ null, %.thread3789 ], [ null, %bb.td ], [ null, %bb.rg ], [ null, %bb.uh ], [ %i.dtj, %bb.xm ], [ null, %bb.tw ], [ null, %.thread3819 ], [ null, %bb.uw ], [ null, %bb.vp ], [ null, %.thread3837 ], [ null, %bb.wd ], [ null, %bb.uo ], [ %i.ejh, %bb.aal ], [ null, %bb.ww ], [ null, %.thread3867 ], [ null, %bb.xv ], [ null, %bb.yo ], [ null, %.thread3885 ], [ null, %bb.zc ], [ null, %bb.xn ], [ null, %bb.aaf ], [ null, %bb.q ], [ null, %bb.t ], [ null, %bb.aa ], [ null, %bb.ax ], [ null, %bb.ba ], [ null, %bb.bh ], [ null, %bb.cp ], [ null, %bb.cs ], [ null, %bb.cz ], [ null, %bb.dw ], [ null, %bb.dz ], [ null, %bb.eg ], [ null, %bb.fx ], [ null, %bb.ga ], [ null, %bb.gh ], [ null, %bb.he ], [ null, %bb.hh ], [ null, %bb.ho ], [ null, %bb.ix ], [ null, %bb.ja ], [ null, %bb.jh ], [ null, %bb.ke ], [ null, %bb.kh ], [ null, %bb.ko ], [ null, %bb.lw ], [ null, %bb.lz ], [ null, %bb.mg ], [ null, %bb.nd ], [ null, %bb.ng ], [ null, %bb.nn ], [ null, %bb.ov ], [ null, %bb.oy ], [ null, %bb.pf ], [ null, %bb.qc ], [ null, %bb.qf ], [ null, %bb.qm ], [ null, %bb.sc ], [ null, %bb.sf ], [ null, %bb.sm ], [ null, %bb.tj ], [ null, %bb.tm ], [ null, %bb.tt ], [ null, %bb.vc ], [ null, %bb.vf ], [ null, %bb.vm ], [ null, %bb.wj ], [ null, %bb.wm ], [ null, %bb.wt ], [ null, %bb.yb ], [ null, %bb.ye ], [ null, %bb.yl ], [ null, %bb.zi ], [ null, %bb.zl ], [ null, %bb.zs ], [ null, %bb.zv ]
  ret ptr %.234
}

declare noalias ptr @H5FL_fac_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @H5FL_fac_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5MM_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5_hash_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @H5SL_remove_first(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 4 uses
  %i.f = load i8, ptr @H5SL_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  %i.k = select i1 %i.g, i1 true, i1 %i.j
  br i1 %i.k, label %bb.b, label %.thread167, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %.not = icmp eq ptr %i.p, %i.b
  br i1 %.not, label %.thread167, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !31
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.o, align 8, !tbaa !34
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.b, ptr %i.x, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !27
  %i.ab = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = tail call ptr @H5FL_fac_free(ptr noundef %i.ac, ptr noundef nonnull %i.t) #9
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !30
  %i.ae = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5SL_node_t_reg_free_list, ptr noundef nonnull %i.e) #9 ; 0 uses
  %.not183 = icmp eq i32 %i.m, 0
  br i1 %.not183, label %.thread167, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 7 uses
  %i.ag = shl nuw nsw i64 %i.n, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.an
  %i.ai = phi ptr [ %.pre, %.lr.ph ], [ %i.gp, %bb.an ] ; 3 uses
  %.0125181 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.an ] ; 4 uses
  %i.aj = add nuw i64 %.0125181, 1                ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0125181
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = icmp eq ptr %i.an, %i.al
  br i1 %i.ao, label %bb.h, label %.thread167

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.aj
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !37 ; 5 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.au
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.ba = add i64 %i.az, -1                       ; 3 uses
  %i.bb = shl nuw i64 1, %i.ba
  %.not147 = icmp ugt i64 %i.au, %i.bb
  br i1 %.not147, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !39
  %i.bc = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.bf = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.be) #9 ; 4 uses
  %.not148 = icmp eq ptr %i.bf, null
  br i1 %.not148, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.bh = shl i64 %i.au, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bi = load ptr, ptr @H5SL_fac_g, align 8, !tbaa !16
  %i.bj = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20
end_hunk_8
