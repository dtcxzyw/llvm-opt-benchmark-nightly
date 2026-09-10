Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.13?download=true
inline.NumInlined: 13797
inline.NumDeleted: 4345
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE21with_capacity_and_keyCs1LHh8CLbVkQ_11polars_core:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !213362 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !213362
  %i.n = icmp eq i64 %i.g, 0, !dbg !213363
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !213363

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._crit_edge unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !213364, !noalias !213349

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.l, align 8, !dbg !213365, !alias.scope !213350, !noalias !213349
  br label %bb.e, !dbg !213364

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.g unwind label %bb.f, !dbg !213366

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.c ], !dbg !213365 ; 2 uses
  store i32 0, ptr %i.p, align 8, !dbg !213367
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !213367
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !213367
  store i64 1, ptr %i.m, align 8, !dbg !213368, !alias.scope !213350, !noalias !213349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !213369
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !213370
  store i32 1, ptr %i.q, align 8, !dbg !213370
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !213370
  store i32 0, ptr %i.r, align 4, !dbg !213370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !213366
  ret void, !dbg !213371

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !213372
  unreachable, !dbg !213372

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEECs1LHh8CLbVkQ_11polars_core.exit.i
  resume { ptr, i32 } %i.o, !dbg !213372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !213373 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !213400
  %.val2 = load ptr, ptr %i.a, align 8, !dbg !213400 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !213400
  %.val3 = load i64, ptr %i.b, align 8, !dbg !213400, !noundef !3467
  %i.c = zext i32 %3 to i64, !dbg !213401         ; 2 uses
  %i.d = icmp ule i64 %.val3, %i.c, !dbg !213402
  %.not.i2.i = icmp eq ptr %.val2, null, !dbg !213403
  %.not.i.i = select i1 %i.d, i1 true, i1 %.not.i2.i, !dbg !213402
  br i1 %.not.i.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit, !dbg !213404

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val2, i64 %i.c, !dbg !213402 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 40, !dbg !213405 ; 2 uses
  %.val5.i.i = load i32, ptr %i.f, align 8, !dbg !213405, !alias.scope !213395, !noundef !3467
  %i.g = icmp eq i32 %.val5.i.i, %2, !dbg !213406
  br i1 %i.g, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !213407

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit
  store i32 0, ptr %0, align 8, !dbg !213408
  br label %bb.c, !dbg !213409

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !213410
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !213411 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !213411, !noundef !3467
  store i32 %i.i, ptr %i.e, align 8, !dbg !213412
  store i32 %3, ptr %i.h, align 8, !dbg !213413
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !213414 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !dbg !213414, !noundef !3467
  %i.l = add i32 %i.k, -1, !dbg !213414
  store i32 %i.l, ptr %i.j, align 4, !dbg !213414
  %i.m = add i32 %2, 1, !dbg !213415
  store i32 %i.m, ptr %i.f, align 8, !dbg !213416
  br label %bb.c, !dbg !213409

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread
  ret void, !dbg !213417
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE21with_capacity_and_keyCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !213418 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !213446
  %i.c = add i64 %1, 1, !dbg !213447              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !213448
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !213448
  %i.d = load i64, ptr %i.a, align 8, !dbg !213448, !range !3512, !noundef !3467
  %i.e = trunc nuw i64 %i.d to i1, !dbg !213449
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !213450
  %i.g = load i64, ptr %i.f, align 8, !dbg !213450, !range !3513, !noundef !3467 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !213450 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !213449, !prof !3514

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !213451
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #43, !dbg !213452
  unreachable, !dbg !213452

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !213453, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !213454
  tail call void @llvm.assume(i1 %i.k), !dbg !213455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !213456
  store i64 %i.g, ptr %i.b, align 8, !dbg !213457
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !213457 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !dbg !213457
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !213457 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !213457
  %i.n = icmp eq i64 %i.g, 0, !dbg !213458
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !213458

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._crit_edge unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !213459, !noalias !213444

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.l, align 8, !dbg !213460, !alias.scope !213445, !noalias !213444
  br label %bb.e, !dbg !213459

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.g unwind label %bb.f, !dbg !213461

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.c ], !dbg !213460 ; 2 uses
  store i32 0, ptr %i.p, align 8, !dbg !213462
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !213462
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !213462
  store i64 1, ptr %i.m, align 8, !dbg !213463, !alias.scope !213445, !noalias !213444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !213464
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !213465
  store i32 1, ptr %i.q, align 8, !dbg !213465
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !213465
  store i32 0, ptr %i.r, align 4, !dbg !213465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !213461
  ret void, !dbg !213466

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !213467
  unreachable, !dbg !213467

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECs1LHh8CLbVkQ_11polars_core.exit.i
  resume { ptr, i32 } %i.o, !dbg !213467
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !213468 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !213495
  %.val2 = load ptr, ptr %i.a, align 8, !dbg !213495 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !213495
  %.val3 = load i64, ptr %i.b, align 8, !dbg !213495, !noundef !3467
  %i.c = zext i32 %3 to i64, !dbg !213496         ; 2 uses
  %i.d = icmp ule i64 %.val3, %i.c, !dbg !213497
  %.not.i2.i = icmp eq ptr %.val2, null, !dbg !213498
  %.not.i.i = select i1 %i.d, i1 true, i1 %.not.i2.i, !dbg !213497
  br i1 %.not.i.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit, !dbg !213499

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val2, i64 %i.c, !dbg !213497 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 40, !dbg !213500 ; 2 uses
  %.val5.i.i = load i32, ptr %i.f, align 8, !dbg !213500, !alias.scope !213490, !noundef !3467
  %i.g = icmp eq i32 %.val5.i.i, %2, !dbg !213501
  br i1 %i.g, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !213502

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit
  store i32 0, ptr %0, align 8, !dbg !213503
  br label %bb.c, !dbg !213504

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !213505
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !213506 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !213506, !noundef !3467
  store i32 %i.i, ptr %i.e, align 8, !dbg !213507
  store i32 %3, ptr %i.h, align 8, !dbg !213508
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !213509 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !dbg !213509, !noundef !3467
  %i.l = add i32 %i.k, -1, !dbg !213509
  store i32 %i.l, ptr %i.j, align 4, !dbg !213509
  %i.m = add i32 %2, 1, !dbg !213510
  store i32 %i.m, ptr %i.f, align 8, !dbg !213511
  br label %bb.c, !dbg !213504

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCs1LHh8CLbVkQ_11polars_core.exit.thread
  ret void, !dbg !213512
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1, i16 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !213513 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 10 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %.sroa.082 = alloca [23 x i8], align 8          ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.677 = alloca [32 x i8], align 8          ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.468 = alloca [31 x i8], align 1          ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 3 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %3 = alloca [32 x i8], align 8                  ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.537.sroa.0 = alloca [29 x i8], align 2   ; 4 uses
  %i.r = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %2, ptr %i.r, align 2
  %i.s = load i8, ptr %1, align 16, !dbg !213725, !range !3641, !noundef !3467 ; 2 uses
  switch i8 %i.s, label %default.unreachable128 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %switch.lookup
    i8 20, label %switch.lookup129
    i8 21, label %bb.u
    i8 22, label %bb.v
    i8 23, label %bb.z
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %bb.af
    i8 27, label %bb.af
    i8 28, label %bb.ak
    i8 29, label %bb.al
    i8 30, label %bb.am
  ], !dbg !213726, !prof !213666

default.unreachable128:                           ; preds = %bb.am, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213727
  store i8 1, ptr %i.t, align 8, !dbg !213727
  store i64 18, ptr %0, align 8, !dbg !213727
  br label %bb.an, !dbg !213728

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213729
  store i8 7, ptr %i.u, align 8, !dbg !213729
  store i64 18, ptr %0, align 8, !dbg !213729
  br label %bb.an, !dbg !213730

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213731
  store i8 8, ptr %i.v, align 8, !dbg !213731
  store i64 18, ptr %0, align 8, !dbg !213731
  br label %bb.an, !dbg !213732

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213733
  store i8 9, ptr %i.w, align 8, !dbg !213733
  store i64 18, ptr %0, align 8, !dbg !213733
  br label %bb.an, !dbg !213734

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213735
  store i8 10, ptr %i.x, align 8, !dbg !213735
  store i64 18, ptr %0, align 8, !dbg !213735
  br label %bb.an, !dbg !213736

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213737
  store i8 11, ptr %i.y, align 8, !dbg !213737
  store i64 18, ptr %0, align 8, !dbg !213737
  br label %bb.an, !dbg !213738

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213739
  store i8 2, ptr %i.z, align 8, !dbg !213739
  store i64 18, ptr %0, align 8, !dbg !213739
  br label %bb.an, !dbg !213740

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213741
  store i8 3, ptr %i.aa, align 8, !dbg !213741
  store i64 18, ptr %0, align 8, !dbg !213741
  br label %bb.an, !dbg !213742

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213743
  store i8 4, ptr %i.ab, align 8, !dbg !213743
  store i64 18, ptr %0, align 8, !dbg !213743
  br label %bb.an, !dbg !213744

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213745
  store i8 5, ptr %i.ac, align 8, !dbg !213745
  store i64 18, ptr %0, align 8, !dbg !213745
  br label %bb.an, !dbg !213746

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213747
  store i8 6, ptr %i.ad, align 8, !dbg !213747
  store i64 18, ptr %0, align 8, !dbg !213747
  br label %bb.an, !dbg !213748

bb.m:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213749
  store i8 12, ptr %i.ae, align 8, !dbg !213749
  store i64 18, ptr %0, align 8, !dbg !213749
  br label %bb.an, !dbg !213750

bb.n:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213751
  store i8 13, ptr %i.af, align 8, !dbg !213751
  store i64 18, ptr %0, align 8, !dbg !213751
  br label %bb.an, !dbg !213752

bb.o:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213753
  store i8 14, ptr %i.ag, align 8, !dbg !213753
  store i64 18, ptr %0, align 8, !dbg !213753
  br label %bb.an, !dbg !213754

bb.p:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !213755
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !213755, !noundef !3467 ; 2 uses
  %i.aj = add i64 %i.ai, -1, !dbg !213755
  %or.cond = icmp ult i64 %i.aj, 38, !dbg !213755
  br i1 %or.cond, label %bb.ap, label %bb.ao, !dbg !213755, !prof !3592

bb.q:                                             ; preds = %bb.a
  %.not111 = icmp eq i16 %2, 0, !dbg !213756
  %. = select i1 %.not111, i8 26, i8 39, !dbg !213757
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213758
  store i8 %., ptr %i.ak, align 8, !dbg !213758
  store i64 18, ptr %0, align 8, !dbg !213758
  br label %bb.an, !dbg !213759

bb.r:                                             ; preds = %bb.a
  %.not110 = icmp eq i16 %2, 0, !dbg !213760
  %.112 = select i1 %.not110, i8 24, i8 38, !dbg !213761
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213762
  store i8 %.112, ptr %i.al, align 8, !dbg !213762
  store i64 18, ptr %0, align 8, !dbg !213762
  br label %bb.an, !dbg !213763

bb.s:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213764
  store i8 24, ptr %i.am, align 8, !dbg !213764
  store i64 18, ptr %0, align 8, !dbg !213764
  br label %bb.an, !dbg !213765

bb.t:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213766
  store i8 16, ptr %i.an, align 8, !dbg !213766
  store i64 18, ptr %0, align 8, !dbg !213766
  br label %bb.an, !dbg !213767

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537.sroa.0), !dbg !213768
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !213769
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !213769, !range !4160, !noundef !3467
  %switch.offset = xor i8 %i.ap, 3, !dbg !213770
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !213771 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !213771
  %i.as = load i8, ptr %i.ar, align 1, !dbg !213771, !range !3638, !noundef !3467 ; 2 uses
  switch i8 %i.as, label %bb.as [
    i8 -38, label %bb.aq
    i8 -40, label %bb.ar
  ], !dbg !213772

switch.lookup129:                                 ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !213773
  %i.au = load i8, ptr %i.at, align 1, !dbg !213773, !range !4160, !noundef !3467
  %switch.offset131 = xor i8 %i.au, 3, !dbg !213774
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213775
  store i8 20, ptr %i.av, align 8, !dbg !213775
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !213775
  store i8 %switch.offset131, ptr %.sroa.444.0..sroa_idx, align 1, !dbg !213775
  store i64 18, ptr %0, align 8, !dbg !213775
  br label %bb.an, !dbg !213776

bb.u:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213777
  store i8 19, ptr %i.aw, align 8, !dbg !213777
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !213777
  store i8 3, ptr %.sroa.448.0..sroa_idx, align 1, !dbg !213777
  store i64 18, ptr %0, align 8, !dbg !213777
  br label %bb.an, !dbg !213778

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !213779
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !213779
  %i.ay = load ptr, ptr %i.ax, align 16, !dbg !213779, !nonnull !3467, !noundef !3467
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType14to_arrow_field(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @125, i16 noundef %2), !dbg !213780
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !dbg !213781, !noalias !213672
  %i.az = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 32, 97) 72, i64 noundef range(i64 8, 17) 8) #45, !dbg !213782, !noalias !213672 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null, !dbg !213783
  br i1 %i.ba, label %bb.w, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCs1LHh8CLbVkQ_11polars_core.exit114, !dbg !213784, !prof !3514

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #43
          to label %.noexc unwind label %bb.x, !dbg !213785

.noexc:                                           ; preds = %bb.w
  unreachable, !dbg !213785

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q) #44
          to label %common.resume unwind label %bb.y, !dbg !213786

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !213787
  unreachable, !dbg !213787

common.resume:                                    ; preds = %bb.bw, %bb.ay, %bb.ax, %bb.bm, %bb.bl, %bb.bh, %bb.av, %bb.ah, %bb.ab, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.bh ], [ %i.bb, %bb.x ], [ %i.bk, %bb.ab ], [ %i.bq, %bb.ah ], [ %i.co, %bb.av ], [ %i.ct, %bb.ax ], [ %.pn, %bb.bw ], [ %i.ct, %bb.ay ], [ %i.dc, %bb.bm ], [ %i.dc, %bb.bl ]
  resume { ptr, i32 } %common.resume.op, !dbg !213788

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCs1LHh8CLbVkQ_11polars_core.exit114: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !213789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !213790
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !213791
  %i.be = load i64, ptr %i.bd, align 8, !dbg !213791, !noundef !3467
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213792
  store i8 28, ptr %i.bf, align 8, !dbg !213792
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !213792
  store i64 %i.be, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !213792
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !213792
  store ptr %i.az, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !213792
  store i64 18, ptr %0, align 8, !dbg !213792
  br label %bb.an, !dbg !213793

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !213794
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !213794
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !213794, !nonnull !3467, !noundef !3467
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType14to_arrow_field(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.bh, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @125, i16 noundef %2), !dbg !213795
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !dbg !213796, !noalias !213673
  %i.bi = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 32, 97) 72, i64 noundef range(i64 8, 17) 8) #45, !dbg !213797, !noalias !213673 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !213798
  br i1 %i.bj, label %bb.aa, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCs1LHh8CLbVkQ_11polars_core.exit, !dbg !213799, !prof !3514

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #43
          to label %.noexc115 unwind label %bb.ab, !dbg !213800

.noexc115:                                        ; preds = %bb.aa
  unreachable, !dbg !213800

bb.ab:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p) #44
          to label %common.resume unwind label %bb.ac, !dbg !213801

bb.ac:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !213802
  unreachable, !dbg !213802

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !213803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !213804
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213805
  store i8 29, ptr %i.bm, align 8, !dbg !213805
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !213805
  store ptr %i.bi, ptr %.sroa.457.0..sroa_idx, align 8, !dbg !213805
  store i64 18, ptr %0, align 8, !dbg !213805
  br label %bb.an, !dbg !213806

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !dbg !213807
  call void @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object8registry24get_object_physical_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %3), !dbg !213807
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !213808
  store i64 18, ptr %0, align 8, !dbg !213808
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !dbg !213809
  br label %bb.an, !dbg !213809

bb.ae:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213810
  store i8 0, ptr %i.bo, align 8, !dbg !213810
  store i64 18, ptr %0, align 8, !dbg !213810
  br label %bb.an, !dbg !213811

bb.af:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !213812
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12cat_physical(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !213813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213674), !dbg !213814
  %i.bp = load i64, ptr %i.o, align 8, !dbg !213815, !range !3693, !alias.scope !213674, !noundef !3467
  %.not.i = icmp eq i64 %i.bp, 18, !dbg !213815
  br i1 %.not.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit, label %bb.ag, !dbg !213816, !prof !3737

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !213817, !noalias !213674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !213817
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #43
          to label %bb.ai unwind label %bb.ah, !dbg !213818, !noalias !213674

bb.ah:                                            ; preds = %bb.ag
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #44
          to label %common.resume unwind label %bb.aj, !dbg !213819, !noalias !213674

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !213820, !noalias !213674
  unreachable, !dbg !213820

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !213821
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !213821, !range !4160, !alias.scope !213674, !noundef !3467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !213822
  %.not108 = icmp eq i16 %2, 0, !dbg !213823
  %.113 = select i1 %.not108, i8 26, i8 39, !dbg !213824
  store i8 %.113, ptr %i.n, align 8, !dbg !213825
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !dbg !213826, !noalias !213675
  %i.bu = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 32, 97) 32, i64 noundef range(i64 8, 17) 8) #45, !dbg !213827, !noalias !213675 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null, !dbg !213828
  br i1 %i.bv, label %bb.au, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCs1LHh8CLbVkQ_11polars_core.exit, !dbg !213829, !prof !3514

bb.ak:                                            ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !213830
  %i.bx = load ptr, ptr %i.bw, align 16, !dbg !213830, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !213831
  %i.bz = load i64, ptr %i.by, align 8, !dbg !213831, !noundef !3467
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %i.bx, i64 %i.bz, !dbg !213832
  store ptr %i.bx, ptr %i.l, align 8, !dbg !213833
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !213833
  store ptr %i.ca, ptr %i.cb, align 8, !dbg !213833
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !213833
  store ptr %i.r, ptr %i.cc, align 8, !dbg !213833
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs4_NtB3L_5dtypeNtB4J_8DataType12try_to_arrow0EE9from_iterB3N_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l), !dbg !213834
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.468), !dbg !213835
  %.sroa.468.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.468, i64 7, !dbg !213835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.468.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !213835
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213836
  store i8 30, ptr %i.cd, align 8, !dbg !213836
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !213836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.468.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.468, i64 31, i1 false), !dbg !213836
  store i64 18, ptr %0, align 8, !dbg !213836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.468), !dbg !213837
  br label %bb.an, !dbg !213838

bb.al:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !213839 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !213840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !213841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !213841
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB5_21ExtensionTypeInstance4name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce), !dbg !213842
  call void @_RNvXss_Cs7VARH73bmU_11compact_strNtB5_13CompactStringINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i), !dbg !213843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !213844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !213705
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.677), !dbg !213705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !213705
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !213705
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !213705, !nonnull !3467, !noundef !3467
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, i16 noundef %2)
          to label %bb.az unwind label %bb.ax, !dbg !213845

bb.am:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !213846
  %i.ci = load i128, ptr %i.ch, align 16, !dbg !213846, !range !213693, !noundef !3467
  %i.cj = trunc nuw nsw i128 %i.ci to i64, !dbg !213846
  switch i64 %i.cj, label %default.unreachable128 [
    i64 0, label %bb.bn
    i64 1, label %bb.cc
    i64 2, label %bb.bu
    i64 3, label %bb.bv
  ], !dbg !213847

bb.an:                                            ; preds = %bb.cc, %bb.cb, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCs1LHh8CLbVkQ_11polars_core.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit120, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCs1LHh8CLbVkQ_11polars_core.exit, %switch.lookup129, %bb.aq, %bb.r, %bb.q, %bb.ap, %bb.ak, %bb.ae, %bb.ad, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCs1LHh8CLbVkQ_11polars_core.exit, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCs1LHh8CLbVkQ_11polars_core.exit114, %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !213848

bb.ao:                                            ; preds = %bb.p
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #46, !dbg !213849
  unreachable, !dbg !213849

bb.ap:                                            ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !213850
  %i.cl = load i64, ptr %i.ck, align 16, !dbg !213850, !noundef !3467
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213851
  store i8 33, ptr %i.cm, align 8, !dbg !213851
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !213851
  store i64 %i.ai, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !213851
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !213851
  store i64 %i.cl, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !213851
  store i64 18, ptr %0, align 8, !dbg !213851
  br label %bb.an, !dbg !213852

bb.aq:                                            ; preds = %switch.lookup, %bb.at
  %.sroa.440.0 = phi i8 [ %.sroa.491.0.copyload, %bb.at ], [ %i.as, %switch.lookup ], !dbg !213853
  %.sroa.537.sroa.0.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.537.sroa.0, i64 6, !dbg !213768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(23) %.sroa.537.sroa.0.6..sroa_idx, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !213768
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213854
  store i8 15, ptr %i.cn, align 8, !dbg !213854
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !213854
  store i8 %switch.offset, ptr %.sroa.436.0..sroa_idx, align 1, !dbg !213854
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !213854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(29) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(29) %.sroa.537.sroa.0, i64 29, i1 false), !dbg !213854
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39, !dbg !213854
  store i8 %.sroa.440.0, ptr %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, align 1, !dbg !213854
  store i64 18, ptr %0, align 8, !dbg !213854
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537.sroa.0), !dbg !213855
  br label %bb.an, !dbg !213856

bb.ar:                                            ; preds = %switch.lookup
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #41, !dbg !213857
  br label %bb.at, !dbg !213857

bb.as:                                            ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !213858
  br label %bb.at, !dbg !213859

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !213860
  %.sroa.491.0.copyload = load i8, ptr %.sroa.491.0..sroa_idx, align 1, !dbg !213860
  br label %bb.aq, !dbg !213861

bb.au:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #43
          to label %.noexc117 unwind label %bb.av, !dbg !213862

.noexc117:                                        ; preds = %bb.au
  unreachable, !dbg !213862

bb.av:                                            ; preds = %bb.au
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n) #44
          to label %common.resume unwind label %bb.aw, !dbg !213863

bb.aw:                                            ; preds = %bb.av
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !213864
  unreachable, !dbg !213864

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit
  %switch.offset133 = add nuw nsw i8 %i.bt, 5, !dbg !213865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !213866
  %i.cq = icmp eq i8 %i.s, 27, !dbg !213867
  %i.cr = zext i1 %i.cq to i8, !dbg !213868
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !213869
  store i8 32, ptr %i.cs, align 8, !dbg !213869
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !213869
  store i8 %switch.offset133, ptr %.sroa.463.0..sroa_idx, align 1, !dbg !213869
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !213869
  store i8 %i.cr, ptr %.sroa.564.0..sroa_idx, align 2, !dbg !213869
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !213869
  store ptr %i.bu, ptr %.sroa.666.0..sroa_idx, align 8, !dbg !213869
  store i64 18, ptr %0, align 8, !dbg !213869
  br label %bb.an, !dbg !213870

bb.ax:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 23, !dbg !213871
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !213871, !range !3601, !alias.scope !213704, !noundef !3467
  %i.cw = icmp eq i8 %i.cv, -40, !dbg !213872
  br i1 %i.cw, label %bb.ay, label %common.resume, !dbg !213872, !prof !3514

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bk, !dbg !213873

bb.az:                                            ; preds = %bb.al
  %i.cx = load i64, ptr %i.g, align 8, !dbg !213874, !range !3693, !noundef !3467 ; 2 uses
  %.not = icmp eq i64 %i.cx, 18, !dbg !213874
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !213875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.677, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false), !dbg !213875
  br i1 %.not, label %bb.bc, label %bb.ba, !dbg !213876
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!213607 = distinct !DILexicalBlock(scope: !213576, file: !3903, line: 1057, column: 60)
!213608 = distinct !DILexicalBlock(scope: !213607, file: !3903, line: 1057, column: 60)
!213609 = distinct !DILocation(line: 1059, column: 17, scope: !213576)
!213610 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !213609)
!213611 = distinct !DILocation(line: 810, column: 1, scope: !212, inlinedAt: !213610)
!213612 = distinct !DILocation(line: 810, column: 1, scope: !211, inlinedAt: !213611)
!213613 = distinct !DILocation(line: 779, column: 17, scope: !210, inlinedAt: !213612)
!213614 = distinct !DILocation(line: 447, column: 30, scope: !209, inlinedAt: !213613)
!213615 = distinct !{!213615, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core"}
!213616 = distinct !{!213616, !213615, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core: argument 0"}
!213617 = distinct !{!213617, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs1LHh8CLbVkQ_11polars_core"}
!213618 = distinct !{!213618, !213617, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs1LHh8CLbVkQ_11polars_core: argument 0"}
!213619 = distinct !{!213619, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs1LHh8CLbVkQ_11polars_core"}
!213620 = distinct !{!213620, !213619, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs1LHh8CLbVkQ_11polars_core: argument 0"}
!213621 = distinct !{!213621, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!213622 = distinct !{!213622, !213621, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!213623 = distinct !DISubprogram(name: "map<alloc::borrow::Cow<str>, polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::{impl#6}::try_to_arrow::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEE3mapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB2m_8DataType12try_to_arrows_0EB2q_", scope: !3487, file: !3485, line: 1160, type: !3468, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213624 = distinct !DILexicalBlock(scope: !213623, file: !3485, line: 1165, column: 13)
!213625 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB7_8DataType12try_to_arrows_0Bb_", scope: !213717, file: !3903, line: 1058, type: !3468, scopeLine: 1058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213626 = distinct !{!213626, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCs1LHh8CLbVkQ_11polars_core"}
!213627 = distinct !{!213627, !213626, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCs1LHh8CLbVkQ_11polars_core: argument 0"}
!213628 = distinct !DISubprogram(name: "new<polars_arrow::datatypes::ExtensionType>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCs1LHh8CLbVkQ_11polars_core", scope: !3732, file: !3606, line: 284, type: !3468, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213629 = distinct !DILocation(line: 1054, column: 66, scope: !213576)
!213630 = distinct !DILexicalBlock(scope: !213628, file: !3606, line: 286, column: 9)
!213631 = distinct !DILocation(line: 1059, column: 17, scope: !213576)
!213632 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !213631)
!213633 = distinct !DILocation(line: 810, column: 1, scope: !212, inlinedAt: !213632)
!213634 = distinct !DILocation(line: 810, column: 1, scope: !211, inlinedAt: !213633)
!213635 = distinct !DILocation(line: 779, column: 17, scope: !210, inlinedAt: !213634)
!213636 = distinct !DILocation(line: 447, column: 30, scope: !209, inlinedAt: !213635)
!213637 = distinct !{!213637, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core"}
!213638 = distinct !{!213638, !213637, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core: argument 0"}
!213639 = distinct !{!213639, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs1LHh8CLbVkQ_11polars_core"}
!213640 = distinct !{!213640, !213639, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs1LHh8CLbVkQ_11polars_core: argument 0"}
!213641 = distinct !{!213641, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs1LHh8CLbVkQ_11polars_core"}
!213642 = distinct !{!213642, !213641, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs1LHh8CLbVkQ_11polars_core: argument 0"}
!213643 = distinct !{!213643, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!213644 = distinct !{!213644, !213643, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!213645 = distinct !DILexicalBlock(scope: !213579, file: !3903, line: 1066, column: 21)
!213646 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs2u_NtNtCscgRAwXFJnXP_4core7convert3numlINtB8_7TryFromnE8try_from", scope: !213720, file: !4194, line: 317, type: !3468, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213647 = distinct !DILexicalBlock(scope: !213646, file: !4194, line: 318, column: 17)
!213648 = distinct !DILexicalBlock(scope: !213647, file: !4194, line: 319, column: 17)
!213649 = distinct !DISubprogram(name: "materialize_dyn_int", linkageName: "_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int", scope: !213722, file: !213721, line: 617, type: !3468, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213650 = distinct !DILexicalBlock(scope: !213649, file: !213721, line: 620, column: 37)
!213651 = distinct !DILocation(line: 1067, column: 32, scope: !213645)
!213652 = distinct !DILocation(line: 620, column: 20, scope: !213650, inlinedAt: !213651)
!213653 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs2v_NtNtCscgRAwXFJnXP_4core7convert3numxINtB8_7TryFromnE8try_from", scope: !4196, file: !4194, line: 317, type: !3468, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213654 = distinct !DILexicalBlock(scope: !213653, file: !4194, line: 318, column: 17)
!213655 = distinct !DILexicalBlock(scope: !213654, file: !4194, line: 319, column: 17)
!213656 = distinct !DILexicalBlock(scope: !213649, file: !213721, line: 623, column: 37)
!213657 = distinct !DILocation(line: 623, column: 20, scope: !213656, inlinedAt: !213651)
!213658 = distinct !{!213658, !"_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int"}
!213659 = distinct !{!213659, !213658, !"_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int: argument 0"}
!213660 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs38_NtNtCscgRAwXFJnXP_4core7convert3numyINtB8_7TryFromnE8try_from", scope: !4202, file: !4194, line: 317, type: !3468, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213661 = distinct !DILexicalBlock(scope: !213660, file: !4194, line: 318, column: 17)
!213662 = distinct !DILexicalBlock(scope: !213661, file: !4194, line: 319, column: 17)
!213663 = distinct !DILexicalBlock(scope: !213649, file: !213721, line: 626, column: 37)
!213664 = distinct !DILocation(line: 626, column: 20, scope: !213663, inlinedAt: !213651)
!213665 = distinct !DILexicalBlock(scope: !213579, file: !3903, line: 1062, column: 17)
!213666 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!213667 = !DINamespace(name: "TimeUnit", scope: !4224)
!213668 = !DILocation(line: 1008, column: 22, scope: !213517)
!213669 = !DILocation(line: 1009, column: 20, scope: !213517)
!213670 = !DILocation(line: 1394, column: 14, scope: !213520, inlinedAt: !213669)
!213671 = !DILocation(line: 1011, column: 63, scope: !213521)
!213672 = !{!213524}
!213673 = !{!213535}
!213674 = !{!213543}
!213675 = !{!213549}
!213676 = !DILocation(line: 1046, column: 30, scope: !213559)
!213677 = !DILocation(line: 3756, column: 14, scope: !213560, inlinedAt: !213676)
!213678 = !DILocation(line: 1841, column: 76, scope: !213561, inlinedAt: !213677)
!213679 = !DILocation(line: 1942, column: 18, scope: !213562, inlinedAt: !213678)
!213680 = !DILocation(line: 296, column: 20, scope: !213563, inlinedAt: !213679)
!213681 = !DILocation(line: 609, column: 14, scope: !213564, inlinedAt: !213680)
!213682 = !DILocation(line: 1047, column: 22, scope: !213559)
!213683 = !DILocation(line: 1041, column: 9, scope: !213566, inlinedAt: !213682)
!213684 = !DILocation(line: 102, column: 78, scope: !213569, inlinedAt: !213683)
!213685 = !DILocation(line: 1048, column: 22, scope: !213559)
!213686 = !DILocation(line: 836, column: 9, scope: !213571, inlinedAt: !213685)
!213687 = !DILocation(line: 1049, column: 22, scope: !213559)
!213688 = !DILocation(line: 2104, column: 9, scope: !213573, inlinedAt: !213687)
!213689 = !DILocation(line: 3892, column: 9, scope: !213574, inlinedAt: !213688)
!213690 = !DINamespace(name: "{impl#12}", scope: !3722)
!213691 = !DILocation(line: 1056, column: 38, scope: !213576)
!213692 = !DILocation(line: 778, column: 9, scope: !213578, inlinedAt: !213691)
!213693 = !{i128 0, i128 4}
!213694 = !DILocation(line: 1009, column: 31, scope: !213517)
!213695 = !DILocation(line: 2164, column: 14, scope: !213581, inlinedAt: !213694)
!213696 = !DILexicalBlockFile(scope: !213584, file: !3579, discriminator: 2)
!213697 = !DILexicalBlockFile(scope: !213583, file: !3485, discriminator: 2)
!213698 = !DILocation(line: 1165, column: 29, scope: !213697, inlinedAt: !213695)
!213699 = !DILocation(line: 250, column: 5, scope: !213696, inlinedAt: !213698)
!213700 = !DILocation(line: 20, column: 10, scope: !213585, inlinedAt: !213699)
!213701 = !DILocation(line: 1955, column: 21, scope: !213586, inlinedAt: !213700)
!213702 = !DILocation(line: 749, column: 22, scope: !213582, inlinedAt: !213701)
!213703 = !DILexicalBlockFile(scope: !213589, file: !3903, discriminator: 0)
!213704 = !{!213603, !213601, !213599, !213597}
!213705 = !DILocation(line: 1057, column: 28, scope: !213576)
!213706 = !DILexicalBlockFile(scope: !213608, file: !3903, discriminator: 2)
!213707 = !DILocation(line: 1057, column: 28, scope: !213706)
!213708 = !{!213622, !213620, !213618, !213616}
!213709 = !DILexicalBlockFile(scope: !213513, file: !3649, discriminator: 0)
!213710 = !DILocation(line: 1058, column: 56, scope: !213576)
!213711 = !DILexicalBlockFile(scope: !213578, file: !3496, discriminator: 2)
!213712 = !DILexicalBlockFile(scope: !213624, file: !3485, discriminator: 4)
!213713 = !DILocation(line: 1165, column: 29, scope: !213712, inlinedAt: !213710)
!213714 = !DILocation(line: 1058, column: 66, scope: !213625, inlinedAt: !213713)
!213715 = !DILocation(line: 778, column: 9, scope: !213711, inlinedAt: !213714)
!213716 = !DINamespace(name: "{impl#6}", scope: !3904)
!213717 = !DINamespace(name: "try_to_arrow", scope: !213716)
!213718 = !{!213627}
!213719 = !{!213644, !213642, !213640, !213638}
!213720 = !DINamespace(name: "{impl#156}", scope: !4195)
!213721 = !DIFile(filename: "crates/polars-core/src/utils/supertype.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "ee8b0a4d297a90caded07ce0d5b1a72e")
!213722 = !DINamespace(name: "supertype", scope: !3953)
!213723 = !{!213659}
!213724 = !DILexicalBlockFile(scope: !213649, file: !3649, discriminator: 0)
!213725 = !DILocation(line: 970, column: 15, scope: !213513)
!213726 = !DILocation(line: 970, column: 9, scope: !213513)
!213727 = !DILocation(line: 971, column: 24, scope: !213513)
!213728 = !DILocation(line: 971, column: 49, scope: !213513)
!213729 = !DILocation(line: 972, column: 22, scope: !213513)
!213730 = !DILocation(line: 972, column: 45, scope: !213513)
!213731 = !DILocation(line: 973, column: 23, scope: !213513)
!213732 = !DILocation(line: 973, column: 47, scope: !213513)
!213733 = !DILocation(line: 974, column: 23, scope: !213513)
!213734 = !DILocation(line: 974, column: 47, scope: !213513)
!213735 = !DILocation(line: 975, column: 23, scope: !213513)
!213736 = !DILocation(line: 975, column: 47, scope: !213513)
!213737 = !DILocation(line: 976, column: 24, scope: !213513)
!213738 = !DILocation(line: 976, column: 49, scope: !213513)
!213739 = !DILocation(line: 977, column: 21, scope: !213513)
!213740 = !DILocation(line: 977, column: 43, scope: !213513)
!213741 = !DILocation(line: 978, column: 22, scope: !213513)
!213742 = !DILocation(line: 978, column: 45, scope: !213513)
!213743 = !DILocation(line: 979, column: 22, scope: !213513)
!213744 = !DILocation(line: 979, column: 45, scope: !213513)
!213745 = !DILocation(line: 980, column: 22, scope: !213513)
!213746 = !DILocation(line: 980, column: 45, scope: !213513)
!213747 = !DILocation(line: 981, column: 23, scope: !213513)
!213748 = !DILocation(line: 981, column: 47, scope: !213513)
!213749 = !DILocation(line: 982, column: 24, scope: !213513)
!213750 = !DILocation(line: 982, column: 49, scope: !213513)
!213751 = !DILocation(line: 983, column: 24, scope: !213513)
!213752 = !DILocation(line: 983, column: 49, scope: !213513)
!213753 = !DILocation(line: 984, column: 24, scope: !213513)
!213754 = !DILocation(line: 984, column: 49, scope: !213513)
!213755 = !DILocation(line: 987, column: 25, scope: !213514)
!213756 = !DILocation(line: 991, column: 29, scope: !213513)
!213757 = !DILocation(line: 991, column: 26, scope: !213513)
!213758 = !DILocation(line: 996, column: 17, scope: !213515)
!213759 = !DILocation(line: 997, column: 13, scope: !213513)
!213760 = !DILocation(line: 999, column: 29, scope: !213513)
!213761 = !DILocation(line: 999, column: 26, scope: !213513)
!213762 = !DILocation(line: 1004, column: 17, scope: !213516)
!213763 = !DILocation(line: 1005, column: 13, scope: !213513)
!213764 = !DILocation(line: 1052, column: 29, scope: !213513)
!213765 = !DILocation(line: 1052, column: 58, scope: !213513)
!213766 = !DILocation(line: 1006, column: 21, scope: !213513)
!213767 = !DILocation(line: 1006, column: 45, scope: !213513)
!213768 = !DILocation(line: 1007, column: 38, scope: !213517)
!213769 = !DILocation(line: 1008, column: 17, scope: !213517)
!213770 = !DILocation(line: 54, column: 9, scope: !213518, inlinedAt: !213668)
!213771 = !DILocation(line: 745, column: 15, scope: !213519, inlinedAt: !213670)
!213772 = !DILocation(line: 745, column: 9, scope: !213519, inlinedAt: !213670)
!213773 = !DILocation(line: 1011, column: 58, scope: !213521)
!213774 = !DILocation(line: 54, column: 9, scope: !213518, inlinedAt: !213671)
!213775 = !DILocation(line: 1011, column: 31, scope: !213521)
!213776 = !DILocation(line: 1011, column: 74, scope: !213513)
!213777 = !DILocation(line: 1012, column: 21, scope: !213513)
!213778 = !DILocation(line: 1012, column: 72, scope: !213513)
!213779 = !DILocation(line: 1015, column: 26, scope: !213522)
!213780 = !DILocation(line: 1015, column: 29, scope: !213522)
!213781 = !DILocation(line: 99, column: 9, scope: !440, inlinedAt: !213531)
!213782 = !DILocation(line: 101, column: 9, scope: !440, inlinedAt: !213531)
!213783 = !DILocation(line: 248, column: 11, scope: !445, inlinedAt: !213527)
!213784 = !DILocation(line: 248, column: 5, scope: !445, inlinedAt: !213527)
!213785 = !DILocation(line: 250, column: 19, scope: !445, inlinedAt: !213527)
!213786 = !DILocation(line: 292, column: 5, scope: !213525, inlinedAt: !213526)
!213787 = !DILocation(line: 284, column: 5, scope: !213525, inlinedAt: !213526)
!213788 = !DILocation(line: 0, scope: !213513)
!213789 = !DILocation(line: 289, column: 56, scope: !213532, inlinedAt: !213526)
!213790 = !DILocation(line: 1015, column: 75, scope: !213522)
!213791 = !DILocation(line: 1016, column: 17, scope: !213522)
!213792 = !DILocation(line: 1014, column: 33, scope: !213522)
!213793 = !DILocation(line: 1017, column: 14, scope: !213513)
!213794 = !DILocation(line: 1019, column: 17, scope: !213533)
!213795 = !DILocation(line: 1019, column: 20, scope: !213533)
!213796 = !DILocation(line: 99, column: 9, scope: !440, inlinedAt: !213541)
!213797 = !DILocation(line: 101, column: 9, scope: !440, inlinedAt: !213541)
!213798 = !DILocation(line: 248, column: 11, scope: !445, inlinedAt: !213537)
!213799 = !DILocation(line: 248, column: 5, scope: !445, inlinedAt: !213537)
!213800 = !DILocation(line: 250, column: 19, scope: !445, inlinedAt: !213537)
!213801 = !DILocation(line: 292, column: 5, scope: !213525, inlinedAt: !213536)
!213802 = !DILocation(line: 284, column: 5, scope: !213525, inlinedAt: !213536)
!213803 = !DILocation(line: 289, column: 56, scope: !213532, inlinedAt: !213536)
!213804 = !DILocation(line: 1020, column: 13, scope: !213533)
!213805 = !DILocation(line: 1018, column: 25, scope: !213533)
!213806 = !DILocation(line: 1020, column: 15, scope: !213513)
!213807 = !DILocation(line: 1023, column: 29, scope: !213513)
!213808 = !DILocation(line: 1023, column: 26, scope: !213513)
!213809 = !DILocation(line: 1023, column: 55, scope: !213513)
!213810 = !DILocation(line: 1021, column: 21, scope: !213513)
!213811 = !DILocation(line: 1021, column: 43, scope: !213513)
!213812 = !DILocation(line: 1026, column: 40, scope: !213513)
!213813 = !DILocation(line: 1026, column: 45, scope: !213513)
!213814 = !DILocation(line: 1026, column: 60, scope: !213513)
!213815 = !DILocation(line: 1231, column: 15, scope: !213544, inlinedAt: !213545)
!213816 = !DILocation(line: 1231, column: 9, scope: !213544, inlinedAt: !213545)
!213817 = !DILocation(line: 1233, column: 17, scope: !213544, inlinedAt: !213545)
!213818 = !DILocation(line: 1233, column: 23, scope: !213546, inlinedAt: !213545)
!213819 = !DILocation(line: 1233, column: 86, scope: !213544, inlinedAt: !213545)
!213820 = !DILocation(line: 1227, column: 5, scope: !213544, inlinedAt: !213545)
!213821 = !DILocation(line: 1232, column: 16, scope: !213544, inlinedAt: !213545)
!213822 = !DILocation(line: 1026, column: 67, scope: !213513)
!213823 = !DILocation(line: 1032, column: 33, scope: !213547)
!213824 = !DILocation(line: 1032, column: 30, scope: !213547)
!213825 = !DILocation(line: 0, scope: !213547)
!213826 = !DILocation(line: 99, column: 9, scope: !440, inlinedAt: !213557)
!213827 = !DILocation(line: 101, column: 9, scope: !440, inlinedAt: !213557)
!213828 = !DILocation(line: 248, column: 11, scope: !445, inlinedAt: !213553)
!213829 = !DILocation(line: 248, column: 5, scope: !445, inlinedAt: !213553)
!213830 = !DILocation(line: 614, column: 9, scope: !213558, inlinedAt: !213681)
!213831 = !DILocation(line: 1841, column: 86, scope: !213561, inlinedAt: !213677)
!213832 = !DILocation(line: 961, column: 18, scope: !213565, inlinedAt: !213684)
!213833 = !DILocation(line: 69, column: 9, scope: !213570, inlinedAt: !213686)
!213834 = !DILocation(line: 33, column: 9, scope: !213572, inlinedAt: !213689)
!213835 = !DILocation(line: 1050, column: 20, scope: !213575)
!213836 = !DILocation(line: 1050, column: 17, scope: !213575)
!213837 = !DILocation(line: 1050, column: 49, scope: !213575)
!213838 = !DILocation(line: 1051, column: 13, scope: !213513)
!213839 = !DILocation(line: 1054, column: 23, scope: !213513)
!213840 = !DILocation(line: 1055, column: 17, scope: !213576)
!213841 = !DILocation(line: 1056, column: 27, scope: !213576)
!213842 = !DILocation(line: 1056, column: 31, scope: !213576)
!213843 = !DILocation(line: 175, column: 14, scope: !213577, inlinedAt: !213692)
!213844 = !DILocation(line: 1056, column: 43, scope: !213576)
!213845 = !DILocation(line: 1057, column: 34, scope: !213576)
!213846 = !DILocation(line: 1062, column: 32, scope: !213579)
!213847 = !DILocation(line: 1062, column: 26, scope: !213579)
!213848 = !DILocation(line: 1073, column: 6, scope: !213513)
!213849 = !DILocation(line: 987, column: 17, scope: !213514)
!213850 = !DILocation(line: 988, column: 55, scope: !213514)
!213851 = !DILocation(line: 988, column: 17, scope: !213514)
!213852 = !DILocation(line: 989, column: 13, scope: !213513)
!213853 = !DILocation(line: 0, scope: !213580, inlinedAt: !213695)
!213854 = !DILocation(line: 1007, column: 35, scope: !213517)
!213855 = !DILocation(line: 1010, column: 14, scope: !213517)
!213856 = !DILocation(line: 1010, column: 14, scope: !213513)
!213857 = !DILocation(line: 745, column: 13, scope: !213582, inlinedAt: !213701)
!213858 = !DILocation(line: 1721, column: 9, scope: !213587, inlinedAt: !213702)
!213859 = !DILocation(line: 744, column: 9, scope: !213582, inlinedAt: !213701)
!213860 = !DILocation(line: 1955, column: 9, scope: !213586, inlinedAt: !213700)
!213861 = !DILocation(line: 1165, column: 33, scope: !213580, inlinedAt: !213695)
!213862 = !DILocation(line: 250, column: 19, scope: !445, inlinedAt: !213553)
!213863 = !DILocation(line: 292, column: 5, scope: !213550, inlinedAt: !213552)
!213864 = !DILocation(line: 284, column: 5, scope: !213550, inlinedAt: !213552)
!213865 = !DILocation(line: 1026, column: 34, scope: !213513)
!213866 = !DILocation(line: 289, column: 56, scope: !213588, inlinedAt: !213552)
!213867 = !DILocation(line: 1041, column: 21, scope: !213703)
!213868 = !DILocation(line: 1038, column: 20, scope: !213551)
!213869 = !DILocation(line: 1038, column: 17, scope: !213551)
!213870 = !DILocation(line: 1043, column: 13, scope: !213513)
!213871 = !DILocation(line: 612, column: 33, scope: !208, inlinedAt: !213595)
!213872 = !DILocation(line: 779, column: 12, scope: !210, inlinedAt: !213593)
!213873 = !DILocation(line: 780, column: 13, scope: !210, inlinedAt: !213593)
!213874 = !DILocation(line: 2173, column: 15, scope: !213604, inlinedAt: !213705)
!213875 = !DILocation(line: 0, scope: !213604, inlinedAt: !213705)
!213876 = !DILocation(line: 2173, column: 9, scope: !213604, inlinedAt: !213705)
!213877 = !DILocation(line: 2175, column: 17, scope: !213604, inlinedAt: !213705)
!213878 = !DILocation(line: 2189, column: 23, scope: !213606, inlinedAt: !213707)
!213879 = !DILocation(line: 1057, column: 60, scope: !213576)
!213880 = !DILocation(line: 1059, column: 17, scope: !213576)
!213881 = !DILocation(line: 612, column: 33, scope: !208, inlinedAt: !213614)
!213882 = !DILocation(line: 779, column: 12, scope: !210, inlinedAt: !213612)
!213883 = !DILocation(line: 780, column: 13, scope: !210, inlinedAt: !213612)
!213884 = !DILocation(line: 1060, column: 13, scope: !213576)
!213885 = !DILocation(line: 1060, column: 15, scope: !213513)
!213886 = !DILocation(line: 0, scope: !213709)
!213887 = !DILocation(line: 1058, column: 31, scope: !213576)
!213888 = !DILocation(line: 1058, column: 35, scope: !213576)
!213889 = !DILocation(line: 1164, column: 15, scope: !213623, inlinedAt: !213710)
!213890 = !DILocation(line: 1164, column: 9, scope: !213623, inlinedAt: !213710)
!213891 = !DILocation(line: 175, column: 14, scope: !213577, inlinedAt: !213715)
!213892 = !DILocation(line: 0, scope: !213623, inlinedAt: !213710)
!213893 = !DILocation(line: 286, column: 19, scope: !213628, inlinedAt: !213629)
!213894 = !DILocation(line: 292, column: 5, scope: !213628, inlinedAt: !213629)
!213895 = !DILocation(line: 284, column: 5, scope: !213628, inlinedAt: !213629)
!213896 = !DILocation(line: 289, column: 56, scope: !213630, inlinedAt: !213629)
!213897 = !DILocation(line: 1054, column: 38, scope: !213576)
!213898 = !DILocation(line: 175, column: 9, scope: !213577, inlinedAt: !213715)
!213899 = !DILocation(line: 175, column: 32, scope: !213577, inlinedAt: !213715)
!213900 = !DILocation(line: 1165, column: 33, scope: !213623, inlinedAt: !213710)
!213901 = !DILocation(line: 968, column: 5, scope: !213513)
!213902 = !DILocation(line: 612, column: 33, scope: !208, inlinedAt: !213636)
!213903 = !DILocation(line: 779, column: 12, scope: !210, inlinedAt: !213634)
!213904 = !DILocation(line: 780, column: 13, scope: !210, inlinedAt: !213634)
!213905 = !DILocation(line: 1067, column: 32, scope: !213645)
!213906 = !DILocation(line: 1067, column: 52, scope: !213645)
!213907 = !DILocation(line: 320, column: 20, scope: !213648, inlinedAt: !213652)
!213908 = !DILocation(line: 320, column: 20, scope: !213655, inlinedAt: !213657)
!213909 = !DILocation(line: 323, column: 24, scope: !213648, inlinedAt: !213652)
!213910 = !DILocation(line: 621, column: 16, scope: !213650, inlinedAt: !213651)
!213911 = !DILocation(line: 0, scope: !213724, inlinedAt: !213651)
!213912 = !DILocation(line: 320, column: 20, scope: !213662, inlinedAt: !213664)
!213913 = !DILocation(line: 323, column: 24, scope: !213655, inlinedAt: !213657)
!213914 = !DILocation(line: 624, column: 16, scope: !213656, inlinedAt: !213651)
!213915 = !DILocation(line: 631, column: 9, scope: !213649, inlinedAt: !213651)
!213916 = !DILocation(line: 636, column: 2, scope: !213649, inlinedAt: !213651)
!213917 = !DILocation(line: 323, column: 24, scope: !213662, inlinedAt: !213664)
!213918 = !DILocation(line: 627, column: 16, scope: !213663, inlinedAt: !213651)
!213919 = !DILocation(line: 0, scope: !213649, inlinedAt: !213651)
!213920 = !DILocation(line: 1067, column: 56, scope: !213645)
!213921 = !DILocation(line: 1065, column: 41, scope: !213579)
!213922 = !DILocation(line: 1063, column: 41, scope: !213579)
!213923 = !DILocation(line: 1067, column: 90, scope: !213645)
!213924 = !DILocation(line: 1067, column: 64, scope: !213645)
!213925 = !DILocation(line: 0, scope: !213579)
!213926 = !DILocation(line: 1070, column: 17, scope: !213665)
!213927 = !DILocation(line: 1071, column: 13, scope: !213513)
!213928 = distinct !DISubprogram(name: "from_storage<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferIBI_hEE12from_storageCs1LHh8CLbVkQ_11polars_core", scope: !3523, file: !3520, line: 100, type: !3468, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213929 = distinct !DISubprogram(name: "as_ptr<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE6as_ptrCs1LHh8CLbVkQ_11polars_core", scope: !3527, file: !3525, line: 326, type: !3468, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213930 = distinct !DISubprogram(name: "len<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE3lenCs1LHh8CLbVkQ_11polars_core", scope: !3527, file: !3525, line: 316, type: !3468, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213931 = distinct !DILexicalBlock(scope: !213928, file: !3520, line: 101, column: 9)
!213932 = distinct !DILexicalBlock(scope: !213931, file: !3520, line: 102, column: 9)
!213933 = !DILocation(line: 101, column: 27, scope: !213928)
!213934 = !DILocation(line: 102, column: 30, scope: !213931)
!213935 = !DILocation(line: 327, column: 9, scope: !213929, inlinedAt: !213933)
!213936 = !DILocation(line: 317, column: 9, scope: !213930, inlinedAt: !213934)
!213937 = !DILocation(line: 103, column: 9, scope: !213932)
!213938 = !DILocation(line: 108, column: 6, scope: !213928)
!213939 = !DILocation(line: 101, column: 27, scope: !8)
!213940 = !DILocation(line: 102, column: 30, scope: !10)
!213941 = !DILocation(line: 327, column: 9, scope: !7, inlinedAt: !213939)
!213942 = !DILocation(line: 317, column: 9, scope: !9, inlinedAt: !213940)
!213943 = !DILocation(line: 103, column: 9, scope: !11)
!213944 = !DILocation(line: 108, column: 6, scope: !8)
!213945 = !DILocation(line: 101, column: 27, scope: !1865)
!213946 = !DILocation(line: 102, column: 30, scope: !1868)
!213947 = !DILocation(line: 327, column: 9, scope: !1866, inlinedAt: !213945)
!213948 = !DILocation(line: 317, column: 9, scope: !1867, inlinedAt: !213946)
!213949 = !DILocation(line: 103, column: 9, scope: !1869)
!213950 = !DILocation(line: 108, column: 6, scope: !1865)
!213951 = !DILocation(line: 101, column: 27, scope: !15)
!213952 = !DILocation(line: 102, column: 30, scope: !17)
!213953 = !DILocation(line: 327, column: 9, scope: !14, inlinedAt: !213951)
!213954 = !DILocation(line: 317, column: 9, scope: !16, inlinedAt: !213952)
!213955 = !DILocation(line: 103, column: 9, scope: !18)
!213956 = !DILocation(line: 108, column: 6, scope: !15)
!213957 = !DILocation(line: 101, column: 27, scope: !22)
!213958 = !DILocation(line: 102, column: 30, scope: !24)
!213959 = !DILocation(line: 327, column: 9, scope: !21, inlinedAt: !213957)
!213960 = !DILocation(line: 317, column: 9, scope: !23, inlinedAt: !213958)
!213961 = !DILocation(line: 103, column: 9, scope: !25)
!213962 = !DILocation(line: 108, column: 6, scope: !22)
!213963 = !DILocation(line: 101, column: 27, scope: !29)
!213964 = !DILocation(line: 102, column: 30, scope: !31)
!213965 = !DILocation(line: 327, column: 9, scope: !28, inlinedAt: !213963)
!213966 = !DILocation(line: 317, column: 9, scope: !30, inlinedAt: !213964)
!213967 = !DILocation(line: 103, column: 9, scope: !32)
!213968 = !DILocation(line: 108, column: 6, scope: !29)
!213969 = !DILocation(line: 101, column: 27, scope: !36)
!213970 = !DILocation(line: 102, column: 30, scope: !38)
!213971 = !DILocation(line: 327, column: 9, scope: !35, inlinedAt: !213969)
!213972 = !DILocation(line: 317, column: 9, scope: !37, inlinedAt: !213970)
!213973 = !DILocation(line: 103, column: 9, scope: !39)
!213974 = !DILocation(line: 108, column: 6, scope: !36)
!213975 = distinct !DISubprogram(name: "from_vec<u8>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE8from_vecCs1LHh8CLbVkQ_11polars_core", scope: !3523, file: !3520, line: 116, type: !3468, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213976 = distinct !{!213976, !"_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCs1LHh8CLbVkQ_11polars_core"}
!213977 = distinct !{!213977, !213976, !"_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCs1LHh8CLbVkQ_11polars_core: argument 0"}
!213978 = distinct !DILocation(line: 117, column: 9, scope: !213975)
!213979 = distinct !DILocation(line: 101, column: 27, scope: !36, inlinedAt: !213978)
!213980 = distinct !DILocation(line: 102, column: 30, scope: !38, inlinedAt: !213978)
!213981 = !{!213977}
!213982 = !DILocation(line: 117, column: 28, scope: !213975)
!213983 = !DILocation(line: 117, column: 9, scope: !213975)
!213984 = !DILocation(line: 327, column: 9, scope: !35, inlinedAt: !213979)
!213985 = !DILocation(line: 317, column: 9, scope: !37, inlinedAt: !213980)
!213986 = !DILocation(line: 103, column: 9, scope: !39, inlinedAt: !213978)
!213987 = !DILocation(line: 118, column: 6, scope: !213975)
!213988 = !DILocation(line: 101, column: 27, scope: !43)
!213989 = !DILocation(line: 102, column: 30, scope: !45)
!213990 = !DILocation(line: 327, column: 9, scope: !42, inlinedAt: !213988)
!213991 = !DILocation(line: 317, column: 9, scope: !44, inlinedAt: !213989)
!213992 = !DILocation(line: 103, column: 9, scope: !46)
!213993 = !DILocation(line: 108, column: 6, scope: !43)
!213994 = distinct !DISubprogram(name: "from_vec<i32>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCs1LHh8CLbVkQ_11polars_core", scope: !3523, file: !3520, line: 116, type: !3468, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3467)
!213995 = distinct !{!213995, !"_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE12from_storageCs1LHh8CLbVkQ_11polars_core"}
!213996 = distinct !{!213996, !213995, !"_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE12from_storageCs1LHh8CLbVkQ_11polars_core: argument 0"}
!213997 = distinct !DILocation(line: 117, column: 9, scope: !213994)
!213998 = distinct !DILocation(line: 101, column: 27, scope: !43, inlinedAt: !213997)
!213999 = distinct !DILocation(line: 102, column: 30, scope: !45, inlinedAt: !213997)
!214000 = !{!213996}
!214001 = !DILocation(line: 117, column: 28, scope: !213994)
!214002 = !DILocation(line: 117, column: 9, scope: !213994)
!214003 = !DILocation(line: 327, column: 9, scope: !42, inlinedAt: !213998)
!214004 = !DILocation(line: 317, column: 9, scope: !44, inlinedAt: !213999)
!214005 = !DILocation(line: 103, column: 9, scope: !46, inlinedAt: !213997)
!214006 = !DILocation(line: 118, column: 6, scope: !213994)
!214007 = !DILocation(line: 101, column: 27, scope: !50)
!214008 = !DILocation(line: 102, column: 30, scope: !52)
end_hunk_1
