inline.NumInlined: 217
inline.NumDeleted: 89
begin_hunk_0_@glob_helper:bb.a

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store i32 %0, ptr %13, align 8, !tbaa !116
  store ptr %i.ik, ptr %i.gx, align 8, !tbaa !119
  store ptr %21, ptr %i.gy, align 8, !tbaa !120
  store i32 256, ptr %i.gz, align 4, !tbaa !121
  %i.iv = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_fstatat, ptr noundef nonnull %13, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #20
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = trunc i64 %i.iw to i32                  ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %bb.cp, label %do_lstat.exit396

bb.cp:                                            ; preds = %bb.co
  %i.iz = call ptr @rb_errno_ptr() #20
  br i1 %.not7.i394, label %do_lstat.exit396.thread, label %switch.early.test.i395

switch.early.test.i395:                           ; preds = %bb.cp
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !7
  switch i32 %i.ja, label %bb.cq [
    i32 20, label %do_lstat.exit396.thread
    i32 2, label %do_lstat.exit396.thread
  ]

bb.cq:                                            ; preds = %switch.early.test.i395
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr @__func__.do_lstat, ptr %12, align 8, !tbaa !122
  store ptr %i.ik, ptr %i.hb, align 8, !tbaa !124
  store ptr %11, ptr %i.hc, align 8, !tbaa !125
  %i.jb = call i64 @rb_protect(ptr noundef nonnull @sys_warning_1, i64 noundef %i.hd, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %do_lstat.exit396.thread

do_lstat.exit396.thread:                          ; preds = %bb.cp, %switch.early.test.i395, %switch.early.test.i395, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.cs

do_lstat.exit396:                                 ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.jc = icmp eq i32 %i.ix, 0
  br i1 %i.jc, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %do_lstat.exit396
  %i.jd = load i32, ptr %i.ha, align 8, !tbaa !126
  %i.je = lshr i32 %i.jd, 12
  %i.jf = and i32 %i.je, 15
  br label %bb.cs

bb.cs:                                            ; preds = %do_lstat.exit396.thread, %do_lstat.exit396, %bb.cr, %bb.cn, %bb.cm
  %.2287 = phi i32 [ %i.jf, %bb.cr ], [ %spec.select, %bb.cm ], [ %spec.select, %bb.cn ], [ -1, %do_lstat.exit396 ], [ -1, %do_lstat.exit396.thread ]
  %.2287.fr = freeze i32 %.2287                   ; 2 uses
  br i1 %i.hh, label %rb_mul_size_overflow.exit.i.i, label %glob_alloc_n.exit

rb_mul_size_overflow.exit.i.i:                    ; preds = %bb.cs
  call void @rb_memerror() #22
  unreachable

glob_alloc_n.exit:                                ; preds = %bb.cs
  %i.jg = call noalias noundef ptr @malloc(i64 noundef %i.hi) #23 ; 6 uses
  %.not356 = icmp eq ptr %i.jg, null
  br i1 %.not356, label %bb.da, label %.preheader

.preheader:                                       ; preds = %glob_alloc_n.exit
  br i1 %i.c, label %.lr.ph565, label %._crit_edge566

.lr.ph565:                                        ; preds = %.preheader
  %i.jh = and i32 %.2287.fr, -5
  %or.cond16 = icmp eq i32 %i.jh, 0
  %i.ji = icmp samesign ult i32 %.0284, %i.gw
  br i1 %or.cond16, label %.lr.ph565.split.us, label %.lr.ph565.split

.lr.ph565.split.us:                               ; preds = %.lr.ph565, %bb.cz
  %.1280564.us = phi ptr [ %i.jz, %bb.cz ], [ %6, %.lr.ph565 ] ; 2 uses
  %.0288563.us = phi ptr [ %.3291.us, %bb.cz ], [ %i.jg, %.lr.ph565 ] ; 4 uses
  %i.jj = load ptr, ptr %.1280564.us, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !102 ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 4
  br i1 %i.jm, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %.lr.ph565.split.us
  br i1 %i.ji, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.jn = getelementptr i8, ptr %.0288563.us, i64 8
  store ptr %i.jj, ptr %.0288563.us, align 8, !tbaa !28
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.1289.us = phi ptr [ %i.jn, %bb.cu ], [ %.0288563.us, %bb.ct ]
  %i.jo = getelementptr i8, ptr %i.jj, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert588 = getelementptr i8, ptr %i.jp, i64 8
  %.pre589 = load i32, ptr %.phi.trans.insert588, align 8, !tbaa !102
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.lr.ph565.split.us
  %i.jq = phi i32 [ %.pre589, %bb.cv ], [ %i.jl, %.lr.ph565.split.us ]
  %.2290.us = phi ptr [ %.1289.us, %bb.cv ], [ %.0288563.us, %.lr.ph565.split.us ] ; 5 uses
  %.0283.us = phi ptr [ %i.jp, %bb.cv ], [ %i.jj, %.lr.ph565.split.us ] ; 3 uses
  switch i32 %i.jq, label %bb.cz [
    i32 2, label %bb.cy
    i32 1, label %bb.cx
    i32 0, label %bb.cx
    i32 3, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.jr = load ptr, ptr %.0283.us, align 8, !tbaa !32
  %i.js = call fastcc i32 @fnmatch(ptr noundef %i.jr, ptr noundef %11, ptr noundef %i.ip, i32 noundef %i.go)
  %.not359.not.us = icmp eq i32 %i.js, 0
  br i1 %.not359.not.us, label %.sink.split, label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  store ptr %i.ip, ptr %24, align 8, !tbaa !144
  store ptr %.0.i383472, ptr %i.hj, align 8, !tbaa !146
  store i32 %i.go, ptr %i.hk, align 8, !tbaa !147
  %i.jt = load ptr, ptr %.0283.us, align 8, !tbaa !32
  %i.ju = call fastcc i32 @ruby_brace_expand(ptr noundef %i.jt, i32 noundef %i.go, ptr noundef nonnull @dirent_match_brace, i64 noundef %i.hl, ptr noundef %11, i64 noundef 0)
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.sink.split, label %bb.cz

.sink.split:                                      ; preds = %bb.cy, %bb.cx
  %i.jw = getelementptr i8, ptr %.0283.us, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !30
  %i.jy = getelementptr i8, ptr %.2290.us, i64 8
  store ptr %i.jx, ptr %.2290.us, align 8, !tbaa !28
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split, %bb.cy, %bb.cx, %bb.cw
  %.3291.us = phi ptr [ %.2290.us, %bb.cw ], [ %.2290.us, %bb.cx ], [ %.2290.us, %bb.cy ], [ %i.jy, %.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.jz = getelementptr i8, ptr %.1280564.us, i64 8 ; 2 uses
  %i.ka = icmp ult ptr %i.jz, %7
  br i1 %i.ka, label %.lr.ph565.split.us, label %._crit_edge566, !llvm.loop !148

bb.da:                                            ; preds = %glob_alloc_n.exit
  call void @free(ptr noundef nonnull %i.ik) #20
  br label %glob_getent.exit.thread

.lr.ph565.split:                                  ; preds = %.lr.ph565, %bb.df
  %.1280564 = phi ptr [ %i.kq, %bb.df ], [ %6, %.lr.ph565 ] ; 2 uses
  %.0288563 = phi ptr [ %.3291, %bb.df ], [ %i.jg, %.lr.ph565 ] ; 5 uses
  %i.kb = load ptr, ptr %.1280564, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.kc = getelementptr i8, ptr %i.kb, i64 8
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !102 ; 2 uses
  %i.ke = icmp eq i32 %i.kd, 4
  br i1 %i.ke, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph565.split
  %i.kf = getelementptr i8, ptr %i.kb, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert586 = getelementptr i8, ptr %i.kg, i64 8
  %.pre587 = load i32, ptr %.phi.trans.insert586, align 8, !tbaa !102
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph565.split
  %i.kh = phi i32 [ %.pre587, %bb.db ], [ %i.kd, %.lr.ph565.split ]
  %.0283 = phi ptr [ %i.kg, %bb.db ], [ %i.kb, %.lr.ph565.split ] ; 3 uses
  switch i32 %i.kh, label %bb.df [
    i32 2, label %bb.dd
    i32 1, label %bb.de
    i32 0, label %bb.de
    i32 3, label %bb.de
  ]

bb.dd:                                            ; preds = %bb.dc
  store ptr %i.ip, ptr %24, align 8, !tbaa !144
  store ptr %.0.i383472, ptr %i.hj, align 8, !tbaa !146
  store i32 %i.go, ptr %i.hk, align 8, !tbaa !147
  %i.ki = load ptr, ptr %.0283, align 8, !tbaa !32
  %i.kj = call fastcc i32 @ruby_brace_expand(ptr noundef %i.ki, i32 noundef %i.go, ptr noundef nonnull @dirent_match_brace, i64 noundef %i.hl, ptr noundef %11, i64 noundef 0)
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.sink.split684, label %bb.df

bb.de:                                            ; preds = %bb.dc, %bb.dc, %bb.dc
  %i.kl = load ptr, ptr %.0283, align 8, !tbaa !32
  %i.km = call fastcc i32 @fnmatch(ptr noundef %i.kl, ptr noundef %11, ptr noundef %i.ip, i32 noundef %i.go)
  %.not359.not = icmp eq i32 %i.km, 0
  br i1 %.not359.not, label %.sink.split684, label %bb.df

.sink.split684:                                   ; preds = %bb.de, %bb.dd
  %i.kn = getelementptr i8, ptr %.0283, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !30
  %i.kp = getelementptr i8, ptr %.0288563, i64 8
  store ptr %i.ko, ptr %.0288563, align 8, !tbaa !28
  br label %bb.df

bb.df:                                            ; preds = %.sink.split684, %bb.dc, %bb.de, %bb.dd
  %.3291 = phi ptr [ %.0288563, %bb.dc ], [ %.0288563, %bb.de ], [ %.0288563, %bb.dd ], [ %i.kp, %.sink.split684 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.kq = getelementptr i8, ptr %.1280564, i64 8  ; 2 uses
  %i.kr = icmp ult ptr %i.kq, %7
  br i1 %i.kr, label %.lr.ph565.split, label %._crit_edge566, !llvm.loop !148

._crit_edge566:                                   ; preds = %bb.df, %bb.cz, %.preheader
  %.0288.lcssa = phi ptr [ %i.jg, %.preheader ], [ %.3291.us, %bb.cz ], [ %.3291, %bb.df ]
  %i.ks = add i64 %i.hm, %i.ia
  %i.kt = call fastcc i32 @glob_helper(i32 noundef %0, ptr noundef nonnull %i.ik, i64 noundef %2, i64 noundef %i.ks, i32 noundef 1, i32 noundef %.2287.fr, ptr noundef %i.jg, ptr noundef %.0288.lcssa, i32 noundef %i.go, ptr noundef %9, i64 noundef %10, ptr noundef %11)
  %.fr505 = freeze i32 %i.kt                      ; 2 uses
  call void @free(ptr noundef %i.ik) #20
  call void @free(ptr noundef %i.jg) #20
  %.not357 = icmp eq i32 %.fr505, 0
  br i1 %.not357, label %select.unfold.backedge, label %glob_getent.exit.thread

select.unfold.backedge:                           ; preds = %._crit_edge566, %bb.cf, %bb.ce
  br label %select.unfold, !llvm.loop !149

glob_getent.exit.thread:                          ; preds = %glob_alloc_n.exit.i387, %._crit_edge566, %bb.da
  %.6434 = phi i32 [ -1, %bb.da ], [ -1, %glob_alloc_n.exit.i387 ], [ %.fr505, %._crit_edge566 ] ; 2 uses
  br i1 %.not.i378, label %.thread477, label %glob_getent.exit.thread.thread

glob_getent.exit.thread.thread:                   ; preds = %bb.ca, %glob_getent.exit.thread
  %.6434501 = phi i32 [ %.6434, %glob_getent.exit.thread ], [ 0, %bb.ca ]
  %i.ku = load ptr, ptr %23, align 8, !tbaa !20
  %i.kv = call i32 @closedir(ptr noundef %i.ku)
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.dg, label %.thread487

bb.dg:                                            ; preds = %glob_getent.exit.thread.thread
  %i.kx = call ptr @rb_errno_ptr() #20
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.ky, ptr noundef nonnull @.str.50) #24
  unreachable

.thread477:                                       ; preds = %bb.cb, %glob_getent.exit, %glob_getent.exit.thread
  %.6434480 = phi i32 [ %.6434, %glob_getent.exit.thread ], [ 0, %glob_getent.exit ], [ 0, %bb.cb ] ; 2 uses
  %i.kz = load ptr, ptr %i.gq, align 8, !tbaa !20 ; 2 uses
  %.not12.i = icmp eq ptr %i.kz, null
  br i1 %.not12.i, label %.thread487, label %bb.dh

bb.dh:                                            ; preds = %.thread477
  %i.la = load i64, ptr %23, align 8, !tbaa !20   ; 2 uses
  %.not14.i = icmp eq i64 %i.la, 0
  br i1 %.not14.i, label %._crit_edge.i401, label %.lr.ph.i399

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i399
  %.pre.i400 = load ptr, ptr %i.gq, align 8, !tbaa !20
  br label %._crit_edge.i401

._crit_edge.i401:                                 ; preds = %._crit_edge.loopexit.i, %bb.dh
  %i.lb = phi ptr [ %.pre.i400, %._crit_edge.loopexit.i ], [ %i.kz, %bb.dh ]
  call void @free(ptr noundef %i.lb) #20
  br label %.thread487

.lr.ph.i399:                                      ; preds = %bb.dh, %.lr.ph.i399
  %.013.i = phi i64 [ %i.ld, %.lr.ph.i399 ], [ 0, %bb.dh ] ; 2 uses
  %i.lc = load ptr, ptr %i.gq, align 8, !tbaa !20
  %i.ld = add nuw i64 %.013.i, 1                  ; 2 uses
  %i.le = getelementptr [8 x i8], ptr %i.lc, i64 %.013.i
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !140
  call void @free(ptr noundef %i.lf) #20
  %exitcond.not.i = icmp eq i64 %i.ld, %i.la
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i399, !llvm.loop !143

.thread487:                                       ; preds = %glob_getent.exit.thread.thread, %.thread477, %._crit_edge.i401
  %.7435.ph = phi i32 [ %.6434480, %._crit_edge.i401 ], [ %.6434480, %.thread477 ], [ %.6434501, %glob_getent.exit.thread.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %.thread451

bb.di:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.7435 = phi i32 [ %i.gi, %bb.bx ], [ 0, %bb.by ], [ 0, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %.thread451

bb.dj:                                            ; preds = %.thread455
  br i1 %.0294.lcssa662, label %.thread451, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lg = ptrtoint ptr %7 to i64
  %i.lh = ptrtoint ptr %6 to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 3 uses
  %i.lj = icmp ugt i64 %i.li, 9223372036854775800
  br i1 %i.lj, label %rb_mul_size_overflow.exit.i.i402, label %glob_alloc_n.exit403

rb_mul_size_overflow.exit.i.i402:                 ; preds = %bb.dk
  call void @rb_memerror() #22
  unreachable

glob_alloc_n.exit403:                             ; preds = %bb.dk
  %i.lk = call noalias noundef ptr @malloc(i64 noundef %i.li) #23 ; 5 uses
  %.not340.not = icmp eq ptr %i.lk, null
  br i1 %.not340.not, label %.thread451, label %.preheader507

.preheader507:                                    ; preds = %glob_alloc_n.exit403
  br i1 %i.c, label %.lr.ph547, label %.thread494

.preheader506:                                    ; preds = %.lr.ph547
  %i.ll = icmp ult ptr %i.lk, %i.lt
  br i1 %i.ll, label %.lr.ph558, label %.thread494

.lr.ph558:                                        ; preds = %.preheader506
  %.not.i413 = icmp ne i32 %4, 0                  ; 2 uses
  %i.lm = zext i1 %.not.i413 to i64
  %i.ln = add i64 %i.b, 1                         ; 2 uses
  %i.lo = add i64 %i.ln, %i.lm
  %.not.i.i416 = icmp eq i64 %i.b, 0
  br label %bb.dl

.lr.ph547:                                        ; preds = %.preheader507, %.lr.ph547
  %.0278546 = phi ptr [ %i.lt, %.lr.ph547 ], [ %i.lk, %.preheader507 ] ; 2 uses
  %.2281545 = phi ptr [ %i.lu, %.lr.ph547 ], [ %6, %.preheader507 ] ; 2 uses
  %i.lp = load ptr, ptr %.2281545, align 8, !tbaa !28 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 8
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !102
  %i.ls = icmp ult i32 %i.lr, 2
  %spec.select365 = select i1 %i.ls, ptr %i.lp, ptr null
  %i.lt = getelementptr i8, ptr %.0278546, i64 8  ; 5 uses
  store ptr %spec.select365, ptr %.0278546, align 8, !tbaa !28
  %i.lu = getelementptr i8, ptr %.2281545, i64 8  ; 2 uses
  %i.lv = icmp ult ptr %i.lu, %7
  br i1 %i.lv, label %.lr.ph547, label %.preheader506, !llvm.loop !150

bb.dl:                                            ; preds = %.lr.ph558, %bb.eh
  %.3282557 = phi ptr [ %i.lk, %.lr.ph558 ], [ %i.no, %bb.eh ] ; 4 uses
  %i.lw = load ptr, ptr %.3282557, align 8, !tbaa !28 ; 2 uses
  %.not341 = icmp eq ptr %i.lw, null
  br i1 %.not341, label %bb.eh, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !32 ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #21 ; 2 uses
  %i.lz = add i64 %i.ly, 1                        ; 5 uses
  %i.ma = icmp slt i64 %i.lz, 0
  br i1 %i.ma, label %rb_mul_size_overflow.exit.i.i404, label %glob_alloc_n.exit405

rb_mul_size_overflow.exit.i.i404:                 ; preds = %bb.dm
  call void @rb_memerror() #22
  unreachable

glob_alloc_n.exit405:                             ; preds = %bb.dm
  %i.mb = call noalias noundef ptr @malloc(i64 noundef %i.lz) #23 ; 12 uses
  %.not342 = icmp eq ptr %i.mb, null
  br i1 %.not342, label %.thread494, label %bb.dn

bb.dn:                                            ; preds = %glob_alloc_n.exit405
  %.not.i406 = icmp eq i64 %i.lz, 0
  br i1 %.not.i406, label %ruby_nonempty_memcpy.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.mb, ptr noundef nonnull readonly align 1 %i.lx, i64 noundef range(i64 1, 0) %i.lz, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.dn, %bb.do
  br i1 %.not, label %bb.dp, label %glob_alloc_n.exit412

bb.dp:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.mc = getelementptr i8, ptr %i.mb, i64 %i.ly
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dt, %bb.dp
  %.030.i = phi ptr [ %i.mb, %bb.dp ], [ %i.mj, %bb.dt ] ; 5 uses
  %.027.i = phi ptr [ %i.mb, %bb.dp ], [ %.128.i, %bb.dt ] ; 5 uses
  %.0.i408 = phi ptr [ %i.mb, %bb.dp ], [ %.1.i, %bb.dt ] ; 5 uses
  %i.md = load i8, ptr %.030.i, align 1, !tbaa !20
  switch i8 %i.md, label %bb.dt [
    i8 0, label %bb.du
    i8 92, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq
  %.not34.i = icmp eq ptr %.027.i, %.0.i408
  %.pre.i409 = ptrtoint ptr %.030.i to i64
  %.pre38.i = ptrtoint ptr %.0.i408 to i64
  %.pre40.i = sub i64 %.pre.i409, %.pre38.i       ; 2 uses
  br i1 %.not34.i, label %._crit_edge.i410, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %.027.i, ptr noundef nonnull align 1 %.0.i408, i64 noundef %.pre40.i, i1 noundef false) #20
  br label %._crit_edge.i410

._crit_edge.i410:                                 ; preds = %bb.ds, %bb.dr
  %i.me = getelementptr i8, ptr %.027.i, i64 %.pre40.i ; 2 uses
  %i.mf = getelementptr i8, ptr %.030.i, i64 1    ; 5 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !20
  %.not35.i = icmp eq i8 %i.mg, 0
  br i1 %.not35.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge.i410, %bb.dq
  %.131.i = phi ptr [ %i.mf, %._crit_edge.i410 ], [ %.030.i, %bb.dq ] ; 2 uses
  %.128.i = phi ptr [ %i.me, %._crit_edge.i410 ], [ %.027.i, %bb.dq ]
  %.1.i = phi ptr [ %i.mf, %._crit_edge.i410 ], [ %.0.i408, %bb.dq ]
  %i.mh = call i32 @rb_enc_mbclen(ptr noundef nonnull %.131.i, ptr noundef %i.mc, ptr noundef %11) #20
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr i8, ptr %.131.i, i64 %i.mi
  br label %bb.dq, !llvm.loop !151

bb.du:                                            ; preds = %._crit_edge.i410, %bb.dq
  %.232.i = phi ptr [ %i.mf, %._crit_edge.i410 ], [ %.030.i, %bb.dq ] ; 2 uses
  %.229.i = phi ptr [ %i.me, %._crit_edge.i410 ], [ %.027.i, %bb.dq ] ; 2 uses
  %.2.i = phi ptr [ %i.mf, %._crit_edge.i410 ], [ %.0.i408, %bb.dq ] ; 3 uses
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %.232.i)
  %i.mk = getelementptr i8, ptr %.232.i, i64 %strlen.i
  %scevgep.i = getelementptr i8, ptr %i.mk, i64 1
  %.not37.i = icmp eq ptr %.229.i, %.2.i
  %.pre590 = ptrtoint ptr %scevgep.i to i64       ; 2 uses
  br i1 %.not37.i, label %remove_backslashes.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ml = ptrtoint ptr %.2.i to i64
  %i.mm = sub i64 %.pre590, %i.ml
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %.229.i, ptr noundef nonnull align 1 %.2.i, i64 noundef %i.mm, i1 noundef false) #20
  br label %remove_backslashes.exit

remove_backslashes.exit:                          ; preds = %bb.du, %bb.dv
  %i.mn = ptrtoint ptr %i.mb to i64
  %i.mo = sub i64 %.pre590, %i.mn
  br label %glob_alloc_n.exit412

glob_alloc_n.exit412:                             ; preds = %ruby_nonempty_memcpy.exit, %remove_backslashes.exit
  %.0 = phi i64 [ %i.mo, %remove_backslashes.exit ], [ %i.lz, %ruby_nonempty_memcpy.exit ] ; 4 uses
  %i.mp = call noalias noundef ptr @malloc(i64 noundef %i.li) #23 ; 6 uses
  %.not343 = icmp eq ptr %i.mp, null
  br i1 %.not343, label %.thread494.sink.split, label %bb.dw

bb.dw:                                            ; preds = %glob_alloc_n.exit412
  %i.mq = load ptr, ptr %.3282557, align 8, !tbaa !28
  %i.mr = getelementptr i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !30
  %i.mt = getelementptr i8, ptr %i.mp, i64 8      ; 2 uses
  store ptr %i.ms, ptr %i.mp, align 8, !tbaa !28
  %.0277549 = getelementptr i8, ptr %.3282557, i64 8 ; 2 uses
  %i.mu = icmp ult ptr %.0277549, %i.lt
  br i1 %i.mu, label %.lr.ph553, label %._crit_edge554

.lr.ph553:                                        ; preds = %bb.dw, %bb.dz
  %.0277551 = phi ptr [ %.0277, %bb.dz ], [ %.0277549, %bb.dw ] ; 4 uses
  %.4292550 = phi ptr [ %.5293, %bb.dz ], [ %i.mt, %bb.dw ] ; 4 uses
  %i.mv = load ptr, ptr %.0277551, align 8, !tbaa !28 ; 2 uses
  %.not346 = icmp eq ptr %i.mv, null
  br i1 %.not346, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph553
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !32
  %i.mx = call fastcc i32 @fnmatch(ptr noundef %i.mw, ptr noundef %11, ptr noundef nonnull %i.mb, i32 noundef %8)
  %i.my = icmp eq i32 %i.mx, 0
  br i1 %i.my, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.mz = load ptr, ptr %.0277551, align 8, !tbaa !28
  %i.na = getelementptr i8, ptr %i.mz, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !30
  %i.nc = getelementptr i8, ptr %.4292550, i64 8
  store ptr %i.nb, ptr %.4292550, align 8, !tbaa !28
  store ptr null, ptr %.0277551, align 8, !tbaa !28
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph553, %bb.dx, %bb.dy
  %.5293 = phi ptr [ %i.nc, %bb.dy ], [ %.4292550, %bb.dx ], [ %.4292550, %.lr.ph553 ] ; 2 uses
  %.0277 = getelementptr i8, ptr %.0277551, i64 8 ; 2 uses
  %i.nd = icmp ult ptr %.0277, %i.lt
  br i1 %i.nd, label %.lr.ph553, label %._crit_edge554, !llvm.loop !152

._crit_edge554:                                   ; preds = %bb.dz, %bb.dw
  %.4292.lcssa = phi ptr [ %i.mt, %bb.dw ], [ %.5293, %bb.dz ]
  %i.ne = add i64 %i.lo, %.0                      ; 2 uses
  %i.nf = icmp slt i64 %i.ne, 0
  br i1 %i.nf, label %rb_mul_size_overflow.exit.i.i.i421, label %glob_alloc_n.exit.i414

rb_mul_size_overflow.exit.i.i.i421:               ; preds = %._crit_edge554
  call void @rb_memerror() #22
  unreachable

glob_alloc_n.exit.i414:                           ; preds = %._crit_edge554
  %i.ng = call noalias noundef ptr @malloc(i64 noundef %i.ne) #23 ; 7 uses
  %.not20.i415 = icmp eq ptr %i.ng, null
  br i1 %.not20.i415, label %bb.ef, label %bb.ea

bb.ea:                                            ; preds = %glob_alloc_n.exit.i414
  br i1 %.not.i.i416, label %ruby_nonempty_memcpy.exit.i417, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ng, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.b, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit.i417

ruby_nonempty_memcpy.exit.i417:                   ; preds = %bb.eb, %bb.ea
  br i1 %.not.i413, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %ruby_nonempty_memcpy.exit.i417
  %i.nh = getelementptr i8, ptr %i.ng, i64 %i.b
  store i8 47, ptr %i.nh, align 1, !tbaa !20
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %ruby_nonempty_memcpy.exit.i417
  %.018.i418 = phi i64 [ %i.ln, %bb.ec ], [ %i.b, %ruby_nonempty_memcpy.exit.i417 ]
  %i.ni = getelementptr i8, ptr %i.ng, i64 %.018.i418 ; 2 uses
  %.not.i21.i419 = icmp eq i64 %.0, 0
  br i1 %.not.i21.i419, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ni, ptr noundef nonnull readonly align 1 %i.mb, i64 noundef range(i64 1, 0) %.0, i1 noundef false) #20
  br label %bb.eg

bb.ef:                                            ; preds = %glob_alloc_n.exit.i414
  call void @free(ptr noundef %i.mb) #20
  br label %.thread494.sink.split

bb.eg:                                            ; preds = %bb.ee, %bb.ed
  %i.nj = getelementptr i8, ptr %i.ni, i64 %.0
  store i8 0, ptr %i.nj, align 1, !tbaa !20
  call void @free(ptr noundef %i.mb) #20
  %i.nk = getelementptr i8, ptr %i.ng, i64 %i.b
  %i.nl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nk) #21
  %i.nm = add i64 %i.nl, %3
  %i.nn = call fastcc i32 @glob_helper(i32 noundef %0, ptr noundef nonnull %i.ng, i64 noundef %2, i64 noundef %i.nm, i32 noundef 1, i32 noundef -2, ptr noundef %i.mp, ptr noundef %.4292.lcssa, i32 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11)
  %.fr = freeze i32 %i.nn                         ; 2 uses
  call void @free(ptr noundef nonnull %i.ng) #20
  call void @free(ptr noundef %i.mp) #20
  %.not345 = icmp eq i32 %.fr, 0
  br i1 %.not345, label %bb.eh, label %.thread494

bb.eh:                                            ; preds = %bb.eg, %bb.dl
  %i.no = getelementptr i8, ptr %.3282557, i64 8  ; 2 uses
  %i.np = icmp ult ptr %i.no, %i.lt
  br i1 %i.np, label %bb.dl, label %.thread494, !llvm.loop !153

.thread494.sink.split:                            ; preds = %glob_alloc_n.exit412, %bb.ef
  %.lcssa680.sink = phi ptr [ %i.mp, %bb.ef ], [ %i.mb, %glob_alloc_n.exit412 ]
  call void @free(ptr noundef %.lcssa680.sink) #20
  br label %.thread494

.thread494:                                       ; preds = %bb.eh, %bb.eg, %glob_alloc_n.exit405, %.thread494.sink.split, %.preheader507, %.preheader506
  %.12 = phi i32 [ 0, %.preheader507 ], [ -1, %.thread494.sink.split ], [ 0, %.preheader506 ], [ -1, %glob_alloc_n.exit405 ], [ 0, %bb.eh ], [ %.fr, %bb.eg ]
  call void @free(ptr noundef %i.lk) #20
  br label %.thread451

.thread451:                                       ; preds = %.thread494, %glob_alloc_n.exit403, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.bb, %glob_alloc_n.exit.i372, %do_stat.exit.thread, %do_stat.exit, %bb.dj, %.thread487, %bb.di, %bb.aw, %bb.an, %bb.av, %join_path_from_pattern.exit.thread
  %.8 = phi i32 [ %.0273, %join_path_from_pattern.exit.thread ], [ %i.cr, %bb.an ], [ 0, %bb.bb ], [ %.7435, %bb.di ], [ %.12, %.thread494 ], [ %i.dj, %bb.av ], [ 0, %bb.aw ], [ 0, %do_stat.exit.thread ], [ -1, %glob_alloc_n.exit403 ], [ -1, %glob_alloc_n.exit.i372 ], [ %.7435.ph, %.thread487 ], [ 0, %bb.dj ], [ 0, %do_stat.exit ], [ 0, %bb.be ], [ 0, %bb.bf ], [ %i.ea, %bb.bd ], [ 0, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  ret i32 %.8
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @find_dirsep(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.a, %.outer.backedge.us
  %.014.ph.us = phi ptr [ %i.b, %.outer.backedge.us ], [ %0, %bb.a ]
  %.0.ph.us = phi i32 [ %.0.ph.be.us, %.outer.backedge.us ], [ 0, %bb.a ]
  br label %.backedge.us.us

.outer.backedge.us:                               ; preds = %.backedge.us.us, %.backedge.us.us, %.split34.us.us, %.split.us.us
  %.0.ph.be.us = phi i32 [ 1, %.split34.us.us ], [ 0, %.split.us.us ], [ 1, %.backedge.us.us ], [ 1, %.backedge.us.us ]
  br label %.outer.us, !llvm.loop !154

.backedge.us.us:                                  ; preds = %.backedge.us.us.backedge, %.outer.us
  %.014.us.us = phi ptr [ %.014.ph.us, %.outer.us ], [ %.014.us.us.be, %.backedge.us.us.backedge ] ; 7 uses
  %i.b = getelementptr i8, ptr %.014.us.us, i64 1 ; 3 uses
  %i.c = load i8, ptr %.014.us.us, align 1, !tbaa !20
  switch i8 %i.c, label %bb.c [
    i8 0, label %.loopexit
    i8 91, label %.outer.backedge.us
    i8 93, label %.split.us.us
    i8 123, label %.outer.backedge.us
    i8 125, label %.split.us.us
    i8 47, label %.split34.us.us
    i8 92, label %bb.b
  ], !llvm.loop !154

bb.b:                                             ; preds = %.backedge.us.us
  %i.d = getelementptr i8, ptr %.014.us.us, i64 2
  %i.e = load i8, ptr %i.b, align 1, !tbaa !20
  %.not17.us.us = icmp eq i8 %i.e, 0
  br i1 %.not17.us.us, label %.loopexit, label %.backedge.us.us.backedge

.backedge.us.us.backedge:                         ; preds = %bb.b, %bb.c
  %.014.us.us.be = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  br label %.backedge.us.us, !llvm.loop !154

bb.c:                                             ; preds = %.backedge.us.us
  %i.f = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.014.us.us, ptr noundef %1, ptr noundef %3) #20
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %.014.us.us, i64 %i.g
  br label %.backedge.us.us.backedge

.split.us.us:                                     ; preds = %.backedge.us.us, %.backedge.us.us
  br label %.outer.backedge.us

.split34.us.us:                                   ; preds = %.backedge.us.us
  %.not18.us = icmp eq i32 %.0.ph.us, 0
  br i1 %.not18.us, label %.loopexit, label %.outer.backedge.us

.outer:                                           ; preds = %bb.a, %.outer.backedge
  %.014.ph = phi ptr [ %i.i, %.outer.backedge ], [ %0, %bb.a ]
  %.0.ph = phi i32 [ %.0.ph.be, %.outer.backedge ], [ 0, %bb.a ]
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.outer
  %.014 = phi ptr [ %.014.ph, %.outer ], [ %.014.be, %.backedge ] ; 6 uses
  %i.i = getelementptr i8, ptr %.014, i64 1       ; 2 uses
  %i.j = load i8, ptr %.014, align 1, !tbaa !20
  switch i8 %i.j, label %bb.e [
    i8 0, label %.loopexit
    i8 91, label %.outer.backedge
    i8 93, label %.outer.backedge.loopexit98
    i8 123, label %.outer.backedge
    i8 125, label %.outer.backedge.loopexit98
    i8 47, label %.split34
    i8 92, label %.backedge
  ], !llvm.loop !154

.outer.backedge.loopexit98:                       ; preds = %bb.d, %bb.d
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.d, %bb.d, %.outer.backedge.loopexit98, %.split34
  %.0.ph.be = phi i32 [ 1, %.split34 ], [ 0, %.outer.backedge.loopexit98 ], [ 1, %bb.d ], [ 1, %bb.d ]
  br label %.outer, !llvm.loop !154

.split34:                                         ; preds = %bb.d
  %.not18 = icmp eq i32 %.0.ph, 0
  br i1 %.not18, label %.loopexit, label %.outer.backedge

.backedge:                                        ; preds = %bb.d, %bb.e
  %.014.be = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  br label %bb.d, !llvm.loop !154

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.014, ptr noundef %1, ptr noundef %3) #20
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %.014, i64 %i.l
  br label %.backedge

.loopexit:                                        ; preds = %.split34, %bb.d, %.split34.us.us, %.backedge.us.us, %bb.b
  %.013 = phi ptr [ %.014.us.us, %.backedge.us.us ], [ %.014, %bb.d ], [ %.014.us.us, %.split34.us.us ], [ %i.b, %bb.b ], [ %.014, %.split34 ]
  ret ptr %.013
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 4) i32 @has_magic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.outer.us, label %.split42

.outer.us:                                        ; preds = %bb.a, %.loopexit27.split.us.us
  %.018.ph.us = phi ptr [ %i.g, %.loopexit27.split.us.us ], [ %0, %bb.a ]
  %.016.ph.us = phi i32 [ %.117.us, %.loopexit27.split.us.us ], [ 0, %bb.a ] ; 7 uses
  %.015.ph.us = phi i32 [ %.1.us, %.loopexit27.split.us.us ], [ 0, %bb.a ] ; 4 uses
  br label %bb.b

.loopexit27.split.us.us:                          ; preds = %bb.c, %bb.c, %bb.c, %bb.d, %.split.us.us
  %i.b = phi i64 [ 1, %.split.us.us ], [ 1, %bb.c ], [ 1, %bb.c ], [ 2, %bb.d ], [ 1, %bb.c ]
  %.117.us = phi i32 [ %spec.select.us, %.split.us.us ], [ %.016.ph.us, %bb.d ], [ %.016.ph.us, %bb.c ], [ %.016.ph.us, %bb.c ], [ %.016.ph.us, %bb.c ]
  %.1.us = phi i32 [ %.015.ph.us, %.split.us.us ], [ 1, %bb.c ], [ 1, %bb.c ], [ %.015.ph.us, %bb.d ], [ 1, %bb.c ]
  %i.c = getelementptr i8, ptr %.018.us.us, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -1       ; 2 uses
  %i.e = tail call i32 @rb_enc_mbclen(ptr noundef %i.d, ptr noundef nonnull %1, ptr noundef %3) #20
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  br label %.outer.us, !llvm.loop !155

bb.b:                                             ; preds = %bb.d, %.outer.us
  %.018.us.us = phi ptr [ %i.k, %bb.d ], [ %.018.ph.us, %.outer.us ] ; 5 uses
  %i.h = icmp ult ptr %.018.us.us, %1
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.018.us.us, align 1, !tbaa !20 ; 2 uses
  switch i8 %i.i, label %.split.us.us [
    i8 0, label %.critedge
    i8 123, label %.loopexit
    i8 42, label %.loopexit27.split.us.us
    i8 63, label %.loopexit27.split.us.us
    i8 91, label %.loopexit27.split.us.us
    i8 92, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.018.us.us, i64 1
  %i.k = getelementptr i8, ptr %.018.us.us, i64 2
  %.not25.us.us = icmp ult ptr %i.j, %1
  br i1 %.not25.us.us, label %.loopexit27.split.us.us, label %bb.b, !llvm.loop !155

.split.us.us:                                     ; preds = %bb.c
  %i.l = and i8 %i.i, -33
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -91
  %narrow.i.us = icmp ult i32 %i.n, -26
  %spec.select.us = select i1 %narrow.i.us, i32 %.016.ph.us, i32 1
  br label %.loopexit27.split.us.us

.split42:                                         ; preds = %bb.a
  %i.o = icmp ult ptr %0, %1
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.split42, %.outer
  %.015.ph47 = phi i32 [ %.1, %.outer ], [ 0, %.split42 ] ; 3 uses
  %.016.ph46 = phi i32 [ %.117, %.outer ], [ 0, %.split42 ] ; 6 uses
  %.018.ph45 = phi ptr [ %i.v, %.outer ], [ %0, %.split42 ] ; 3 uses
  %i.p = load i8, ptr %.018.ph45, align 1, !tbaa !20 ; 2 uses
  switch i8 %i.p, label %.split [
    i8 0, label %.critedge
    i8 123, label %.loopexit
    i8 42, label %.outer
    i8 63, label %.outer
    i8 91, label %.outer
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph
  br label %.outer

.split:                                           ; preds = %.lr.ph
  %i.q = and i8 %i.p, -33
  %i.r = sext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -91
  %narrow.i = icmp ult i32 %i.s, -26
  %spec.select = select i1 %narrow.i, i32 %.016.ph46, i32 1
  br label %.outer

.outer:                                           ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.e, %.split
  %.117 = phi i32 [ %spec.select, %.split ], [ %.016.ph46, %bb.e ], [ %.016.ph46, %.lr.ph ], [ %.016.ph46, %.lr.ph ], [ %.016.ph46, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %.015.ph47, %.split ], [ %.015.ph47, %bb.e ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ] ; 2 uses
  %i.t = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.018.ph45, ptr noundef nonnull %1, ptr noundef %3) #20
end_hunk_0
begin_hunk_1_@fnmatch:bb.a
  %i.f = and i32 %3, 2
  %.not36 = icmp eq i32 %i.f, 0
  br i1 %.not36, label %bb.r, label %.preheader47

.preheader47:                                     ; preds = %bb.a, %.backedge
  %i.g = phi ptr [ %storemerge, %.backedge ], [ %2, %bb.a ]
  %.promoted = phi ptr [ %i.ak, %.backedge ], [ %0, %bb.a ] ; 4 uses
  %.031 = phi ptr [ %.132, %.backedge ], [ null, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %.0.be, %.backedge ], [ null, %bb.a ] ; 3 uses
  %i.h = load i8, ptr %.promoted, align 1, !tbaa !20
  %i.i = icmp eq i8 %i.h, 42
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.preheader47
  %i.j = getelementptr i8, ptr %.promoted, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = icmp eq i8 %i.k, 42
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.promoted, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %i.o = icmp eq i8 %i.n, 47
  br i1 %i.o, label %.preheader46, label %bb.f

.preheader46:                                     ; preds = %bb.c, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted, %bb.c ] ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 3        ; 4 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = icmp eq i8 %i.r, 42
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader46
  %i.t = getelementptr i8, ptr %i.p, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = icmp eq i8 %i.u, 42
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.p, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %.preheader46, label %.critedge, !llvm.loop !157

.critedge:                                        ; preds = %bb.d, %.preheader46, %bb.e
  store ptr %i.q, ptr %i.a, align 8, !tbaa !156
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.c, %bb.b, %.preheader47
  %.132 = phi ptr [ %i.q, %.critedge ], [ %.031, %bb.c ], [ %.031, %bb.b ], [ %.031, %.preheader47 ] ; 4 uses
  %.1 = phi ptr [ %i.g, %.critedge ], [ %.0, %bb.c ], [ %.0, %bb.b ], [ %.0, %.preheader47 ] ; 4 uses
  %i.z = call fastcc i32 @fnmatch_helper(ptr noundef %i.a, ptr noundef %i.b, i32 noundef %3, ptr noundef %1)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.f
  %.promoted53 = load ptr, ptr %i.b, align 8, !tbaa !156
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %i.ab = phi ptr [ %.promoted53, %.preheader ], [ %i.af, %bb.h ] ; 5 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.ac, label %bb.h [
    i8 0, label %.critedge2
    i8 47, label %.critedge2
  ]

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %i.ab, ptr noundef %i.d, ptr noundef %1) #20
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  br label %bb.g, !llvm.loop !158

.critedge2:                                       ; preds = %bb.g, %bb.g
  store ptr %i.ab, ptr %i.b, align 8
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %.not39 = icmp eq i8 %i.ah, 0
  %.not42 = icmp eq i8 %i.ac, 0                   ; 2 uses
  br i1 %.not39, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.critedge2
  br i1 %.not42, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.ag, i64 1      ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !156
  %i.aj = getelementptr i8, ptr %i.ab, i64 1
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.q
  %i.ak = phi ptr [ %i.ai, %bb.j ], [ %.132, %bb.q ]
  %storemerge = phi ptr [ %i.aj, %bb.j ], [ %i.at, %bb.q ] ; 2 uses
  %.0.be = phi ptr [ %.1, %bb.j ], [ %i.at, %bb.q ]
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !156
  br label %.preheader47

bb.k:                                             ; preds = %.critedge2
  br i1 %.not42, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.f
  %i.al = icmp ne ptr %.132, null
  %i.am = icmp ne ptr %.1, null
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %bb.n, label %.preheader68

bb.n:                                             ; preds = %bb.m
  %i.an = load i8, ptr %.1, align 1, !tbaa !20
  %i.ao = icmp eq i8 %i.an, 46
  br i1 %i.ao, label %.loopexit, label %.preheader68

.preheader68:                                     ; preds = %bb.n, %bb.m
  br label %bb.o

bb.o:                                             ; preds = %.preheader68, %bb.p
  %.2 = phi ptr [ %i.as, %bb.p ], [ %.1, %.preheader68 ] ; 4 uses
  %i.ap = load i8, ptr %.2, align 1, !tbaa !20
  switch i8 %i.ap, label %bb.p [
    i8 0, label %.loopexit
    i8 47, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.2, ptr noundef %i.d, ptr noundef %1) #20
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %.2, i64 %i.ar
  br label %bb.o, !llvm.loop !159

bb.q:                                             ; preds = %bb.o
  store ptr %.132, ptr %i.a, align 8, !tbaa !156
  %i.at = getelementptr i8, ptr %.2, i64 1        ; 2 uses
  br label %.backedge

bb.r:                                             ; preds = %bb.a
  %i.au = call fastcc i32 @fnmatch_helper(ptr noundef %i.a, ptr noundef %i.b, i32 noundef %3, ptr noundef %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.n, %bb.k, %bb.o, %bb.r
  %.033 = phi i32 [ 1, %bb.o ], [ %i.au, %bb.r ], [ 1, %bb.n ], [ 1, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.033
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare ptr @rb_nogvl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_fstatat(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !116
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !121
  %i.h = tail call i32 @fstatat(i32 noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, i32 noundef %i.g) #20
  %i.i = sext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr
  ret ptr %i.j
}

declare ptr @rb_errno_ptr() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal noalias ptr @nogvl_opendir_at(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !129
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.e = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.b, ptr noundef %i.d, i32 noundef 589824) #20 ; 6 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @fdopendir(i32 noundef %i.e) #20 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = tail call ptr @rb_errno_ptr() #20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !7
  %i.j = load i64, ptr @rb_cThread, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %gc_for_fd_with_gvl.exit

bb.c:                                             ; preds = %.thread
  %i.k = tail call i32 @rb_gc_for_fd(i32 noundef %i.i) #20
  %.fr = freeze i32 %i.k
  %.not1.i = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not1.i, label %gc_for_fd_with_gvl.exit.thread, label %gc_for_fd_with_gvl.exit.thread34

gc_for_fd_with_gvl.exit:                          ; preds = %.thread
  %i.l = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @with_gvl_gc_for_fd, ptr noundef nonnull %i.a) #20
  %i.m = ptrtoint ptr %i.l to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = and i64 %i.m, 4294967295
  %cond = icmp eq i64 %i.n, 0
  br i1 %cond, label %gc_for_fd_with_gvl.exit.thread, label %gc_for_fd_with_gvl.exit.thread34

gc_for_fd_with_gvl.exit.thread34:                 ; preds = %bb.c, %gc_for_fd_with_gvl.exit
  %i.o = icmp slt i32 %i.e, 0
  br i1 %i.o, label %bb.d, label %.thread37

bb.d:                                             ; preds = %gc_for_fd_with_gvl.exit.thread34
  %i.p = load i32, ptr %0, align 8, !tbaa !129
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.r = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.p, ptr noundef %i.q, i32 noundef 589824) #20 ; 3 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.thread37, label %.thread41

.thread37:                                        ; preds = %gc_for_fd_with_gvl.exit.thread34, %bb.d
  %.02139 = phi i32 [ %i.r, %bb.d ], [ %i.e, %gc_for_fd_with_gvl.exit.thread34 ] ; 2 uses
  %i.t = call noalias ptr @fdopendir(i32 noundef %.02139) #20 ; 2 uses
  %.not30 = icmp eq ptr %i.t, null
  br i1 %.not30, label %.thread41, label %bb.g

.thread41:                                        ; preds = %bb.d, %.thread37
  %.0214045 = phi i32 [ %.02139, %.thread37 ], [ %i.r, %bb.d ]
  %i.u = call ptr @rb_errno_ptr() #20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  br label %gc_for_fd_with_gvl.exit.thread

gc_for_fd_with_gvl.exit.thread:                   ; preds = %bb.c, %gc_for_fd_with_gvl.exit, %.thread41
  %.1 = phi i32 [ %i.e, %gc_for_fd_with_gvl.exit ], [ %.0214045, %.thread41 ], [ %i.e, %bb.c ] ; 2 uses
  %.020 = phi i32 [ %i.i, %gc_for_fd_with_gvl.exit ], [ %i.v, %.thread41 ], [ %i.i, %bb.c ]
  %i.w = icmp sgt i32 %.1, -1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gc_for_fd_with_gvl.exit.thread
  %i.x = call i32 @close(i32 noundef %.1) #20     ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %gc_for_fd_with_gvl.exit.thread, %bb.e
  call void @rb_errno_set(i32 noundef %.020) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread37, %bb.b
  %.123 = phi ptr [ %i.g, %bb.b ], [ null, %bb.f ], [ %i.t, %.thread37 ]
  ret ptr %.123
}

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare noalias ptr @fdopendir(i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare void @rb_errno_set(i32 noundef) local_unnamed_addr #2

declare ptr @rb_thread_call_with_gvl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @with_gvl_gc_for_fd(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  %i.b = tail call i32 @rb_gc_for_fd(i32 noundef %i.a) #20
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr null, ptr inttoptr (i64 20 to ptr)
  ret ptr %i.c
}

declare i32 @rb_gc_for_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_readdir(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_errno_set(i32 noundef 0) #20
  %i.a = tail call ptr @readdir(ptr noundef %0) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @rb_errno() #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @sys_failure, ptr noundef nonnull @.str.49) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret ptr %i.a
}

declare void @qsort_r(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @glob_sort_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !160
  %i.b = load ptr, ptr %1, align 8, !tbaa !160
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.f) #21
  ret i32 %i.g
}

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

declare i32 @rb_errno() local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noalias noundef nonnull ptr @sys_failure(ptr noundef %0) #13 {
bb.a:
  %i.a = tail call ptr @rb_errno_ptr() #20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.b, ptr noundef %0) #24
  unreachable
}

; Function Attrs: noreturn
declare void @rb_syserr_fail(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @sys_warning_1(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.e = getelementptr i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  tail call void (ptr, ptr, ...) @rb_sys_enc_warning(ptr noundef %i.c, ptr noundef nonnull @.str.51, ptr noundef %i.d, ptr noundef %i.f) #20
  ret i64 4
}

declare void @rb_sys_enc_warning(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @fnmatch_helper(ptr noundef nonnull captures(none) %0, ptr noundef nonnull captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 4
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %2, 2                            ; 2 uses
  %i.c = and i32 %2, 1
  %.not159 = icmp eq i32 %i.c, 0                  ; 7 uses
  %i.d = and i32 %2, 8
  %i.e = load ptr, ptr %0, align 8, !tbaa !156    ; 6 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f     ; 11 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !156    ; 4 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #21
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 8 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.h, align 1, !tbaa !20
  %i.l = icmp eq i8 %i.k, 46
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not159, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.e, align 1, !tbaa !20
  %i.n = icmp eq i8 %i.m, 92
  %spec.select.idx = zext i1 %i.n to i64
  %spec.select = getelementptr i8, ptr %i.e, i64 %spec.select.idx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi ptr [ %i.e, %bb.c ], [ %spec.select, %bb.d ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %.not160 = icmp eq i8 %i.p, 46
  br i1 %.not160, label %bb.f, label %bb.aw

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.not167.not = icmp eq i32 %i.b, 0              ; 2 uses
  %.not162 = icmp ne i32 %i.b, 0                  ; 4 uses
  %i.q = ptrtoint ptr %i.j to i64                 ; 2 uses
  %.not129.i = icmp eq i32 %i.d, 0                ; 4 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.f
  %.0145.ph = phi ptr [ %i.e, %bb.f ], [ %.0145.ph.be, %.outer.backedge ] ; 4 uses
  %.0142.ph = phi ptr [ %i.h, %bb.f ], [ %.0142.ph.be, %.outer.backedge ] ; 27 uses
  %.0141.ph = phi ptr [ null, %bb.f ], [ %.0141.ph.be, %.outer.backedge ] ; 3 uses
  %.0140.ph = phi ptr [ null, %bb.f ], [ %.0140.ph.be, %.outer.backedge ] ; 3 uses
  %.pre404 = load i8, ptr %.0145.ph, align 1, !tbaa !20 ; 3 uses
  br i1 %.not167.not, label %.outer.split, label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer, %bb.h
  %i.r = phi i8 [ %i.t, %bb.h ], [ %.pre404, %.outer ] ; 2 uses
  %.0145.us = phi ptr [ %i.s, %bb.h ], [ %.0145.ph, %.outer ] ; 4 uses
  %.0141.us = phi ptr [ %.0142.ph, %bb.h ], [ %.0141.ph, %.outer ] ; 3 uses
  %.0140.us = phi ptr [ %i.s, %bb.h ], [ %.0140.ph, %.outer ] ; 3 uses
  switch i8 %i.r, label %.split.us [
    i8 42, label %.preheader.us
    i8 63, label %.split237.us
    i8 91, label %.split242.us
  ]

.preheader.us:                                    ; preds = %.outer.split.us, %.preheader.us
  %.1146.us = phi ptr [ %i.s, %.preheader.us ], [ %.0145.us, %.outer.split.us ] ; 2 uses
  %i.s = getelementptr i8, ptr %.1146.us, i64 1   ; 9 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20    ; 3 uses
  %i.u = icmp eq i8 %i.t, 42
  br i1 %i.u, label %.preheader.us, label %bb.g, !llvm.loop !161

bb.g:                                             ; preds = %.preheader.us
  %i.v = icmp eq i8 %i.t, 92                      ; 3 uses
  %or.cond177.us = and i1 %.not159, %i.v
  %i.w = getelementptr i8, ptr %.1146.us, i64 2   ; 3 uses
  %i.x = select i1 %or.cond177.us, ptr %i.w, ptr %i.s
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  switch i8 %i.y, label %bb.h [
    i8 0, label %.split247.us
    i8 47, label %.split247.us
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %.0142.ph, align 1, !tbaa !20
  switch i8 %i.z, label %.outer.split.us [
    i8 47, label %.sink.split
    i8 0, label %.sink.split
  ]

.outer.split:                                     ; preds = %.outer
  br i1 %.not159, label %.outer.split.split, label %.outer.split.split.us

.outer.split.split.us:                            ; preds = %.outer.split, %bb.i
  %i.aa = phi i8 [ %i.ac, %bb.i ], [ %.pre404, %.outer.split ] ; 2 uses
  %.0145.us269 = phi ptr [ %i.ab, %bb.i ], [ %.0145.ph, %.outer.split ] ; 4 uses
  %.0141.us270 = phi ptr [ %.0142.ph, %bb.i ], [ %.0141.ph, %.outer.split ] ; 3 uses
  %.0140.us271 = phi ptr [ %i.ab, %bb.i ], [ %.0140.ph, %.outer.split ] ; 3 uses
  switch i8 %i.aa, label %.split.us [
    i8 42, label %.preheader.us278
    i8 63, label %.split237.us
    i8 91, label %.split242.us
  ]

.preheader.us278:                                 ; preds = %.outer.split.split.us, %.preheader.us278
  %.1146.us272 = phi ptr [ %i.ab, %.preheader.us278 ], [ %.0145.us269, %.outer.split.split.us ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.1146.us272, i64 1 ; 6 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.ac, label %bb.i [
    i8 42, label %.preheader.us278
    i8 0, label %.split247.split.us
  ]

bb.i:                                             ; preds = %.preheader.us278
  %i.ad = load i8, ptr %.0142.ph, align 1, !tbaa !20
  %.not168.us277 = icmp eq i8 %i.ad, 0
  br i1 %.not168.us277, label %.sink.split, label %.outer.split.split.us

.split247.split.us:                               ; preds = %.preheader.us278
  %i.ae = getelementptr i8, ptr %.1146.us272, i64 2
  br label %.split247.us

.outer.split.split:                               ; preds = %.outer.split, %bb.k
  %i.af = phi i8 [ %i.ah, %bb.k ], [ %.pre404, %.outer.split ] ; 2 uses
  %.0145 = phi ptr [ %i.ag, %bb.k ], [ %.0145.ph, %.outer.split ] ; 4 uses
  %.0141 = phi ptr [ %.0142.ph, %bb.k ], [ %.0141.ph, %.outer.split ] ; 3 uses
  %.0140 = phi ptr [ %i.ag, %bb.k ], [ %.0140.ph, %.outer.split ] ; 3 uses
  switch i8 %i.af, label %.split.us [
    i8 42, label %.preheader
    i8 63, label %.split237.us
    i8 91, label %.split242.us
  ]

.preheader:                                       ; preds = %.outer.split.split, %.preheader
  %.1146 = phi ptr [ %i.ag, %.preheader ], [ %.0145, %.outer.split.split ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.1146, i64 1     ; 7 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20  ; 3 uses
  %i.ai = icmp eq i8 %i.ah, 42
  br i1 %i.ai, label %.preheader, label %bb.j, !llvm.loop !161

bb.j:                                             ; preds = %.preheader
  %i.aj = icmp eq i8 %i.ah, 92                    ; 2 uses
  %i.ak = getelementptr i8, ptr %.1146, i64 2     ; 2 uses
  %spec.select309 = select i1 %i.aj, ptr %i.ak, ptr %i.ag
  %i.al = load i8, ptr %spec.select309, align 1, !tbaa !20
  %.not166 = icmp eq i8 %i.al, 0
  br i1 %.not166, label %.split247.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i8, ptr %.0142.ph, align 1, !tbaa !20
  %.not168 = icmp eq i8 %i.am, 0
  br i1 %.not168, label %.sink.split, label %.outer.split.split

.split247.us:                                     ; preds = %bb.g, %bb.g, %bb.j, %.split247.split.us
  %.us-phi249 = phi i1 [ false, %.split247.split.us ], [ %i.aj, %bb.j ], [ %i.v, %bb.g ], [ %i.v, %bb.g ]
  %.us-phi250 = phi ptr [ %i.ae, %.split247.split.us ], [ %i.ak, %bb.j ], [ %i.w, %bb.g ], [ %i.w, %bb.g ]
  %.us-phi251 = phi ptr [ %i.ab, %.split247.split.us ], [ %i.ag, %bb.j ], [ %i.s, %bb.g ], [ %i.s, %bb.g ]
  %i.an = and i1 %.not159, %.us-phi249
  %spec.select197 = select i1 %i.an, ptr %.us-phi250, ptr %.us-phi251
  br label %.sink.split

.split237.us:                                     ; preds = %.outer.split.us, %.outer.split.split.us, %.outer.split.split
  %.us-phi238 = phi ptr [ %.0145, %.outer.split.split ], [ %.0145.us269, %.outer.split.split.us ], [ %.0145.us, %.outer.split.us ] ; 2 uses
  %.us-phi239 = phi ptr [ %.0141, %.outer.split.split ], [ %.0141.us270, %.outer.split.split.us ], [ %.0141.us, %.outer.split.us ]
  %.us-phi240 = phi ptr [ %.0140, %.outer.split.split ], [ %.0140.us271, %.outer.split.split.us ], [ %.0140.us, %.outer.split.us ]
  %i.ao = load i8, ptr %.0142.ph, align 1, !tbaa !20 ; 2 uses
  %.not164 = icmp eq i8 %i.ao, 0
  %i.ap = icmp eq i8 %i.ao, 47
  %or.cond179 = and i1 %.not162, %i.ap
  %or.cond310 = or i1 %.not164, %or.cond179
  br i1 %or.cond310, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.split237.us
  %i.aq = getelementptr i8, ptr %.us-phi238, i64 1
  %i.ar = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef %3) #20
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %.0142.ph, i64 %i.as
  br label %.outer.backedge

.split242.us:                                     ; preds = %.outer.split.us, %.outer.split.split.us, %.outer.split.split
  %.us-phi243 = phi ptr [ %.0145, %.outer.split.split ], [ %.0145.us269, %.outer.split.split.us ], [ %.0145.us, %.outer.split.us ] ; 8 uses
  %.us-phi244 = phi ptr [ %.0141, %.outer.split.split ], [ %.0141.us270, %.outer.split.split.us ], [ %.0141.us, %.outer.split.us ] ; 6 uses
  %.us-phi245 = phi ptr [ %.0140, %.outer.split.split ], [ %.0140.us271, %.outer.split.split.us ], [ %.0140.us, %.outer.split.us ] ; 6 uses
  %i.au = load i8, ptr %.0142.ph, align 1, !tbaa !20 ; 2 uses
  %.not161 = icmp eq i8 %i.au, 0
  %i.av = icmp eq i8 %i.au, 47
  %or.cond180 = and i1 %.not162, %i.av
  %or.cond311 = or i1 %.not161, %or.cond180
  br i1 %or.cond311, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %.split242.us
  %i.aw = getelementptr i8, ptr %.us-phi243, i64 1 ; 3 uses
  %.not114.i = icmp ult ptr %i.aw, %i.g
  br i1 %.not114.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.ax, label %bb.p [
    i8 33, label %bb.o
    i8 94, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ay = getelementptr i8, ptr %.us-phi243, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.ay, align 1, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = phi i8 [ %.pre.i, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %.096.i = phi ptr [ %i.ay, %bb.o ], [ %i.aw, %bb.n ] ; 2 uses
  %.092.i = phi i32 [ 1, %bb.o ], [ 0, %bb.n ]
  %.not115158.i = icmp eq i8 %i.az, 93
  br i1 %.not115158.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.ba = ptrtoint ptr %.0142.ph to i64
  %i.bb = sub i64 %i.q, %i.ba                     ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.thread142.i, %.lr.ph.i
  %i.bc = phi i8 [ %i.az, %.lr.ph.i ], [ %i.cj, %.thread142.i ]
  %.093160.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %.thread142.i ] ; 2 uses
  %.197159.i = phi ptr [ %.096.i, %.lr.ph.i ], [ %.4100.i, %.thread142.i ]
  %i.bd = icmp eq i8 %i.bc, 92
  %or.cond.i = and i1 %.not159, %i.bd
  %.089.idx.i = zext i1 %or.cond.i to i64
  %.089.i = getelementptr i8, ptr %.197159.i, i64 %.089.idx.i ; 7 uses
  %i.be = load i8, ptr %.089.i, align 1, !tbaa !20
  %.not116.i = icmp eq i8 %i.be, 0
  br i1 %.not116.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.089.i, ptr noundef nonnull %i.g, ptr noundef %3) #20
  %i.bg = sext i32 %i.bf to i64                   ; 5 uses
  %i.bh = getelementptr i8, ptr %.089.i, i64 %i.bg ; 10 uses
  %.not117.i = icmp ult ptr %i.bh, %i.g
  br i1 %.not117.i, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = icmp eq i8 %i.bi, 45
  br i1 %i.bj, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr i8, ptr %i.bh, i64 1      ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !20  ; 2 uses
  %.not118.i = icmp eq i8 %i.bl, 93
  br i1 %.not118.i, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp eq i8 %i.bl, 92
  %or.cond130.i = and i1 %.not159, %i.bm
  %i.bn = getelementptr i8, ptr %i.bh, i64 2
  %.088.i = select i1 %or.cond130.i, ptr %i.bn, ptr %i.bk ; 6 uses
  %i.bo = load i8, ptr %.088.i, align 1, !tbaa !20
  %.not123.i = icmp eq i8 %i.bo, 0
  br i1 %.not123.i, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.088.i, ptr noundef nonnull %i.g, ptr noundef %3) #20
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = getelementptr i8, ptr %.088.i, i64 %i.bq ; 7 uses
  %.not124.i = icmp eq i32 %.093160.i, 0
  br i1 %.not124.i, label %bb.w, label %.thread142.i, !llvm.loop !162

bb.w:                                             ; preds = %bb.v
  %.not125.i = icmp slt i64 %i.bb, %i.bg
  br i1 %.not125.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %bcmp126.i = tail call i32 @bcmp(ptr nonnull %.089.i, ptr nonnull %.0142.ph, i64 %i.bg)
  %i.bs = icmp eq i32 %bcmp126.i, 0
  br i1 %i.bs, label %.thread142.i, label %bb.y, !llvm.loop !162

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not127.i = icmp slt i64 %i.bb, %i.bq
  br i1 %.not127.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %bcmp128.i = tail call i32 @bcmp(ptr nonnull %.088.i, ptr nonnull %.0142.ph, i64 %i.bq)
  %i.bt = icmp eq i32 %bcmp128.i, 0
  br i1 %i.bt, label %.thread142.i, label %bb.aa, !llvm.loop !162

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bu = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef null, ptr noundef %3) #20 ; 3 uses
  br i1 %.not129.i, label %bb.ab, label %.thread134.i

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.089.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.bw = icmp ult i32 %i.bu, %i.bv
  br i1 %i.bw, label %.thread142.i, label %bb.ac, !llvm.loop !162

.thread134.i:                                     ; preds = %bb.aa
  %i.bx = tail call i32 @rb_enc_toupper(i32 noundef %i.bu, ptr noundef %3) #28 ; 2 uses
  %i.by = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.089.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.bz = tail call i32 @rb_enc_toupper(i32 noundef %i.by, ptr noundef %3) #28
  %i.ca = icmp ult i32 %i.bx, %i.bz
  br i1 %i.ca, label %.thread142.i, label %bb.ad, !llvm.loop !162

bb.ac:                                            ; preds = %bb.ab
  %i.cb = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.088.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  br label %bb.ae

bb.ad:                                            ; preds = %.thread134.i
  %i.cc = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.088.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.cd = tail call i32 @rb_enc_toupper(i32 noundef %i.cc, ptr noundef %3) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0103133137141.i = phi i32 [ %i.bx, %bb.ad ], [ %i.bu, %bb.ac ]
  %.1102.i = phi i32 [ %i.cd, %bb.ad ], [ %i.cb, %bb.ac ]
  %.not155.i = icmp ugt i32 %.0103133137141.i, %.1102.i
  br i1 %.not155.i, label %.thread142.i, label %bb.ak

bb.af:                                            ; preds = %bb.t, %bb.s
  %.not119.i = icmp eq i32 %.093160.i, 0
  br i1 %.not119.i, label %bb.ag, label %.thread142.i, !llvm.loop !162

bb.ag:                                            ; preds = %bb.af
  %.not120.i = icmp slt i64 %i.bb, %i.bg
  br i1 %.not120.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.089.i, ptr nonnull %.0142.ph, i64 %i.bg)
  %i.ce = icmp eq i32 %bcmp.i, 0                  ; 2 uses
  %brmerge.i = or i1 %.not129.i, %i.ce
  %.mux.i = zext i1 %i.ce to i32
  br i1 %brmerge.i, label %.thread142.i, label %bb.aj, !llvm.loop !162

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not129.i, label %.thread142.i, label %bb.aj, !llvm.loop !162

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cf = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef null, ptr noundef %3) #20
  %i.cg = tail call i32 @rb_enc_toupper(i32 noundef %i.cf, ptr noundef %3) #28
  %i.ch = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.ci = tail call i32 @rb_enc_toupper(i32 noundef %i.ch, ptr noundef %3) #28
  %.not122.i = icmp eq i32 %i.cg, %i.ci
  br i1 %.not122.i, label %bb.ak, label %.thread142.i, !llvm.loop !162

bb.ak:                                            ; preds = %bb.aj, %bb.ae
  %.399.i = phi ptr [ %i.br, %bb.ae ], [ %i.bh, %bb.aj ]
  br label %.thread142.i

.thread142.i:                                     ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %.thread134.i, %bb.ab, %bb.z, %bb.x, %bb.v
  %.4100.i = phi ptr [ %i.bh, %bb.aj ], [ %.399.i, %bb.ak ], [ %i.br, %bb.ae ], [ %i.bh, %bb.ah ], [ %i.bh, %bb.af ], [ %i.bh, %bb.ai ], [ %i.br, %.thread134.i ], [ %i.br, %bb.z ], [ %i.br, %bb.ab ], [ %i.br, %bb.x ], [ %i.br, %bb.v ] ; 3 uses
  %.295.i = phi i32 [ 0, %bb.aj ], [ 1, %bb.ak ], [ 0, %bb.ae ], [ %.mux.i, %bb.ah ], [ 1, %bb.af ], [ 0, %bb.ai ], [ 0, %.thread134.i ], [ 1, %bb.z ], [ 0, %bb.ab ], [ 1, %bb.x ], [ 1, %bb.v ]
  %4 = freeze i32 %.295.i                         ; 2 uses
  %i.cj = load i8, ptr %.4100.i, align 1, !tbaa !20 ; 2 uses
  %.not115.i = icmp eq i8 %i.cj, 93
  br i1 %.not115.i, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %.thread142.i, %bb.p
  %.197.lcssa.i = phi ptr [ %.096.i, %bb.p ], [ %.4100.i, %.thread142.i ]
  %.093.lcssa.i = phi i32 [ 0, %bb.p ], [ %4, %.thread142.i ]
  %i.ck = icmp eq i32 %.093.lcssa.i, %.092.i
  %i.cl = getelementptr i8, ptr %.197.lcssa.i, i64 1 ; 2 uses
  %.not163 = icmp eq ptr %i.cl, null
  %or.cond198 = or i1 %.not163, %i.ck
  br i1 %or.cond198, label %.thread, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.cm = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef %3) #20
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %.0142.ph, i64 %i.cn
  br label %.outer.backedge

.split.us:                                        ; preds = %.outer.split.us, %.outer.split.split.us, %.outer.split.split
  %.us-phi = phi ptr [ %.0145, %.outer.split.split ], [ %.0145.us269, %.outer.split.split.us ], [ %.0145.us, %.outer.split.us ]
  %.us-phi233 = phi ptr [ %.0141, %.outer.split.split ], [ %.0141.us270, %.outer.split.split.us ], [ %.0141.us, %.outer.split.us ] ; 6 uses
  %.us-phi234 = phi ptr [ %.0140, %.outer.split.split ], [ %.0140.us271, %.outer.split.split.us ], [ %.0140.us, %.outer.split.us ] ; 6 uses
  %.us-phi235 = phi i8 [ %i.af, %.outer.split.split ], [ %i.aa, %.outer.split.split.us ], [ %i.r, %.outer.split.us ]
  %i.cp = icmp eq i8 %.us-phi235, 92
  %or.cond181 = and i1 %.not159, %i.cp
  %.idx = zext i1 %or.cond181 to i64
  %i.cq = getelementptr i8, ptr %.us-phi, i64 %.idx ; 12 uses
  %i.cr = load i8, ptr %.0142.ph, align 1, !tbaa !20 ; 2 uses
  %.not169 = icmp eq i8 %i.cr, 0
  %i.cs = icmp eq i8 %i.cr, 47
  %or.cond182 = and i1 %.not162, %i.cs
  %or.cond312 = or i1 %.not169, %or.cond182
  br i1 %or.cond312, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.split.us
  store ptr %i.cq, ptr %0, align 8, !tbaa !156
  store ptr %.0142.ph, ptr %1, align 8, !tbaa !156
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !20  ; 2 uses
  %.not175 = icmp eq i8 %i.ct, 0                  ; 2 uses
  %brmerge = or i1 %.not175, %.not167.not
  %not..not175 = xor i1 %.not175, true
  %i.cu = icmp ne i8 %i.ct, 47
  %spec.select602 = select i1 %brmerge, i1 %not..not175, i1 %i.cu
  br label %bb.aw

bb.an:                                            ; preds = %.split.us
  %i.cv = load i8, ptr %i.cq, align 1, !tbaa !20  ; 2 uses
  %.not171 = icmp eq i8 %i.cv, 0
  %i.cw = icmp eq i8 %i.cv, 47
  %or.cond184 = and i1 %.not162, %i.cw
  %or.cond199 = or i1 %.not171, %or.cond184
  br i1 %or.cond199, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cx = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.cq, ptr noundef %i.g, ptr noundef %3) #20 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cz = zext nneg i32 %i.cx to i64              ; 5 uses
  %i.da = ptrtoint ptr %.0142.ph to i64
  %i.db = sub i64 %i.q, %i.da
  %.not172 = icmp slt i64 %i.db, %i.cz
  br i1 %.not172, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %.0142.ph, i64 %i.cz)
  %i.dc = icmp eq i32 %bcmp, 0
  br i1 %i.dc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dd = getelementptr i8, ptr %i.cq, i64 %i.cz
  %i.de = getelementptr i8, ptr %.0142.ph, i64 %i.cz
  br label %.outer.backedge

bb.as:                                            ; preds = %bb.aq, %bb.ap
  br i1 %.not129.i, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.df = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.cq, ptr noundef %i.g, ptr noundef null, ptr noundef %3) #20
  %i.dg = tail call i32 @rb_enc_toupper(i32 noundef %i.df, ptr noundef %3) #28
  %i.dh = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef null, ptr noundef %3) #20
  %i.di = tail call i32 @rb_enc_toupper(i32 noundef %i.dh, ptr noundef %3) #28
  %.not174 = icmp eq i32 %i.dg, %i.di
  br i1 %.not174, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.dj = getelementptr i8, ptr %i.cq, i64 %i.cz
  %i.dk = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef %3) #20
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %.0142.ph, i64 %i.dl
  br label %.outer.backedge

.thread:                                          ; preds = %bb.u, %bb.r, %bb.q, %._crit_edge.i, %bb.m, %bb.at, %bb.as, %bb.ao, %bb.an
  %.0141218 = phi ptr [ %.us-phi244, %bb.m ], [ %.us-phi233, %bb.at ], [ %.us-phi233, %bb.as ], [ %.us-phi233, %bb.ao ], [ %.us-phi233, %bb.an ], [ %.us-phi244, %._crit_edge.i ], [ %.us-phi244, %bb.q ], [ %.us-phi244, %bb.r ], [ %.us-phi244, %bb.u ] ; 3 uses
  %.0140213 = phi ptr [ %.us-phi245, %bb.m ], [ %.us-phi234, %bb.at ], [ %.us-phi234, %bb.as ], [ %.us-phi234, %bb.ao ], [ %.us-phi234, %bb.an ], [ %.us-phi245, %._crit_edge.i ], [ %.us-phi245, %bb.q ], [ %.us-phi245, %bb.r ], [ %.us-phi245, %bb.u ] ; 3 uses
  %.3148 = phi ptr [ %.us-phi243, %bb.m ], [ %i.cq, %bb.at ], [ %i.cq, %bb.as ], [ %i.cq, %bb.ao ], [ %i.cq, %bb.an ], [ %.us-phi243, %._crit_edge.i ], [ %.us-phi243, %bb.q ], [ %.us-phi243, %bb.r ], [ %.us-phi243, %bb.u ]
  %i.dn = icmp ne ptr %.0140213, null
  %i.do = icmp ne ptr %.0141218, null
  %or.cond = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond, label %bb.av, label %.sink.split

bb.av:                                            ; preds = %.thread
  %i.dp = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.0141218, ptr noundef %i.j, ptr noundef %3) #20
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %.0141218, i64 %i.dq ; 2 uses
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.av, %bb.ar, %bb.au, %bb.al, %bb.l
  %.0145.ph.be = phi ptr [ %i.aq, %bb.l ], [ %i.cl, %bb.al ], [ %i.dj, %bb.au ], [ %i.dd, %bb.ar ], [ %.0140213, %bb.av ]
  %.0142.ph.be = phi ptr [ %i.at, %bb.l ], [ %i.co, %bb.al ], [ %i.dm, %bb.au ], [ %i.de, %bb.ar ], [ %i.dr, %bb.av ]
  %.0141.ph.be = phi ptr [ %.us-phi239, %bb.l ], [ %.us-phi244, %bb.al ], [ %.us-phi233, %bb.au ], [ %.us-phi233, %bb.ar ], [ %i.dr, %bb.av ]
  %.0140.ph.be = phi ptr [ %.us-phi240, %bb.l ], [ %.us-phi245, %bb.al ], [ %.us-phi234, %bb.au ], [ %.us-phi234, %bb.ar ], [ %.0140213, %bb.av ]
  br label %.outer

.sink.split:                                      ; preds = %.thread, %.split242.us, %.split237.us, %bb.h, %bb.h, %bb.i, %bb.k, %.split247.us
  %.us-phi243.sink = phi ptr [ %i.s, %bb.h ], [ %i.ab, %bb.i ], [ %i.ag, %bb.k ], [ %spec.select197, %.split247.us ], [ %i.s, %bb.h ], [ %.3148, %.thread ], [ %.us-phi243, %.split242.us ], [ %.us-phi238, %.split237.us ]
  %.3.shrunk.ph = phi i1 [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.k ], [ false, %.split247.us ], [ true, %bb.h ], [ true, %.split237.us ], [ true, %.split242.us ], [ true, %.thread ]
  store ptr %.us-phi243.sink, ptr %0, align 8, !tbaa !156
  store ptr %.0142.ph, ptr %1, align 8, !tbaa !156
  br label %bb.aw

bb.aw:                                            ; preds = %bb.am, %.sink.split, %bb.e
  %.3.shrunk = phi i1 [ true, %bb.e ], [ %.3.shrunk.ph, %.sink.split ], [ %spec.select602, %bb.am ]
  %.3 = zext i1 %.3.shrunk to i32
  ret i32 %.3
}

declare i32 @rb_enc_precise_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_enc_toupper(i32 noundef, ptr noundef) local_unnamed_addr #15

declare i32 @rb_enc_codepoint_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @rb_glob_caller(ptr noundef %0, i64 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = inttoptr i64 %1 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !163
  %i.d = call i64 @rb_protect(ptr noundef nonnull @glob_func_caller, i64 noundef %1, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @rb_glob_error(ptr noundef %0, i64 %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.glob_error_args, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %cond = icmp eq i32 %3, 13
  %spec.store.select = select i1 %cond, ptr @glob_func_warning, ptr @glob_func_error
  store ptr %0, ptr %4, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %3, ptr %i.c, align 8, !tbaa !167
  %i.d = ptrtoint ptr %4 to i64
  %i.e = call i64 @rb_protect(ptr noundef nonnull %spec.store.select, i64 noundef %i.d, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @glob_func_caller(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163
  %i.e = getelementptr i8, ptr %i.a, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr i8, ptr %i.a, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  tail call void %i.b(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #20
  ret i64 4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @glob_func_error(i64 noundef %0) #13 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = tail call i64 @rb_enc_str_new_cstr(ptr noundef %i.b, ptr noundef %i.d) #20
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !167
  tail call void @rb_syserr_fail_str(i32 noundef %i.g, i64 noundef %i.e) #24
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @glob_func_warning(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !167
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !164
  tail call void (i32, ptr, ptr, ...) @rb_syserr_enc_warning(i32 noundef %i.c, ptr noundef %i.e, ptr noundef nonnull @.str.52, ptr noundef %i.f) #20
end_hunk_1
begin_hunk_2_@chdir_restore:bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !87
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %dir_chdir0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @chdir_lock, i64 20), align 4, !tbaa !74
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @chdir_lock, i64 20), align 4, !tbaa !74
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %chdir_leave.exit

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr @chdir_lock, align 8, !tbaa !76
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @chdir_lock, i64 8), align 8, !tbaa !77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @chdir_lock, i64 16), align 8, !tbaa !78
  br label %chdir_leave.exit

chdir_leave.exit:                                 ; preds = %bb.b, %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %chdir_leave.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.d, %chdir_leave.exit
  %i.m = phi ptr [ %i.l, %bb.d ], [ %i.k, %chdir_leave.exit ]
  %i.n = tail call ptr @rb_nogvl(ptr noundef nonnull @nogvl_chdir, ptr noundef %i.m, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #20
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 2147483648
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %dir_chdir0.exit, label %bb.e

bb.e:                                             ; preds = %RSTRING_PTR.exit.i
  %i.q = tail call ptr @rb_errno_ptr() #20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.dir_chdir0, i32 noundef %i.r, i64 noundef %i.g) #24
  unreachable

dir_chdir0.exit:                                  ; preds = %RSTRING_PTR.exit.i, %bb.a
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_chdir(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @chdir(ptr noundef %0) #20
  %i.b = sext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: noreturn
declare void @rb_syserr_fail_path_in(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_yield_values2(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @check_dirname(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call i64 @rb_get_path(i64 noundef %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %i.a, ptr %i.b, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #20, !srcloc !170
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  store volatile i64 %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %i.f = call ptr @rb_enc_get(i64 noundef %i.e) #20 ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !11
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = and i64 %i.i, 8192
  %.not.i = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ %i.k, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = call ptr @rb_enc_path_skip_prefix(ptr noundef %i.m, ptr noundef %i.p, ptr noundef %i.f) #20
  %i.r = call ptr @rb_enc_path_end(ptr noundef %i.q, ptr noundef %i.p, ptr noundef %i.f) #20
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp slt i64 %i.u, %i.o
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.w = load i64, ptr %i.a, align 8, !tbaa !11
  %i.x = call i64 @rb_str_subseq(i64 noundef %i.w, i64 noundef 0, i64 noundef %i.u) #20
  store i64 %i.x, ptr %i.a, align 8, !tbaa !11
  %i.y = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %RSTRING_PTR.exit
  %i.z = load i64, ptr %i.a, align 8, !tbaa !11
  %i.aa = call i64 @rb_str_encode_ospath(i64 noundef %i.z) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_chroot(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @chroot(ptr noundef %0) #20
  %i.b = sext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #2

declare ptr @rb_enc_path_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_enc_path_skip_prefix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chroot(ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef ptr @nogvl_mkdir(ptr noundef readonly captures(none) %0) #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !91
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89
  %i.d = tail call i32 @mkdir(ptr noundef %i.a, i32 noundef %i.c) #20
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

declare i64 @rb_num2uint(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef ptr @nogvl_rmdir(ptr noundef readonly captures(none) %0) #16 {
bb.a:
  %i.a = tail call i32 @rmdir(ptr noundef %0) #20
  %i.b = sext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #14

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #2

declare void @rb_must_asciicompat(i64 noundef) local_unnamed_addr #2

declare i64 @rb_home_dir_of(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_default_home_dir(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_dir_empty_p(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noalias ptr @opendir(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.d, ptr %i.a, align 4, !tbaa !7
  %i.e = load i64, ptr @rb_cThread, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %gc_for_fd_with_gvl.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @rb_gc_for_fd(i32 noundef %i.d) #20
  %.fr = freeze i32 %i.f
  %.not1.i = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not1.i, label %gc_for_fd_with_gvl.exit.thread, label %gc_for_fd_with_gvl.exit.thread32

gc_for_fd_with_gvl.exit:                          ; preds = %bb.b
  %i.g = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @with_gvl_gc_for_fd, ptr noundef nonnull %i.a) #20
  %i.h = ptrtoint ptr %i.g to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = and i64 %i.h, 4294967295
  %cond = icmp eq i64 %i.i, 0
  br i1 %cond, label %gc_for_fd_with_gvl.exit.thread, label %gc_for_fd_with_gvl.exit.thread32

gc_for_fd_with_gvl.exit.thread32:                 ; preds = %bb.c, %gc_for_fd_with_gvl.exit
  %i.j = call noalias ptr @opendir(ptr noundef %0) ; 2 uses
  %.not24 = icmp eq ptr %i.j, null
  br i1 %.not24, label %bb.d, label %bb.f

bb.d:                                             ; preds = %gc_for_fd_with_gvl.exit.thread32
  %i.k = call ptr @rb_errno_ptr() #20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  br label %gc_for_fd_with_gvl.exit.thread

gc_for_fd_with_gvl.exit.thread:                   ; preds = %bb.c, %gc_for_fd_with_gvl.exit, %bb.d
  %.014 = phi i32 [ %i.d, %gc_for_fd_with_gvl.exit ], [ %i.l, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.m = icmp eq i32 %.014, 20
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %gc_for_fd_with_gvl.exit.thread
  %i.n = sext i32 %.014 to i64
  %i.o = shl nsw i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, 1
  %i.q = inttoptr i64 %i.p to ptr
  br label %.thread

bb.f:                                             ; preds = %gc_for_fd_with_gvl.exit.thread32, %bb.a
  %.2 = phi ptr [ %i.b, %bb.a ], [ %i.j, %gc_for_fd_with_gvl.exit.thread32 ] ; 3 uses
  call void @rb_errno_set(i32 noundef 0) #20
  %i.r = call ptr @readdir(ptr noundef nonnull %.2) #20 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge._crit_edge, label %nogvl_readdir.exit

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %bb.f
  %i.t = call i32 @rb_errno() #20
  %.not.i27 = icmp eq i32 %i.t, 0
  br i1 %.not.i27, label %nogvl_readdir.exit.thread, label %bb.g

bb.g:                                             ; preds = %.critedge._crit_edge
  %i.u = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @sys_failure, ptr noundef nonnull @.str.49) #20 ; 0 uses
  br label %nogvl_readdir.exit.thread

nogvl_readdir.exit:                               ; preds = %bb.f, %.critedge.backedge
  %i.v = phi ptr [ %i.ac, %.critedge.backedge ], [ %i.r, %bb.f ] ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %.not.i28 = icmp eq i8 %i.x, 46
  br i1 %.not.i28, label %bb.h, label %nogvl_readdir.exit.thread

bb.h:                                             ; preds = %nogvl_readdir.exit
  %i.y = getelementptr i8, ptr %i.v, i64 20
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  switch i8 %i.z, label %nogvl_readdir.exit.thread [
    i8 0, label %.critedge.backedge
    i8 46, label %to_be_skipped.exit
  ]

to_be_skipped.exit:                               ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.v, i64 21
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %.not8.i.not = icmp eq i8 %i.ab, 0
  br i1 %.not8.i.not, label %.critedge.backedge, label %nogvl_readdir.exit.thread

.critedge.backedge:                               ; preds = %to_be_skipped.exit, %bb.h
  call void @rb_errno_set(i32 noundef 0) #20
  %i.ac = call ptr @readdir(ptr noundef nonnull %.2) #20 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge._crit_edge, label %nogvl_readdir.exit, !llvm.loop !171

nogvl_readdir.exit.thread:                        ; preds = %bb.h, %nogvl_readdir.exit, %to_be_skipped.exit, %bb.g, %.critedge._crit_edge
  %.015 = phi i64 [ 20, %bb.g ], [ 20, %.critedge._crit_edge ], [ 0, %to_be_skipped.exit ], [ 0, %nogvl_readdir.exit ], [ 0, %bb.h ]
  %i.ae = call i32 @closedir(ptr noundef nonnull %.2)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %check_closedir.exit

bb.i:                                             ; preds = %nogvl_readdir.exit.thread
  %i.ag = call ptr @rb_errno_ptr() #20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.ah, ptr noundef nonnull @.str.50) #24
  unreachable

check_closedir.exit:                              ; preds = %nogvl_readdir.exit.thread
  %i.ai = inttoptr i64 %.015 to ptr
  br label %.thread

.thread:                                          ; preds = %bb.e, %gc_for_fd_with_gvl.exit.thread, %check_closedir.exit
  %.1 = phi ptr [ %i.ai, %check_closedir.exit ], [ %i.q, %bb.e ], [ null, %gc_for_fd_with_gvl.exit.thread ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @fnmatch_brace(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = tail call ptr @rb_enc_get(i64 noundef %i.d) #20 ; 3 uses
  %.not = icmp eq ptr %2, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 20
  %.val.i = load i32, ptr %i.f, align 4, !tbaa !172
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.b
  %i.g = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %2) #21
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %bb.c, label %rb_enc_asciicompat.exit.thread

bb.c:                                             ; preds = %rb_enc_asciicompat.exit
  %i.h = getelementptr i8, ptr %i.e, i64 20
  %.val.i25 = load i32, ptr %i.h, align 4, !tbaa !172
  %.not.i26 = icmp eq i32 %.val.i25, 1
  br i1 %.not.i26, label %rb_enc_asciicompat.exit29, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit29:                        ; preds = %bb.c
  %i.i = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.e) #21
  %.not3.i28 = icmp eq i32 %i.i, 0
  br i1 %.not3.i28, label %bb.d, label %rb_enc_asciicompat.exit.thread

bb.d:                                             ; preds = %rb_enc_asciicompat.exit29
  %i.j = tail call i32 @rb_enc_str_asciionly_p(i64 noundef %i.d) #20
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1048576, ptr %i.a, align 4, !tbaa !7
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = call i64 @rb_str_coderange_scan_restartable(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #20
  %.not23 = icmp eq i64 %i.m, %i.k
  %i.n = load i32, ptr %i.a, align 4
  %.not24 = icmp eq i32 %i.n, 1048576
  %cond = select i1 %.not23, i1 %.not24, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %cond, label %bb.f, label %rb_enc_asciicompat.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.o = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = and i64 %i.p, 8192
  %.not.i30 = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  br i1 %.not.i30, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44
  %i.w = call fastcc i32 @fnmatch(ptr noundef %0, ptr noundef %2, ptr noundef %i.t, i32 noundef %i.v)
  %i.x = xor i32 %i.w, 1
  br label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.c, %bb.b, %rb_enc_asciicompat.exit29, %rb_enc_asciicompat.exit, %bb.e, %RSTRING_PTR.exit
  %.1 = phi i32 [ %i.x, %RSTRING_PTR.exit ], [ 1, %bb.e ], [ 1, %rb_enc_asciicompat.exit ], [ 1, %rb_enc_asciicompat.exit29 ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.1
}

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_enc_str_asciionly_p(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_coderange_scan_restartable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #3

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noalias noundef ptr @nogvl_opendir(ptr noundef readonly captures(none) %0) #16 {
bb.a:
  %i.a = tail call noalias ptr @opendir(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_push_glob(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, -8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
end_hunk_2
