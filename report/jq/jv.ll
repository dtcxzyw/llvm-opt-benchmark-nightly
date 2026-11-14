Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv?download=true
inline.NumInlined: 352
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@jv_object_merge:bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter_next.exit:                         ; preds = %jvp_object_get_slot.exit.i
  %.not66 = icmp eq i64 %indvars.iv.next140, 4294967294
  br i1 %.not66, label %.thread, label %.lr.ph, !llvm.loop !77

.thread:                                          ; preds = %jvp_object_size.exit.i.i, %bb.l, %jv_object_iter_next.exit, %jvp_object_size.exit.i, %bb.e, %jv_object_iter.exit
  %.sroa.6.2 = phi ptr [ %1, %jv_object_iter.exit ], [ %i.ae, %bb.l ], [ %1, %bb.e ], [ %i.ae, %jvp_object_size.exit.i ], [ %i.ae, %jv_object_iter_next.exit ], [ %1, %jvp_object_size.exit.i.i ]
  %.sroa.024.sroa.0.2.in = phi i64 [ %0, %jv_object_iter.exit ], [ %i.ad, %bb.l ], [ %0, %bb.e ], [ %i.ad, %jvp_object_size.exit.i ], [ %i.ad, %jv_object_iter_next.exit ], [ %0, %jvp_object_size.exit.i.i ]
  %.sroa.024.sroa.6.sroa.0.2.in = phi i64 [ %.sroa.024.sroa.6.0.extract.shift, %jv_object_iter.exit ], [ %.sroa.024.sroa.6.0.extract.shift39, %bb.l ], [ %.sroa.024.sroa.6.0.extract.shift, %bb.e ], [ %.sroa.024.sroa.6.0.extract.shift39, %jvp_object_size.exit.i ], [ %.sroa.024.sroa.6.0.extract.shift39, %jv_object_iter_next.exit ], [ %.sroa.024.sroa.6.0.extract.shift, %jvp_object_size.exit.i.i ]
  tail call void @jv_free(i64 %2, ptr %3)
  %.sroa.024.sroa.6.0.insert.shift42 = shl nuw i64 %.sroa.024.sroa.6.sroa.0.2.in, 8
  %.sroa.024.sroa.0.0.insert.ext32 = and i64 %.sroa.024.sroa.0.2.in, 255
  %.sroa.024.sroa.0.0.insert.insert34 = or disjoint i64 %.sroa.024.sroa.6.0.insert.shift42, %.sroa.024.sroa.0.0.insert.ext32
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.024.sroa.0.0.insert.insert34, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.6.2, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, 2147483647) i32 @jv_object_iter(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1970, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.sroa.21.0.extract.trunc.i.i, i32 0)
  %exitcond.not3 = icmp slt i32 %.sroa.21.0.extract.trunc.i.i, 1
  br i1 %exitcond.not3, label %jv_object_iter_next.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = add nsw i32 %smax, -2
  br label %.lr.ph

jvp_object_size.exit.i:                           ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %.0.i4, %i.c
  br i1 %exitcond.not, label %jv_object_iter_next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %jvp_object_size.exit.i
  %.0.i4 = phi i32 [ %i.d, %jvp_object_size.exit.i ], [ -1, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i32 %.0.i4, 1                    ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 15
  switch i64 %i.i, label %bb.d [
    i64 1, label %jvp_object_size.exit.i
    i64 5, label %jv_object_iter_next.exit
  ]

bb.d:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter_next.exit:                         ; preds = %jvp_object_size.exit.i, %.lr.ph, %bb.c
  %.031.i = phi i32 [ -2, %bb.c ], [ -2, %jvp_object_size.exit.i ], [ %i.d, %.lr.ph ]
  ret i32 %.031.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @jv_object_iter_valid(i64 %0, ptr nofree readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %2, -2
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_object_iter_key(i64 %0, ptr nofree readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i32 %2, -1
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %0, 15
  %i.d = icmp eq i64 %i.c, 7
  br i1 %i.d, label %jvp_object_size.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_size.exit.i:                           ; preds = %bb.b
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  %i.e = icmp slt i32 %2, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.e, label %jvp_object_ptr.exit.i, label %bb.d

bb.d:                                             ; preds = %jvp_object_size.exit.i, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_object_ptr.exit.i:                            ; preds = %jvp_object_size.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8 ; 3 uses
  %i.j = and i64 %.sroa.0.0.copyload, 15
  %i.k = icmp eq i64 %i.j, 5
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %jvp_object_ptr.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef 1991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_key) #19
  unreachable

bb.f:                                             ; preds = %jvp_object_ptr.exit.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15 ; 3 uses
  %i.l = and i64 %.sroa.0.0.copyload, 128
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %.sroa.5.0.copyload, align 4, !tbaa !17
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %.sroa.5.0.copyload, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.f, %bb.g
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %.sroa.5.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_object_iter_value(i64 %0, ptr nofree readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i32 %2, -1
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %0, 15
  %i.d = icmp eq i64 %i.c, 7
  br i1 %i.d, label %jvp_object_size.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_size.exit.i:                           ; preds = %bb.b
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  %i.e = icmp slt i32 %2, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.e, label %jvp_object_ptr.exit.i, label %bb.d

bb.d:                                             ; preds = %jvp_object_size.exit.i, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_object_ptr.exit.i:                            ; preds = %jvp_object_size.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = and i64 %i.j, 128
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.e

bb.e:                                             ; preds = %jvp_object_ptr.exit.i
  %i.n = load i32, ptr %i.l, align 4, !tbaa !17
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %jvp_object_ptr.exit.i, %bb.e
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.j, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.l, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 2147483647) i32 @jv_object_iter_next(i64 %0, ptr nofree readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1975, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, -2
  br i1 %.not, label %4, label %jvp_object_size.exit.preheader

jvp_object_size.exit.preheader:                   ; preds = %bb.c
  %.sroa.21.0.extract.shift.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i = trunc nuw i64 %.sroa.21.0.extract.shift.i to i32 ; 2 uses
  %i.c = icmp sgt i32 %2, -2
  %i.d = add nsw i32 %2, 1                        ; 2 uses
  %.not3455 = icmp slt i32 %i.d, %.sroa.21.0.extract.trunc.i ; 2 uses
  br i1 %i.c, label %bb.d, label %jvp_object_size.exit.preheader.split

bb.d:                                             ; preds = %jvp_object_size.exit.preheader
  br i1 %.not3455, label %jvp_object_get_slot.exit, label %.loopexit

jvp_object_size.exit:                             ; preds = %jvp_object_get_slot.exit
  %i.e = add nsw i32 %3, 1                        ; 2 uses
  %.not34 = icmp slt i32 %i.e, %.sroa.21.0.extract.trunc.i
  br i1 %.not34, label %jvp_object_get_slot.exit, label %.loopexit, !llvm.loop !78

jvp_object_get_slot.exit:                         ; preds = %bb.d, %jvp_object_size.exit
  %3 = phi i32 [ %i.e, %jvp_object_size.exit ], [ %i.d, %bb.d ] ; 3 uses
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 15
  switch i64 %i.j, label %bb.e [
    i64 1, label %jvp_object_size.exit
    i64 5, label %.loopexit
  ]

jvp_object_size.exit.preheader.split:             ; preds = %jvp_object_size.exit.preheader
  br i1 %.not3455, label %5, label %.loopexit

4:                                                ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.8, i32 noundef 1976, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

5:                                                ; preds = %jvp_object_size.exit.preheader.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

bb.e:                                             ; preds = %jvp_object_get_slot.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

.loopexit:                                        ; preds = %jvp_object_size.exit, %jvp_object_get_slot.exit, %bb.d, %jvp_object_size.exit.preheader.split
  %.031 = phi i32 [ -2, %bb.d ], [ -2, %jvp_object_size.exit.preheader.split ], [ -2, %jvp_object_size.exit ], [ %3, %jvp_object_get_slot.exit ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_object_merge_recursive(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @jvp_object_merge_recursive(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef 0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, ptr } @jvp_object_merge_recursive(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %.sroa.0120.sroa.11.0.extract.shift = lshr i64 %0, 8 ; 2 uses
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.8, i32 noundef 1923, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_merge_recursive) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 15
  %i.d = icmp eq i64 %i.c, 7
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.8, i32 noundef 1924, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_merge_recursive) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = icmp sgt i32 %4, 10000
  br i1 %i.e, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  %i.f = tail call i32 @jvp_utf8_is_valid(ptr noundef nonnull @.str.57, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 21)) #20, !inline_history !35
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.g, label %jvp_string_new.exit.i

jvp_string_new.exit.i:                            ; preds = %bb.f
  %i.g = tail call noundef ptr @jv_mem_alloc(i64 noundef 38) #20, !inline_history !36 ; 6 uses
  store i32 1, ptr %i.g, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 21, ptr %i.h, align 4, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 42, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(21) @.str.57, i64 21, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !15
  %i.l = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.g, 1
  br label %jv_string.exit

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull @.str.57, i32 noundef 21), !inline_history !35
  br label %jv_string.exit

jv_string.exit:                                   ; preds = %jvp_string_new.exit.i, %bb.g
  %.fca.1.insert.i.merged.i = phi { i64, ptr } [ %i.l, %jvp_string_new.exit.i ], [ %i.m, %bb.g ] ; 2 uses
  %i.n = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 0
  %i.o = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 1
  %i.p = tail call ptr @jv_mem_alloc(i64 noundef 24) #20 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.n, ptr %i.q, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.r = insertvalue { i64, ptr } { i64 128, ptr poison }, ptr %i.p, 1
  br label %.thread251

bb.h:                                             ; preds = %bb.e
  %.sroa.21.0.extract.shift.i.i.i = lshr i64 %2, 32
  %.sroa.21.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i to i32 ; 5 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.sroa.21.0.extract.trunc.i.i.i, i32 0)
  %exitcond.not.i487 = icmp slt i32 %.sroa.21.0.extract.trunc.i.i.i, 1
  br i1 %exitcond.not.i487, label %jv_object_iter.exit, label %.lr.ph489.preheader

.lr.ph489.preheader:                              ; preds = %bb.h
  %i.s = add nsw i32 %smax.i, -2
  br label %.lr.ph489

jvp_object_size.exit.i.i:                         ; preds = %.lr.ph489
  %exitcond.not.i = icmp eq i32 %.0.i.i488, %i.s
  br i1 %exitcond.not.i, label %jv_object_iter.exit, label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %jvp_object_size.exit.i.i
  %.0.i.i488 = phi i32 [ %i.t, %jvp_object_size.exit.i.i ], [ -1, %.lr.ph489.preheader ] ; 2 uses
  %i.t = add nsw i32 %.0.i.i488, 1                ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 15
  switch i64 %i.y, label %bb.i [
    i64 1, label %jvp_object_size.exit.i.i
    i64 5, label %jv_object_iter.exit
  ]

bb.i:                                             ; preds = %.lr.ph489
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter.exit:                              ; preds = %.lr.ph489, %jvp_object_size.exit.i.i, %bb.h
  %.031.i.i = phi i32 [ -2, %bb.h ], [ %i.t, %.lr.ph489 ], [ -2, %jvp_object_size.exit.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = add nsw i32 %4, 1
  %.not258306 = icmp eq i32 %.031.i.i, -2
  br i1 %.not258306, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %jv_object_iter.exit, %jv_object_iter_next.exit
  %.sroa.0120.sroa.11.sroa.0.1310 = phi i64 [ %.sroa.0120.sroa.11.sroa.0.2.in, %jv_object_iter_next.exit ], [ %.sroa.0120.sroa.11.0.extract.shift, %jv_object_iter.exit ] ; 2 uses
  %.sroa.0120.sroa.0.1309.in = phi i64 [ %.sroa.0120.sroa.0.2.in, %jv_object_iter_next.exit ], [ %0, %jv_object_iter.exit ] ; 3 uses
  %.sroa.11.1308 = phi ptr [ %.sroa.11.2, %jv_object_iter_next.exit ], [ %1, %jv_object_iter.exit ] ; 8 uses
  %.1307 = phi i32 [ %i.fb, %jv_object_iter_next.exit ], [ %.031.i.i, %jv_object_iter.exit ] ; 4 uses
  %i.ab = icmp ne i32 %.1307, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp sgt i32 %.1307, -1
  %i.ad = icmp slt i32 %.1307, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %jvp_object_ptr.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_object_ptr.exit.i.i:                          ; preds = %.lr.ph
  %i.ae = zext nneg i32 %.1307 to i64             ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8 ; 7 uses
  %i.ah = and i64 %.sroa.0.0.copyload.i, 15
  %i.ai = icmp eq i64 %i.ah, 5
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %jvp_object_ptr.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef 1991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_key) #19
  unreachable

bb.l:                                             ; preds = %jvp_object_ptr.exit.i.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 13 uses
  %i.aj = and i64 %.sroa.0.0.copyload.i, 128
  %.not.i.i208 = icmp eq i64 %i.aj, 0             ; 2 uses
  br i1 %.not.i.i208, label %jvp_object_ptr.exit.i.i212, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  br label %jvp_object_ptr.exit.i.i212

jvp_object_ptr.exit.i.i212:                       ; preds = %bb.m, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.an = load i64, ptr %i.am, align 8            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = and i64 %i.an, 128
  %.not.i.i213 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i213, label %bb.o, label %bb.n

bb.n:                                             ; preds = %jvp_object_ptr.exit.i.i212
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %jvp_object_ptr.exit.i.i212, %bb.n
  %.sroa.0120.sroa.11.0.insert.shift153 = shl nuw i64 %.sroa.0120.sroa.11.sroa.0.1310, 8 ; 2 uses
  %.sroa.0120.sroa.0.0.insert.ext132 = and i64 %.sroa.0120.sroa.0.1309.in, 255
  %.sroa.0120.sroa.0.0.insert.insert134 = or disjoint i64 %.sroa.0120.sroa.11.0.insert.shift153, %.sroa.0120.sroa.0.0.insert.ext132 ; 5 uses
  %i.at = and i64 %.sroa.0120.sroa.0.1309.in, 128
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr %.sroa.11.1308, align 4, !tbaa !17
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %.sroa.11.1308, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.o, %bb.p
  br i1 %.not.i.i208, label %jv_copy.exit220, label %bb.q

bb.q:                                             ; preds = %jv_copy.exit
  %i.aw = load i32, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  br label %jv_copy.exit220

jv_copy.exit220:                                  ; preds = %jv_copy.exit, %bb.q
  %i.ay = and i64 %.sroa.0120.sroa.0.1309.in, 15
  %i.az = icmp eq i64 %i.ay, 7
  br i1 %i.az, label %jvp_string_ptr.exit.i, label %bb.r

bb.r:                                             ; preds = %jv_copy.exit220
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1854, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_get) #19
  unreachable
end_hunk_0
begin_hunk_1_@jvp_equal:bb.a
jvp_object_size.exit.lr.ph.i:                     ; preds = %bb.s
  %.sroa.21.0.extract.shift.i.i270 = lshr i64 %2, 32 ; 4 uses
  %.sroa.21.0.extract.trunc.i.i271 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i270 to i32
  %i.bt = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i271, 0
  br i1 %i.bt, label %jvp_object_get_slot.exit.us.i.preheader, label %jvp_object_length.exit

jvp_object_get_slot.exit.us.i.preheader:          ; preds = %jvp_object_size.exit.lr.ph.i
  %i.bu = icmp eq i64 %.sroa.21.0.extract.shift.i.i270, 1
  br i1 %i.bu, label %jvp_object_get_slot.exit.us.i.epil.preheader, label %jvp_object_get_slot.exit.us.i.preheader.new

jvp_object_get_slot.exit.us.i.preheader.new:      ; preds = %jvp_object_get_slot.exit.us.i.preheader
  %unroll_iter = and i64 %.sroa.21.0.extract.shift.i.i270, 2147483646
  br label %jvp_object_get_slot.exit.us.i

jvp_object_get_slot.exit.us.i:                    ; preds = %jvp_object_get_slot.exit.us.i, %jvp_object_get_slot.exit.us.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %jvp_object_get_slot.exit.us.i.preheader.new ], [ %indvars.iv.next.i.1, %jvp_object_get_slot.exit.us.i ] ; 3 uses
  %.079.us12.i = phi i32 [ 0, %jvp_object_get_slot.exit.us.i.preheader.new ], [ %spec.select.us.i.1, %jvp_object_get_slot.exit.us.i ]
  %niter = phi i64 [ 0, %jvp_object_get_slot.exit.us.i.preheader.new ], [ %niter.next.1, %jvp_object_get_slot.exit.us.i ]
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = and i64 %i.bx, 15
  %.not.us.i = icmp ne i64 %i.by, 1
  %i.bz = zext i1 %.not.us.i to i32
  %spec.select.us.i = add nuw nsw i32 %.079.us12.i, %i.bz
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.cc, 15
  %.not.us.i.1 = icmp ne i64 %i.cd, 1
  %i.ce = zext i1 %.not.us.i.1 to i32
  %spec.select.us.i.1 = add nuw nsw i32 %spec.select.us.i, %i.ce ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %jvp_object_length.exit.loopexit.unr-lcssa, label %jvp_object_get_slot.exit.us.i

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_length.exit.loopexit.unr-lcssa:        ; preds = %jvp_object_get_slot.exit.us.i
  %i.cf = and i64 %2, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.cf, 0
  br i1 %lcmp.mod.not, label %jvp_object_length.exit, label %jvp_object_get_slot.exit.us.i.epil.preheader

jvp_object_get_slot.exit.us.i.epil.preheader:     ; preds = %jvp_object_length.exit.loopexit.unr-lcssa, %jvp_object_get_slot.exit.us.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %jvp_object_get_slot.exit.us.i.preheader ], [ %indvars.iv.next.i.1, %jvp_object_length.exit.loopexit.unr-lcssa ]
  %.079.us12.i.epil.init = phi i32 [ 0, %jvp_object_get_slot.exit.us.i.preheader ], [ %spec.select.us.i.1, %jvp_object_length.exit.loopexit.unr-lcssa ]
  %lcmp.mod326 = trunc i64 %.sroa.21.0.extract.shift.i.i270 to i1
  tail call void @llvm.assume(i1 %lcmp.mod326)
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.i.epil.init
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = and i64 %i.ci, 15
  %.not.us.i.epil = icmp ne i64 %i.cj, 1
  %i.ck = zext i1 %.not.us.i.epil to i32
  %spec.select.us.i.epil = add nuw nsw i32 %.079.us12.i.epil.init, %i.ck
  br label %jvp_object_length.exit

jvp_object_length.exit:                           ; preds = %jvp_object_get_slot.exit.us.i.epil.preheader, %jvp_object_length.exit.loopexit.unr-lcssa, %jvp_object_size.exit.lr.ph.i
  %.us-phi.i = phi i32 [ 0, %jvp_object_size.exit.lr.ph.i ], [ %spec.select.us.i.1, %jvp_object_length.exit.loopexit.unr-lcssa ], [ %spec.select.us.i.epil, %jvp_object_get_slot.exit.us.i.epil.preheader ]
  %i.cl = and i64 %0, 15
  %i.cm = icmp eq i64 %i.cl, 7
  br i1 %i.cm, label %jvp_object_size.exit.lr.ph, label %._crit_edge

jvp_object_size.exit.lr.ph:                       ; preds = %jvp_object_length.exit
  %.sroa.21.0.extract.shift.i268 = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i269 = trunc nuw i64 %.sroa.21.0.extract.shift.i268 to i32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = ashr i64 %2, 32
  %i.cq = getelementptr inbounds [40 x i8], ptr %i.co, i64 %i.cp
  %sh.diff.i.i.i = lshr i64 %2, 31
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.cr = and i32 %tr.sh.diff.i.i.i, -2
  %i.cs = add nsw i32 %i.cr, -1
  %i.ct = ashr i64 %0, 32
  %smax = tail call i32 @llvm.smax.i32(i32 %.sroa.21.0.extract.trunc.i269, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not314 = icmp slt i32 %.sroa.21.0.extract.trunc.i269, 1
  br i1 %exitcond.not314, label %jvp_object_equal.exit, label %jvp_object_get_slot.exit

._crit_edge:                                      ; preds = %jvp_object_length.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_get_slot.exit:                         ; preds = %jvp_object_size.exit.lr.ph, %jvp_object_size.exit
  %.025.i285316 = phi i32 [ %.328.i, %jvp_object_size.exit ], [ 0, %jvp_object_size.exit.lr.ph ] ; 4 uses
  %indvars.iv315 = phi i64 [ %indvars.iv.next, %jvp_object_size.exit ], [ 0, %jvp_object_size.exit.lr.ph ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %indvars.iv315 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = and i64 %i.cw, 15
  switch i64 %i.cx, label %bb.u [
    i64 1, label %jvp_object_size.exit
    i64 5, label %jvp_object_read.exit
  ]

bb.u:                                             ; preds = %jvp_object_get_slot.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8, i32 noundef 1699, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_read) #19
  unreachable

jvp_object_read.exit:                             ; preds = %jvp_object_get_slot.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = tail call fastcc i32 @jvp_string_hash(i64 %i.cw, ptr %i.cz)
  %i.db = and i32 %i.da, %i.cs
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dc
  %i.de = tail call fastcc ptr @jvp_object_find_slot(i64 %2, ptr readonly %3, i64 %i.cw, ptr %i.cz, ptr noundef nonnull readonly %i.dd) ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  br i1 %i.df, label %jvp_object_equal.exit, label %bb.v

bb.v:                                             ; preds = %jvp_object_read.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %i.dl = and i64 %i.di, 128
  %.not.i259 = icmp eq i64 %i.dl, 0
  br i1 %.not.i259, label %jv_copy.exit262, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !17
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !17
  br label %jv_copy.exit262

jv_copy.exit262:                                  ; preds = %bb.v, %bb.w
  %i.do = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8            ; 3 uses
  %i.dr = and i64 %i.do, 128
  %.not.i255 = icmp eq i64 %i.dr, 0
  br i1 %.not.i255, label %jv_copy.exit258, label %bb.x

bb.x:                                             ; preds = %jv_copy.exit262
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !17
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !17
  br label %jv_copy.exit258

jv_copy.exit258:                                  ; preds = %jv_copy.exit262, %bb.x
  %i.du = tail call fastcc i32 @jvp_equal(i64 %i.di, ptr %i.dk, i64 %i.do, ptr %i.dq, i32 noundef range(i32 -2147483647, 10002) %i.bq), !inline_history !82 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 1
  %i.dw = add nsw i32 %.025.i285316, 1
  br i1 %i.dv, label %jvp_object_equal.exit, label %jvp_object_size.exit

jvp_object_size.exit:                             ; preds = %jvp_object_get_slot.exit, %jv_copy.exit258
  %.328.i = phi i32 [ %.025.i285316, %jvp_object_get_slot.exit ], [ %i.dw, %jv_copy.exit258 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv315, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %jvp_object_equal.exit, label %jvp_object_get_slot.exit

jvp_object_equal.exit:                            ; preds = %jvp_object_size.exit, %jvp_object_read.exit, %jv_copy.exit258, %jvp_object_size.exit.lr.ph
  %indvars.iv.lcssa = phi i64 [ 0, %jvp_object_size.exit.lr.ph ], [ %indvars.iv.next, %jvp_object_size.exit ], [ %indvars.iv315, %jvp_object_read.exit ], [ %indvars.iv315, %jv_copy.exit258 ]
  %.025.i285.lcssa = phi i32 [ 0, %jvp_object_size.exit.lr.ph ], [ %.328.i, %jvp_object_size.exit ], [ %.025.i285316, %jvp_object_read.exit ], [ %.025.i285316, %jv_copy.exit258 ]
  %.4.i = phi i32 [ undef, %jvp_object_size.exit.lr.ph ], [ undef, %jvp_object_size.exit ], [ 0, %jvp_object_read.exit ], [ %i.du, %jv_copy.exit258 ]
  %.not37.i.le = icmp slt i64 %indvars.iv.lcssa, %i.ct
  %i.dx = icmp eq i32 %.025.i285.lcssa, %.us-phi.i
  %i.dy = zext i1 %i.dx to i32
  %.5.i = select i1 %.not37.i.le, i32 %.4.i, i32 %i.dy
  br label %jvp_array_equal.exit

jvp_array_equal.exit:                             ; preds = %jvp_array_length.exit, %jv_copy.exit, %bb.f, %jvp_object_equal.exit, %bb.b, %bb.d, %bb.e, %jvp_array_length.exit251, %jvp_string_ptr.exit19.i, %bb.r, %jvp_array_ptr.exit, %bb.a
  %.0223 = phi i32 [ -1, %bb.a ], [ %.5.i, %jvp_object_equal.exit ], [ 0, %bb.b ], [ 1, %bb.d ], [ %i.m, %bb.f ], [ 1, %bb.e ], [ %i.bp, %bb.r ], [ 1, %jvp_array_ptr.exit ], [ 0, %jvp_array_length.exit251 ], [ 0, %jvp_string_ptr.exit19.i ], [ 1, %jvp_array_length.exit ], [ %i.bb, %jv_copy.exit ]
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %.0223
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @jv_identical(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.08.0.extract.trunc = trunc i64 %0 to i8
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i8
  %.not = icmp eq i8 %.sroa.08.0.extract.trunc, %.sroa.0.0.extract.trunc
  %.unshifted = xor i64 %2, %0
  %i.a = icmp ult i64 %.unshifted, 65536
  %or.cond15 = and i1 %.not, %i.a
  %.not5 = icmp eq ptr %1, %3
  %.0.shrunk = select i1 %or.cond15, i1 %.not5, i1 false
  %.0 = zext i1 %.0.shrunk to i32
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jv_contains(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @jvp_contains(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jvp_contains(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %.fr = freeze i64 %0                            ; 20 uses
  %i.a = icmp sgt i32 %4, 10000
  br i1 %i.a, label %jvp_object_contains.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i64 %.fr to i32 ; 2 uses
  %i.b = and i32 %.sroa.0.0.extract.trunc.i, 15   ; 2 uses
  %.sroa.0.0.extract.trunc.i115 = trunc i64 %2 to i32 ; 2 uses
  %i.c = and i32 %.sroa.0.0.extract.trunc.i115, 15
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %jvp_object_contains.exit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.b, label %bb.ax [
    i32 7, label %bb.d
    i32 6, label %bb.p
    i32 5, label %bb.ar
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %4, 1                        ; 2 uses
  %i.e = and i64 %.fr, 15
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.8, i32 noundef 1831, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_contains) #19, !inline_history !83
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = and i64 %2, 15
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.8, i32 noundef 1832, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_contains) #19, !inline_history !83
  unreachable

bb.h:                                             ; preds = %bb.f
  %.sroa.21.0.extract.shift.i.i.i148 = lshr i64 %2, 32
  %.sroa.21.0.extract.trunc.i.i.i149 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i148 to i32 ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.sroa.21.0.extract.trunc.i.i.i149, i32 0)
  %exitcond.not.i521 = icmp slt i32 %.sroa.21.0.extract.trunc.i.i.i149, 1
  br i1 %exitcond.not.i521, label %jvp_object_contains.exit, label %.lr.ph523.preheader

.lr.ph523.preheader:                              ; preds = %bb.h
  %i.i = add nsw i32 %smax.i, -2
  br label %.lr.ph523

jvp_object_size.exit.i.i150:                      ; preds = %.lr.ph523
  %exitcond.not.i = icmp eq i32 %.0.i.i522, %i.i
  br i1 %exitcond.not.i, label %jvp_object_contains.exit, label %.lr.ph523

.lr.ph523:                                        ; preds = %.lr.ph523.preheader, %jvp_object_size.exit.i.i150
  %.0.i.i522 = phi i32 [ %i.j, %jvp_object_size.exit.i.i150 ], [ -1, %.lr.ph523.preheader ] ; 2 uses
  %i.j = add nsw i32 %.0.i.i522, 1                ; 5 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 15
  switch i64 %i.o, label %bb.i [
    i64 1, label %jvp_object_size.exit.i.i150
    i64 5, label %jv_object_iter.exit
  ]

bb.i:                                             ; preds = %.lr.ph523
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter.exit:                              ; preds = %.lr.ph523
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = and i64 %.fr, 128
  %.not.i137 = icmp eq i64 %i.q, 0
  %.not206345 = icmp eq i32 %i.j, -2              ; 2 uses
  br i1 %.not.i137, label %.preheader.us, label %bb.m

.preheader.us:                                    ; preds = %jv_object_iter.exit
  br i1 %.not206345, label %jvp_object_contains.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader.us, %10
  %.169.i346 = phi i32 [ %11, %10 ], [ %i.j, %.preheader.us ] ; 4 uses
  %i.r = icmp ne i32 %.169.i346, -1
  tail call void @llvm.assume(i1 %i.r)
  %or.cond.a = icmp ult i32 %.169.i346, %.sroa.21.0.extract.trunc.i.i.i149
  br i1 %or.cond.a, label %jvp_object_ptr.exit.i.i144, label %.split344.us

jvp_object_ptr.exit.i.i144:                       ; preds = %.lr.ph.a
  %i.s = zext nneg i32 %.169.i346 to i64
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.a = load i64, ptr %i.u, align 8 ; 3 uses
  %i.v = and i64 %.sroa.0.0.copyload.i.a, 15
  %i.w = icmp eq i64 %i.v, 5
  br i1 %i.w, label %bb.j, label %.split346.us

bb.j:                                             ; preds = %jvp_object_ptr.exit.i.i144
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.0.copyload.i.a = load ptr, ptr %.sroa.5.0..sroa_idx.i.a, align 8, !tbaa !15 ; 3 uses
  %i.x = and i64 %.sroa.0.0.copyload.i.a, 128
  %.not.i.i145 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i145, label %jvp_object_ptr.exit.i.i.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i32, ptr %.sroa.5.0.copyload.i.a, align 4, !tbaa !17
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %.sroa.5.0.copyload.i.a, align 4, !tbaa !17
  br label %jvp_object_ptr.exit.i.i.a

jvp_object_ptr.exit.i.i.a:                        ; preds = %bb.k, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = and i64 %i.ab, 128
  %.not.i.i.a = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.a, label %jv_copy.exit138.us.us, label %bb.l

bb.l:                                             ; preds = %jvp_object_ptr.exit.i.i.a
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !17
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !17
  br label %jv_copy.exit138.us.us

jv_copy.exit138.us.us:                            ; preds = %bb.l, %jvp_object_ptr.exit.i.i.a
  %5 = tail call { i64, ptr } @jv_object_get(i64 %.fr, ptr %1, i64 %.sroa.0.0.copyload.i.a, ptr %.sroa.5.0.copyload.i.a), !inline_history !83 ; 2 uses
  %6 = extractvalue { i64, ptr } %5, 0
  %7 = extractvalue { i64, ptr } %5, 1
  %8 = tail call fastcc i32 @jvp_contains(i64 %6, ptr %7, i64 %i.ab, ptr %i.ad, i32 noundef %i.d), !inline_history !83 ; 3 uses
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %jvp_object_contains.exit

10:                                               ; preds = %jv_copy.exit138.us.us
  %11 = tail call i32 @jv_object_iter_next(i64 %2, ptr nonnull %3, i32 noundef %.169.i346), !inline_history !83 ; 2 uses
  %.not201.us.us = icmp eq i32 %11, -2
  br i1 %.not201.us.us, label %jvp_object_contains.exit, label %.lr.ph.a, !llvm.loop !84

bb.m:                                             ; preds = %jv_object_iter.exit
  br i1 %.not206345, label %jvp_object_contains.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %jv_object_iter_next.exit
  %.169.i339 = phi i32 [ %37, %jv_object_iter_next.exit ], [ %i.j, %bb.m ] ; 4 uses
  %12 = icmp ne i32 %.169.i339, -1
  tail call void @llvm.assume(i1 %12)
  %or.cond = icmp ult i32 %.169.i339, %.sroa.21.0.extract.trunc.i.i.i149
  br i1 %or.cond, label %jv_copy.exit140, label %.split344.us

.split344.us:                                     ; preds = %bb.n, %.lr.ph.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jv_copy.exit140:                                  ; preds = %bb.n
  %13 = zext nneg i32 %.169.i339 to i64
  %14 = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %13 ; 4 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %15, align 8 ; 3 uses
  %16 = and i64 %.sroa.0.0.copyload.i, 15
  %17 = icmp eq i64 %16, 5
  br i1 %17, label %jvp_object_size.exit.i, label %.split346.us

.split346.us:                                     ; preds = %jv_copy.exit140, %jvp_object_ptr.exit.i.i144
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef 1991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_key) #19
  unreachable

jvp_object_size.exit.i:                           ; preds = %jv_copy.exit140
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  %18 = and i64 %.sroa.0.0.copyload.i, 128
  %.not.i.i143 = icmp eq i64 %18, 0
  br i1 %.not.i.i143, label %jvp_object_get_slot.exit.i, label %19

19:                                               ; preds = %jvp_object_size.exit.i
  %20 = load i32, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  br label %jvp_object_get_slot.exit.i

jvp_object_get_slot.exit.i:                       ; preds = %19, %jvp_object_size.exit.i
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %23 = load i64, ptr %22, align 8                ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %25 = load ptr, ptr %24, align 8                ; 3 uses
  %26 = and i64 %23, 128
  %.not.i.i = icmp eq i64 %26, 0
  br i1 %.not.i.i, label %bb.o, label %27

27:                                               ; preds = %jvp_object_get_slot.exit.i
  %28 = load i32, ptr %25, align 4, !tbaa !17
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %25, align 4, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %jvp_object_get_slot.exit.i, %27
  %30 = load i32, ptr %1, align 4, !tbaa !17
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %1, align 4, !tbaa !17
  %32 = tail call { i64, ptr } @jv_object_get(i64 %.fr, ptr %1, i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0.copyload.i), !inline_history !83 ; 2 uses
  %33 = extractvalue { i64, ptr } %32, 0
  %34 = extractvalue { i64, ptr } %32, 1
  %35 = tail call fastcc i32 @jvp_contains(i64 %33, ptr %34, i64 %23, ptr %25, i32 noundef %i.d), !inline_history !83 ; 3 uses
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %jv_object_iter_next.exit, label %jvp_object_contains.exit

jv_object_iter_next.exit:                         ; preds = %bb.o
  %37 = tail call i32 @jv_object_iter_next(i64 %2, ptr nonnull %3, i32 noundef %.169.i339), !inline_history !83 ; 2 uses
  %.not206 = icmp eq i32 %37, -2
  br i1 %.not206, label %jvp_object_contains.exit, label %bb.n, !llvm.loop !84

bb.p:                                             ; preds = %bb.c
  %i.ah = add nsw i32 %4, 1                       ; 4 uses
  %i.ai = and i64 %2, 128
  %.not.i188 = icmp eq i64 %i.ai, 0               ; 4 uses
  br i1 %.not.i188, label %jv_copy.exit191, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = load i32, ptr %3, align 4, !tbaa !17
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit191

jv_copy.exit191:                                  ; preds = %bb.p, %bb.q
  %i.al = and i64 %2, 15
  %i.am = icmp eq i64 %i.al, 6
  br i1 %i.am, label %jv_array_length.exit187, label %bb.r

bb.r:                                             ; preds = %jv_copy.exit191
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_length.exit187:                          ; preds = %jv_copy.exit191
  %.sroa.21.0.extract.shift.i.i185 = lshr i64 %2, 32 ; 3 uses
  %.sroa.21.0.extract.trunc.i.i186 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i185 to i32
  tail call void @jv_free(i64 %2, ptr %3)
  %i.an = lshr i32 %.sroa.0.0.extract.trunc.i115, 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aq = and i64 %.fr, 128
  %.not.i167 = icmp eq i64 %i.aq, 0               ; 2 uses
  %i.ar = and i64 %.fr, 15
  %i.as = icmp eq i64 %i.ar, 6
  %.sroa.21.0.extract.shift.i.i165 = lshr i64 %.fr, 32 ; 5 uses
  %.sroa.21.0.extract.trunc.i.i166 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i165 to i32 ; 4 uses
  %i.at = lshr i32 %.sroa.0.0.extract.trunc.i, 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not52.i240.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i186, 0 ; 3 uses
  br i1 %i.as, label %jv_array_length.exit187.split.us, label %jv_array_length.exit187.split

jv_array_length.exit187.split.us:                 ; preds = %jv_array_length.exit187
  br i1 %.not.i167, label %.preheader208.us.us, label %.preheader208.us

.preheader208.us.us:                              ; preds = %jv_array_length.exit187.split.us
  br i1 %.not52.i240.us.us, label %.lr.ph242.us.us.preheader, label %jvp_object_contains.exit

.lr.ph242.us.us.preheader:                        ; preds = %.preheader208.us.us
  %i.aw = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ax = zext nneg i32 %i.an to i64
  %.not55.i224.us.us262.us.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  %.not55.i224.us.us.us.us.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  br label %.lr.ph242.us.us

.lr.ph242.us.us:                                  ; preds = %.lr.ph242.us.us.preheader, %bb.ab
  %indvars.iv388 = phi i64 [ 0, %.lr.ph242.us.us.preheader ], [ %indvars.iv.next389, %bb.ab ] ; 2 uses
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178.us.us.us.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph242.us.us
  %i.ay = load i32, ptr %3, align 4, !tbaa !17
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178.us.us.us.us

jvp_array_offset.exit.i.i178.us.us.us.us:         ; preds = %.lr.ph242.us.us, %bb.s
  %i.ba = add nuw nsw i64 %indvars.iv388, %i.ax   ; 2 uses
  %i.bb = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.bc = trunc nuw i64 %i.ba to i32
  %i.bd = icmp sgt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.t, label %.split269.us

bb.t:                                             ; preds = %jvp_array_offset.exit.i.i178.us.us.us.us
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ba ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %.sroa.019.0.i174.us.us.us.us.fr = freeze i64 %i.bf ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 8 uses
  %i.bi = and i64 %.sroa.019.0.i174.us.us.us.us.fr, 128
  %.not.i.i179.us.us.us.us = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i179.us.us.us.us, label %jv_copy.exit170.us.us.us.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !17
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !17
  br label %jv_copy.exit170.us.us.us.us

jv_copy.exit170.us.us.us.us:                      ; preds = %bb.u, %bb.t
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  tail call void @jv_free(i64 %.fr, ptr %1)
  %i.bl = and i64 %.sroa.019.0.i174.us.us.us.us.fr, 128
  %.not.i151.us.us.us.us = icmp eq i64 %i.bl, 0
  br i1 %.not.i151.us.us.us.us, label %.preheader207.us.us.us.us.us.us, label %.preheader207.us.us259.us.us.us

.preheader207.us.us259.us.us.us:                  ; preds = %jv_copy.exit170.us.us.us.us
  br i1 %.not55.i224.us.us262.us.us.us, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us, label %.split235.us.us.us.us.us.thread

jvp_array_offset.exit.i.i.us.us.us.us.us.us:      ; preds = %.preheader207.us.us259.us.us.us, %bb.x
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %bb.x ], [ 0, %.preheader207.us.us259.us.us.us ] ; 2 uses
  %i.bm = add nuw nsw i64 %indvars.iv378, %i.aw   ; 2 uses
  %i.bn = load i32, ptr %i.au, align 4, !tbaa !14
  %i.bo = trunc nuw i64 %i.bm to i32
  %i.bp = icmp sgt i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.v, label %.split.us

bb.v:                                             ; preds = %jvp_array_offset.exit.i.i.us.us.us.us.us.us
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bm ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = and i64 %i.br, 128
  %.not.i.i160.us.us.us.us.us.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i160.us.us.us.us.us.us, label %jv_copy.exit154.us.us.us.us.us.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !17
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us.us.us.us

jv_copy.exit154.us.us.us.us.us.us:                ; preds = %bb.w, %bb.v
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.bx = load i32, ptr %i.bh, align 4, !tbaa !17
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bh, align 4, !tbaa !17
  %i.bz = tail call fastcc i32 @jvp_contains(i64 %i.br, ptr %i.bt, i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr nonnull %i.bh, i32 noundef range(i32 -2147483647, 10002) %i.ah), !inline_history !85 ; 2 uses
  %.not56.i.us.us.us.us.us.us = icmp eq i32 %i.bz, 0
  br i1 %.not56.i.us.us.us.us.us.us, label %bb.x, label %.split235.us.us.us.us.us

bb.x:                                             ; preds = %jv_copy.exit154.us.us.us.us.us.us
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next379, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond382.not, label %.split235.us.us.us.us.us.thread, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us, !llvm.loop !86

.preheader207.us.us.us.us.us.us:                  ; preds = %jv_copy.exit170.us.us.us.us
  br i1 %.not55.i224.us.us.us.us.us.us, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us, label %.split235.us.us.us.us.us.thread

jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us: ; preds = %.preheader207.us.us.us.us.us.us, %bb.aa
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %bb.aa ], [ 0, %.preheader207.us.us.us.us.us.us ] ; 2 uses
  %i.ca = add nuw nsw i64 %indvars.iv383, %i.aw   ; 2 uses
  %i.cb = load i32, ptr %i.au, align 4, !tbaa !14
  %i.cc = trunc nuw i64 %i.ca to i32
  %i.cd = icmp sgt i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.y, label %.split.us

bb.y:                                             ; preds = %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ca ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %i.ci = and i64 %i.cf, 128
  %.not.i.i160.us.us.us.us.us.us.us.us = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i160.us.us.us.us.us.us.us.us, label %jv_copy.exit154.us.us.us.us.us.us.us.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us.us.us.us.us.us

jv_copy.exit154.us.us.us.us.us.us.us.us:          ; preds = %bb.z, %bb.y
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.cl = tail call fastcc i32 @jvp_contains(i64 %i.cf, ptr %i.ch, i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.bh, i32 noundef range(i32 -2147483647, 10002) %i.ah), !inline_history !85 ; 2 uses
  %.not56.i.us.us.us.us.us.us.us.us = icmp eq i32 %i.cl, 0
  br i1 %.not56.i.us.us.us.us.us.us.us.us, label %bb.aa, label %.split235.us.us.us.us.us

bb.aa:                                            ; preds = %jv_copy.exit154.us.us.us.us.us.us.us.us
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %exitcond387.not = icmp eq i64 %indvars.iv.next384, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond387.not, label %.split235.us.us.us.us.us.thread, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us, !llvm.loop !86

.split235.us.us.us.us.us.thread:                  ; preds = %.preheader207.us.us.us.us.us.us, %.preheader207.us.us259.us.us.us, %bb.x, %bb.aa
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.bh), !inline_history !85
  br label %jvp_object_contains.exit

.split235.us.us.us.us.us:                         ; preds = %jv_copy.exit154.us.us.us.us.us.us, %jv_copy.exit154.us.us.us.us.us.us.us.us
  %.us-phi239.us.us.us.us = phi i32 [ %i.cl, %jv_copy.exit154.us.us.us.us.us.us.us.us ], [ %i.bz, %jv_copy.exit154.us.us.us.us.us.us ] ; 2 uses
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.bh), !inline_history !85
  %i.cm = icmp sgt i32 %.us-phi239.us.us.us.us, 0
  br i1 %i.cm, label %bb.ab, label %jvp_object_contains.exit

bb.ab:                                            ; preds = %.split235.us.us.us.us.us
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next389, %.sroa.21.0.extract.shift.i.i185
  br i1 %exitcond392.not, label %jvp_object_contains.exit, label %.lr.ph242.us.us, !llvm.loop !87

.preheader208.us:                                 ; preds = %jv_array_length.exit187.split.us
  br i1 %.not52.i240.us.us, label %.lr.ph242.us.preheader, label %jvp_object_contains.exit

.lr.ph242.us.preheader:                           ; preds = %.preheader208.us
  %i.cn = zext nneg i32 %i.at to i64              ; 2 uses
  %i.co = zext nneg i32 %i.an to i64
  %.not55.i224.us252.us331 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  %.not55.i224.us252.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  br label %.lr.ph242.us

.lr.ph242.us:                                     ; preds = %.lr.ph242.us.preheader, %bb.al
  %indvars.iv373 = phi i64 [ 0, %.lr.ph242.us.preheader ], [ %indvars.iv.next374, %bb.al ] ; 2 uses
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178.us.us321, label %bb.ac

end_hunk_1
begin_hunk_2_@jvp_contains:bb.a
  br i1 %exitcond.not, label %.split235.us256.us.thread, label %jvp_array_offset.exit.i.i.us.us, !llvm.loop !86

.preheader207.us249.us.us:                        ; preds = %jv_copy.exit170.us.us323
  br i1 %.not55.i224.us252.us.us, label %jvp_array_offset.exit.i.i.us.us.us302.us, label %.split235.us256.us.thread

jvp_array_offset.exit.i.i.us.us.us302.us:         ; preds = %.preheader207.us249.us.us, %bb.ak
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %bb.ak ], [ 0, %.preheader207.us249.us.us ] ; 2 uses
  %i.dv = load i32, ptr %1, align 4, !tbaa !17
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %1, align 4, !tbaa !17
  %i.dx = add nuw nsw i64 %indvars.iv368, %i.cn   ; 2 uses
  %i.dy = load i32, ptr %i.au, align 4, !tbaa !14
  %i.dz = trunc nuw i64 %i.dx to i32
  %i.ea = icmp sgt i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.ai, label %.split.us

bb.ai:                                            ; preds = %jvp_array_offset.exit.i.i.us.us.us302.us
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.dx ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.ef = and i64 %i.ec, 128
  %.not.i.i160.us.us.us303.us = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i160.us.us.us303.us, label %jv_copy.exit154.us.us.us304.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !17
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us304.us

jv_copy.exit154.us.us.us304.us:                   ; preds = %bb.aj, %bb.ai
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.ei = tail call fastcc i32 @jvp_contains(i64 %i.ec, ptr %i.ee, i64 %.sroa.019.0.i174.us.us324.fr, ptr %i.cy, i32 noundef range(i32 -2147483647, 10002) %i.ah), !inline_history !85 ; 2 uses
  %.not56.i.us.us.us307.us = icmp eq i32 %i.ei, 0
  br i1 %.not56.i.us.us.us307.us, label %bb.ak, label %.split235.us256.us

bb.ak:                                            ; preds = %jv_copy.exit154.us.us.us304.us
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next369, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond372.not, label %.split235.us256.us.thread, label %jvp_array_offset.exit.i.i.us.us.us302.us, !llvm.loop !86

.split235.us256.us.thread:                        ; preds = %.preheader207.us249.us.us, %.preheader207.us249.us328, %bb.ah, %bb.ak
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us324.fr, ptr %i.cy), !inline_history !85
  br label %jvp_object_contains.exit

.split235.us256.us:                               ; preds = %jv_copy.exit154.us.us, %jv_copy.exit154.us.us.us304.us
  %.us-phi312.us = phi i32 [ %i.ei, %jv_copy.exit154.us.us.us304.us ], [ %i.du, %jv_copy.exit154.us.us ] ; 2 uses
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us324.fr, ptr %i.cy), !inline_history !85
  %i.ej = icmp sgt i32 %.us-phi312.us, 0
  br i1 %i.ej, label %bb.al, label %jvp_object_contains.exit

bb.al:                                            ; preds = %.split235.us256.us
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %.sroa.21.0.extract.shift.i.i185
  br i1 %exitcond377.not, label %jvp_object_contains.exit, label %.lr.ph242.us, !llvm.loop !87

jv_array_length.exit187.split:                    ; preds = %jv_array_length.exit187
  br i1 %.not52.i240.us.us, label %.lr.ph242.split, label %jvp_object_contains.exit

.lr.ph242.split:                                  ; preds = %jv_array_length.exit187.split
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178, label %bb.am

bb.am:                                            ; preds = %.lr.ph242.split
  %i.ek = load i32, ptr %3, align 4, !tbaa !17
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178

jvp_array_offset.exit.i.i178:                     ; preds = %.lr.ph242.split, %bb.am
  %i.em = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.en = icmp slt i32 %i.an, %i.em
  br i1 %i.en, label %bb.an, label %.split269.us

.split269.us:                                     ; preds = %jvp_array_offset.exit.i.i178.us.us321, %jvp_array_offset.exit.i.i178.us.us.us.us, %jvp_array_offset.exit.i.i178
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.an:                                            ; preds = %jvp_array_offset.exit.i.i178
  %i.eo = zext nneg i32 %i.an to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = and i64 %i.eq, 128
  %.not.i.i179 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i179, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !17
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not.i167, label %jv_copy.exit170, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = load i32, ptr %1, align 4, !tbaa !17
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit170

jv_copy.exit170:                                  ; preds = %bb.aq, %bb.ap
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

.split.us:                                        ; preds = %jvp_array_offset.exit.i.i.us.us, %jvp_array_offset.exit.i.i.us.us.us302.us, %jvp_array_offset.exit.i.i.us.us.us.us.us.us, %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.ar:                                            ; preds = %bb.c
  %i.ey = and i64 %2, 128
  %.not.i119 = icmp eq i64 %i.ey, 0
  br i1 %.not.i119, label %jv_copy.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = load i32, ptr %3, align 4, !tbaa !17
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.ar, %bb.as
  %i.fb = and i64 %2, 15
  %i.fc = icmp eq i64 %i.fb, 5
  br i1 %i.fc, label %jv_string_length_bytes.exit, label %bb.at

bb.at:                                            ; preds = %jv_copy.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1328, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_length_bytes) #19
  unreachable

jv_string_length_bytes.exit:                      ; preds = %jv_copy.exit
  %i.fd = getelementptr i8, ptr %3, i64 8
  %.val.i = load i32, ptr %i.fd, align 4, !tbaa !14
  %i.fe = lshr i32 %.val.i, 1                     ; 2 uses
  tail call void @jv_free(i64 %2, ptr %3)
  %.not114 = icmp eq i32 %i.fe, 0
  br i1 %.not114, label %jvp_object_contains.exit, label %bb.au

bb.au:                                            ; preds = %jv_string_length_bytes.exit
  %i.ff = and i64 %.fr, 15
  %i.fg = icmp eq i64 %i.ff, 5
  br i1 %i.fg, label %jv_string_value.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1482, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_value) #19
  unreachable

jv_string_value.exit:                             ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fi = and i64 %.fr, 128
  %.not.i120 = icmp eq i64 %i.fi, 0
  br i1 %.not.i120, label %jv_string_value.exit126, label %bb.aw

bb.aw:                                            ; preds = %jv_string_value.exit
  %i.fj = load i32, ptr %1, align 4, !tbaa !17
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %1, align 4, !tbaa !17
  br label %jv_string_value.exit126

jv_string_value.exit126:                          ; preds = %jv_string_value.exit, %bb.aw
  %i.fl = getelementptr i8, ptr %1, i64 8
  %.val.i124 = load i32, ptr %i.fl, align 4, !tbaa !14
  %i.fm = lshr i32 %.val.i124, 1
  tail call void @jv_free(i64 %.fr, ptr %1)
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fp = zext nneg i32 %i.fe to i64
  %i.fq = tail call ptr @_jq_memmem(ptr noundef nonnull %i.fh, i64 noundef %i.fn, ptr noundef nonnull %i.fo, i64 noundef %i.fp) #20
  %i.fr = icmp ne ptr %i.fq, null
  %i.fs = zext i1 %i.fr to i32
  br label %jvp_object_contains.exit

bb.ax:                                            ; preds = %bb.c
  %i.ft = and i64 %.fr, 128
  %.not.i127 = icmp eq i64 %i.ft, 0
  br i1 %.not.i127, label %jv_copy.exit130, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fu = load i32, ptr %1, align 4, !tbaa !17
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit130

jv_copy.exit130:                                  ; preds = %bb.ax, %bb.ay
  %i.fw = and i64 %2, 128
  %.not.i131 = icmp eq i64 %i.fw, 0
  br i1 %.not.i131, label %jv_copy.exit134, label %bb.az

bb.az:                                            ; preds = %jv_copy.exit130
  %i.fx = load i32, ptr %3, align 4, !tbaa !17
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit134

jv_copy.exit134:                                  ; preds = %jv_copy.exit130, %bb.az
  %i.fz = tail call fastcc i32 @jvp_equal(i64 %.fr, ptr %1, i64 %2, ptr %3, i32 noundef 0)
  br label %jvp_object_contains.exit

jvp_object_contains.exit:                         ; preds = %bb.al, %.split235.us256.us, %bb.ab, %.split235.us.us.us.us.us, %jvp_object_size.exit.i.i150, %bb.o, %jv_object_iter_next.exit, %10, %jv_copy.exit138.us.us, %bb.h, %jv_copy.exit134, %bb.b, %jv_string_length_bytes.exit, %jv_string_value.exit126, %jv_array_length.exit187.split, %.preheader.us, %bb.m, %.preheader208.us.us, %.preheader208.us, %.split235.us.us.us.us.us.thread, %.split235.us256.us.thread, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.fz, %jv_copy.exit134 ], [ 1, %jv_string_length_bytes.exit ], [ 1, %jv_array_length.exit187.split ], [ 0, %bb.b ], [ %i.fs, %jv_string_value.exit126 ], [ 1, %.preheader208.us.us ], [ 1, %.preheader208.us ], [ 1, %bb.ab ], [ 1, %.preheader.us ], [ 1, %bb.h ], [ 0, %.split235.us256.us.thread ], [ 1, %bb.m ], [ 0, %.split235.us.us.us.us.us.thread ], [ %8, %10 ], [ %35, %bb.o ], [ 1, %jvp_object_size.exit.i.i150 ], [ %8, %jv_copy.exit138.us.us ], [ %35, %jv_object_iter_next.exit ], [ %.us-phi239.us.us.us.us, %.split235.us.us.us.us.us ], [ %.us-phi312.us, %.split235.us256.us ], [ 1, %bb.al ]
  tail call void @jv_free(i64 %.fr, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %.0
}

declare ptr @decNumberToString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @decContextClearStatus(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @decNumberFromString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @decNumberReduce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @jvp_strtod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @tsd_dtoa_context_get() local_unnamed_addr #4

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal void @jvp_hash_seed_init() #1 {
bb.a:
  %i.a = tail call i32 @arc4random() #20
  store i32 %i.a, ptr @hash_seed, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind
declare i32 @arc4random() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @jvp_object_find_slot(i64 %0, ptr nofree readonly captures(ret: address, provenance) %1, i64 %2, ptr nofree captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %.fr56 = freeze i64 %0                          ; 3 uses
  %.fr = freeze i64 %2                            ; 2 uses
  %i.a = tail call fastcc i32 @jvp_string_hash(i64 %.fr, ptr %3) ; 3 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !14     ; 4 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %jvp_string_equal.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, -1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.fr56, 15
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %jvp_object_size.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_size.exit.i:                           ; preds = %bb.c
  %.sroa.21.0.extract.shift.i.i = lshr i64 %.fr56, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  %i.g = icmp slt i32 %i.b, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.g, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %jvp_object_size.exit.i, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

.lr.ph:                                           ; preds = %jvp_object_size.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = zext nneg i32 %i.b to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = and i64 %.fr, 15
  %i.l = icmp eq i64 %i.k, 5
  %i.m = getelementptr i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.21.0.extract.shift.i.i.i = lshr i64 %.fr56, 32
  %.sroa.21.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us.split.us, label %.lr.ph.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %jvp_object_next_slot.exit.us.us
  %.01426.us.us = phi ptr [ %i.ah, %jvp_object_next_slot.exit.us.us ], [ %i.j, %.lr.ph ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %bb.f, label %jvp_string_equal.exit.thread.us.us

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 15
  %i.x = icmp eq i64 %i.w, 5
  br i1 %i.x, label %jvp_string_ptr.exit19.i.us.us, label %.split.us

jvp_string_ptr.exit19.i.us.us:                    ; preds = %bb.f
  %.val18.i.us.us = load i32, ptr %i.m, align 4, !tbaa !14
  %i.y = lshr i32 %.val18.i.us.us, 1              ; 2 uses
  %i.z = getelementptr i8, ptr %i.t, i64 8
  %.val17.i.us.us = load i32, ptr %i.z, align 4, !tbaa !14
  %i.aa = lshr i32 %.val17.i.us.us, 1
  %.not.i.us.us = icmp eq i32 %i.y, %i.aa
  br i1 %.not.i.us.us, label %jvp_string_equal.exit.us.us, label %jvp_string_equal.exit.thread.us.us

jvp_string_equal.exit.us.us:                      ; preds = %jvp_string_ptr.exit19.i.us.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = zext nneg i32 %i.y to i64
  %bcmp.i.us.us = tail call i32 @bcmp(ptr nonnull readonly %i.n, ptr nonnull readonly %i.ab, i64 %i.ac)
  %.not20.us.us = icmp eq i32 %bcmp.i.us.us, 0
  br i1 %.not20.us.us, label %jvp_string_equal.exit._crit_edge, label %jvp_string_equal.exit.thread.us.us

jvp_string_equal.exit.thread.us.us:               ; preds = %jvp_string_equal.exit.us.us, %jvp_string_ptr.exit19.i.us.us, %.lr.ph.split.us.split.us
  %.014.val.us.us = load i32, ptr %.01426.us.us, align 8, !tbaa !40 ; 4 uses
  %i.ad = icmp eq i32 %.014.val.us.us, -1
  br i1 %i.ad, label %jvp_string_equal.exit._crit_edge, label %bb.g

bb.g:                                             ; preds = %jvp_string_equal.exit.thread.us.us
  %i.ae = icmp sgt i32 %.014.val.us.us, -1
  %i.af = icmp slt i32 %.014.val.us.us, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %jvp_object_next_slot.exit.us.us, label %.split29.us

jvp_object_next_slot.exit.us.us:                  ; preds = %bb.g
  %i.ag = zext nneg i32 %.014.val.us.us to i64
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ag
  br label %.lr.ph.split.us.split.us, !llvm.loop !88

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = icmp eq i32 %i.aj, %i.a
  br i1 %i.ak, label %.split.us44, label %jvp_string_equal.exit.thread.us37

jvp_string_equal.exit.thread.us37:                ; preds = %.lr.ph.split, %jvp_object_next_slot.exit.us41
  %.01426.us3671 = phi ptr [ %i.ap, %jvp_object_next_slot.exit.us41 ], [ %i.j, %.lr.ph.split ]
  %.014.val.us38 = load i32, ptr %.01426.us3671, align 8, !tbaa !40 ; 4 uses
  %i.al = icmp eq i32 %.014.val.us38, -1
  br i1 %i.al, label %jvp_string_equal.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %jvp_string_equal.exit.thread.us37
  %i.am = icmp sgt i32 %.014.val.us38, -1
  %i.an = icmp slt i32 %.014.val.us38, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond53 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond53, label %jvp_object_next_slot.exit.us41, label %.split29.us

jvp_object_next_slot.exit.us41:                   ; preds = %bb.h
  %i.ao = zext nneg i32 %.014.val.us38 to i64
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41
  %i.as = icmp eq i32 %i.ar, %i.a
  br i1 %i.as, label %.split.us44, label %jvp_string_equal.exit.thread.us37, !llvm.loop !88

.split.us44:                                      ; preds = %jvp_object_next_slot.exit.us41, %.lr.ph.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.8, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

.split.us:                                        ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1301, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

.split29.us:                                      ; preds = %bb.h, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_string_equal.exit._crit_edge:                 ; preds = %jvp_string_equal.exit.thread.us37, %jvp_string_equal.exit.thread.us.us, %jvp_string_equal.exit.us.us, %bb.a
  %.014.lcssa = phi ptr [ null, %bb.a ], [ %.01426.us.us, %jvp_string_equal.exit.us.us ], [ null, %jvp_string_equal.exit.thread.us.us ], [ null, %jvp_string_equal.exit.thread.us37 ]
  ret ptr %.014.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, ptr } @jvp_object_unshare(i64 %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1730, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_unshare) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val79 = load i32, ptr %1, align 4, !tbaa !17  ; 2 uses
  %i.c = icmp sgt i32 %.val79, 0
  br i1 %i.c, label %jvp_refcnt_unshared.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.8, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_refcnt_unshared) #19
  unreachable

jvp_refcnt_unshared.exit:                         ; preds = %bb.c
  %.not = icmp eq i32 %.val79, 1
  br i1 %.not, label %bb.m, label %jvp_object_size.exit

jvp_object_size.exit:                             ; preds = %jvp_refcnt_unshared.exit
end_hunk_2
