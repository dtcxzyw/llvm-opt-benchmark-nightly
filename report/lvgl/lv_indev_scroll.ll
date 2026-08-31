Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_indev_scroll?download=true
inline.NumInlined: 30
inline.NumDeleted: 12
begin_hunk_0_@lv_indev_find_scroll_obj:bb.a
  %i.v = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.0131181, i32 noundef 0, i8 noundef zeroext -104) #6
  %i.w = ptrtoint ptr %i.v to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.w to i32
  %i.x = call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 1)
  %i.y = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.0131181, i32 noundef 0, i8 noundef zeroext -103) #6
  %i.z = ptrtoint ptr %i.y to i64
  %.sroa.0.0.extract.trunc.i.i161 = trunc i64 %i.z to i32
  %i.aa = call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i161, i32 1)
  %i.ab = mul nuw nsw i32 %i.x, %.0133179
  %i.ac = lshr i32 %i.ab, 8                       ; 3 uses
  %i.ad = mul nuw nsw i32 %i.aa, %.0132180
  %i.ae = lshr i32 %i.ad, 8                       ; 3 uses
  %i.af = call ptr @lv_obj_get_parent(ptr noundef nonnull %.0131181) #6 ; 2 uses
  %.not142 = icmp eq ptr %i.af, null
  br i1 %.not142, label %bb.d, label %bb.c, !llvm.loop !46

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ag = load i64, ptr %i.k, align 4             ; 3 uses
  store i64 %i.ag, ptr %2, align 8
  %i.ah = icmp ne i16 %i.u, 0
  %i.ai = icmp ne i32 %i.ac, 256
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ai
  %i.aj = icmp ne i32 %i.ae, 256
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aj
  %i.ak = trunc i64 %i.ag to i32
  %i.al = lshr i64 %i.ag, 32
  %i.am = trunc nuw i64 %i.al to i32
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select16 = call i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.ac, i32 1)
  %i.an = sub i16 0, %i.u
  %i.ao = udiv i32 65536, %spec.store.select
  %i.ap = udiv i32 65536, %spec.store.select16
  %i.aq = sext i16 %i.an to i32
  call void @lv_point_transform(ptr noundef nonnull %2, i32 noundef %i.aq, i32 noundef %i.ao, i32 noundef %i.ap, ptr noundef nonnull %1, i1 noundef zeroext false) #6
  %.pre = load i32, ptr %2, align 8, !tbaa !47
  %.pre198 = load i32, ptr %i.p, align 4, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ar = phi i32 [ %i.am, %bb.d ], [ %.pre198, %bb.e ]
  %i.as = phi i32 [ %i.ak, %bb.d ], [ %.pre, %bb.e ]
  %i.at = call i32 @llvm.abs.i32(i32 %i.as, i1 true)
  %i.au = call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.av = icmp samesign ugt i32 %i.at, %i.au      ; 2 uses
  %..0137 = select i1 %i.av, i8 1, i8 %.0137184   ; 5 uses
  %.0135. = select i1 %i.av, i8 %.0135185, i8 1   ; 5 uses
  %i.aw = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 16) #6
  br i1 %i.aw, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 256) #6
  %i.ay = xor i1 %i.ax, true
  %i.az = trunc nuw i8 %..0137 to i1
  %or.cond5 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond5, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 512) #6
  %i.bb = xor i1 %i.ba, true
  %i.bc = trunc nuw i8 %.0135. to i1
  %or.cond7 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond7, label %.thread, label %bb.y, !llvm.loop !49

bb.i:                                             ; preds = %bb.f
  %i.bd = trunc nuw i8 %.0135. to i1
  %i.be = trunc nuw i8 %..0137 to i1              ; 2 uses
  %i.bf = call i32 @lv_obj_get_scroll_dir(ptr noundef nonnull %.0139183) #6 ; 4 uses
  %i.bg = trunc i32 %i.bf to i1
  %i.bh = and i32 %i.bf, 2
  %i.bi = icmp eq i32 %i.bh, 0
  %.0115 = select i1 %i.bi, i8 0, i8 %..0137      ; 2 uses
  %i.bj = and i32 %i.bf, 4
  %i.bk = icmp eq i32 %i.bj, 0
  %.0120 = select i1 %i.bk, i8 0, i8 %.0135.      ; 2 uses
  %i.bl = and i32 %i.bf, 8
  %i.bm = icmp eq i32 %i.bl, 0
  %.0118 = select i1 %i.bm, i8 0, i8 %.0135.      ; 2 uses
  %i.bn = call i32 @lv_obj_get_scroll_snap_x(ptr noundef nonnull %.0139183) #6
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %.0139183) #6
  %i.bq = call i32 @lv_obj_get_scroll_right(ptr noundef nonnull %.0139183) #6
  %i.br = icmp sgt i32 %i.bp, 0
  %i.bs = icmp sgt i32 %i.bq, 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call fastcc void @has_more_snap_points(ptr noundef %.0139183, i32 noundef 3, ptr noundef %i.a, ptr noundef %i.b)
  %i.bt = load i8, ptr %i.a, align 1, !tbaa !41, !range !42, !noundef !43
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !41, !range !42, !noundef !43
  %i.bw = trunc nuw i8 %i.bv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0114 = phi i1 [ %i.br, %bb.j ], [ %i.bu, %bb.k ] ; 2 uses
  %.0113 = phi i1 [ %i.bs, %bb.j ], [ %i.bw, %bb.k ] ; 2 uses
  %i.bx = call i32 @lv_obj_get_scroll_snap_y(ptr noundef nonnull %.0139183) #6
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %.0139183) #6
  %i.ca = call i32 @lv_obj_get_scroll_bottom(ptr noundef nonnull %.0139183) #6
  %i.cb = icmp sgt i32 %i.bz, 0
  %i.cc = icmp sgt i32 %i.ca, 0
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call fastcc void @has_more_snap_points(ptr noundef %.0139183, i32 noundef 12, ptr noundef %i.c, ptr noundef %i.d)
  %i.cd = load i8, ptr %i.c, align 1, !tbaa !41, !range !42, !noundef !43
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = load i8, ptr %i.d, align 1, !tbaa !41, !range !42, !noundef !43
  %i.cg = trunc nuw i8 %i.cf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0112 = phi i1 [ %i.cb, %bb.m ], [ %i.ce, %bb.n ] ; 2 uses
  %.0 = phi i1 [ %i.cc, %bb.m ], [ %i.cg, %bb.n ] ; 2 uses
  %or.cond9 = select i1 %.0112, i1 true, i1 %.0
  br i1 %or.cond9, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = trunc nuw i8 %.0120 to i1
  %i.ci = load i32, ptr %i.p, align 4             ; 2 uses
  %.not143 = icmp sge i32 %i.ci, %i.g
  %or.cond153.not = select i1 %i.ch, i1 %.not143, i1 false
  %i.cj = trunc nuw i8 %.0118 to i1
  %.not144 = icmp sle i32 %i.ci, %i.q
  %or.cond167.not = select i1 %i.cj, i1 %.not144, i1 false
  %or.cond189 = select i1 %or.cond153.not, i1 true, i1 %or.cond167.not ; 2 uses
  %spec.select191 = select i1 %or.cond189, i16 12, i16 %.0126186
  %spec.select192 = select i1 %or.cond189, ptr %.0139183, ptr %.0124187
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1127 = phi i16 [ %spec.select191, %bb.p ], [ %.0126186, %bb.o ] ; 2 uses
  %.1125 = phi ptr [ %spec.select192, %bb.p ], [ %.0124187, %bb.o ] ; 2 uses
  %or.cond11 = select i1 %.0114, i1 true, i1 %.0113
  %.pre199 = load i32, ptr %2, align 8            ; 4 uses
  %i.ck = trunc nuw i8 %..0137 to i1
  %i.cl = select i1 %i.bg, i1 %i.ck, i1 false     ; 2 uses
  br i1 %or.cond11, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %.not145 = icmp sge i32 %.pre199, %i.g
  %or.cond155.not = select i1 %i.cl, i1 %.not145, i1 false
  %i.cm = trunc nuw i8 %.0115 to i1
  %.not146 = icmp sle i32 %.pre199, %i.q
  %or.cond169.not = select i1 %i.cm, i1 %.not146, i1 false
  %or.cond190 = select i1 %or.cond155.not, i1 true, i1 %or.cond169.not ; 2 uses
  %spec.select193 = select i1 %or.cond190, i16 3, i16 %.1127
  %spec.select194 = select i1 %or.cond190, ptr %.0139183, ptr %.1125
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %bb.r
  %.2128 = phi i16 [ %spec.select193, %bb.r ], [ %.1127, %bb.q ] ; 4 uses
  %.2 = phi ptr [ %spec.select194, %bb.r ], [ %.1125, %bb.q ] ; 4 uses
  %i.cn = select i1 %.0114, i1 %i.cl, i1 false
  %.not147 = icmp sge i32 %.pre199, %i.g
  %or.cond158.not = select i1 %i.cn, i1 %.not147, i1 false
  br i1 %or.cond158.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.co = trunc nuw i8 %.0115 to i1
  %i.cp = select i1 %.0113, i1 %i.co, i1 false
  %.not148 = icmp sle i32 %.pre199, %i.q
  %or.cond171.not = select i1 %i.cp, i1 %.not148, i1 false
  br i1 %or.cond171.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = trunc nuw i8 %.0120 to i1
  %i.cr = select i1 %.0112, i1 %i.cq, i1 false
  %i.cs = load i32, ptr %i.p, align 4             ; 2 uses
  %.not149 = icmp sge i32 %i.cs, %i.g
  %or.cond160.not = select i1 %i.cr, i1 %.not149, i1 false
  br i1 %or.cond160.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = trunc nuw i8 %.0118 to i1
  %i.cu = select i1 %.0, i1 %i.ct, i1 false
  %.not150 = icmp sle i32 %i.cs, %i.q
  %or.cond173.not = select i1 %i.cu, i1 %.not150, i1 false
  br i1 %or.cond173.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.t, %._crit_edge
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %4 = select i1 %i.be, i16 3, i16 12
  %i.cv = load i16, ptr %3, align 4
  %i.cw = and i16 %i.cv, -16
  %i.cx = or disjoint i16 %i.cw, %4
  store i16 %i.cx, ptr %3, align 4
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.cy = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 256) #6
  %i.cz = xor i1 %i.cy, true
  %or.cond13 = select i1 %i.cz, i1 %i.be, i1 false
  br i1 %or.cond13, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 512) #6
  %i.db = xor i1 %i.da, true
  %or.cond15 = select i1 %i.db, i1 %i.bd, i1 false
  br i1 %or.cond15, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.h, %bb.g, %bb.w, %bb.x, %bb.v
  %.3129.ph = phi i16 [ %.2128, %bb.v ], [ %.0126186, %bb.h ], [ %.0126186, %bb.g ], [ %.2128, %bb.x ], [ %.2128, %bb.w ]
  %.3.ph = phi ptr [ %.2, %bb.v ], [ %.0124187, %bb.h ], [ %.0124187, %bb.g ], [ %.2, %bb.x ], [ %.2, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %.loopexit

bb.y:                                             ; preds = %bb.x, %bb.h
  %.3129 = phi i16 [ %.0126186, %bb.h ], [ %.2128, %bb.x ] ; 2 uses
  %.3 = phi ptr [ %.0124187, %bb.h ], [ %.2, %bb.x ] ; 2 uses
  %i.dc = call ptr @lv_obj_get_parent(ptr noundef nonnull %.0139183) #6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.y, %.thread
  %.4130 = phi i16 [ %.3129.ph, %.thread ], [ %.3129, %bb.y ]
  %.4 = phi ptr [ %.3.ph, %.thread ], [ %.3, %bb.y ] ; 3 uses
  %.not151 = icmp eq ptr %.4, null
  br i1 %.not151, label %.loopexit.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 4
  %i.df = and i16 %i.de, -16
  %i.dg = or i16 %i.df, %.4130
  store i16 %i.dg, ptr %i.dd, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.4, ptr %i.dh, align 8, !tbaa !25
  store i32 0, ptr %i.k, align 4, !tbaa !50
  store i32 0, ptr %i.l, align 8, !tbaa !51
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.a, %bb.z, %.loopexit
  %.4205 = phi ptr [ null, %.loopexit ], [ %.4, %bb.z ], [ null, %bb.a ]
  ret ptr %.4205
}

declare void @lv_obj_remove_state(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lv_point_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_right(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_left(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_top(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_bottom(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_dir(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_scroll_by_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_indev_scroll_throw_handler(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 29 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 4 uses
  %i.i = load i16, ptr %i.h, align 4
  %i.j = and i16 %i.i, 15
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = tail call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %i.f, i32 noundef 64) #6
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.q, align 8, !tbaa !53
  store i32 0, ptr %i.p, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call i32 @lv_obj_get_scroll_snap_x(ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.s = tail call i32 @lv_obj_get_scroll_snap_y(ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.t = load i16, ptr %i.h, align 4
  %i.u = and i16 %i.t, 15
  switch i16 %i.u, label %bb.af [
    i16 12, label %bb.f
    i16 3, label %bb.s
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.v, align 4, !tbaa !54
  %i.w = icmp eq i32 %i.s, 0
  br i1 %i.w, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53
  %i.z = sub nsw i32 100, %i.n
  %i.aa = mul nsw i32 %i.y, %i.z
  %i.ab = sdiv i32 %i.aa, 100
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !53
  %i.ac = tail call i32 @lv_obj_get_scroll_bottom(ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.ad = tail call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !53  ; 11 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %elastic_diff.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %i.f, i32 noundef 32) #6
  br i1 %i.ag, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp sgt i32 %i.ae, 0
  %i.ai = select i1 %i.ah, i32 %i.ad, i32 %i.ac   ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %elastic_diff.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ae)
  br label %elastic_diff.exit

bb.k:                                             ; preds = %bb.h
  %i.ak = tail call i32 @lv_obj_get_scroll_snap_y(ptr noundef nonnull %i.f) #6
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = or i32 %i.ad, %i.ac
  %or.cond.not.i = icmp sgt i32 %i.am, -1
  br i1 %or.cond.not.i, label %elastic_diff.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = icmp slt i32 %i.ae, 0
  %i.ao = add nsw i32 %i.ae, -2
  %spec.select38.i = select i1 %i.an, i32 %i.ao, i32 %i.ae ; 3 uses
  %i.ap = icmp sgt i32 %spec.select38.i, 0
  %i.aq = add nuw nsw i32 %spec.select38.i, 2
  %.235.i = select i1 %i.ap, i32 %i.aq, i32 %spec.select38.i
  %i.ar = sdiv i32 %.235.i, 4
  br label %elastic_diff.exit

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call fastcc void @has_more_snap_points(ptr noundef nonnull %i.f, i32 noundef 12, ptr noundef %i.c, ptr noundef %i.d)
  %i.as = load i8, ptr %i.c, align 1, !tbaa !41, !range !42, !noundef !43
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i8, ptr %i.d, align 1, !range !42
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond3.i = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond3.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp slt i32 %i.ae, 0
  %i.ax = add nsw i32 %i.ae, -2
  %spec.select39.i = select i1 %i.aw, i32 %i.ax, i32 %i.ae ; 3 uses
  %i.ay = icmp sgt i32 %spec.select39.i, 0
  %i.az = add nuw nsw i32 %spec.select39.i, 2
  %.4.i = select i1 %i.ay, i32 %i.az, i32 %spec.select39.i
  %i.ba = sdiv i32 %.4.i, 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi i32 [ %i.ba, %bb.o ], [ %i.ae, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %elastic_diff.exit

elastic_diff.exit:                                ; preds = %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %bb.p
end_hunk_0
