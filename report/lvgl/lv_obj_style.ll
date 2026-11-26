Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj_style?download=true
inline.NumInlined: 102
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_obj_set_local_style_prop:bb.a
  %i.bc = and i32 %i.ba, -16777216
  %i.bd = or disjoint i32 %i.bc, %i.bb
  store i32 %i.bd, ptr %i.az, align 8
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.1.lcssa.i
  br label %get_local_style.exit

get_local_style.exit:                             ; preds = %bb.c, %._crit_edge60.i
  %.040.in.i = phi ptr [ %i.bf, %._crit_edge60.i ], [ %i.h, %bb.c ]
  %.040.i = load ptr, ptr %.040.in.i, align 8, !tbaa !53
  %i.bg = icmp eq i32 %3, 0
  br i1 %i.bg, label %bb.g, label %bb.i

bb.g:                                             ; preds = %get_local_style.exit
  %i.bh = tail call zeroext i8 @lv_style_prop_lookup_flags(i8 noundef zeroext %1) #10
  %i.bi = and i8 %i.bh, 32
  %.not = icmp eq i8 %i.bi, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = tail call i32 @lv_obj_invalidate(ptr noundef %0) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %get_local_style.exit
  tail call void @lv_style_set_prop(ptr noundef %.040.i, i8 noundef zeroext %1, ptr %2) #10
  tail call void @lv_obj_refresh_style(ptr noundef %0, i32 noundef %3, i8 noundef zeroext %1)
  ret void
}

declare void @lv_style_set_prop(ptr noundef, i8 noundef zeroext, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @lv_obj_get_local_style_prop(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.b = load i32, ptr %i.a, align 2
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 63                         ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !113

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
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !53
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
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
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !5

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader25
  %.0.lcssa = phi i32 [ 0, %.preheader25 ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  %i.n = icmp eq i32 %.0.lcssa, %i.d
  br i1 %i.n, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = zext nneg i32 %.0.lcssa to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
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
  %i.g = load i8, ptr %i.f, align 8, !tbaa !115   ; 2 uses
  %i.h = and i32 %2, 65535
  %i.i = or i32 %i.h, %1                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 0, ptr %7, align 8
  %i.j = call fastcc i32 @get_selector_style_prop(ptr noundef readonly %0, i32 noundef %i.i, i8 noundef zeroext %i.g, ptr noundef %7)
  %.not7.i = icmp eq i32 %i.j, 0
  br i1 %.not7.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext %i.g) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.l = trunc i32 %3 to i16                      ; 2 uses
  store i16 %i.l, ptr %i.e, align 4, !tbaa !61
  %i.m = load i8, ptr %i.f, align 8, !tbaa !115   ; 2 uses
  %i.n = and i32 %3, 65535
  %i.o = or i32 %i.n, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 0, ptr %6, align 8
  %i.p = call fastcc i32 @get_selector_style_prop(ptr noundef readonly %0, i32 noundef %i.o, i8 noundef zeroext %i.m, ptr noundef %6)
  %.not7.i73 = icmp eq i32 %i.p, 0
  br i1 %.not7.i73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i74 = load ptr, ptr %6, align 8, !tbaa !42
  br label %lv_obj_get_style_prop.exit77

bb.f:                                             ; preds = %bb.d
  %i.q = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext %i.m) #10
  br label %lv_obj_get_style_prop.exit77

lv_obj_get_style_prop.exit77:                     ; preds = %bb.e, %bb.f
  %.sroa.0.0.i75 = phi ptr [ %.sroa.0.0.copyload.i74, %bb.e ], [ %i.q, %bb.f ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.r = load i32, ptr %i.a, align 2
  %i.s = and i32 %i.r, -9
  store i32 %i.s, ptr %i.a, align 2
  %i.t = icmp eq ptr %.sroa.0.0.i, %.sroa.0.0.i75
  br i1 %i.t, label %9, label %bb.h

9:                                                ; preds = %lv_obj_get_style_prop.exit77
  %10 = ptrtoint ptr %.sroa.0.0.i to i64          ; 2 uses
  %.sroa.019.0.extract.trunc = trunc i64 %10 to i32
  %11 = ptrtoint ptr %.sroa.0.0.i75 to i64        ; 2 uses
  %.sroa.012.0.extract.trunc = trunc i64 %11 to i32
  %12 = icmp eq i32 %.sroa.019.0.extract.trunc, %.sroa.012.0.extract.trunc
  br i1 %12, label %bb.g, label %bb.h

bb.g:                                             ; preds = %9
  %.sroa.019.0.extract.trunc26 = trunc i64 %10 to i24
  %.sroa.019.0.extract.trunc26.a = trunc i64 %11 to i24
  %i.u = tail call zeroext i1 @lv_color_eq(i24 %.sroa.019.0.extract.trunc26, i24 %.sroa.019.0.extract.trunc26.a) #10
  br i1 %i.u, label %bb.r, label %bb.h

bb.h:                                             ; preds = %lv_obj_get_style_prop.exit77, %9, %bb.g
  store i16 %i.d, ptr %i.e, align 4, !tbaa !61
  %i.v = load i8, ptr %i.f, align 8, !tbaa !115   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 0, ptr %5, align 8
  %i.w = call fastcc i32 @get_selector_style_prop(ptr noundef readonly %0, i32 noundef %i.i, i8 noundef zeroext %i.v, ptr noundef %5)
  %.not7.i79 = icmp eq i32 %i.w, 0
  br i1 %.not7.i79, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i80 = load ptr, ptr %5, align 8, !tbaa !42
  br label %lv_obj_get_style_prop.exit83

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext %i.v) #10
  br label %lv_obj_get_style_prop.exit83

lv_obj_get_style_prop.exit83:                     ; preds = %bb.i, %bb.j
  %.sroa.0.0.i81 = phi ptr [ %.sroa.0.0.copyload.i80, %bb.i ], [ %i.x, %bb.j ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  store i16 %i.l, ptr %i.e, align 4, !tbaa !61
  %i.y = tail call fastcc ptr @get_trans_style(ptr noundef nonnull %0, i32 noundef %1)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = load i8, ptr %i.f, align 8, !tbaa !115
  tail call void @lv_style_set_prop(ptr noundef %i.z, i8 noundef zeroext %i.aa, ptr %.sroa.0.0.i81) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !116
  %i.ad = load i8, ptr %i.f, align 8, !tbaa !115
  tail call void @lv_obj_refresh_style(ptr noundef nonnull %0, i32 noundef %i.ac, i8 noundef zeroext %i.ad)
  %i.ae = load i8, ptr %i.f, align 8, !tbaa !115
  %i.af = icmp eq i8 %i.ae, 120
  br i1 %i.af, label %bb.k, label %bb.p

bb.k:                                             ; preds = %lv_obj_get_style_prop.exit83
  %i.ag = ptrtoint ptr %.sroa.0.0.i81 to i64      ; 2 uses
  %i.ah = and i64 %i.ag, 4294967295
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
  %.sroa.019.0.insert.mask = and i64 %i.ag, -4294967296
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
  store ptr %.sroa.019.1, ptr %i.ax, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %.sroa.012.1, ptr %i.ay, align 8, !tbaa !42
  store ptr %0, ptr %i.aw, align 8, !tbaa !55
  %i.az = load i8, ptr %i.f, align 8, !tbaa !115
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.az, ptr %i.ba, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %1, ptr %i.bb, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @lv_anim_init(ptr noundef nonnull %8) #10
  call void @lv_anim_set_var(ptr noundef nonnull %8, ptr noundef nonnull %i.aw) #10
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %8, ptr noundef nonnull @trans_anim_cb) #10
  call void @lv_anim_set_start_cb(ptr noundef nonnull %8, ptr noundef nonnull @trans_anim_start_cb) #10
  call void @lv_anim_set_completed_cb(ptr noundef nonnull %8, ptr noundef nonnull @trans_anim_completed_cb) #10
  call void @lv_anim_set_values(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 255) #10
  %i.bc = load i16, ptr %4, align 8, !tbaa !117
  %i.bd = zext i16 %i.bc to i32
  call void @lv_anim_set_duration(ptr noundef nonnull %8, i32 noundef %i.bd) #10
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !118
  %i.bg = zext i16 %i.bf to i32
  call void @lv_anim_set_delay(ptr noundef nonnull %8, i32 noundef %i.bg) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !119
  call void @lv_anim_set_path_cb(ptr noundef nonnull %8, ptr noundef %i.bi) #10
  call void @lv_anim_set_early_apply(ptr noundef nonnull %8, i1 noundef zeroext false) #10
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !120
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
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
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !121

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  %.not32 = icmp eq i32 %.0.lcssa, %i.d
  br i1 %.not32, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.aa = shl nuw nsw i16 %i.x, 4
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = tail call ptr @lv_realloc(ptr noundef %i.z, i64 noundef %i.ab) #10 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !49
  %i.ad = load i32, ptr %i.a, align 2
  %i.ae = lshr i32 %i.ad, 4
  %i.af = and i32 %i.ae, 63                       ; 4 uses
  %.142 = add nsw i32 %i.af, -1                   ; 4 uses
  %.not3443 = icmp eq i32 %.142, 0
  br i1 %.not3443, label %._crit_edge48, label %.lr.ph47.preheader
end_hunk_0
