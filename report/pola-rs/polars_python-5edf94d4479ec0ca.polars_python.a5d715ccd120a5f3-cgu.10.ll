Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.10?download=true
inline.NumInlined: 29005
inline.NumDeleted: 13586
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE16into_boxed_sliceCseeLknQCOKOd_13polars_python:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 368)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !90512 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !90519 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !90519
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !90519, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 25063510969714065, !dbg !90520
  tail call void @llvm.assume(i1 %i.f), !dbg !90526
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !90527
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !90527
  ret { ptr, i64 } %i.h, !dbg !90527

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0) #39
          to label %bb.h unwind label %bb.g, !dbg !90528

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !90529 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !90530
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, label %bb.e, !dbg !90531, !prof !435

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !90519
  br label %bb.c, !dbg !90531

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !90529
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #36
          to label %bb.f unwind label %bb.d, !dbg !90532

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !90533
  unreachable, !dbg !90533

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !90533
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneE16into_boxed_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !90534 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !90535, !range !451, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90544 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !90544, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !90545
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !90545

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !90546 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !90553 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !90553
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !90553, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326, !dbg !90554
  tail call void @llvm.assume(i1 %i.f), !dbg !90560
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !90561
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !90561
  ret { ptr, i64 } %i.h, !dbg !90561

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0) #39
          to label %bb.h unwind label %bb.g, !dbg !90562

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !90563 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !90564
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, label %bb.e, !dbg !90565, !prof !435

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !90553
  br label %bb.c, !dbg !90565

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !90563
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #36
          to label %bb.f unwind label %bb.d, !dbg !90566

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !90567
  unreachable, !dbg !90567

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !90567
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 !dbg !1376 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90568
  %i.b = load i64, ptr %i.a, align 8, !dbg !90568, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !90569, !range !451, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !90574
  %i.e = icmp ugt i64 %1, %i.d, !dbg !90576
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !90577, !prof !457

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !90578

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 16), !dbg !90579
  br label %bb.b, !dbg !90579
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE16into_boxed_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !90580 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !90581, !range !451, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90590 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !90590, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !90591
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !90591

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !90592 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !90599 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !90599
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !90599, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 288230376151711744, !dbg !90600
  tail call void @llvm.assume(i1 %i.f), !dbg !90606
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !90607
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !90607
  ret { ptr, i64 } %i.h, !dbg !90607

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0) #39
          to label %bb.h unwind label %bb.g, !dbg !90608

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !90609 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !90610
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, label %bb.e, !dbg !90611, !prof !435

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !90599
  br label %bb.c, !dbg !90611

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !90609
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #36
          to label %bb.f unwind label %bb.d, !dbg !90612

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !90613
  unreachable, !dbg !90613

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !90613
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6removeCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 !dbg !90614 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !90615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90616), !dbg !90619
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !90620 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !90620, !alias.scope !90616, !noalias !90625, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !90627
  tail call void @llvm.assume(i1 %i.c), !dbg !90629
  %.not.i = icmp ult i64 %2, %i.b, !dbg !90630
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit.thread, !dbg !90630

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !90632
  %i.e = load ptr, ptr %i.d, align 8, !dbg !90632, !alias.scope !90616, !noalias !90625, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2, !dbg !90642 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !dbg !90645, !noalias !90616 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !90645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !dbg !90645, !noalias !90616
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !90649
  %i.h = xor i64 %2, -1, !dbg !90651
  %i.i = add nsw i64 %i.b, %i.h, !dbg !90651
  %i.j = mul nuw nsw i64 %i.i, 24, !dbg !90652
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !dbg !90652, !noalias !90655
  %i.k = add nsw i64 %i.b, -1, !dbg !90656        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !90657, !alias.scope !90616, !noalias !90625
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null, !dbg !90615
  br i1 %.not, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit.thread, label %bb.b, !dbg !90660, !prof !90661

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8, !dbg !90662
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !90662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !90662
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !90663
  ret void, !dbg !90664

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE10try_removeCseeLknQCOKOd_13polars_python.exit ], !dbg !90665 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326, !dbg !90668
  tail call void @llvm.assume(i1 %i.m), !dbg !90670
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #44, !dbg !90671
  unreachable, !dbg !90671
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayE16into_boxed_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !90672 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !90673, !range !451, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90682 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !90682, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !90683
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !90683

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !90684 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !90691 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !90691
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !90691, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 1152921504606846976, !dbg !90692
  tail call void @llvm.assume(i1 %i.f), !dbg !90698
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !90699
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !90699
  ret { ptr, i64 } %i.h, !dbg !90699

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayEECseeLknQCOKOd_13polars_python.exit unwind label %bb.g, !dbg !90700

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !90705 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !90706
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, label %bb.e, !dbg !90707, !prof !435

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !90691
  br label %bb.c, !dbg !90707

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !90705
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #36
          to label %bb.f unwind label %bb.d, !dbg !90708

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !90709
  unreachable, !dbg !90709

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !90709
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecPNtNtCscgRAwXFJnXP_4core3ffi6c_voidE16into_boxed_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !90710 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !90711, !range !451, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90720 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !90720, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !90721
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !90721

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !90722 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !90729 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !90729
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !90729, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 1152921504606846976, !dbg !90730
  tail call void @llvm.assume(i1 %i.f), !dbg !90736
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !90737
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !90737
  ret { ptr, i64 } %i.h, !dbg !90737

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecPNtNtCscgRAwXFJnXP_4core3ffi6c_voidENtNtNtBR_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecPNtNtB4_3ffi6c_voidEECseeLknQCOKOd_13polars_python.exit unwind label %bb.g, !dbg !90738

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !90743 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !90744
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge, label %bb.e, !dbg !90745, !prof !435

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !90729
  br label %bb.c, !dbg !90745

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !90743
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #36
          to label %bb.f unwind label %bb.d, !dbg !90746

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !90747
  unreachable, !dbg !90747

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecPNtNtB4_3ffi6c_voidEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !90747
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrNtNtB6_6string6StringEE7reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 !dbg !90748 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90749
  %i.b = load i64, ptr %i.a, align 8, !dbg !90749, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !90750, !range !451, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !90759
  %i.e = icmp ugt i64 %1, %i.d, !dbg !90762
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !90763, !prof !457

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !90764

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 48), !dbg !90765
  br label %bb.b, !dbg !90765
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecdE7reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 !dbg !88764 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90766
  %i.b = load i64, ptr %i.a, align 8, !dbg !90766, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !90767, !range !451, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !90772
  %i.e = icmp ugt i64 %1, %i.d, !dbg !90774
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !90775, !prof !457

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !90776

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8), !dbg !90777
  br label %bb.b, !dbg !90777
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecfE7reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 !dbg !88839 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90778
  %i.b = load i64, ptr %i.a, align 8, !dbg !90778, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !90779, !range !451, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !90784
  %i.e = icmp ugt i64 %1, %i.d, !dbg !90786
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !90787, !prof !457

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !90788

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 4), !dbg !90789
  br label %bb.b, !dbg !90789
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !90790 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !90791, !range !451, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !90800 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !90800, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !90801
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !90801

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !90802 ; 2 uses

end_hunk_0
