inline.NumInlined: 734
inline.NumDeleted: 80
begin_hunk_0_@parse_iso23_cb:bb.a
  br label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit, %bb.a
  %.pr.i9 = load i64, ptr @parse_iso23_cb.rbimpl_id.73, align 8, !tbaa !10 ; 2 uses
  %.not4.i10 = icmp eq i64 %.pr.i9, 0
  br i1 %.not4.i10, label %.lr.ph.i12, label %rbimpl_intern_const.exit14

.lr.ph.i12:                                       ; preds = %bb.c, %.lr.ph.i12
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.h, ptr @parse_iso23_cb.rbimpl_id.73, align 8, !tbaa !10
  %.not.i13 = icmp eq i64 %i.h, 0
  br i1 %.not.i13, label %.lr.ph.i12, label %rbimpl_intern_const.exit14, !llvm.loop !34

rbimpl_intern_const.exit14:                       ; preds = %.lr.ph.i12, %bb.c
  %.lcssa.i11 = phi i64 [ %.pr.i9, %bb.c ], [ %i.h, %.lr.ph.i12 ]
  %i.i = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i11) #14
  %i.j = tail call i64 @rb_str_to_inum(i64 noundef %i.b, i32 noundef 10, i32 noundef 0) #14
  %i.k = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.i, i64 noundef %i.j) #14 ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_iso24_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %i.b = tail call i64 @rb_reg_nth_match(i32 noundef 2, i64 noundef %0) #14 ; 2 uses
  %.pr.i = load i64, ptr @parse_iso24_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.63, i64 noundef 3) #14 ; 3 uses
  store i64 %i.c, ptr @parse_iso24_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.c, %.lr.ph.i ]
  %i.d = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.e = tail call i64 @rb_str_to_inum(i64 noundef %i.a, i32 noundef 10, i32 noundef 0) #14
  %i.f = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.d, i64 noundef %i.e) #14 ; 0 uses
  %i.g = icmp eq i64 %i.b, 4
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %.pr.i9 = load i64, ptr @parse_iso24_cb.rbimpl_id.74, align 8, !tbaa !10 ; 2 uses
  %.not4.i10 = icmp eq i64 %.pr.i9, 0
  br i1 %.not4.i10, label %.lr.ph.i12, label %rbimpl_intern_const.exit14

.lr.ph.i12:                                       ; preds = %bb.b, %.lr.ph.i12
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.h, ptr @parse_iso24_cb.rbimpl_id.74, align 8, !tbaa !10
  %.not.i13 = icmp eq i64 %i.h, 0
  br i1 %.not.i13, label %.lr.ph.i12, label %rbimpl_intern_const.exit14, !llvm.loop !34

rbimpl_intern_const.exit14:                       ; preds = %.lr.ph.i12, %bb.b
  %.lcssa.i11 = phi i64 [ %.pr.i9, %bb.b ], [ %i.h, %.lr.ph.i12 ]
  %i.i = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i11) #14
  %i.j = tail call i64 @rb_str_to_inum(i64 noundef %i.b, i32 noundef 10, i32 noundef 0) #14
  %i.k = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.i, i64 noundef %i.j) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit14, %rbimpl_intern_const.exit
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_iso25_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %i.b = tail call i64 @rb_reg_nth_match(i32 noundef 2, i64 noundef %0) #14
  %.pr.i = load i64, ptr @parse_iso25_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.c, ptr @parse_iso25_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.c, %.lr.ph.i ]
  %i.d = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.e = tail call i64 @rb_str_to_inum(i64 noundef %i.a, i32 noundef 10, i32 noundef 0) #14
  %i.f = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.d, i64 noundef %i.e) #14 ; 0 uses
  %.pr.i8 = load i64, ptr @parse_iso25_cb.rbimpl_id.75, align 8, !tbaa !10 ; 2 uses
  %.not4.i9 = icmp eq i64 %.pr.i8, 0
  br i1 %.not4.i9, label %.lr.ph.i11, label %rbimpl_intern_const.exit13

.lr.ph.i11:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i11
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.76, i64 noundef 4) #14 ; 3 uses
  store i64 %i.g, ptr @parse_iso25_cb.rbimpl_id.75, align 8, !tbaa !10
  %.not.i12 = icmp eq i64 %i.g, 0
  br i1 %.not.i12, label %.lr.ph.i11, label %rbimpl_intern_const.exit13, !llvm.loop !34

rbimpl_intern_const.exit13:                       ; preds = %.lr.ph.i11, %rbimpl_intern_const.exit
  %.lcssa.i10 = phi i64 [ %.pr.i8, %rbimpl_intern_const.exit ], [ %i.g, %.lr.ph.i11 ]
  %i.h = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i10) #14
  %i.i = tail call i64 @rb_str_to_inum(i64 noundef %i.b, i32 noundef 10, i32 noundef 0) #14
  %i.j = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.h, i64 noundef %i.i) #14 ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_iso26_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %.pr.i = load i64, ptr @parse_iso26_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.76, i64 noundef 4) #14 ; 3 uses
  store i64 %i.b, ptr @parse_iso26_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.d = tail call i64 @rb_str_to_inum(i64 noundef %i.a, i32 noundef 10, i32 noundef 0) #14
  %i.e = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.c, i64 noundef %i.d) #14 ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_year_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %.pr.i = load i64, ptr @parse_year_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.b, ptr @parse_year_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.d = tail call i64 @rb_str_to_inum(i64 noundef %i.a, i32 noundef 10, i32 noundef 0) #14
  %i.e = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.c, i64 noundef %i.d) #14 ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_mon_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %.pr.i = load i64, ptr @parse_mon_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.63, i64 noundef 3) #14 ; 3 uses
  store i64 %i.b, ptr @parse_mon_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.d = tail call fastcc i32 @mon_num(i64 noundef %i.a)
  %i.e = shl nuw nsw i32 %i.d, 1
  %i.f = or disjoint i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.c, i64 noundef %i.g) #14 ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_mday_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %.pr.i = load i64, ptr @parse_mday_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.b, ptr @parse_mday_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.d = tail call i64 @rb_str_to_inum(i64 noundef %i.a, i32 noundef 10, i32 noundef 0) #14
  %i.e = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.c, i64 noundef %i.d) #14 ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_ddd_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.g = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14 ; 12 uses
  %i.h = tail call i64 @rb_reg_nth_match(i32 noundef 2, i64 noundef %0) #14 ; 2 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !10
  %i.i = tail call i64 @rb_reg_nth_match(i32 noundef 3, i64 noundef %0) #14 ; 8 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !10
  %i.j = tail call i64 @rb_reg_nth_match(i32 noundef 4, i64 noundef %0) #14 ; 11 uses
  %i.k = tail call i64 @rb_reg_nth_match(i32 noundef 5, i64 noundef %0) #14
  store i64 %i.k, ptr %i.c, align 8, !tbaa !10
  %i.l = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = and i64 %i.m, 8192
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %i.o, %bb.a ] ; 84 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12   ; 16 uses
  switch i64 %i.s, label %bb.aq [
    i64 2, label %bb.c
    i64 4, label %bb.f
    i64 6, label %bb.i
    i64 8, label %bb.n
    i64 10, label %bb.n
    i64 12, label %bb.n
    i64 14, label %bb.n
    i64 3, label %bb.ad
    i64 5, label %bb.ag
    i64 7, label %bb.al
  ]

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.t = icmp ne i64 %i.i, 4
  %i.u = icmp eq i64 %i.j, 4
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pr.i = load i64, ptr @parse_ddd_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.v = tail call i64 @rb_intern2(ptr noundef nonnull @.str.56, i64 noundef 3) #14 ; 3 uses
  store i64 %i.v, ptr @parse_ddd_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i264 = icmp eq i64 %i.v, 0
  br i1 %.not.i264, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.d
  %.lcssa.i = phi i64 [ %.pr.i, %bb.d ], [ %i.v, %.lr.ph.i ]
  %i.w = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.x = load i8, ptr %i.q, align 1, !tbaa !16
  %i.y = sext i8 %i.x to i64
  %i.z = mul nsw i64 %i.y, 10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.z, -528
  %i.ae = add nsw i64 %i.ad, %i.ac
  %i.af = shl nsw i64 %i.ae, 1
  %i.ag = or disjoint i64 %i.af, 1
  %i.ah = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.w, i64 noundef %i.ag) #14 ; 0 uses
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %.pr.i265 = load i64, ptr @parse_ddd_cb.rbimpl_id.77, align 8, !tbaa !10 ; 2 uses
  %.not4.i266 = icmp eq i64 %.pr.i265, 0
  br i1 %.not4.i266, label %.lr.ph.i268, label %rbimpl_intern_const.exit270

.lr.ph.i268:                                      ; preds = %bb.e, %.lr.ph.i268
  %i.ai = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.ai, ptr @parse_ddd_cb.rbimpl_id.77, align 8, !tbaa !10
  %.not.i269 = icmp eq i64 %i.ai, 0
  br i1 %.not.i269, label %.lr.ph.i268, label %rbimpl_intern_const.exit270, !llvm.loop !34

rbimpl_intern_const.exit270:                      ; preds = %.lr.ph.i268, %bb.e
  %.lcssa.i267 = phi i64 [ %.pr.i265, %bb.e ], [ %i.ai, %.lr.ph.i268 ]
  %i.aj = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i267) #14
  %i.ak = load i8, ptr %i.q, align 1, !tbaa !16
  %i.al = sext i8 %i.ak to i64
  %i.am = mul nsw i64 %i.al, 10
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = sext i8 %i.ao to i64
  %i.aq = add nsw i64 %i.am, -528
  %i.ar = add nsw i64 %i.aq, %i.ap
  %i.as = shl nsw i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  %i.au = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.aj, i64 noundef %i.at) #14 ; 0 uses
  br label %bb.aq

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.av = icmp ne i64 %i.i, 4
  %i.aw = icmp eq i64 %i.j, 4
  %or.cond719 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond719, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.pr.i274 = load i64, ptr @parse_ddd_cb.rbimpl_id.78, align 8, !tbaa !10 ; 2 uses
  %.not4.i275 = icmp eq i64 %.pr.i274, 0
  br i1 %.not4.i275, label %.lr.ph.i277, label %rbimpl_intern_const.exit279

.lr.ph.i277:                                      ; preds = %bb.g, %.lr.ph.i277
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.56, i64 noundef 3) #14 ; 3 uses
  store i64 %i.ax, ptr @parse_ddd_cb.rbimpl_id.78, align 8, !tbaa !10
  %.not.i278 = icmp eq i64 %i.ax, 0
  br i1 %.not.i278, label %.lr.ph.i277, label %rbimpl_intern_const.exit279, !llvm.loop !34

rbimpl_intern_const.exit279:                      ; preds = %.lr.ph.i277, %bb.g
  %.lcssa.i276 = phi i64 [ %.pr.i274, %bb.g ], [ %i.ax, %.lr.ph.i277 ]
  %i.ay = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i276) #14
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = sext i8 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = sext i8 %i.be to i64
  %i.bg = add nsw i64 %i.bc, -528
  %i.bh = add nsw i64 %i.bg, %i.bf
  %i.bi = shl nsw i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  %i.bk = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.ay, i64 noundef %i.bj) #14 ; 0 uses
  %.pr.i283 = load i64, ptr @parse_ddd_cb.rbimpl_id.79, align 8, !tbaa !10 ; 2 uses
  %.not4.i284 = icmp eq i64 %.pr.i283, 0
  br i1 %.not4.i284, label %.lr.ph.i286, label %rbimpl_intern_const.exit288

.lr.ph.i286:                                      ; preds = %rbimpl_intern_const.exit279, %.lr.ph.i286
  %i.bl = tail call i64 @rb_intern2(ptr noundef nonnull @.str.54, i64 noundef 3) #14 ; 3 uses
  store i64 %i.bl, ptr @parse_ddd_cb.rbimpl_id.79, align 8, !tbaa !10
  %.not.i287 = icmp eq i64 %i.bl, 0
  br i1 %.not.i287, label %.lr.ph.i286, label %rbimpl_intern_const.exit288, !llvm.loop !34

rbimpl_intern_const.exit288:                      ; preds = %.lr.ph.i286, %rbimpl_intern_const.exit279
  %.lcssa.i285 = phi i64 [ %.pr.i283, %rbimpl_intern_const.exit279 ], [ %i.bl, %.lr.ph.i286 ]
  %i.bm = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i285) #14
  %i.bn = load i8, ptr %i.q, align 1, !tbaa !16
  %i.bo = sext i8 %i.bn to i64
  %i.bp = mul nsw i64 %i.bo, 10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = sext i8 %i.br to i64
  %i.bt = add nsw i64 %i.bp, -528
  %i.bu = add nsw i64 %i.bt, %i.bs
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = or disjoint i64 %i.bv, 1
  %i.bx = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.bm, i64 noundef %i.bw) #14 ; 0 uses
  br label %bb.aq

bb.h:                                             ; preds = %bb.f
  %.pr.i292 = load i64, ptr @parse_ddd_cb.rbimpl_id.80, align 8, !tbaa !10 ; 2 uses
  %.not4.i293 = icmp eq i64 %.pr.i292, 0
  br i1 %.not4.i293, label %.lr.ph.i295, label %rbimpl_intern_const.exit297

.lr.ph.i295:                                      ; preds = %bb.h, %.lr.ph.i295
  %i.by = tail call i64 @rb_intern2(ptr noundef nonnull @.str.63, i64 noundef 3) #14 ; 3 uses
  store i64 %i.by, ptr @parse_ddd_cb.rbimpl_id.80, align 8, !tbaa !10
  %.not.i296 = icmp eq i64 %i.by, 0
  br i1 %.not.i296, label %.lr.ph.i295, label %rbimpl_intern_const.exit297, !llvm.loop !34

rbimpl_intern_const.exit297:                      ; preds = %.lr.ph.i295, %bb.h
  %.lcssa.i294 = phi i64 [ %.pr.i292, %bb.h ], [ %i.by, %.lr.ph.i295 ]
  %i.bz = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i294) #14
  %i.ca = load i8, ptr %i.q, align 1, !tbaa !16
  %i.cb = sext i8 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, 10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = sext i8 %i.ce to i64
  %i.cg = add nsw i64 %i.cc, -528
  %i.ch = add nsw i64 %i.cg, %i.cf
  %i.ci = shl nsw i64 %i.ch, 1
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.bz, i64 noundef %i.cj) #14 ; 0 uses
  %.pr.i301 = load i64, ptr @parse_ddd_cb.rbimpl_id.81, align 8, !tbaa !10 ; 2 uses
  %.not4.i302 = icmp eq i64 %.pr.i301, 0
  br i1 %.not4.i302, label %.lr.ph.i304, label %rbimpl_intern_const.exit306

.lr.ph.i304:                                      ; preds = %rbimpl_intern_const.exit297, %.lr.ph.i304
  %i.cl = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.cl, ptr @parse_ddd_cb.rbimpl_id.81, align 8, !tbaa !10
  %.not.i305 = icmp eq i64 %i.cl, 0
  br i1 %.not.i305, label %.lr.ph.i304, label %rbimpl_intern_const.exit306, !llvm.loop !34

rbimpl_intern_const.exit306:                      ; preds = %.lr.ph.i304, %rbimpl_intern_const.exit297
  %.lcssa.i303 = phi i64 [ %.pr.i301, %rbimpl_intern_const.exit297 ], [ %i.cl, %.lr.ph.i304 ]
  %i.cm = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i303) #14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !16
end_hunk_0
begin_hunk_1_@parse_ddd_cb:bb.a
  %i.acb = sext i8 %i.aca to i32
  %i.acc = add i32 %i.abx, -48
  %i.acd = add i32 %i.acc, %i.acb                 ; 3 uses
  %i.ace = add nuw nsw i64 %.01011.i655, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %n2i.exit656.unr-lcssa, label %bb.ax, !llvm.loop !61

n2i.exit656.unr-lcssa:                            ; preds = %bb.ax
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %n2i.exit656, label %.epil.preheader

.epil.preheader:                                  ; preds = %n2i.exit656.unr-lcssa, %rbimpl_intern_const.exit653
  %.012.i654.epil.init = phi i32 [ 0, %rbimpl_intern_const.exit653 ], [ %i.acd, %n2i.exit656.unr-lcssa ]
  %.01011.i655.epil.init = phi i64 [ 0, %rbimpl_intern_const.exit653 ], [ %i.ace, %n2i.exit656.unr-lcssa ]
  %lcmp.mod1148 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1148)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader
  %.012.i654.epil = phi i32 [ %.012.i654.epil.init, %.epil.preheader ], [ %i.ack, %bb.ay ]
  %.01011.i655.epil = phi i64 [ %.01011.i655.epil.init, %.epil.preheader ], [ %i.acl, %bb.ay ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ay ]
  %i.acf = mul nsw i32 %.012.i654.epil, 10
  %i.acg = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.01011.i655.epil
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !16
  %i.aci = sext i8 %i.ach to i32
  %i.acj = add i32 %i.acf, -48
  %i.ack = add i32 %i.acj, %i.aci                 ; 2 uses
  %i.acl = add nuw nsw i64 %.01011.i655.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %n2i.exit656, label %bb.ay, !llvm.loop !62

n2i.exit656:                                      ; preds = %bb.ay, %n2i.exit656.unr-lcssa
  %.lcssa1102 = phi i32 [ %i.acd, %n2i.exit656.unr-lcssa ], [ %i.ack, %bb.ay ]
  %i.acm = sext i32 %.lcssa1102 to i64
  br label %.thread717.sink.split

bb.az:                                            ; preds = %RSTRING_PTR.exit629
  switch i64 %i.zp, label %.thread717 [
    i64 2, label %bb.ba
    i64 4, label %bb.ba
    i64 6, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az
  %.pr.i657 = load i64, ptr @parse_ddd_cb.rbimpl_id.120, align 8, !tbaa !10 ; 2 uses
  %.not4.i658 = icmp eq i64 %.pr.i657, 0
  br i1 %.not4.i658, label %.lr.ph.i660, label %rbimpl_intern_const.exit662

.lr.ph.i660:                                      ; preds = %bb.ba, %.lr.ph.i660
  %i.acn = call i64 @rb_intern2(ptr noundef nonnull @.str.52, i64 noundef 4) #14 ; 3 uses
  store i64 %i.acn, ptr @parse_ddd_cb.rbimpl_id.120, align 8, !tbaa !10
  %.not.i661 = icmp eq i64 %i.acn, 0
  br i1 %.not.i661, label %.lr.ph.i660, label %rbimpl_intern_const.exit662, !llvm.loop !34

rbimpl_intern_const.exit662:                      ; preds = %.lr.ph.i660, %bb.ba
  %.lcssa.i659 = phi i64 [ %.pr.i657, %bb.ba ], [ %i.acn, %.lr.ph.i660 ]
  %i.aco = call i64 @rb_id2sym(i64 noundef %.lcssa.i659) #14
  %i.acp = load i8, ptr %i.zn, align 1, !tbaa !16
  %i.acq = sext i8 %i.acp to i64
  %i.acr = mul nsw i64 %i.acq, 10
  %i.acs = getelementptr inbounds nuw i8, ptr %i.zn, i64 1
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !16
  %i.acu = sext i8 %i.act to i64
  %i.acv = add nsw i64 %i.acr, -528
  %i.acw = add nsw i64 %i.acv, %i.acu
  %i.acx = shl nsw i64 %i.acw, 1
  %i.acy = or disjoint i64 %i.acx, 1
  %i.acz = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.aco, i64 noundef %i.acy) #14 ; 0 uses
  %i.ada = icmp samesign ugt i64 %i.zp, 3
  br i1 %i.ada, label %bb.bb, label %.thread717

bb.bb:                                            ; preds = %rbimpl_intern_const.exit662
  %.pr.i666 = load i64, ptr @parse_ddd_cb.rbimpl_id.121, align 8, !tbaa !10 ; 2 uses
  %.not4.i667 = icmp eq i64 %.pr.i666, 0
  br i1 %.not4.i667, label %.lr.ph.i669, label %rbimpl_intern_const.exit671

.lr.ph.i669:                                      ; preds = %bb.bb, %.lr.ph.i669
  %i.adb = call i64 @rb_intern2(ptr noundef nonnull @.str.54, i64 noundef 3) #14 ; 3 uses
  store i64 %i.adb, ptr @parse_ddd_cb.rbimpl_id.121, align 8, !tbaa !10
  %.not.i670 = icmp eq i64 %i.adb, 0
  br i1 %.not.i670, label %.lr.ph.i669, label %rbimpl_intern_const.exit671, !llvm.loop !34

rbimpl_intern_const.exit671:                      ; preds = %.lr.ph.i669, %bb.bb
  %.lcssa.i668 = phi i64 [ %.pr.i666, %bb.bb ], [ %i.adb, %.lr.ph.i669 ]
  %i.adc = call i64 @rb_id2sym(i64 noundef %.lcssa.i668) #14
  %i.add = getelementptr inbounds nuw i8, ptr %i.zn, i64 2
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !16
  %i.adf = sext i8 %i.ade to i64
  %i.adg = mul nsw i64 %i.adf, 10
  %i.adh = getelementptr inbounds nuw i8, ptr %i.zn, i64 3
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !16
  %i.adj = sext i8 %i.adi to i64
  %i.adk = add nsw i64 %i.adg, -528
  %i.adl = add nsw i64 %i.adk, %i.adj
  %i.adm = shl nsw i64 %i.adl, 1
  %i.adn = or disjoint i64 %i.adm, 1
  %i.ado = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.adc, i64 noundef %i.adn) #14 ; 0 uses
  %i.adp = icmp samesign ugt i64 %i.zp, 5
  br i1 %i.adp, label %bb.bc, label %.thread717

bb.bc:                                            ; preds = %rbimpl_intern_const.exit671
  %.pr.i675 = load i64, ptr @parse_ddd_cb.rbimpl_id.122, align 8, !tbaa !10 ; 2 uses
  %.not4.i676 = icmp eq i64 %.pr.i675, 0
  br i1 %.not4.i676, label %.lr.ph.i678, label %rbimpl_intern_const.exit680

.lr.ph.i678:                                      ; preds = %bb.bc, %.lr.ph.i678
  %i.adq = call i64 @rb_intern2(ptr noundef nonnull @.str.56, i64 noundef 3) #14 ; 3 uses
  store i64 %i.adq, ptr @parse_ddd_cb.rbimpl_id.122, align 8, !tbaa !10
  %.not.i679 = icmp eq i64 %i.adq, 0
  br i1 %.not.i679, label %.lr.ph.i678, label %rbimpl_intern_const.exit680, !llvm.loop !34

rbimpl_intern_const.exit680:                      ; preds = %.lr.ph.i678, %bb.bc
  %.lcssa.i677 = phi i64 [ %.pr.i675, %bb.bc ], [ %i.adq, %.lr.ph.i678 ]
  %i.adr = call i64 @rb_id2sym(i64 noundef %.lcssa.i677) #14
  %i.ads = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !16
  %i.adu = sext i8 %i.adt to i64
  %i.adv = mul nsw i64 %i.adu, 10
  %i.adw = getelementptr inbounds nuw i8, ptr %i.zn, i64 5
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !16
  %i.ady = sext i8 %i.adx to i64
  %i.adz = add nsw i64 %i.adv, -528
  %i.aea = add nsw i64 %i.adz, %i.ady
  br label %.thread717.sink.split

.thread717.sink.split:                            ; preds = %n2i.exit656, %rbimpl_intern_const.exit680
  %.sink1041 = phi i64 [ %i.aea, %rbimpl_intern_const.exit680 ], [ %i.acm, %n2i.exit656 ]
  %.sink = phi i64 [ %i.adr, %rbimpl_intern_const.exit680 ], [ %i.aba, %n2i.exit656 ]
  %i.aeb = shl nsw i64 %.sink1041, 1
  %i.aec = or disjoint i64 %i.aeb, 1
  %i.aed = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %.sink, i64 noundef %i.aec) #14 ; 0 uses
  br label %.thread717

.thread717:                                       ; preds = %.thread717.sink.split, %rbimpl_intern_const.exit662, %n2i.exit638, %bb.az, %rbimpl_intern_const.exit671, %bb.at, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr %i.b, ptr %i.e, align 8, !tbaa !31
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #14, !srcloc !63
  %i.aee = load ptr, ptr %i.e, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.aef = load volatile i64, ptr %i.aee, align 8, !tbaa !10 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.thread717, %bb.aq
  %i.aeg = icmp eq i64 %i.j, 4
  br i1 %i.aeg, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aeh = inttoptr i64 %i.j to ptr
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  %i.aej = load i64, ptr %i.aei, align 8, !tbaa !12 ; 3 uses
  %.pr.i684 = load i64, ptr @parse_ddd_cb.rbimpl_id.123, align 8, !tbaa !10 ; 2 uses
  %.not4.i685 = icmp eq i64 %.pr.i684, 0
  br i1 %.not4.i685, label %.lr.ph.i687, label %rbimpl_intern_const.exit689

.lr.ph.i687:                                      ; preds = %bb.be, %.lr.ph.i687
  %i.aek = call i64 @rb_intern2(ptr noundef nonnull @.str.58, i64 noundef 12) #14 ; 3 uses
  store i64 %i.aek, ptr @parse_ddd_cb.rbimpl_id.123, align 8, !tbaa !10
  %.not.i688 = icmp eq i64 %i.aek, 0
  br i1 %.not.i688, label %.lr.ph.i687, label %rbimpl_intern_const.exit689, !llvm.loop !34

rbimpl_intern_const.exit689:                      ; preds = %.lr.ph.i687, %bb.be
  %.lcssa.i686 = phi i64 [ %.pr.i684, %bb.be ], [ %i.aek, %.lr.ph.i687 ]
  %i.ael = call i64 @rb_id2sym(i64 noundef %.lcssa.i686) #14
  %i.aem = call i64 @rb_str_to_inum(i64 noundef %i.j, i32 noundef 10, i32 noundef 0) #14
  %.pr.i690 = load i64, ptr @parse_ddd_cb.rbimpl_id.124, align 8, !tbaa !10 ; 2 uses
  %.not4.i691 = icmp eq i64 %.pr.i690, 0
  br i1 %.not4.i691, label %.lr.ph.i693, label %rbimpl_intern_const.exit695

.lr.ph.i693:                                      ; preds = %rbimpl_intern_const.exit689, %.lr.ph.i693
  %i.aen = call i64 @rb_intern2(ptr noundef nonnull @.str.50, i64 noundef 2) #14 ; 3 uses
  store i64 %i.aen, ptr @parse_ddd_cb.rbimpl_id.124, align 8, !tbaa !10
  %.not.i694 = icmp eq i64 %i.aen, 0
  br i1 %.not.i694, label %.lr.ph.i693, label %rbimpl_intern_const.exit695, !llvm.loop !34

rbimpl_intern_const.exit695:                      ; preds = %.lr.ph.i693, %rbimpl_intern_const.exit689
  %.lcssa.i692 = phi i64 [ %.pr.i690, %rbimpl_intern_const.exit689 ], [ %i.aen, %.lr.ph.i693 ]
  %i.aeo = add i64 %i.aej, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.aeo, -1
  br i1 %or.cond.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %rbimpl_intern_const.exit695
  %i.aep = shl nsw i64 %i.aej, 1
  %i.aeq = or disjoint i64 %i.aep, 1
  br label %rb_long2num_inline.exit

bb.bg:                                            ; preds = %rbimpl_intern_const.exit695
  %i.aer = call i64 @rb_int2big(i64 noundef %i.aej) #14
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.bf, %bb.bg
  %.0.i = phi i64 [ %i.aeq, %bb.bf ], [ %i.aer, %bb.bg ]
  %i.aes = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 21, i64 noundef %.lcssa.i692, i32 noundef 1, i64 noundef %.0.i) #14
  %i.aet = call i64 @rb_rational_new(i64 noundef %i.aem, i64 noundef %i.aes) #14
  %i.aeu = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.ael, i64 noundef %i.aet) #14 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %rb_long2num_inline.exit, %bb.bd
  %i.aev = load i64, ptr %i.c, align 8, !tbaa !10 ; 6 uses
  %i.aew = icmp eq i64 %i.aev, 4
  br i1 %i.aew, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aex = inttoptr i64 %i.aev to ptr             ; 3 uses
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !15
  %i.aez = and i64 %i.aey, 8192
  %.not.i696 = icmp eq i64 %i.aez, 0
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 24 ; 2 uses
  br i1 %.not.i696, label %RSTRING_PTR.exit697, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !16
  br label %RSTRING_PTR.exit697

RSTRING_PTR.exit697:                              ; preds = %bb.bi, %bb.bj
  %i.afc = phi ptr [ %i.afb, %bb.bj ], [ %i.afa, %bb.bi ] ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !12
  %.pr.i698 = load i64, ptr @parse_ddd_cb.rbimpl_id.125, align 8, !tbaa !10 ; 2 uses
  %.not4.i699 = icmp eq i64 %.pr.i698, 0
  br i1 %.not4.i699, label %.lr.ph.i701, label %rbimpl_intern_const.exit703

.lr.ph.i701:                                      ; preds = %RSTRING_PTR.exit697, %.lr.ph.i701
  %i.aff = call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 4) #14 ; 3 uses
  store i64 %i.aff, ptr @parse_ddd_cb.rbimpl_id.125, align 8, !tbaa !10
  %.not.i702 = icmp eq i64 %i.aff, 0
  br i1 %.not.i702, label %.lr.ph.i701, label %rbimpl_intern_const.exit703, !llvm.loop !34

rbimpl_intern_const.exit703:                      ; preds = %.lr.ph.i701, %RSTRING_PTR.exit697
  %.lcssa.i700 = phi i64 [ %.pr.i698, %RSTRING_PTR.exit697 ], [ %i.aff, %.lr.ph.i701 ]
  %i.afg = call i64 @rb_id2sym(i64 noundef %.lcssa.i700) #14
  %i.afh = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.afg, i64 noundef %i.aev) #14 ; 0 uses
  %i.afi = load i8, ptr %i.afc, align 1, !tbaa !16
  %i.afj = icmp eq i8 %i.afi, 91
  br i1 %i.afj, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %rbimpl_intern_const.exit703
  %i.afk = add nsw i64 %i.afe, -2                 ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afc, i64 1 ; 3 uses
  %i.afm = call ptr @memchr(ptr noundef nonnull %i.afl, i32 noundef 58, i64 noundef %i.afk) #13 ; 2 uses
  %.not = icmp eq ptr %i.afm, null
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 1
  %i.afo = ptrtoint ptr %i.afn to i64             ; 2 uses
  %i.afp = ptrtoint ptr %i.afc to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = ptrtoint ptr %i.afl to i64
  %i.afs = sub i64 %i.afo, %i.afr                 ; 2 uses
  %i.aft = sub nsw i64 %i.afk, %i.afs
  %i.afu = call i64 @rb_str_subseq(i64 noundef %i.aev, i64 noundef %i.afq, i64 noundef %i.aft) #14
  %i.afv = call i64 @rb_str_subseq(i64 noundef %i.aev, i64 noundef 1, i64 noundef %i.afs) #14
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.afw = call i64 @rb_str_subseq(i64 noundef %i.aev, i64 noundef 1, i64 noundef %i.afk) #14 ; 4 uses
  %i.afx = tail call ptr @__ctype_b_loc() #12
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !17
  %i.afz = load i8, ptr %i.afl, align 1, !tbaa !16
  %i.aga = zext i8 %i.afz to i64
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %i.afy, i64 %i.aga
  %i.agc = load i16, ptr %i.agb, align 2, !tbaa !20
  %i.agd = and i16 %i.agc, 2048
  %.not258 = icmp eq i16 %i.agd, 0
  br i1 %.not258, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.age = call i64 @rb_str_new_static(ptr noundef nonnull @.str.126, i64 noundef 1) #14
  %i.agf = call i64 @rb_str_append(i64 noundef %i.age, i64 noundef %i.afw) #14
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bl
  %.sink1042 = phi i64 [ %i.agf, %bb.bn ], [ %i.afv, %bb.bl ], [ %i.afw, %bb.bm ] ; 2 uses
  %.0249 = phi i64 [ %i.afw, %bb.bn ], [ %i.afu, %bb.bl ], [ %i.afw, %bb.bm ]
  store i64 %.sink1042, ptr %i.c, align 8, !tbaa !10
  %.pr.i704 = load i64, ptr @parse_ddd_cb.rbimpl_id.127, align 8, !tbaa !10 ; 2 uses
  %.not4.i705 = icmp eq i64 %.pr.i704, 0
  br i1 %.not4.i705, label %.lr.ph.i707, label %rbimpl_intern_const.exit709

.lr.ph.i707:                                      ; preds = %bb.bo, %.lr.ph.i707
  %i.agg = call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 4) #14 ; 3 uses
  store i64 %i.agg, ptr @parse_ddd_cb.rbimpl_id.127, align 8, !tbaa !10
  %.not.i708 = icmp eq i64 %i.agg, 0
  br i1 %.not.i708, label %.lr.ph.i707, label %rbimpl_intern_const.exit709, !llvm.loop !34

rbimpl_intern_const.exit709:                      ; preds = %.lr.ph.i707, %bb.bo
  %.lcssa.i706 = phi i64 [ %.pr.i704, %bb.bo ], [ %i.agg, %.lr.ph.i707 ]
  %i.agh = call i64 @rb_id2sym(i64 noundef %.lcssa.i706) #14
  %i.agi = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.agh, i64 noundef %.0249) #14 ; 0 uses
  %.pr.i710 = load i64, ptr @parse_ddd_cb.rbimpl_id.128, align 8, !tbaa !10 ; 2 uses
  %.not4.i711 = icmp eq i64 %.pr.i710, 0
  br i1 %.not4.i711, label %.lr.ph.i713, label %rbimpl_intern_const.exit715

.lr.ph.i713:                                      ; preds = %rbimpl_intern_const.exit709, %.lr.ph.i713
  %i.agj = call i64 @rb_intern2(ptr noundef nonnull @.str.39, i64 noundef 6) #14 ; 3 uses
  store i64 %i.agj, ptr @parse_ddd_cb.rbimpl_id.128, align 8, !tbaa !10
  %.not.i714 = icmp eq i64 %i.agj, 0
  br i1 %.not.i714, label %.lr.ph.i713, label %rbimpl_intern_const.exit715, !llvm.loop !34

rbimpl_intern_const.exit715:                      ; preds = %.lr.ph.i713, %rbimpl_intern_const.exit709
  %.lcssa.i712 = phi i64 [ %.pr.i710, %rbimpl_intern_const.exit709 ], [ %i.agj, %.lr.ph.i713 ]
  %i.agk = call i64 @rb_id2sym(i64 noundef %.lcssa.i712) #14
  %i.agl = call i64 @date_zone_to_diff(i64 noundef %.sink1042)
  %i.agm = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.agk, i64 noundef %i.agl) #14 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %rbimpl_intern_const.exit715, %rbimpl_intern_const.exit703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store ptr %i.c, ptr %i.f, align 8, !tbaa !31
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #14, !srcloc !64
  %i.agn = load ptr, ptr %i.f, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.ago = load volatile i64, ptr %i.agn, align 8, !tbaa !10 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_bc_cb(i64 %0, i64 noundef %1) #0 {
bb.a:
  %.pr.i = load i64, ptr @parse_bc_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.11, i64 noundef 3) #14 ; 3 uses
  store i64 %i.a, ptr @parse_bc_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.c = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.b, i64 noundef 20) #14 ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_frag_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14 ; 2 uses
  %.pr.i = load i64, ptr @parse_frag_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.52, i64 noundef 4) #14 ; 3 uses
  store i64 %i.b, ptr @parse_frag_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.d = tail call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.c) #14
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %.pr.i28 = load i64, ptr @parse_frag_cb.rbimpl_id.129, align 8, !tbaa !10 ; 2 uses
  %.not4.i29 = icmp eq i64 %.pr.i28, 0
  br i1 %.not4.i29, label %.lr.ph.i31, label %rbimpl_intern_const.exit33

.lr.ph.i31:                                       ; preds = %bb.b, %.lr.ph.i31
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.f, ptr @parse_frag_cb.rbimpl_id.129, align 8, !tbaa !10
  %.not.i32 = icmp eq i64 %i.f, 0
  br i1 %.not.i32, label %.lr.ph.i31, label %rbimpl_intern_const.exit33, !llvm.loop !34

rbimpl_intern_const.exit33:                       ; preds = %.lr.ph.i31, %bb.b
  %.lcssa.i30 = phi i64 [ %.pr.i28, %bb.b ], [ %i.f, %.lr.ph.i31 ]
  %i.g = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i30) #14
  %i.h = tail call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.g) #14
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %rbimpl_intern_const.exit33
  %i.j = tail call i64 @rb_str_to_inum(i64 noundef %i.a, i32 noundef 10, i32 noundef 0) #14 ; 3 uses
  %.pr.i34 = load i64, ptr @parse_frag_cb.rbimpl_id.130, align 8, !tbaa !10 ; 2 uses
  %.not4.i35 = icmp eq i64 %.pr.i34, 0
  br i1 %.not4.i35, label %.lr.ph.i37, label %rbimpl_intern_const.exit39

.lr.ph.i37:                                       ; preds = %bb.c, %.lr.ph.i37
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 2) #14 ; 3 uses
  store i64 %i.k, ptr @parse_frag_cb.rbimpl_id.130, align 8, !tbaa !10
  %.not.i38 = icmp eq i64 %i.k, 0
  br i1 %.not.i38, label %.lr.ph.i37, label %rbimpl_intern_const.exit39, !llvm.loop !34

rbimpl_intern_const.exit39:                       ; preds = %.lr.ph.i37, %bb.c
  %.lcssa.i36 = phi i64 [ %.pr.i34, %bb.c ], [ %i.k, %.lr.ph.i37 ]
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.j, i64 noundef %.lcssa.i36, i32 noundef 1, i64 noundef 3) #14
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %rbimpl_intern_const.exit39
  %.pr.i40 = load i64, ptr @parse_frag_cb.rbimpl_id.131, align 8, !tbaa !10 ; 2 uses
  %.not4.i41 = icmp eq i64 %.pr.i40, 0
  br i1 %.not4.i41, label %.lr.ph.i43, label %rbimpl_intern_const.exit45

.lr.ph.i43:                                       ; preds = %bb.d, %.lr.ph.i43
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 2) #14 ; 3 uses
  store i64 %i.m, ptr @parse_frag_cb.rbimpl_id.131, align 8, !tbaa !10
  %.not.i44 = icmp eq i64 %i.m, 0
  br i1 %.not.i44, label %.lr.ph.i43, label %rbimpl_intern_const.exit45, !llvm.loop !34

rbimpl_intern_const.exit45:                       ; preds = %.lr.ph.i43, %bb.d
  %.lcssa.i42 = phi i64 [ %.pr.i40, %bb.d ], [ %i.m, %.lr.ph.i43 ]
  %i.n = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.j, i64 noundef %.lcssa.i42, i32 noundef 1, i64 noundef 63) #14
  %.not25 = icmp eq i64 %i.n, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_intern_const.exit45
  %.pr.i46 = load i64, ptr @parse_frag_cb.rbimpl_id.132, align 8, !tbaa !10 ; 2 uses
  %.not4.i47 = icmp eq i64 %.pr.i46, 0
  br i1 %.not4.i47, label %.lr.ph.i49, label %rbimpl_intern_const.exit51

.lr.ph.i49:                                       ; preds = %bb.e, %.lr.ph.i49
  %i.o = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.o, ptr @parse_frag_cb.rbimpl_id.132, align 8, !tbaa !10
  %.not.i50 = icmp eq i64 %i.o, 0
  br i1 %.not.i50, label %.lr.ph.i49, label %rbimpl_intern_const.exit51, !llvm.loop !34

rbimpl_intern_const.exit51:                       ; preds = %.lr.ph.i49, %bb.e
  %.lcssa.i48 = phi i64 [ %.pr.i46, %bb.e ], [ %i.o, %.lr.ph.i49 ]
  %i.p = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i48) #14
  %i.q = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.p, i64 noundef %i.j) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %rbimpl_intern_const.exit39, %rbimpl_intern_const.exit45, %rbimpl_intern_const.exit51, %rbimpl_intern_const.exit33, %rbimpl_intern_const.exit
  %.pr.i52 = load i64, ptr @parse_frag_cb.rbimpl_id.133, align 8, !tbaa !10 ; 2 uses
  %.not4.i53 = icmp eq i64 %.pr.i52, 0
  br i1 %.not4.i53, label %.lr.ph.i55, label %rbimpl_intern_const.exit57

.lr.ph.i55:                                       ; preds = %bb.f, %.lr.ph.i55
  %i.r = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.r, ptr @parse_frag_cb.rbimpl_id.133, align 8, !tbaa !10
  %.not.i56 = icmp eq i64 %i.r, 0
  br i1 %.not.i56, label %.lr.ph.i55, label %rbimpl_intern_const.exit57, !llvm.loop !34

rbimpl_intern_const.exit57:                       ; preds = %.lr.ph.i55, %bb.f
  %.lcssa.i54 = phi i64 [ %.pr.i52, %bb.f ], [ %i.r, %.lr.ph.i55 ]
  %i.s = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i54) #14
  %i.t = tail call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.s) #14
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %bb.k, label %bb.g

bb.g:                                             ; preds = %rbimpl_intern_const.exit57
  %.pr.i58 = load i64, ptr @parse_frag_cb.rbimpl_id.134, align 8, !tbaa !10 ; 2 uses
  %.not4.i59 = icmp eq i64 %.pr.i58, 0
  br i1 %.not4.i59, label %.lr.ph.i61, label %rbimpl_intern_const.exit63

.lr.ph.i61:                                       ; preds = %bb.g, %.lr.ph.i61
  %i.v = tail call i64 @rb_intern2(ptr noundef nonnull @.str.52, i64 noundef 4) #14 ; 3 uses
  store i64 %i.v, ptr @parse_frag_cb.rbimpl_id.134, align 8, !tbaa !10
  %.not.i62 = icmp eq i64 %i.v, 0
  br i1 %.not.i62, label %.lr.ph.i61, label %rbimpl_intern_const.exit63, !llvm.loop !34

rbimpl_intern_const.exit63:                       ; preds = %.lr.ph.i61, %bb.g
  %.lcssa.i60 = phi i64 [ %.pr.i58, %bb.g ], [ %i.v, %.lr.ph.i61 ]
  %i.w = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i60) #14
  %i.x = tail call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.w) #14
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %rbimpl_intern_const.exit63
  %i.z = tail call i64 @rb_str_to_inum(i64 noundef %i.a, i32 noundef 10, i32 noundef 0) #14 ; 3 uses
  %.pr.i64 = load i64, ptr @parse_frag_cb.rbimpl_id.135, align 8, !tbaa !10 ; 2 uses
  %.not4.i65 = icmp eq i64 %.pr.i64, 0
  br i1 %.not4.i65, label %.lr.ph.i67, label %rbimpl_intern_const.exit69

.lr.ph.i67:                                       ; preds = %bb.h, %.lr.ph.i67
  %i.aa = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 2) #14 ; 3 uses
  store i64 %i.aa, ptr @parse_frag_cb.rbimpl_id.135, align 8, !tbaa !10
  %.not.i68 = icmp eq i64 %i.aa, 0
  br i1 %.not.i68, label %.lr.ph.i67, label %rbimpl_intern_const.exit69, !llvm.loop !34

rbimpl_intern_const.exit69:                       ; preds = %.lr.ph.i67, %bb.h
  %.lcssa.i66 = phi i64 [ %.pr.i64, %bb.h ], [ %i.aa, %.lr.ph.i67 ]
  %i.ab = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.z, i64 noundef %.lcssa.i66, i32 noundef 1, i64 noundef 1) #14
  %.not26 = icmp eq i64 %i.ab, 0
  br i1 %.not26, label %bb.k, label %bb.i

bb.i:                                             ; preds = %rbimpl_intern_const.exit69
  %.pr.i70 = load i64, ptr @parse_frag_cb.rbimpl_id.136, align 8, !tbaa !10 ; 2 uses
  %.not4.i71 = icmp eq i64 %.pr.i70, 0
  br i1 %.not4.i71, label %.lr.ph.i73, label %rbimpl_intern_const.exit75

.lr.ph.i73:                                       ; preds = %bb.i, %.lr.ph.i73
  %i.ac = tail call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 2) #14 ; 3 uses
  store i64 %i.ac, ptr @parse_frag_cb.rbimpl_id.136, align 8, !tbaa !10
  %.not.i74 = icmp eq i64 %i.ac, 0
end_hunk_1
