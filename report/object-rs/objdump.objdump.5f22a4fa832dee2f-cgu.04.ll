Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.04?download=true
inline.NumInlined: 86
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtB5_20MachOSectionInternalINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessERShE10parse_kindCs8aoZCP6pRcV_7objdump:bb.a
    i8 18, label %bb.j
    i8 19, label %bb.k
    i8 0, label %bb.l
    i8 11, label %bb.l
    i8 6, label %bb.l
    i8 7, label %bb.l
    i8 9, label %bb.l
    i8 10, label %bb.l
    i8 13, label %bb.l
    i8 16, label %bb.l
    i8 20, label %bb.l
    i8 21, label %bb.l
    i8 22, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  br label %bb.r

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  br label %bb.r

bb.k:                                             ; preds = %bb.d
  br label %bb.r

bb.l:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.j = and i32 %i.a, -2147482624
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.k = icmp eq i64 %i.d, 6
  br i1 %i.k, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.l = load i48, ptr %i.c, align 1
  %i.m = icmp eq i48 %i.l, 92738097012575
  %.not9 = icmp eq i8 %1, 2
  br i1 %.not9, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %.not8 = icmp eq i8 %1, 2
  br i1 %.not8, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = trunc nuw i8 %1 to i1
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.sroa.04.0 = phi i1 [ %i.n, %bb.p ], [ %i.m, %bb.n ]
  %spec.select = select i1 %.sroa.04.0, i8 3, i8 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.d, %bb.c, %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.03.0 = phi i8 [ 1, %bb.l ], [ 12, %bb.b ], [ 0, %bb.c ], [ 6, %bb.e ], [ 5, %bb.f ], [ 3, %bb.g ], [ 1, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 0, %bb.d ], [ %spec.select, %bb.q ], [ 2, %bb.o ]
  ret i8 %.sroa.03.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 13) i8 @_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtB5_20MachOSectionInternalINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessERShE10parse_kindCs8aoZCP6pRcV_7objdump(i1 noundef zeroext %0, i8 noundef range(i8 0, 3) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section64NtNtBb_6endian10EndiannessENtB5_7Section5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %2, i1 noundef zeroext %0) ; 3 uses
  %i.b = tail call { ptr, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho9Section64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section12segment_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %2) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.e = icmp eq i64 %i.d, 7
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i56, ptr %i.c, align 1
  %i.g = icmp eq i56 %i.f, 19793688960196447
  br i1 %i.g, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.i = trunc i32 %i.a to i8
  switch i8 %i.i, label %bb.r [
    i8 1, label %bb.e
    i8 12, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 14, label %bb.g
    i8 5, label %bb.g
    i8 8, label %bb.h
    i8 17, label %bb.i
    i8 18, label %bb.j
    i8 19, label %bb.k
    i8 0, label %bb.l
    i8 11, label %bb.l
    i8 6, label %bb.l
    i8 7, label %bb.l
    i8 9, label %bb.l
    i8 10, label %bb.l
    i8 13, label %bb.l
    i8 16, label %bb.l
    i8 20, label %bb.l
    i8 21, label %bb.l
    i8 22, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  br label %bb.r

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  br label %bb.r

bb.k:                                             ; preds = %bb.d
  br label %bb.r

bb.l:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.j = and i32 %i.a, -2147482624
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.k = icmp eq i64 %i.d, 6
  br i1 %i.k, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.l = load i48, ptr %i.c, align 1
  %i.m = icmp eq i48 %i.l, 92738097012575
  %.not9 = icmp eq i8 %1, 2
  br i1 %.not9, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %.not8 = icmp eq i8 %1, 2
  br i1 %.not8, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = trunc nuw i8 %1 to i1
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.sroa.04.0 = phi i1 [ %i.n, %bb.p ], [ %i.m, %bb.n ]
  %spec.select = select i1 %.sroa.04.0, i8 3, i8 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.d, %bb.c, %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.03.0 = phi i8 [ 1, %bb.l ], [ 12, %bb.b ], [ 0, %bb.c ], [ 6, %bb.e ], [ 5, %bb.f ], [ 3, %bb.g ], [ 1, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 0, %bb.d ], [ %spec.select, %bb.q ], [ 2, %bb.o ]
  ret i8 %.sroa.03.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.f = tail call { i64, ptr } %i.e(i8 noundef 0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.d), !noalias !129, !inline_history !0 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i15 = phi i64 [ %i.l, %bb.b ], [ undef, %bb.a ]
  %storemerge9 = phi ptr [ %i.o, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %storemerge = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge9, ptr %0, align 8
  store i64 %storemerge, ptr %i.b, align 8
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0.i15, 1
  ret { ptr, i64 } %i.j

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i64, ptr } %i.f, 1
  %i.l = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef %i.k, ptr noundef nonnull readonly %i.a) ; 4 uses
  %.not.i = icmp ult i64 %i.l, %i.c
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.l)
  %i.n = add i64 %storemerge.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 12) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.01.0.copyload = load i16, ptr %i.c, align 1
  switch i16 %.sroa.01.0.copyload, label %bb.f [
    i16 452, label %bb.b
    i16 -21916, label %bb.c
    i16 -22975, label %bb.c
    i16 332, label %bb.d
    i16 -31132, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 11, %bb.e ], [ 4, %bb.b ], [ 1, %bb.c ], [ 10, %bb.d ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object16import_librariesCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs9_NtNtNtCseHTIzroA4w0_6object4read2pe6importINtB5_23PeImportLibraryIteratorNtNtBb_2pe16ImageNtHeaders32E3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 4) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %.sroa.01.0.copyload = load i16, ptr %i.c, align 1 ; 2 uses
  %i.d = and i16 %.sroa.01.0.copyload, 8192
  %.not = icmp eq i16 %i.d, 0
  %i.e = and i16 %.sroa.01.0.copyload, 4096
  %.not2 = icmp eq i16 %i.e, 0
  %. = select i1 %.not2, i8 2, i8 0
  %.sroa.0.0 = select i1 %.not, i8 %., i8 3
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object5entryCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load i32, ptr %i.c, align 1
  %i.d = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_12LittleEndianE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val)
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = add i64 %i.g, %i.e
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object7exportsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB6_16PeExportIterator3newNtNtBc_2pe16ImageNtHeaders32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object7importsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsc_NtNtNtCseHTIzroA4w0_6object4read2pe6importINtB5_16PeImportIteratorNtNtBb_2pe16ImageNtHeaders32E3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object8pdb_infoCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef ptr @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 6) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtNtBb_2pe18ImageDataDirectory4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
  %i.k = load i64, ptr %i.c, align 8, !range !11, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.l, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.w, %._crit_edge, %bb.g, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.s = urem i64 %i.p, 28
  %.not.i.not = icmp eq i64 %i.s, 0
  br i1 %.not.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @39, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.w = icmp ult i64 %i.p, 28
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.019.0118 = phi ptr [ %i.n, %.lr.ph ], [ %i.y, %bb.x ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 28 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 12
  %.sroa.093.0.copyload = load i32, ptr %i.z, align 1
  %.not97 = icmp eq i32 %.sroa.093.0.copyload, 2
  br i1 %.not97, label %bb.j, label %bb.x

._crit_edge:                                      ; preds = %bb.x, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 24
  %.sroa.094.0.copyload = load i32, ptr %i.aa, align 1
  %i.ab = zext i32 %.sroa.094.0.copyload to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 16
  %.sroa.095.0.copyload = load i32, ptr %i.ac, align 1
  %i.ad = zext i32 %.sroa.095.0.copyload to i64
  %i.ae = tail call { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_athECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %i.ab, i64 noundef %i.ad) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @38, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %i.ai, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.j
  %i.aj = extractvalue { ptr, i64 } %i.ae, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i99 = icmp ult i64 %i.aj, 4
  br i1 %.not.i99, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @37, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %i.al, align 8
  store i64 1, ptr %0, align 8
  br label %bb.w

bb.n:                                             ; preds = %bb.l
end_hunk_0
