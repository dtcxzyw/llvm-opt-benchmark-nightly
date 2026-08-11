inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cmd_show_branch:bb.a
.lr.ph298:                                        ; preds = %.preheader280, %.lr.ph298
  %.2297 = phi i32 [ %i.kq, %.lr.ph298 ], [ %i.gz, %.preheader280 ] ; 2 uses
  %.2156296 = phi ptr [ %i.kr, %.lr.ph298 ], [ %.0154, %.preheader280 ] ; 2 uses
  %i.kp = load ptr, ptr %.2156296, align 8, !tbaa !16
  call fastcc void @append_one_rev(ptr noundef %i.kp)
  %i.kq = add nsw i32 %.2297, -1
  %i.kr = getelementptr inbounds nuw i8, ptr %.2156296, i64 8
  %i.ks = icmp samesign ugt i32 %.2297, 1
  br i1 %i.ks, label %.lr.ph298, label %._crit_edge.loopexit, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %.lr.ph298
  %.pre373 = load i32, ptr %i.f, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader280
  %i.kt = phi i32 [ %.pre373, %._crit_edge.loopexit ], [ %i.hu, %.preheader280 ] ; 2 uses
  %i.ku = load i32, ptr %i.g, align 4, !tbaa !15  ; 2 uses
  %i.kv = sub i32 0, %i.ku
  %.not183 = icmp eq i32 %i.kt, %i.kv
  br i1 %.not183, label %snarf_refs.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %.not.i209 = icmp eq i32 %i.kt, 0
  br i1 %.not.i209, label %sort_ref_range.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kw = load i32, ptr @ref_name_cnt, align 4, !tbaa !15 ; 2 uses
  %i.kx = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.ky = call ptr @get_main_ref_store(ptr noundef %i.kx) #16
  %i.kz = call i32 @refs_for_each_ref(ptr noundef %i.ky, ptr noundef nonnull @append_head_ref, ptr noundef null) #16 ; 0 uses
  %i.la = load i32, ptr @ref_name_cnt, align 4, !tbaa !15
  %i.lb = sub nsw i32 %i.la, %i.kw                ; 2 uses
  %i.lc = icmp ugt i32 %i.lb, 1
  br i1 %i.lc, label %bb.am, label %sort_ref_range.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ld = sext i32 %i.lb to i64
  %i.le = sext i32 %i.kw to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr @ref_name, i64 %i.le
  call void @qsort(ptr noundef nonnull %i.lf, i64 noundef range(i64 -2147483648, 2147483648) %i.ld, i64 noundef 8, ptr noundef nonnull @compare_ref_name) #16
  br label %sort_ref_range.exit.i

sort_ref_range.exit.i:                            ; preds = %bb.am, %bb.al, %bb.ak
  %.not4.i = icmp eq i32 %i.ku, 0
  br i1 %.not4.i, label %snarf_refs.exit, label %bb.an

bb.an:                                            ; preds = %sort_ref_range.exit.i
  %i.lg = load i32, ptr @ref_name_cnt, align 4, !tbaa !15 ; 2 uses
  %i.lh = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.li = call ptr @get_main_ref_store(ptr noundef %i.lh) #16
  %i.lj = call i32 @refs_for_each_ref(ptr noundef %i.li, ptr noundef nonnull @append_remote_ref, ptr noundef null) #16 ; 0 uses
  %i.lk = load i32, ptr @ref_name_cnt, align 4, !tbaa !15
  %i.ll = sub nsw i32 %i.lk, %i.lg                ; 2 uses
  %i.lm = icmp ugt i32 %i.ll, 1
  br i1 %i.lm, label %bb.ao, label %snarf_refs.exit

bb.ao:                                            ; preds = %bb.an
  %i.ln = sext i32 %i.ll to i64
  %i.lo = sext i32 %i.lg to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr @ref_name, i64 %i.lo
  call void @qsort(ptr noundef nonnull %i.lp, i64 noundef range(i64 -2147483648, 2147483648) %i.ln, i64 noundef 8, ptr noundef nonnull @compare_ref_name) #16
  br label %snarf_refs.exit

snarf_refs.exit:                                  ; preds = %bb.ao, %bb.an, %sort_ref_range.exit.i, %._crit_edge, %.loopexit
  %i.lq = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.lr = call ptr @get_main_ref_store(ptr noundef %i.lq) #16
  %i.ls = call ptr @refs_resolve_refdup(ptr noundef %i.lr, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef nonnull %6, ptr noundef null) #16 ; 26 uses
  %i.lt = load i32, ptr %i.m, align 4, !tbaa !15
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = icmp ne ptr %i.ls, null
  %or.cond13 = select i1 %i.lu, i1 %i.lv, i1 false
  br i1 %or.cond13, label %.preheader279, label %bb.ap

.preheader279:                                    ; preds = %snarf_refs.exit
  %i.lw = load i32, ptr @ref_name_cnt, align 4    ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph301.preheader, label %.preheader278.preheader

.lr.ph301.preheader:                              ; preds = %.preheader279
  %i.ly = zext nneg i32 %i.lw to i64
  br label %.lr.ph301

.lr.ph301:                                        ; preds = %.lr.ph301.preheader, %.lr.ph301
  %indvars.iv353 = phi i64 [ 0, %.lr.ph301.preheader ], [ %indvars.iv.next354, %.lr.ph301 ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr @ref_name, i64 %indvars.iv353
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !16
  %i.mb = call fastcc i32 @rev_is_head(ptr noundef nonnull %i.ls, ptr noundef %i.ma)
  %.not206 = icmp eq i32 %i.mb, 0                 ; 2 uses
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %i.mc = icmp samesign ult i64 %indvars.iv.next354, %i.ly
  %i.md = select i1 %.not206, i1 %i.mc, i1 false
  br i1 %i.md, label %.lr.ph301, label %._crit_edge302, !llvm.loop !47

._crit_edge302:                                   ; preds = %.lr.ph301
  br i1 %.not206, label %.preheader278.preheader, label %.preheader277

.preheader278.preheader:                          ; preds = %.preheader279, %._crit_edge302
  %i.me = load i8, ptr %i.ls, align 1, !tbaa !42
  %i.mf = icmp eq i8 %i.me, 114
  br i1 %i.mf, label %.preheader278.1, label %skip_prefix_impl.exit

.preheader278.1:                                  ; preds = %.preheader278.preheader
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !42
  %i.mi = icmp eq i8 %i.mh, 101
  br i1 %i.mi, label %.preheader278.2, label %skip_prefix_impl.exit

.preheader278.2:                                  ; preds = %.preheader278.1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !42
  %i.ml = icmp eq i8 %i.mk, 102
  br i1 %i.ml, label %.preheader278.3, label %skip_prefix_impl.exit

.preheader278.3:                                  ; preds = %.preheader278.2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ls, i64 3
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !42
  %i.mo = icmp eq i8 %i.mn, 115
  br i1 %i.mo, label %.preheader278.4, label %skip_prefix_impl.exit

.preheader278.4:                                  ; preds = %.preheader278.3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !42
  %i.mr = icmp eq i8 %i.mq, 47
  br i1 %i.mr, label %.preheader278.5, label %skip_prefix_impl.exit

.preheader278.5:                                  ; preds = %.preheader278.4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ls, i64 5
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !42
  %i.mu = icmp eq i8 %i.mt, 104
  br i1 %i.mu, label %.preheader278.6, label %skip_prefix_impl.exit

.preheader278.6:                                  ; preds = %.preheader278.5
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ls, i64 6
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !42
  %i.mx = icmp eq i8 %i.mw, 101
  br i1 %i.mx, label %.preheader278.7, label %skip_prefix_impl.exit

.preheader278.7:                                  ; preds = %.preheader278.6
  %i.my = getelementptr inbounds nuw i8, ptr %i.ls, i64 7
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !42
  %i.na = icmp eq i8 %i.mz, 97
  br i1 %i.na, label %.preheader278.8, label %skip_prefix_impl.exit

.preheader278.8:                                  ; preds = %.preheader278.7
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !42
  %i.nd = icmp eq i8 %i.nc, 100
  br i1 %i.nd, label %.preheader278.9, label %skip_prefix_impl.exit

.preheader278.9:                                  ; preds = %.preheader278.8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ls, i64 9
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !42
  %i.ng = icmp eq i8 %i.nf, 115
  br i1 %i.ng, label %.preheader278.10, label %skip_prefix_impl.exit

.preheader278.10:                                 ; preds = %.preheader278.9
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ls, i64 10
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !42
  %i.nj = icmp eq i8 %i.ni, 47
  %spec.select.idx = select i1 %i.nj, i64 11, i64 0
  %spec.select = getelementptr i8, ptr %i.ls, i64 %spec.select.idx
  br label %skip_prefix_impl.exit

skip_prefix_impl.exit:                            ; preds = %.preheader278.10, %.preheader278.9, %.preheader278.8, %.preheader278.7, %.preheader278.6, %.preheader278.5, %.preheader278.4, %.preheader278.3, %.preheader278.2, %.preheader278.1, %.preheader278.preheader
  %.0244 = phi ptr [ %i.ls, %.preheader278.preheader ], [ %i.ls, %.preheader278.8 ], [ %i.ls, %.preheader278.5 ], [ %i.ls, %.preheader278.1 ], [ %spec.select, %.preheader278.10 ], [ %i.ls, %.preheader278.2 ], [ %i.ls, %.preheader278.6 ], [ %i.ls, %.preheader278.3 ], [ %i.ls, %.preheader278.9 ], [ %i.ls, %.preheader278.4 ], [ %i.ls, %.preheader278.7 ]
  call fastcc void @append_one_rev(ptr noundef %.0244)
  br label %bb.ap

bb.ap:                                            ; preds = %skip_prefix_impl.exit, %snarf_refs.exit
  %.pr = load i32, ptr @ref_name_cnt, align 4, !tbaa !15
  %.not192 = icmp eq i32 %.pr, 0
  br i1 %.not192, label %bb.aq, label %.preheader277

.preheader277:                                    ; preds = %._crit_edge302, %bb.ap
  %i.nk = load ptr, ptr @ref_name, align 16, !tbaa !16 ; 2 uses
  %.not193306 = icmp eq ptr %i.nk, null           ; 4 uses
  br i1 %.not193306, label %._crit_edge313, label %.lr.ph308.preheader

.lr.ph308.preheader:                              ; preds = %.preheader277
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  br label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.nl = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.nm = call i64 @fwrite(ptr nonnull @.str.48, i64 21, i64 1, ptr %i.nl) #19 ; 0 uses
  br label %show_merge_base.exit

.preheader276:                                    ; preds = %bb.az
  %i.nn = trunc nuw nsw i64 %indvars.iv.next357 to i32 ; 2 uses
  %i.no = add nuw i64 %indvars.iv356459, 1        ; 2 uses
  %i.np = icmp eq i64 %indvars.iv356459, 0
  br i1 %i.np, label %.lr.ph312.epil.preheader, label %.preheader276.new

.preheader276.new:                                ; preds = %.preheader276
  %unroll_iter = and i64 %i.no, -2
  br label %.lr.ph312

.lr.ph308:                                        ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.nq = trunc nuw nsw i64 %indvars.iv.next357 to i32
  %i.nr = shl nuw nsw i32 4, %i.nq
  %exitcond = icmp eq i64 %indvars.iv.next357, 27
  br i1 %exitcond, label %bb.ar, label %bb.as, !llvm.loop !50

bb.ar:                                            ; preds = %.lr.ph308
  %i.ns = call fastcc ptr @Q_(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50)
  call void (ptr, ...) @die(ptr noundef %i.ns, i32 noundef 27) #17
  unreachable

bb.as:                                            ; preds = %.lr.ph308.preheader, %.lr.ph308
  %i.nt = phi i32 [ 4, %.lr.ph308.preheader ], [ %i.nr, %.lr.ph308 ] ; 2 uses
  %i.nu = phi ptr [ %i.nk, %.lr.ph308.preheader ], [ %i.ow, %.lr.ph308 ]
  %indvars.iv356459 = phi i64 [ 0, %.lr.ph308.preheader ], [ %indvars.iv.next357, %.lr.ph308 ] ; 7 uses
  %i.nv = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.nw = call i32 @repo_get_oid(ptr noundef %i.nv, ptr noundef nonnull %i.nu, ptr noundef nonnull %9) #16
  %.not204 = icmp eq i32 %i.nw, 0
  br i1 %.not204, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr @ref_name, i64 %indvars.iv356459
  %i.ny = call fastcc ptr @_(ptr noundef nonnull @.str.51)
  %i.nz = load ptr, ptr %i.nx, align 8, !tbaa !16
  call void (ptr, ...) @die(ptr noundef %i.ny, ptr noundef %i.nz) #17
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.oa = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.ob = call ptr @lookup_commit_reference(ptr noundef %i.oa, ptr noundef nonnull %9) #16 ; 8 uses
  %.not205 = icmp eq ptr %i.ob, null
  br i1 %.not205, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr @ref_name, i64 %indvars.iv356459
  %i.od = call fastcc ptr @_(ptr noundef nonnull @.str.52)
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !16
  %i.of = call ptr @oid_to_hex(ptr noundef nonnull %9) #16
  call void (ptr, ...) @die(ptr noundef %i.od, ptr noundef %i.oe, ptr noundef %i.of) #17
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.og = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.oh = call i32 @repo_parse_commit_gently(ptr noundef %i.og, ptr noundef nonnull %i.ob, i32 noundef 0) #16 ; 0 uses
  %i.oi = load i64, ptr %i.ob, align 8            ; 2 uses
  %i.oj = and i64 %i.oi, 2305843004918726656
  %.not.i211 = icmp eq i64 %i.oj, 0
  br i1 %.not.i211, label %bb.ax, label %mark_seen.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ok = call ptr @commit_list_insert(ptr noundef nonnull %i.ob, ptr noundef nonnull %i.c) #16 ; 0 uses
  %.pre374 = load i64, ptr %i.ob, align 8
  br label %mark_seen.exit

mark_seen.exit:                                   ; preds = %bb.aw, %bb.ax
  %i.ol = phi i64 [ %i.oi, %bb.aw ], [ %.pre374, %bb.ax ]
  %i.om = zext nneg i32 %i.nt to i64
  %i.on = shl nuw nsw i64 %i.om, 32
  %i.oo = and i64 %i.on, 2305842992033824768
  %i.op = or i64 %i.ol, %i.oo                     ; 2 uses
  store i64 %i.op, ptr %i.ob, align 8
  %i.oq = lshr i64 %i.op, 32
  %i.or = trunc nuw i64 %i.oq to i32
  %i.os = and i32 %i.or, 536870911
  %i.ot = icmp eq i32 %i.os, %i.nt
  br i1 %i.ot, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %mark_seen.exit
  call void @prio_queue_put(ptr noundef nonnull %5, ptr noundef nonnull %i.ob) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %mark_seen.exit
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv356459
  store ptr %i.ob, ptr %i.ou, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356459, 1 ; 7 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr @ref_name, i64 %indvars.iv.next357
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !16 ; 2 uses
  %.not193 = icmp eq ptr %i.ow, null
  br i1 %.not193, label %.preheader276, label %.lr.ph308, !llvm.loop !50

.lr.ph312:                                        ; preds = %.lr.ph312, %.preheader276.new
  %indvars.iv359 = phi i64 [ 0, %.preheader276.new ], [ %indvars.iv.next360.1, %.lr.ph312 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader276.new ], [ %niter.next.1, %.lr.ph312 ]
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv359
  %i.oy = load ptr, ptr %i.ox, align 16, !tbaa !51
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = lshr i64 %i.oz, 32
  %i.pb = trunc nuw i64 %i.pa to i32
  %i.pc = and i32 %i.pb, 536870911
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv359
  store i32 %i.pc, ptr %i.pd, align 8, !tbaa !15
  %indvars.iv.next360 = or disjoint i64 %indvars.iv359, 1 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next360
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !51
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = lshr i64 %i.pg, 32
  %i.pi = trunc nuw i64 %i.ph to i32
  %i.pj = and i32 %i.pi, 536870911
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next360
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !15
  %indvars.iv.next360.1 = add nuw nsw i64 %indvars.iv359, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge313.loopexit.unr-lcssa, label %.lr.ph312, !llvm.loop !53

._crit_edge313.loopexit.unr-lcssa:                ; preds = %.lr.ph312
  %i.pl = and i64 %indvars.iv356459, 1
  %lcmp.mod.not.not = icmp eq i64 %i.pl, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph312.epil.preheader, label %._crit_edge313

.lr.ph312.epil.preheader:                         ; preds = %._crit_edge313.loopexit.unr-lcssa, %.preheader276
  %indvars.iv359.epil.init = phi i64 [ 0, %.preheader276 ], [ %indvars.iv.next360.1, %._crit_edge313.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod540 = trunc i64 %i.no to i1
  call void @llvm.assume(i1 %lcmp.mod540)
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv359.epil.init
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !51
  %i.po = load i64, ptr %i.pn, align 8
  %i.pp = lshr i64 %i.po, 32
  %i.pq = trunc nuw i64 %i.pp to i32
  %i.pr = and i32 %i.pq, 536870911
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv359.epil.init
  store i32 %i.pr, ptr %i.ps, align 4, !tbaa !15
  br label %._crit_edge313

._crit_edge313:                                   ; preds = %.lr.ph312.epil.preheader, %._crit_edge313.loopexit.unr-lcssa, %.preheader277
  %.lcssa286435 = phi i64 [ 0, %.preheader277 ], [ %indvars.iv.next357, %._crit_edge313.loopexit.unr-lcssa ], [ %indvars.iv.next357, %.lr.ph312.epil.preheader ] ; 3 uses
  %.0157.lcssa434 = phi i32 [ 0, %.preheader277 ], [ %i.nn, %._crit_edge313.loopexit.unr-lcssa ], [ %i.nn, %.lr.ph312.epil.preheader ] ; 11 uses
  %i.pt = load i32, ptr %i.e, align 4, !tbaa !15  ; 2 uses
  %i.pu = icmp sgt i32 %i.pt, -1
  br i1 %i.pu, label %bb.ba, label %join_revs.exit

bb.ba:                                            ; preds = %._crit_edge313
  %notmask.i = shl nsw i32 -4, %.0157.lcssa434
  %i.pv = xor i32 %notmask.i, -1                  ; 3 uses
  %i.pw = and i32 %i.pv, 2147483644               ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !54 ; 2 uses
  %.not89.i = icmp eq i64 %i.py, 0
  br i1 %.not89.i, label %.thread.i, label %.lr.ph.i.lr.ph.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.ba
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bj, %.lr.ph.i.lr.ph.i
  %i.qa = phi i64 [ %i.py, %.lr.ph.i.lr.ph.i ], [ %i.rw, %bb.bj ]
  %.090.i = phi i32 [ %i.pt, %.lr.ph.i.lr.ph.i ], [ %.1.lcssa112.i, %bb.bj ] ; 3 uses
  %i.qb = load ptr, ptr %i.pz, align 8, !tbaa !57
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i
  %.01114.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.qh, %bb.bb ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %.01114.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !58
  %i.qf = load i64, ptr %i.qe, align 8
  %i.qg = and i64 %i.qf, 4294967296
  %.not.not.i.i = icmp eq i64 %i.qg, 0            ; 3 uses
  %i.qh = add nuw i64 %.01114.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qh, %i.qa
  %or.cond83.i = select i1 %.not.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond83.i, label %interesting.exit.i, label %bb.bb, !llvm.loop !60

interesting.exit.i:                               ; preds = %bb.bb
  %i.qi = call ptr @prio_queue_peek(ptr noundef nonnull %5) #16 ; 3 uses
  %i.qj = load i64, ptr %i.qi, align 8            ; 2 uses
  %i.qk = lshr i64 %i.qj, 32
  %i.ql = trunc nuw i64 %i.qk to i32
  %i.qm = and i32 %i.ql, 536870911                ; 2 uses
  %i.qn = and i32 %i.qm, %i.pv
  %i.qo = icmp sgt i32 %.090.i, 0
  %or.cond.not.i = select i1 %.not.not.i.i, i1 true, i1 %i.qo
  br i1 %or.cond.not.i, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %interesting.exit.i
  %i.qp = and i64 %i.qj, 2305843004918726656
  %.not.i77.i = icmp eq i64 %i.qp, 0
  br i1 %.not.i77.i, label %bb.bd, label %mark_seen.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.qq = call ptr @commit_list_insert(ptr noundef nonnull %i.qi, ptr noundef nonnull %i.c) #16 ; 0 uses
  br label %mark_seen.exit.i

mark_seen.exit.i:                                 ; preds = %bb.bd, %bb.bc
  %i.qr = and i32 %i.qm, %i.pw
  %i.qs = icmp eq i32 %i.qr, %i.pw
  %i.qt = zext i1 %i.qs to i32
  %spec.select.i = or i32 %i.qn, %i.qt            ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !61 ; 2 uses
  %.not6984.i = icmp eq ptr %i.qv, null
  br i1 %.not6984.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mark_seen.exit.i, %bb.bi
  %.187.i = phi i32 [ %.3.i, %bb.bi ], [ %.090.i, %mark_seen.exit.i ] ; 2 uses
  %.05786.i = phi ptr [ %i.rb, %bb.bi ], [ %i.qv, %mark_seen.exit.i ] ; 2 uses
  %.06385.i = phi i8 [ %.164.i, %bb.bi ], [ 1, %mark_seen.exit.i ] ; 2 uses
  %i.qw = load ptr, ptr %.05786.i, align 8, !tbaa !66 ; 8 uses
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = lshr i64 %i.qx, 32
  %i.qz = trunc nuw i64 %i.qy to i32
  %i.ra = getelementptr inbounds nuw i8, ptr %.05786.i, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !68 ; 2 uses
  %i.rc = and i32 %spec.select.i, %i.qz
  %i.rd = icmp eq i32 %i.rc, %spec.select.i
  br i1 %i.rd, label %bb.bi, label %bb.be, !llvm.loop !69

bb.be:                                            ; preds = %.lr.ph.i
  %i.re = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.rf = call i32 @repo_parse_commit_gently(ptr noundef %i.re, ptr noundef nonnull %i.qw, i32 noundef 0) #16 ; 0 uses
  %i.rg = load i64, ptr %i.qw, align 8            ; 2 uses
  %i.rh = and i64 %i.rg, 2305843004918726656
  %.not.i78.i = icmp ne i64 %i.rh, 0              ; 2 uses
  br i1 %.not.i78.i, label %mark_seen.exit80.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ri = call ptr @commit_list_insert(ptr noundef nonnull %i.qw, ptr noundef nonnull %i.c) #16 ; 0 uses
  %.pre.i = load i64, ptr %i.qw, align 8
  br label %mark_seen.exit80.i

mark_seen.exit80.i:                               ; preds = %bb.bf, %bb.be
  %i.rj = phi i64 [ %i.rg, %bb.be ], [ %.pre.i, %bb.bf ] ; 2 uses
  %or.cond3.i = or i1 %.not.not.i.i, %.not.i78.i
  %not.or.cond3.i = xor i1 %or.cond3.i, true
  %i.rk = sext i1 %not.or.cond3.i to i32
  %spec.select76.i = add nsw i32 %.187.i, %i.rk   ; 2 uses
  %i.rl = lshr i64 %i.rj, 32
  %i.rm = trunc nuw i64 %i.rl to i32
  %i.rn = and i32 %i.rm, 536870911
  %i.ro = or i32 %i.rn, %spec.select.i
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = shl nuw nsw i64 %i.rp, 32
  %i.rr = and i64 %i.rj, -2305843004918726657
  %i.rs = or disjoint i64 %i.rq, %i.rr
  store i64 %i.rs, ptr %i.qw, align 8
  %i.rt = trunc nuw i8 %.06385.i to i1
  br i1 %i.rt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %mark_seen.exit80.i
  call void @prio_queue_replace(ptr noundef nonnull %5, ptr noundef nonnull %i.qw) #16
  br label %bb.bi

bb.bh:                                            ; preds = %mark_seen.exit80.i
  call void @prio_queue_put(ptr noundef nonnull %5, ptr noundef nonnull %i.qw) #16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %.lr.ph.i
  %.164.i = phi i8 [ %.06385.i, %.lr.ph.i ], [ 0, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %.3.i = phi i32 [ %.187.i, %.lr.ph.i ], [ %spec.select76.i, %bb.bh ], [ %spec.select76.i, %bb.bg ] ; 3 uses
  %.not69.i = icmp eq ptr %i.rb, null
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.bi
  %i.ru = trunc nuw i8 %.164.i to i1
  br i1 %i.ru, label %._crit_edge.thread.i, label %bb.bj

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %mark_seen.exit.i
end_hunk_0
