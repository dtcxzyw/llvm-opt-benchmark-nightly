Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj_style?download=true
inline.NumInlined: 102
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_obj_get_local_style_prop:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.b = load i32, ptr %i.a, align 2
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 63                         ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !99

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 16777216
  %.not = icmp ne i32 %i.j, 0
  %i.k = and i32 %i.i, 16777215
  %i.l = icmp eq i32 %i.k, %3
  %or.cond = and i1 %.not, %i.l
  br i1 %or.cond, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.n = tail call i32 @lv_style_get_prop(ptr noundef %i.m, i8 noundef zeroext %1, ptr noundef %2) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.012 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.012
}

declare i32 @lv_style_get_prop(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @lv_obj_remove_local_style_prop(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader25

.preheader25:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.b = load i32, ptr %i.a, align 2
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %.not31 = icmp eq i32 %i.d, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 16777216
  %.not23 = icmp ne i32 %i.j, 0
  %i.k = and i32 %i.i, 16777215
  %i.l = icmp eq i32 %i.k, %2
  %or.cond = and i1 %.not23, %i.l
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !100

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader25
  %.0.lcssa = phi i32 [ 0, %.preheader25 ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  %i.n = icmp eq i32 %.0.lcssa, %i.d
  br i1 %i.n, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = zext nneg i32 %.0.lcssa to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = tail call zeroext i1 @lv_style_remove_prop(ptr noundef %i.s, i8 noundef zeroext %1) #10
  br i1 %i.t, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %bb.d
  tail call void @lv_obj_refresh_style(ptr noundef nonnull %0, i32 noundef %2, i8 noundef zeroext %1)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.d, %bb.e, %._crit_edge
  %.021 = phi i1 [ false, %._crit_edge ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.021
}

declare zeroext i1 @lv_style_remove_prop(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_obj_style_create_transition(ptr noundef nonnull initializes((60, 62)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %union.lv_style_value_t, align 8    ; 5 uses
  %6 = alloca %union.lv_style_value_t, align 8    ; 5 uses
  %7 = alloca %union.lv_style_value_t, align 8    ; 5 uses
  %8 = alloca %struct._lv_anim_t, align 8         ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 4 uses
  %i.b = load i32, ptr %i.a, align 2
  %i.c = or i32 %i.b, 8
  store i32 %i.c, ptr %i.a, align 2
  %i.d = trunc i32 %2 to i16                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  store i16 %i.d, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !101   ; 2 uses
  %i.h = and i32 %2, 65535
  %i.i = or i32 %i.h, %1                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 0, ptr %7, align 8
  %i.j = call fastcc i32 @get_selector_style_prop(ptr noundef readonly %0, i32 noundef %i.i, i8 noundef zeroext %i.g, ptr noundef %7)
  %.not7.i = icmp eq i32 %i.j, 0
  br i1 %.not7.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8, !tbaa !38
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext %i.g) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.l = trunc i32 %3 to i16                      ; 2 uses
  store i16 %i.l, ptr %i.e, align 4, !tbaa !61
  %i.m = load i8, ptr %i.f, align 8, !tbaa !101   ; 2 uses
  %i.n = and i32 %3, 65535
  %i.o = or i32 %i.n, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 0, ptr %6, align 8
  %i.p = call fastcc i32 @get_selector_style_prop(ptr noundef readonly %0, i32 noundef %i.o, i8 noundef zeroext %i.m, ptr noundef %6)
  %.not7.i73 = icmp eq i32 %i.p, 0
  br i1 %.not7.i73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i74 = load ptr, ptr %6, align 8, !tbaa !38
  br label %lv_obj_get_style_prop.exit77

bb.f:                                             ; preds = %bb.d
  %i.q = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext %i.m) #10
  br label %lv_obj_get_style_prop.exit77

lv_obj_get_style_prop.exit77:                     ; preds = %bb.e, %bb.f
  %.sroa.0.0.i75 = phi ptr [ %.sroa.0.0.copyload.i74, %bb.e ], [ %i.q, %bb.f ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.r = load i32, ptr %i.a, align 2
  %i.s = and i32 %i.r, -9
  store i32 %i.s, ptr %i.a, align 2
  %i.t = icmp eq ptr %.sroa.0.0.i, %.sroa.0.0.i75
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %lv_obj_get_style_prop.exit77
  %i.u = ptrtoint ptr %.sroa.0.0.i to i64
  %.sroa.019.0.extract.trunc26 = trunc i64 %i.u to i24 ; 2 uses
  %i.v = tail call zeroext i1 @lv_color_eq(i24 %.sroa.019.0.extract.trunc26, i24 %.sroa.019.0.extract.trunc26) #10
  br i1 %i.v, label %bb.r, label %bb.h

bb.h:                                             ; preds = %lv_obj_get_style_prop.exit77, %bb.g
  store i16 %i.d, ptr %i.e, align 4, !tbaa !61
  %i.w = load i8, ptr %i.f, align 8, !tbaa !101   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 0, ptr %5, align 8
  %i.x = call fastcc i32 @get_selector_style_prop(ptr noundef readonly %0, i32 noundef %i.i, i8 noundef zeroext %i.w, ptr noundef %5)
  %.not7.i79 = icmp eq i32 %i.x, 0
  br i1 %.not7.i79, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i80 = load ptr, ptr %5, align 8, !tbaa !38
  br label %lv_obj_get_style_prop.exit83

bb.j:                                             ; preds = %bb.h
  %i.y = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext %i.w) #10
  br label %lv_obj_get_style_prop.exit83

lv_obj_get_style_prop.exit83:                     ; preds = %bb.i, %bb.j
  %.sroa.0.0.i81 = phi ptr [ %.sroa.0.0.copyload.i80, %bb.i ], [ %i.y, %bb.j ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  store i16 %i.l, ptr %i.e, align 4, !tbaa !61
  %i.z = tail call fastcc ptr @get_trans_style(ptr noundef nonnull %0, i32 noundef %1)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = load i8, ptr %i.f, align 8, !tbaa !101
  tail call void @lv_style_set_prop(ptr noundef %i.aa, i8 noundef zeroext %i.ab, ptr %.sroa.0.0.i81) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  %i.ae = load i8, ptr %i.f, align 8, !tbaa !101
  tail call void @lv_obj_refresh_style(ptr noundef nonnull %0, i32 noundef %i.ad, i8 noundef zeroext %i.ae)
  %i.af = load i8, ptr %i.f, align 8, !tbaa !101
  %i.ag = icmp eq i8 %i.af, 120
  br i1 %i.ag, label %bb.k, label %bb.p

bb.k:                                             ; preds = %lv_obj_get_style_prop.exit83
  %9 = ptrtoint ptr %.sroa.0.0.i81 to i64         ; 2 uses
  %i.ah = and i64 %9, 4294967295
  %i.ai = icmp eq i64 %i.ah, 32767                ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.0.0.i75 to i64      ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp eq i64 %i.ak, 32767                ; 2 uses
  %or.cond = or i1 %i.al, %i.ai
  br i1 %or.cond, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.am = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #10
  %i.an = sdiv i32 %i.am, 2                       ; 2 uses
  %i.ao = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #10
  %i.ap = sdiv i32 %i.ao, 2                       ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.ap)
  %i.ar = add nsw i32 %i.aq, 1
  %.sroa.019.0.insert.ext = zext i32 %i.ar to i64
  %.sroa.019.0.insert.mask = and i64 %9, -4294967296
  %.sroa.019.0.insert.insert = or disjoint i64 %.sroa.019.0.insert.mask, %.sroa.019.0.insert.ext
  %i.as = inttoptr i64 %.sroa.019.0.insert.insert to ptr
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.019.0 = phi ptr [ %i.as, %bb.m ], [ %.sroa.0.0.i81, %bb.l ] ; 2 uses
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.ap)
  %i.au = add nsw i32 %i.at, 1
  %.sroa.012.0.insert.ext = zext i32 %i.au to i64
  %.sroa.012.0.insert.mask = and i64 %i.aj, -4294967296
  %.sroa.012.0.insert.insert = or disjoint i64 %.sroa.012.0.insert.mask, %.sroa.012.0.insert.ext
  %i.av = inttoptr i64 %.sroa.012.0.insert.insert to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k, %lv_obj_get_style_prop.exit83
  %.sroa.012.1 = phi ptr [ %.sroa.0.0.i75, %lv_obj_get_style_prop.exit83 ], [ %.sroa.0.0.i75, %bb.k ], [ %i.av, %bb.o ], [ %.sroa.0.0.i75, %bb.n ]
  %.sroa.019.1 = phi ptr [ %.sroa.0.0.i81, %lv_obj_get_style_prop.exit83 ], [ %.sroa.0.0.i81, %bb.k ], [ %.sroa.019.0, %bb.o ], [ %.sroa.019.0, %bb.n ]
  %i.aw = tail call ptr @lv_ll_ins_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 56)) #10 ; 7 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.p, %.preheader
  br label %.preheader

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %.sroa.019.1, ptr %i.ax, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %.sroa.012.1, ptr %i.ay, align 8, !tbaa !38
  store ptr %0, ptr %i.aw, align 8, !tbaa !52
  %i.az = load i8, ptr %i.f, align 8, !tbaa !101
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.az, ptr %i.ba, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %1, ptr %i.bb, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @lv_anim_init(ptr noundef nonnull %8) #10
  call void @lv_anim_set_var(ptr noundef nonnull %8, ptr noundef nonnull %i.aw) #10
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %8, ptr noundef nonnull @trans_anim_cb) #10
  call void @lv_anim_set_start_cb(ptr noundef nonnull %8, ptr noundef nonnull @trans_anim_start_cb) #10
  call void @lv_anim_set_completed_cb(ptr noundef nonnull %8, ptr noundef nonnull @trans_anim_completed_cb) #10
  call void @lv_anim_set_values(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 255) #10
  %i.bc = load i16, ptr %4, align 8, !tbaa !104
  %i.bd = zext i16 %i.bc to i32
  call void @lv_anim_set_duration(ptr noundef nonnull %8, i32 noundef %i.bd) #10
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !105
  %i.bg = zext i16 %i.bf to i32
  call void @lv_anim_set_delay(ptr noundef nonnull %8, i32 noundef %i.bg) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106
  call void @lv_anim_set_path_cb(ptr noundef nonnull %8, ptr noundef %i.bi) #10
  call void @lv_anim_set_early_apply(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !107
  call void @lv_anim_set_user_data(ptr noundef nonnull %8, ptr noundef %i.bk) #10
  %i.bl = call ptr @lv_anim_start(ptr noundef nonnull %8) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.q
  ret void
}

declare zeroext i1 @lv_color_eq(i24, i24) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_trans_style(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 3 uses
  %i.b = load i32, ptr %i.a, align 2              ; 3 uses
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %.not49 = icmp eq i32 %i.d, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 33554432
  %.not = icmp ne i32 %i.j, 0
  %i.k = and i32 %i.i, 16777215
  %i.l = icmp eq i32 %i.k, %1
  %or.cond = and i1 %.not, %i.l
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !108

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  %.not32 = icmp eq i32 %.0.lcssa, %i.d
  br i1 %.not32, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = zext nneg i32 %.0.lcssa to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p
  br label %bb.f

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.r = add i32 %i.b, 16                         ; 2 uses
  %i.s = and i32 %i.r, 1008
  %i.t = and i32 %i.b, -1009
  %i.u = or disjoint i32 %i.s, %i.t
  store i32 %i.u, ptr %i.a, align 2
  %i.v = trunc i32 %i.r to i16
  %i.w = lshr i16 %i.v, 4
  %i.x = and i16 %i.w, 63                         ; 2 uses
  %.not33 = icmp eq i16 %i.x, 0
  br i1 %.not33, label %.preheader, label %bb.e

.preheader:                                       ; preds = %._crit_edge.thread, %.preheader
  br label %.preheader

bb.e:                                             ; preds = %._crit_edge.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = shl nuw nsw i16 %i.x, 4
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = tail call ptr @lv_realloc(ptr noundef %i.z, i64 noundef %i.ab) #10 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !39
  %i.ad = load i32, ptr %i.a, align 2
  %i.ae = lshr i32 %i.ad, 4
  %i.af = and i32 %i.ae, 63                       ; 4 uses
  %.142 = add nsw i32 %i.af, -1                   ; 4 uses
  %.not3443 = icmp eq i32 %.142, 0
  br i1 %.not3443, label %._crit_edge48, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %bb.e
  %i.ag = zext i32 %.142 to i64                   ; 3 uses
  %xtraiter = and i32 %.142, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph47.prol.loopexit, label %.lr.ph47.prol

.lr.ph47.prol:                                    ; preds = %.lr.ph47.preheader
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !39  ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = add nsw i32 %i.af, -2
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !47
  %indvars.iv.next52.prol = add nsw i64 %i.ag, -1
  br label %.lr.ph47.prol.loopexit

.lr.ph47.prol.loopexit:                           ; preds = %.lr.ph47.prol, %.lr.ph47.preheader
  %indvars.iv51.unr = phi i64 [ %i.ag, %.lr.ph47.preheader ], [ %indvars.iv.next52.prol, %.lr.ph47.prol ]
  %.1.in44.unr = phi i32 [ %i.af, %.lr.ph47.preheader ], [ %.142, %.lr.ph47.prol ]
  %i.am = icmp eq i32 %i.af, 2
  br i1 %i.am, label %._crit_edge48.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.prol.loopexit, %.lr.ph47
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.1, %.lr.ph47 ], [ %indvars.iv51.unr, %.lr.ph47.prol.loopexit ] ; 4 uses
  %.1.in44 = phi i32 [ %i.ay, %.lr.ph47 ], [ %.1.in44.unr, %.lr.ph47.prol.loopexit ]
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !39  ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv51
  %i.ap = add i32 %.1.in44, -2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !47
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, -1 ; 2 uses
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !39  ; 2 uses
end_hunk_0
begin_hunk_1_@trans_anim_cb:bb.a
bb.h:                                             ; preds = %bb.d, %bb.d
  %i.y = icmp slt i32 %1, 255
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  br label %bb.w

bb.k:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 3 uses
  br i1 %i.af, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp slt i32 %1, 128
  %. = select i1 %i.aj, ptr %i.ae, ptr %i.ah
  br label %bb.w

bb.n:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.ak = icmp slt i32 %1, 1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.08.0.copyload = load i24, ptr %i.al, align 8
  %.sroa.08.0.insert.ext33 = zext i24 %.sroa.08.0.copyload to i64
  %i.am = inttoptr i64 %.sroa.08.0.insert.ext33 to ptr
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.an = icmp samesign ugt i32 %1, 254
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.08.0.copyload36 = load i24, ptr %i.ao, align 8
  %.sroa.08.0.insert.ext38 = zext i24 %.sroa.08.0.copyload36 to i64
  %i.ap = inttoptr i64 %.sroa.08.0.insert.ext38 to ptr
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = trunc nuw i32 %1 to i8
  %.0.copyload6 = load i24, ptr %i.ao, align 8
  %.0.copyload4 = load i24, ptr %i.aq, align 8
  %i.as = tail call i24 @lv_color_mix(i24 %.0.copyload6, i24 %.0.copyload4, i8 noundef zeroext %i.ar) #10
  %.sroa.08.0.insert.ext29 = zext i24 %i.as to i64
  %i.at = inttoptr i64 %.sroa.08.0.insert.ext29 to ptr
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !39
  %.pre102 = load i8, ptr %i.p, align 8, !tbaa !55
  br label %bb.w

bb.s:                                             ; preds = %bb.d
  switch i32 %1, label %bb.v [
    i32 0, label %bb.t
    i32 255, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !38
  %.sroa.08.0.insert.ext15 = zext i32 %i.av to i64
  %i.aw = inttoptr i64 %.sroa.08.0.insert.ext15 to ptr
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !38
  %.sroa.08.0.insert.ext19 = zext i32 %i.ay to i64
  %i.az = inttoptr i64 %.sroa.08.0.insert.ext19 to ptr
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !38
  %i.be = sub nsw i32 %i.bd, %i.bb
  %i.bf = mul nsw i32 %i.be, %1
  %i.bg = ashr i32 %i.bf, 8
  %i.bh = add nsw i32 %i.bg, %i.bb
  %.sroa.08.0.insert.ext23 = zext i32 %i.bh to i64
  %i.bi = inttoptr i64 %.sroa.08.0.insert.ext23 to ptr
  br label %bb.w

bb.w:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.t, %bb.v, %bb.u, %bb.o, %bb.r, %bb.q, %bb.i, %bb.j, %bb.f, %bb.g
  %i.bj = phi i8 [ %i.q, %bb.t ], [ %i.q, %bb.u ], [ %i.q, %bb.v ], [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.q, %bb.q ], [ %.pre102, %bb.r ], [ 114, %bb.m ], [ 114, %bb.l ], [ %i.q, %bb.o ], [ 114, %bb.k ]
  %i.bk = phi ptr [ %i.g, %bb.t ], [ %i.g, %bb.u ], [ %i.g, %bb.v ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.g, %bb.i ], [ %i.g, %bb.j ], [ %i.g, %bb.q ], [ %.pre, %bb.r ], [ %i.g, %bb.m ], [ %i.g, %bb.l ], [ %i.g, %bb.o ], [ %i.g, %bb.k ]
  %.sroa.08.0 = phi ptr [ %i.aw, %bb.t ], [ %i.az, %bb.u ], [ %i.bi, %bb.v ], [ %i.u, %bb.f ], [ %i.x, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ap, %bb.q ], [ %i.at, %bb.r ], [ %., %bb.m ], [ %i.ae, %bb.l ], [ %i.am, %bb.o ], [ %i.ah, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 0, ptr %2, align 8
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = call i32 @lv_style_get_prop(ptr noundef %i.bm, i8 noundef zeroext %i.bj, ptr noundef nonnull %2) #10
  %.not92 = icmp ne i32 %i.bn, 0
  %i.bo = load ptr, ptr %2, align 8               ; 2 uses
  %i.bp = icmp eq ptr %.sroa.08.0, %i.bo
  %or.cond = select i1 %.not92, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = trunc i64 %i.bq to i24
  %i.bs = ptrtoint ptr %.sroa.08.0 to i64         ; 2 uses
  %.sroa.08.0.extract.trunc27 = trunc i64 %i.bs to i24
  %i.bt = call zeroext i1 @lv_color_eq(i24 %.sroa.08.0.extract.trunc27, i24 %i.br) #10
  %.sroa.08.0.extract.trunc = trunc i64 %i.bs to i32
  %i.bu = load i32, ptr %2, align 8
  %i.bv = icmp eq i32 %i.bu, %.sroa.08.0.extract.trunc
  %or.cond95 = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond95, label %.critedge, label %bb.y

.critedge:                                        ; preds = %bb.x
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !50
  %i.bz = load i8, ptr %i.p, align 8, !tbaa !55
  call void @lv_style_set_prop(ptr noundef %i.by, i8 noundef zeroext %i.bz, ptr %.sroa.08.0) #10
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !50
  %i.cd = load i8, ptr %i.p, align 8, !tbaa !55
  call void @lv_style_set_prop(ptr noundef %i.cc, i8 noundef zeroext %i.cd, ptr %.sroa.08.0) #10
  %i.ce = load ptr, ptr %0, align 8, !tbaa !52
  %i.cf = load i32, ptr %i.h, align 4, !tbaa !57
  %i.cg = load i8, ptr %i.p, align 8, !tbaa !55
  call void @lv_obj_refresh_style(ptr noundef %i.ce, i32 noundef %i.cf, i8 noundef zeroext %i.cg)
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.loopexit

bb.aa:                                            ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !110

.loopexit:                                        ; preds = %bb.aa, %bb.a, %bb.z
  ret void
}

declare void @lv_anim_set_start_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @trans_anim_start_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %union.lv_style_value_t, align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !57
  %i.d = and i32 %i.c, 16711680                   ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !55    ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.i = load i16, ptr %i.h, align 4, !tbaa !61
  %i.j = zext i16 %i.i to i32
  %i.k = or disjoint i32 %i.d, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %i.l = call fastcc i32 @get_selector_style_prop(ptr noundef readonly %i.e, i32 noundef %i.k, i8 noundef zeroext %i.g, ptr noundef %1)
  %.not7.i = icmp eq i32 %i.l, 0
  br i1 %.not7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !38
  br label %lv_obj_get_style_prop.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext %i.g) #10
  br label %lv_obj_get_style_prop.exit

lv_obj_get_style_prop.exit:                       ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ %i.m, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  store ptr %.sroa.0.0.i, ptr %i.n, align 8, !tbaa !38
  %i.o = load i8, ptr %i.f, align 8, !tbaa !55    ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !55
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !52
  tail call fastcc void @trans_delete(ptr noundef %i.p, i32 noundef %i.d, i8 noundef zeroext %i.o, ptr noundef nonnull %i.a)
  store i8 %i.o, ptr %i.f, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.r = load i32, ptr %i.b, align 4, !tbaa !57
  %i.s = tail call fastcc ptr @get_trans_style(ptr noundef %i.q, i32 noundef %i.r)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = load i8, ptr %i.f, align 8, !tbaa !55
  %i.v = load ptr, ptr %i.n, align 8
  tail call void @lv_style_set_prop(ptr noundef %i.t, i8 noundef zeroext %i.u, ptr %i.v) #10
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.x = load i32, ptr %i.b, align 4, !tbaa !57
  %i.y = load i8, ptr %i.f, align 8, !tbaa !55
  tail call void @lv_obj_refresh_style(ptr noundef %i.w, i32 noundef %i.x, i8 noundef zeroext %i.y)
  ret void
}

declare void @lv_anim_set_completed_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @trans_anim_completed_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !55
  %i.e = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 56)) #10 ; 2 uses
  %.not.not38 = icmp eq ptr %i.e, null
  br i1 %.not.not38, label %.critedge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.f, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 62
  %i.h = load i32, ptr %i.g, align 2
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.i, 63                         ; 2 uses
  %.not42 = icmp eq i32 %i.j, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %.critedge.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.03239 = phi ptr [ %i.e, %.lr.ph ], [ %i.y, %bb.f ] ; 5 uses
  %.not35 = icmp eq ptr %.03239, %i.a
  br i1 %.not35, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.03239, align 8, !tbaa !52
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.03239, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57
  %i.s = load i32, ptr %i.f, align 4, !tbaa !57
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.03239, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !55
  %i.w = load i8, ptr %i.c, align 8, !tbaa !55
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.y = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 56), ptr noundef nonnull %.03239) #10 ; 2 uses
  %.not.not = icmp eq ptr %i.y, null
  br i1 %.not.not, label %.critedge.preheader, label %bb.b, !llvm.loop !113

bb.g:                                             ; preds = %.lr.ph41, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i32 %i.ab, 33554432
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = and i32 %i.ab, 16777215
  %i.ae = load i32, ptr %i.m, align 4, !tbaa !57
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  tail call void @lv_ll_remove(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 56), ptr noundef nonnull %i.a) #10
  tail call void @lv_free(ptr noundef nonnull %i.a) #10
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = tail call zeroext i1 @lv_style_remove_prop(ptr noundef %i.ai, i8 noundef zeroext %i.d) #10 ; 0 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.an = tail call zeroext i1 @lv_style_is_empty(ptr noundef %i.am) #10
  br i1 %i.an, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 16777215
  tail call fastcc void @remove_style_core(ptr noundef nonnull %i.b, ptr noundef readonly %i.ao, i32 noundef %i.ar, i1 noundef zeroext false)
  br label %.loopexit

.critedge:                                        ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !114

.loopexit:                                        ; preds = %bb.e, %.critedge, %.critedge.preheader, %bb.j, %bb.i
  ret void
}

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_path_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_anim_set_early_apply(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @lv_anim_set_user_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @lv_obj_style_apply_color_filter(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree readnone returned captures(ret: address, provenance) %2) local_unnamed_addr #6 {
bb.a:
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @lv_obj_style_state_compare(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.lv_style_value_t, align 8    ; 33 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.b = load i32, ptr %i.a, align 2              ; 2 uses
  %i.c = and i32 %i.b, 1008
  %.not99 = icmp eq i32 %i.c, 0
  br i1 %.not99, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = xor i32 %1, -1
  %i.f = xor i32 %2, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %i.g = phi i32 [ %i.b, %.lr.ph ], [ %i.av, %bb.aj ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  %.05397 = phi i32 [ 0, %.lr.ph ], [ %.5, %bb.aj ] ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = and i32 %i.k, 33554432
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, 65535                      ; 2 uses
  %i.n = and i32 %i.m, %i.e
  %.not61 = icmp eq i32 %i.n, 0
  %i.o = and i32 %i.m, %i.f
  %i.p = icmp ne i32 %i.o, 0
  %.not63 = xor i1 %.not61, %i.p
  br i1 %.not63, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !50   ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.r = call i32 @lv_style_get_prop(ptr noundef %i.q, i8 noundef zeroext 24, ptr noundef nonnull %3) #10
  %.not64 = icmp eq i32 %i.r, 0
  br i1 %.not64, label %bb.e, label %.critedge.critedge

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @lv_style_get_prop(ptr noundef %i.q, i8 noundef zeroext 25, ptr noundef nonnull %3) #10
  %.not65 = icmp eq i32 %i.s, 0
  br i1 %.not65, label %bb.f, label %.critedge.critedge

bb.f:                                             ; preds = %bb.e
  %i.t = call i32 @lv_style_get_prop(ptr noundef %i.q, i8 noundef zeroext 26, ptr noundef nonnull %3) #10
  %.not66 = icmp eq i32 %i.t, 0
  br i1 %.not66, label %bb.g, label %.critedge.critedge

end_hunk_1
