Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_table?download=true
inline.NumInlined: 52
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @lv_draw_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_rect_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_label_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size_attributes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_row_height(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.lv_text_attributes_t, align 4 ; 8 uses
  %10 = alloca %struct.lv_point_t, align 4        ; 4 uses
  %i.a = tail call i32 @lv_font_get_line_height(ptr noundef %2) #8
  %i.b = add i32 %8, %7                           ; 4 uses
  %i.c = add i32 %i.b, %i.a                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = mul i32 %i.e, %1                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.g, align 4
  store i32 %3, ptr %9, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %4, ptr %i.h, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !45
  %i.j = add i32 %i.e, %i.f
  %i.k = icmp ult i32 %i.f, %i.j
  br i1 %i.k, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.o = add i32 %6, %5
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %bb.i
  %i.q = phi i32 [ %i.e, %.lr.ph84 ], [ %i.bj, %bb.i ]
  %.05983 = phi i32 [ 0, %.lr.ph84 ], [ %i.bi, %bb.i ] ; 7 uses
  %.06182 = phi i32 [ %i.f, %.lr.ph84 ], [ %i.bh, %bb.i ] ; 6 uses
  %.06481 = phi i32 [ %i.c, %.lr.ph84 ], [ %.266, %bb.i ] ; 4 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.s = zext i32 %.06182 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.x = zext i32 %.05983 to i64                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24   ; 3 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !43
  %i.aa = add i32 %i.q, -1                        ; 3 uses
  %i.ab = icmp ult i32 %.05983, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ac = sub nuw i32 %i.aa, %.05983              ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ad = phi i32 [ %i.z, %.lr.ph.preheader ], [ %i.aq, %bb.e ] ; 3 uses
  %i.ae = add nuw nsw i64 %indvars.iv, %i.x       ; 3 uses
  %i.af = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.ag = add i32 %.06182, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread.loopexit.split.loop.exit92, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !39
  %i.am = and i32 %i.al, 1
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.thread.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = add nsw i32 %i.ad, %i.ap                ; 3 uses
  store i32 %i.aq, ptr %i.n, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !85

.thread.loopexit.split.loop.exit:                 ; preds = %bb.d
  %i.ar = trunc nuw i64 %i.ae to i32
  br label %.thread

.thread.loopexit.split.loop.exit92:               ; preds = %.lr.ph
  %i.as = trunc nuw i64 %i.ae to i32
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.loopexit.split.loop.exit, %.thread.loopexit.split.loop.exit92, %bb.c
  %i.at = phi i32 [ %i.z, %bb.c ], [ %i.ad, %.thread.loopexit.split.loop.exit92 ], [ %i.ad, %.thread.loopexit.split.loop.exit ], [ %i.aq, %bb.e ]
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.af, %.thread.loopexit.split.loop.exit92 ], [ %i.af, %.thread.loopexit.split.loop.exit ], [ %i.ac, %bb.e ]
  %.lcssa = phi i32 [ %.05983, %bb.c ], [ %i.as, %.thread.loopexit.split.loop.exit92 ], [ %i.ar, %.thread.loopexit.split.loop.exit ], [ %i.aa, %bb.e ]
  %i.au = load i32, ptr %i.u, align 8, !tbaa !39
  %i.av = and i32 %i.au, 2
  %.not69 = icmp eq i32 %i.av, 0
  br i1 %.not69, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.aw = call i32 @lv_font_get_line_height(ptr noundef %2) #8
  %i.ax = add i32 %i.b, %i.aw
  %i.ay = icmp sgt i32 %i.ax, %.06481
  br i1 %i.ay, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.az = call i32 @lv_font_get_line_height(ptr noundef %2) #8
  %i.ba = add i32 %i.b, %i.az
  br label %bb.i

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.bb = sub i32 %i.at, %i.o
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !43
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @lv_text_get_size_attributes(ptr noundef nonnull %10, ptr noundef nonnull %i.bd, ptr noundef %2, ptr noundef nonnull %9) #8
  %i.be = load i32, ptr %i.p, align 4, !tbaa !34
  %i.bf = add i32 %i.b, %i.be
  %..064 = call i32 @llvm.smax.i32(i32 %i.bf, i32 %.06481)
  %i.bg = add i32 %.0.lcssa, %.06182
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.b
  %.266 = phi i32 [ %.06481, %bb.b ], [ %..064, %bb.h ], [ %i.ba, %bb.g ], [ %.06481, %bb.f ] ; 2 uses
  %.263 = phi i32 [ %.06182, %bb.b ], [ %i.bg, %bb.h ], [ %.06182, %bb.g ], [ %.06182, %bb.f ]
  %.2 = phi i32 [ %.05983, %bb.b ], [ %.lcssa, %bb.h ], [ %.05983, %bb.g ], [ %.05983, %bb.f ]
  %i.bh = add i32 %.263, 1                        ; 2 uses
  %i.bi = add i32 %.2, 1
  %i.bj = load i32, ptr %i.d, align 8, !tbaa !20  ; 2 uses
  %i.bk = add i32 %i.bj, %i.f
  %i.bl = icmp ult i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.064.lcssa = phi i32 [ %i.c, %bb.a ], [ %.266, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret i32 %.064.lcssa
}

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

declare i32 @lv_font_get_line_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_cell_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !42
  %.not88 = icmp eq i32 %2, 0
  br i1 %.not88, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 8 uses
  %wide.trip.count = zext i32 %2 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = getelementptr i8, ptr %3, i64 4
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %bound0 = icmp ult ptr %3, %i.e
  %bound1 = icmp ult ptr %i.b, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi105 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !24, !alias.scope !100
  %wide.load106 = load <4 x i32>, ptr %i.g, align 4, !tbaa !24, !alias.scope !100
  %i.h = add <4 x i32> %vec.phi, %wide.load       ; 2 uses
  %i.i = add <4 x i32> %vec.phi105, %wide.load106 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.k, ptr %3, align 4, !tbaa !42, !alias.scope !101, !noalias !100
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph133 = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.k, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = phi i32 [ %i.o, %scalar.ph.prol ], [ %.ph133, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = add nsw i32 %i.l, %i.n                   ; 3 uses
  store i32 %i.o, ptr %3, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !91

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph133, %scalar.ph.preheader ], [ %i.o, %scalar.ph.prol ]
  %i.p = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = add i32 %i.s, -1                         ; 2 uses
  %i.u = icmp ult i32 %2, %i.t
  br i1 %i.u, label %.lr.ph80, label %.thread

.lr.ph80:                                         ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = mul i32 %i.s, %1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = zext i32 %2 to i64
  %i.aa = sub nuw i32 %i.t, %2
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = phi i32 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.ae = add nsw i32 %i.ab, %i.ad                ; 2 uses
  store i32 %i.ae, ptr %3, align 4, !tbaa !42
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.ai = add nsw i32 %i.ae, %i.ah                ; 2 uses
  store i32 %i.ai, ptr %3, align 4, !tbaa !42
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = add nsw i32 %i.ai, %i.al                ; 2 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !42
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = add nsw i32 %i.am, %i.ap                ; 2 uses
  store i32 %i.aq, ptr %3, align 4, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !92

bb.b:                                             ; preds = %.lr.ph80, %bb.d
  %indvars.iv91 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next92, %bb.d ] ; 3 uses
  %.06279 = phi i32 [ 0, %.lr.ph80 ], [ %i.be, %bb.d ] ; 3 uses
  %i.ar = trunc nuw i64 %indvars.iv91 to i32
  %i.as = add i32 %i.x, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !39
  %i.ay = and i32 %i.ax, 1
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv91
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.z
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %i.be = add nsw i32 %i.bd, %.06279              ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32
  %exitcond94.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond94.not, label %.thread, label %bb.b, !llvm.loop !93

.thread:                                          ; preds = %bb.d, %bb.b, %bb.c, %.preheader
  %.062.lcssa = phi i32 [ 0, %.preheader ], [ %.06279, %bb.c ], [ %.06279, %bb.b ], [ %i.be, %bb.d ] ; 2 uses
  %i.bf = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp eq i64 %i.bh, 1
  %i.bj = tail call i32 @lv_obj_get_scroll_x(ptr noundef nonnull %0) #8 ; 2 uses
  %i.bk = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.bl = add nsw i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %3, align 4, !tbaa !42
  %i.bm = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #8
  %i.bn = load i32, ptr %3, align 4, !tbaa !42
  %i.bo = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.bp = ptrtoint ptr %i.bo to i64
  %.sroa.0.0.extract.trunc.i69 = trunc i64 %i.bp to i32
  %i.bq = add i32 %i.bn, %.sroa.0.0.extract.trunc.i69
  %i.br = sub i32 %i.bm, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = zext i32 %2 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %i.by = add i32 %i.bx, %.062.lcssa
  %i.bz = sub i32 %i.br, %i.by
  store i32 %i.bz, ptr %3, align 4, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.ca = sub nsw i32 %i.bk, %i.bj
  store i32 %i.ca, ptr %3, align 4, !tbaa !42
  %i.cb = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.cc = ptrtoint ptr %i.cb to i64
  %.sroa.0.0.extract.trunc.i70 = trunc i64 %i.cc to i32
  %i.cd = load i32, ptr %3, align 4, !tbaa !42
  %i.ce = add nsw i32 %i.cd, %.sroa.0.0.extract.trunc.i70 ; 2 uses
  store i32 %i.ce, ptr %3, align 4, !tbaa !42
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !22
  %i.ch = zext i32 %2 to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !24
  %i.ck = add i32 %.062.lcssa, -1
  %i.cl = add i32 %i.ck, %i.ce
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 12 uses
  store i32 0, ptr %i.co, align 4, !tbaa !44
  %.not89 = icmp eq i32 %1, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23 ; 8 uses
  %wide.trip.count98 = zext i32 %1 to i64         ; 9 uses
  %min.iters.check113 = icmp ult i32 %1, 8
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph86
  %i.cr = getelementptr i8, ptr %3, i64 8
  %i.cs = shl nuw nsw i64 %wide.trip.count98, 2
  %i.ct = getelementptr i8, ptr %i.cq, i64 %i.cs
  %bound0115 = icmp ult ptr %i.co, %i.ct
  %bound1116 = icmp ult ptr %i.cq, %i.cr
  %found.conflict117 = and i1 %bound0115, %bound1116
  br i1 %found.conflict117, label %scalar.ph112.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %wide.trip.count98, 4294967288 ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %vec.phi122 = phi <4 x i32> [ zeroinitializer, %vector.ph118 ], [ %i.cw, %vector.body120 ]
  %vec.phi123 = phi <4 x i32> [ zeroinitializer, %vector.ph118 ], [ %i.cx, %vector.body120 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index121 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load124 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !24, !alias.scope !103
  %wide.load125 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !24, !alias.scope !103
  %i.cw = add <4 x i32> %vec.phi122, %wide.load124 ; 2 uses
  %i.cx = add <4 x i32> %vec.phi123, %wide.load125 ; 2 uses
  %index.next126 = add nuw i64 %index121, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.cy, label %middle.block127, label %vector.body120, !llvm.loop !96

middle.block127:                                  ; preds = %vector.body120
  %bin.rdx128 = add <4 x i32> %i.cx, %i.cw
  %i.cz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx128) ; 2 uses
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !44, !alias.scope !104, !noalias !103
  %cmp.n129 = icmp eq i64 %n.vec119, %wide.trip.count98
  br i1 %cmp.n129, label %._crit_edge, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck114, %.lr.ph86, %middle.block127
  %indvars.iv95.ph = phi i64 [ 0, %vector.memcheck114 ], [ 0, %.lr.ph86 ], [ %n.vec119, %middle.block127 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck114 ], [ 0, %.lr.ph86 ], [ %i.cz, %middle.block127 ] ; 2 uses
  %xtraiter136 = and i64 %wide.trip.count98, 3    ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol

scalar.ph112.prol:                                ; preds = %scalar.ph112.preheader, %scalar.ph112.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %scalar.ph112.prol ], [ %indvars.iv95.ph, %scalar.ph112.preheader ] ; 2 uses
  %i.da = phi i32 [ %i.dd, %scalar.ph112.prol ], [ %.ph, %scalar.ph112.preheader ]
  %prol.iter138 = phi i64 [ %prol.iter138.next, %scalar.ph112.prol ], [ 0, %scalar.ph112.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !24
  %i.dd = add nsw i32 %i.da, %i.dc                ; 3 uses
  store i32 %i.dd, ptr %i.co, align 4, !tbaa !44
  %indvars.iv.next96.prol = add nuw nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol, !llvm.loop !98

scalar.ph112.prol.loopexit:                       ; preds = %scalar.ph112.prol, %scalar.ph112.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph112.preheader ], [ %indvars.iv.next96.prol, %scalar.ph112.prol ]
  %.unr139 = phi i32 [ %.ph, %scalar.ph112.preheader ], [ %i.dd, %scalar.ph112.prol ]
  %i.de = sub nsw i64 %indvars.iv95.ph, %wide.trip.count98
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge, label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %scalar.ph112 ], [ %indvars.iv95.unr, %scalar.ph112.prol.loopexit ] ; 5 uses
  %i.dg = phi i32 [ %i.dv, %scalar.ph112 ], [ %.unr139, %scalar.ph112.prol.loopexit ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !24
  %i.dj = add nsw i32 %i.dg, %i.di                ; 2 uses
  store i32 %i.dj, ptr %i.co, align 4, !tbaa !44
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !24
  %i.dn = add nsw i32 %i.dj, %i.dm                ; 2 uses
  store i32 %i.dn, ptr %i.co, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !24
  %i.dr = add nsw i32 %i.dn, %i.dq                ; 2 uses
  store i32 %i.dr, ptr %i.co, align 4, !tbaa !44
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !24
  %i.dv = add nsw i32 %i.dr, %i.du                ; 2 uses
  store i32 %i.dv, ptr %i.co, align 4, !tbaa !44
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count98
  br i1 %exitcond99.not.3, label %._crit_edge, label %scalar.ph112, !llvm.loop !99

._crit_edge:                                      ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112, %middle.block127, %bb.g
  %.pre-phi = phi i64 [ 0, %bb.g ], [ %wide.trip.count98, %middle.block127 ], [ %wide.trip.count98, %scalar.ph112 ], [ %wide.trip.count98, %scalar.ph112.prol.loopexit ]
  %i.dw = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.dx = ptrtoint ptr %i.dw to i64
  %.sroa.0.0.extract.trunc.i71 = trunc i64 %i.dx to i32
  %i.dy = load i32, ptr %i.co, align 4, !tbaa !44
  %i.dz = add nsw i32 %i.dy, %.sroa.0.0.extract.trunc.i71
  store i32 %i.dz, ptr %i.co, align 4, !tbaa !44
  %i.ea = tail call i32 @lv_obj_get_scroll_y(ptr noundef nonnull %0) #8
  %i.eb = load i32, ptr %i.co, align 4, !tbaa !44
  %i.ec = sub nsw i32 %i.eb, %i.ea                ; 2 uses
  store i32 %i.ec, ptr %i.co, align 4, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.pre-phi
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !24
  %i.eh = add i32 %i.ec, -1
  %i.ei = add i32 %i.eh, %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !45
  ret void
}

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #2

declare i64 @lv_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @lv_strcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_scroll_by_bounded(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!9 = !{!"p1 _ZTS15_lv_obj_class_t", !8, i64 0}
!10 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!11 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !8, i64 0}
!12 = !{!"p1 _ZTS15_lv_obj_style_t", !8, i64 0}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!"short", !4, i64 0}
!15 = !{!"_lv_obj_t", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !8, i64 32, !13, i64 40, !5, i64 56, !14, i64 60, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 64}
!16 = !{!"any p2 pointer", !8, i64 0}
!17 = !{!"p2 _ZTS16_lv_table_cell_t", !16, i64 0}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!"_lv_table_t", !15, i64 0, !5, i64 72, !5, i64 76, !17, i64 80, !18, i64 88, !18, i64 96, !5, i64 104, !5, i64 108}
!20 = !{!19, !5, i64 72}
!21 = !{!19, !5, i64 76}
!22 = !{!19, !18, i64 96}
!23 = !{!19, !18, i64 88}
!24 = !{!5, !5, i64 0}
!25 = !{!19, !17, i64 80}
!26 = !{!"p1 _ZTS16_lv_table_cell_t", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!19, !5, i64 108}
!29 = !{!19, !5, i64 104}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"", !5, i64 0, !5, i64 4}
!34 = !{!33, !5, i64 4}
!35 = !{!15, !5, i64 48}
!36 = !{!15, !5, i64 40}
!37 = !{!15, !5, i64 44}
!38 = !{!"_lv_table_cell_t", !5, i64 0, !8, i64 8, !4, i64 16}
!39 = !{!38, !5, i64 0}
!40 = !{!38, !8, i64 8}
!41 = !{!4, !4, i64 0}
!42 = !{!13, !5, i64 0}
!43 = !{!13, !5, i64 8}
!44 = !{!13, !5, i64 4}
!45 = !{!13, !5, i64 12}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30, !31, !32}
!48 = distinct !{!48, !30, !31, !32}
!49 = distinct !{!49, !30, !32, !31}
!50 = distinct !{!50, !30, !32, !31}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = !{!33, !5, i64 0}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30, !31, !32}
!57 = distinct !{!57, !30, !32, !31}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 12, i64 4, !24}
!64 = !{!15, !14, i64 60}
!65 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!66 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!67 = !{!"long", !4, i64 0}
!68 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !65, i64 24, !14, i64 32, !14, i64 34, !66, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !67, i64 48, !8, i64 56}
!69 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !8, i64 48}
!70 = !{!"", !68, i64 0, !5, i64 64, !8, i64 72, !8, i64 80, !66, i64 88, !4, i64 91, !4, i64 92, !4, i64 93, !4, i64 94, !4, i64 95, !4, i64 96, !4, i64 97, !66, i64 98, !69, i64 104, !8, i64 160, !66, i64 168, !5, i64 172, !5, i64 176, !4, i64 176, !66, i64 177, !5, i64 180, !5, i64 184, !66, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204}
!71 = !{!70, !65, i64 24}
!72 = !{!"p1 omnipotent char", !8, i64 0}
!73 = !{!"p1 _ZTS10_lv_font_t", !8, i64 0}
!74 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !8, i64 0}
!75 = !{!"", !68, i64 0, !72, i64 64, !33, i64 72, !73, i64 80, !66, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !66, i64 120, !66, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !4, i64 140, !4, i64 141, !5, i64 142, !5, i64 142, !4, i64 143, !4, i64 143, !4, i64 143, !74, i64 144, !66, i64 152, !5, i64 156}
!76 = !{!75, !65, i64 24}
!77 = !{!70, !5, i64 172}
!78 = !{!15, !5, i64 52}
!79 = !{!70, !5, i64 12}
!80 = !{!70, !5, i64 16}
!81 = !{!75, !5, i64 12}
!82 = !{!75, !5, i64 16}
!83 = !{!75, !73, i64 80}
!84 = !{!75, !72, i64 64}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !30, !31, !32}
!90 = distinct !{!90, !87}
!91 = distinct !{!91, !102}
!92 = distinct !{!92, !30, !31}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, i1 false, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !30, !31, !32}
!97 = distinct !{!97, !94}
!98 = distinct !{!98, !102}
!99 = distinct !{!99, !30, !31}
!100 = !{!88}
!101 = !{!90}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !{!95}
!104 = !{!97}
end_hunk_0
