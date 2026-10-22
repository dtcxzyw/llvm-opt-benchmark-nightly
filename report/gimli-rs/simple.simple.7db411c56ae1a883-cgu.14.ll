Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple.simple.7db411c56ae1a883-cgu.14?download=true
inline.NumInlined: 216
inline.NumDeleted: 94
begin_hunk_0_@_RNvNvCsaN7cMqnSAH7_6simple9dump_file12load_section:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  br i1 %i.z, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.ae = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #21 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %bb.q, !prof !11

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #23
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.638.sroa.0.0.copyload = load i64, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.638.sroa.4.0.copyload = load i64, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.638.sroa.5.0.copyload = load i64, ptr %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsaN7cMqnSAH7_6simple.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.u

bb.q:                                             ; preds = %bb.l
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !557
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @64, ptr %i.aj, align 8
  store i64 -2, ptr %0, align 8
  %i.ak = load i64, ptr %i.d, align 8, !range !8, !alias.scope !558, !noundef !6
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsaN7cMqnSAH7_6simple.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaN7cMqnSAH7_6simple.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaN7cMqnSAH7_6simple.exit.i: ; preds = %bb.r
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsaN7cMqnSAH7_6simple.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsaN7cMqnSAH7_6simple.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaN7cMqnSAH7_6simple.exit.i, %bb.q, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.u:                                             ; preds = %bb.p, %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXCsaN7cMqnSAH7_6simpleRNtB2_13RelocationMapNtNtNtCsi68uqYEhoRA_5gimli4read8relocate8Relocate15relocate_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !9, !noundef !6
  %i.b = tail call noundef i64 @_RNvMsc_NtCs9Jn0q30Ea0B_6object4readNtB5_13RelocationMap8relocate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, i64 noundef %2, i64 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXCsaN7cMqnSAH7_6simpleRNtB2_13RelocationMapNtNtNtCsi68uqYEhoRA_5gimli4read8relocate8Relocate16relocate_address(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !9, !noundef !6
  %i.b = tail call noundef i64 @_RNvMsc_NtCs9Jn0q30Ea0B_6object4readNtB5_13RelocationMap8relocate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, i64 noundef %2, i64 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCsaN7cMqnSAH7_6simple(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  ret i64 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs9Jn0q30Ea0B_6object4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files1_00INtB7_5FnMutTRNtBU_7SectionEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !9, !noundef !6
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.c = load i8, ptr %.val, align 1, !range !15, !noalias !566, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !568
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !569, !nonnull !6, !noundef !6
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !569, !noundef !6
  store ptr %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !568
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.3.0.i.i, ptr %i.d, align 8, !noalias !568
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.c, ptr %i.e, align 8, !noalias !568
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read8relocateINtB2_14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapE3newB29_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !568
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_files0_0INtB7_5FnMutTRNtBS_7SectionEE8call_mutBS_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !9, !noundef !6
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.c = load i8, ptr %.val, align 1, !range !15, !noalias !577, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !579
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !580, !nonnull !6, !noundef !6
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !580, !noundef !6
  store ptr %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !579
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.3.0.i.i, ptr %i.d, align 8, !noalias !579
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.c, ptr %i.e, align 8, !noalias !579
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read8relocateINtB2_14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapE3newB29_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !579
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtB6_5Debug3fmtCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !9, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !584
  store ptr %i.b, ptr %i.a, align 8, !noalias !584
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !584
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 25) %2) unnamed_addr #0 {
switch.hole_check:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !9, !noundef !6
  %i.a = load ptr, ptr %.val, align 8, !noalias !587, !nonnull !6, !align !9, !noundef !6
  %switch.maskindex = zext nneg i8 %2 to i32
  %switch.shifted = lshr i32 32568841, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.a

bb.a:                                             ; preds = %switch.hole_check
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24, !noalias !587
  unreachable

switch.lookup:                                    ; preds = %switch.hole_check
  %i.b = zext nneg i8 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %2 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_.24, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call fastcc void @_RNvNvCsaN7cMqnSAH7_6simple9dump_file12load_section(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_file0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 25) %2) unnamed_addr #0 {
switch.lookup:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !9, !noundef !6
  %i.a = load ptr, ptr %.val, align 8, !noalias !590, !nonnull !6, !align !9, !noundef !6
  %i.b = zext nneg i8 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_file0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %2 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_file0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_.25, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call fastcc void @_RNvNvCsaN7cMqnSAH7_6simple9dump_file12load_section(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsO_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB2F_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = load i64, ptr %0, align 16, !range !18, !noundef !6
  switch i64 %i.av, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
    i64 37, label %bb.am
    i64 38, label %bb.an
    i64 39, label %bb.ao
    i64 40, label %bb.ap
    i64 41, label %bb.aq
    i64 42, label %bb.ar
    i64 43, label %bb.as
    i64 44, label %bb.at
    i64 45, label %bb.au
    i64 46, label %bb.av
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.au, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4, ptr noundef nonnull %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.at, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.aw

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.as, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 5, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.aw

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.ar, align 8
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 5, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.aw

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.aq, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 5, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.aw

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.ap, align 8
  %i.bh = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 5, ptr noundef nonnull %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.aw

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.ao, align 8
  %i.bj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 6, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.aw

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.an, align 8
  %i.bl = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 5, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.aw

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.am, align 8
  %i.bn = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 5, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.aw

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.al, align 8
  %i.bp = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 7, ptr noundef nonnull %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.aw

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.ak, align 8
  %i.br = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 4, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88)
end_hunk_0
begin_hunk_1_@_RNvXsO_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB2F_:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %i.q, align 8
  %i.df = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 20, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.aw

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.p, align 8
  %i.dh = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 15, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.aw

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.o, align 8
  %i.dj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 6, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aw

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.n, align 8
  %i.dl = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 8, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @130)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.aw

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %i.m, align 8
  %i.dn = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 11, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aw

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.l, align 8
  %i.dp = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 9, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aw

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dq, ptr %i.k, align 8
  %i.dr = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 13, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aw

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.j, align 8
  %i.dt = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 10, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aw

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.du, ptr %i.i, align 8
  %i.dv = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 10, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @140)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aw

bb.ao:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.h, align 8
  %i.dx = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 8, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aw

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dy, ptr %i.g, align 8
  %i.dz = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 12, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @144)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aw

bb.aq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.f, align 8
  %i.eb = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 14, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aw

bb.ar:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.e, align 8
  %i.ed = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 17, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @148)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aw

bb.as:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.d, align 8
  %i.ef = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @150)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aw

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %i.c, align 8
  %i.eh = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aw

bb.au:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.b, align 8
  %i.ej = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aw

bb.av:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %i.a, align 8
  %i.el = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.ax, %bb.b ], [ %i.az, %bb.c ], [ %i.bb, %bb.d ], [ %i.bd, %bb.e ], [ %i.bf, %bb.f ], [ %i.bh, %bb.g ], [ %i.bj, %bb.h ], [ %i.bl, %bb.i ], [ %i.bn, %bb.j ], [ %i.bp, %bb.k ], [ %i.br, %bb.l ], [ %i.bt, %bb.m ], [ %i.bv, %bb.n ], [ %i.bx, %bb.o ], [ %i.bz, %bb.p ], [ %i.cb, %bb.q ], [ %i.cd, %bb.r ], [ %i.cf, %bb.s ], [ %i.ch, %bb.t ], [ %i.cj, %bb.u ], [ %i.cl, %bb.v ], [ %i.cn, %bb.w ], [ %i.cp, %bb.x ], [ %i.cr, %bb.y ], [ %i.ct, %bb.z ], [ %i.cv, %bb.aa ], [ %i.cx, %bb.ab ], [ %i.cz, %bb.ac ], [ %i.db, %bb.ad ], [ %i.dd, %bb.ae ], [ %i.df, %bb.af ], [ %i.dh, %bb.ag ], [ %i.dj, %bb.ah ], [ %i.dl, %bb.ai ], [ %i.dn, %bb.aj ], [ %i.dp, %bb.ak ], [ %i.dr, %bb.al ], [ %i.dt, %bb.am ], [ %i.dv, %bb.an ], [ %i.dx, %bb.ao ], [ %i.dz, %bb.ap ], [ %i.eb, %bb.aq ], [ %i.ed, %bb.ar ], [ %i.ef, %bb.as ], [ %i.eh, %bb.at ], [ %i.ej, %bb.au ], [ %i.el, %bb.av ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs9Jn0q30Ea0B_6object4readNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtCsi68uqYEhoRA_5gimli4readNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = load i8, ptr %0, align 8, !range !591, !noundef !6
  switch i8 %i.ak, label %default.unreachable1 [
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
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
    i8 37, label %bb.am
    i8 38, label %bb.an
    i8 39, label %bb.ao
    i8 40, label %bb.ap
    i8 41, label %bb.aq
    i8 42, label %bb.ar
    i8 43, label %bb.as
    i8 44, label %bb.at
    i8 45, label %bb.au
    i8 46, label %bb.av
    i8 47, label %bb.aw
    i8 48, label %bb.ax
    i8 49, label %bb.ay
    i8 50, label %bb.az
    i8 51, label %bb.ba
    i8 52, label %bb.bb
    i8 53, label %bb.bc
    i8 54, label %bb.bd
    i8 55, label %bb.be
    i8 56, label %bb.bf
    i8 57, label %bb.bg
    i8 58, label %bb.bh
    i8 59, label %bb.bi
    i8 60, label %bb.bj
    i8 61, label %bb.bk
    i8 62, label %bb.bl
    i8 63, label %bb.bm
    i8 64, label %bb.bn
    i8 65, label %bb.bo
    i8 66, label %bb.bp
    i8 67, label %bb.bq
    i8 68, label %bb.br
    i8 69, label %bb.bs
    i8 70, label %bb.bt
    i8 71, label %bb.bu
    i8 72, label %bb.bv
    i8 73, label %bb.bw
    i8 74, label %bb.bx
    i8 75, label %bb.by
    i8 76, label %bb.bz
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 2)
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 42)
  br label %bb.ca

bb.d:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 41)
  br label %bb.ca

bb.e:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 41)
  br label %bb.ca

bb.f:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 31)
  br label %bb.ca

bb.g:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 30)
  br label %bb.ca

bb.h:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 17)
  br label %bb.ca

bb.i:                                             ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 15)
  br label %bb.ca

bb.j:                                             ; preds = %bb.a
  %i.at = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 19)
  br label %bb.ca

bb.k:                                             ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 17)
  br label %bb.ca

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 17)
  br label %bb.ca

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.aw, ptr %i.aj, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 27, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ca

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ay, ptr %i.ai, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 11, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ca

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.ah, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 25, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.ca

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 21, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ca

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.af, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 14, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ca

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.ae, align 8
  %i.bh = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 23, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ca

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.ad, align 8
  %i.bj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 13, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ca

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.bk, ptr %i.ac, align 8
  %i.bl = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 20, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ca

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.bm, ptr %i.ab, align 8
  %i.bn = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 22, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ca

bb.v:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvXsi_NtCsi68uqYEhoRA_5gimli4readNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  %i.db = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef 17)
  br label %bb.ca

bb.ay:                                            ; preds = %bb.a
  %i.dc = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @215, i64 noundef 22)
  br label %bb.ca

bb.az:                                            ; preds = %bb.a
  %i.dd = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 17)
  br label %bb.ca

bb.ba:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.de, ptr %i.p, align 8
  %i.df = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @218, i64 noundef 22, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ca

bb.bb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.o, align 8
  %i.dh = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 20, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ca

bb.bc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.n, align 8
  %i.dj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @220, i64 noundef 17, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ca

bb.bd:                                            ; preds = %bb.a
  %i.dk = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 19)
  br label %bb.ca

bb.be:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.dl, ptr %i.m, align 8
  %i.dm = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 26, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ca

bb.bf:                                            ; preds = %bb.a
  %i.dn = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 26)
  br label %bb.ca

bb.bg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.l, align 8
  %i.dp = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 19, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ca

bb.bh:                                            ; preds = %bb.a
  %i.dq = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @225, i64 noundef 20)
  br label %bb.ca

bb.bi:                                            ; preds = %bb.a
  %i.dr = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 9)
  br label %bb.ca

bb.bj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ds, ptr %i.k, align 8
  %i.dt = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 15, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ca

bb.bk:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.du, ptr %i.j, align 8
  %i.dv = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @229, i64 noundef 22, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ca

bb.bl:                                            ; preds = %bb.a
  %i.dw = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 14)
  br label %bb.ca

bb.bm:                                            ; preds = %bb.a
  %i.dx = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 16)
  br label %bb.ca

bb.bn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.dy, ptr %i.i, align 8
  %i.dz = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 24, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ca

bb.bo:                                            ; preds = %bb.a
  %i.ea = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 26)
  br label %bb.ca

bb.bp:                                            ; preds = %bb.a
  %i.eb = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 28)
  br label %bb.ca

bb.bq:                                            ; preds = %bb.a
  %i.ec = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 20)
  br label %bb.ca

bb.br:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ed, ptr %i.h, align 8
  %i.ee = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 28, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ca

bb.bs:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ef, ptr %i.g, align 8
  %i.eg = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 21, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ca

bb.bt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.eh, ptr %i.f, align 8
  %i.ei = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 15, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ca

bb.bu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ej, ptr %i.e, align 8
  %i.ek = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 19, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ca

bb.bv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.el, ptr %i.d, align 8
  %i.em = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 21, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ca

bb.bw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.en, ptr %i.c, align 8
  %i.eo = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @244, i64 noundef 18, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ca

bb.bx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ep, ptr %i.b, align 8
  %i.eq = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ca

bb.by:                                            ; preds = %bb.a
  %i.er = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @247, i64 noundef 30)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.a, align 8
  %i.et = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.al, %bb.b ], [ %i.am, %bb.c ], [ %i.an, %bb.d ], [ %i.ao, %bb.e ], [ %i.ap, %bb.f ], [ %i.aq, %bb.g ], [ %i.ar, %bb.h ], [ %i.as, %bb.i ], [ %i.at, %bb.j ], [ %i.au, %bb.k ], [ %i.av, %bb.l ], [ %i.ax, %bb.m ], [ %i.az, %bb.n ], [ %i.bb, %bb.o ], [ %i.bd, %bb.p ], [ %i.bf, %bb.q ], [ %i.bh, %bb.r ], [ %i.bj, %bb.s ], [ %i.bl, %bb.t ], [ %i.bn, %bb.u ], [ %i.bp, %bb.v ], [ %i.br, %bb.w ], [ %i.bs, %bb.x ], [ %i.bt, %bb.y ], [ %i.bu, %bb.z ], [ %i.bv, %bb.aa ], [ %i.bw, %bb.ab ], [ %i.by, %bb.ac ], [ %i.ca, %bb.ad ], [ %i.cc, %bb.ae ], [ %i.cd, %bb.af ], [ %i.ce, %bb.ag ], [ %i.cf, %bb.ah ], [ %i.ch, %bb.ai ], [ %i.ci, %bb.aj ], [ %i.cj, %bb.ak ], [ %i.cl, %bb.al ], [ %i.cm, %bb.am ], [ %i.cn, %bb.an ], [ %i.co, %bb.ao ], [ %i.cp, %bb.ap ], [ %i.cq, %bb.aq ], [ %i.cs, %bb.ar ], [ %i.cu, %bb.as ], [ %i.cw, %bb.at ], [ %i.cy, %bb.au ], [ %i.cz, %bb.av ], [ %i.da, %bb.aw ], [ %i.db, %bb.ax ], [ %i.dc, %bb.ay ], [ %i.dd, %bb.az ], [ %i.df, %bb.ba ], [ %i.dh, %bb.bb ], [ %i.dj, %bb.bc ], [ %i.dk, %bb.bd ], [ %i.dm, %bb.be ], [ %i.dn, %bb.bf ], [ %i.dp, %bb.bg ], [ %i.dq, %bb.bh ], [ %i.dr, %bb.bi ], [ %i.dt, %bb.bj ], [ %i.dv, %bb.bk ], [ %i.dw, %bb.bl ], [ %i.dx, %bb.bm ], [ %i.dz, %bb.bn ], [ %i.ea, %bb.bo ], [ %i.eb, %bb.bp ], [ %i.ec, %bb.bq ], [ %i.ee, %bb.br ], [ %i.eg, %bb.bs ], [ %i.ei, %bb.bt ], [ %i.ek, %bb.bu ], [ %i.em, %bb.bv ], [ %i.eo, %bb.bw ], [ %i.eq, %bb.bx ], [ %i.er, %bb.by ], [ %i.et, %bb.bz ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !15, !noalias !596, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsaN7cMqnSAH7_6simple.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaN7cMqnSAH7_6simple(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsaN7cMqnSAH7_6simple.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsaN7cMqnSAH7_6simple.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs9Jn0q30Ea0B_6object4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsaN7cMqnSAH7_6simple(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @249, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs9Jn0q30Ea0B_6object4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsaN7cMqnSAH7_6simple(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs9Jn0q30Ea0B_6object4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsaN7cMqnSAH7_6simple(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Jn0q30Ea0B_6object4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsaN7cMqnSAH7_6simple(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @250, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsi68uqYEhoRA_5gimli4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsaN7cMqnSAH7_6simple(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @249, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsi68uqYEhoRA_5gimli4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsaN7cMqnSAH7_6simple(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsi68uqYEhoRA_5gimli4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsaN7cMqnSAH7_6simple(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsi68uqYEhoRA_5gimli4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsaN7cMqnSAH7_6simple(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsi68uqYEhoRA_5gimli4read5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsaN7cMqnSAH7_6simple(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @251, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaN7cMqnSAH7_6simple(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB36_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3c_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit9AttributeINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB36_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3d_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit9AttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3d_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCs9Jn0q30Ea0B_6object4read18RelocationMapEntryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB6_20DwarfPackageSectionsNtCsaN7cMqnSAH7_6simple7SectionE6borrowNCNCNvB19_9dump_files1_00INtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtB19_13RelocationMapEEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([1168 x i8]) align 8 captures(address) dereferenceable(1168), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(936), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB6_20DwarfPackageSectionsNtCsaN7cMqnSAH7_6simple7SectionE4loadNCNCNvB19_9dump_files_00INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([936 x i8]) align 8 captures(none) dereferenceable(936), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std3env4args(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openNtNtCsexYYUdYSQU6_5alloc6string6StringECsaN7cMqnSAH7_6simple(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions3mapRNtNtCsG258MDvU3F_3std2fs4FileECsaN7cMqnSAH7_6simple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
!388 = distinct !{!388, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_"}
!389 = distinct !{!389, !388, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_: argument 0"}
!390 = distinct !{!390, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_"}
!391 = distinct !{!391, !390, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_: argument 0"}
!392 = distinct !{!392, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_"}
!393 = distinct !{!393, !392, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_: argument 0"}
!394 = distinct !{!394, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple"}
!395 = distinct !{!395, !394, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple: argument 0"}
!396 = distinct !{!396, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple"}
!397 = distinct !{!397, !396, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple: argument 0"}
!398 = distinct !{!398, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_"}
!399 = distinct !{!399, !398, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_: argument 0"}
!400 = distinct !{!400, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_"}
!401 = distinct !{!401, !400, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_: argument 0"}
!402 = distinct !{!402, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_"}
!403 = distinct !{!403, !402, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_: argument 0"}
!404 = distinct !{!404, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_"}
!405 = distinct !{!405, !404, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_: argument 0"}
!406 = distinct !{!406, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_"}
!407 = distinct !{!407, !406, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_: argument 0"}
!408 = distinct !{!408, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple"}
!409 = distinct !{!409, !408, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple: argument 0"}
!410 = distinct !{!410, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple"}
!411 = distinct !{!411, !410, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple: argument 0"}
!412 = distinct !{!412, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_"}
!413 = distinct !{!413, !412, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_: argument 0"}
!414 = distinct !{!414, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_"}
!415 = distinct !{!415, !414, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_: argument 0"}
!416 = distinct !{!416, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_"}
!417 = distinct !{!417, !416, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_: argument 0"}
!418 = distinct !{!418, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_"}
!419 = distinct !{!419, !418, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_: argument 0"}
!420 = distinct !{!420, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_"}
!421 = distinct !{!421, !420, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_: argument 0"}
!422 = distinct !{!422, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple"}
!423 = distinct !{!423, !422, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple: argument 0"}
!424 = distinct !{!424, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple"}
!425 = distinct !{!425, !424, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple: argument 0"}
!426 = distinct !{!426, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_"}
!427 = distinct !{!427, !426, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_: argument 0"}
!428 = distinct !{!428, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_"}
!429 = distinct !{!429, !428, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_: argument 0"}
!430 = distinct !{!430, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_"}
!431 = distinct !{!431, !430, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_: argument 0"}
!432 = distinct !{!432, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_"}
!433 = distinct !{!433, !432, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_: argument 0"}
!434 = distinct !{!434, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_"}
!435 = distinct !{!435, !434, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_: argument 0"}
!436 = distinct !{!436, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple"}
!437 = distinct !{!437, !436, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple: argument 0"}
!438 = distinct !{!438, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple"}
!439 = distinct !{!439, !438, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple: argument 0"}
!440 = distinct !{!440, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_"}
!441 = distinct !{!441, !440, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEB2Z_: argument 0"}
!442 = distinct !{!442, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_"}
!443 = distinct !{!443, !442, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEEB3W_: argument 0"}
!444 = distinct !{!444, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_"}
!445 = distinct !{!445, !444, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_8relocate14RelocateReaderINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEEEB3A_: argument 0"}
!446 = distinct !{!446, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_"}
!447 = distinct !{!447, !446, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB34_: argument 0"}
!448 = !{!381, !380}
!449 = !{!383}
!450 = !{i64 -2, i64 6}
!451 = !{!385}
!452 = !{!387}
!453 = !{!387, !385}
!454 = !{!391, !389, !387, !385}
!455 = !{i64 0, i64 3}
!456 = !{!393}
!457 = !{!395}
!458 = !{!397}
!459 = !{!397, !395, !393}
!460 = !{i8 -1, i8 3}
!461 = !{!399}
!462 = !{!401}
!463 = !{!401, !399}
!464 = !{!405, !403, !401, !399}
!465 = !{!407}
!466 = !{!409}
!467 = !{!411}
!468 = !{!411, !409, !407}
!469 = !{!413}
!470 = !{!415}
!471 = !{!415, !413}
!472 = !{!419, !417, !415, !413}
!473 = !{!421}
!474 = !{!423}
!475 = !{!425}
!476 = !{!425, !423, !421}
!477 = !{!427}
!478 = !{!429}
!479 = !{!429, !427}
!480 = !{!433, !431, !429, !427}
!481 = !{!435}
!482 = !{!437}
!483 = !{!439}
!484 = !{!439, !437, !435}
!485 = !{!441}
!486 = !{!443}
!487 = !{!443, !441}
!488 = !{!447, !445, !443, !441}
!489 = distinct !{!489, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsaN7cMqnSAH7_6simple"}
!490 = distinct !{!490, !489, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsaN7cMqnSAH7_6simple: argument 0"}
!491 = !{!490}
!492 = distinct !{!492, i1 true, !"_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_4UnitINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjE22new_with_abbreviationsB2v_"}
!493 = distinct !{!493, !492, !"_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_4UnitINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjE22new_with_abbreviationsB2v_: argument 0"}
!494 = distinct !{!494, !492, !"_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_4UnitINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjE22new_with_abbreviationsB2v_: argument 1"}
!495 = distinct !{!495, !492, !"_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_4UnitINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjE22new_with_abbreviationsB2v_: argument 2"}
!496 = distinct !{!496, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple"}
!497 = distinct !{!497, !496, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple: argument 0"}
!498 = distinct !{!498, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple"}
!499 = distinct !{!499, !498, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple: argument 0"}
!500 = distinct !{!500, i1 true, !"_RNvMsh_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE7currentB2E_"}
!501 = distinct !{!501, !500, !"_RNvMsh_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE7currentB2E_: argument 0"}
!502 = distinct !{!502, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB2c_"}
!503 = distinct !{!503, !502, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB2c_: argument 1"}
!504 = distinct !{!504, i1 true, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple"}
!505 = distinct !{!505, !504, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple: argument 1"}
!506 = distinct !{!506, i1 true, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple"}
!507 = distinct !{!507, !506, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple: argument 1"}
!508 = distinct !{!508, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB2c_"}
!509 = distinct !{!509, !508, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB2c_: argument 1"}
!510 = distinct !{!510, i1 true, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple"}
!511 = distinct !{!511, !510, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple: argument 1"}
!512 = distinct !{!512, i1 true, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple"}
!513 = distinct !{!513, !512, !"_RNvXs7_NtNtCsi68uqYEhoRA_5gimli4read12endian_sliceINtB5_11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaN7cMqnSAH7_6simple: argument 1"}
!514 = distinct !{!514, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_"}
!515 = distinct !{!515, !514, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf4UnitINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjEEB2Y_: argument 0"}
!516 = distinct !{!516, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple"}
!517 = distinct !{!517, !516, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple: argument 0"}
!518 = distinct !{!518, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple"}
!519 = distinct !{!519, !518, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple: argument 0"}
!520 = distinct !{!520, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple"}
!521 = distinct !{!521, !520, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEECsaN7cMqnSAH7_6simple: argument 0"}
!522 = distinct !{!522, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple"}
!523 = distinct !{!523, !522, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple: argument 0"}
!524 = !{!493}
!525 = !{!494}
!526 = !{!493, !494, !495}
!527 = !{!493, !495}
!528 = !{!499, !497, !493, !494, !495}
!529 = !{!493, !494}
!530 = !{!494, !495}
!531 = !{!501}
!532 = !{!505, !503}
!533 = !{!507, !503}
!534 = !{!503}
!535 = !{!511, !509}
!536 = !{!513, !509}
!537 = !{!509}
!538 = !{!515}
!539 = !{!517}
!540 = !{!519}
!541 = !{!519, !517, !515}
!542 = !{!519, !517, !515, !493, !495}
!543 = !{!521}
!544 = !{!523}
!545 = !{!523, !521}
!546 = !{!523, !521, !493, !495}
!547 = distinct !{!547, i1 true, !"_RNvXs1_CsaN7cMqnSAH7_6simpleNtB5_7SectionNtNtCskKLDkoKarTP_4core7default7Default7default"}
!548 = distinct !{!548, !547, !"_RNvXs1_CsaN7cMqnSAH7_6simpleNtB5_7SectionNtNtCskKLDkoKarTP_4core7default7Default7default: argument 0"}
!549 = distinct !{!549, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCsaN7cMqnSAH7_6simple"}
!550 = distinct !{!550, !549, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCsaN7cMqnSAH7_6simple: argument 0"}
!551 = distinct !{!551, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCsaN7cMqnSAH7_6simple"}
!552 = distinct !{!552, !551, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCsaN7cMqnSAH7_6simple: argument 0"}
!553 = distinct !{!553, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsaN7cMqnSAH7_6simple"}
!554 = distinct !{!554, !553, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsaN7cMqnSAH7_6simple: argument 0"}
!555 = !{!548}
!556 = !{!550}
!557 = !{!552}
!558 = !{!554}
!559 = distinct !{!559, i1 true, !"_RNCNCNvCsaN7cMqnSAH7_6simple9dump_files1_00B5_"}
!560 = distinct !{!560, !559, !"_RNCNCNvCsaN7cMqnSAH7_6simple9dump_files1_00B5_: argument 1"}
!561 = distinct !{!561, !559, !"_RNCNCNvCsaN7cMqnSAH7_6simple9dump_files1_00B5_: argument 0"}
!562 = distinct !{!562, i1 true, !"_RNvNvCsaN7cMqnSAH7_6simple9dump_file14borrow_section"}
!563 = distinct !{!563, !562, !"_RNvNvCsaN7cMqnSAH7_6simple9dump_file14borrow_section: argument 1"}
!564 = distinct !{!564, !562, !"_RNvNvCsaN7cMqnSAH7_6simple9dump_file14borrow_section: argument 0"}
!565 = !{!560}
!566 = !{!561, !560}
!567 = !{!563}
!568 = !{!564, !563, !561, !560}
!569 = !{!563, !560}
!570 = distinct !{!570, i1 true, !"_RNCNvCsaN7cMqnSAH7_6simple9dump_files0_0B3_"}
!571 = distinct !{!571, !570, !"_RNCNvCsaN7cMqnSAH7_6simple9dump_files0_0B3_: argument 1"}
!572 = distinct !{!572, !570, !"_RNCNvCsaN7cMqnSAH7_6simple9dump_files0_0B3_: argument 0"}
!573 = distinct !{!573, i1 true, !"_RNvNvCsaN7cMqnSAH7_6simple9dump_file14borrow_section"}
!574 = distinct !{!574, !573, !"_RNvNvCsaN7cMqnSAH7_6simple9dump_file14borrow_section: argument 1"}
!575 = distinct !{!575, !573, !"_RNvNvCsaN7cMqnSAH7_6simple9dump_file14borrow_section: argument 0"}
!576 = !{!571}
!577 = !{!572, !571}
!578 = !{!574}
!579 = !{!575, !574, !572, !571}
!580 = !{!574, !571}
!581 = distinct !{!581, i1 true, !"_RNvXs2_NtCsi68uqYEhoRA_5gimli4readNtB5_10UnitOffsetNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsaN7cMqnSAH7_6simple"}
!582 = distinct !{!582, !581, !"_RNvXs2_NtCsi68uqYEhoRA_5gimli4readNtB5_10UnitOffsetNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsaN7cMqnSAH7_6simple: argument 1"}
!583 = distinct !{!583, !581, !"_RNvXs2_NtCsi68uqYEhoRA_5gimli4readNtB5_10UnitOffsetNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsaN7cMqnSAH7_6simple: argument 0"}
!584 = !{!583, !582}
!585 = distinct !{!585, i1 true, !"_RNCNCNvCsaN7cMqnSAH7_6simple9dump_files_00B5_"}
!586 = distinct !{!586, !585, !"_RNCNCNvCsaN7cMqnSAH7_6simple9dump_files_00B5_: argument 0"}
!587 = !{!586}
!588 = distinct !{!588, i1 true, !"_RNCNvCsaN7cMqnSAH7_6simple9dump_file0B3_"}
!589 = distinct !{!589, !588, !"_RNCNvCsaN7cMqnSAH7_6simple9dump_file0B3_: argument 0"}
!590 = !{!589}
!591 = !{i8 0, i8 77}
!592 = distinct !{!592, i1 true, !"_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsaN7cMqnSAH7_6simple"}
!593 = distinct !{!593, !592, !"_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsaN7cMqnSAH7_6simple: argument 0"}
!594 = distinct !{!594, i1 true, !"_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2c_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaN7cMqnSAH7_6simple"}
!595 = distinct !{!595, !594, !"_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2c_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaN7cMqnSAH7_6simple: argument 0"}
!596 = !{!595, !593}
end_hunk_3
