Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/make_graph?download=true
inline.NumInlined: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@make_neighbors:bb.a
  %i.r = tail call i32 @gen_number(i32 noundef %2) #12 ; 2 uses
  %i.s = tail call i32 @check_percent(i32 noundef %4) #12
  %.not39.us62 = icmp eq i32 %i.s, 0
  br i1 %.not39.us62, label %bb.b, label %bb.c

.preheader43.split.us.us:                         ; preds = %bb.g, %.preheader43.us
  %i.t = tail call i32 @gen_number(i32 noundef %2) #12 ; 2 uses
  %i.u = tail call i32 @check_percent(i32 noundef %4) #12
  %.not39.us.us = icmp eq i32 %i.u, 0
  br i1 %.not39.us.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader43.split.us.us
  %i.v = tail call i32 @gen_signed_number(i32 noundef 1) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader43.split.us.us
  %.0.us.us = phi i32 [ 0, %bb.d ], [ %5, %.preheader43.split.us.us ] ; 2 uses
  %i.w = sext i32 %.0.us.us to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.z = sext i32 %i.t to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 3 uses
  %.not40.us.us = icmp eq ptr %i.ab, null
  br i1 %.not40.us.us, label %.split.us, label %.preheader.us.us

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv83
  br i1 %exitcond.not, label %.critedge.us.thread, label %bb.g, !llvm.loop !26

bb.g:                                             ; preds = %.preheader.us.us, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %.preheader43.split.us.us, label %bb.f, !llvm.loop !27

.preheader.us.us:                                 ; preds = %bb.e
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  br label %bb.g

._crit_edge.us:                                   ; preds = %.critedge.us.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %.03555.us, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %.not.us = icmp eq ptr %i.ah, null
  br i1 %.not.us, label %._crit_edge57, label %.lr.ph.split.us, !llvm.loop !28

.lr.ph.split:                                     ; preds = %.lr.ph, %.preheader44
  %.03555 = phi ptr [ %i.al, %.preheader44 ], [ %0, %.lr.ph ] ; 2 uses
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.b) #10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03555, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !23
  %.not38 = icmp eq ptr %i.ai, null
  br i1 %.not38, label %.split64.us, label %.preheader44

.preheader44:                                     ; preds = %.lr.ph.split
  %i.ak = getelementptr inbounds nuw i8, ptr %.03555, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %._crit_edge57, label %.lr.ph.split, !llvm.loop !28

.split64.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 0) #13
  unreachable

.split.us:                                        ; preds = %bb.c, %bb.e
  %.us-phi = phi i32 [ %.0.us.us, %bb.e ], [ %.0.us58, %bb.c ]
  %.us-phi51 = phi i32 [ %i.t, %bb.e ], [ %i.r, %bb.c ]
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.us-phi51, i32 noundef %.us-phi) ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

.split70.us:                                      ; preds = %.critedge.us
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

._crit_edge57:                                    ; preds = %.preheader44, %._crit_edge.us, %bb.a
  ret void
}

declare i32 @gen_number(i32 noundef) local_unnamed_addr #5

declare i32 @check_percent(i32 noundef) local_unnamed_addr #5

declare i32 @gen_signed_number(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @update_from_coeffs(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.a ]  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.015, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.b) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.e = zext nneg i32 %i.b to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.c ], [ 160, %bb.b ] ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %.sink) #10
  %i.h = tail call noalias ptr @malloc(i64 noundef %.sink) #10
  %i.i = getelementptr inbounds nuw i8, ptr %.015, i64 24
  store ptr %i.g, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %.015, i64 32
  store ptr %i.h, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %.015, i64 44
  store i32 0, ptr %i.k, align 4, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fill_from_fields(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not25 = icmp ne ptr %0, null
  %i.a = icmp sgt i32 %1, 0
  %or.cond = and i1 %.not25, %i.a
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge27

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02026.us = phi ptr [ %i.s, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02026.us, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 4 uses
  %i.f = load ptr, ptr %.02026.us, align 8, !tbaa !13
  %.not22.us = icmp eq ptr %i.e, null
  br i1 %.not22.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts.us = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29, !nonnull !33, !noundef !33
  %i.l = sext i32 %i.h to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  store ptr %i.f, ptr %i.m, align 8, !tbaa !34
  %i.n = tail call double @gen_uniform_double() #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.l
  store double %i.n, ptr %i.q, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !35

._crit_edge.us:                                   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02026.us, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %.not.us = icmp eq ptr %i.s, null
  br i1 %.not.us, label %._crit_edge27, label %.preheader.us, !llvm.loop !36

._crit_edge27:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @localize_local(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
._crit_edge:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @make_tables(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %1, 793
  tail call void @init_random(i32 noundef %i.a) #12
  %i.b = load i32, ptr @n_nodes, align 4, !tbaa !4 ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #10 ; 3 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.d) #10 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %make_table.exit

bb.b:                                             ; preds = %bb.a
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef -1) #11
  unreachable

make_table.exit:                                  ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #10 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  %i.h = tail call double @gen_uniform_double() #12
  store double %i.h, ptr %i.e, align 8, !tbaa !11
  store ptr %i.e, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !19
  %i.j = icmp sgt i32 %i.b, 1
  tail call void @llvm.assume(i1 %i.j)
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %make_table.exit
  %indvars.iv.i = phi i64 [ 1, %make_table.exit ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.01923.i = phi ptr [ %i.g, %make_table.exit ], [ %i.k, %.lr.ph.i ]
  %.pn22.i = phi ptr [ %i.e, %make_table.exit ], [ %.021.i, %.lr.ph.i ]
  %.021.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 8 ; 3 uses
  %i.k = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #10 ; 6 uses
  %i.l = tail call double @gen_uniform_double() #12
  store double %i.l, ptr %.021.i, align 8, !tbaa !11
  store ptr %.021.i, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 0, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store ptr %i.k, ptr %i.n, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %.01923.i, i64 8
  store ptr %i.k, ptr %i.o, align 8, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %fill_table.exit, label %.lr.ph.i, !llvm.loop !21

fill_table.exit:                                  ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !20
  %i.q = load i32, ptr @n_nodes, align 4, !tbaa !4 ; 3 uses
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3                      ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #10 ; 3 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #10 ; 4 uses
  %.not.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i14, label %bb.c, label %make_table.exit16

bb.c:                                             ; preds = %fill_table.exit
  %puts.i15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef -1) #11
  unreachable

make_table.exit16:                                ; preds = %fill_table.exit
  %i.v = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #10 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !8
  %i.w = tail call double @gen_uniform_double() #12
  store double %i.w, ptr %i.t, align 8, !tbaa !11
  store ptr %i.t, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 0, ptr %i.x, align 8, !tbaa !19
  %i.y = icmp sgt i32 %i.q, 1
  tail call void @llvm.assume(i1 %i.y)
  %wide.trip.count.i17 = zext nneg i32 %i.q to i64
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18, %make_table.exit16
  %indvars.iv.i19 = phi i64 [ 1, %make_table.exit16 ], [ %indvars.iv.next.i23, %.lr.ph.i18 ] ; 2 uses
  %.01923.i20 = phi ptr [ %i.v, %make_table.exit16 ], [ %i.z, %.lr.ph.i18 ]
  %.pn22.i21 = phi ptr [ %i.t, %make_table.exit16 ], [ %.021.i22, %.lr.ph.i18 ]
  %.021.i22 = getelementptr inbounds nuw i8, ptr %.pn22.i21, i64 8 ; 3 uses
  %i.z = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #10 ; 6 uses
  %i.aa = tail call double @gen_uniform_double() #12
  store double %i.aa, ptr %.021.i22, align 8, !tbaa !11
  store ptr %.021.i22, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 0, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i19
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.01923.i20, i64 8
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !20
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, %wide.trip.count.i17
  br i1 %exitcond.not.i24, label %fill_table.exit25, label %.lr.ph.i18, !llvm.loop !21

fill_table.exit25:                                ; preds = %.lr.ph.i18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !20
  %i.af = sext i32 %1 to i64                      ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af
  store ptr %i.u, ptr %i.ag, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.f, ptr %i.ai, align 8, !tbaa !24
  ret void
}

declare void @init_random(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @make_all_neighbors(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %1, 39
  tail call void @init_random(i32 noundef %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = load i32, ptr @n_nodes, align 4, !tbaa !4
  %i.h = load i32, ptr @d_nodes, align 4, !tbaa !4
  %i.i = load i32, ptr @local_p, align 4, !tbaa !4
  tail call void @make_neighbors(ptr noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i, i32 noundef %1)
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = load i32, ptr @n_nodes, align 4, !tbaa !4
  %i.n = load i32, ptr @d_nodes, align 4, !tbaa !4
  %i.o = load i32, ptr @local_p, align 4, !tbaa !4
  tail call void @make_neighbors(ptr noundef %i.l, ptr noundef nonnull %i.b, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @update_all_from_coeffs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %.not14.i = icmp eq ptr %i.e, null
  br i1 %.not14.i, label %update_from_coeffs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.e, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.g) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = zext nneg i32 %i.g to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ %i.k, %bb.c ], [ 160, %bb.b ] ; 2 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %.sink.i) #10
  %i.m = tail call noalias ptr @malloc(i64 noundef %.sink.i) #10
  %i.n = getelementptr inbounds nuw i8, ptr %.015.i, i64 24
  store ptr %i.l, ptr %i.n, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  store ptr %i.m, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i, i64 44
  store i32 0, ptr %i.p, align 4, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %update_from_coeffs.exit, label %.lr.ph.i, !llvm.loop !32

update_from_coeffs.exit:                          ; preds = %bb.d, %bb.a
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %.not14.i7 = icmp eq ptr %i.u, null
  br i1 %.not14.i7, label %update_from_coeffs.exit12, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %update_from_coeffs.exit, %bb.g
  %.015.i9 = phi ptr [ %i.ah, %bb.g ], [ %i.u, %update_from_coeffs.exit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i9, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !19   ; 3 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i8
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.w) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i8
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i10 = phi i64 [ %i.aa, %bb.f ], [ 160, %bb.e ] ; 2 uses
  %i.ab = tail call noalias ptr @malloc(i64 noundef %.sink.i10) #10
  %i.ac = tail call noalias ptr @malloc(i64 noundef %.sink.i10) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i9, i64 24
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i9, i64 32
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i9, i64 44
  store i32 0, ptr %i.af, align 4, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i9, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ah, null
  br i1 %.not.i11, label %update_from_coeffs.exit12, label %.lr.ph.i8, !llvm.loop !32

update_from_coeffs.exit12:                        ; preds = %bb.g, %update_from_coeffs.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fill_all_from_fields(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %1, 17
  tail call void @init_random(i32 noundef %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.g = load i32, ptr @d_nodes, align 4, !tbaa !4 ; 3 uses
  %.not25.i = icmp ne ptr %i.f, null
  %i.h = icmp sgt i32 %i.g, 0
  %or.cond.i = and i1 %.not25.i, %i.h
  br i1 %or.cond.i, label %.preheader.us.preheader.i, label %fill_from_fields.exit

.preheader.us.preheader.i:                        ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.02026.us.i = phi ptr [ %i.z, %._crit_edge.us.i ], [ %i.f, %.preheader.us.preheader.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02026.us.i, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 4 uses
  %i.m = load ptr, ptr %.02026.us.i, align 8, !tbaa !13
  %.not22.us.i = icmp eq ptr %i.l, null
  br i1 %.not22.us.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts.us.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29, !nonnull !33, !noundef !33
  %i.s = sext i32 %i.o to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  store ptr %i.m, ptr %i.t, align 8, !tbaa !34
  %i.u = tail call double @gen_uniform_double() #12
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.s
  store double %i.u, ptr %i.x, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !35

end_hunk_0
