Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/date_parse?download=true
inline.NumInlined: 734
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 87
begin_hunk_0_@date__parse:bb.a
  %.not4.i513 = icmp eq i64 %.pr.i512, 0
  br i1 %.not4.i513, label %.lr.ph.i515, label %rbimpl_intern_const.exit517

.lr.ph.i515:                                      ; preds = %bb.bj, %.lr.ph.i515
  %i.azq = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 2) #14 ; 3 uses
  store i64 %i.azq, ptr @date__parse.rbimpl_id.31, align 8, !tbaa !372
  %.not.i516 = icmp eq i64 %i.azq, 0
  br i1 %.not.i516, label %.lr.ph.i515, label %rbimpl_intern_const.exit517, !llvm.loop !0

rbimpl_intern_const.exit517:                      ; preds = %.lr.ph.i515, %bb.bj
  %.lcssa.i514 = phi i64 [ %.pr.i512, %bb.bj ], [ %i.azq, %.lr.ph.i515 ]
  %i.azr = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.azo, i64 noundef %.lcssa.i514, i32 noundef 1, i64 noundef 1) #14
  %.not136 = icmp eq i64 %i.azr, 0
  br i1 %.not136, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %rbimpl_intern_const.exit517
  %.pr.i518 = load i64, ptr @date__parse.rbimpl_id.32, align 8, !tbaa !372 ; 2 uses
  %.not4.i519 = icmp eq i64 %.pr.i518, 0
  br i1 %.not4.i519, label %.lr.ph.i521, label %rbimpl_intern_const.exit523

.lr.ph.i521:                                      ; preds = %bb.bk, %.lr.ph.i521
  %i.azs = tail call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 2) #14 ; 3 uses
  store i64 %i.azs, ptr @date__parse.rbimpl_id.32, align 8, !tbaa !372
  %.not.i522 = icmp eq i64 %i.azs, 0
  br i1 %.not.i522, label %.lr.ph.i521, label %rbimpl_intern_const.exit523, !llvm.loop !0

rbimpl_intern_const.exit523:                      ; preds = %.lr.ph.i521, %bb.bk
  %.lcssa.i520 = phi i64 [ %.pr.i518, %bb.bk ], [ %i.azs, %.lr.ph.i521 ]
  %i.azt = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.azo, i64 noundef %.lcssa.i520, i32 noundef 1, i64 noundef 199) #14
  %.not137 = icmp eq i64 %i.azt, 0
  br i1 %.not137, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %rbimpl_intern_const.exit523
  %.pr.i524 = load i64, ptr @date__parse.rbimpl_id.33, align 8, !tbaa !372 ; 2 uses
  %.not4.i525 = icmp eq i64 %.pr.i524, 0
  br i1 %.not4.i525, label %.lr.ph.i527, label %rbimpl_intern_const.exit529

.lr.ph.i527:                                      ; preds = %bb.bl, %.lr.ph.i527
  %i.azu = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 2) #14 ; 3 uses
  store i64 %i.azu, ptr @date__parse.rbimpl_id.33, align 8, !tbaa !372
  %.not.i528 = icmp eq i64 %i.azu, 0
  br i1 %.not.i528, label %.lr.ph.i527, label %rbimpl_intern_const.exit529, !llvm.loop !0

rbimpl_intern_const.exit529:                      ; preds = %.lr.ph.i527, %bb.bl
  %.lcssa.i526 = phi i64 [ %.pr.i524, %bb.bl ], [ %i.azu, %.lr.ph.i527 ]
  %i.azv = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.azo, i64 noundef %.lcssa.i526, i32 noundef 1, i64 noundef 139) #14
  %.not138 = icmp eq i64 %i.azv, 0
  br i1 %.not138, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %rbimpl_intern_const.exit529
  %.pr.i530 = load i64, ptr @date__parse.rbimpl_id.34, align 8, !tbaa !372 ; 2 uses
  %.not4.i531 = icmp eq i64 %.pr.i530, 0
  br i1 %.not4.i531, label %.lr.ph.i533, label %.sink.split823

.lr.ph.i533:                                      ; preds = %bb.bm, %.lr.ph.i533
  %i.azw = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.azw, ptr @date__parse.rbimpl_id.34, align 8, !tbaa !372
  %.not.i534 = icmp eq i64 %i.azw, 0
  br i1 %.not.i534, label %.lr.ph.i533, label %.sink.split823, !llvm.loop !0

bb.bn:                                            ; preds = %rbimpl_intern_const.exit529
  %.pr.i536 = load i64, ptr @date__parse.rbimpl_id.35, align 8, !tbaa !372 ; 2 uses
  %.not4.i537 = icmp eq i64 %.pr.i536, 0
  br i1 %.not4.i537, label %.lr.ph.i539, label %.sink.split823

.lr.ph.i539:                                      ; preds = %bb.bn, %.lr.ph.i539
  %i.azx = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.azx, ptr @date__parse.rbimpl_id.35, align 8, !tbaa !372
  %.not.i540 = icmp eq i64 %i.azx, 0
  br i1 %.not.i540, label %.lr.ph.i539, label %.sink.split823, !llvm.loop !0

.sink.split823:                                   ; preds = %.lr.ph.i533, %.lr.ph.i539, %bb.bn, %bb.bm
  %.lcssa.i532.sink = phi i64 [ %i.azx, %.lr.ph.i539 ], [ %.pr.i530, %bb.bm ], [ %.pr.i536, %bb.bn ], [ %i.azw, %.lr.ph.i533 ]
  %.sink825 = phi i64 [ 4001, %.lr.ph.i539 ], [ 3801, %bb.bm ], [ 4001, %bb.bn ], [ 3801, %.lr.ph.i533 ]
  %i.azy = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i532.sink) #14
  %i.azz = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.azo, i64 noundef 43, i32 noundef 1, i64 noundef %.sink825) #14
  %i.baa = tail call i64 @rb_hash_aset(i64 noundef %i.k, i64 noundef %i.azy, i64 noundef %i.azz) #14 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split823, %rbimpl_intern_const.exit511, %rbimpl_intern_const.exit523, %rbimpl_intern_const.exit517, %rbimpl_intern_const.exit469
  %.pr.i542 = load i64, ptr @date__parse.rbimpl_id.36, align 8, !tbaa !372 ; 2 uses
  %.not4.i543 = icmp eq i64 %.pr.i542, 0
  br i1 %.not4.i543, label %.lr.ph.i545, label %rbimpl_intern_const.exit547

.lr.ph.i545:                                      ; preds = %bb.bo, %.lr.ph.i545
  %i.bab = tail call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 4) #14 ; 3 uses
  store i64 %i.bab, ptr @date__parse.rbimpl_id.36, align 8, !tbaa !372
  %.not.i546 = icmp eq i64 %i.bab, 0
  br i1 %.not.i546, label %.lr.ph.i545, label %rbimpl_intern_const.exit547, !llvm.loop !0

rbimpl_intern_const.exit547:                      ; preds = %.lr.ph.i545, %bb.bo
  %.lcssa.i544 = phi i64 [ %.pr.i542, %bb.bo ], [ %i.bab, %.lr.ph.i545 ]
  %i.bac = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i544) #14
  %i.bad = tail call i64 @rb_hash_aref(i64 noundef %i.k, i64 noundef %i.bac) #14 ; 2 uses
  %i.bae = icmp eq i64 %i.bad, 4
  br i1 %i.bae, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %rbimpl_intern_const.exit547
  %.pr.i548 = load i64, ptr @date__parse.rbimpl_id.38, align 8, !tbaa !372 ; 2 uses
  %.not4.i549 = icmp eq i64 %.pr.i548, 0
  br i1 %.not4.i549, label %.lr.ph.i551, label %rbimpl_intern_const.exit553

.lr.ph.i551:                                      ; preds = %bb.bp, %.lr.ph.i551
  %i.baf = tail call i64 @rb_intern2(ptr noundef nonnull @.str.39, i64 noundef 6) #14 ; 3 uses
  store i64 %i.baf, ptr @date__parse.rbimpl_id.38, align 8, !tbaa !372
  %.not.i552 = icmp eq i64 %i.baf, 0
  br i1 %.not.i552, label %.lr.ph.i551, label %rbimpl_intern_const.exit553, !llvm.loop !0

rbimpl_intern_const.exit553:                      ; preds = %.lr.ph.i551, %bb.bp
  %.lcssa.i550 = phi i64 [ %.pr.i548, %bb.bp ], [ %i.baf, %.lr.ph.i551 ]
  %i.bag = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i550) #14
  %i.bah = tail call i64 @rb_hash_aref(i64 noundef %i.k, i64 noundef %i.bag) #14
  %i.bai = icmp eq i64 %i.bah, 4
  br i1 %i.bai, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %rbimpl_intern_const.exit553
  %.pr.i554 = load i64, ptr @date__parse.rbimpl_id.40, align 8, !tbaa !372 ; 2 uses
  %.not4.i555 = icmp eq i64 %.pr.i554, 0
  br i1 %.not4.i555, label %.lr.ph.i557, label %rbimpl_intern_const.exit559

.lr.ph.i557:                                      ; preds = %bb.bq, %.lr.ph.i557
  %i.baj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.39, i64 noundef 6) #14 ; 3 uses
  store i64 %i.baj, ptr @date__parse.rbimpl_id.40, align 8, !tbaa !372
  %.not.i558 = icmp eq i64 %i.baj, 0
  br i1 %.not.i558, label %.lr.ph.i557, label %rbimpl_intern_const.exit559, !llvm.loop !0

rbimpl_intern_const.exit559:                      ; preds = %.lr.ph.i557, %bb.bq
  %.lcssa.i556 = phi i64 [ %.pr.i554, %bb.bq ], [ %i.baj, %.lr.ph.i557 ]
  %i.bak = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i556) #14
  %i.bal = tail call i64 @date_zone_to_diff(i64 noundef %i.bad)
  %i.bam = tail call i64 @rb_hash_aset(i64 noundef %i.k, i64 noundef %i.bak, i64 noundef %i.bal) #14 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %rbimpl_intern_const.exit559, %rbimpl_intern_const.exit553, %rbimpl_intern_const.exit547
  tail call void @rb_backref_set(i64 noundef %i.a) #14
  ret i64 %i.k
}

declare i64 @rb_backref_get() local_unnamed_addr #3

declare void @rb_match_busy(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @rbimpl_intern_const(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #4 !guid !416 {
bb.a:
  %.pr = load i64, ptr %0, align 8, !tbaa !372    ; 2 uses
  %.not4 = icmp eq i64 %.pr, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull %1, i64 noundef %i.a) #14 ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !372
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %.pr, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.lcssa
}

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_new() local_unnamed_addr #3

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 32) i32 @check_class(i64 noundef %0) unnamed_addr #5 !guid !417 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !375  ; 3 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = tail call ptr @__ctype_b_loc() #12
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !380  ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !376
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit26.thread.us, label %.lr.ph.split

RSTRING_PTR.exit26.thread.us:                     ; preds = %.lr.ph, %RSTRING_PTR.exit26.thread.us
  %.043.us = phi i64 [ %i.x, %RSTRING_PTR.exit26.thread.us ], [ 0, %.lr.ph ] ; 2 uses
  %.01942.us = phi i32 [ %.5.us, %RSTRING_PTR.exit26.thread.us ], [ 0, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.043.us
  %i.k = load i8, ptr %i.j, align 1, !tbaa !377   ; 4 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !382
  %i.o = lshr i16 %i.n, 10
  %i.p = and i16 %i.o, 3
  %i.q = zext nneg i16 %i.p to i32
  %.234.us = or i32 %.01942.us, %i.q              ; 4 uses
  %i.r = icmp eq i8 %i.k, 45
  %i.s = or i32 %.234.us, 4
  %.337.us = select i1 %i.r, i32 %i.s, i32 %.234.us
  %i.t = icmp eq i8 %i.k, 46
  %i.u = or i32 %.234.us, 8
  %.440.us = select i1 %i.t, i32 %i.u, i32 %.337.us
  %i.v = icmp eq i8 %i.k, 47
  %i.w = or i32 %.234.us, 16
  %.5.us = select i1 %i.v, i32 %i.w, i32 %.440.us ; 2 uses
  %i.x = add nuw nsw i64 %.043.us, 1              ; 2 uses
  %exitcond45.not = icmp eq i64 %i.x, %i.c
  br i1 %exitcond45.not, label %._crit_edge, label %RSTRING_PTR.exit26.thread.us, !llvm.loop !1

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !377
  br label %RSTRING_PTR.exit28

RSTRING_PTR.exit28:                               ; preds = %.lr.ph.split, %RSTRING_PTR.exit28
  %.043 = phi i64 [ 0, %.lr.ph.split ], [ %i.an, %RSTRING_PTR.exit28 ] ; 2 uses
  %.01942 = phi i32 [ 0, %.lr.ph.split ], [ %.5, %RSTRING_PTR.exit28 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.043
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !377  ; 4 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !382
  %i.ae = lshr i16 %i.ad, 10
  %i.af = and i16 %i.ae, 3
  %i.ag = zext nneg i16 %i.af to i32
  %.2 = or i32 %.01942, %i.ag                     ; 4 uses
  %i.ah = icmp eq i8 %i.aa, 45
  %i.ai = or i32 %.2, 4
  %.3 = select i1 %i.ah, i32 %i.ai, i32 %.2
  %i.aj = icmp eq i8 %i.aa, 46
  %i.ak = or i32 %.2, 8
  %.4 = select i1 %i.aj, i32 %i.ak, i32 %.3
  %i.al = icmp eq i8 %i.aa, 47
  %i.am = or i32 %.2, 16
  %.5 = select i1 %i.al, i32 %i.am, i32 %.4       ; 2 uses
  %i.an = add nuw nsw i64 %.043, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %RSTRING_PTR.exit28, !llvm.loop !1

._crit_edge:                                      ; preds = %RSTRING_PTR.exit28, %RSTRING_PTR.exit26.thread.us, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %.5.us, %RSTRING_PTR.exit26.thread.us ], [ %.5, %RSTRING_PTR.exit28 ]
  ret i32 %.019.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_mday(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !guid !418 {
bb.a:
  %i.a = load i64, ptr @parse_mday.pat, align 8, !tbaa !372
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_reg_new(ptr noundef nonnull @parse_mday.pat_source, i64 noundef 27, i32 noundef 1) #14 ; 3 uses
  %i.d = tail call i64 @rb_obj_freeze(i64 noundef %i.c) #14 ; 0 uses
  tail call void @rb_gc_register_mark_object(i64 noundef %i.c) #14
  store i64 %i.c, ptr @parse_mday.pat, align 8, !tbaa !372
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.7, i64 noundef 1) #14
  %i.f = load i64, ptr @parse_mday.pat, align 8, !tbaa !372
  %i.g = tail call fastcc i32 @subx(i64 noundef %0, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %1, ptr noundef nonnull @parse_mday_cb)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_ddd(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !guid !419 {
bb.a:
  %i.a = load i64, ptr @parse_ddd.pat, align 8, !tbaa !372
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_reg_new(ptr noundef nonnull @parse_ddd.pat_source, i64 noundef 106, i32 noundef 1) #14 ; 3 uses
  %i.d = tail call i64 @rb_obj_freeze(i64 noundef %i.c) #14 ; 0 uses
  tail call void @rb_gc_register_mark_object(i64 noundef %i.c) #14
  store i64 %i.c, ptr @parse_ddd.pat, align 8, !tbaa !372
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.7, i64 noundef 1) #14
  %i.f = load i64, ptr @parse_ddd.pat, align 8, !tbaa !372
  %i.g = tail call fastcc i32 @subx(i64 noundef %0, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %1, ptr noundef nonnull @parse_ddd_cb) ; 0 uses
  ret void
}

declare i64 @rb_hash_delete(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_backref_set(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @date__iso8601(i64 noundef %0) local_unnamed_addr #0 !guid !420 {
bb.a:
  %i.a = tail call i64 @rb_backref_get() #14      ; 2 uses
  tail call void @rb_match_busy(i64 noundef %i.a) #14
  %i.b = tail call i64 @rb_hash_new() #14         ; 36 uses
  %i.c = load i64, ptr @iso8601_ext_datetime.pat, align 8, !tbaa !372 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_reg_new(ptr noundef nonnull @iso8601_ext_datetime.pat_source, i64 noundef 185, i32 noundef 1) #14 ; 4 uses
  %i.f = tail call i64 @rb_obj_freeze(i64 noundef %i.e) #14 ; 0 uses
  tail call void @rb_gc_register_mark_object(i64 noundef %i.e) #14
  store i64 %i.e, ptr @iso8601_ext_datetime.pat, align 8, !tbaa !372
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %.pr.i.i.i = load i64, ptr @match.rbimpl_id, align 8, !tbaa !372 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.41, i64 noundef 5) #14 ; 3 uses
  store i64 %i.h, ptr @match.rbimpl_id, align 8, !tbaa !372
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !0

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %bb.c
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %bb.c ], [ %i.h, %.lr.ph.i.i.i ]
  %i.i = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.g, i64 noundef %.lcssa.i.i.i, i32 noundef 1, i64 noundef %0) #14 ; 15 uses
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %iso8601_ext_datetime.exit, label %bb.d

bb.d:                                             ; preds = %rbimpl_intern_const.exit.i.i
  %i.k = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %i.i) #14 ; 3 uses
  %i.l = tail call i64 @rb_reg_nth_match(i32 noundef 2, i64 noundef %i.i) #14 ; 2 uses
  %i.m = tail call i64 @rb_reg_nth_match(i32 noundef 3, i64 noundef %i.i) #14 ; 2 uses
  %i.n = tail call i64 @rb_reg_nth_match(i32 noundef 4, i64 noundef %i.i) #14 ; 3 uses
  %i.o = tail call i64 @rb_reg_nth_match(i32 noundef 5, i64 noundef %i.i) #14 ; 2 uses
  %i.p = tail call i64 @rb_reg_nth_match(i32 noundef 6, i64 noundef %i.i) #14 ; 3 uses
  %i.q = tail call i64 @rb_reg_nth_match(i32 noundef 7, i64 noundef %i.i) #14
  %i.r = tail call i64 @rb_reg_nth_match(i32 noundef 8, i64 noundef %i.i) #14 ; 2 uses
  %i.s = tail call i64 @rb_reg_nth_match(i32 noundef 9, i64 noundef %i.i) #14 ; 2 uses
  %i.t = tail call i64 @rb_reg_nth_match(i32 noundef 10, i64 noundef %i.i) #14 ; 2 uses
  %i.u = tail call i64 @rb_reg_nth_match(i32 noundef 11, i64 noundef %i.i) #14
  %i.v = tail call i64 @rb_reg_nth_match(i32 noundef 12, i64 noundef %i.i) #14 ; 2 uses
  %i.w = tail call i64 @rb_reg_nth_match(i32 noundef 13, i64 noundef %i.i) #14 ; 3 uses
  %i.x = tail call i64 @rb_reg_nth_match(i32 noundef 14, i64 noundef %i.i) #14 ; 3 uses
  %i.y = icmp eq i64 %i.k, 4
  br i1 %i.y, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.m, 4
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pr.i.i2.i = load i64, ptr @iso8601_ext_datetime_cb.rbimpl_id, align 8, !tbaa !372 ; 2 uses
  %.not4.i.i3.i = icmp eq i64 %.pr.i.i2.i, 0
  br i1 %.not4.i.i3.i, label %.lr.ph.i.i7.i, label %rbimpl_intern_const.exit.i4.i

.lr.ph.i.i7.i:                                    ; preds = %bb.f, %.lr.ph.i.i7.i
  %i.aa = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.aa, ptr @iso8601_ext_datetime_cb.rbimpl_id, align 8, !tbaa !372
  %.not.i.i8.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i8.i, label %.lr.ph.i.i7.i, label %rbimpl_intern_const.exit.i4.i, !llvm.loop !0

rbimpl_intern_const.exit.i4.i:                    ; preds = %.lr.ph.i.i7.i, %bb.f
  %.lcssa.i.i5.i = phi i64 [ %.pr.i.i2.i, %bb.f ], [ %i.aa, %.lr.ph.i.i7.i ]
  %i.ab = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i.i5.i) #14
  %i.ac = tail call i64 @rb_str_to_inum(i64 noundef %i.m, i32 noundef 10, i32 noundef 0) #14
  %i.ad = tail call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %i.ab, i64 noundef %i.ac) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %rbimpl_intern_const.exit.i4.i, %bb.e
  %i.ae = inttoptr i64 %i.k to ptr                ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !376
  %i.ag = and i64 %i.af, 8192
  %.not.i45.i.i = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 4 uses
  br i1 %.not.i45.i.i, label %sub_0.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !377
  br label %sub_0.i.i

sub_0.i.i:                                        ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %.not176.i.i = icmp eq i8 %i.ak, 45
  br i1 %.not176.i.i, label %RSTRING_PTR.exit.tail.i.i, label %RSTRING_PTR.exit.tail.thread.i.i

RSTRING_PTR.exit.tail.i.i:                        ; preds = %sub_0.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.k, label %RSTRING_PTR.exit.tail.thread.i.i

RSTRING_PTR.exit.tail.thread.i.i:                 ; preds = %RSTRING_PTR.exit.tail.i.i, %sub_0.i.i
  %i.ao = tail call i64 @rb_str_to_inum(i64 noundef %i.k, i32 noundef 10, i32 noundef 0) #14 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !375
  %i.ar = icmp slt i64 %i.aq, 4
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %RSTRING_PTR.exit.tail.thread.i.i
  %.pr.i.i.i.i = load i64, ptr @comp_year69.rbimpl_id, align 8, !tbaa !372 ; 2 uses
  %.not4.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %.not4.i.i.i.i, label %.lr.ph.i.i.i.i, label %comp_year69.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.as = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 2) #14 ; 3 uses
  store i64 %i.as, ptr @comp_year69.rbimpl_id, align 8, !tbaa !372
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %comp_year69.exit.i.i, !llvm.loop !0

comp_year69.exit.i.i:                             ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi i64 [ %.pr.i.i.i.i, %bb.i ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.at = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ao, i64 noundef %.lcssa.i.i.i.i, i32 noundef 1, i64 noundef 139) #14
  %.not.i46.i.i = icmp eq i64 %i.at, 0
  %..i.i.i = select i1 %.not.i46.i.i, i64 4001, i64 3801
  %i.au = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ao, i64 noundef 43, i32 noundef 1, i64 noundef %..i.i.i) #14
  br label %bb.j

bb.j:                                             ; preds = %comp_year69.exit.i.i, %RSTRING_PTR.exit.tail.thread.i.i
  %.042.i.i = phi i64 [ %i.au, %comp_year69.exit.i.i ], [ %i.ao, %RSTRING_PTR.exit.tail.thread.i.i ]
  %.pr.i47.i.i = load i64, ptr @iso8601_ext_datetime_cb.rbimpl_id.139, align 8, !tbaa !372 ; 2 uses
  %.not4.i48.i.i = icmp eq i64 %.pr.i47.i.i, 0
  br i1 %.not4.i48.i.i, label %.lr.ph.i50.i.i, label %rbimpl_intern_const.exit52.i.i

.lr.ph.i50.i.i:                                   ; preds = %bb.j, %.lr.ph.i50.i.i
  %i.av = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.av, ptr @iso8601_ext_datetime_cb.rbimpl_id.139, align 8, !tbaa !372
  %.not.i51.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i51.i.i, label %.lr.ph.i50.i.i, label %rbimpl_intern_const.exit52.i.i, !llvm.loop !0

rbimpl_intern_const.exit52.i.i:                   ; preds = %.lr.ph.i50.i.i, %bb.j
  %.lcssa.i49.i.i = phi i64 [ %.pr.i47.i.i, %bb.j ], [ %i.av, %.lr.ph.i50.i.i ]
  %i.aw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i49.i.i) #14
  %i.ax = tail call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %i.aw, i64 noundef %.042.i.i) #14 ; 0 uses
  br label %bb.k
end_hunk_0
