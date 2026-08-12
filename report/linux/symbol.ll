inline.NumInlined: 94
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@sym_set_tristate_value:bb.a
  br i1 %.not12.i.i.i, label %.preheader.i, label %sym_get_prompt_menu.exit.i.i, !llvm.loop !28

sym_get_prompt_menu.exit.i.i:                     ; preds = %bb.g
  %.011.le.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -40
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %sym_get_prompt_menu.exit.i.i
  %.0.i.i = phi ptr [ %.011.le.i.i.i, %sym_get_prompt_menu.exit.i.i ], [ %i.ad, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  %.not14.i.i = icmp eq ptr %i.ad, null
  br i1 %.not14.i.i, label %sym_set_changed.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.af, null
  br i1 %.not15.i.i, label %bb.h, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ah = icmp eq ptr %.val.i.i, null
  br i1 %i.ah, label %sym_get_choice_menu.exit.i, label %sym_set_changed.exit

sym_get_choice_menu.exit.i:                       ; preds = %.critedge.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 96 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !55
  %i.ak = or i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !55
  br label %sym_set_changed.exit

sym_set_changed.exit:                             ; preds = %.preheader.i, %bb.h, %sym_get_choice_menu.exit.i, %.critedge.i.i, %bb.e
  %.not13 = icmp eq i32 %.val, %1
  br i1 %.not13, label %sym_tristate_within_range.exit.thread, label %.preheader

.preheader:                                       ; preds = %sym_set_changed.exit, %._crit_edge.i.1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %._crit_edge.i.1 ], [ 0, %sym_set_changed.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @sym_hashtable, i64 %indvars.iv.i
  %.022.i = load ptr, ptr %i.al, align 16, !tbaa !76 ; 2 uses
  %.not1923.i = icmp eq ptr %.022.i, null
  br i1 %.not1923.i, label %._crit_edge.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader, %.lr.ph.i15
  %.024.i = phi ptr [ %.0.i16, %.lr.ph.i15 ], [ %.022.i, %.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.024.i, i64 152 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !49
  %i.ao = and i32 %i.an, -129
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !49
  %.0.i16 = load ptr, ptr %.024.i, align 8, !tbaa !76 ; 2 uses
  %.not19.i = icmp eq ptr %.0.i16, null
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i15, !llvm.loop !81

._crit_edge.i:                                    ; preds = %.lr.ph.i15, %.preheader
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @sym_hashtable, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.022.i.1 = load ptr, ptr %i.aq, align 8, !tbaa !76 ; 2 uses
  %.not1923.i.1 = icmp eq ptr %.022.i.1, null
  br i1 %.not1923.i.1, label %._crit_edge.i.1, label %.lr.ph.i15.1

.lr.ph.i15.1:                                     ; preds = %._crit_edge.i, %.lr.ph.i15.1
  %.024.i.1 = phi ptr [ %.0.i16.1, %.lr.ph.i15.1 ], [ %.022.i.1, %._crit_edge.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.024.i.1, i64 152 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !49
  %i.at = and i32 %i.as, -129
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !49
  %.0.i16.1 = load ptr, ptr %.024.i.1, align 8, !tbaa !76 ; 2 uses
  %.not19.i.1 = icmp eq ptr %.0.i16.1, null
  br i1 %.not19.i.1, label %._crit_edge.i.1, label %.lr.ph.i15.1, !llvm.loop !81

._crit_edge.i.1:                                  ; preds = %.lr.ph.i15.1, %._crit_edge.i
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 16384
  br i1 %exitcond.not.i.1, label %sym_clear_all_valid.exit, label %.preheader, !llvm.loop !82

sym_clear_all_valid.exit:                         ; preds = %._crit_edge.i.1
  tail call void @expr_invalidate_all() #27
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %i.au = load ptr, ptr @modules_sym, align 8, !tbaa !75
  tail call void @sym_calc_value(ptr noundef %i.au)
  br label %sym_tristate_within_range.exit.thread

sym_tristate_within_range.exit.thread:            ; preds = %bb.b, %bb.c, %bb.a, %sym_set_changed.exit, %sym_clear_all_valid.exit, %sym_tristate_within_range.exit
  %.0.i18 = phi i1 [ false, %sym_tristate_within_range.exit ], [ true, %sym_set_changed.exit ], [ true, %sym_clear_all_valid.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0.i18
}

; Function Attrs: nounwind uwtable
define dso_local void @choice_set_value(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @menu_next(ptr noundef %0, ptr noundef %0) #27 ; 2 uses
  %.not20 = icmp eq ptr %i.a, null
  br i1 %.not20, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.022 = phi ptr [ %i.a, %.lr.ph ], [ %i.u, %bb.e ] ; 2 uses
  %.01621 = phi i1 [ false, %.lr.ph ], [ %.2, %bb.e ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.022, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 8 uses
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %i.d, %1
  %i.i = select i1 %i.h, i32 2, i32 0             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %.not19 = icmp ne i32 %i.k, %i.i
  %spec.select = select i1 %.not19, i1 true, i1 %.01621
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.i, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49
  %i.o = or i32 %i.n, 65536
  store i32 %i.o, ptr %i.m, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 4 uses
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !60 ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 144      ; 2 uses
  %.val3.i = load ptr, ptr %i.q, align 8, !tbaa !83 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  store ptr %.val3.i, ptr %i.r, align 8, !tbaa !83
  store ptr %.val.i, ptr %.val3.i, align 8, !tbaa !60
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.p, ptr %i.t, align 8, !tbaa !83
  store ptr %i.s, ptr %i.p, align 8, !tbaa !60
  store ptr %i.b, ptr %i.q, align 8, !tbaa !83
  store ptr %i.p, ptr %i.b, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.2 = phi i1 [ %.01621, %bb.b ], [ %spec.select, %bb.d ], [ %.01621, %bb.c ] ; 2 uses
  %i.u = tail call ptr @menu_next(ptr noundef nonnull %.022, ptr noundef %0) #27 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.e
  br i1 %.2, label %.preheader, label %.critedge

.preheader:                                       ; preds = %._crit_edge, %._crit_edge.i.1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %._crit_edge.i.1 ], [ 0, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @sym_hashtable, i64 %indvars.iv.i
  %.022.i = load ptr, ptr %i.v, align 16, !tbaa !76 ; 2 uses
  %.not1923.i = icmp eq ptr %.022.i, null
  br i1 %.not1923.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i
  %.024.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.022.i, %.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.024.i, i64 152 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49
  %i.y = and i32 %i.x, -129
  store i32 %i.y, ptr %i.w, align 8, !tbaa !49
  %.0.i = load ptr, ptr %.024.i, align 8, !tbaa !76 ; 2 uses
  %.not19.i = icmp eq ptr %.0.i, null
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !81

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @sym_hashtable, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.022.i.1 = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %.not1923.i.1 = icmp eq ptr %.022.i.1, null
  br i1 %.not1923.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %.lr.ph.i.1
  %.024.i.1 = phi ptr [ %.0.i.1, %.lr.ph.i.1 ], [ %.022.i.1, %._crit_edge.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.024.i.1, i64 152 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !49
  %i.ad = and i32 %i.ac, -129
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !49
  %.0.i.1 = load ptr, ptr %.024.i.1, align 8, !tbaa !76 ; 2 uses
  %.not19.i.1 = icmp eq ptr %.0.i.1, null
  br i1 %.not19.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !81

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 16384
  br i1 %exitcond.not.i.1, label %sym_clear_all_valid.exit, label %.preheader, !llvm.loop !82

sym_clear_all_valid.exit:                         ; preds = %._crit_edge.i.1
  tail call void @expr_invalidate_all() #27
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %i.ae = load ptr, ptr @modules_sym, align 8, !tbaa !75
  tail call void @sym_calc_value(ptr noundef %i.ae)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %sym_clear_all_valid.exit, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sym_toggle_tristate_value(ptr nofree noundef captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.in.i.i = phi ptr [ %i.a, %bb.a ], [ %.pn.i.i, %bb.c ]
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8, !tbaa !23 ; 4 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.a
  br i1 %.not.i.i, label %.critedge17.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %.not12.i.i = icmp eq ptr %i.c, null
  br i1 %.not12.i.i, label %bb.b, label %sym_get_prompt_menu.exit.i, !llvm.loop !28

sym_get_prompt_menu.exit.i:                       ; preds = %bb.c
  %.011.le.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -40
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %sym_get_prompt_menu.exit.i
  %.0.i = phi ptr [ %.011.le.i.i, %sym_get_prompt_menu.exit.i ], [ %i.e, %bb.e ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  %.not14.i = icmp eq ptr %i.e, null
  br i1 %.not14.i, label %.critedge17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %.not15.i = icmp eq ptr %i.g, null
  br i1 %.not15.i, label %bb.d, label %.critedge.i, !llvm.loop !32

.critedge.i:                                      ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.i = icmp eq ptr %.val.i, null
  br i1 %i.i, label %sym_get_choice_menu.exit, label %.critedge17.i

sym_get_choice_menu.exit:                         ; preds = %.critedge.i
  tail call void @choice_set_value(ptr noundef nonnull %i.e, ptr noundef %0)
  br label %.loopexit

.critedge17.i:                                    ; preds = %bb.b, %bb.d, %.critedge.i
  %i.j = getelementptr i8, ptr %0, i64 40
  %.val = load i32, ptr %i.j, align 8, !tbaa !54  ; 6 uses
  switch i32 %.val, label %bb.f [
    i32 0, label %.loopexit27
    i32 1, label %.loopexit28
    i32 2, label %.loopexit29
  ]

bb.f:                                             ; preds = %.critedge17.i
  %i.k = tail call zeroext i1 @sym_set_tristate_value(ptr noundef %0, i32 noundef %.val) ; 0 uses
  br label %.loopexit, !llvm.loop !85

.loopexit29:                                      ; preds = %.critedge17.i, %.loopexit28
  %i.l = tail call zeroext i1 @sym_set_tristate_value(ptr noundef %0, i32 noundef 0)
  %.not13.jt0 = icmp eq i32 %.val, 0
  %or.cond.jt0 = or i1 %i.l, %.not13.jt0
  br i1 %or.cond.jt0, label %.loopexit, label %.loopexit27, !llvm.loop !85

.loopexit28:                                      ; preds = %.critedge17.i, %.loopexit27
  %i.m = tail call zeroext i1 @sym_set_tristate_value(ptr noundef %0, i32 noundef 2)
  %.not13.jt2 = icmp eq i32 %.val, 2
  %or.cond.jt2 = or i1 %i.m, %.not13.jt2
  br i1 %or.cond.jt2, label %.loopexit, label %.loopexit29, !llvm.loop !85

.loopexit27:                                      ; preds = %.critedge17.i, %.loopexit29
  %i.n = tail call zeroext i1 @sym_set_tristate_value(ptr noundef %0, i32 noundef 1)
  %.not13.jt1 = icmp eq i32 %.val, 1
  %or.cond.jt1 = or i1 %i.n, %.not13.jt1
  br i1 %or.cond.jt1, label %.loopexit, label %.loopexit28, !llvm.loop !85

.loopexit:                                        ; preds = %bb.f, %.loopexit27, %.loopexit28, %.loopexit29, %sym_get_choice_menu.exit
  %.011 = phi i32 [ 2, %sym_get_choice_menu.exit ], [ 0, %.loopexit29 ], [ 2, %.loopexit28 ], [ 1, %.loopexit27 ], [ %.val, %bb.f ]
  ret i32 %.011
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @sym_string_valid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  switch i32 %i.b, label %bb.p [
    i32 5, label %.loopexit
    i32 3, label %bb.b
    i32 4, label %bb.i
    i32 1, label %bb.o
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !42      ; 2 uses
  %i.e = icmp eq i8 %i.d, 45
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.c, align 1, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.017 = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.0 = phi i8 [ %i.g, %bb.c ], [ %i.d, %bb.b ]   ; 2 uses
  %i.h = tail call ptr @__ctype_b_loc() #29
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 2 uses
  %i.j = sext i8 %.0 to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !88
  %i.m = and i16 %i.l, 2048
  %.not24 = icmp eq i16 %i.m, 0
  br i1 %.not24, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i8 %.0, 48
  br i1 %i.n, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %.017, align 1, !tbaa !42
  %.not25 = icmp eq i8 %i.o, 0
  br i1 %.not25, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %.118 = phi ptr [ %i.q, %bb.h ], [ %.017, %.preheader ] ; 2 uses
  %i.p = load i8, ptr %.118, align 1, !tbaa !42   ; 2 uses
  %.not26 = icmp eq i8 %i.p, 0                    ; 3 uses
  br i1 %.not26, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.118, i64 1
  %i.r = sext i8 %i.p to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !88
  %i.u = and i16 %i.t, 2048
  %.not27 = icmp eq i16 %i.u, 0
  br i1 %.not27, label %.loopexit, label %bb.g, !llvm.loop !90

bb.i:                                             ; preds = %bb.a
  %i.v = load i8, ptr %1, align 1, !tbaa !42      ; 2 uses
  %i.w = icmp eq i8 %i.v, 48
  br i1 %i.w, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !42
  switch i8 %i.y, label %bb.l [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.z, align 1, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.aa = phi i8 [ %.pre, %bb.k ], [ 48, %bb.j ], [ %i.v, %bb.i ]
  %.2 = phi ptr [ %i.z, %bb.k ], [ %1, %bb.j ], [ %1, %bb.i ]
  %i.ab = tail call ptr @__ctype_b_loc() #29
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.2.pn = phi ptr [ %.2, %bb.l ], [ %.3, %bb.n ]
  %.1 = phi i8 [ %i.aa, %bb.l ], [ %i.ah, %bb.n ]
  %i.ad = sext i8 %.1 to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !88
  %i.ag = and i16 %i.af, 4096
  %.not.not.not = icmp ne i16 %i.ag, 0            ; 3 uses
  br i1 %.not.not.not, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.3 = getelementptr inbounds nuw i8, ptr %.2.pn, i64 1 ; 2 uses
  %i.ah = load i8, ptr %.3, align 1, !tbaa !42    ; 2 uses
  %.not23 = icmp eq i8 %i.ah, 0
  br i1 %.not23, label %.loopexit, label %bb.m, !llvm.loop !91

bb.o:                                             ; preds = %bb.a, %bb.a
  %i.ai = load i8, ptr %1, align 1, !tbaa !42
  %switch.tableidx = add i8 %i.ai, -77            ; 2 uses
  %i.aj = icmp ult i8 %switch.tableidx, 45
  br i1 %i.aj, label %switch.lookup, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  br label %.loopexit

switch.lookup:                                    ; preds = %bb.o
  %switch.cast = zext nneg i8 %switch.tableidx to i45
  %switch.downshift = lshr i45 -17579301138429, %switch.cast
  %switch.masked = trunc i45 %switch.downshift to i1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.g, %bb.h, %switch.lookup, %bb.f, %bb.d, %bb.a, %bb.p
  %.019 = phi i1 [ false, %bb.p ], [ %switch.masked, %switch.lookup ], [ false, %bb.d ], [ false, %bb.f ], [ %.not26, %bb.g ], [ true, %bb.a ], [ %.not26, %bb.h ], [ %.not.not.not, %bb.m ], [ %.not.not.not, %bb.n ]
end_hunk_0
