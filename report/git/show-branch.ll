inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cmd_show_branch:bb.a
  %i.tp = and i32 %i.to, 536870911
  %i.tq = icmp eq i32 %i.tp, %i.tl
  br i1 %i.tq, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i218
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.ts = call ptr @oid_to_hex(ptr noundef nonnull %i.tr) #16
  %i.tt = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.ts) ; 0 uses
  %.pre.i219 = load i64, ptr %i.tj, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i218
  %i.tu = phi i64 [ %.pre.i219, %bb.bu ], [ %i.tm, %.lr.ph.i218 ]
  %i.tv = or i64 %i.tu, 4294967296
  store i64 %i.tv, ptr %i.tj, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.lcssa286435
  br i1 %exitcond.not.i, label %show_merge_base.exit, label %.lr.ph.i218, !llvm.loop !74

bb.bw:                                            ; preds = %bb.bs
  %i.tw = icmp samesign ugt i32 %.0157.lcssa434, 1 ; 2 uses
  %i.tx = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ty = icmp slt i32 %i.tx, 0
  %or.cond15 = select i1 %i.tw, i1 true, i1 %i.ty
  br i1 %or.cond15, label %.preheader273, label %.thread256

.preheader273:                                    ; preds = %bb.bw
  br i1 %.not193306, label %._crit_edge322.thread, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader273
  %i.tz = load i32, ptr @column_colors_ansi_max, align 4
  %wide.trip.count367 = zext i32 %.0157.lcssa434 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph321, %bb.cf
  %indvars.iv364 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next365, %bb.cf ] ; 9 uses
  %.0164318 = phi i32 [ -1, %.lr.ph321 ], [ %spec.select207, %bb.cf ]
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr @ref_name, i64 %indvars.iv364 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !16 ; 2 uses
  %i.uc = call fastcc i32 @rev_is_head(ptr noundef %i.ls, ptr noundef %i.ub)
  %.not202 = icmp eq i32 %i.uc, 0
  br i1 %.not202, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv364
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !51
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8 ; 2 uses
  %i.ug = load i128, ptr %6, align 4
  %i.uh = load i128, ptr %i.uf, align 1
  %i.ui = xor i128 %i.ug, %i.uh
  %i.uj = getelementptr i8, ptr %6, i64 16
  %i.uk = getelementptr i8, ptr %i.uf, i64 16
  %i.ul = load i128, ptr %i.uj, align 4
  %i.um = load i128, ptr %i.uk, align 1
  %i.un = xor i128 %i.ul, %i.um
  %i.uo = or i128 %i.ui, %i.un
  %i.up = icmp ne i128 %i.uo, 0
  %i.uq = zext i1 %i.up to i32
  %.not.i220 = icmp eq i32 %i.uq, 0
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ur = phi i1 [ false, %bb.bx ], [ %.not.i220, %bb.by ] ; 3 uses
  %i.us = load i32, ptr %i.e, align 4, !tbaa !15
  %i.ut = icmp slt i32 %i.us, 0
  br i1 %i.ut, label %bb.ca, label %.preheader272

.preheader272:                                    ; preds = %bb.bz
  %.not339 = icmp eq i64 %indvars.iv364, 0
  br i1 %.not339, label %._crit_edge317, label %.lr.ph316

bb.ca:                                            ; preds = %bb.bz
  %i.uu = select i1 %i.ur, i32 42, i32 32
  %i.uv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %i.uu, ptr noundef %i.ub) ; 0 uses
  br label %bb.cc

.lr.ph316:                                        ; preds = %.preheader272, %.lr.ph316
  %.0163315 = phi i32 [ %i.uy, %.lr.ph316 ], [ 0, %.preheader272 ]
  %i.uw = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.ux = call noundef i32 @putc(i32 noundef 32, ptr noundef %i.uw), !inline_history !75 ; 0 uses
  %i.uy = add nuw nsw i32 %.0163315, 1            ; 2 uses
  %i.uz = zext nneg i32 %i.uy to i64
  %exitcond363.not = icmp eq i64 %indvars.iv364, %i.uz
  br i1 %exitcond363.not, label %._crit_edge317, label %.lr.ph316, !llvm.loop !76

._crit_edge317:                                   ; preds = %.lr.ph316, %.preheader272
  %i.va = load i32, ptr @showbranch_use_color, align 4, !tbaa !15
  %i.vb = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.va) #16
  br i1 %i.vb, label %bb.cb, label %get_color_code.exit

bb.cb:                                            ; preds = %._crit_edge317
  %i.vc = trunc nuw nsw i64 %indvars.iv364 to i32
  %i.vd = srem i32 %i.vc, %i.tz
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr @column_colors_ansi, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !16
  br label %get_color_code.exit

get_color_code.exit:                              ; preds = %._crit_edge317, %bb.cb
  %.0.i221 = phi ptr [ %i.vg, %bb.cb ], [ @.str.58, %._crit_edge317 ]
  %i.vh = select i1 %i.ur, i32 42, i32 33
  %i.vi = load i32, ptr @showbranch_use_color, align 4, !tbaa !15
  %i.vj = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.vi) #16
  %.str.74..str.58.i = select i1 %i.vj, ptr @.str.74, ptr @.str.58
  %i.vk = load ptr, ptr %i.ua, align 8, !tbaa !16
  %i.vl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %.0.i221, i32 noundef %i.vh, ptr noundef nonnull %.str.74..str.58.i, ptr noundef %i.vk) ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %get_color_code.exit, %bb.ca
  %i.vm = load i32, ptr @reflog, align 4, !tbaa !15
  %.not203 = icmp eq i32 %i.vm, 0
  br i1 %.not203, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv364
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !51
  call fastcc void @show_one_commit(ptr noundef %i.vo, i32 noundef 1)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv364
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !16
  %i.vr = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.vq) ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.vs = trunc nuw nsw i64 %indvars.iv364 to i32
  %spec.select207 = select i1 %i.ur, i32 %i.vs, i32 %.0164318 ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge322, label %bb.bx, !llvm.loop !77

._crit_edge322:                                   ; preds = %bb.cf
  %.pre375 = load i32, ptr %i.e, align 4, !tbaa !15
  %i.vt = icmp sgt i32 %.pre375, -1
  br i1 %i.vt, label %.lr.ph325, label %show_merge_base.exit

._crit_edge322.thread:                            ; preds = %.preheader273
  %i.vu = icmp sgt i32 %i.tx, -1
  br i1 %i.vu, label %._crit_edge326, label %show_merge_base.exit

.lr.ph325:                                        ; preds = %._crit_edge322, %.lr.ph325
  %.4324 = phi i32 [ %i.vx, %.lr.ph325 ], [ 0, %._crit_edge322 ]
  %i.vv = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.vw = call noundef i32 @putc(i32 noundef 45, ptr noundef %i.vv), !inline_history !75 ; 0 uses
  %i.vx = add nuw nsw i32 %.4324, 1               ; 2 uses
  %exitcond369.not = icmp eq i32 %i.vx, %.0157.lcssa434
  br i1 %exitcond369.not, label %._crit_edge326, label %.lr.ph325, !llvm.loop !78

._crit_edge326:                                   ; preds = %.lr.ph325, %._crit_edge322.thread
  %.0164.lcssa438440 = phi i32 [ -1, %._crit_edge322.thread ], [ %spec.select207, %.lr.ph325 ]
  %i.vy = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.vz = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.vy), !inline_history !75 ; 0 uses
  %.pr253 = load i32, ptr %i.e, align 4, !tbaa !15
  %i.wa = icmp slt i32 %.pr253, 0
  br i1 %i.wa, label %show_merge_base.exit, label %.thread256

.thread256:                                       ; preds = %bb.bw, %._crit_edge326
  %.2166258 = phi i32 [ %.0164.lcssa438440, %._crit_edge326 ], [ -1, %bb.bw ]
  %i.wb = load i32, ptr %i.h, align 4, !tbaa !15
  call void @sort_in_topological_order(ptr noundef nonnull %i.c, i32 noundef %i.wb) #16
  %i.wc = load i32, ptr %i.l, align 4, !tbaa !15
  %i.wd = icmp ne i32 %i.wc, 0
  %i.we = load i32, ptr %i.k, align 4
  %i.wf = icmp ne i32 %i.we, 0
  %or.cond17 = select i1 %i.wd, i1 true, i1 %i.wf
  %.0161329.pre376 = load ptr, ptr %i.c, align 8, !tbaa !12 ; 7 uses
  br i1 %or.cond17, label %name_commits.exit, label %bb.cg

bb.cg:                                            ; preds = %.thread256
  %cond.i = icmp eq ptr %.0161329.pre376, null
  br i1 %cond.i, label %show_merge_base.exit, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %bb.cg
  %.pre.i.i.i.pre30.i = load ptr, ptr @name_slab.3, align 8, !tbaa !35
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit3.i, %.lr.ph7.i
  %.pre.i.i.i.i = phi ptr [ %.pre.i.i.i.pre30.i, %.lr.ph7.i ], [ %.pre.i.i.i31.i, %.loopexit3.i ] ; 2 uses
  %.06.i223 = phi ptr [ %.0161329.pre376, %.lr.ph7.i ], [ %i.xp, %.loopexit3.i ] ; 2 uses
  %i.wg = load ptr, ptr %.06.i223, align 8, !tbaa !66 ; 3 uses
  %i.wh = getelementptr i8, ptr %i.wg, i64 72
  %.val59.i = load i32, ptr %i.wh, align 8, !tbaa !79 ; 2 uses
  %i.wi = udiv i32 %.val59.i, 65532               ; 6 uses
  %i.wj = urem i32 %.val59.i, 65532
  %i.wk = load i32, ptr @name_slab.2, align 8, !tbaa !30
  %.not.i.i.i.i = icmp ugt i32 %i.wk, %i.wi
  br i1 %.not.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wl = add nuw nsw i32 %i.wi, 1                ; 2 uses
  %i.wm = shl nuw nsw i32 %i.wl, 3
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = call ptr @xrealloc(ptr noundef %.pre.i.i.i.i, i64 noundef %i.wn) #16 ; 4 uses
  store ptr %i.wo, ptr @name_slab.3, align 8, !tbaa !35
  %i.wp = load i32, ptr @name_slab.2, align 8, !tbaa !30 ; 5 uses
  %.not331.i.i.i.i = icmp ugt i32 %i.wp, %i.wi
  br i1 %.not331.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ci
  %10 = add nuw nsw i32 %i.wi, 1
  %11 = sub nuw i32 %10, %i.wp                    ; 3 uses
  %min.iters.check = icmp samesign ult i32 %11, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader528, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i32 %11, 262140                    ; 3 uses
  %i.wq = add i32 %i.wp, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.wr = add i32 %i.wp, %index
  %i.ws = zext i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %i.ws ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.wt, align 8, !tbaa !80
  store <2 x ptr> splat (ptr null), ptr %i.wu, align 8, !tbaa !80
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.wv = icmp eq i32 %index.next, %n.vec
  br i1 %i.wv, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %11, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader528

.lr.ph.i.i.i.i.preheader528:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.0302.i.i.i.i.ph = phi i32 [ %i.wp, %.lr.ph.i.i.i.i.preheader ], [ %i.wq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader528, %.lr.ph.i.i.i.i
  %.0302.i.i.i.i = phi i32 [ %i.wy, %.lr.ph.i.i.i.i ], [ %.0302.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader528 ] ; 2 uses
  %i.ww = zext i32 %.0302.i.i.i.i to i64
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %i.ww
  store ptr null, ptr %i.wx, align 8, !tbaa !80
  %i.wy = add i32 %.0302.i.i.i.i, 1               ; 2 uses
  %.not33.i.i.i.i = icmp ugt i32 %i.wy, %i.wi
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !85

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.ci
  store i32 %i.wl, ptr @name_slab.2, align 8, !tbaa !30
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i, %bb.ch
  %.pre.i.i.i33.i = phi ptr [ %i.wo, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i.i, %bb.ch ] ; 2 uses
  %i.wz = zext nneg i32 %i.wi to i64              ; 2 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i33.i, i64 %i.wz
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !80 ; 2 uses
  %.not34.i.i.i.i = icmp eq ptr %i.xb, null
  br i1 %.not34.i.i.i.i, label %bb.ck, label %commit_to_name.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.xc = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.xd = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 2 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.wz
  store ptr %i.xc, ptr %i.xe, align 8, !tbaa !80
  br label %commit_to_name.exit.i

commit_to_name.exit.i:                            ; preds = %bb.ck, %bb.cj
  %.pre.i.i.i32.i = phi ptr [ %.pre.i.i.i33.i, %bb.cj ], [ %i.xd, %bb.ck ] ; 2 uses
  %i.xf = phi ptr [ %i.xb, %bb.cj ], [ %i.xc, %bb.ck ]
  %i.xg = zext nneg i32 %i.wj to i64
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xg
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !86
  %.not56.i = icmp ne ptr %i.xi, null
  %brmerge.i = or i1 %.not193306, %.not56.i
  br i1 %brmerge.i, label %.loopexit3.i, label %.lr.ph.i224

bb.cl:                                            ; preds = %.lr.ph.i224
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i225, 1 ; 2 uses
  %exitcond.not.i227 = icmp eq i64 %indvars.iv.next.i226, %.lcssa286435
  br i1 %exitcond.not.i227, label %.loopexit3.i, label %.lr.ph.i224, !llvm.loop !88

.lr.ph.i224:                                      ; preds = %commit_to_name.exit.i, %bb.cl
  %indvars.iv.i225 = phi i64 [ %indvars.iv.next.i226, %bb.cl ], [ 0, %commit_to_name.exit.i ] ; 3 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i225
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !51
  %i.xl = icmp eq ptr %i.xk, %i.wg
  br i1 %i.xl, label %bb.cm, label %bb.cl

bb.cm:                                            ; preds = %.lr.ph.i224
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr @ref_name, i64 %indvars.iv.i225
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !16
  call fastcc void @name_commit(ptr noundef %i.wg, ptr noundef %i.xn, i32 noundef 0)
  %.pre.i.i.i.pre.i = load ptr, ptr @name_slab.3, align 8, !tbaa !35
  br label %.loopexit3.i

.loopexit3.i:                                     ; preds = %bb.cl, %bb.cm, %commit_to_name.exit.i
  %.pre.i.i.i31.i = phi ptr [ %.pre.i.i.i.pre.i, %bb.cm ], [ %.pre.i.i.i32.i, %commit_to_name.exit.i ], [ %.pre.i.i.i32.i, %bb.cl ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.06.i223, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !68 ; 2 uses
  %.not.i228 = icmp eq ptr %i.xp, null
  br i1 %.not.i228, label %.lr.ph11.i, label %bb.ch, !llvm.loop !89

.lr.ph11.i:                                       ; preds = %.loopexit3.i, %.lr.ph11.i.backedge
  %.110.i = phi ptr [ %.110.i.be, %.lr.ph11.i.backedge ], [ %.0161329.pre376, %.loopexit3.i ] ; 2 uses
  %.1459.i = phi i32 [ %.1459.i.be, %.lr.ph11.i.backedge ], [ 0, %.loopexit3.i ]
  %i.xq = load ptr, ptr %.110.i, align 8, !tbaa !66
  %i.xr = call fastcc i32 @name_first_parent_chain(ptr noundef %i.xq)
  %i.xs = add nsw i32 %i.xr, %.1459.i             ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.110.i, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !68 ; 2 uses
  %.not49.i = icmp eq ptr %i.xu, null
  br i1 %.not49.i, label %._crit_edge.i229, label %.lr.ph11.i.backedge

.lr.ph11.i.backedge:                              ; preds = %.lr.ph11.i, %._crit_edge.i229
  %.110.i.be = phi ptr [ %i.xu, %.lr.ph11.i ], [ %.0161329.pre376, %._crit_edge.i229 ]
  %.1459.i.be = phi i32 [ %i.xs, %.lr.ph11.i ], [ 0, %._crit_edge.i229 ]
  br label %.lr.ph11.i, !llvm.loop !90

._crit_edge.i229:                                 ; preds = %.lr.ph11.i
  %.not50.i = icmp eq i32 %i.xs, 0
  br i1 %.not50.i, label %.preheader.i, label %.lr.ph11.i.backedge

.preheader.i:                                     ; preds = %._crit_edge.i229
  %i.xv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.pre.i.i.i61.pre.pre.i = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 3 uses
  br label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.backedge, %.preheader.i
  %.pre.i.i.i61.pre74.i = phi ptr [ %.pre.i.i.i61.pre.pre.i, %.preheader.i ], [ %.pre.i.i.i61.pre71.i, %.lr.ph22.i.backedge ]
  %.pre.i.i.i79.pre4162.i = phi ptr [ %.pre.i.i.i61.pre.pre.i, %.preheader.i ], [ %.pre.i.i.i79.pre4162.i.be, %.lr.ph22.i.backedge ]
  %.pre.i.i.i61.i = phi ptr [ %.pre.i.i.i61.pre.pre.i, %.preheader.i ], [ %.pre.i.i.i61.i.be, %.lr.ph22.i.backedge ] ; 2 uses
  %.220.i = phi ptr [ %.0161329.pre376, %.preheader.i ], [ %.220.i.be, %.lr.ph22.i.backedge ] ; 2 uses
  %.24619.i = phi i32 [ 0, %.preheader.i ], [ %.24619.i.be, %.lr.ph22.i.backedge ] ; 3 uses
  %i.xx = load ptr, ptr %.220.i, align 8, !tbaa !66 ; 2 uses
  %i.xy = getelementptr i8, ptr %i.xx, i64 72     ; 2 uses
  %.val58.i = load i32, ptr %i.xy, align 8, !tbaa !79 ; 2 uses
  %i.xz = udiv i32 %.val58.i, 65532               ; 6 uses
  %i.ya = urem i32 %.val58.i, 65532
  %i.yb = load i32, ptr @name_slab.2, align 8, !tbaa !30
  %.not.i.i.i60.i = icmp ugt i32 %i.yb, %i.xz
  br i1 %.not.i.i.i60.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph22.i
  %i.yc = add nuw nsw i32 %i.xz, 1                ; 2 uses
  %i.yd = shl nuw nsw i32 %i.yc, 3
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = call ptr @xrealloc(ptr noundef %.pre.i.i.i61.i, i64 noundef %i.ye) #16 ; 6 uses
  store ptr %i.yf, ptr @name_slab.3, align 8, !tbaa !35
  %i.yg = load i32, ptr @name_slab.2, align 8, !tbaa !30 ; 5 uses
  %.not331.i.i.i62.i = icmp ugt i32 %i.yg, %i.xz
  br i1 %.not331.i.i.i62.i, label %._crit_edge.i.i.i66.i, label %.lr.ph.i.i.i63.i.preheader

.lr.ph.i.i.i63.i.preheader:                       ; preds = %bb.cn
  %12 = add nuw nsw i32 %i.xz, 1
  %13 = sub nuw i32 %12, %i.yg                    ; 3 uses
  %min.iters.check501 = icmp samesign ult i32 %13, 4
  br i1 %min.iters.check501, label %.lr.ph.i.i.i63.i.preheader527, label %vector.ph502

vector.ph502:                                     ; preds = %.lr.ph.i.i.i63.i.preheader
  %n.vec503 = and i32 %13, 262140                 ; 3 uses
  %i.yh = add i32 %i.yg, %n.vec503
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.ph502
  %index505 = phi i32 [ 0, %vector.ph502 ], [ %index.next506, %vector.body504 ] ; 2 uses
  %i.yi = add i32 %i.yg, %index505
  %i.yj = zext i32 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.yj ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.yk, align 8, !tbaa !80
  store <2 x ptr> splat (ptr null), ptr %i.yl, align 8, !tbaa !80
  %index.next506 = add nuw i32 %index505, 4       ; 2 uses
  %i.ym = icmp eq i32 %index.next506, %n.vec503
  br i1 %i.ym, label %middle.block507, label %vector.body504, !llvm.loop !91

middle.block507:                                  ; preds = %vector.body504
  %cmp.n508 = icmp eq i32 %13, %n.vec503
  br i1 %cmp.n508, label %._crit_edge.i.i.i66.i, label %.lr.ph.i.i.i63.i.preheader527

.lr.ph.i.i.i63.i.preheader527:                    ; preds = %.lr.ph.i.i.i63.i.preheader, %middle.block507
  %.0302.i.i.i64.i.ph = phi i32 [ %i.yg, %.lr.ph.i.i.i63.i.preheader ], [ %i.yh, %middle.block507 ]
  br label %.lr.ph.i.i.i63.i

.lr.ph.i.i.i63.i:                                 ; preds = %.lr.ph.i.i.i63.i.preheader527, %.lr.ph.i.i.i63.i
  %.0302.i.i.i64.i = phi i32 [ %i.yp, %.lr.ph.i.i.i63.i ], [ %.0302.i.i.i64.i.ph, %.lr.ph.i.i.i63.i.preheader527 ] ; 2 uses
  %i.yn = zext i32 %.0302.i.i.i64.i to i64
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.yn
  store ptr null, ptr %i.yo, align 8, !tbaa !80
  %i.yp = add i32 %.0302.i.i.i64.i, 1             ; 2 uses
  %.not33.i.i.i65.i = icmp ugt i32 %i.yp, %i.xz
  br i1 %.not33.i.i.i65.i, label %._crit_edge.i.i.i66.i, label %.lr.ph.i.i.i63.i, !llvm.loop !92

._crit_edge.i.i.i66.i:                            ; preds = %.lr.ph.i.i.i63.i, %middle.block507, %bb.cn
  store i32 %i.yc, ptr @name_slab.2, align 8, !tbaa !30
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge.i.i.i66.i, %.lr.ph22.i
  %.pre.i.i.i61.pre73.i = phi ptr [ %i.yf, %._crit_edge.i.i.i66.i ], [ %.pre.i.i.i61.pre74.i, %.lr.ph22.i ]
  %.pre.i.i.i79.pre4161.i = phi ptr [ %i.yf, %._crit_edge.i.i.i66.i ], [ %.pre.i.i.i79.pre4162.i, %.lr.ph22.i ]
  %.pre.i.i.i6152.i = phi ptr [ %i.yf, %._crit_edge.i.i.i66.i ], [ %.pre.i.i.i61.i, %.lr.ph22.i ] ; 2 uses
  %i.yq = zext nneg i32 %i.xz to i64              ; 2 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i6152.i, i64 %i.yq
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !80 ; 2 uses
  %.not34.i.i.i67.i = icmp eq ptr %i.ys, null
  br i1 %.not34.i.i.i67.i, label %bb.cp, label %commit_to_name.exit68.i

bb.cp:                                            ; preds = %bb.co
  %i.yt = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.yu = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 4 uses
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.yq
  store ptr %i.yt, ptr %i.yv, align 8, !tbaa !80
  br label %commit_to_name.exit68.i

commit_to_name.exit68.i:                          ; preds = %bb.cp, %bb.co
  %.pre.i.i.i61.pre72.i = phi ptr [ %.pre.i.i.i61.pre73.i, %bb.co ], [ %i.yu, %bb.cp ] ; 2 uses
  %.pre.i.i.i79.pre4160.i = phi ptr [ %.pre.i.i.i79.pre4161.i, %bb.co ], [ %i.yu, %bb.cp ] ; 2 uses
  %.pre.i.i.i6151.i = phi ptr [ %.pre.i.i.i6152.i, %bb.co ], [ %i.yu, %bb.cp ] ; 3 uses
  %i.yw = phi ptr [ %i.ys, %bb.co ], [ %i.yt, %bb.cp ]
  %i.yx = zext nneg i32 %i.ya to i64
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.yx
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !86
  %.not53.i = icmp eq ptr %i.yz, null
  br i1 %.not53.i, label %.loopexit.i230, label %bb.cq

bb.cq:                                            ; preds = %commit_to_name.exit68.i
  %.val57.i = load i32, ptr %i.xy, align 8, !tbaa !79 ; 2 uses
  %i.za = udiv i32 %.val57.i, 65532               ; 6 uses
  %i.zb = urem i32 %.val57.i, 65532
  %i.zc = load i32, ptr @name_slab.2, align 8, !tbaa !30
  %.not.i.i.i69.i = icmp ugt i32 %i.zc, %i.za
  br i1 %.not.i.i.i69.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.zd = add nuw nsw i32 %i.za, 1                ; 2 uses
  %i.ze = shl nuw nsw i32 %i.zd, 3
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = call ptr @xrealloc(ptr noundef nonnull %.pre.i.i.i6151.i, i64 noundef %i.zf) #16 ; 6 uses
  store ptr %i.zg, ptr @name_slab.3, align 8, !tbaa !35
  %i.zh = load i32, ptr @name_slab.2, align 8, !tbaa !30 ; 5 uses
  %.not331.i.i.i71.i = icmp ugt i32 %i.zh, %i.za
  br i1 %.not331.i.i.i71.i, label %._crit_edge.i.i.i75.i, label %.lr.ph.i.i.i72.i.preheader

.lr.ph.i.i.i72.i.preheader:                       ; preds = %bb.cr
  %14 = add nuw nsw i32 %i.za, 1
  %15 = sub nuw i32 %14, %i.zh                    ; 3 uses
  %min.iters.check491 = icmp samesign ult i32 %15, 4
  br i1 %min.iters.check491, label %.lr.ph.i.i.i72.i.preheader526, label %vector.ph492

vector.ph492:                                     ; preds = %.lr.ph.i.i.i72.i.preheader
  %n.vec493 = and i32 %15, 262140                 ; 3 uses
  %i.zi = add i32 %i.zh, %n.vec493
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i32 [ 0, %vector.ph492 ], [ %index.next496, %vector.body494 ] ; 2 uses
  %i.zj = add i32 %i.zh, %index495
  %i.zk = zext i32 %i.zj to i64
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zk ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.zl, align 8, !tbaa !80
  store <2 x ptr> splat (ptr null), ptr %i.zm, align 8, !tbaa !80
  %index.next496 = add nuw i32 %index495, 4       ; 2 uses
  %i.zn = icmp eq i32 %index.next496, %n.vec493
  br i1 %i.zn, label %middle.block497, label %vector.body494, !llvm.loop !93

middle.block497:                                  ; preds = %vector.body494
  %cmp.n498 = icmp eq i32 %15, %n.vec493
  br i1 %cmp.n498, label %._crit_edge.i.i.i75.i, label %.lr.ph.i.i.i72.i.preheader526

.lr.ph.i.i.i72.i.preheader526:                    ; preds = %.lr.ph.i.i.i72.i.preheader, %middle.block497
  %.0302.i.i.i73.i.ph = phi i32 [ %i.zh, %.lr.ph.i.i.i72.i.preheader ], [ %i.zi, %middle.block497 ]
  br label %.lr.ph.i.i.i72.i

.lr.ph.i.i.i72.i:                                 ; preds = %.lr.ph.i.i.i72.i.preheader526, %.lr.ph.i.i.i72.i
  %.0302.i.i.i73.i = phi i32 [ %i.zq, %.lr.ph.i.i.i72.i ], [ %.0302.i.i.i73.i.ph, %.lr.ph.i.i.i72.i.preheader526 ] ; 2 uses
  %i.zo = zext i32 %.0302.i.i.i73.i to i64
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zo
  store ptr null, ptr %i.zp, align 8, !tbaa !80
  %i.zq = add i32 %.0302.i.i.i73.i, 1             ; 2 uses
  %.not33.i.i.i74.i = icmp ugt i32 %i.zq, %i.za
  br i1 %.not33.i.i.i74.i, label %._crit_edge.i.i.i75.i, label %.lr.ph.i.i.i72.i, !llvm.loop !94

._crit_edge.i.i.i75.i:                            ; preds = %.lr.ph.i.i.i72.i, %middle.block497, %bb.cr
  store i32 %i.zd, ptr @name_slab.2, align 8, !tbaa !30
  br label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i.i75.i, %bb.cq
  %.pre.i.i.i61.pre70.i = phi ptr [ %i.zg, %._crit_edge.i.i.i75.i ], [ %.pre.i.i.i61.pre72.i, %bb.cq ]
  %.pre.i.i.i79.pre4159.i = phi ptr [ %i.zg, %._crit_edge.i.i.i75.i ], [ %.pre.i.i.i79.pre4160.i, %bb.cq ]
  %.pre.i.i.i6149.i = phi ptr [ %i.zg, %._crit_edge.i.i.i75.i ], [ %.pre.i.i.i6151.i, %bb.cq ] ; 2 uses
  %i.zr = zext nneg i32 %i.za to i64              ; 2 uses
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i6149.i, i64 %i.zr
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !80 ; 2 uses
  %.not34.i.i.i76.i = icmp eq ptr %i.zt, null
  br i1 %.not34.i.i.i76.i, label %bb.ct, label %commit_to_name.exit77.i

bb.ct:                                            ; preds = %bb.cs
  %i.zu = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.zv = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 4 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zv, i64 %i.zr
  store ptr %i.zu, ptr %i.zw, align 8, !tbaa !80
  br label %commit_to_name.exit77.i

commit_to_name.exit77.i:                          ; preds = %bb.ct, %bb.cs
  %.pre.i.i.i61.pre69.i = phi ptr [ %.pre.i.i.i61.pre70.i, %bb.cs ], [ %i.zv, %bb.ct ] ; 2 uses
  %.pre.i.i.i79.pre41.i = phi ptr [ %.pre.i.i.i79.pre4159.i, %bb.cs ], [ %i.zv, %bb.ct ] ; 3 uses
  %.pre.i.i.i6148.i = phi ptr [ %.pre.i.i.i6149.i, %bb.cs ], [ %i.zv, %bb.ct ]
  %i.zx = phi ptr [ %i.zt, %bb.cs ], [ %i.zu, %bb.ct ]
  %i.zy = zext nneg i32 %i.zb to i64
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.zy
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !86 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.xx, i64 56
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !61 ; 2 uses
  %.not5412.i = icmp eq ptr %i.aac, null
  br i1 %.not5412.i, label %.loopexit.i230, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %commit_to_name.exit77.i
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.dn, %.lr.ph16.i
  %.pre.i.i.i61.pre68.i = phi ptr [ %.pre.i.i.i61.pre69.i, %.lr.ph16.i ], [ %.pre.i.i.i61.pre65.i, %bb.dn ]
  %.pre.i.i.i79.pre4158.i = phi ptr [ %.pre.i.i.i79.pre41.i, %.lr.ph16.i ], [ %.pre.i.i.i79.pre4155.i, %bb.dn ]
  %.pre.i.i.i79.i = phi ptr [ %.pre.i.i.i79.pre41.i, %.lr.ph16.i ], [ %.pre.i.i.i7942.i, %bb.dn ] ; 2 uses
  %.04215.i = phi i32 [ 0, %.lr.ph16.i ], [ %i.aah, %bb.dn ] ; 2 uses
  %.04314.i = phi ptr [ %i.aac, %.lr.ph16.i ], [ %i.aag, %bb.dn ] ; 2 uses
  %.313.i = phi i32 [ %.24619.i, %.lr.ph16.i ], [ %.4.i, %bb.dn ] ; 2 uses
  %i.aae = load ptr, ptr %.04314.i, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.name_commits.newname, i64 24, i1 false)
  %i.aaf = getelementptr inbounds nuw i8, ptr %.04314.i, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !68 ; 2 uses
  %i.aah = add nuw nsw i32 %.04215.i, 1           ; 2 uses
  %i.aai = getelementptr i8, ptr %i.aae, i64 72   ; 3 uses
  %.val.i = load i32, ptr %i.aai, align 8, !tbaa !79 ; 2 uses
  %i.aaj = udiv i32 %.val.i, 65532                ; 6 uses
  %i.aak = urem i32 %.val.i, 65532
  %i.aal = load i32, ptr @name_slab.2, align 8, !tbaa !30
  %.not.i.i.i78.i = icmp ugt i32 %i.aal, %i.aaj
  br i1 %.not.i.i.i78.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.aam = add nuw nsw i32 %i.aaj, 1              ; 2 uses
  %i.aan = shl nuw nsw i32 %i.aam, 3
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = call ptr @xrealloc(ptr noundef %.pre.i.i.i79.i, i64 noundef %i.aao) #16 ; 6 uses
  store ptr %i.aap, ptr @name_slab.3, align 8, !tbaa !35
  %i.aaq = load i32, ptr @name_slab.2, align 8, !tbaa !30 ; 5 uses
  %.not331.i.i.i80.i = icmp ugt i32 %i.aaq, %i.aaj
  br i1 %.not331.i.i.i80.i, label %._crit_edge.i.i.i84.i, label %.lr.ph.i.i.i81.i.preheader

.lr.ph.i.i.i81.i.preheader:                       ; preds = %bb.cv
  %16 = add nuw nsw i32 %i.aaj, 1
  %17 = sub nuw i32 %16, %i.aaq                   ; 3 uses
  %min.iters.check481 = icmp samesign ult i32 %17, 4
  br i1 %min.iters.check481, label %.lr.ph.i.i.i81.i.preheader525, label %vector.ph482

vector.ph482:                                     ; preds = %.lr.ph.i.i.i81.i.preheader
  %n.vec483 = and i32 %17, 262140                 ; 3 uses
  %i.aar = add i32 %i.aaq, %n.vec483
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i32 [ 0, %vector.ph482 ], [ %index.next486, %vector.body484 ] ; 2 uses
  %i.aas = add i32 %i.aaq, %index485
  %i.aat = zext i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aat ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.aau, align 8, !tbaa !80
  store <2 x ptr> splat (ptr null), ptr %i.aav, align 8, !tbaa !80
  %index.next486 = add nuw i32 %index485, 4       ; 2 uses
  %i.aaw = icmp eq i32 %index.next486, %n.vec483
  br i1 %i.aaw, label %middle.block487, label %vector.body484, !llvm.loop !95

middle.block487:                                  ; preds = %vector.body484
  %cmp.n488 = icmp eq i32 %17, %n.vec483
  br i1 %cmp.n488, label %._crit_edge.i.i.i84.i, label %.lr.ph.i.i.i81.i.preheader525

.lr.ph.i.i.i81.i.preheader525:                    ; preds = %.lr.ph.i.i.i81.i.preheader, %middle.block487
  %.0302.i.i.i82.i.ph = phi i32 [ %i.aaq, %.lr.ph.i.i.i81.i.preheader ], [ %i.aar, %middle.block487 ]
  br label %.lr.ph.i.i.i81.i

.lr.ph.i.i.i81.i:                                 ; preds = %.lr.ph.i.i.i81.i.preheader525, %.lr.ph.i.i.i81.i
  %.0302.i.i.i82.i = phi i32 [ %i.aaz, %.lr.ph.i.i.i81.i ], [ %.0302.i.i.i82.i.ph, %.lr.ph.i.i.i81.i.preheader525 ] ; 2 uses
  %i.aax = zext i32 %.0302.i.i.i82.i to i64
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aax
  store ptr null, ptr %i.aay, align 8, !tbaa !80
  %i.aaz = add i32 %.0302.i.i.i82.i, 1            ; 2 uses
  %.not33.i.i.i83.i = icmp ugt i32 %i.aaz, %i.aaj
  br i1 %.not33.i.i.i83.i, label %._crit_edge.i.i.i84.i, label %.lr.ph.i.i.i81.i, !llvm.loop !96

._crit_edge.i.i.i84.i:                            ; preds = %.lr.ph.i.i.i81.i, %middle.block487, %bb.cv
  store i32 %i.aam, ptr @name_slab.2, align 8, !tbaa !30
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i.i.i84.i, %bb.cu
  %.pre.i.i.i61.pre67.i = phi ptr [ %i.aap, %._crit_edge.i.i.i84.i ], [ %.pre.i.i.i61.pre68.i, %bb.cu ]
  %.pre.i.i.i79.pre4157.i = phi ptr [ %i.aap, %._crit_edge.i.i.i84.i ], [ %.pre.i.i.i79.pre4158.i, %bb.cu ]
  %.pre.i.i.i7944.i = phi ptr [ %i.aap, %._crit_edge.i.i.i84.i ], [ %.pre.i.i.i79.i, %bb.cu ] ; 2 uses
  %i.aba = zext nneg i32 %i.aaj to i64            ; 2 uses
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i7944.i, i64 %i.aba
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !80 ; 2 uses
  %.not34.i.i.i85.i = icmp eq ptr %i.abc, null
  br i1 %.not34.i.i.i85.i, label %bb.cx, label %commit_to_name.exit86.i

bb.cx:                                            ; preds = %bb.cw
  %i.abd = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.abe = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 4 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.aba
  store ptr %i.abd, ptr %i.abf, align 8, !tbaa !80
  br label %commit_to_name.exit86.i

commit_to_name.exit86.i:                          ; preds = %bb.cx, %bb.cw
  %.pre.i.i.i61.pre66.i = phi ptr [ %.pre.i.i.i61.pre67.i, %bb.cw ], [ %i.abe, %bb.cx ]
  %.pre.i.i.i79.pre4156.i = phi ptr [ %.pre.i.i.i79.pre4157.i, %bb.cw ], [ %i.abe, %bb.cx ]
  %.pre.i.i.i7943.i = phi ptr [ %.pre.i.i.i7944.i, %bb.cw ], [ %i.abe, %bb.cx ]
  %i.abg = phi ptr [ %i.abc, %bb.cw ], [ %i.abd, %bb.cx ]
  %i.abh = zext nneg i32 %i.aak to i64
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abh
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !86
  %.not55.i = icmp eq ptr %i.abj, null
  br i1 %.not55.i, label %bb.cy, label %bb.dn, !llvm.loop !97

bb.cy:                                            ; preds = %commit_to_name.exit86.i
  %i.abk = load i32, ptr %i.aad, align 8, !tbaa !98 ; 2 uses
  %i.abl = load ptr, ptr %i.aaa, align 8, !tbaa !100 ; 4 uses
  switch i32 %i.abk, label %bb.db [
    i32 0, label %bb.cz
    i32 1, label %bb.da
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.abm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.abl) #18
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.abl, i64 noundef %i.abm) #16
  br label %bb.dc

bb.da:                                            ; preds = %bb.cy
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.82, ptr noundef %i.abl) #16
  br label %bb.dc

bb.db:                                            ; preds = %bb.cy
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.83, ptr noundef %i.abl, i32 noundef %i.abk) #16
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %i.abn = icmp eq i32 %.04215.i, 0
  br i1 %i.abn, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.abo = load i64, ptr %4, align 8, !tbaa !101  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.abo, 0
  br i1 %.not.i.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_avail.exit.i.i

strbuf_avail.exit.i.i:                            ; preds = %bb.dd
  %i.abp = load i64, ptr %i.xv, align 8, !tbaa !103 ; 2 uses
  %.neg.i.i = add i64 %i.abp, 1                   ; 2 uses
  %.not.i.i232 = icmp eq i64 %i.abo, %.neg.i.i
  br i1 %.not.i.i232, label %strbuf_avail.exit.thread.i.i, label %strbuf_addch.exit.i

strbuf_avail.exit.thread.i.i:                     ; preds = %strbuf_avail.exit.i.i, %bb.dd
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef 1) #16
  %.pre.i.i = load i64, ptr %i.xv, align 8, !tbaa !103 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i, 1
  br label %strbuf_addch.exit.i

strbuf_addch.exit.i:                              ; preds = %strbuf_avail.exit.thread.i.i, %strbuf_avail.exit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %strbuf_avail.exit.thread.i.i ], [ %.neg.i.i, %strbuf_avail.exit.i.i ]
  %i.abq = phi i64 [ %.pre.i.i, %strbuf_avail.exit.thread.i.i ], [ %i.abp, %strbuf_avail.exit.i.i ]
  %i.abr = load ptr, ptr %i.xw, align 8, !tbaa !104
  store i64 %.pre-phi.i.i, ptr %i.xv, align 8, !tbaa !103
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abq
  store i8 94, ptr %i.abs, align 1, !tbaa !42
  %i.abt = load ptr, ptr %i.xw, align 8, !tbaa !104
  %i.abu = load i64, ptr %i.xv, align 8, !tbaa !103
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abu
  store i8 0, ptr %i.abv, align 1, !tbaa !42
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.84, i32 noundef %i.aah) #16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %strbuf_addch.exit.i
  %i.abw = call ptr @strbuf_detach(ptr noundef nonnull %4, ptr noundef null) #16
  %.val8.i.i = load i32, ptr %i.aai, align 8, !tbaa !79 ; 2 uses
  %i.abx = udiv i32 %.val8.i.i, 65532             ; 6 uses
  %i.aby = urem i32 %.val8.i.i, 65532
  %i.abz = load i32, ptr @name_slab.2, align 8, !tbaa !30
  %.not.i.i.i87.i = icmp ugt i32 %i.abz, %i.abx
  %.pre.i.i.i88.i = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 2 uses
  br i1 %.not.i.i.i87.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aca = add nuw nsw i32 %i.abx, 1              ; 2 uses
  %i.acb = shl nuw nsw i32 %i.aca, 3
  %i.acc = zext nneg i32 %i.acb to i64
  %i.acd = call ptr @xrealloc(ptr noundef %.pre.i.i.i88.i, i64 noundef %i.acc) #16 ; 4 uses
  store ptr %i.acd, ptr @name_slab.3, align 8, !tbaa !35
  %i.ace = load i32, ptr @name_slab.2, align 8, !tbaa !30 ; 5 uses
  %.not331.i.i.i89.i = icmp ugt i32 %i.ace, %i.abx
  br i1 %.not331.i.i.i89.i, label %._crit_edge.i.i.i93.i, label %.lr.ph.i.i.i90.i.preheader

.lr.ph.i.i.i90.i.preheader:                       ; preds = %bb.dg
  %18 = add nuw nsw i32 %i.abx, 1
  %19 = sub nuw i32 %18, %i.ace                   ; 3 uses
  %min.iters.check471 = icmp samesign ult i32 %19, 4
  br i1 %min.iters.check471, label %.lr.ph.i.i.i90.i.preheader524, label %vector.ph472

vector.ph472:                                     ; preds = %.lr.ph.i.i.i90.i.preheader
  %n.vec473 = and i32 %19, 262140                 ; 3 uses
  %i.acf = add i32 %i.ace, %n.vec473
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph472
  %index475 = phi i32 [ 0, %vector.ph472 ], [ %index.next476, %vector.body474 ] ; 2 uses
  %i.acg = add i32 %i.ace, %index475
  %i.ach = zext i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.ach ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.aci, align 8, !tbaa !80
  store <2 x ptr> splat (ptr null), ptr %i.acj, align 8, !tbaa !80
  %index.next476 = add nuw i32 %index475, 4       ; 2 uses
  %i.ack = icmp eq i32 %index.next476, %n.vec473
  br i1 %i.ack, label %middle.block477, label %vector.body474, !llvm.loop !105

middle.block477:                                  ; preds = %vector.body474
  %cmp.n478 = icmp eq i32 %19, %n.vec473
  br i1 %cmp.n478, label %._crit_edge.i.i.i93.i, label %.lr.ph.i.i.i90.i.preheader524

.lr.ph.i.i.i90.i.preheader524:                    ; preds = %.lr.ph.i.i.i90.i.preheader, %middle.block477
  %.0302.i.i.i91.i.ph = phi i32 [ %i.ace, %.lr.ph.i.i.i90.i.preheader ], [ %i.acf, %middle.block477 ]
  br label %.lr.ph.i.i.i90.i

.lr.ph.i.i.i90.i:                                 ; preds = %.lr.ph.i.i.i90.i.preheader524, %.lr.ph.i.i.i90.i
  %.0302.i.i.i91.i = phi i32 [ %i.acn, %.lr.ph.i.i.i90.i ], [ %.0302.i.i.i91.i.ph, %.lr.ph.i.i.i90.i.preheader524 ] ; 2 uses
  %i.acl = zext i32 %.0302.i.i.i91.i to i64
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.acl
  store ptr null, ptr %i.acm, align 8, !tbaa !80
  %i.acn = add i32 %.0302.i.i.i91.i, 1            ; 2 uses
  %.not33.i.i.i92.i = icmp ugt i32 %i.acn, %i.abx
  br i1 %.not33.i.i.i92.i, label %._crit_edge.i.i.i93.i, label %.lr.ph.i.i.i90.i, !llvm.loop !106

._crit_edge.i.i.i93.i:                            ; preds = %.lr.ph.i.i.i90.i, %middle.block477, %bb.dg
  store i32 %i.aca, ptr @name_slab.2, align 8, !tbaa !30
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge.i.i.i93.i, %bb.df
  %i.aco = phi ptr [ %i.acd, %._crit_edge.i.i.i93.i ], [ %.pre.i.i.i88.i, %bb.df ]
  %i.acp = zext nneg i32 %i.abx to i64            ; 2 uses
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.aco, i64 %i.acp
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !80 ; 2 uses
  %.not34.i.i.i94.i = icmp eq ptr %i.acr, null
  br i1 %.not34.i.i.i94.i, label %bb.di, label %commit_name_slab_at.exit.i.i

bb.di:                                            ; preds = %bb.dh
  %i.acs = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.act = load ptr, ptr @name_slab.3, align 8, !tbaa !35
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.acp
  store ptr %i.acs, ptr %i.acu, align 8, !tbaa !80
  br label %commit_name_slab_at.exit.i.i

commit_name_slab_at.exit.i.i:                     ; preds = %bb.di, %bb.dh
  %i.acv = phi ptr [ %i.acr, %bb.dh ], [ %i.acs, %bb.di ]
  %i.acw = zext nneg i32 %i.aby to i64
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %i.acw
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !86 ; 2 uses
  %.not.i95.i = icmp eq ptr %i.acy, null
  br i1 %.not.i95.i, label %bb.dj, label %name_commit.exit.i

bb.dj:                                            ; preds = %commit_name_slab_at.exit.i.i
  %i.acz = call ptr @xmalloc(i64 noundef 16) #16  ; 2 uses
  %.val.i.i = load i32, ptr %i.aai, align 8, !tbaa !79 ; 2 uses
  %i.ada = udiv i32 %.val.i.i, 65532              ; 6 uses
  %i.adb = urem i32 %.val.i.i, 65532
  %i.adc = load i32, ptr @name_slab.2, align 8, !tbaa !30
  %.not.i.i9.i.i = icmp ugt i32 %i.adc, %i.ada
  %.pre.i.i10.i.i = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 2 uses
  br i1 %.not.i.i9.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.add = add nuw nsw i32 %i.ada, 1              ; 2 uses
  %i.ade = shl nuw nsw i32 %i.add, 3
  %i.adf = zext nneg i32 %i.ade to i64
  %i.adg = call ptr @xrealloc(ptr noundef %.pre.i.i10.i.i, i64 noundef %i.adf) #16 ; 4 uses
  store ptr %i.adg, ptr @name_slab.3, align 8, !tbaa !35
  %i.adh = load i32, ptr @name_slab.2, align 8, !tbaa !30 ; 5 uses
  %.not331.i.i11.i.i = icmp ugt i32 %i.adh, %i.ada
  br i1 %.not331.i.i11.i.i, label %._crit_edge.i.i15.i.i, label %.lr.ph.i.i12.i.i.preheader

.lr.ph.i.i12.i.i.preheader:                       ; preds = %bb.dk
  %20 = add nuw nsw i32 %i.ada, 1
  %21 = sub nuw i32 %20, %i.adh                   ; 3 uses
  %min.iters.check461 = icmp samesign ult i32 %21, 4
  br i1 %min.iters.check461, label %.lr.ph.i.i12.i.i.preheader523, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph.i.i12.i.i.preheader
  %n.vec463 = and i32 %21, 262140                 ; 3 uses
  %i.adi = add i32 %i.adh, %n.vec463
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i32 [ 0, %vector.ph462 ], [ %index.next466, %vector.body464 ] ; 2 uses
  %i.adj = add i32 %i.adh, %index465
  %i.adk = zext i32 %i.adj to i64
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.adg, i64 %i.adk ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.adl, align 8, !tbaa !80
  store <2 x ptr> splat (ptr null), ptr %i.adm, align 8, !tbaa !80
  %index.next466 = add nuw i32 %index465, 4       ; 2 uses
  %i.adn = icmp eq i32 %index.next466, %n.vec463
  br i1 %i.adn, label %middle.block467, label %vector.body464, !llvm.loop !107

middle.block467:                                  ; preds = %vector.body464
  %cmp.n468 = icmp eq i32 %21, %n.vec463
  br i1 %cmp.n468, label %._crit_edge.i.i15.i.i, label %.lr.ph.i.i12.i.i.preheader523

.lr.ph.i.i12.i.i.preheader523:                    ; preds = %.lr.ph.i.i12.i.i.preheader, %middle.block467
  %.0302.i.i13.i.i.ph = phi i32 [ %i.adh, %.lr.ph.i.i12.i.i.preheader ], [ %i.adi, %middle.block467 ]
  br label %.lr.ph.i.i12.i.i

.lr.ph.i.i12.i.i:                                 ; preds = %.lr.ph.i.i12.i.i.preheader523, %.lr.ph.i.i12.i.i
  %.0302.i.i13.i.i = phi i32 [ %i.adq, %.lr.ph.i.i12.i.i ], [ %.0302.i.i13.i.i.ph, %.lr.ph.i.i12.i.i.preheader523 ] ; 2 uses
  %i.ado = zext i32 %.0302.i.i13.i.i to i64
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.adg, i64 %i.ado
  store ptr null, ptr %i.adp, align 8, !tbaa !80
  %i.adq = add i32 %.0302.i.i13.i.i, 1            ; 2 uses
  %.not33.i.i14.i.i = icmp ugt i32 %i.adq, %i.ada
  br i1 %.not33.i.i14.i.i, label %._crit_edge.i.i15.i.i, label %.lr.ph.i.i12.i.i, !llvm.loop !108

._crit_edge.i.i15.i.i:                            ; preds = %.lr.ph.i.i12.i.i, %middle.block467, %bb.dk
  store i32 %i.add, ptr @name_slab.2, align 8, !tbaa !30
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge.i.i15.i.i, %bb.dj
  %i.adr = phi ptr [ %i.adg, %._crit_edge.i.i15.i.i ], [ %.pre.i.i10.i.i, %bb.dj ]
  %i.ads = zext nneg i32 %i.ada to i64            ; 2 uses
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.ads
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !80 ; 2 uses
  %.not34.i.i16.i.i = icmp eq ptr %i.adu, null
  br i1 %.not34.i.i16.i.i, label %bb.dm, label %commit_name_slab_at.exit17.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.adv = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.adw = load ptr, ptr @name_slab.3, align 8, !tbaa !35
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.ads
  store ptr %i.adv, ptr %i.adx, align 8, !tbaa !80
  br label %commit_name_slab_at.exit17.i.i

commit_name_slab_at.exit17.i.i:                   ; preds = %bb.dm, %bb.dl
  %i.ady = phi ptr [ %i.adu, %bb.dl ], [ %i.adv, %bb.dm ]
  %i.adz = zext nneg i32 %i.adb to i64
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.adz
  store ptr %i.acz, ptr %i.aea, align 8, !tbaa !86
  br label %name_commit.exit.i

name_commit.exit.i:                               ; preds = %commit_name_slab_at.exit17.i.i, %commit_name_slab_at.exit.i.i
  %.0.i.i231 = phi ptr [ %i.acy, %commit_name_slab_at.exit.i.i ], [ %i.acz, %commit_name_slab_at.exit17.i.i ] ; 2 uses
  store ptr %i.abw, ptr %.0.i.i231, align 8, !tbaa !100
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0.i.i231, i64 8
  store i32 0, ptr %i.aeb, align 8, !tbaa !98
  %i.aec = add nsw i32 %.313.i, 1
  %i.aed = call fastcc i32 @name_first_parent_chain(ptr noundef nonnull %i.aae) ; 0 uses
  %.pre.i.i.i79.pre.i = load ptr, ptr @name_slab.3, align 8, !tbaa !35 ; 3 uses
  br label %bb.dn

bb.dn:                                            ; preds = %name_commit.exit.i, %commit_to_name.exit86.i
  %.pre.i.i.i61.pre65.i = phi ptr [ %.pre.i.i.i79.pre.i, %name_commit.exit.i ], [ %.pre.i.i.i61.pre66.i, %commit_to_name.exit86.i ] ; 2 uses
  %.pre.i.i.i79.pre4155.i = phi ptr [ %.pre.i.i.i79.pre.i, %name_commit.exit.i ], [ %.pre.i.i.i79.pre4156.i, %commit_to_name.exit86.i ] ; 2 uses
  %.pre.i.i.i7942.i = phi ptr [ %.pre.i.i.i79.pre.i, %name_commit.exit.i ], [ %.pre.i.i.i7943.i, %commit_to_name.exit86.i ] ; 2 uses
  %.4.i = phi i32 [ %i.aec, %name_commit.exit.i ], [ %.313.i, %commit_to_name.exit86.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.not54.i = icmp eq ptr %i.aag, null
  br i1 %.not54.i, label %.loopexit.i230, label %bb.cu

.loopexit.i230:                                   ; preds = %bb.dn, %commit_to_name.exit77.i, %commit_to_name.exit68.i
  %.pre.i.i.i61.pre71.i = phi ptr [ %.pre.i.i.i61.pre72.i, %commit_to_name.exit68.i ], [ %.pre.i.i.i61.pre69.i, %commit_to_name.exit77.i ], [ %.pre.i.i.i61.pre65.i, %bb.dn ] ; 3 uses
  %.pre.i.i.i79.pre4163.i = phi ptr [ %.pre.i.i.i79.pre4160.i, %commit_to_name.exit68.i ], [ %.pre.i.i.i79.pre41.i, %commit_to_name.exit77.i ], [ %.pre.i.i.i79.pre4155.i, %bb.dn ]
  %.pre.i.i.i6150.i = phi ptr [ %.pre.i.i.i6151.i, %commit_to_name.exit68.i ], [ %.pre.i.i.i6148.i, %commit_to_name.exit77.i ], [ %.pre.i.i.i7942.i, %bb.dn ]
  %.5.i = phi i32 [ %.24619.i, %commit_to_name.exit68.i ], [ %.24619.i, %commit_to_name.exit77.i ], [ %.4.i, %bb.dn ] ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.220.i, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !68 ; 2 uses
  %.not51.i = icmp eq ptr %i.aef, null
  br i1 %.not51.i, label %._crit_edge23.i, label %.lr.ph22.i.backedge

.lr.ph22.i.backedge:                              ; preds = %.loopexit.i230, %._crit_edge23.i
  %.pre.i.i.i79.pre4162.i.be = phi ptr [ %.pre.i.i.i79.pre4163.i, %.loopexit.i230 ], [ %.pre.i.i.i61.pre71.i, %._crit_edge23.i ]
  %.pre.i.i.i61.i.be = phi ptr [ %.pre.i.i.i6150.i, %.loopexit.i230 ], [ %.pre.i.i.i61.pre71.i, %._crit_edge23.i ]
  %.220.i.be = phi ptr [ %i.aef, %.loopexit.i230 ], [ %.0161329.pre376, %._crit_edge23.i ]
  %.24619.i.be = phi i32 [ %.5.i, %.loopexit.i230 ], [ 0, %._crit_edge23.i ]
  br label %.lr.ph22.i, !llvm.loop !109

._crit_edge23.i:                                  ; preds = %.loopexit.i230
  %.not52.i = icmp eq i32 %.5.i, 0
  br i1 %.not52.i, label %name_commits.exit.loopexit, label %.lr.ph22.i.backedge

name_commits.exit.loopexit:                       ; preds = %._crit_edge23.i
  %.0161329.pre = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %name_commits.exit

name_commits.exit:                                ; preds = %name_commits.exit.loopexit, %.thread256
  %.0161329 = phi ptr [ %.0161329.pre, %name_commits.exit.loopexit ], [ %.0161329.pre376, %.thread256 ] ; 2 uses
  %.not196330 = icmp eq ptr %.0161329, null
  br i1 %.not196330, label %show_merge_base.exit, label %.lr.ph333

.lr.ph333:                                        ; preds = %name_commits.exit
  %.neg = shl i32 -4, %.0157.lcssa434
  %i.aeg = or disjoint i32 %.neg, 3
  %i.aeh = load i32, ptr @column_colors_ansi_max, align 4
  %umax = call i32 @llvm.umax.i32(i32 %.0157.lcssa434, i32 1)
  %min.iters.check511 = icmp ult i32 %.0157.lcssa434, 8
  %n.vec513 = and i32 %.0157.lcssa434, -8         ; 4 uses
  %i.aei = icmp eq i32 %n.vec513, 8
  %i.aej = icmp eq i32 %n.vec513, 16
  %cmp.n519 = icmp eq i32 %.0157.lcssa434, %n.vec513
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph333, %.thread262
  %.0161332 = phi ptr [ %.0161329, %.lr.ph333 ], [ %.0161, %.thread262 ] ; 2 uses
  %.0162331 = phi i32 [ 0, %.lr.ph333 ], [ %i.aes, %.thread262 ]
  %i.aek = load ptr, ptr %.0161332, align 8, !tbaa !66 ; 4 uses
  %i.ael = load i64, ptr %i.aek, align 8
  %i.aem = lshr i64 %i.ael, 32
  %i.aen = trunc nuw i64 %i.aem to i32            ; 3 uses
  %i.aeo = and i32 %i.aen, 536870911              ; 2 uses
  %i.aep = or i32 %i.aeo, %i.aeg
  %i.aeq = icmp eq i32 %i.aep, -1                 ; 2 uses
  %i.aer = zext i1 %i.aeq to i32
  %i.aes = or i32 %.0162331, %i.aer               ; 2 uses
  br i1 %i.tw, label %bb.dp, label %bb.dz

bb.dp:                                            ; preds = %bb.do
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aek, i64 56
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !61 ; 2 uses
  %.not197 = icmp eq ptr %i.aeu, null
  br i1 %.not197, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !68
  %i.aex = icmp ne ptr %i.aew, null
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.aey = phi i1 [ false, %bb.dp ], [ %i.aex, %bb.dq ] ; 2 uses
  %i.aez = load i32, ptr %i.n, align 4, !tbaa !15
  %i.afa = icmp eq i32 %i.aez, 0
  %or.cond19 = select i1 %i.afa, i1 true, i1 %i.aeq
  %i.afb = and i32 %i.aen, 4
  %.not198 = icmp eq i32 %i.afb, 0
  %or.cond208 = select i1 %or.cond19, i1 true, i1 %.not198
  br i1 %or.cond208, label %bb.ds, label %.thread262

bb.ds:                                            ; preds = %bb.dr
  %i.afc = load i32, ptr %i.o, align 4, !tbaa !15
  %i.afd = icmp eq i32 %i.afc, 0
  %or.cond21 = select i1 %i.afd, i1 %i.aey, i1 false
  br i1 %or.cond21, label %.preheader, label %omit_in_dense.exit.thread.preheader

bb.dt:                                            ; preds = %.preheader
  %indvars.iv.next.i236 = add nuw nsw i64 %indvars.iv.i235, 1 ; 2 uses
  %exitcond.not.i237 = icmp eq i64 %indvars.iv.next.i236, %.lcssa286435
  br i1 %exitcond.not.i237, label %bb.du, label %.preheader, !llvm.loop !110

.preheader:                                       ; preds = %bb.ds, %bb.dt
  %indvars.iv.i235 = phi i64 [ %indvars.iv.next.i236, %bb.dt ], [ 0, %bb.ds ] ; 2 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i235
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !51
  %i.afg = icmp eq ptr %i.aff, %i.aek
  br i1 %i.afg, label %omit_in_dense.exit.thread.preheader, label %bb.dt

bb.du:                                            ; preds = %bb.dt
  %i.afh = and i32 %i.aen, 536870908              ; 2 uses
  br i1 %min.iters.check511, label %scalar.ph510.preheader, label %vector.ph512

vector.ph512:                                     ; preds = %bb.du
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.afh, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.afi = and <4 x i32> %broadcast.splat, <i32 4, i32 8, i32 16, i32 32>
  %i.afj = and <4 x i32> %broadcast.splat, <i32 64, i32 128, i32 256, i32 512>
  %i.afk = icmp ne <4 x i32> %i.afi, zeroinitializer
  %i.afl = icmp ne <4 x i32> %i.afj, zeroinitializer
  %i.afm = zext <4 x i1> %i.afk to <4 x i32>      ; 2 uses
  %i.afn = zext <4 x i1> %i.afl to <4 x i32>      ; 2 uses
  br i1 %i.aei, label %middle.block518, label %vector.body514.1

vector.body514.1:                                 ; preds = %vector.ph512
  %i.afo = and <4 x i32> %broadcast.splat, <i32 1024, i32 2048, i32 4096, i32 8192>
  %i.afp = and <4 x i32> %broadcast.splat, <i32 16384, i32 32768, i32 65536, i32 131072>
  %i.afq = icmp ne <4 x i32> %i.afo, zeroinitializer
  %i.afr = icmp ne <4 x i32> %i.afp, zeroinitializer
  %i.afs = zext <4 x i1> %i.afq to <4 x i32>
  %i.aft = zext <4 x i1> %i.afr to <4 x i32>
  %i.afu = add nuw nsw <4 x i32> %i.afm, %i.afs   ; 2 uses
end_hunk_0
