Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.00?download=true
inline.NumInlined: 1399
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs7BtpbLEd5q3_9elfshaker:bb.a

_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !786
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE6resizeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCs7BtpbLEd5q3_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !23, !alias.scope !787, !noundef !5
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i, !prof !375

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !792
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !792, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCs7BtpbLEd5q3_9elfshaker.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !23, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !375

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE6removeCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !793, !noalias !796, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit.thread

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !793, !noalias !796, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !793 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !793
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !798
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !793, !noalias !796
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit.thread, label %bb.b, !prof !799

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE10try_removeCs7BtpbLEd5q3_9elfshaker.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.g

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit._crit_edge, label %bb.e, !prof !374

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7BtpbLEd5q3_9elfshaker.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #24
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !23, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !375

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtB6_6string6StringEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1N_7flatten7FlattenINtB2z_7FlatMapINtNtB4_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB1R_6result6ResultIBL_INtNtNtB1R_5array4iter8IntoIterBY_Kj2_EENtNtB3F_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB5T_5utils11print_tableB2w_B4O_BY_E0EE9from_iterB5T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 16 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !805
  invoke fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtBZ_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB1D_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1F_6string6StringKj2_EENtNtB2q_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB52_5utils11print_tableBW_B3F_B49_E0ENtNtNtB9_6traits8iterator8Iterator4nextB52_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.c unwind label %bb.b, !noalias !800

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !33, !noalias !805, !noundef !5
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !821, !noalias !822, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !821, !noalias !822, !nonnull !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !821, !noalias !822, !nonnull !5
  %i.n = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 6
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !821, !noalias !822, !noundef !5
  %.not53.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i61.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !821, !noalias !822, !nonnull !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val3.i62.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !821, !noalias !822, !nonnull !5
  %i.v = ptrtoint ptr %.val3.i62.i.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i61.i.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 6
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.y
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i ; 2 uses
  %i.aa = load i64, ptr %1, align 8, !range !407, !alias.scope !821, !noalias !822, !noundef !5
  %.not54.i.i.i.i = icmp eq i64 %i.aa, -3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !821, !noalias !822
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  %or.cond.i.i.i.i = select i1 %.not54.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.thread.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !823, !noalias !828, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !823, !noalias !828, !nonnull !5, !noundef !5
  %i.af = icmp eq ptr %.val2.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %i.af, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.thread.i.i.i.i, label %bb.g

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.thread.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.i.i.i.i, %bb.d
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !800, !noalias !803
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !alias.scope !800, !noalias !803
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ah, align 8, !alias.scope !800, !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !805
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlattenINtB1c_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1R_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1T_6string6StringKj2_EENtNtB2E_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB5g_5utils11print_tableB19_B3T_B4n_E0EEB5g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %1), !noalias !800
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_NtNtB6_6string6StringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB21_7flatten7FlattenINtB2N_7FlatMapINtNtB4_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB25_6result6ResultIBS_INtNtNtB25_5array4iter8IntoIterB15_Kj2_EENtNtB3T_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB68_5utils11print_tableB2K_B52_B15_E0EE9from_iterB68_.exit

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %bb.v unwind label %bb.t, !noalias !800

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.thread.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.i.i.i.i
  %.sink80.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.thread.i.i.i.i ], [ %.sroa.5.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.z, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.thread.i.i.i.i ], [ 0, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB19_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1b_6string6StringKj2_EENtNtB1W_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4y_.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %.sink80.i.i.i.sroa.phi.i, align 8, !alias.scope !831, !noalias !832
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !805
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.f, !noalias !800

.noexc.i:                                         ; preds = %bb.g
  %i.ak = load i64, ptr %i.c, align 8, !range !696, !noalias !805, !noundef !5
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !833, !noalias !805, !noundef !5 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.i, !prof !375

bb.h:                                             ; preds = %.noexc.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !805
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #24
          to label %.noexc4.i unwind label %bb.f, !noalias !800

.noexc4.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !805, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = icmp ult i64 %i.aj, %i.an
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !800
  store i64 %i.an, ptr %i.g, align 8, !noalias !805
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !805
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !noalias !800
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtB6_6string6StringEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !844
  invoke fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtBZ_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB1D_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1F_6string6StringKj2_EENtNtB2q_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB52_5utils11print_tableBW_B3F_B49_E0ENtNtNtB9_6traits8iterator8Iterator4nextB52_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.d)
          to label %bb.m unwind label %bb.l, !noalias !800

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.by, %bb.p ], [ %i.bb, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlattenINtB1c_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1R_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1T_6string6StringKj2_EENtNtB2E_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB5g_5utils11print_tableB19_B3T_B4n_E0EEB5g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.d) #22
          to label %.body.i unwind label %bb.r, !noalias !800

bb.l:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.bc = load i64, ptr %i.b, align 8, !range !33, !noalias !844, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.bc, -1
  br i1 %.not.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecIBx_NtNtB8_6string6StringEE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1u_7flatten7FlattenINtB2g_7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB1y_6result6ResultIBx_INtNtNtB1y_5array4iter8IntoIterBK_Kj2_EENtNtB3m_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB5A_5utils11print_tableB2d_B4v_BK_E0EEB5A_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !844
  %i.bd = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !845, !noalias !846, !noundef !5 ; 5 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.g, align 8, !range !23, !alias.scope !845, !noalias !846, !noundef !5
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.o, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtB6_6string6StringEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.bh = load ptr, ptr %i.as, align 8, !alias.scope !862, !noalias !863, !noundef !5
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.bh, null
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !862, !noalias !863, !nonnull !5
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !862, !noalias !863, !nonnull !5
  %i.bi = ptrtoint ptr %.val3.i.i.i.i.i.i.i to i64
  %i.bj = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 6
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i5.i, i64 0, i64 %i.bl
  %i.bm = load ptr, ptr %i.av, align 8, !alias.scope !862, !noalias !863, !noundef !5
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.bm, null
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6S_4pack6PackIdINtNtB1h_6result6ResultIBL_NtNtB6_6string6StringENtNtB6S_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB1h_5slice4iter4IterB7K_EE0IB85_IBL_B84_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB9i_:bb.a
_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB76_4pack6PackIdINtNtB1o_6result6ResultIBS_NtNtB6_6string6StringENtNtB76_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB1o_5slice4iter4IterB7Y_EE0IB8j_IBS_B8i_EB11_EEs_0ENCB6c_s0_0EE9from_iterB9w_.exit: ; preds = %bb.e, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6N_4pack6PackIdINtNtB1e_6result6ResultIBI_NtNtB6_6string6StringENtNtB6N_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB1e_5slice4iter4IterB7F_EE0IB80_IBI_B7Z_EBR_EEs_0ENCB5T_s0_0EE11spec_extendB9d_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6S_4pack10PackReaderIBL_NtNtB6U_7packidx9FileEntryEEINtNtB1h_6result6ResultNtB7M_12ExtractStatsNtNtB6S_5error5ErrorENCINvMsa_B7M_NtB7M_4Pack15extract_entriesRNtNtB46_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7J_EE0IB8G_IBL_B8F_EBU_EEs_0ENCB5Y_s0_0EE9from_iterCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !976
  %i.f = invoke fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB57_4pack10PackReaderINtB1j_3VecNtNtB59_7packidx9FileEntryEEINtNtBb_6result6ResultNtB61_12ExtractStatsNtNtB57_5error5ErrorENCINvMsa_B61_NtB61_4Pack15extract_entriesRNtNtB2m_4path4PathEs0_0INtNtB1j_9into_iter8IntoIterB5Y_EE0IB72_IB6p_B71_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.c unwind label %bb.b, !noalias !973 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, ptr } %i.f, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !978
  invoke void @_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtNtB20_4iter6traits8iterator8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.g unwind label %bb.f, !noalias !973

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !973, !noalias !985
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !973, !noalias !985
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !973, !noalias !985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !976
  tail call void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !973
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB76_4pack10PackReaderIBS_NtNtB78_7packidx9FileEntryEEINtNtB1o_6result6ResultNtB80_12ExtractStatsNtNtB76_5error5ErrorENCINvMsa_B80_NtB80_4Pack15extract_entriesRNtNtB4k_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7X_EE0IB8U_IBS_B8T_EB11_EEs_0ENCB6c_s0_0EE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.h, ptr nonnull %i.i) #22
          to label %bb.v unwind label %bb.u, !noalias !973

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !976
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.f, !noalias !973

.noexc.i:                                         ; preds = %bb.g
  %i.m = load i64, ptr %i.b, align 8, !range !696, !noalias !976, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !833, !noalias !976, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i, !prof !375

bb.h:                                             ; preds = %.noexc.i
  %i.r = load i64, ptr %i.q, align 8, !noalias !976
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #24
          to label %.noexc9.i unwind label %bb.f, !noalias !973

.noexc9.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %i.q, align 8, !noalias !976, !nonnull !5, !noundef !5 ; 3 uses
  %i.t = icmp ugt i64 %i.p, 3
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !976
  store ptr %i.h, ptr %i.s, align 8, !noalias !973
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.i, ptr %i.u, align 8, !noalias !973
  store i64 %i.p, ptr %i.e, align 8, !noalias !976
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !976
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !973
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.i
  %i.v = invoke fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB57_4pack10PackReaderINtB1j_3VecNtNtB59_7packidx9FileEntryEEINtNtBb_6result6ResultNtB61_12ExtractStatsNtNtB57_5error5ErrorENCINvMsa_B61_NtB61_4Pack15extract_entriesRNtNtB2m_4path4PathEs0_0INtNtB1j_9into_iter8IntoIterB5Y_EE0IB72_IB6p_B71_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.m unwind label %bb.l, !noalias !973 ; 2 uses

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.w, %bb.l ]
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body.i unwind label %bb.s, !noalias !973

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.x = extractvalue { ptr, ptr } %i.v, 0        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = extractvalue { ptr, ptr } %i.v, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !992, !noalias !993, !noundef !5 ; 4 uses
  %i.aa = icmp ult i64 %i.z, 576460752303423488
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %i.e, align 8, !range !23, !alias.scope !992, !noalias !993, !noundef !5
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.o, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !996
  invoke void @_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtNtB20_4iter6traits8iterator8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !973

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.n
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !992, !noalias !993, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.z ; 2 uses
  store ptr %i.x, ptr %i.ae, align 8, !noalias !973
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.y, ptr %i.af, align 8, !noalias !973
  %i.ag = add nuw nsw i64 %i.z, 1
  store i64 %i.ag, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !992, !noalias !993
  br label %bb.j

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.x, ptr nonnull %i.y) #22
          to label %bb.k unwind label %bb.s, !noalias !973

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !996
  %i.ai = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !1003, !noalias !993, !noundef !5 ; 2 uses
  %i.aj = load i64, ptr %i.e, align 8, !range !23, !alias.scope !1003, !noalias !993, !noundef !5
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.r, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, !prof !375

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ai, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.p, !noalias !973

bb.s:                                             ; preds = %bb.p, %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !973
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6N_4pack10PackReaderIBI_NtNtB6P_7packidx9FileEntryEEINtNtB1e_6result6ResultNtB7H_12ExtractStatsNtNtB6N_5error5ErrorENCINvMsa_B7H_NtB7H_4Pack15extract_entriesRNtNtB41_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7E_EE0IB8B_IBI_B8A_EBR_EEs_0ENCB5T_s0_0EE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.t, !noalias !973

bb.t:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.am, %bb.t ], [ %.pn.i.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1y_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB2z_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB5k_4pack10PackReaderINtB1w_3VecNtNtB5m_7packidx9FileEntryEEINtNtB4_6result6ResultNtB6e_12ExtractStatsNtNtB5k_5error5ErrorENCINvMsa_B6e_NtB6e_4Pack15extract_entriesRNtNtB2z_4path4PathEs0_0INtNtB1w_9into_iter8IntoIterB6b_EE0IB7f_IB6C_B7e_EINtNtB1y_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEs_0ENCB4q_s0_0EECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.u, !noalias !973

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6N_4pack10PackReaderIBI_NtNtB6P_7packidx9FileEntryEEINtNtB1e_6result6ResultNtB7H_12ExtractStatsNtNtB6N_5error5ErrorENCINvMsa_B7H_NtB7H_4Pack15extract_entriesRNtNtB41_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7E_EE0IB8B_IBI_B8A_EBR_EEs_0ENCB5T_s0_0EE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !976
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB76_4pack10PackReaderIBS_NtNtB78_7packidx9FileEntryEEINtNtB1o_6result6ResultNtB80_12ExtractStatsNtNtB76_5error5ErrorENCINvMsa_B80_NtB80_4Pack15extract_entriesRNtNtB4k_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7X_EE0IB8U_IBS_B8T_EB11_EEs_0ENCB6c_s0_0EE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.u:                                             ; preds = %bb.v, %.body.i, %bb.f
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !973
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1y_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB2z_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB5k_4pack10PackReaderINtB1w_3VecNtNtB5m_7packidx9FileEntryEEINtNtB4_6result6ResultNtB6e_12ExtractStatsNtNtB5k_5error5ErrorENCINvMsa_B6e_NtB6e_4Pack15extract_entriesRNtNtB2z_4path4PathEs0_0INtNtB1w_9into_iter8IntoIterB6b_EE0IB7f_IB6C_B7e_EINtNtB1y_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEs_0ENCB4q_s0_0EECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.v, %.body.i
  %.pn16.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.v ]
  resume { ptr, i32 } %.pn16.i

bb.v:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.l, %bb.f ]
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1y_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB2z_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB5k_4pack10PackReaderINtB1w_3VecNtNtB5m_7packidx9FileEntryEEINtNtB4_6result6ResultNtB6e_12ExtractStatsNtNtB5k_5error5ErrorENCINvMsa_B6e_NtB6e_4Pack15extract_entriesRNtNtB2z_4path4PathEs0_0INtNtB1w_9into_iter8IntoIterB6b_EE0IB7f_IB6C_B7e_EINtNtB1y_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEs_0ENCB4q_s0_0EECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.u, !noalias !973

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB76_4pack10PackReaderIBS_NtNtB78_7packidx9FileEntryEEINtNtB1o_6result6ResultNtB80_12ExtractStatsNtNtB76_5error5ErrorENCINvMsa_B80_NtB80_4Pack15extract_entriesRNtNtB4k_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7X_EE0IB8U_IBS_B8T_EB11_EEs_0ENCB6c_s0_0EE9from_iterCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.e, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6N_4pack10PackReaderIBI_NtNtB6P_7packidx9FileEntryEEINtNtB1e_6result6ResultNtB7H_12ExtractStatsNtNtB6N_5error5ErrorENCINvMsa_B7H_NtB7H_4Pack15extract_entriesRNtNtB41_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7E_EE0IB8B_IBI_B8A_EBR_EEs_0ENCB5T_s0_0EE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBL_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1011
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultIB1T_NtNtB1b_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !1006

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !1012, !noalias !1011, !noundef !5
  %.not.i = icmp eq i64 %i.i, -3
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1023, !noalias !1024, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1025, !noalias !1028, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1025, !noalias !1028, !nonnull !5, !noundef !5
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1023, !noalias !1024, !noundef !5
  %.not53.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1031, !noalias !1034, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1031, !noalias !1034, !nonnull !5, !noundef !5
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !1023, !noalias !1024, !noundef !5
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1023, !noalias !1024, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1023, !noalias !1024, !nonnull !5, !noundef !5
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1006, !noalias !1009
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !1006, !noalias !1009
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !1006, !noalias !1009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1011
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultIB26_NtNtB1o_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !1006
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBS_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.j:                                             ; preds = %bb.l, %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB12_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #22
          to label %bb.ad unwind label %bb.ab, !noalias !1006

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.5.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !1037, !noalias !1038
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1011
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc.i unwind label %bb.j, !noalias !1006

.noexc.i:                                         ; preds = %bb.k
  %i.ai = load i64, ptr %i.c, align 8, !range !696, !noalias !1011, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !833, !noalias !1011, !noundef !5 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m, !prof !375

bb.l:                                             ; preds = %.noexc.i
  %i.an = load i64, ptr %i.am, align 8, !noalias !1011
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #24
          to label %.noexc4.i unwind label %bb.j, !noalias !1006

.noexc4.i:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc.i
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !1011, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp ult i64 %i.ah, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1006
  store i64 %i.al, ptr %i.g, align 8, !noalias !1011
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1011
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBv_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1049
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultIB1T_NtNtB1b_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !1006

bb.o:                                             ; preds = %bb.x, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.ay, %bb.p ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultIB26_NtNtB1o_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.z, !noalias !1006

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.b, align 8, !range !1012, !noalias !1049, !noundef !5
  %.not.i.i5.i = icmp eq i64 %i.az, -3
  br i1 %.not.i.i5.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBx_NtNtB8_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1049
  %i.ba = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1050, !noalias !1051, !noundef !5 ; 5 uses
  %i.bb = icmp ult i64 %i.ba, 164703072086692426
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i64, ptr %i.g, align 8, !range !23, !alias.scope !1050, !noalias !1051, !noundef !5
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBv_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.be = load ptr, ptr %i.aq, align 8, !alias.scope !1062, !noalias !1063, !noundef !5
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1064, !noalias !1067, !nonnull !5, !noundef !5
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !1064, !noalias !1067, !nonnull !5, !noundef !5
  %i.bf = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.bg = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg
  %i.bi = udiv exact i64 %i.bh, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.bi, %bb.t ], [ 0, %bb.s ]
  %i.bj = load ptr, ptr %i.at, align 8, !alias.scope !1062, !noalias !1063, !noundef !5
  %.not53.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %.val.i62.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1070, !noalias !1073, !nonnull !5, !noundef !5
  %.val3.i63.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !1070, !noalias !1073, !nonnull !5, !noundef !5
  %i.bk = ptrtoint ptr %.val3.i63.i.i.i.i.i to i64
  %i.bl = ptrtoint ptr %.val.i62.i.i.i.i.i to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i: ; preds = %bb.u, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.bn, %bb.u ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i ]
  %i.bo = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.bp = load ptr, ptr %i.d, align 8, !alias.scope !1062, !noalias !1063, !noundef !5
  %.not54.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not54.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !1062, !noalias !1063, !nonnull !5, !noundef !5
  %.val61.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1062, !noalias !1063, !nonnull !5, !noundef !5
  %i.bq = icmp eq ptr %.val61.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.bq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtBO_3VecNtNtBQ_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i
  br label %bb.y

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBv_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.y, %bb.r
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1050, !noalias !1051, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.br, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1006
  %i.bt = add nuw nsw i64 %i.ba, 1
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1050, !noalias !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1049
  br label %bb.n

bb.x:                                             ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB12_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #22
          to label %bb.o unwind label %bb.z, !noalias !1006

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sink79.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.w ], [ %.sroa.5.i.i.i, %bb.v ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bo, %bb.w ], [ 0, %bb.v ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1076, !noalias !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bv = add nuw nsw i64 %i.bo, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ba, i64 noundef %i.bv, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBv_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.x, !noalias !1006

bb.z:                                             ; preds = %bb.x, %bb.o
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1006
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBx_NtNtB8_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1049
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultIB26_NtNtB1o_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBI_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.aa, !noalias !1006

bb.aa:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBx_NtNtB8_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %.pn.i.i.i, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.ac unwind label %bb.ab, !noalias !1006

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBI_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBx_NtNtB8_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1011
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBS_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.ab:                                            ; preds = %bb.ad, %.body.i, %bb.j
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1006
  unreachable

bb.ac:                                            ; preds = %bb.ad, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.ad ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn10.i

bb.ad:                                            ; preds = %bb.j, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ag, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultIB26_NtNtB1o_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22
          to label %bb.ac unwind label %bb.ab, !noalias !1006

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBS_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBI_NtNtB6_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBZ_2io5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1083
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBb_2io5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !1078

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !6, !noalias !1083, !noundef !5
  %.not.i = icmp eq i64 %i.i, -2
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1094, !noalias !1095, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1094, !noalias !1095, !nonnull !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1094, !noalias !1095, !nonnull !5
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 6
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1094, !noalias !1095, !noundef !5
  %.not53.i.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1094, !noalias !1095, !nonnull !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1094, !noalias !1095, !nonnull !5
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 6
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.y
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !1094, !noalias !1095, !noundef !5
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1094, !noalias !1095, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1094, !noalias !1095, !nonnull !5, !noundef !5
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1078, !noalias !1081
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !1078, !noalias !1081
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !1078, !noalias !1081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1083
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !1078
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.h:                                             ; preds = %bb.j, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #22
          to label %bb.z unwind label %bb.x, !noalias !1078

bb.i:                                             ; preds = %bb.f, %bb.e
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.f ], [ %.sroa.5.i, %bb.e ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !1096, !noalias !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1083
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
          to label %.noexc.i unwind label %bb.h, !noalias !1078

.noexc.i:                                         ; preds = %bb.i
  %i.ai = load i64, ptr %i.c, align 8, !range !696, !noalias !1083, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !833, !noalias !1083, !noundef !5 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k, !prof !375

bb.j:                                             ; preds = %.noexc.i
  %i.an = load i64, ptr %i.am, align 8, !noalias !1083
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #24
          to label %.noexc4.i unwind label %bb.h, !noalias !1078

.noexc4.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc.i
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !1083, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp ult i64 %i.ah, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !1078
  store i64 %i.al, ptr %i.g, align 8, !noalias !1083
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1083
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !1078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBJ_2io5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1108
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBb_2io5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.o unwind label %bb.n, !noalias !1078

bb.m:                                             ; preds = %bb.t, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.t ], [ %i.ay, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.v, !noalias !1078

bb.n:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.az = load i64, ptr %i.b, align 8, !range !6, !noalias !1108, !noundef !5
  %.not.i.i5.i = icmp eq i64 %i.az, -2
  br i1 %.not.i.i5.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !1108
  %i.ba = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1109, !noalias !1110, !noundef !5 ; 5 uses
  %i.bb = icmp ult i64 %i.ba, 144115188075855872
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i64, ptr %i.g, align 8, !range !23, !alias.scope !1109, !noalias !1110, !noundef !5
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.q, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBJ_2io5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.be = load ptr, ptr %i.aq, align 8, !alias.scope !1121, !noalias !1122, !noundef !5
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1121, !noalias !1122, !nonnull !5
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !1121, !noalias !1122, !nonnull !5
  %i.bf = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.bg = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 6
  %.sroa.7.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.bi
  %i.bj = load ptr, ptr %i.at, align 8, !alias.scope !1121, !noalias !1122, !noundef !5
  %.not53.i.i.i.i.i = icmp eq ptr %i.bj, null
  %.val.i62.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1121, !noalias !1122, !nonnull !5
  %.val3.i63.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !1121, !noalias !1122, !nonnull !5
  %i.bk = ptrtoint ptr %.val3.i63.i.i.i.i.i to i64
  %i.bl = ptrtoint ptr %.val.i62.i.i.i.i.i to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = lshr exact i64 %i.bm, 6
  %.sroa.8.0.i.i.i.i.i = select i1 %.not53.i.i.i.i.i, i64 0, i64 %i.bn
  %i.bo = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.bp = load ptr, ptr %i.d, align 8, !alias.scope !1121, !noalias !1122, !noundef !5
  %.not54.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not54.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !1121, !noalias !1122, !nonnull !5, !noundef !5
  %.val61.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1121, !noalias !1122, !nonnull !5, !noundef !5
  %i.bq = icmp eq ptr %.val61.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.bq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.u

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBJ_2io5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.u, %bb.p
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1109, !noalias !1110, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !1078
  %i.bt = add nuw nsw i64 %i.ba, 1
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1109, !noalias !1110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1108
  br label %bb.l

bb.t:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #22
          to label %bb.m unwind label %bb.v, !noalias !1078

bb.u:                                             ; preds = %bb.s, %bb.r
  %.sink79.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.s ], [ %.sroa.5.i.i.i, %bb.r ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bo, %bb.s ], [ 0, %bb.r ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1123, !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bv = add nuw nsw i64 %i.bo, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ba, i64 noundef %i.bv, i64 noundef 8, i64 noundef 64)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBJ_2io5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.t, !noalias !1078

bb.v:                                             ; preds = %bb.t, %bb.m
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1078
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1108
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBW_2io5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.w, !noalias !1078

bb.w:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %.pn.i.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.y unwind label %bb.x, !noalias !1078

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBW_2io5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1083
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.x:                                             ; preds = %bb.z, %.body.i, %bb.h
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1078
  unreachable

bb.y:                                             ; preds = %bb.z, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.z ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn10.i

bb.z:                                             ; preds = %bb.h, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ag, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22
          to label %bb.y unwind label %bb.x, !noalias !1078

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.g, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBW_2io5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1A_5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1130
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2t_5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !1125

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !1012, !noalias !1130, !noundef !5
  %.not.i = icmp eq i64 %i.i, -3
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1141, !noalias !1142, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1143, !noalias !1146, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1143, !noalias !1146, !nonnull !5, !noundef !5
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1141, !noalias !1142, !noundef !5
  %.not53.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1149, !noalias !1152, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1149, !noalias !1152, !nonnull !5, !noundef !5
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !1141, !noalias !1142, !noundef !5
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1141, !noalias !1142, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1141, !noalias !1142, !nonnull !5, !noundef !5
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1125, !noalias !1128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !1125, !noalias !1128
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !1125, !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1130
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !1125
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1H_5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.j:                                             ; preds = %bb.m, %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !range !25, !alias.scope !1155, !noalias !1130, !noundef !5
  %i.ai = icmp eq i64 %i.ah, -2
  br i1 %i.ai, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.ae unwind label %bb.ac, !noalias !1125

bb.l:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.5.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !1158, !noalias !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1130
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc4.i unwind label %bb.j, !noalias !1125

.noexc4.i:                                        ; preds = %bb.l
  %i.ak = load i64, ptr %i.c, align 8, !range !696, !noalias !1130, !noundef !5
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !833, !noalias !1130, !noundef !5 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n, !prof !375

bb.m:                                             ; preds = %.noexc4.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1130
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #24
          to label %.noexc5.i unwind label %bb.j, !noalias !1125

.noexc5.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc4.i
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !1130, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = icmp ult i64 %i.aj, %i.an
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1125
  store i64 %i.an, ptr %i.g, align 8, !noalias !1130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1130
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !1125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1170
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2t_5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !1125

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.bw, %bb.y ], [ %i.bw, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.aa, !noalias !1125

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %i.b, align 8, !range !1012, !noalias !1170, !noundef !5
  %.not.i.i6.i = icmp eq i64 %i.bb, -3
  br i1 %.not.i.i6.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1170
  %i.bc = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1171, !noalias !1172, !noundef !5 ; 5 uses
  %i.bd = icmp ult i64 %i.bc, 164703072086692426
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr %i.g, align 8, !range !23, !alias.scope !1171, !noalias !1172, !noundef !5
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.bg = load ptr, ptr %i.as, align 8, !alias.scope !1183, !noalias !1184, !noundef !5
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1185, !noalias !1188, !nonnull !5, !noundef !5
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1185, !noalias !1188, !nonnull !5, !noundef !5
  %i.bh = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.bi = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bj = sub nuw i64 %i.bh, %i.bi
  %i.bk = udiv exact i64 %i.bj, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.bk, %bb.t ], [ 0, %bb.s ]
  %i.bl = load ptr, ptr %i.av, align 8, !alias.scope !1183, !noalias !1184, !noundef !5
  %.not53.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %.val.i62.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !1191, !noalias !1194, !nonnull !5, !noundef !5
  %.val3.i63.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1191, !noalias !1194, !nonnull !5, !noundef !5
  %i.bm = ptrtoint ptr %.val3.i63.i.i.i.i.i to i64
  %i.bn = ptrtoint ptr %.val.i62.i.i.i.i.i to i64
  %i.bo = sub nuw i64 %i.bm, %i.bn
  %i.bp = udiv exact i64 %i.bo, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i: ; preds = %bb.u, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.bp, %bb.u ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i ]
  %i.bq = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.br = load ptr, ptr %i.d, align 8, !alias.scope !1183, !noalias !1184, !noundef !5
  %.not54.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not54.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !1183, !noalias !1184, !nonnull !5, !noundef !5
  %.val61.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !1183, !noalias !1184, !nonnull !5, !noundef !5
  %i.bs = icmp eq ptr %.val61.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.bs, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i.i.i
  br label %bb.z

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.z, %bb.r
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1171, !noalias !1172, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1125
  %i.bv = add nuw nsw i64 %i.bc, 1
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1171, !noalias !1172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1170
  br label %bb.o

bb.x:                                             ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load i64, ptr %i.a, align 8, !range !25, !alias.scope !1197, !noalias !1170, !noundef !5
  %i.by = icmp eq i64 %i.bx, -2
  br i1 %i.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.aa, !noalias !1125

bb.z:                                             ; preds = %bb.w, %bb.v
  %.sink79.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.w ], [ %.sroa.5.i.i.i, %bb.v ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bq, %bb.w ], [ 0, %bb.v ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1200, !noalias !1201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bz = add nuw nsw i64 %i.bq, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bc, i64 noundef range(i64 1, 0) %i.bz, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.x, !noalias !1125

bb.aa:                                            ; preds = %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1125
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1170
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1x_5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.ab, !noalias !1125

bb.ab:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.ad unwind label %bb.ac, !noalias !1125

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1x_5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1130
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1H_5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.ac:                                            ; preds = %bb.ae, %.body.i, %bb.k
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1125
  unreachable

bb.ad:                                            ; preds = %bb.ae, %.body.i
  %.pn11.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.ae ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn11.i

bb.ae:                                            ; preds = %bb.k, %bb.j, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22
          to label %bb.ad unwind label %bb.ac, !noalias !1125

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1H_5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1x_5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1207
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !1202

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !1012, !noalias !1207, !noundef !5
  %.not.i = icmp eq i64 %i.i, -3
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1207
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1218, !noalias !1219, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1220, !noalias !1223, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1220, !noalias !1223, !nonnull !5, !noundef !5
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1218, !noalias !1219, !noundef !5
  %.not53.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1226, !noalias !1229, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1226, !noalias !1229, !nonnull !5, !noundef !5
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !1218, !noalias !1219, !noundef !5
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1218, !noalias !1219, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1218, !noalias !1219, !nonnull !5, !noundef !5
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit64.i.i.i
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1202, !noalias !1205
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !1202, !noalias !1205
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !1202, !noalias !1205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1207
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !1202
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCs7BtpbLEd5q3_9elfshaker.exit

bb.j:                                             ; preds = %bb.m, %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !range !25, !alias.scope !1232, !noalias !1207, !noundef !5
  %i.ai = icmp eq i64 %i.ah, -2
  br i1 %i.ai, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.ae unwind label %bb.ac, !noalias !1202

bb.l:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.5.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !1235, !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1207
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc4.i unwind label %bb.j, !noalias !1202

.noexc4.i:                                        ; preds = %bb.l
  %i.ak = load i64, ptr %i.c, align 8, !range !696, !noalias !1207, !noundef !5
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !833, !noalias !1207, !noundef !5 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n, !prof !375

bb.m:                                             ; preds = %.noexc4.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1207
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #24
          to label %.noexc5.i unwind label %bb.j, !noalias !1202

.noexc5.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc4.i
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !1207, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = icmp ult i64 %i.aj, %i.an
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1202
  store i64 %i.an, ptr %i.g, align 8, !noalias !1207
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1207
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !1202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1247
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !1202

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.bw, %bb.y ], [ %i.bw, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.aa, !noalias !1202

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %i.b, align 8, !range !1012, !noalias !1247, !noundef !5
  %.not.i.i6.i = icmp eq i64 %i.bb, -3
  br i1 %.not.i.i6.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1247
  %i.bc = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1248, !noalias !1249, !noundef !5 ; 5 uses
  %i.bd = icmp ult i64 %i.bc, 164703072086692426
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr %i.g, align 8, !range !23, !alias.scope !1248, !noalias !1249, !noundef !5
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveCs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.bg = load ptr, ptr %i.as, align 8, !alias.scope !1260, !noalias !1261, !noundef !5
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, label %bb.t
end_hunk_1
