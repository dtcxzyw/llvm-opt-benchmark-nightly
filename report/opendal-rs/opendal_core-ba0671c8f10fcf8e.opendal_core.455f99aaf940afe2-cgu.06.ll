Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.06?download=true
inline.NumInlined: 684
inline.NumDeleted: 367
begin_hunk_0_@_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs5XgW7KoffLW_12opendal_core:bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8, !captures !11
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_8DebugMap7entriesReB12_NtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata12UserMetadataEB1e_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !31 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs9_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_12UserMetadataNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs7_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_20UserMetadataIntoIterNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = load ptr, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.f, align 8, !noundef !12
  store ptr %i.k, ptr %i.b, align 8, !captures !11
  store i64 %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.n = load i64, ptr %i.i, align 8, !noundef !12
  store ptr %i.m, ptr %i.a, align 8, !captures !11
  store i64 %i.n, ptr %i.j, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs7_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_20UserMetadataIntoIterNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.p = load ptr, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE3geteEB1A_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !guid !32 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !12  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  call void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1h_14LeafOrInternalE11search_treeeEB22_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i64, ptr %i.a, align 8, !range !13, !noundef !12
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1l_14LeafOrInternalENtB1l_2KVE7into_kvB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE5rangeB17_INtNtNtCsgxBkk5gSRhY_4core3ops5range9RangeFromB17_EEB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !33 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !12  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvMsd_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCsgxBkk5gSRhY_4core3ops5range9RangeFromB1D_EEB26_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE6removeeEB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !38 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !39, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !39, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40
  call void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1h_14LeafOrInternalE11search_treeeEB20_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !noalias !41
  %i.h = load i64, ptr %i.b, align 8, !range !13, !noalias !40, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread2, label %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit

_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread2: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  br label %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread

_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.k, align 8, !noalias !40
  call void @_RNvMs5_NtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE9remove_kvB1N_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  %.pr.pr = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  %.not = icmp eq i64 %.pr.pr, -1
  br i1 %.not, label %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread

_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread: ; preds = %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit, %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread2, %bb.a, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit.thread2 ], [ 0, %_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE12remove_entryeEB1A_.exit ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6i54tJFfzR_5alloc4sync11data_offsetNtNtNtCs5RLZBEkhFyl_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5XgW7KoffLW_12opendal_core(ptr nofree noundef readnone captures(none) %0) unnamed_addr #2 !guid !42 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6i54tJFfzR_5alloc4sync11data_offsetNtNtNtCs5RLZBEkhFyl_9jiff_core2tz5posix8TimeZoneECs5XgW7KoffLW_12opendal_core(ptr nofree noundef readnone captures(none) %0) unnamed_addr #2 !guid !43 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6i54tJFfzR_5alloc4sync11data_offseteECs5XgW7KoffLW_12opendal_core(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) unnamed_addr #2 !guid !44 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !47 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !48, !nonnull !12, !align !14, !noundef !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !48, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !48, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !48, !noundef !12
  %i.k = load ptr, ptr %3, align 8, !alias.scope !48, !nonnull !12, !noundef !12
  %i.l = load ptr, ptr %i.d, align 8, !noalias !48, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !48, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !48, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !48
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !48
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !48
  store i64 0, ptr %i.b, align 8, !noalias !48
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !48
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !48
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !48
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %4 = zext i32 %i.p to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, 1
  store i64 %6, ptr %i.u, align 8, !noalias !48
  call void @_RNvXs0_NtCsbBx43SIjCL2_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality !guid !49 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !12
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -7) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit5.i, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !16, !invariant.load !12
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -7) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit5.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit5.i: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !guid !54 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.0.val, align 8, !range !17, !alias.scope !55, !noundef !12
  %switch.i.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #21
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #21
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9k3SxhrAWiO_3std9backtrace11BytesOrWideEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !56 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace11BytesOrWideECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace11BytesOrWideECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace11BytesOrWideECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace11BytesOrWideECs5XgW7KoffLW_12opendal_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 !guid !69 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !72, !noundef !12 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !75, !noundef !12
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !75, !nonnull !12, !align !14, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !75, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !75, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !75, !noundef !12
  tail call void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o), !noalias !75, !inline_history !0
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !76
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB11_5error5ErrorEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !103 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !12
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !106, !noundef !12 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !109, !noundef !12
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !109, !nonnull !12, !align !14, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !109, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !109, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !109, !noundef !12
  tail call void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o), !noalias !109, !inline_history !0
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !110
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !525, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !525, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !525, !noundef !12
  tail call void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l), !noalias !525, !inline_history !516
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !526
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %0) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !549 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !553, !noundef !12 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !554
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %0) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !557, !noundef !12 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !560, !noundef !12
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !560, !nonnull !12, !align !14, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !560, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !560, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !560, !noundef !12
  tail call void %i.m(ptr noundef %i.j, ptr noundef %i.o, i64 noundef %i.q), !noalias !560, !inline_history !0
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit
  %i.r = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !561
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.e) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !576 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !577, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !582, !noundef !12 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !583
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !12, !align !14, !noundef !12 ; 5 uses
  %i.j = load ptr, ptr %.val1, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.j(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 0, -7) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit5.i, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !16, !invariant.load !12
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 0, -7) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit5.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit5.i: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.g
  resume { ptr, i32 } %i.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit: ; preds = %bb.f, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringBC_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !584 {
bb.a:
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit1 unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit1: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsgxBkk5gSRhY_4core5clone5Clone5clone13clone_subtreeNtNtBe_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtNtBe_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !611 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = icmp eq i64 %2, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.v = tail call { ptr, i64 } @_RINvMs8_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECs5XgW7KoffLW_12opendal_core() ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 3 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  store ptr %i.w, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  store i64 0, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !21

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %i.ad = add i64 %2, -1                          ; 2 uses
  call fastcc void @_RINvNvXs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsgxBkk5gSRhY_4core5clone5Clone5clone13clone_subtreeNtNtBe_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtNtBe_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %i.ac, i64 noundef %i.ad)
  %i.ae = load ptr, ptr %i.p, align 8, !noundef !12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.y, label %bb.z, !prof !22

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.w
  %.pn59 = phi { ptr, i32 } [ %lpad.phi100, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #23
          to label %bb.ba unwind label %bb.x

bb.d:                                             ; preds = %bb.y, %bb.f
  unreachable

bb.e:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.s, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 626 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !noundef !12
  %.not129 = icmp eq i16 %i.ai, 0
  br i1 %.not129, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.e
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %bb.d unwind label %.loopexit.split-lp

._crit_edge127:                                   ; preds = %bb.v, %bb.e
  %.lcssa119 = phi i64 [ 0, %bb.e ], [ %i.bh, %bb.v ]
  store i64 %.lcssa119, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph126, %bb.v
  %.sroa.7.0124 = phi i64 [ 0, %.lr.ph126 ], [ %i.ao, %bb.v ] ; 2 uses
  %i.al = phi i64 [ 0, %.lr.ph126 ], [ %i.bh, %bb.v ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 %.sroa.7.0124, ptr %.sroa.6.0..sroa_idx, align 8
  %i.am = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1l_4LeafENtB1l_2KVE7into_kvCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.i unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %bb.ac, %._crit_edge127
  ret void

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.an = extractvalue { ptr, ptr } %i.am, 0
  %i.ao = add nuw nsw i64 %.sroa.7.0124, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ap = extractvalue { ptr, ptr } %i.am, 1      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.aq = load i8, ptr %i.ap, align 8, !range !20, !alias.scope !613, !noundef !12
  switch i8 %i.aq, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
    i8 5, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.af, %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.q, align 8, !alias.scope !612
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !23, !alias.scope !613, !noundef !12
  %3 = zext nneg i8 %i.as to i16
  %4 = shl nuw nsw i16 %3, 8
  %5 = or disjoint i16 %4, 1
  store i16 %5, ptr %i.q, align 8, !alias.scope !612
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.m:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !12
  store i8 2, ptr %i.q, align 8, !alias.scope !612
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !614
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %.noexc unwind label %.loopexit96, !noalias !612, !inline_history !5

.noexc:                                           ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !613
  store i8 3, ptr %i.q, align 8, !alias.scope !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !614
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !614
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !615, !noalias !612, !nonnull !12, !noundef !12
  %i.ay = load i64, ptr %i.av, align 8, !alias.scope !615, !noalias !612, !noundef !12
  invoke fastcc void @_RINvXNvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef %i.ay) #28
          to label %.noexc62 unwind label %.loopexit96, !noalias !616, !inline_history !590

.noexc62:                                         ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !613
  store i8 4, ptr %i.q, align 8, !alias.scope !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !614
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !618
  call void @llvm.experimental.noalias.scope.decl(metadata !619), !noalias !612
  call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !612
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !621, !noalias !612, !noundef !12
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.b, align 8, !alias.scope !619, !noalias !618
  store i64 0, ptr %i.aj, align 8, !alias.scope !619, !noalias !618
  br label %.noexc63

bb.r:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !621, !noalias !612, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !621, !noalias !612, !noundef !12
  invoke fastcc void @_RINvNvXs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsgxBkk5gSRhY_4core5clone5Clone5clone13clone_subtreeNtNtBe_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtNtBe_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.bd, i64 noundef %i.bf)
          to label %.noexc63 unwind label %.loopexit96, !noalias !622, !inline_history !597

bb.t:                                             ; preds = %bb.r
  store i64 %i.al, ptr %i.z, align 8
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27
          to label %.noexc75 unwind label %.loopexit.split-lp97, !noalias !623, !inline_history !597

.noexc75:                                         ; preds = %bb.t
  unreachable

.noexc63:                                         ; preds = %bb.q, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !618
  store i8 5, ptr %i.q, align 8, !alias.scope !612
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

.loopexit:                                        ; preds = %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit, %bb.u, %bb.i, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.al, ptr %i.z, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit

_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit: ; preds = %.noexc63, %.noexc62, %.noexc, %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMsu_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB18_4LeafE16push_with_handleCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit
  %i.bg = invoke noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1l_4LeafENtB1l_2KVE12into_val_mutCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.v unwind label %.loopexit  ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bh = add i64 %i.al, 1                        ; 2 uses
  %i.bi = load i16, ptr %i.ah, align 2, !noundef !12
  %i.bj = zext i16 %i.bi to i64
  %i.bk = icmp samesign ult i64 %i.ao, %i.bj
  br i1 %i.bk, label %bb.g, label %._crit_edge127

.loopexit96:                                      ; preds = %bb.s, %bb.o, %bb.n
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.al, ptr %i.z, align 8
  br label %bb.w

.loopexit.split-lp97:                             ; preds = %bb.t
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp97, %.loopexit96
  %lpad.phi100 = phi { ptr, i32 } [ %lpad.loopexit98, %.loopexit96 ], [ %lpad.loopexit.split-lp99, %.loopexit.split-lp97 ]
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.az, %bb.ax, %bb.w, %bb.ay, %bb.aw, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.y:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #29
          to label %bb.d unwind label %.loopexit.split-lp102

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73: ; preds = %.loopexit101, %.loopexit.split-lp102, %bb.ax, %bb.az
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %bb.az ], [ %i.dd, %bb.ax ], [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp102 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #23
          to label %bb.ba unwind label %bb.x

bb.z:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bm = load i64, ptr %i.af, align 8, !alias.scope !624, !noundef !12
  %i.bn = invoke { ptr, i64 } @_RINvMs9_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB19_8InternalE12new_internalNtNtBc_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %i.ae, i64 noundef %i.bm)
          to label %bb.ab unwind label %bb.aa, !noalias !624 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bp = extractvalue { ptr, i64 } %i.bn, 0      ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  store ptr %i.bp, ptr %i.p, align 8, !alias.scope !624
  store i64 %i.bq, ptr %i.af, align 8, !alias.scope !624
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.bq, ptr %i.br, align 8
  store ptr %i.bp, ptr %i.o, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 626 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !noundef !12
  %.not128 = icmp eq i16 %i.bt, 0
  br i1 %.not128, label %bb.ac, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 7 uses
  %.promoted = load i64, ptr %i.bw, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.av
  store i64 %i.cz, ptr %i.bw, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.h

bb.ad:                                            ; preds = %.lr.ph, %bb.av
  %i.bx = phi i64 [ %.promoted, %.lr.ph ], [ %i.cz, %bb.av ] ; 6 uses
  %.sroa.9.0111 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.av ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8
  store i64 %2, ptr %.sroa.520.0..sroa_idx, align 8
  store i64 %.sroa.9.0111, ptr %.sroa.622.0..sroa_idx, align 8
  %i.by = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1l_8InternalENtB1l_2KVE7into_kvCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit101 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bz = extractvalue { ptr, ptr } %i.by, 0
  %i.ca = add nuw nsw i64 %.sroa.9.0111, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz)
          to label %bb.af unwind label %.loopexit101

bb.af:                                            ; preds = %bb.ae
  %i.cb = extractvalue { ptr, ptr } %i.by, 1      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.cc = load i8, ptr %i.cb, align 8, !range !20, !alias.scope !626, !noundef !12
  switch i8 %i.cc, label %default.unreachable [
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.aj
    i8 4, label %bb.ak
    i8 5, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.m, align 8, !alias.scope !625
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !range !23, !alias.scope !626, !noundef !12
  %6 = zext nneg i8 %i.ce to i16
  %7 = shl nuw nsw i16 %6, 8
  %8 = or disjoint i16 %7, 1
  store i16 %8, ptr %i.m, align 8, !alias.scope !625
  br label %bb.aq

bb.ai:                                            ; preds = %bb.af
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cf, i64 16, i1 false), !noalias !12
  store i8 2, ptr %i.m, align 8, !alias.scope !625
  br label %bb.aq

bb.aj:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !627
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %.noexc66 unwind label %.loopexit106, !noalias !625, !inline_history !5

.noexc66:                                         ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !626
  store i8 3, ptr %i.m, align 8, !alias.scope !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !627
  br label %bb.aq

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !627
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !628, !noalias !625, !nonnull !12, !noundef !12
  %i.ck = load i64, ptr %i.ch, align 8, !alias.scope !628, !noalias !625, !noundef !12
  invoke fastcc void @_RINvXNvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cj, i64 noundef %i.ck) #28
          to label %.noexc67 unwind label %.loopexit106, !noalias !629, !inline_history !590

.noexc67:                                         ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !626
  store i8 4, ptr %i.m, align 8, !alias.scope !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !627
  br label %bb.aq

bb.al:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !625
  call void @llvm.experimental.noalias.scope.decl(metadata !633), !noalias !625
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !634, !noalias !625, !noundef !12
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store ptr null, ptr %i.a, align 8, !alias.scope !632, !noalias !631
  store i64 0, ptr %i.bu, align 8, !alias.scope !632, !noalias !631
  br label %.noexc68

bb.an:                                            ; preds = %bb.al
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !634, !noalias !625, !noundef !12 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i77, label %bb.ap, label %bb.ao, !prof !22

bb.ao:                                            ; preds = %bb.an
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !634, !noalias !625, !noundef !12
  invoke fastcc void @_RINvNvXs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsgxBkk5gSRhY_4core5clone5Clone5clone13clone_subtreeNtNtBe_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtNtBe_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.cp, i64 noundef %i.cr)
          to label %.noexc68 unwind label %.loopexit106, !noalias !635, !inline_history !597

bb.ap:                                            ; preds = %bb.an
  store i64 %i.bx, ptr %i.bw, align 8
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27
          to label %.noexc79 unwind label %.loopexit.split-lp107, !noalias !636, !inline_history !597

.noexc79:                                         ; preds = %bb.ap
  unreachable

.noexc68:                                         ; preds = %bb.am, %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  store i8 5, ptr %i.m, align 8, !alias.scope !625
  br label %bb.aq

.loopexit106:                                     ; preds = %bb.aj, %bb.ao, %bb.ak
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bx, ptr %i.bw, align 8
  br label %bb.az

.loopexit.split-lp107:                            ; preds = %bb.ap
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aq:                                            ; preds = %bb.ag, %bb.ah, %bb.ai, %.noexc66, %.noexc67, %.noexc68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cs = icmp samesign ult i64 %.sroa.9.0111, 11
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ca
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNvXs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsgxBkk5gSRhY_4core5clone5Clone5clone13clone_subtreeNtNtBe_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtNtBe_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull %i.cu, i64 noundef %i.ad)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %.sroa.051.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %.sroa.452.0.copyload = load i64, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %.not55 = icmp eq ptr %.sroa.051.0.copyload, null
  br i1 %.not55, label %bb.as, label %bb.au

.loopexit101:                                     ; preds = %bb.au, %bb.ae, %bb.ad
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bx, ptr %i.bw, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73

.loopexit.split-lp102:                            ; preds = %bb.y
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73

bb.as:                                            ; preds = %bb.ar
  %i.cv = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECs5XgW7KoffLW_12opendal_core()
          to label %bb.at unwind label %bb.aw     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at
  %.sroa.538.0 = phi i64 [ %i.cx, %bb.at ], [ %.sroa.452.0.copyload, %bb.ar ]
  %.sroa.037.0 = phi ptr [ %i.cw, %bb.at ], [ %.sroa.051.0.copyload, %bb.ar ]
  invoke void @_RNvMsv_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB18_8InternalE4pushCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull %.sroa.037.0, i64 noundef %.sroa.538.0)
          to label %bb.av unwind label %.loopexit101

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cy = add i64 %.sroa.553.0.copyload, 1
  %i.cz = add i64 %i.cy, %i.bx                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.da = load i16, ptr %i.bs, align 2, !noundef !12
  %i.db = zext i16 %i.da to i64
  %i.dc = icmp samesign ult i64 %i.ca, %i.db
  br i1 %i.dc, label %bb.ad, label %._crit_edge

bb.aw:                                            ; preds = %bb.as
  %i.dd = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bx, ptr %i.bw, align 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #23
          to label %bb.ax unwind label %bb.x

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73 unwind label %bb.x

bb.ay:                                            ; preds = %bb.aq
  %i.de = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bx, ptr %i.bw, align 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #23
          to label %bb.az unwind label %bb.x

bb.az:                                            ; preds = %.loopexit106, %.loopexit.split-lp107, %bb.ay
  %.pn.pn.ph = phi { ptr, i32 } [ %i.de, %bb.ay ], [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ]
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73 unwind label %bb.x

bb.ba:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit ], [ %.pn.pn.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit73 ]
  resume { ptr, i32 } %.pn59.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 288230376151711744) %2) unnamed_addr #4 personality ptr @rust_eh_personality !guid !650 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1018 = alloca [30 x i8], align 2         ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.g = load i64, ptr %i.e, align 8, !range !13, !noundef !12
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !24, !noundef !12 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #29
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.j, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.1018.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.1018, i64 6 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit
  %.sroa.016.046 = phi ptr [ %1, %.lr.ph ], [ %i.v, %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit ] ; 11 uses
  %.sroa.7.044 = phi i64 [ 0, %.lr.ph ], [ %i.w, %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.043 = phi i64 [ %i.j, %.lr.ph ], [ %i.t, %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit ]
  %i.t = add i64 %.sroa.10.043, -1                ; 2 uses
  %i.u = icmp eq ptr %.sroa.016.046, %i.q
  br i1 %i.u, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit
  store i64 %2, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.044, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.x = load i8, ptr %.sroa.016.046, align 8, !range !20, !alias.scope !651, !noundef !12 ; 2 uses
  switch i8 %i.x, label %default.unreachable [
    i8 0, label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !23, !alias.scope !651, !noundef !12
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.1018.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !652
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !653, !inline_history !5

.noexc:                                           ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.1018.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !652
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !652
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !655, !nonnull !12, !noundef !12
  %i.af = load i64, ptr %i.ac, align 8, !alias.scope !655, !noundef !12
  invoke fastcc void @_RINvXNvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ae, i64 noundef %i.af) #28
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !656, !inline_history !642

.noexc12:                                         ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.1018.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !652
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !659, !noalias !660, !noundef !12
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.a, align 8, !alias.scope !658, !noalias !660
  store i64 0, ptr %i.s, align 8, !alias.scope !658, !noalias !660
  br label %.noexc13

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !659, !noalias !660, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.016.046, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !659, !noalias !660, !noundef !12
  invoke fastcc void @_RINvNvXs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsgxBkk5gSRhY_4core5clone5Clone5clone13clone_subtreeNtNtBe_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtNtBe_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.ak, i64 noundef %i.am)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !661, !inline_history !649

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !662, !inline_history !649

.noexc15:                                         ; preds = %bb.m
  unreachable

.noexc13:                                         ; preds = %bb.j, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.1018.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

_RNvXs3_NtCsdMEyVxnODSb_10serde_json5valueNtB5_5ValueNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit: ; preds = %.noexc13, %.noexc12, %.noexc, %bb.f, %bb.e, %bb.d
  %.sroa.9.0 = phi i8 [ undef, %.noexc13 ], [ %i.z, %bb.e ], [ undef, %bb.f ], [ undef, %.noexc ], [ undef, %.noexc12 ], [ undef, %bb.d ]
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.7.044 ; 2 uses
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.1018, i64 30, i1 false)
  %3 = zext nneg i8 %i.x to i16
  %4 = freeze i8 %.sroa.9.0
  %5 = zext i8 %4 to i16
  %6 = shl nuw i16 %5, 8
  %7 = or disjoint i16 %6, %3
  store i16 %7, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1018)
  %i.ao = icmp eq i64 %i.t, 0
  br i1 %i.ao, label %.thread, label %bb.c

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.g, %bb.h, %bb.l, %bb.m
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.044, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %bb.o unwind label %bb.n

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp64
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6listerNtB2_12MemoryLister3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !664 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtBG_6string6StringEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #23
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noundef !12
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !24, !noundef !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.g, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #29
          to label %bb.h unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %i.k = icmp ult i64 %.sroa.53.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.sroa.42.0.copyload, i64 %.sroa.53.0.copyload
  %i.m = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.f, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.59.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.42.0.copyload, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.42.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosE11extend_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !669 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !670, !noundef !12 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !15, !alias.scope !670, !noundef !12
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosE7reserveCs5XgW7KoffLW_12opendal_core.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosE7reserveCs5XgW7KoffLW_12opendal_core.exit

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosE7reserveCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 5 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosE7reserveCs5XgW7KoffLW_12opendal_core.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splatinsert31 = insertelement <4 x i16> poison, i16 %3, i64 0
  %interleaved.vec = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> %broadcast.splatinsert31, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p
  %i.q = getelementptr i8, ptr %i.j, i64 %i.p
  %next.gep33 = getelementptr i8, ptr %i.q, i64 16
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  store <8 x i16> %interleaved.vec, ptr %next.gep33, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !667

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.023.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.022.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.y, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosE7reserveCs5XgW7KoffLW_12opendal_core.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa30 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ] ; 2 uses
  %storemerge.lcssa29 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i16 %2, ptr %.sroa.0.0.lcssa30, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa30, i64 2
  store i16 %3, ptr %i.u, align 2
  %i.v = add i64 %storemerge.lcssa29, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge20 = phi i64 [ %i.v, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge20, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.sroa.0.023 = phi ptr [ %i.y, %.lr.ph ], [ %.sroa.0.023.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.sroa.03.022 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.03.022.ph, %.lr.ph.preheader36 ]
  %i.w = add nuw i64 %.sroa.03.022, 1             ; 2 uses
  store i16 %2, ptr %.sroa.0.023, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 2
  store i16 %3, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !668
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality !guid !681 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_1
