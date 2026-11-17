Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/names.names.9c854fec92e96318-cgu.12?download=true
inline.NumInlined: 102
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read3str8DebugStrNtCsdr9GKMNitvw_5names7SectionEINtB8_7SectionBM_E4loadQNCNvBO_4main0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBO_:bb.a
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read6macros10DebugMacroNtCsdr9GKMNitvw_5names7SectionEINtB8_7SectionBS_E4loadQNCNvBU_4main0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsdr9GKMNitvw_5names4main0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 15)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read6macros12DebugMacinfoNtCsdr9GKMNitvw_5names7SectionEINtB8_7SectionBU_E4loadQNCNvBW_4main0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsdr9GKMNitvw_5names4main0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 14)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read8relocateINtB2_14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapE3newB29_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 49)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !26, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !26, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i8, ptr %i.d, align 8, !range !8, !alias.scope !26, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.val.i, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %2, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read3strINtB4_8DebugStrINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE7get_strB2w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !45, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !45, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.e, align 8, !range !8, !alias.scope !45, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !46, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !46, !noundef !5 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.j, align 8, !range !8, !alias.scope !46, !noundef !5
  %i.k = load ptr, ptr %1, align 8, !alias.scope !47, !nonnull !5, !align !9, !noundef !5
  %i.l = icmp ult i64 %i.i, %2
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.g to i64
  store i8 17, ptr %0, align 8
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nuw i64 %i.i, %2
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %2 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = icmp eq i64 %i.i, %2
  br i1 %i.r, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.02.08.i.i.i.i = phi i64 [ %i.v, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.s = phi ptr [ %i.u, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.val6.i.i.i.i = load i8, ptr %i.s, align 1, !noalias !49, !noundef !5
  %i.t = icmp eq i8 %.val6.i.i.i.i, 0
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.v = add nuw i64 %.sroa.02.08.i.i.i.i, 1
  %i.w = icmp eq ptr %i.u, %i.p
  br i1 %i.w, label %.loopexit.i, label %.lr.ph.i.i.i.i

.loopexit.i:                                      ; preds = %bb.d, %bb.c
  store i8 17, ptr %0, align 8, !alias.scope !48
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp ult i64 %.sroa.02.08.i.i.i.i, %i.n
  tail call void @llvm.assume(i1 %i.x)
  %i.y = ptrtoint ptr %i.b to i64
  store ptr %i.k, ptr %0, align 8, !alias.scope !48
  %.sroa.017.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %.sroa.017.sroa.4.0..sroa_idx.i, align 8, !alias.scope !48
  %.sroa.017.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.017.sroa.5.0..sroa_idx.i, align 8, !alias.scope !48
  %.sroa.017.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val.i.i, ptr %.sroa.017.sroa.6.0..sroa_idx.i, align 8, !alias.scope !48
  %.sroa.017.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.017.sroa.8.0..sroa_idx.i, align 8, !alias.scope !48
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_.exit: ; preds = %bb.e, %.loopexit.i, %bb.b
  %.sink94.i.sink = phi i64 [ 8, %bb.b ], [ 8, %.loopexit.i ], [ 40, %bb.e ]
  %.sink93.i.sink = phi i64 [ %i.m, %bb.b ], [ %i.q, %.loopexit.i ], [ %.sroa.02.08.i.i.i.i, %bb.e ]
  %.sink.i.sink = phi i8 [ 2, %bb.b ], [ 2, %.loopexit.i ], [ %.val.i1.i, %bb.e ]
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink94.i.sink
  store i64 %.sink93.i.sink, ptr %.sroa.528.0..sroa_idx.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink.i.sink, ptr %i.z, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store ptr %i.f, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i = load i16, ptr %i.g, align 1, !alias.scope !53 ; 5 uses
  %i.h = load ptr, ptr %1, align 8, !noalias !54, !nonnull !5, !align !9, !noundef !5
  %i.i = load ptr, ptr %i.h, align 8, !noalias !54, !nonnull !5, !noundef !5
  %i.j = getelementptr i8, ptr %i.i, i64 6
  %.val.i = load i16, ptr %i.j, align 1, !noalias !54
  switch i16 %.val.i, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit [
    i16 452, label %bb.c
    i16 -21916, label %bb.d
    i16 -22975, label %bb.d
    i16 332, label %bb.e
    i16 -31132, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.k = icmp ult i16 %switch.tableidx, 15
  br i1 %i.k, label %switch.lookup, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %switch.tableidx11 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.l = icmp ult i16 %switch.tableidx11, 17
  br i1 %i.l, label %switch.lookup12, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

bb.e:                                             ; preds = %bb.b
  %switch.tableidx21 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.m = icmp ult i16 %switch.tableidx21, 20
  br i1 %i.m, label %switch.lookup22, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

bb.f:                                             ; preds = %bb.b
  %switch.tableidx31 = add i16 %.sroa.06.0.copyload.i, -1 ; 3 uses
  %i.n = icmp ult i16 %switch.tableidx31, 12
  br i1 %i.n, label %switch.lookup32, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

switch.lookup:                                    ; preds = %bb.c
  %i.o = zext nneg i16 %switch.tableidx to i64
  %switch.gep.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names, i64 %i.o
  %i.p = zext nneg i16 %switch.tableidx to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.35, i64 %i.p
  %switch.load6.a = load i8, ptr %switch.gep5, align 1
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

switch.lookup12:                                  ; preds = %bb.d
  %i.q = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep13.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.38, i64 %i.q
  %i.r = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep15 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.39, i64 %i.r
  %switch.load16.a = load i8, ptr %switch.gep15, align 1
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

switch.lookup22:                                  ; preds = %bb.e
  %i.s = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep23.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.42, i64 %i.s
  %i.t = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.43, i64 %i.t
  %switch.load26.a = load i8, ptr %switch.gep25, align 1
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

switch.lookup32:                                  ; preds = %bb.f
  %2 = zext nneg i16 %switch.tableidx31 to i64
  %switch.gep33 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.46, i64 %2
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split: ; preds = %switch.lookup, %switch.lookup12, %switch.lookup22, %switch.lookup32
  %switch.tableidx31.sink39 = phi i16 [ %switch.tableidx31, %switch.lookup32 ], [ %switch.tableidx21, %switch.lookup22 ], [ %switch.tableidx11, %switch.lookup12 ], [ %switch.tableidx, %switch.lookup ] ; 2 uses
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.33.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.47, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.44, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.40, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.36, %switch.lookup ]
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.34.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.48, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.45, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.41, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.37, %switch.lookup ]
  %.sroa.07.0.i.ph.in = phi ptr [ %switch.gep33, %switch.lookup32 ], [ %switch.gep23.a, %switch.lookup22 ], [ %switch.gep13.a, %switch.lookup12 ], [ %switch.gep.a, %switch.lookup ]
  %.sroa.08.0.i.ph = phi i8 [ 1, %switch.lookup32 ], [ %switch.load26.a, %switch.lookup22 ], [ %switch.load16.a, %switch.lookup12 ], [ %switch.load6.a, %switch.lookup ]
  %.sroa.07.0.i.ph = load i8, ptr %.sroa.07.0.i.ph.in, align 1
  %i.u = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep35 = getelementptr inbounds nuw i8, ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.33.sink, i64 %i.u
  %switch.load36 = load i8, ptr %switch.gep35, align 1
  %i.v = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep37 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.34.sink, i64 %i.v
  %switch.load38 = load i64, ptr %switch.gep37, align 8
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit: ; preds = %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.07.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %.sroa.07.0.i.ph, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %.sroa.08.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %.sroa.08.0.i.ph, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %.sroa.09.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load36, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %.sroa.010.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load38, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.05.0.copyload.i = load i32, ptr %i.w, align 1, !alias.scope !53
  %i.x = zext i32 %.sroa.05.0.copyload.i to i64
  %.sroa.011.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !53
  %i.y = zext i32 %.sroa.011.0.copyload.i to i64
  store i64 %i.y, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.06.0.copyload.i, ptr %.sroa.83.0..sroa_idx, align 2
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.0.i, ptr %.sroa.94.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.07.0.i, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.08.0.i, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0.i, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store ptr %i.f, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i = load i16, ptr %i.g, align 1, !alias.scope !58 ; 5 uses
  %i.h = load ptr, ptr %1, align 8, !noalias !59, !nonnull !5, !align !9, !noundef !5
  %i.i = load ptr, ptr %i.h, align 8, !noalias !59, !nonnull !5, !noundef !5
  %.val.i = load i16, ptr %i.i, align 1, !noalias !59
  switch i16 %.val.i, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit [
    i16 452, label %bb.c
    i16 -21916, label %bb.d
    i16 -22975, label %bb.d
    i16 332, label %bb.e
    i16 -31132, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.j = icmp ult i16 %switch.tableidx, 15
  br i1 %i.j, label %switch.lookup, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %switch.tableidx11 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.k = icmp ult i16 %switch.tableidx11, 17
  br i1 %i.k, label %switch.lookup12, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

bb.e:                                             ; preds = %bb.b
  %switch.tableidx21 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.l = icmp ult i16 %switch.tableidx21, 20
  br i1 %i.l, label %switch.lookup22, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

bb.f:                                             ; preds = %bb.b
  %switch.tableidx31 = add i16 %.sroa.06.0.copyload.i, -1 ; 3 uses
  %i.m = icmp ult i16 %switch.tableidx31, 12
  br i1 %i.m, label %switch.lookup32, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

switch.lookup:                                    ; preds = %bb.c
  %i.n = zext nneg i16 %switch.tableidx to i64
  %switch.gep.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names, i64 %i.n
  %i.o = zext nneg i16 %switch.tableidx to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.35, i64 %i.o
  %switch.load6.a = load i8, ptr %switch.gep5, align 1
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

switch.lookup12:                                  ; preds = %bb.d
  %i.p = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep13.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.38, i64 %i.p
  %i.q = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep15 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.39, i64 %i.q
  %switch.load16.a = load i8, ptr %switch.gep15, align 1
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

switch.lookup22:                                  ; preds = %bb.e
  %i.r = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep23.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.42, i64 %i.r
  %i.s = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.43, i64 %i.s
  %switch.load26.a = load i8, ptr %switch.gep25, align 1
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

switch.lookup32:                                  ; preds = %bb.f
  %2 = zext nneg i16 %switch.tableidx31 to i64
  %switch.gep33 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.46, i64 %2
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split

_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split: ; preds = %switch.lookup, %switch.lookup12, %switch.lookup22, %switch.lookup32
  %switch.tableidx31.sink39 = phi i16 [ %switch.tableidx31, %switch.lookup32 ], [ %switch.tableidx21, %switch.lookup22 ], [ %switch.tableidx11, %switch.lookup12 ], [ %switch.tableidx, %switch.lookup ] ; 2 uses
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.47.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.47, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.44, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.40, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.36, %switch.lookup ]
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.48.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.48, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.45, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.41, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.37, %switch.lookup ]
  %.sroa.07.0.i.ph.in = phi ptr [ %switch.gep33, %switch.lookup32 ], [ %switch.gep23.a, %switch.lookup22 ], [ %switch.gep13.a, %switch.lookup12 ], [ %switch.gep.a, %switch.lookup ]
  %.sroa.08.0.i.ph = phi i8 [ 1, %switch.lookup32 ], [ %switch.load26.a, %switch.lookup22 ], [ %switch.load16.a, %switch.lookup12 ], [ %switch.load6.a, %switch.lookup ]
  %.sroa.07.0.i.ph = load i8, ptr %.sroa.07.0.i.ph.in, align 1
  %i.t = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep35 = getelementptr inbounds nuw i8, ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.47.sink, i64 %i.t
  %switch.load36 = load i8, ptr %switch.gep35, align 1
  %i.u = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep37 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdr9GKMNitvw_5names.48.sink, i64 %i.u
  %switch.load38 = load i64, ptr %switch.gep37, align 8
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit

_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit: ; preds = %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.07.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %.sroa.07.0.i.ph, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %.sroa.08.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %.sroa.08.0.i.ph, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %.sroa.09.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load36, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %.sroa.010.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load38, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit.sink.split ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.05.0.copyload.i = load i32, ptr %i.v, align 1, !alias.scope !58
  %i.w = zext i32 %.sroa.05.0.copyload.i to i64
  %.sroa.011.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !58
  %i.x = zext i32 %.sroa.011.0.copyload.i to i64
  store i64 %i.x, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.06.0.copyload.i, ptr %.sroa.83.0..sroa_idx, align 2
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.0.i, ptr %.sroa.94.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.07.0.i, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.08.0.i, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0.i, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdr9GKMNitvw_5names.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdr9GKMNitvw_5names.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names.exit.i
    i64 1, label %bb.e
  ], !prof !6

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !62
  store i8 3, ptr %i.a, align 8, !alias.scope !62
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdr9GKMNitvw_5names.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdr9GKMNitvw_5names.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdr9GKMNitvw_5names.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i8 noundef range(i8 4, 9) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %.val16 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = ptrtoint ptr %.val16 to i64
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = sub i64 %i.f, %i.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.h = icmp eq i8 %2, 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95
  %i.j = tail call noundef i64 @_RNvXsX_NtCskKLDkoKarTP_4core5arrayAhj8_NtNtB7_7default7Default7defaultCsdr9GKMNitvw_5names(), !noalias !95
  store i64 %i.j, ptr %i.b, align 8, !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.k = load i64, ptr %i.i, align 8, !alias.scope !97, !noundef !5 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 7
  br i1 %i.l, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  %i.m = tail call noundef i32 @_RNvXs11_NtCskKLDkoKarTP_4core5arrayAhj4_NtNtB8_7default7Default7defaultCsdr9GKMNitvw_5names(), !noalias !100
  store i32 %i.m, ptr %i.a, align 4, !noalias !100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.n = load i64, ptr %i.i, align 8, !alias.scope !102, !noundef !5 ; 2 uses
  %i.o = icmp ugt i64 %i.n, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, -8
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %i.q, ptr %i.c, align 8, !alias.scope !97, !captures !10
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !97
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull %i.b, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !103
  %.sroa.0.0.copyload.i23.i.i.i = load i56, ptr %i.b, align 8, !noalias !104
  %.sroa_idx24.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.sroa.0.0.copyload.i25.i.i.i = load i8, ptr %.sroa_idx24.i.i.i, align 1, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  %.sroa.10.8.insert.ext.i.i.i = zext i8 %.sroa.0.0.copyload.i25.i.i.i to i64
  %.sroa.027.1.insert.ext.i.i.i = zext i56 %.sroa.0.0.copyload.i23.i.i.i to i64
  %.sroa.027.1.insert.shift.i.i.i = shl nuw i64 %.sroa.027.1.insert.ext.i.i.i, 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i = load i8, ptr %i.r, align 8, !range !8, !alias.scope !105, !noundef !5
  %i.s = trunc nuw i8 %.val.i.i.i to i1
  %.sroa.0.sroa.0.0.insert.insert.i.i.i = call i64 @llvm.fshl.i64(i64 %.sroa.10.8.insert.ext.i.i.i, i64 %.sroa.027.1.insert.shift.i.i.i, i64 56) ; 2 uses
  %i.t = call i64 @llvm.bswap.i64(i64 %.sroa.0.sroa.0.0.insert.insert.i.i.i)
  %spec.select.i.i.i.i = select i1 %i.s, i64 %i.t, i64 %.sroa.0.sroa.0.0.insert.insert.i.i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.u = add i64 %i.n, -4
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 4
  store ptr %i.v, ptr %i.c, align 8, !alias.scope !102, !captures !10
  store i64 %i.u, ptr %i.i, align 8, !alias.scope !102
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull %i.a, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !106
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.a, align 4, !noalias !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i2.i.i = load i8, ptr %i.w, align 8, !range !8, !alias.scope !107, !noundef !5
  %i.x = trunc nuw i8 %.val.i2.i.i to i1
  %i.y = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i.i)
  %spec.select.i.i3.i.i = select i1 %i.x, i32 %i.y, i32 %.sroa.0.0.copyload.i.i.i.i
  %i.z = zext i32 %spec.select.i.i3.i.i to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  store i8 17, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i56 0, ptr %.sroa.414.0..sroa_idx, align 1
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.g
  %.sroa.10.0.ph = phi i64 [ %i.z, %bb.g ], [ %spec.select.i.i.i.i, %bb.e ]
  call void @_RNvXCsdr9GKMNitvw_5namesRNtB2_13RelocationMapNtNtNtCsi68uqYEhoRA_5gimli4read8relocate8Relocate15relocate_offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.g, i64 noundef %.sroa.10.0.ph)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_0
