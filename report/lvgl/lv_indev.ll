Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_indev?download=true
inline.NumInlined: 98
inline.NumDeleted: 21
begin_hunk_0_@indev_proc_release:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45
  %i.aj = tail call i32 @lv_obj_send_event(ptr noundef %.pre171, i32 noundef 3, ptr noundef %i.ai) #11 ; 0 uses
  %i.ak = load i8, ptr %i.a, align 4              ; 2 uses
  %i.al = and i8 %i.ak, 2
  %.not.i126 = icmp eq i8 %i.al, 0
  br i1 %.not.i126, label %indev_reset_check.exit130.thread, label %indev_reset_check.exit130

indev_reset_check.exit130:                        ; preds = %bb.g
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i127 = load i8, ptr %i.a, align 4         ; 3 uses
  %.pre2.i128 = and i8 %.pre.i127, 2
  %.not157 = icmp eq i8 %.pre2.i128, 0
  br i1 %.not157, label %indev_reset_check.exit130.thread, label %bb.h

bb.h:                                             ; preds = %indev_reset_check.exit130
  %i.am = and i8 %.pre.i127, -9
  store i8 %i.am, ptr %i.a, align 4
  br label %.critedge110

indev_reset_check.exit130.thread:                 ; preds = %bb.g, %indev_reset_check.exit130
  %i.an = phi i8 [ %i.ak, %bb.g ], [ %.pre.i127, %indev_reset_check.exit130 ]
  store ptr null, ptr %.phi.trans.insert, align 8, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ao, align 4, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ap, align 8, !tbaa !49
  %i.aq = and i8 %i.an, -9
  store i8 %i.aq, ptr %i.a, align 4
  br label %._crit_edge170

._crit_edge170:                                   ; preds = %bb.f, %indev_reset_check.exit130.thread
  %i.ar = phi ptr [ null, %indev_reset_check.exit130.thread ], [ %.pre171, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !26
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge170
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  %.not100 = icmp eq ptr %i.az, null
  br i1 %.not100, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call zeroext i1 @lv_timer_get_paused(ptr noundef nonnull %i.az) #11
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !23
  tail call void @lv_timer_pause(ptr noundef %i.bb) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %._crit_edge170
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54 ; 2 uses
  %.not101 = icmp eq ptr %i.bc, null
  br i1 %.not101, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call zeroext i1 @lv_obj_has_state(ptr noundef nonnull %i.bc, i32 noundef 512) #11
  br i1 %i.bd, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 4 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 368
  %i.bh = tail call i32 @lv_event_push_and_send(ptr noundef nonnull %i.bg, i32 noundef 11, ptr noundef %i.be, ptr noundef %i.bf) #11 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 4             ; 2 uses
  %i.bk = and i8 %i.bj, 2
  %.not.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i, label %indev_reset_check.exit.thread.i, label %indev_reset_check.exit.i

indev_reset_check.exit.i:                         ; preds = %bb.n
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i.i = load i8, ptr %i.bi, align 4         ; 2 uses
  %.pre2.i.i = and i8 %.pre.i.i, 2
  %.not.i131 = icmp eq i8 %.pre2.i.i, 0
  br i1 %.not.i131, label %indev_reset_check.exit.thread.i, label %.critedge110

indev_reset_check.exit.thread.i:                  ; preds = %indev_reset_check.exit.i, %bb.n
  %.val.i = phi i8 [ %i.bj, %bb.n ], [ %.pre.i.i, %indev_reset_check.exit.i ] ; 2 uses
  %i.bl = and i8 %.val.i, 16
  %.not37.i = icmp eq i8 %i.bl, 0
  br i1 %.not37.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %indev_reset_check.exit.thread.i
  %i.bm = and i8 %.val.i, -17
  store i8 %i.bm, ptr %i.bi, align 4
  br label %send_event.exit.thread

bb.p:                                             ; preds = %indev_reset_check.exit.thread.i
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.bo = tail call i32 @lv_obj_send_event(ptr noundef %i.bn, i32 noundef 11, ptr noundef nonnull %i.be) #11 ; 0 uses
  %i.bp = load i8, ptr %i.bi, align 4
  %i.bq = and i8 %i.bp, 2
  %.not.i29.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i29.i, label %send_event.exit.thread, label %send_event.exit

send_event.exit:                                  ; preds = %bb.p
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i30.i = load i8, ptr %i.bi, align 4
  %.pre.i30.fr.i = freeze i8 %.pre.i30.i
  %.pre2.i31.i = and i8 %.pre.i30.fr.i, 2
  %.not38.i.not = icmp eq i8 %.pre2.i31.i, 0
  br i1 %.not38.i.not, label %send_event.exit.thread, label %.critedge110

send_event.exit.thread:                           ; preds = %bb.p, %bb.o, %send_event.exit
  %i.br = icmp eq ptr %i.au, null
  br i1 %i.br, label %bb.q, label %bb.u

bb.q:                                             ; preds = %send_event.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.bt = load i16, ptr %i.bs, align 4
  %i.bu = and i16 %i.bt, 1024
  %.not102 = icmp eq i16 %i.bu, 0
  br i1 %.not102, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i8, ptr %i.a, align 4
  %i.bw = and i8 %i.bv, 1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = tail call fastcc i32 @indev_proc_short_click(ptr noundef %0)
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.critedge110, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45
  %i.cb = tail call fastcc i32 @send_event(i32 noundef 10, ptr noundef %i.ca)
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.critedge110, label %.critedge.thread

bb.u:                                             ; preds = %send_event.exit.thread
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45
  %i.ce = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.au, i32 noundef 13, ptr noundef %i.cd) #11 ; 0 uses
  %i.cf = load i8, ptr %i.a, align 4
  %i.cg = and i8 %i.cf, 2
  %.not.i132 = icmp eq i8 %i.cg, 0
  br i1 %.not.i132, label %.critedge.thread177, label %indev_reset_check.exit136

indev_reset_check.exit136:                        ; preds = %bb.u
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i133 = load i8, ptr %i.a, align 4
  %.pre2.i134 = and i8 %.pre.i133, 2
  %.not158 = icmp eq i8 %.pre2.i134, 0
  br i1 %.not158, label %.critedge.thread177, label %.critedge110

.critedge.thread:                                 ; preds = %bb.t, %bb.q
  store ptr null, ptr %i.as, align 8, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ch, align 4, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ci, align 8, !tbaa !49
  br label %.critedge110

.critedge.thread177:                              ; preds = %bb.u, %indev_reset_check.exit136
  store ptr null, ptr %i.as, align 8, !tbaa !67
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.cj, align 4, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ck, align 8, !tbaa !49
  br label %bb.v

.critedge:                                        ; preds = %bb.m
  store ptr null, ptr %i.as, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.cl, align 4, !tbaa !48
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.cm, align 8, !tbaa !49
  %cond = icmp eq ptr %i.au, null
  br i1 %cond, label %.critedge110, label %bb.v

bb.v:                                             ; preds = %.critedge.thread177, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 0, ptr %2, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.w
  %.0161 = phi ptr [ %i.au, %bb.v ], [ %i.cy, %bb.w ] ; 4 uses
  %.088160 = phi i32 [ 256, %bb.v ], [ %i.cx, %bb.w ]
  %.089159 = phi i16 [ 0, %bb.v ], [ %i.cq, %bb.w ]
  %i.cn = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.0161, i32 noundef 0, i8 noundef zeroext -100) #11
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = trunc i64 %i.co to i16
  %i.cq = add i16 %.089159, %i.cp                 ; 3 uses
  %i.cr = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.0161, i32 noundef 0, i8 noundef zeroext -104) #11
  %i.cs = ptrtoint ptr %i.cr to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.cs to i32
  %i.ct = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 1)
  %i.cu = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.0161, i32 noundef 0, i8 noundef zeroext -103) #11
  %sext166 = shl i32 %.088160, 16
  %i.cv = ashr exact i32 %sext166, 16
  %i.cw = mul nsw i32 %i.ct, %i.cv                ; 2 uses
  %i.cx = lshr i32 %i.cw, 8                       ; 3 uses
  %i.cy = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.0161) #11 ; 2 uses
  %.not104 = icmp eq ptr %i.cy, null
  br i1 %.not104, label %bb.x, label %bb.w, !llvm.loop !138

bb.x:                                             ; preds = %bb.w
  %i.cz = ptrtoint ptr %i.cu to i64
  %.sroa.0.0.extract.trunc.i.i137.le = trunc i64 %i.cz to i32
  %i.da = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i137.le, i32 1)
  %sext106.le = shl i32 %i.cx, 16
  %i.db = ashr exact i32 %sext106.le, 16
  %i.dc = mul nsw i32 %i.db, %i.da                ; 2 uses
  %3 = icmp ne i16 %i.cq, 0
  %4 = and i32 %i.dc, 16776960
  %i.dd = icmp ne i32 %4, 65536
  %or.cond = select i1 %3, i1 true, i1 %i.dd
  %5 = and i32 %i.cw, 16776960
  %i.de = icmp ne i32 %5, 65536
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.de
  br i1 %or.cond5, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %6 = lshr i32 %i.dc, 8
  %7 = trunc i32 %i.cx to i16
  %8 = insertelement <2 x i16> poison, i16 %7, i64 0
  %9 = trunc i32 %6 to i16
  %10 = insertelement <2 x i16> %8, i16 %9, i64 1
  %11 = tail call <2 x i16> @llvm.umax.v2i16(<2 x i16> %10, <2 x i16> splat (i16 1))
  %i.df = sub i16 0, %i.cq
  %12 = sext <2 x i16> %11 to <2 x i32>
  %13 = sdiv <2 x i32> splat (i32 65536), %12
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.dh = sext i16 %i.df to i32                   ; 2 uses
  %14 = shl <2 x i32> %13, splat (i32 16)         ; 2 uses
  %15 = extractelement <2 x i32> %14, i64 0
  %i.di = ashr exact i32 %15, 16                  ; 2 uses
  %16 = extractelement <2 x i32> %14, i64 1
  %i.dj = ashr exact i32 %16, 16                  ; 2 uses
  call void @lv_point_transform(ptr noundef nonnull %i.dg, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef %i.dj, ptr noundef nonnull %2, i1 noundef zeroext false) #11
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 244
  call void @lv_point_transform(ptr noundef nonnull %i.dk, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef %i.dj, ptr noundef nonnull %2, i1 noundef zeroext false) #11
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.aa

bb.z:                                             ; preds = %bb.l
  %.not107 = icmp eq ptr %i.au, null
  br i1 %.not107, label %.critedge110, label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !82
  %.not108 = icmp eq ptr %i.dm, null
  br i1 %.not108, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @lv_anim_init(ptr noundef nonnull %1) #11
  call void @lv_anim_set_var(ptr noundef nonnull %1, ptr noundef nonnull %0) #11
  call void @lv_anim_set_duration(ptr noundef nonnull %1, i32 noundef 1024) #11
  call void @lv_anim_set_values(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1024) #11
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %1, ptr noundef nonnull @indev_scroll_throw_anim_cb) #11
  call void @lv_anim_set_completed_cb(ptr noundef nonnull %1, ptr noundef nonnull @indev_scroll_throw_anim_completed_cb) #11
  call void @lv_anim_set_deleted_cb(ptr noundef nonnull %1, ptr noundef nonnull @indev_scroll_throw_anim_completed_cb) #11
  call void @lv_anim_set_repeat_count(ptr noundef nonnull %1, i32 noundef -1) #11
  %i.dn = call ptr @lv_anim_start(ptr noundef nonnull %1) #11
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.do = load i8, ptr %i.a, align 4
  %i.dp = and i8 %i.do, 2
  %.not.i138 = icmp eq i8 %i.dp, 0
  br i1 %.not.i138, label %.critedge110, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  br label %.critedge110

.critedge110:                                     ; preds = %.critedge.thread, %indev_reset_check.exit.i, %indev_reset_check.exit120, %indev_reset_check.exit115, %indev_reset_check.exit, %indev_reset_check.exit125, %bb.ad, %bb.ac, %.critedge, %bb.z, %indev_reset_check.exit136, %bb.s, %send_event.exit, %bb.t, %bb.h
  ret void
}

declare zeroext i1 @lv_obj_is_editable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @send_event(i32 noundef range(i32 1, 40) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 4 uses
  %i.b = and i32 %0, 60
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i32 %0, label %bb.d [
    i32 18, label %bb.b
    i32 17, label %bb.b
    i32 4, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.f = tail call i32 @lv_event_push_and_send(ptr noundef nonnull %i.e, i32 noundef %0, ptr noundef %i.a, ptr noundef %i.d) #11 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %indev_reset_check.exit.thread, label %indev_reset_check.exit

indev_reset_check.exit:                           ; preds = %bb.b
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i = load i8, ptr %i.g, align 4            ; 2 uses
  %.pre2.i = and i8 %.pre.i, 2
  %.not = icmp eq i8 %.pre2.i, 0
  br i1 %.not, label %indev_reset_check.exit.thread, label %indev_reset_check.exit33.thread

indev_reset_check.exit.thread:                    ; preds = %bb.b, %indev_reset_check.exit
  %.val = phi i8 [ %i.h, %bb.b ], [ %.pre.i, %indev_reset_check.exit ] ; 2 uses
  %i.j = and i8 %.val, 16
  %.not37 = icmp eq i8 %i.j, 0
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %indev_reset_check.exit.thread
  %i.k = and i8 %.val, -17
  store i8 %i.k, ptr %i.g, align 4
  br label %indev_reset_check.exit33.thread

bb.d:                                             ; preds = %switch.early.test, %indev_reset_check.exit.thread
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.m = tail call i32 @lv_obj_send_event(ptr noundef %i.l, i32 noundef %0, ptr noundef %1) #11 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 2
  %.not.i29 = icmp eq i8 %i.p, 0
  br i1 %.not.i29, label %indev_reset_check.exit33.thread, label %indev_reset_check.exit33

indev_reset_check.exit33:                         ; preds = %bb.d
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i30 = load i8, ptr %i.n, align 4
  %.pre.i30.fr = freeze i8 %.pre.i30
  %.pre2.i31 = and i8 %.pre.i30.fr, 2
  %.not38 = icmp eq i8 %.pre2.i31, 0
  %spec.select = zext i1 %.not38 to i32
  br label %indev_reset_check.exit33.thread

indev_reset_check.exit33.thread:                  ; preds = %indev_reset_check.exit33, %bb.d, %indev_reset_check.exit, %bb.c
  %.0 = phi i32 [ 0, %indev_reset_check.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ %spec.select, %indev_reset_check.exit33 ]
  ret i32 %.0
}

declare ptr @lv_indev_find_scroll_obj(ptr noundef) local_unnamed_addr #2

declare void @lv_indev_scroll_handler(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pointer_search_obj(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_display_get_layer_sys(ptr noundef %0) #11
  %i.b = tail call ptr @lv_indev_search_obj(ptr noundef %i.a, ptr noundef nonnull %1) ; 3 uses
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lv_display_get_layer_top(ptr noundef %0) #11
  %i.d = tail call ptr @lv_indev_search_obj(ptr noundef %i.c, ptr noundef nonnull %1) ; 3 uses
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @lv_display_get_screen_active(ptr noundef %0) #11
  %i.f = tail call ptr @lv_indev_search_obj(ptr noundef %i.e, ptr noundef nonnull %1) ; 3 uses
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @lv_display_get_layer_bottom(ptr noundef %0) #11
  %i.h = tail call ptr @lv_indev_search_obj(ptr noundef %i.g, ptr noundef nonnull %1) ; 2 uses
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0
}

declare zeroext i1 @lv_anim_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @indev_scroll_throw_anim_cb(ptr noundef %0, i32 %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @lv_indev_scroll_throw_handler(ptr noundef nonnull %0) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 15
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %.not7 = icmp eq ptr %i.i, null
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @lv_anim_delete(ptr noundef nonnull %0, ptr noundef nonnull @indev_scroll_throw_anim_cb) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

declare void @lv_indev_scroll_throw_handler(ptr noundef) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@indev_proc_short_click:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  switch i32 %i.af, label %bb.f [
    i32 1, label %bb.g
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %thread-pre-split
  store i32 -1, ptr %i.ah, align 8, !tbaa !74
  br label %lv_indev_get_point.exit

bb.g:                                             ; preds = %thread-pre-split, %thread-pre-split
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !62
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !63
  br label %lv_indev_get_point.exit

lv_indev_get_point.exit:                          ; preds = %bb.f, %bb.g
  %.sink.i = phi i32 [ -1, %bb.f ], [ %i.ak, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %.sink.i, ptr %i.al, align 4, !tbaa !75
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 4 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 368
  %i.ap = tail call i32 @lv_event_push_and_send(ptr noundef nonnull %i.ao, i32 noundef 4, ptr noundef %i.am, ptr noundef %i.an) #11 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 28 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 4             ; 2 uses
  %i.as = and i8 %i.ar, 2
  %.not.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i, label %indev_reset_check.exit.thread.i, label %indev_reset_check.exit.i

indev_reset_check.exit.i:                         ; preds = %lv_indev_get_point.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i.i = load i8, ptr %i.aq, align 4         ; 2 uses
  %.pre2.i.i = and i8 %.pre.i.i, 2
  %.not.i = icmp eq i8 %.pre2.i.i, 0
  br i1 %.not.i, label %indev_reset_check.exit.thread.i, label %send_event.exit36

indev_reset_check.exit.thread.i:                  ; preds = %indev_reset_check.exit.i, %lv_indev_get_point.exit
  %.val.i = phi i8 [ %i.ar, %lv_indev_get_point.exit ], [ %.pre.i.i, %indev_reset_check.exit.i ] ; 2 uses
  %i.at = and i8 %.val.i, 16
  %.not37.i = icmp eq i8 %i.at, 0
  br i1 %.not37.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %indev_reset_check.exit.thread.i
  %i.au = and i8 %.val.i, -17
  store i8 %i.au, ptr %i.aq, align 4
  br label %send_event.exit.thread

bb.i:                                             ; preds = %indev_reset_check.exit.thread.i
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.aw = tail call i32 @lv_obj_send_event(ptr noundef %i.av, i32 noundef 4, ptr noundef nonnull %i.am) #11 ; 0 uses
  %i.ax = load i8, ptr %i.aq, align 4
  %i.ay = and i8 %i.ax, 2
  %.not.i29.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i29.i, label %send_event.exit.thread, label %send_event.exit

send_event.exit:                                  ; preds = %bb.i
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i30.i = load i8, ptr %i.aq, align 4
  %.pre.i30.fr.i = freeze i8 %.pre.i30.i
  %.pre2.i31.i = and i8 %.pre.i30.fr.i, 2
  %.not38.i.not = icmp eq i8 %.pre2.i31.i, 0
  br i1 %.not38.i.not, label %send_event.exit.thread, label %send_event.exit36

send_event.exit.thread:                           ; preds = %bb.i, %bb.h, %send_event.exit
  %i.az = load i8, ptr %i.b, align 4, !tbaa !80
  %i.ba = zext i8 %i.az to i16
  %.lhs.trunc = add nsw i16 %i.ba, -1
  %i.bb = srem i16 %.lhs.trunc, 3
  switch i16 %i.bb, label %send_event.exit36 [
    i16 0, label %bb.j
    i16 1, label %bb.k
    i16 2, label %bb.l
  ]

bb.j:                                             ; preds = %send_event.exit.thread
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.be = tail call i32 @lv_obj_send_event(ptr noundef %i.bd, i32 noundef 5, ptr noundef %i.bc) #11 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 28 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = and i8 %i.bg, 2
  %.not.i29.i28 = icmp eq i8 %i.bh, 0
  br i1 %.not.i29.i28, label %send_event.exit36, label %indev_reset_check.exit33.i29

indev_reset_check.exit33.i29:                     ; preds = %bb.j
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i30.i30 = load i8, ptr %i.bf, align 4
  %.pre.i30.fr.i31 = freeze i8 %.pre.i30.i30
  %.pre2.i31.i32 = and i8 %.pre.i30.fr.i31, 2
  %.not38.i33 = icmp eq i8 %.pre2.i31.i32, 0
  br label %send_event.exit36

bb.k:                                             ; preds = %send_event.exit.thread
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.bk = tail call i32 @lv_obj_send_event(ptr noundef %i.bj, i32 noundef 6, ptr noundef %i.bi) #11 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 28 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 4
  %i.bn = and i8 %i.bm, 2
  %.not.i29.i37 = icmp eq i8 %i.bn, 0
  br i1 %.not.i29.i37, label %send_event.exit36, label %indev_reset_check.exit33.i38

indev_reset_check.exit33.i38:                     ; preds = %bb.k
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i30.i39 = load i8, ptr %i.bl, align 4
  %.pre.i30.fr.i40 = freeze i8 %.pre.i30.i39
  %.pre2.i31.i41 = and i8 %.pre.i30.fr.i40, 2
  %.not38.i42 = icmp eq i8 %.pre2.i31.i41, 0
  br label %send_event.exit36

bb.l:                                             ; preds = %send_event.exit.thread
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 2 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.bq = tail call i32 @lv_obj_send_event(ptr noundef %i.bp, i32 noundef 7, ptr noundef %i.bo) #11 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 2
  %.not.i29.i46 = icmp eq i8 %i.bt, 0
  br i1 %.not.i29.i46, label %send_event.exit36, label %indev_reset_check.exit33.i47

indev_reset_check.exit33.i47:                     ; preds = %bb.l
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i30.i48 = load i8, ptr %i.br, align 4
  %.pre.i30.fr.i49 = freeze i8 %.pre.i30.i48
  %.pre2.i31.i50 = and i8 %.pre.i30.fr.i49, 2
  %.not38.i51 = icmp eq i8 %.pre2.i31.i50, 0
  br label %send_event.exit36

send_event.exit36:                                ; preds = %indev_reset_check.exit.i, %indev_reset_check.exit33.i47, %bb.l, %indev_reset_check.exit33.i38, %bb.k, %indev_reset_check.exit33.i29, %bb.j, %send_event.exit.thread, %send_event.exit
  %.0.shrunk = phi i1 [ %.not38.i42, %indev_reset_check.exit33.i38 ], [ false, %send_event.exit ], [ %.not38.i51, %indev_reset_check.exit33.i47 ], [ %.not38.i33, %indev_reset_check.exit33.i29 ], [ true, %send_event.exit.thread ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ false, %indev_reset_check.exit.i ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @lv_point_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_completed_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @indev_scroll_throw_anim_completed_cb(ptr nofree noundef readonly captures(address_is_null) %0) #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %indev_scroll_throw_anim_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %indev_scroll_throw_anim_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 0, ptr %i.b, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i32 0, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr null, ptr %i.d, align 8, !tbaa !82
  br label %indev_scroll_throw_anim_reset.exit

indev_scroll_throw_anim_reset.exit:               ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @lv_anim_set_deleted_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_repeat_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #2

declare ptr @lv_group_get_focused(ptr noundef) local_unnamed_addr #2

declare void @lv_group_set_editing(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @lv_group_focus_next(ptr noundef) local_unnamed_addr #2

declare void @lv_group_focus_prev(ptr noundef) local_unnamed_addr #2

declare i32 @lv_group_send_data(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_group_get_editing(ptr noundef) local_unnamed_addr #2

declare i32 @lv_group_get_obj_count(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_remove_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umax.v2i16(<2 x i16>, <2 x i16>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS13_lv_display_t", !8, i64 0}
!10 = !{!"p1 _ZTS11_lv_timer_t", !8, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"", !5, i64 0, !5, i64 4}
!13 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!15 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !4, i64 32, !4, i64 96, !4, i64 128, !12, i64 132, !12, i64 140, !12, i64 148, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !14, i64 192, !12, i64 208, !5, i64 216, !4, i64 220, !12, i64 224, !5, i64 232, !4, i64 236, !4, i64 236, !4, i64 237, !4, i64 237, !4, i64 237}
!16 = !{!"p1 _ZTS11_lv_group_t", !8, i64 0}
!17 = !{!"p1 omnipotent char", !8, i64 0}
!18 = !{!"_Bool", !4, i64 0}
!19 = !{!"_lv_array_t", !17, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !18, i64 20}
!20 = !{!"", !19, i64 0, !4, i64 24, !4, i64 24}
!21 = !{!"p1 _ZTS10_lv_anim_t", !8, i64 0}
!22 = !{!"_lv_indev_t", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !4, i64 28, !4, i64 28, !4, i64 28, !4, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !10, i64 72, !4, i64 80, !4, i64 81, !4, i64 82, !4, i64 83, !11, i64 84, !11, i64 86, !5, i64 88, !15, i64 96, !12, i64 336, !13, i64 344, !16, i64 352, !8, i64 360, !20, i64 368, !21, i64 400, !8, i64 408}
!23 = !{!22, !10, i64 72}
!24 = !{!22, !9, i64 64}
!25 = !{!22, !5, i64 0}
!26 = !{!22, !5, i64 24}
!27 = !{!22, !11, i64 84}
!28 = !{!22, !11, i64 86}
!29 = !{!22, !5, i64 88}
!30 = !{!22, !8, i64 408}
!31 = !{!"", !5, i64 0, !17, i64 8, !17, i64 16}
!32 = !{!"p1 _ZTS11_lv_indev_t", !8, i64 0}
!33 = !{!"p1 _ZTS11_lv_event_t", !8, i64 0}
!34 = !{!"", !31, i64 0, !18, i64 24, !4, i64 25, !18, i64 26, !18, i64 27, !5, i64 28, !18, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !8, i64 56, !8, i64 64}
!35 = !{!"", !18, i64 0, !18, i64 1, !18, i64 2, !10, i64 8, !31, i64 16}
!36 = !{!"", !5, i64 0, !4, i64 4, !8, i64 8, !8, i64 16}
!37 = !{!"_lv_draw_buf_handlers_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!38 = !{!"p1 _ZTS11_lv_cache_t", !8, i64 0}
!39 = !{!"p1 _ZTS15_lv_draw_unit_t", !8, i64 0}
!40 = !{!"", !39, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !18, i64 24}
!41 = !{!"long", !4, i64 0}
!42 = !{!"", !8, i64 0, !41, i64 8, !41, i64 16, !31, i64 24}
!43 = !{!"p1 _ZTS14_snippet_stack", !8, i64 0}
!44 = !{!"_lv_global_t", !8, i64 0, !18, i64 8, !18, i64 9, !31, i64 16, !9, i64 40, !9, i64 48, !31, i64 56, !18, i64 80, !5, i64 84, !5, i64 88, !17, i64 96, !31, i64 104, !16, i64 128, !31, i64 136, !32, i64 160, !13, i64 168, !5, i64 176, !8, i64 184, !18, i64 192, !5, i64 196, !5, i64 200, !33, i64 208, !5, i64 216, !34, i64 224, !35, i64 296, !36, i64 336, !37, i64 360, !37, i64 416, !37, i64 472, !31, i64 528, !38, i64 552, !38, i64 560, !40, i64 568, !31, i64 600, !4, i64 624, !8, i64 816, !8, i64 824, !8, i64 832, !42, i64 840, !31, i64 888, !43, i64 912, !8, i64 920, !5, i64 928, !4, i64 932}
!45 = !{!44, !32, i64 160}
!46 = !{!22, !13, i64 280}
!47 = !{!22, !5, i64 32}
!48 = !{!22, !5, i64 36}
!49 = !{!22, !5, i64 40}
!50 = !{!22, !13, i64 264}
!51 = !{!5, !5, i64 0}
!52 = !{!22, !5, i64 304}
!53 = !{!22, !5, i64 308}
!54 = !{!44, !13, i64 168}
!55 = !{!"any p2 pointer", !8, i64 0}
!56 = !{!"p2 _ZTS9_lv_obj_t", !55, i64 0}
!57 = !{!22, !8, i64 8}
!58 = !{!22, !5, i64 16}
!59 = !{!22, !13, i64 344}
!60 = !{!22, !5, i64 104}
!61 = !{!22, !5, i64 108}
!62 = !{!22, !5, i64 96}
!63 = !{!22, !5, i64 100}
!64 = !{!22, !13, i64 272}
!65 = !{!22, !4, i64 80}
!66 = !{!22, !5, i64 124}
!67 = !{!22, !13, i64 256}
!68 = !{!22, !5, i64 240}
!69 = !{!22, !5, i64 20}
!70 = !{!22, !5, i64 340}
!71 = !{!22, !16, i64 352}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!22, !8, i64 360}
!74 = !{!12, !5, i64 0}
!75 = !{!12, !5, i64 4}
!76 = !{!22, !8, i64 56}
!77 = !{!22, !8, i64 48}
!78 = !{!22, !4, i64 83}
!79 = !{!22, !4, i64 82}
!80 = !{!22, !4, i64 316}
!81 = !{!13, !13, i64 0}
!82 = !{!22, !21, i64 400}
!83 = !{!22, !5, i64 236}
!84 = !{!4, !4, i64 0}
!85 = !{!"_lv_timer_t", !5, i64 0, !5, i64 4, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!86 = !{!85, !8, i64 16}
!87 = distinct !{null}
!88 = distinct !{null}
!89 = distinct !{!89, !72}
!90 = distinct !{!90, !72}
!91 = distinct !{!91, !72}
!92 = distinct !{!92, !72}
!93 = distinct !{!93, !72}
!94 = !{!"p1 _ZTS14_lv_draw_buf_t", !8, i64 0}
!95 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!96 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !8, i64 0}
!97 = !{!"_lv_draw_buf_t", !95, i64 0, !5, i64 12, !17, i64 16, !8, i64 24, !96, i64 32}
!98 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!99 = !{!"p1 _ZTS11_lv_theme_t", !8, i64 0}
!100 = !{!"_lv_display_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !94, i64 32, !94, i64 40, !94, i64 48, !94, i64 56, !8, i64 64, !8, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 96, !5, i64 97, !5, i64 97, !5, i64 100, !4, i64 104, !4, i64 616, !5, i64 648, !5, i64 652, !31, i64 656, !97, i64 680, !97, i64 720, !98, i64 760, !8, i64 768, !8, i64 776, !56, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !5, i64 840, !4, i64 844, !4, i64 844, !8, i64 848, !8, i64 856, !20, i64 864, !5, i64 896, !5, i64 896, !99, i64 904, !10, i64 912, !5, i64 920, !14, i64 924, !5, i64 940}
!101 = !{!100, !13, i64 824}
!102 = !{!22, !5, i64 112}
!103 = !{!"", !4, i64 0, !4, i64 24, !5, i64 72, !12, i64 76, !5, i64 84, !5, i64 88, !11, i64 92, !5, i64 96, !18, i64 100}
!104 = !{!103, !5, i64 76}
!105 = !{!103, !5, i64 96}
!106 = !{i8 0, i8 2}
!107 = !{!103, !5, i64 72}
!108 = !{!100, !5, i64 920}
!109 = !{!103, !5, i64 80}
!110 = !{!103, !11, i64 92}
!111 = !{!22, !5, i64 312}
!112 = !{!22, !5, i64 248}
!113 = !{!22, !5, i64 336}
!114 = !{!103, !5, i64 84}
!115 = !{!103, !5, i64 88}
!116 = distinct !{!116, !72}
!117 = !{!22, !4, i64 81}
!118 = distinct !{!118, !72}
!119 = distinct !{!119, !72}
!120 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51}
!121 = !{!"p1 _ZTS15_lv_obj_class_t", !8, i64 0}
!122 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !8, i64 0}
!123 = !{!"p1 _ZTS15_lv_obj_style_t", !8, i64 0}
!124 = !{!"_lv_obj_t", !121, i64 0, !13, i64 8, !122, i64 16, !123, i64 24, !8, i64 32, !14, i64 40, !5, i64 56, !11, i64 60, !11, i64 62, !11, i64 62, !11, i64 62, !11, i64 62, !11, i64 62, !11, i64 63, !11, i64 63, !11, i64 63, !11, i64 63, !11, i64 63, !11, i64 63, !11, i64 64}
!125 = !{!124, !122, i64 16}
!126 = !{!"_lv_obj_spec_attr_t", !56, i64 0, !16, i64 8, !20, i64 16, !12, i64 48, !5, i64 56, !5, i64 60, !11, i64 64, !11, i64 66, !11, i64 66, !11, i64 66, !11, i64 66, !11, i64 67, !11, i64 67}
!127 = !{!126, !56, i64 0}
!128 = distinct !{!128, !72}
!129 = !{!"_lv_event_dsc_t", !8, i64 0, !8, i64 8, !5, i64 16}
!130 = !{!129, !8, i64 0}
!131 = !{!129, !8, i64 8}
!132 = distinct !{!132, !72}
!133 = distinct !{!133, !72}
!134 = !{!22, !5, i64 228}
!135 = !{!22, !5, i64 232}
!136 = !{!22, !5, i64 120}
!137 = !{!22, !4, i64 224}
!138 = distinct !{!138, !72}
!139 = !{!22, !5, i64 328}
!140 = !{!22, !5, i64 320}
!141 = !{!22, !5, i64 324}
!142 = !{!"_lv_anim_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 108, !5, i64 116, !5, i64 120, !5, i64 124, !4, i64 128, !4, i64 128, !4, i64 128, !4, i64 128, !4, i64 128}
!143 = !{!142, !8, i64 0}
end_hunk_1
