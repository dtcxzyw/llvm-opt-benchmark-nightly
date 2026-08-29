Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zip-43d377fbf55a50b9.zip.32627f3f2b202fb9-cgu.3?download=true
inline.NumInlined: 102
inline.NumDeleted: 11
begin_hunk_0_@_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE8grow_oneCs4kccKc3vGR1_3zip:bb.a
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullShE3lenCs4kccKc3vGR1_3zip(ptr nofree readnone captures(none) %0, i64 returned %1) unnamed_addr #1 {
bb.a:
  ret i64 %1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs2AWtUsOyxgP_3std4path7PathBufmE12insert_entryCs4kccKc3vGR1_3zip(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i32 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4kccKc3vGR1_3zip(ptr nonnull %i.h)
          to label %bb.i unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4kccKc3vGR1_3zip(ptr nonnull %i.h)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCs2AWtUsOyxgP_3std4path7PathBufmNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECs4kccKc3vGR1_3zip()
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.l, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufmNtB18_4LeafE16push_with_handleCs4kccKc3vGR1_3zip(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c, i32 %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCs4kccKc3vGR1_3zip(ptr nonnull align 8 @32) #25
  unreachable

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.v, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.x, ptr %.sroa.2.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.y, align 8
  ret void

bb.i:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufmNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3k_11VacantEntryB1C_mE12insert_entry0ECs4kccKc3vGR1_3zip(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i32 %2, ptr nonnull align 8 %i.z, ptr nonnull %i.h)
  br label %bb.h

bb.j:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsiTMtTTofyMM_10typed_path(ptr nonnull align 8 %i.a) #23
          to label %.thread11 unwind label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread11:                                        ; preds = %bb.j, %bb.l
  %.pn14 = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %lpad.thr_comm, %bb.l ]
  resume { ptr, i32 } %.pn14

bb.l:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsiTMtTTofyMM_10typed_path(ptr nonnull align 8 %1) #23
          to label %.thread11 unwind label %bb.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i16, i16 } @_RNvMs5_NtCs4NRVxsYgnAr_4core3numt11checked_addCs4kccKc3vGR1_3zip(i16 %0, i16 %1) unnamed_addr #1 {
bb.a:
  %i.a = add i16 %1, %0                           ; 2 uses
  %i.b = icmp uge i16 %i.a, %0
  %. = zext i1 %i.b to i16
  %i.c = insertvalue { i16, i16 } poison, i16 %., 0
  %i.d = insertvalue { i16, i16 } %i.c, i16 %i.a, 1
  ret { i16, i16 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i16 @_RNvMs5_NtCs4NRVxsYgnAr_4core3numt11to_le_bytesCs4kccKc3vGR1_3zip(i16 returned %0) unnamed_addr #1 {
bb.a:
  ret i16 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i16 @_RNvMs5_NtCs4NRVxsYgnAr_4core3numt13from_le_bytesCs4kccKc3vGR1_3zip(i16 returned %0) unnamed_addr #1 {
bb.a:
  ret i16 %0
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs2AWtUsOyxgP_3std4path7PathBufmE6insertCs4kccKc3vGR1_3zip(ptr align 8 %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsS_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufmNtB1l_14LeafOrInternalENtB1l_2KVE6kv_mutCs4kccKc3vGR1_3zip(ptr align 8 %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  store i32 %1, ptr %i.b, align 4
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define align 4 ptr @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs2AWtUsOyxgP_3std4path7PathBufmE8into_mutCs4kccKc3vGR1_3zip(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call align 4 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufmNtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCs4kccKc3vGR1_3zip(ptr nonnull align 8 %i.a)
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMs6_NtCs4NRVxsYgnAr_4core3numm13from_le_bytesCs4kccKc3vGR1_3zip(i32 returned %0) unnamed_addr #1 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs7_NtCs4NRVxsYgnAr_4core3numy11checked_addCs4kccKc3vGR1_3zip(i64 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp uge i64 %i.a, %0
  %. = zext i1 %i.b to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %., 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %i.a, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMs7_NtCs4NRVxsYgnAr_4core3numy11to_le_bytesCs4kccKc3vGR1_3zip(i64 returned %0) unnamed_addr #1 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMs7_NtCs4NRVxsYgnAr_4core3numy13from_le_bytesCs4kccKc3vGR1_3zip(i64 returned %0) unnamed_addr #1 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_addCs4kccKc3vGR1_3zip(i64 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp uge i64 %i.a, %0
  %. = zext i1 %i.b to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %., 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %i.a, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_mulCs4kccKc3vGR1_3zip(i64 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %2 = extractvalue { i64, i1 } %i.a, 0
  %not. = xor i1 %i.b, true
  %.sroa.0.0 = zext i1 %not. to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %2, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_subCs4kccKc3vGR1_3zip(i64 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp uge i64 %0, %1                      ; 2 uses
  %i.b = sub nuw i64 %0, %1
  %.sroa.3.0 = select i1 %i.a, i64 %i.b, i64 undef
  %.sroa.0.0 = zext i1 %i.a to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj14saturating_mulCs4kccKc3vGR1_3zip(i64 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %2 = extractvalue { i64, i1 } %i.a, 0
  %.sroa.0.0 = select i1 %i.b, i64 -1, i64 %2
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj17next_power_of_twoCs4kccKc3vGR1_3zip(i64 %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %0, -1
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = lshr i64 -1, %i.c
  %i.e = add i64 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCs4kccKc3vGR1_3zip6result21invalid_archive_const(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #10 {
bb.a:
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXNtCs4NRVxsYgnAr_4core7convertReINtB2_5AsRefNtNtCs2AWtUsOyxgP_3std4path4PathE6as_refCs4kccKc3vGR1_3zip(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RNvXs1p_NtCs2AWtUsOyxgP_3std4patheINtNtCs4NRVxsYgnAr_4core7convert5AsRefNtB6_4PathE6as_refCs4kccKc3vGR1_3zip(ptr %i.a, i64 %i.c)
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXNtCs4NRVxsYgnAr_4core7convertReINtB2_5AsRefNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE6as_refCs4kccKc3vGR1_3zip(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RNvXsW_NtNtCs2AWtUsOyxgP_3std3ffi6os_streINtNtCs4NRVxsYgnAr_4core7convert5AsRefNtB5_5OsStrE6as_refCs4kccKc3vGR1_3zip(ptr %i.a, i64 %i.c)
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNtCs4kccKc3vGR1_3zip8datetimeNtB2_8DateTimeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr nofree readonly align 2 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [96 x i8], align 8                ; 7 uses
  %i.h = alloca [1 x i8], align 1                 ; 2 uses
  %i.i = alloca [1 x i8], align 1                 ; 2 uses
  %i.j = alloca [1 x i8], align 1                 ; 2 uses
  %i.k = alloca [1 x i8], align 1                 ; 2 uses
  %i.l = alloca [1 x i8], align 1                 ; 2 uses
  %i.m = alloca [2 x i8], align 2                 ; 2 uses
  %i.n = load i16, ptr %0, align 2                ; 4 uses
  %i.o = icmp eq i16 %i.n, 33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i16, ptr %i.p, align 2              ; 4 uses
  %i.r = icmp eq i16 %i.q, 0
  %or.cond = select i1 %i.o, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.b, label %_RNvXsb_NtCs4kccKc3vGR1_3zip8datetimeNtB5_8DateTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB7_.exit.thread

_RNvXsb_NtCs4kccKc3vGR1_3zip8datetimeNtB5_8DateTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB7_.exit.thread: ; preds = %bb.a
  %i.s = lshr i16 %i.n, 9
  %i.t = add nuw nsw i16 %i.s, 1980
  store i16 %i.t, ptr %i.m, align 2
  %i.u = lshr i16 %i.n, 5
  %i.v = trunc i16 %i.u to i8
  %i.w = and i8 %i.v, 15
  store i8 %i.w, ptr %i.l, align 1
  %i.x = trunc i16 %i.n to i8
  %i.y = and i8 %i.x, 31
  store i8 %i.y, ptr %i.k, align 1
  %i.z = lshr i16 %i.q, 11
  %i.aa = trunc nuw nsw i16 %i.z to i8
  store i8 %i.aa, ptr %i.j, align 1
  %i.ab = lshr i16 %i.q, 5
  %i.ac = trunc i16 %i.ab to i8
  %i.ad = and i8 %i.ac, 63
  store i8 %i.ad, ptr %i.i, align 1
  %.tr.i = trunc i16 %i.q to i8
  %i.ae = shl i8 %.tr.i, 1
  %i.af = and i8 %i.ae, 62
  store i8 %i.af, ptr %i.h, align 1
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displaytECs4kccKc3vGR1_3zip(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull align 2 %i.m)
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayhECs4kccKc3vGR1_3zip(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull %i.l)
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayhECs4kccKc3vGR1_3zip(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull %i.k)
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayhECs4kccKc3vGR1_3zip(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull %i.j)
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayhECs4kccKc3vGR1_3zip(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull %i.i)
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayhECs4kccKc3vGR1_3zip(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.al = call { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj37_Kj6_ECs4kccKc3vGR1_3zip(ptr nonnull @33, ptr nonnull align 8 %i.g) ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  %i.ao = call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCs4kccKc3vGR1_3zip(ptr align 8 %1, ptr %i.am, ptr %i.an)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = tail call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @34, i64 19)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXsb_NtCs4kccKc3vGR1_3zip8datetimeNtB5_8DateTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB7_.exit.thread
  %.sroa.0.0.in = phi i1 [ %i.ap, %bb.b ], [ %i.ao, %_RNvXsb_NtCs4kccKc3vGR1_3zip8datetimeNtB5_8DateTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB7_.exit.thread ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXNtNtCsaXpgXj134fD_9hashbrown5alloc5innerNtB2_6GlobalNtB2_9Allocator10deallocateCs4kccKc3vGR1_3zip(ptr nofree readnone captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc7deallocCs4kccKc3vGR1_3zip(ptr %1, i64 %2, i64 %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6copied6CopiedINtNtNtB8_5slice4iter4IterhEENvNtCs4kccKc3vGR1_3zip5cp4377to_charENtB2_12IntoIterator9into_iterB25_(ptr %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs0_NtCs4kccKc3vGR1_3zip6resultNtB5_8ZipErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr align 8 %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @36, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENvNtCs4kccKc3vGR1_3zip5cp4377to_charENtNtNtB9_6traits8iterator8Iterator9size_hintB1P_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsmA23ifqKc8_6flate2(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCs4kccKc3vGR1_3zip6result8ZipErrorINtB5_4IntoINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2f_4SyncEL_EE4intoBC_(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXse_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBV_6marker4SendNtB1s_4SyncEL_EINtNtBV_7convert4FromNtNtCs4kccKc3vGR1_3zip6result8ZipErrorE4fromB2n_(ptr align 8 %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1F_4SyncEL_EE4intoCs4kccKc3vGR1_3zip(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsh_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBV_6marker4SendNtB1s_4SyncEL_EINtNtBV_7convert4FromReE4fromCs4kccKc3vGR1_3zip(ptr %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i16 0, 256) i16 @_RNvXs1_NtCs4NRVxsYgnAr_4core7converthINtB5_4IntotE4intoCs4kccKc3vGR1_3zip(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %0 to i16
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i16, i16 } @_RNvXs1_NtCs4kccKc3vGR1_3zip8datetimeNtB5_8DateTimeNtNtCs4NRVxsYgnAr_4core7default7Default7default() unnamed_addr #7 {
bb.a:
  ret { i16, i16 } { i16 33, i16 0 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs7k2go27N1vq_8indexmap6BucketINtNtB7_5boxed3BoxShENtNtCs4kccKc3vGR1_3zip5types11ZipFileDataEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1H_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjd0ZH04R2Z3_5gimli(ptr align 8 %0, i64 8, i64 256)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
