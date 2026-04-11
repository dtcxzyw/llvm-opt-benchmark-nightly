inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@duplicate_classext_subclasses:bb.a
  %i.k = getelementptr i8, ptr %1, i64 72
  store ptr %i.f, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr i8, ptr %i.b, i64 8
  %.0354649 = load ptr, ptr %i.l, align 8, !tbaa !44
  br label %.lr.ph

.lr.ph:                                           ; preds = %box_subclasses_tbl_key.exit, %bb.b
  %.036.ph.ph = phi i1 [ false, %box_subclasses_tbl_key.exit ], [ true, %bb.b ]
  %.0.ph52 = phi ptr [ %.035, %box_subclasses_tbl_key.exit ], [ %.0354649, %bb.b ]
  %.036.ph51 = phi ptr [ %i.m, %box_subclasses_tbl_key.exit ], [ %i.i, %bb.b ]
  br label %.outer

.outer:                                           ; preds = %.lr.ph, %bb.e
  %.pn.ph = phi ptr [ %.035, %bb.e ], [ %.0.ph52, %.lr.ph ]
  %.0.ph = phi ptr [ %i.m, %bb.e ], [ %.036.ph51, %.lr.ph ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.d
  %.03548 = phi ptr [ %.035, %bb.d ], [ %.pn.ph, %.outer ]
  %.035.in = getelementptr i8, ptr %.03548, i64 8
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !45 ; 6 uses
  %.not43.a = icmp eq ptr %.035, null
  br i1 %.not43.a, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = load i64, ptr %.035, align 8, !tbaa !66
  %3 = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %2) #19
  %.not40 = icmp eq i32 %3, 0
  br i1 %.not40, label %bb.e, label %bb.c, !llvm.loop !71

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #21 ; 6 uses
  %i.n = load i64, ptr %.035, align 8, !tbaa !66
  store i64 %i.n, ptr %i.m, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.0.ph, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr i8, ptr %.0.ph, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !45
  br i1 %.036.ph.ph, label %bb.f, label %.outer, !llvm.loop !71

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
end_hunk_0
begin_hunk_1_@duplicate_classext_subclasses:bb.a
  %.0.i = phi i64 [ %i.s, %bb.g ], [ 0, %bb.f ]
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = tail call i32 @rb_st_insert(ptr noundef %i.e, i64 noundef %.0.i, i64 noundef %i.t) #19 ; 0 uses
  br label %.lr.ph, !llvm.loop !71

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.v = getelementptr i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 4 uses
  %.not41 = icmp eq ptr %i.w, null
end_hunk_1
