Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.3?download=true
inline.NumInlined: 77
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1_NtNtCseHTIzroA4w0_6object4read10symbol_mapNtB5_9ObjectMap3get:bb.a
  %i.y = getelementptr i8, ptr %i.u, i64 16
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !73, !noundef !5
  %i.z = sub i64 %1, %.val.i.i
  %i.aa = icmp ult i64 %i.z, %.val2.i.i
  br i1 %i.aa, label %_RNCNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB4_9SymbolMapNtB4_14ObjectMapEntryE10containing0B8_.exit.thread.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE6filterNCNvMBL_INtBL_9SymbolMapBJ_E10containing0EBP_.exit

_RNCNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB4_9SymbolMapNtB4_14ObjectMapEntryE10containing0B8_.exit.thread.i: ; preds = %_RNCNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB4_9SymbolMapNtB4_14ObjectMapEntryE10containing0B8_.exit.i, %bb.d
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE6filterNCNvMBL_INtBL_9SymbolMapBJ_E10containing0EBP_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE6filterNCNvMBL_INtBL_9SymbolMapBJ_E10containing0EBP_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry20binary_search_by_keyyNCNvMBx_INtBx_9SymbolMapBv_E6before0EBB_.exit.i, %bb.a, %bb.b, %_RNCNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB4_9SymbolMapNtB4_14ObjectMapEntryE10containing0B8_.exit.i, %_RNCNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB4_9SymbolMapNtB4_14ObjectMapEntryE10containing0B8_.exit.thread.i
  %.sroa.02.0.i = phi ptr [ null, %_RNCNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB4_9SymbolMapNtB4_14ObjectMapEntryE10containing0B8_.exit.i ], [ %i.u, %_RNCNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB4_9SymbolMapNtB4_14ObjectMapEntryE10containing0B8_.exit.thread.i ], [ null, %bb.b ], [ null, %bb.a ], [ null, %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry20binary_search_by_keyyNCNvMBx_INtBx_9SymbolMapBv_E6before0EBB_.exit.i ]
  ret ptr %.sroa.02.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCseHTIzroA4w0_6object4read10symbol_mapNtB5_9ObjectMap3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !82, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !82, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83
  store ptr %i.a, ptr %i.b, align 8, !noalias !84
  %i.g = icmp samesign ult i64 %i.f, 2
  br i1 %i.g, label %bb.g, label %bb.b, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.h = icmp samesign ult i64 %i.f, 21
  br i1 %i.h, label %bb.d, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyyNCNvMB11_INtB11_9SymbolMapBZ_E3new0E0INtNtB25_3vec3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef range(i64 0, 230584300921369396) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #18
          to label %bb.g unwind label %bb.e, !noalias !86

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyyNCNvMB1o_INtB1o_9SymbolMapB1m_E3new0E0EB1s_(ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef range(i64 0, 230584300921369396) %i.f, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.e, !noalias !86

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #19
          to label %.body unwind label %bb.f, !noalias !87

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !87
  unreachable

.body:                                            ; preds = %bb.e
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13ObjectMapFileEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #19
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_22AttributeIndexIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 12)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !90 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = icmp ugt i64 %i.f, 4294967295
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.j, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store ptr @9, ptr %0, align 8
  store i64 27, ptr %i.i, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.7.8.extract.trunc = trunc nuw i64 %i.f to i32
  store i32 1, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.7.8.extract.trunc, ptr %i.k, align 4
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtB9_4coff7section12SectionTable16pe_file_range_at(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.c, 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtBb_2pe18ImageSectionHeader16pe_file_range_at(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.h, i32 noundef %2), !noalias !95
  %i.i = load i32, ptr %0, align 4, !range !9, !alias.scope !96, !noundef !5
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTmmENCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2H_4coff7section12SectionTable16pe_file_range_at0EBU_.exit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i32 0, ptr %0, align 4, !alias.scope !96
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTmmENCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2H_4coff7section12SectionTable16pe_file_range_at0EBU_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTmmENCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2H_4coff7section12SectionTable16pe_file_range_at0EBU_.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtB9_4coff7section12SectionTable18section_containing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.c, 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2z_4coff7section12SectionTable18section_containing0EBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.thread.i
  %i.f = phi ptr [ %i.g, %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.thread.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.h, align 1, !noalias !100 ; 2 uses
  %i.i = icmp ult i32 %1, %.sroa.01.0.copyload.i.i
  br i1 %i.i, label %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.thread.i, label %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.i

_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.i: ; preds = %.lr.ph.i
  %i.j = sub nuw i32 %1, %.sroa.01.0.copyload.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.k, align 1, !noalias !100
  %i.l = icmp ult i32 %i.j, %.sroa.02.0.copyload.i.i
  br i1 %i.l, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2z_4coff7section12SectionTable18section_containing0EBU_.exit, label %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.thread.i

_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.thread.i: ; preds = %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.i, %.lr.ph.i
  %i.m = icmp eq ptr %i.g, %i.d
  br i1 %i.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2z_4coff7section12SectionTable18section_containing0EBU_.exit, label %.lr.ph.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2z_4coff7section12SectionTable18section_containing0EBU_.exit: ; preds = %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.i, %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.thread.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.thread.i ], [ %i.f, %_RNCNvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBb_4coff7section12SectionTable18section_containing0Bd_.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho6importNtB5_19MachOImportDyldInfo4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ult i64 %i.c, 3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.9111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 4 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.l = phi i64 [ %i.c, %.lr.ph ], [ %i.ac, %.backedge ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.n = load i8, ptr %i.f, align 8, !range !103, !noundef !5 ; 2 uses
  %i.o = icmp eq i8 %i.n, -2
  br i1 %i.o, label %bb.c, label %bb.d

._crit_edge.sink.split:                           ; preds = %bb.c, %bb.t, %bb.r, %bb.o, %bb.x, %_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit
  %.sink160 = phi i64 [ 8, %_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit ], [ 48, %bb.x ], [ 8, %bb.o ], [ 8, %bb.r ], [ 8, %bb.t ], [ 8, %bb.c ]
  %.sink158 = phi i64 [ 33, %_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit ], [ %.sroa.669.0.copyload, %bb.x ], [ 27, %bb.o ], [ 26, %bb.r ], [ 25, %bb.t ], [ %i.s, %bb.c ]
  %.sink.ph = phi i8 [ -1, %_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit ], [ %i.bb, %bb.x ], [ -1, %bb.o ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sink160
  store i64 %.sink158, ptr %i.p, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %._crit_edge.sink.split, %bb.a
  %.sink = phi i8 [ %.sink.ph, %._crit_edge.sink.split ], [ 2, %bb.a ], [ 2, %.backedge ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sink, ptr %i.q, align 8
  ret void

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %.sroa.8110.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.s = load i64, ptr %.sroa.9111.0..sroa_idx, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.d:                                             ; preds = %bb.b
  %.sroa.5107.0.copyload = load i8, ptr %.sroa.5107.0..sroa_idx, align 1
  %.sroa.7109.0.copyload = load i32, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.8110.0.copyload = load ptr, ptr %.sroa.8110.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9111.0.copyload = load i64, ptr %.sroa.9111.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = ptrtoint ptr %.sroa.8110.0.copyload to i64
  switch i8 %i.n, label %default.unreachable [
    i8 -1, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %.backedge
    i8 5, label %.backedge
    i8 6, label %.backedge
    i8 7, label %.backedge
    i8 8, label %bb.j
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 11, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 2 uses
  store i64 %i.v, ptr %i.b, align 8
  %i.w = icmp eq i64 %i.v, 2
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %i.k, align 8
  %i.y = icmp eq i64 %i.u, 0
  %. = zext i1 %i.y to i32
  store i32 %., ptr %i.i, align 8
  store i32 -3, ptr %i.j, align 4
  store ptr null, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.backedge

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.k, align 8, !range !104, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.m, label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ugt ptr %.sroa.8110.0.copyload, inttoptr (i64 2147483647 to ptr)
  br i1 %i.ab, label %bb.o, label %bb.n

bb.h:                                             ; preds = %bb.d
  store i32 1, ptr %i.i, align 8
  store i32 %.sroa.7109.0.copyload, ptr %i.j, align 4
  br label %.backedge

bb.i:                                             ; preds = %bb.d
  store i8 %.sroa.5107.0.copyload, ptr %i.h, align 8
  store ptr %.sroa.8110.0.copyload, ptr %.sroa.566.0..sroa_idx, align 8
  store i64 %.sroa.9111.0.copyload, ptr %.sroa.669.0..sroa_idx, align 8
  store i8 1, ptr %i.g, align 1
  br label %.backedge

.backedge.sink.split:                             ; preds = %bb.l, %bb.m
  store ptr null, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.e, %bb.h, %bb.i, %bb.k, %bb.n, %bb.j, %bb.s, %bb.d, %bb.d, %bb.d, %bb.d
  %i.ac = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %bb.b, label %._crit_edge

bb.j:                                             ; preds = %bb.d, %bb.d, %bb.d
  %.old1 = load i8, ptr %i.g, align 1, !range !104, !noundef !5
  %.old2 = trunc nuw i8 %.old1 to i1
  br i1 %.old2, label %bb.p, label %.backedge

bb.k:                                             ; preds = %bb.d
  %i.ae = icmp ne ptr %.sroa.8110.0.copyload, null
  %i.af = load i8, ptr %i.g, align 1, !range !104
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.p, label %.backedge

bb.l:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8
  %i.aj = icmp eq i64 %i.ai, 2
  %i.ak = zext i1 %i.aj to i8
  store i8 %i.ak, ptr %i.k, align 8
  %i.al = icmp eq i64 %i.ah, 0
  %.131 = zext i1 %i.al to i32
  store i32 %.131, ptr %i.i, align 8
  store i32 -3, ptr %i.j, align 4
  br label %.backedge.sink.split

bb.m:                                             ; preds = %bb.f
  store i32 0, ptr %i.i, align 8
  br label %.backedge.sink.split

bb.n:                                             ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %i.t to i32
  store i32 1, ptr %i.i, align 8
  store i32 %i.am, ptr %i.j, align 4
  br label %.backedge

bb.o:                                             ; preds = %bb.g
  store ptr @10, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.p:                                             ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.g, align 1
  %.sroa.566.0.copyload = load ptr, ptr %.sroa.566.0..sroa_idx, align 8 ; 2 uses
  %.sroa.669.0.copyload = load i64, ptr %.sroa.669.0..sroa_idx, align 8
  %.not129 = icmp eq ptr %.sroa.566.0.copyload, null
  br i1 %.not129, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load i32, ptr %i.i, align 8, !range !9, !noundef !5
  %i.ao = trunc nuw i32 %i.an to i1
  br i1 %i.ao, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  store ptr @11, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.s:                                             ; preds = %bb.q
  %i.ap = load i32, ptr %i.j, align 4             ; 4 uses
  %.not130 = icmp eq i32 %i.ap, 0
  br i1 %.not130, label %.backedge, label %bb.u

bb.t:                                             ; preds = %bb.q
  store ptr @12, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.u:                                             ; preds = %bb.s
  %.sroa.064.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.551.0.extract.trunc.le = trunc i64 %.sroa.064.0.copyload to i8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = icmp slt i32 %i.ap, 1
  br i1 %i.as, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.w, label %_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !105, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !105, !noundef !5
  br label %bb.x

_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit: ; preds = %bb.v
  store ptr @18, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.x:                                             ; preds = %bb.u, %bb.w
  %.sink8.i.ph = phi ptr [ %i.ay, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.u ]
  %.sink.i.ph = phi i64 [ %i.ba, %bb.w ], [ 0, %bb.u ]
  %i.bb = and i8 %.sroa.551.0.extract.trunc.le, 1
  store i8 3, ptr %0, align 8
  %.sroa.087.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.551.0.extract.trunc.le, ptr %.sroa.087.sroa.5.0..sroa_idx, align 1
  %.sroa.087.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ap, ptr %.sroa.087.sroa.7.0..sroa_idx, align 4
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink8.i.ph, ptr %.sroa.588.0..sroa_idx, align 8
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink.i.ph, ptr %.sroa.689.0..sroa_idx, align 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.566.0.copyload, ptr %.sroa.790.0..sroa_idx, align 8
  br label %._crit_edge.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_15AttributeReader11read_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !110, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !110, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !111, !nonnull !5, !noundef !5
  %i.f = tail call { i64, ptr } %i.e(i8 noundef 0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.d), !noalias !111, !inline_history !0 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.f, 1
  %i.j = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.i, ptr noundef nonnull readonly %i.a), !noalias !110 ; 4 uses
  %.not.i.i = icmp ult i64 %i.j, %i.c
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = xor i64 %i.j, -1
  %i.m = add i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink9 = phi ptr [ %i.n, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sink8 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %.sink7 = phi ptr [ %i.a, %bb.b ], [ @13, %bb.a ]
  %.sink = phi i64 [ %i.j, %bb.b ], [ 34, %bb.a ]
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store ptr %.sink9, ptr %1, align 8, !alias.scope !110
  store i64 %.sink8, ptr %i.b, align 8, !alias.scope !110
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink7, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.p, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_15AttributeReader12read_integer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.a, 1
  %spec.select = select i1 %i.c, ptr @14, ptr null
  %spec.select3 = select i1 %i.c, i64 35, i64 %i.d
  store ptr %spec.select, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select3, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_15AttributeReader8read_tag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @15, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.d, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sink7 = phi i64 [ 16, %bb.c ], [ 16, %bb.d ], [ 8, %bb.a ]
  %.sink = phi i64 [ 25, %bb.c ], [ %i.h, %bb.d ], [ 0, %bb.a ]
  %storemerge5 = phi i64 [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7
  store i64 %.sink, ptr %i.j, align 8
  store i64 %storemerge5, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !115 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !116
  store i64 0, ptr %i.a, align 8, !alias.scope !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !115
  br label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
