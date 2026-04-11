inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@duplicate_classext_subclasses:bb.a
  %i.k = getelementptr i8, ptr %1, i64 72
  store ptr %i.f, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr i8, ptr %i.b, i64 8
  %2 = load ptr, ptr %i.l, align 8, !tbaa !44
  %3 = getelementptr i8, ptr %2, i64 8
  %.0354649 = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  %.not404750 = icmp eq ptr %.0354649, null
  br i1 %.not404750, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.outer
  %.0354653 = phi ptr [ %.03546, %.outer ], [ %.0354649, %bb.b ]
  %.0.ph52 = phi ptr [ %i.m, %.outer ], [ %i.i, %bb.b ] ; 2 uses
  %.036.ph51 = phi ptr [ %.1, %.outer ], [ null, %bb.b ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.03548 = phi ptr [ %.0354653, %.lr.ph ], [ %.035, %bb.d ] ; 4 uses
  %4 = load i64, ptr %.03548, align 8, !tbaa !66
  %5 = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %4) #19
  %.not43.a = icmp eq i32 %5, 0
  br i1 %.not43.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %6 = getelementptr i8, ptr %.03548, i64 8
  %.035 = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %.not40 = icmp eq ptr %.035, null
  br i1 %.not40, label %.loopexit, label %bb.c, !llvm.loop !71

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #21 ; 6 uses
  %i.n = load i64, ptr %.03548, align 8, !tbaa !66
  store i64 %i.n, ptr %i.m, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.0.ph52, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr i8, ptr %.0.ph52, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !45
  %.not44 = icmp eq ptr %.036.ph51, null
  br i1 %.not44, label %bb.f, label %.outer

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
end_hunk_0
begin_hunk_1_@duplicate_classext_subclasses:bb.a
  %.0.i = phi i64 [ %i.s, %bb.g ], [ 0, %bb.f ]
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = tail call i32 @rb_st_insert(ptr noundef %i.e, i64 noundef %.0.i, i64 noundef %i.t) #19 ; 0 uses
  br label %.outer

.outer:                                           ; preds = %box_subclasses_tbl_key.exit, %bb.e
  %.1 = phi ptr [ %.036.ph51, %bb.e ], [ %i.m, %box_subclasses_tbl_key.exit ]
  %7 = getelementptr i8, ptr %.03548, i64 8
  %.03546 = load ptr, ptr %7, align 8, !tbaa !45  ; 2 uses
  %.not4047 = icmp eq ptr %.03546, null
  br i1 %.not4047, label %.loopexit, label %.lr.ph, !llvm.loop !71

.loopexit:                                        ; preds = %.outer, %bb.d, %bb.b, %bb.a
  %i.v = getelementptr i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 4 uses
  %.not41 = icmp eq ptr %i.w, null
end_hunk_1
