Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpu?download=true
inline.NumInlined: 224
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@x86_cpu_common_class_init:bb.a
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp eq i64 %indvars.iv46, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.657, ptr noundef nonnull @.str.408, i32 noundef 10426, ptr noundef nonnull @__PRETTY_FUNCTION__.x86_cpu_register_bit_prop) #21
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = or i64 %i.at, %i.al
  store i64 %i.au, ptr %i.as, align 8
  br label %x86_cpu_register_feature_bit_props.exit

bb.k:                                             ; preds = %bb.g
  %i.av = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #23 ; 3 uses
  store i32 %i.ag, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.al, ptr %i.aw, align 8
  %i.ax = tail call ptr @object_class_property_add(ptr noundef %i.a, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.658, ptr noundef nonnull @x86_cpu_get_bit_prop, ptr noundef nonnull @x86_cpu_set_bit_prop, ptr noundef null, ptr noundef nonnull %i.av) #20 ; 0 uses
  br label %x86_cpu_register_feature_bit_props.exit

x86_cpu_register_feature_bit_props.exit:          ; preds = %bb.b, %bb.j, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.l, label %bb.b, !llvm.loop !31

bb.l:                                             ; preds = %x86_cpu_register_feature_bit_props.exit
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 48
  br i1 %exitcond49.not, label %bb.m, label %.preheader, !llvm.loop !32

bb.m:                                             ; preds = %bb.l
  ret void
}

declare ptr @object_property_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpu_get_feature_words(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %5 = alloca [48 x %struct.X86CPUFeatureWordInfo], align 16 ; 4 uses
  %6 = alloca [48 x %struct.X86CPUFeatureWordInfoList], align 16 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %5, i8 0, i64 1920, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %6, i8 0, i64 768, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.b = phi ptr [ null, %bb.a ], [ %i.ab, %bb.d ] ; 2 uses
  %i.c = getelementptr inbounds nuw [568 x i8], ptr @feature_word_info, i64 %indvars.iv ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %5, i64 %indvars.iv ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  store i64 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.j = load i8, ptr %i.i, align 4, !range !10, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 532
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [16 x i8], ptr @x86_reg_info_32, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv ; 3 uses
  store ptr %i.b, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.e, ptr %i.aa, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.b, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !33

bb.e:                                             ; preds = %bb.d
  store ptr %i.ab, ptr %i.a, align 8
  %i.ac = call zeroext i1 @visit_type_X86CPUFeatureWordInfoList(ptr noundef %1, ptr noundef nonnull @.str.467, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

declare ptr @object_property_add_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @accel_cpu_instance_init(ptr noundef) local_unnamed_addr #7

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @visit_type_X86CPUFeatureWordInfoList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i1 @object_property_set_int(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i1 @object_property_set_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @x86_cpu_get_versioned_cache_info(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, -2
  %i.d = load i32, ptr @default_cpu_version, align 4
  %spec.select.i = select i1 %i.c, i32 %i.d, i32 %i.b ; 2 uses
  %i.e = icmp eq i32 %spec.select.i, -1
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %i.e, label %bb.b, label %x86_cpu_model_resolve_version.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.pre, i64 448
  %.val.val.i = load ptr, ptr %i.f, align 8       ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.val.i, null
  %.x86_cpu_def_get_versions.default_version_list.i.i.i = select i1 %.not.i.i.i, ptr @x86_cpu_def_get_versions.default_version_list, ptr %.val.val.i
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.04.i.i = phi i32 [ 0, %bb.b ], [ %i.g, %bb.c ]
  %.0.i.i = phi ptr [ %.x86_cpu_def_get_versions.default_version_list.i.i.i, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %.0.i.i, align 8           ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  br i1 %.not.i.i, label %x86_cpu_model_resolve_version.exit, label %bb.c, !llvm.loop !1

x86_cpu_model_resolve_version.exit:               ; preds = %bb.c, %bb.a
  %.05.i = phi i32 [ %spec.select.i, %bb.a ], [ %.04.i.i, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 440
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %.05.i, 0
  br i1 %i.k, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %x86_cpu_model_resolve_version.exit
  %i.l = getelementptr i8, ptr %.pre, i64 448
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  %.x86_cpu_def_get_versions.default_version_list.i = select i1 %.not.i, ptr @x86_cpu_def_get_versions.default_version_list, ptr %.val ; 2 uses
  %i.m = load i32, ptr %.x86_cpu_def_get_versions.default_version_list.i, align 8 ; 2 uses
  %.not1 = icmp eq i32 %i.m, 0
  br i1 %.not1, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.0142, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ %i.m, %bb.d ]
  %.03 = phi ptr [ %spec.select, %bb.e ], [ %i.j, %bb.d ]
  %.0142 = phi ptr [ %i.n, %bb.e ], [ %.x86_cpu_def_get_versions.default_version_list.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0142, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.r, null
  %spec.select = select i1 %.not18, ptr %.03, ptr %i.r ; 2 uses
  %i.s = icmp eq i32 %i.p, %.05.i
  br i1 %i.s, label %._crit_edge, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.512, ptr noundef nonnull @.str.408, i32 noundef 8448, ptr noundef nonnull @__PRETTY_FUNCTION__.x86_cpu_get_versioned_cache_info) #21
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %x86_cpu_model_resolve_version.exit
  %.015 = phi ptr [ %i.j, %x86_cpu_model_resolve_version.exit ], [ %spec.select, %.lr.ph ]
  ret ptr %.015
}

declare void @device_class_set_parent_realize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpu_realizefn(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 96 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %0) #20
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU_GET_CLASS) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32728
  %i.f = load i8, ptr %i.e, align 8, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32729
  %i.i = load i8, ptr %i.h, align 1, !range !10, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.408, i32 noundef 10084, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.524) #20
  br label %bb.dw

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 31912
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.408, i32 noundef 10089, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.525) #20
  br label %bb.dw

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 31816 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call zeroext i1 @object_property_set_str(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.538, ptr noundef nonnull @.str.539, ptr noundef nonnull @error_abort) #20 ; 0 uses
  %.pre.i = load ptr, ptr %i.n, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi ptr [ %.pre.i, %bb.g ], [ %i.o, %bb.f ]
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #22 ; 2 uses
  %i.s = icmp ugt i64 %i.r, 12
  br i1 %i.s, label %bb.i, label %x86_cpu_hyperv_realize.exit

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.540) #20
  br label %x86_cpu_hyperv_realize.exit

x86_cpu_hyperv_realize.exit:                      ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ 12, %bb.i ], [ %i.r, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 31840 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, i8 noundef 0, i64 noundef 12, i1 noundef false) #20
  %i.u = load ptr, ptr %i.n, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 1 %i.u, i64 noundef %.0.i, i1 noundef false) #20
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 31852
  store <4 x i32> <i32 824407624, i32 0, i32 0, i32 0>, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 31868
  store i32 64, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 31872
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 31876
  store i32 0, ptr %i.y, align 4
  call void @x86_cpu_expand_features(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.j, label %.thread128

bb.j:                                             ; preds = %x86_cpu_hyperv_realize.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32712
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %.not106 = icmp eq i64 %i.ab, -64
  br i1 %.not106, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not107 = icmp ult i64 %i.ab, 64
  br i1 %.not107, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.408, i32 noundef 10110, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.526) #20
  br label %bb.dw

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 30408 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, -64
  %i.af = or disjoint i64 %i.ae, %i.ab
  store i64 %i.af, ptr %i.ac, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 30208 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 31904
  %i.ai = load i8, ptr %i.ah, align 16, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.o, label %.split

.split:                                           ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 31905
  %2 = load i8, ptr %i.ak, align 1, !range !10, !noundef !11
  %3 = trunc nuw i8 %2 to i1
  %4 = load i8, ptr @tcg_allowed, align 1, !range !10
  %5 = trunc nuw i8 %4 to i1
  %i.al = load i8, ptr @qtest_allowed, align 1, !range !10
  %i.am = trunc nuw i8 %i.al to i1
  %6 = select i1 %5, i1 true, i1 %i.am
  %7 = select i1 %6, ptr @.str.542, ptr @.str.541 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 31906 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 31936 ; 3 uses
  br i1 %3, label %.split.i.preheader, label %.split.us.i.a

bb.o:                                             ; preds = %bb.n
  %i.an = load i8, ptr @tcg_allowed, align 1, !range !10
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = load i8, ptr @qtest_allowed, align 1, !range !10
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.ao, i1 true, i1 %i.aq
  %i.as = select i1 %i.ar, ptr @.str.542, ptr @.str.541
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 31906
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 31936
  br label %.split.i.preheader

.split.i.preheader:                               ; preds = %.split, %bb.o
  %.ph = phi ptr [ %9, %.split ], [ %i.au, %bb.o ]
  %.ph130 = phi ptr [ %8, %.split ], [ %i.at, %bb.o ] ; 2 uses
  %.ph131 = phi ptr [ %7, %.split ], [ %i.as, %bb.o ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 31936
  br label %.split.i

.split.us.i.a:                                    ; preds = %.split, %mark_unavailable_features.exit.us.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %mark_unavailable_features.exit.us.i ], [ 0, %.split ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [568 x i8], ptr @feature_word_info, i64 %indvars.iv.i.a ; 2 uses
  %i.ax = load i8, ptr @tcg_allowed, align 1, !range !10, !noundef !11
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr @qtest_allowed, align 1, !range !10
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.us.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i.us.i, label %bb.p, label %x86_cpu_get_supported_feature_word.exit.us.i

bb.p:                                             ; preds = %.split.us.i.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 536
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = xor i64 %i.bc, -1
  br label %x86_cpu_get_supported_feature_word.exit.us.i

x86_cpu_get_supported_feature_word.exit.us.i:     ; preds = %bb.p, %.split.us.i.a
  %.021.i.us.i = phi i64 [ 0, %.split.us.i.a ], [ %i.bd, %bb.p ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.a ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, %.021.i.us.i             ; 2 uses
  %i.bh = call fastcc ptr @feature_word_description(ptr noundef nonnull %i.aw)
  %i.bi = load i8, ptr %8, align 2, !range !10, !noundef !11
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %mark_unavailable_features.exit.us.i, label %bb.q

bb.q:                                             ; preds = %x86_cpu_get_supported_feature_word.exit.us.i
  %i.bk = xor i64 %i.bg, -1
  %i.bl = load i64, ptr %i.be, align 8
  %i.bm = and i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.be, align 8
  br label %mark_unavailable_features.exit.us.i

mark_unavailable_features.exit.us.i:              ; preds = %bb.q, %x86_cpu_get_supported_feature_word.exit.us.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv.i.a ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = or i64 %i.bo, %i.bg
  store i64 %i.bp, ptr %i.bn, align 8
  call void @g_free(ptr noundef %i.bh) #20
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %indvars.iv.next.i.a, 48
  br i1 %exitcond.not.i.a, label %.split44.us.i, label %.split.us.i.a, !llvm.loop !34

.split.i:                                         ; preds = %.split.i.preheader, %mark_unavailable_features.exit.loopexit.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %mark_unavailable_features.exit.loopexit.i ], [ 0, %.split.i.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [568 x i8], ptr @feature_word_info, i64 %indvars.iv47.i ; 3 uses
  %i.br = load i8, ptr @tcg_allowed, align 1, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = load i8, ptr @qtest_allowed, align 1, !range !10
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond.i.i = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond.i.i, label %bb.r, label %x86_cpu_get_supported_feature_word.exit.i

bb.r:                                             ; preds = %.split.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 536
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = xor i64 %i.bw, -1
  br label %x86_cpu_get_supported_feature_word.exit.i

x86_cpu_get_supported_feature_word.exit.i:        ; preds = %bb.r, %.split.i
  %.021.i.i = phi i64 [ 0, %.split.i ], [ %i.bx, %bb.r ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv47.i ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = and i64 %i.bz, %.021.i.i                ; 3 uses
  %i.cb = call fastcc ptr @feature_word_description(ptr noundef nonnull %i.bq) ; 2 uses
  %i.cc = load i8, ptr %.ph130, align 2, !range !10, !noundef !11
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.preheader.i.i, label %bb.s

bb.s:                                             ; preds = %x86_cpu_get_supported_feature_word.exit.i
  %i.ce = xor i64 %i.ca, -1
  %i.cf = load i64, ptr %i.by, align 8
  %i.cg = and i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.by, align 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s, %x86_cpu_get_supported_feature_word.exit.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv47.i ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = or i64 %i.ci, %i.ca
  store i64 %i.cj, ptr %i.ch, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.v ] ; 4 uses
  %i.cl = shl nuw i64 1, %indvars.iv.i.i
  %i.cm = and i64 %i.cl, %i.ca
  %.not24.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not24.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not25.i.i = icmp eq ptr %i.co, null           ; 2 uses
  %i.cp = select i1 %.not25.i.i, ptr @.str.411, ptr @.str.410
  %spec.select.i.i = select i1 %.not25.i.i, ptr @.str.411, ptr %i.co
  %i.cq = trunc nuw nsw i64 %indvars.iv.i.i to i32
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.409, ptr noundef nonnull %.ph131, ptr noundef %i.cb, ptr noundef nonnull %i.cp, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.cq) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 64
  br i1 %exitcond.not.i.i, label %mark_unavailable_features.exit.loopexit.i, label %bb.t, !llvm.loop !0

mark_unavailable_features.exit.loopexit.i:        ; preds = %bb.v
  call void @g_free(ptr noundef %i.cb) #20
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next48.i, 48
  br i1 %exitcond50.not.i, label %.split44.us.i, label %.split.i, !llvm.loop !34

.split44.us.i:                                    ; preds = %mark_unavailable_features.exit.us.i, %mark_unavailable_features.exit.loopexit.i
  %10 = phi ptr [ %.ph, %mark_unavailable_features.exit.loopexit.i ], [ %9, %mark_unavailable_features.exit.us.i ]
  %i.cr = phi ptr [ %.ph130, %mark_unavailable_features.exit.loopexit.i ], [ %8, %mark_unavailable_features.exit.us.i ]
  %i.cs = phi ptr [ %.ph131, %mark_unavailable_features.exit.loopexit.i ], [ %7, %mark_unavailable_features.exit.us.i ] ; 3 uses
  %11 = phi i1 [ true, %mark_unavailable_features.exit.loopexit.i ], [ false, %mark_unavailable_features.exit.us.i ] ; 3 uses
  %i.ct = load i64, ptr %10, align 8
  %.not.not.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.not.i.i, label %bb.w, label %x86_cpu_have_filtered_features.exit.i

bb.w:                                             ; preds = %.split44.us.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 31944
  %i.cv = load i64, ptr %i.cu, align 8
  %.not.1.not.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.1.not.i.i, label %bb.x, label %x86_cpu_have_filtered_features.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 31952
  %i.cx = load i64, ptr %i.cw, align 16
  %.not.2.not.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.2.not.i.i, label %bb.y, label %x86_cpu_have_filtered_features.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 31960
  %i.cz = load i64, ptr %i.cy, align 8
  %.not.3.not.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.3.not.i.i, label %bb.z, label %x86_cpu_have_filtered_features.exit.i

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 31968
  %i.db = load i64, ptr %i.da, align 16
  %.not.4.not.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.4.not.i.i, label %bb.aa, label %x86_cpu_have_filtered_features.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 31976
  %i.dd = load i64, ptr %i.dc, align 8
  %.not.5.not.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.5.not.i.i, label %bb.ab, label %x86_cpu_have_filtered_features.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 31984
  %i.df = load i64, ptr %i.de, align 16
  %.not.6.not.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.6.not.i.i, label %bb.ac, label %x86_cpu_have_filtered_features.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 31992
  %i.dh = load i64, ptr %i.dg, align 8
  %.not.7.not.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.7.not.i.i, label %bb.ad, label %x86_cpu_have_filtered_features.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 32000
  %i.dj = load i64, ptr %i.di, align 16
  %.not.8.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.8.not.i.i, label %bb.ae, label %x86_cpu_have_filtered_features.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 32008
  %i.dl = load i64, ptr %i.dk, align 8
  %.not.9.not.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.9.not.i.i, label %bb.af, label %x86_cpu_have_filtered_features.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32016
  %i.dn = load i64, ptr %i.dm, align 16
  %.not.10.not.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.10.not.i.i, label %bb.ag, label %x86_cpu_have_filtered_features.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 32024
  %i.dp = load i64, ptr %i.do, align 8
  %.not.11.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.11.not.i.i, label %bb.ah, label %x86_cpu_have_filtered_features.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 32032
  %i.dr = load i64, ptr %i.dq, align 16
  %.not.12.not.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.12.not.i.i, label %bb.ai, label %x86_cpu_have_filtered_features.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 32040
  %i.dt = load i64, ptr %i.ds, align 8
  %.not.13.not.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.13.not.i.i, label %bb.aj, label %x86_cpu_have_filtered_features.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 32048
  %i.dv = load i64, ptr %i.du, align 16
  %.not.14.not.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.14.not.i.i, label %bb.ak, label %x86_cpu_have_filtered_features.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 32056
  %i.dx = load i64, ptr %i.dw, align 8
  %.not.15.not.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.15.not.i.i, label %bb.al, label %x86_cpu_have_filtered_features.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 32064
  %i.dz = load i64, ptr %i.dy, align 16
  %.not.16.not.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.16.not.i.i, label %bb.am, label %x86_cpu_have_filtered_features.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 32072
  %i.eb = load i64, ptr %i.ea, align 8
  %.not.17.not.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.17.not.i.i, label %bb.an, label %x86_cpu_have_filtered_features.exit.i

bb.an:                                            ; preds = %bb.am
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 32080
  %i.ed = load i64, ptr %i.ec, align 16
  %.not.18.not.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.18.not.i.i, label %bb.ao, label %x86_cpu_have_filtered_features.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 32088
  %i.ef = load i64, ptr %i.ee, align 8
  %.not.19.not.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.19.not.i.i, label %bb.ap, label %x86_cpu_have_filtered_features.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 32096
  %i.eh = load i64, ptr %i.eg, align 16
  %.not.20.not.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.20.not.i.i, label %bb.aq, label %x86_cpu_have_filtered_features.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32104
  %i.ej = load i64, ptr %i.ei, align 8
  %.not.21.not.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.21.not.i.i, label %bb.ar, label %x86_cpu_have_filtered_features.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 32112
  %i.el = load i64, ptr %i.ek, align 16
  %.not.22.not.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.22.not.i.i, label %bb.as, label %x86_cpu_have_filtered_features.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 32120
  %i.en = load i64, ptr %i.em, align 8
  %.not.23.not.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.23.not.i.i, label %bb.at, label %x86_cpu_have_filtered_features.exit.i

bb.at:                                            ; preds = %bb.as
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 32128
  %i.ep = load i64, ptr %i.eo, align 16
  %.not.24.not.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.24.not.i.i, label %bb.au, label %x86_cpu_have_filtered_features.exit.i

bb.au:                                            ; preds = %bb.at
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 32136
  %i.er = load i64, ptr %i.eq, align 8
  %.not.25.not.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.25.not.i.i, label %bb.av, label %x86_cpu_have_filtered_features.exit.i

bb.av:                                            ; preds = %bb.au
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 32144
  %i.et = load i64, ptr %i.es, align 16
  %.not.26.not.i.i = icmp eq i64 %i.et, 0
  br i1 %.not.26.not.i.i, label %bb.aw, label %x86_cpu_have_filtered_features.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 32152
  %i.ev = load i64, ptr %i.eu, align 8
  %.not.27.not.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.27.not.i.i, label %bb.ax, label %x86_cpu_have_filtered_features.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 32160
  %i.ex = load i64, ptr %i.ew, align 16
  %.not.28.not.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.28.not.i.i, label %bb.ay, label %x86_cpu_have_filtered_features.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 32168
  %i.ez = load i64, ptr %i.ey, align 8
  %.not.29.not.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.29.not.i.i, label %bb.az, label %x86_cpu_have_filtered_features.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 32176
  %i.fb = load i64, ptr %i.fa, align 16
  %.not.30.not.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.30.not.i.i, label %bb.ba, label %x86_cpu_have_filtered_features.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 32184
  %i.fd = load i64, ptr %i.fc, align 8
  %.not.31.not.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.31.not.i.i, label %bb.bb, label %x86_cpu_have_filtered_features.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 32192
  %i.ff = load i64, ptr %i.fe, align 16
  %.not.32.not.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.32.not.i.i, label %bb.bc, label %x86_cpu_have_filtered_features.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 32200
  %i.fh = load i64, ptr %i.fg, align 8
  %.not.33.not.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.33.not.i.i, label %bb.bd, label %x86_cpu_have_filtered_features.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 32208
  %i.fj = load i64, ptr %i.fi, align 16
  %.not.34.not.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.34.not.i.i, label %bb.be, label %x86_cpu_have_filtered_features.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 32216
  %i.fl = load i64, ptr %i.fk, align 8
  %.not.35.not.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not.35.not.i.i, label %bb.bf, label %x86_cpu_have_filtered_features.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 32224
  %i.fn = load i64, ptr %i.fm, align 16
  %.not.36.not.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.36.not.i.i, label %bb.bg, label %x86_cpu_have_filtered_features.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 32232
  %i.fp = load i64, ptr %i.fo, align 8
  %.not.37.not.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not.37.not.i.i, label %bb.bh, label %x86_cpu_have_filtered_features.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 32240
  %i.fr = load i64, ptr %i.fq, align 16
  %.not.38.not.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.38.not.i.i, label %bb.bi, label %x86_cpu_have_filtered_features.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 32248
  %i.ft = load i64, ptr %i.fs, align 8
  %.not.39.not.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.39.not.i.i, label %bb.bj, label %x86_cpu_have_filtered_features.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 32256
  %i.fv = load i64, ptr %i.fu, align 16
  %.not.40.not.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.40.not.i.i, label %bb.bk, label %x86_cpu_have_filtered_features.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 32264
  %i.fx = load i64, ptr %i.fw, align 8
  %.not.41.not.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not.41.not.i.i, label %bb.bl, label %x86_cpu_have_filtered_features.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 32272
  %i.fz = load i64, ptr %i.fy, align 16
  %.not.42.not.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.42.not.i.i, label %bb.bm, label %x86_cpu_have_filtered_features.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 32280
  %i.gb = load i64, ptr %i.ga, align 8
  %.not.43.not.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.43.not.i.i, label %bb.bn, label %x86_cpu_have_filtered_features.exit.i

bb.bn:                                            ; preds = %bb.bm
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 32288
  %i.gd = load i64, ptr %i.gc, align 16
  %.not.44.not.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.44.not.i.i, label %bb.bo, label %x86_cpu_have_filtered_features.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 32296
  %i.gf = load i64, ptr %i.ge, align 8
  %.not.45.not.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.45.not.i.i, label %bb.bp, label %x86_cpu_have_filtered_features.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 32304
  %i.gh = load i64, ptr %i.gg, align 16
  %.not.46.not.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.46.not.i.i, label %bb.bq, label %x86_cpu_have_filtered_features.exit.i

bb.bq:                                            ; preds = %bb.bp
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 32312
  %i.gj = load i64, ptr %i.gi, align 8
  %.not.47.not.i.i = icmp ne i64 %i.gj, 0
  br label %x86_cpu_have_filtered_features.exit.i

x86_cpu_have_filtered_features.exit.i:            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.split44.us.i
  %.not.lcssa.i.i = phi i1 [ true, %bb.at ], [ true, %.split44.us.i ], [ true, %bb.w ], [ %.not.47.not.i.i, %bb.bq ], [ true, %bb.x ], [ true, %bb.az ], [ true, %bb.y ], [ true, %bb.bp ], [ true, %bb.z ], [ true, %bb.au ], [ true, %bb.aa ], [ true, %bb.bo ], [ true, %bb.ab ], [ true, %bb.be ], [ true, %bb.ac ], [ true, %bb.bn ], [ true, %bb.ad ], [ true, %bb.av ], [ true, %bb.ae ], [ true, %bb.bm ], [ true, %bb.af ], [ true, %bb.bb ], [ true, %bb.ag ], [ true, %bb.bl ], [ true, %bb.ah ], [ true, %bb.aw ], [ true, %bb.ai ], [ true, %bb.bk ], [ true, %bb.aj ], [ true, %bb.bd ], [ true, %bb.ak ], [ true, %bb.bj ], [ true, %bb.al ], [ true, %bb.ax ], [ true, %bb.am ], [ true, %bb.bi ], [ true, %bb.an ], [ true, %bb.ba ], [ true, %bb.ao ], [ true, %bb.bh ], [ true, %bb.ap ], [ true, %bb.ay ], [ true, %bb.aq ], [ true, %bb.bg ], [ true, %bb.ar ], [ true, %bb.bc ], [ true, %bb.as ], [ true, %bb.bf ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 30544
  %i.gl = load i64, ptr %i.gk, align 16
  %i.gm = and i64 %i.gl, 524288
  %.not.i121 = icmp eq i64 %i.gm, 0
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 30592 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 16            ; 4 uses
  br i1 %.not.i121, label %bb.by, label %bb.br

bb.br:                                            ; preds = %x86_cpu_have_filtered_features.exit.i
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %.not41.i = icmp eq i8 %i.go, 0
  br i1 %.not41.i, label %x86_cpu_filter_features.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gq = load i8, ptr %i.cr, align 2, !range !10, !noundef !11
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %11, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.543, ptr noundef nonnull %i.cs, i32 noundef %i.gp, i32 noundef 0) #20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  store i8 0, ptr %i.gn, align 16
  br label %x86_cpu_filter_features.exit.thread

bb.bw:                                            ; preds = %bb.bs
  br i1 %11, label %bb.bx, label %x86_cpu_filter_features.exit.thread

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.544, ptr noundef nonnull %i.cs, i32 noundef %i.gp) #20
  br label %x86_cpu_filter_features.exit.thread

bb.by:                                            ; preds = %x86_cpu_have_filtered_features.exit.i
  %.not37.i = icmp ne i8 %i.go, 0                 ; 2 uses
  %brmerge.not.i = and i1 %11, %.not37.i
  %.not.lcssa.i.mux.i = select i1 %.not37.i, i1 true, i1 %.not.lcssa.i.i
  br i1 %brmerge.not.i, label %bb.bz, label %x86_cpu_filter_features.exit

bb.bz:                                            ; preds = %bb.by
  %i.gs = zext i8 %i.go to i32
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.544, ptr noundef nonnull %i.cs, i32 noundef %i.gs) #20
  br label %x86_cpu_filter_features.exit.thread

x86_cpu_filter_features.exit:                     ; preds = %bb.br, %bb.by
  %.1.i = phi i1 [ %.not.lcssa.i.mux.i, %bb.by ], [ %.not.lcssa.i.i, %bb.br ]
  br i1 %.1.i, label %x86_cpu_filter_features.exit.thread, label %bb.cb

x86_cpu_filter_features.exit.thread:              ; preds = %bb.bz, %bb.bx, %bb.bw, %bb.bv, %x86_cpu_filter_features.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 31905
  %i.gu = load i8, ptr %i.gt, align 1, !range !10, !noundef !11
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %x86_cpu_filter_features.exit.thread
  %i.gw = load i8, ptr @tcg_allowed, align 1, !range !10, !noundef !11
  %12 = trunc nuw i8 %i.gw to i1
  %13 = load i8, ptr @qtest_allowed, align 1, !range !10
  %14 = trunc nuw i8 %13 to i1
  %15 = select i1 %12, i1 true, i1 %14
  %i.gx = select i1 %15, ptr @.str.530, ptr @.str.529
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.408, i32 noundef 10145, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull %i.gx) #20
  br label %bb.dv

bb.cb:                                            ; preds = %x86_cpu_filter_features.exit.thread, %x86_cpu_filter_features.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 30188 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = icmp eq i32 %i.gz, 1752462657
  br i1 %i.ha, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 30192
  %i.hc = load i32, ptr %i.hb, align 16
  %i.hd = icmp eq i32 %i.hc, 1769238117
  br i1 %i.hd, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 30196
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = icmp eq i32 %i.hf, 1145913699
  br i1 %i.hg, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 30256 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 16
  %i.hj = and i64 %i.hi, 4269542400
  %i.hk = load i64, ptr %i.ag, align 16
  %i.hl = and i64 %i.hk, 25424895
  %i.hm = or disjoint i64 %i.hl, %i.hj
  store i64 %i.hm, ptr %i.hh, align 16
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.hn = call zeroext i1 @cpu_exec_realizefn(ptr noundef %0, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.ho = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not108 = icmp eq ptr %i.ho, null
  br i1 %.not108, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %i.ho) #20
  br label %bb.dw

bb.ch:                                            ; preds = %bb.cf
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 369
  %i.hq = load i8, ptr %i.hp, align 1, !range !10, !noundef !11
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.hs = load i8, ptr @tcg_allowed, align 1, !range !10, !noundef !11
  %i.ht = trunc nuw i8 %i.hs to i1
  %i.hu = load i8, ptr @qtest_allowed, align 1, !range !10
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = select i1 %i.ht, i1 true, i1 %i.hv
  br i1 %i.hw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hx = call fastcc ptr @x86_cpu_class_get_model_name(ptr noundef nonnull %i.d) ; 2 uses
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.408, i32 noundef 10175, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.531, ptr noundef %i.hx) #20
  call void @g_free(ptr noundef %i.hx) #20
  br label %bb.dv

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 32744 ; 4 uses
  %i.hz = load i32, ptr %i.hy, align 8
  %i.ia = icmp eq i32 %i.hz, -1
  br i1 %i.ia, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.hy, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 31800 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = icmp eq i64 %i.ic, 0
  %.pre = load i32, ptr %i.gy, align 4            ; 2 uses
  br i1 %i.id, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.ie = icmp eq i32 %.pre, 1752462657
  br i1 %i.ie, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 30192
  %i.ig = load i32, ptr %i.if, align 16
  %i.ih = icmp eq i32 %i.ig, 1769238117
  br i1 %i.ih, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 30196
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = icmp eq i32 %i.ij, 1145913699
  br i1 %i.ik, label %.thread, label %bb.cq

.thread:                                          ; preds = %bb.cp
  store i64 16777317, ptr %i.ib, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 31928 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8
  %i.in = or i32 %i.im, 3
  store i32 %i.in, ptr %i.il, align 8
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  store i64 4294967296, ptr %i.ib, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cm
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 31928 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8
  %i.iq = or i32 %i.ip, 3
  store i32 %i.iq, ptr %i.io, align 8
  %i.ir = icmp eq i32 %.pre, 1752462657
  br i1 %i.ir, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %.thread, %bb.cr
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 30192
  %i.it = load i32, ptr %i.is, align 16
  %i.iu = icmp eq i32 %i.it, 1769238117
  br i1 %i.iu, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 30196
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = icmp eq i32 %i.iw, 1145913699
  br i1 %i.ix, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 30264
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = and i64 %i.iz, 4194304
  %.not109 = icmp eq i64 %i.ja, 0
  br i1 %.not109, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 31780
  %i.jc = load i32, ptr %i.jb, align 4            ; 2 uses
  %i.jd = icmp ugt i32 %i.jc, 1
  br i1 %i.jd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.je = call zeroext i1 (ptr, ptr, ...) @warn_report_once_cond(ptr noundef nonnull @x86_cpu_realizefn.print_once_, ptr noundef nonnull @.str.532, i32 noundef %i.jc) #20 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 30256
  %i.jg = load i64, ptr %i.jf, align 16
  %i.jh = and i64 %i.jg, 536870912
  %.not110 = icmp eq i64 %i.jh, 0
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 32740 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4            ; 5 uses
  br i1 %.not110, label %bb.df, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jk = add i32 %i.jj, -1
  %or.cond = icmp ult i32 %i.jk, 31
  br i1 %or.cond, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.408, i32 noundef 10238, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.533, i32 noundef %i.jj) #20
  br label %bb.dw

bb.da:                                            ; preds = %bb.cy
  %i.jl = icmp eq i32 %i.jj, 0
  br i1 %i.jl, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 40, ptr %i.ji, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.jm = phi i32 [ 40, %bb.db ], [ %i.jj, %bb.da ] ; 2 uses
  %i.jn = load i32, ptr %i.hy, align 8            ; 4 uses
  %.not115 = icmp eq i32 %i.jn, 0
  br i1 %.not115, label %bb.dj, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jo = icmp ugt i32 %i.jn, %i.jm
  %i.jp = icmp ult i32 %i.jn, 32
  %or.cond119 = or i1 %i.jp, %i.jo
  br i1 %or.cond119, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %bb.dd
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.408, i32 noundef 10254, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.534, i32 noundef %i.jm, i32 noundef %i.jn) #20
  br label %bb.dw

bb.df:                                            ; preds = %bb.cx
  %.not111 = icmp eq i32 %i.jj, 0
  br i1 %.not111, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.408, i32 noundef 10262, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.535) #20
  br label %bb.dw

bb.dh:                                            ; preds = %bb.df
  %i.jq = load i32, ptr %i.hy, align 8
  %.not112 = icmp eq i32 %i.jq, 0
  br i1 %.not112, label %.sink.split, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.408, i32 noundef 10266, ptr noundef nonnull @__func__.x86_cpu_realizefn, ptr noundef nonnull @.str.536) #20
end_hunk_0
