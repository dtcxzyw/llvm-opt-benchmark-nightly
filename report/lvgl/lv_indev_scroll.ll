Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_indev_scroll?download=true
inline.NumInlined: 30
inline.NumDeleted: 12
begin_hunk_0_@lv_indev_scroll_handler:bb.a
  %i.fr = add nuw nsw i32 %spec.select38.i85, 2
  %.235.i86 = select i1 %i.fq, i32 %i.fr, i32 %spec.select38.i85
  %i.fs = sdiv i32 %.235.i86, 4
  br label %elastic_diff.exit

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call fastcc void @has_more_snap_points(ptr noundef nonnull %.0, i32 noundef 12, ptr noundef %i.a, ptr noundef %i.b)
  %i.ft = load i8, ptr %i.a, align 1, !tbaa !39, !range !40, !noundef !41
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = load i8, ptr %i.b, align 1, !range !40
  %i.fw = trunc nuw i8 %i.fv to i1
  %or.cond3.i80 = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond3.i80, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fx = icmp slt i32 %i.ff, 0
  %i.fy = add nsw i32 %i.ff, -2
  %spec.select39.i81 = select i1 %i.fx, i32 %i.fy, i32 %i.ff ; 3 uses
  %i.fz = icmp sgt i32 %spec.select39.i81, 0
  %i.ga = add nuw nsw i32 %spec.select39.i81, 2
  %.4.i82 = select i1 %i.fz, i32 %i.ga, i32 %spec.select39.i81
  %i.gb = sdiv i32 %.4.i82, 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i83 = phi i32 [ %i.gb, %bb.az ], [ %i.ff, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %elastic_diff.exit

elastic_diff.exit:                                ; preds = %bb.ba, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %.098 = phi i32 [ %.0.i, %bb.aq ], [ 0, %bb.ah ], [ %i.ef, %bb.am ], [ %spec.select.i, %bb.ak ], [ 0, %bb.aj ], [ %i.es, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ba ] ; 3 uses
  %.097 = phi i32 [ 0, %bb.aq ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.at ], [ %spec.select.i78, %bb.au ], [ %i.ff, %bb.aw ], [ %i.fs, %bb.ax ], [ %.0.i83, %bb.ba ] ; 3 uses
  %i.gc = call i32 @lv_obj_get_scroll_dir(ptr noundef nonnull %.0) #6 ; 4 uses
  %i.gd = and i32 %i.gc, 1
  %i.ge = icmp eq i32 %i.gd, 0
  %i.gf = icmp sgt i32 %.098, 0
  %or.cond7 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond7, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %elastic_diff.exit
  %i.gg = and i32 %i.gc, 2
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = call i32 @llvm.smax.i32(i32 %.098, i32 0)
  %spec.select = select i1 %i.gh, i32 %i.gi, i32 %.098
  br label %.thread

.thread:                                          ; preds = %bb.bb, %elastic_diff.exit
  %.2100 = phi i32 [ 0, %elastic_diff.exit ], [ %spec.select, %bb.bb ]
  %i.gj = and i32 %i.gc, 4
  %i.gk = icmp eq i32 %i.gj, 0
  %i.gl = icmp sgt i32 %.097, 0
  %or.cond11 = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond11, label %.thread105, label %bb.bc

bb.bc:                                            ; preds = %.thread
  %i.gm = and i32 %i.gc, 8
  %i.gn = icmp eq i32 %i.gm, 0
  %i.go = call i32 @llvm.smax.i32(i32 %.097, i32 0)
  %spec.select108 = select i1 %i.gn, i32 %i.go, i32 %.097
  br label %.thread105

.thread105:                                       ; preds = %bb.bc, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ %spec.select108, %bb.bc ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gs = load <2 x i32>, ptr %i.gp, align 4, !tbaa !42 ; 3 uses
  %i.gt = insertelement <2 x i32> poison, i32 %.2100, i64 0
  %i.gu = insertelement <2 x i32> %i.gt, i32 %.2, i64 1 ; 2 uses
  %i.gv = add nsw <2 x i32> %i.gs, %i.gu          ; 2 uses
  %i.gw = load <2 x i32>, ptr %i.gq, align 8, !tbaa !42 ; 3 uses
  %i.gx = icmp slt <2 x i32> %i.gv, %i.gw
  %i.gy = sub nsw <2 x i32> %i.gw, %i.gs
  %i.gz = select <2 x i1> %i.gx, <2 x i32> %i.gy, <2 x i32> %i.gu
  %i.ha = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gv, <2 x i32> %i.gw)
  %i.hb = load <2 x i32>, ptr %i.gr, align 8, !tbaa !42 ; 2 uses
  %i.hc = icmp sgt <2 x i32> %i.ha, %i.hb
  %i.hd = sub nsw <2 x i32> %i.hb, %i.gs
  %i.he = select <2 x i1> %i.hc, <2 x i32> %i.hd, <2 x i32> %i.gz ; 3 uses
  %i.hf = extractelement <2 x i32> %i.he, i64 0
  %i.hg = extractelement <2 x i32> %i.he, i64 1
  %i.hh = call i32 @lv_obj_scroll_by_raw(ptr noundef nonnull %.0, i32 noundef %i.hf, i32 noundef %i.hg) #6 ; 0 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.hj = load i8, ptr %i.hi, align 4
  %i.hk = and i8 %i.hj, 2
  %.not76 = icmp eq i8 %i.hk, 0
  br i1 %.not76, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.thread105
  %i.hl = load <2 x i32>, ptr %i.gp, align 4, !tbaa !42
  %i.hm = add nsw <2 x i32> %i.hl, %i.he
  store <2 x i32> %i.hm, ptr %i.gp, align 4, !tbaa !42
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.thread105, %bb.d, %init_scroll_limits.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @lv_indev_find_scroll_obj(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_point_t, align 8         ; 5 uses
  %2 = alloca %struct.lv_point_t, align 8         ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i8, ptr %i.e, align 8, !tbaa !59
  %i.g = zext i8 %i.f to i32                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load <2 x i32>, ptr %i.j, align 8, !tbaa !42
  %i.n = load <2 x i32>, ptr %i.k, align 4, !tbaa !42
  %i.o = add nsw <2 x i32> %i.n, %i.m
  store <2 x i32> %i.o, ptr %i.k, align 4, !tbaa !42
  %.not182 = icmp eq ptr %i.i, null
  br i1 %.not182, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.q = sub nsw i32 0, %i.g                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.0124187 = phi ptr [ null, %.lr.ph ], [ %.3, %bb.y ] ; 5 uses
  %.0126186 = phi i16 [ 0, %.lr.ph ], [ %.3129, %bb.y ] ; 5 uses
  %.0135185 = phi i8 [ 0, %.lr.ph ], [ %.0135., %bb.y ]
  %.0137184 = phi i8 [ 0, %.lr.ph ], [ %..0137, %bb.y ]
  %.0139183 = phi ptr [ %i.i, %.lr.ph ], [ %i.cp, %bb.y ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store i64 0, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0131181 = phi ptr [ %.0139183, %bb.b ], [ %i.af, %bb.c ] ; 4 uses
  %.0132180 = phi i32 [ 256, %bb.b ], [ %i.ae, %bb.c ]
  %.0133179 = phi i32 [ 256, %bb.b ], [ %i.ac, %bb.c ]
  %.0134178 = phi i16 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %i.r = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.0131181, i32 noundef 0, i8 noundef zeroext -100) #6
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = trunc i64 %i.s to i16
  %i.u = add i16 %.0134178, %i.t                  ; 3 uses
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
  br i1 %.not142, label %bb.d, label %bb.c, !llvm.loop !57

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ag = load i64, ptr %i.k, align 4, !tbaa !42  ; 3 uses
  store i64 %i.ag, ptr %2, align 8, !tbaa !42
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
  %.pre = load i32, ptr %2, align 8, !tbaa !43
  %.pre198 = load i32, ptr %i.p, align 4, !tbaa !44
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
  %3 = xor i1 %i.ax, true
  %4 = trunc nuw i8 %..0137 to i1
  %or.cond5 = select i1 %3, i1 %4, i1 false
  br i1 %or.cond5, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 512) #6
  %5 = xor i1 %i.ay, true
  %6 = trunc nuw i8 %.0135. to i1
  %or.cond7 = select i1 %5, i1 %6, i1 false
  br i1 %or.cond7, label %.thread, label %bb.y, !llvm.loop !58

bb.i:                                             ; preds = %bb.f
  %7 = trunc nuw i8 %.0135. to i1
  %8 = trunc nuw i8 %..0137 to i1                 ; 2 uses
  %9 = call i32 @lv_obj_get_scroll_dir(ptr noundef nonnull %.0139183) #6 ; 4 uses
  %10 = trunc i32 %9 to i1
  %i.az = and i32 %9, 2
  %i.ba = icmp eq i32 %i.az, 0
  %.0115 = select i1 %i.ba, i8 0, i8 %..0137      ; 2 uses
  %i.bb = and i32 %9, 4
  %i.bc = icmp eq i32 %i.bb, 0
  %.0120 = select i1 %i.bc, i8 0, i8 %.0135.      ; 2 uses
  %i.bd = and i32 %9, 8
  %i.be = icmp eq i32 %i.bd, 0
  %.0118 = select i1 %i.be, i8 0, i8 %.0135.      ; 2 uses
  %i.bf = call i32 @lv_obj_get_scroll_snap_x(ptr noundef nonnull %.0139183) #6
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %.0139183) #6
  %i.bi = call i32 @lv_obj_get_scroll_right(ptr noundef nonnull %.0139183) #6
  %i.bj = icmp sgt i32 %i.bh, 0
  %i.bk = icmp sgt i32 %i.bi, 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call fastcc void @has_more_snap_points(ptr noundef %.0139183, i32 noundef 3, ptr noundef %i.a, ptr noundef %i.b)
  %i.bl = load i8, ptr %i.a, align 1, !tbaa !39, !range !40, !noundef !41
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !39, !range !40, !noundef !41
  %i.bo = trunc nuw i8 %i.bn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0114 = phi i1 [ %i.bj, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %.0113 = phi i1 [ %i.bk, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %i.bp = call i32 @lv_obj_get_scroll_snap_y(ptr noundef nonnull %.0139183) #6
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %.0139183) #6
  %i.bs = call i32 @lv_obj_get_scroll_bottom(ptr noundef nonnull %.0139183) #6
  %i.bt = icmp sgt i32 %i.br, 0
  %i.bu = icmp sgt i32 %i.bs, 0
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call fastcc void @has_more_snap_points(ptr noundef %.0139183, i32 noundef 12, ptr noundef %i.c, ptr noundef %i.d)
  %i.bv = load i8, ptr %i.c, align 1, !tbaa !39, !range !40, !noundef !41
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = load i8, ptr %i.d, align 1, !tbaa !39, !range !40, !noundef !41
  %i.by = trunc nuw i8 %i.bx to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0112 = phi i1 [ %i.bt, %bb.m ], [ %i.bw, %bb.n ] ; 2 uses
  %.0 = phi i1 [ %i.bu, %bb.m ], [ %i.by, %bb.n ] ; 2 uses
  %or.cond9 = select i1 %.0112, i1 true, i1 %.0
  br i1 %or.cond9, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %11 = trunc nuw i8 %.0120 to i1
  %i.bz = load i32, ptr %i.p, align 4             ; 2 uses
  %.not143 = icmp sge i32 %i.bz, %i.g
  %or.cond153.not = select i1 %11, i1 %.not143, i1 false
  %12 = trunc nuw i8 %.0118 to i1
  %.not144 = icmp sle i32 %i.bz, %i.q
  %or.cond167.not = select i1 %12, i1 %.not144, i1 false
  %or.cond189 = select i1 %or.cond153.not, i1 true, i1 %or.cond167.not ; 2 uses
  %spec.select191 = select i1 %or.cond189, i16 12, i16 %.0126186
  %spec.select192 = select i1 %or.cond189, ptr %.0139183, ptr %.0124187
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1127 = phi i16 [ %spec.select191, %bb.p ], [ %.0126186, %bb.o ] ; 2 uses
  %.1125 = phi ptr [ %spec.select192, %bb.p ], [ %.0124187, %bb.o ] ; 2 uses
  %or.cond11 = select i1 %.0114, i1 true, i1 %.0113
  %.pre199 = load i32, ptr %2, align 8            ; 4 uses
  %13 = trunc nuw i8 %..0137 to i1
  %14 = select i1 %10, i1 %13, i1 false           ; 2 uses
  br i1 %or.cond11, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %.not145 = icmp sge i32 %.pre199, %i.g
  %or.cond155.not = select i1 %14, i1 %.not145, i1 false
  %15 = trunc nuw i8 %.0115 to i1
  %.not146 = icmp sle i32 %.pre199, %i.q
  %or.cond169.not = select i1 %15, i1 %.not146, i1 false
  %or.cond190 = select i1 %or.cond155.not, i1 true, i1 %or.cond169.not ; 2 uses
  %spec.select193 = select i1 %or.cond190, i16 3, i16 %.1127
  %spec.select194 = select i1 %or.cond190, ptr %.0139183, ptr %.1125
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %bb.r
  %.2128 = phi i16 [ %spec.select193, %bb.r ], [ %.1127, %bb.q ] ; 4 uses
  %.2 = phi ptr [ %spec.select194, %bb.r ], [ %.1125, %bb.q ] ; 4 uses
  %i.ca = select i1 %.0114, i1 %14, i1 false
  %.not147 = icmp sge i32 %.pre199, %i.g
  %or.cond158.not = select i1 %i.ca, i1 %.not147, i1 false
  br i1 %or.cond158.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cb = trunc nuw i8 %.0115 to i1
  %i.cc = select i1 %.0113, i1 %i.cb, i1 false
  %.not148 = icmp sle i32 %.pre199, %i.q
  %or.cond171.not = select i1 %i.cc, i1 %.not148, i1 false
  br i1 %or.cond171.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = trunc nuw i8 %.0120 to i1
  %i.ce = select i1 %.0112, i1 %i.cd, i1 false
  %i.cf = load i32, ptr %i.p, align 4             ; 2 uses
  %.not149 = icmp sge i32 %i.cf, %i.g
  %or.cond160.not = select i1 %i.ce, i1 %.not149, i1 false
  br i1 %or.cond160.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = trunc nuw i8 %.0118 to i1
  %i.ch = select i1 %.0, i1 %i.cg, i1 false
  %.not150 = icmp sle i32 %i.cf, %i.q
  %or.cond173.not = select i1 %i.ch, i1 %.not150, i1 false
  br i1 %or.cond173.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.t, %._crit_edge
  %i.ci = select i1 %8, i16 3, i16 12
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 4
  %i.cl = and i16 %i.ck, -16
  %i.cm = or disjoint i16 %i.cl, %i.ci
  store i16 %i.cm, ptr %i.cj, align 4
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.cn = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 256) #6
  %16 = xor i1 %i.cn, true
  %or.cond13 = select i1 %16, i1 %8, i1 false
  br i1 %or.cond13, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0139183, i32 noundef 512) #6
  %17 = xor i1 %i.co, true
  %or.cond15 = select i1 %17, i1 %7, i1 false
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
  %i.cp = call ptr @lv_obj_get_parent(ptr noundef nonnull %.0139183) #6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.y, %.thread
  %.4130 = phi i16 [ %.3129.ph, %.thread ], [ %.3129, %bb.y ]
  %.4 = phi ptr [ %.3.ph, %.thread ], [ %.3, %bb.y ] ; 3 uses
  %.not151 = icmp eq ptr %.4, null
  br i1 %.not151, label %.loopexit.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 4
  %i.cs = and i16 %i.cr, -16
  %i.ct = or i16 %i.cs, %.4130
  store i16 %i.ct, ptr %i.cq, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.4, ptr %i.cu, align 8, !tbaa !24
  store i32 0, ptr %i.k, align 4, !tbaa !45
  store i32 0, ptr %i.l, align 8, !tbaa !46
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 29 uses
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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = tail call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %i.f, i32 noundef 64) #6
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.q, align 8, !tbaa !60
  store i32 0, ptr %i.p, align 4, !tbaa !61
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
  store i32 0, ptr %i.v, align 4, !tbaa !61
  %i.w = icmp eq i32 %i.s, 0
  br i1 %i.w, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !60
  %i.z = sub nsw i32 100, %i.n
  %i.aa = mul nsw i32 %i.y, %i.z
  %i.ab = sdiv i32 %i.aa, 100
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !60
  %i.ac = tail call i32 @lv_obj_get_scroll_bottom(ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.ad = tail call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !60  ; 11 uses
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
  %i.as = load i8, ptr %i.c, align 1, !tbaa !39, !range !40, !noundef !41
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i8, ptr %i.d, align 1, !range !40
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
  %.2.i = phi i32 [ 0, %bb.g ], [ %i.ae, %bb.l ], [ %spec.select.i, %bb.j ], [ 0, %bb.i ], [ %i.ar, %bb.m ], [ %.0.i, %bb.p ] ; 2 uses
  store i32 %.2.i, ptr %i.x, align 8, !tbaa !60
  %i.bb = tail call i32 @lv_obj_scroll_by_raw(ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef %.2.i) #6 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = and i8 %i.bd, 2
  %.not109 = icmp eq i8 %i.be, 0
  br i1 %.not109, label %bb.af, label %.critedge

bb.q:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.011.i = load i32, ptr %i.bf, align 8, !tbaa !42 ; 2 uses
  %.not15.i = icmp eq i32 %.011.i, 0
end_hunk_0
