Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple.simple.7db411c56ae1a883-cgu.00?download=true
inline.NumInlined: 193
inline.NumDeleted: 71
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [25 x i8] c"src/read/endian_slice.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\18\00\00\00\00\00\00\00M\01\00\00\0D\00\00\00" }>, align 8
@2 = private unnamed_addr constant [17 x i8] c"src/endianity.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\10\00\00\00\00\00\00\00X\00\00\00\1E\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\10\00\00\00\00\00\00\00V\00\00\00\22\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB6_9DebugInfoNtCsaN7cMqnSAH7_6simple7SectionE6borrowQNCNCNvBW_9dump_files1_00INtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtBW_13RelocationMapEEBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files1_00INtB7_5FnMutTRNtBU_7SectionEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB6_9DebugInfoNtCsaN7cMqnSAH7_6simple7SectionE6borrowQNCNvBW_9dump_files0_0INtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtBW_13RelocationMapEEBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_files0_0INtB7_5FnMutTRNtBS_7SectionEE8call_mutBS_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB6_10DebugTypesNtCsaN7cMqnSAH7_6simple7SectionE6borrowQNCNCNvBY_9dump_files1_00INtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtBY_13RelocationMapEEBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files1_00INtB7_5FnMutTRNtBU_7SectionEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB6_10DebugTypesNtCsaN7cMqnSAH7_6simple7SectionE6borrowQNCNvBY_9dump_files0_0INtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtBY_13RelocationMapEEBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_files0_0INtB7_5FnMutTRNtBS_7SectionEE8call_mutBS_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit10DebugTypesNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBQ_E4loadQNCNCNvBS_9dump_files_00INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !6
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
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit10DebugTypesNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBQ_E4loadQNCNvBS_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_file0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !6
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
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBO_E4loadQNCNCNvBQ_9dump_files_00INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCsaN7cMqnSAH7_6simple9dump_files_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 9)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !6
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
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBO_E4loadQNCNvBQ_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsaN7cMqnSAH7_6simple9dump_file0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 9)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !6
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
define hidden void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9DebugInfoINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE5unitsB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 33), (40, 57)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7, !noalias !12, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.c, align 8, !range !15, !alias.scope !7, !noalias !12, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !16, !noalias !19, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16, !noalias !19, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.h, align 8, !range !15, !alias.scope !16, !noalias !19, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load <2 x ptr>, ptr %1, align 8, !alias.scope !21, !noalias !22
  store <2 x ptr> %i.j, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.val.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.71.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.g, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.val.i1.i, ptr %.sroa.9.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE4nextB2P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 21 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %.val2 = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val2, 0
  br i1 %i.q, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %1, align 8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader19read_initial_lengthB26_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = load i64, ptr %i.n, align 8, !range !28, !noalias !26, !noundef !6
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0229.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !26 ; 9 uses
  %.sroa.4230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4230.0.copyload.i = load i8, ptr %.sroa.4230.0..sroa_idx.i, align 8, !noalias !26 ; 6 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  %.sroa.57.sroa.20.sroa.0.0.copyload = load i56, ptr %.sroa.5231.0..sroa_idx.i, align 1, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26
  %.sroa.21.sroa.0.0.extract.trunc69 = trunc i64 %.sroa.0229.0.copyload.i to i8
  %.sroa.21.sroa.21.0.extract.shift75 = lshr i64 %.sroa.0229.0.copyload.i, 8
  %.sroa.21.sroa.21.0.extract.trunc76 = trunc i64 %.sroa.21.sroa.21.0.extract.shift75 to i8
  %.sroa.21.sroa.34.0.extract.shift90 = lshr i64 %.sroa.0229.0.copyload.i, 16
  br label %bb.ap

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !29, !noalias !36, !nonnull !6, !noundef !6 ; 5 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !29, !noalias !36, !noundef !6 ; 2 uses
  %i.y = icmp ult i64 %i.x, %.sroa.0229.0.copyload.i
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.w to i64                 ; 2 uses
  %.sroa.57.sroa.0.0.extract.trunc35 = trunc i64 %i.z to i8
  %.sroa.57.sroa.20.0.extract.shift66 = lshr i64 %i.z, 8
  %.sroa.57.sroa.20.0.extract.trunc67 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift66 to i56
  br label %bb.an

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !40, !noalias !43, !nonnull !6, !align !44, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i1.i.i.i = load i8, ptr %i.ab, align 8, !range !15, !alias.scope !29, !noalias !36, !noundef !6 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load i8, ptr %i.ac, align 8, !range !15, !alias.scope !45, !noalias !48, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !45, !noalias !48, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !45, !noalias !48, !nonnull !6, !noundef !6
  %i.ah = sub nuw i64 %i.x, %.sroa.0229.0.copyload.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0229.0.copyload.i
  store ptr %i.ai, ptr %i.v, align 8, !alias.scope !50, !noalias !53, !captures !55
  store i64 %i.ah, ptr %i.p, align 8, !alias.scope !50, !noalias !53
  %i.aj = ptrtoint ptr %i.ag to i64
  store ptr %i.aa, ptr %i.m, align 8, !noalias !26
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.aj, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !noalias !26
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ae, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8, !noalias !26
  %.sroa.011.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 %.val.i.i.i.i, ptr %.sroa.011.sroa.6.0..sroa_idx.i, align 8, !noalias !26
  %.sroa.011.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %.sroa.011.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 3 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i8 %.val.i1.i.i.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62
  %i.ak = tail call noundef i16 @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAhj2_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !65
  store i16 %i.ak, ptr %i.b, align 2, !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.al = icmp ugt i64 %.sroa.0229.0.copyload.i, 1
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = ptrtoint ptr %i.w to i64                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  %.sroa.57.sroa.0.0.extract.trunc23 = trunc i64 %i.am to i8
  %.sroa.57.sroa.20.0.extract.shift42 = lshr i64 %i.am, 8
  %.sroa.57.sroa.20.0.extract.trunc43 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift42 to i56
  br label %bb.an

bb.h:                                             ; preds = %bb.f
  %i.an = add i64 %.sroa.0229.0.copyload.i, -2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store ptr %i.ao, ptr %.sroa.011.sroa.8.0..sroa_idx.i, align 8, !alias.scope !72, !noalias !75, !captures !55
  store i64 %i.an, ptr %.sroa.011.sroa.9.0..sroa_idx.i, align 8, !alias.scope !72, !noalias !75
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 1, 17) 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef range(i64 1, 17) 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !81
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.b, align 2, !noalias !62 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  %i.ap = trunc nuw i8 %.val.i1.i.i.i to i1
  %i.aq = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i)
  %spec.select.i.i.i = select i1 %i.ap, i16 %i.aq, i16 %.sroa.0.0.copyload.i.i.i ; 5 uses
  %i.ar = add i16 %spec.select.i.i.i, -2
  %or.cond.i = icmp ult i16 %i.ar, 3
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp eq i16 %spec.select.i.i.i, 5
  br i1 %i.as, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !26
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m, i8 noundef %.sroa.4230.0.copyload.i)
  %i.at = load i8, ptr %i.l, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not385.i = icmp eq i8 %i.at, -1
  br i1 %.not385.i, label %bb.ag, label %bb.af

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  %i.au = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !92
  store i8 %i.au, ptr %i.a, align 1, !noalias !89
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.av = load i64, ptr %.sroa.011.sroa.9.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !102, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.av, 0
  %i.aw = load ptr, ptr %.sroa.011.sroa.8.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !102, !nonnull !6, !noundef !6 ; 3 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  %.sroa.57.sroa.0.0.extract.trunc24 = trunc i16 %spec.select.i.i.i to i8
  %i.ax = lshr i16 %spec.select.i.i.i, 8
  %.sroa.57.sroa.20.0.extract.trunc45 = zext nneg i16 %i.ax to i56
  br label %bb.an

bb.m:                                             ; preds = %bb.k
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  %.sroa.57.sroa.0.0.extract.trunc33 = trunc i64 %i.ay to i8
  %.sroa.57.sroa.20.0.extract.shift62 = lshr i64 %i.ay, 8
  %.sroa.57.sroa.20.0.extract.trunc63 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift62 to i56
  br label %bb.an

bb.n:                                             ; preds = %bb.k
  %i.az = add i64 %i.av, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ba, ptr %.sroa.011.sroa.8.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !102, !captures !55
  store i64 %i.az, ptr %.sroa.011.sroa.9.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !102
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 17) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef range(i64 1, 17) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !108
  %.sroa.0.0.copyload.i.i387.i = load i8, ptr %i.a, align 1, !noalias !89 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader17read_address_sizeB26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.bb = load i8, ptr %i.j, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not377.i = icmp eq i8 %i.bb, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !26 ; 7 uses
  br i1 %.not377.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.5288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.21.sroa.34.2.copyload = load i48, ptr %.sroa.5288.0..sroa_idx.i, align 2, !noalias !23
  %.sroa.57.10..sroa.5288.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.57.10.copyload = load i64, ptr %.sroa.57.10..sroa.5288.0..sroa_idx.i.sroa_idx, align 8, !noalias !23 ; 2 uses
  %.sroa.57.sroa.0.0.extract.trunc = trunc i64 %.sroa.57.10.copyload to i8
  %.sroa.57.sroa.20.0.extract.shift = lshr i64 %.sroa.57.10.copyload, 8
  %.sroa.57.sroa.20.0.extract.trunc = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26
  br label %bb.an

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m, i8 noundef %.sroa.4230.0.copyload.i)
  %i.be = load i8, ptr %i.i, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not378.i = icmp eq i8 %i.be, -1
  br i1 %.not378.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.4293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.21.sroa.21.1.copyload = load i8, ptr %.sroa.4293.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4293.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.21.sroa.34.1.copyload = load i48, ptr %.sroa.21.sroa.34.1..sroa.4293.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5294.0.copyload.i = load i64, ptr %.sroa.5294.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc25 = trunc i64 %.sroa.5294.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift46 = lshr i64 %.sroa.5294.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc47 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift46 to i56
  br label %bb.an

bb.r:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !26, !noundef !6 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26
  switch i8 %.sroa.0.0.copyload.i.i387.i, label %bb.an [
    i8 1, label %bb.aq
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
    i8 5, label %bb.v
    i8 6, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader8read_u64B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #12
  %i.bh = load i8, ptr %i.h, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not383.i = icmp eq i8 %i.bh, -1
  br i1 %.not383.i, label %bb.ak, label %bb.aj

bb.t:                                             ; preds = %bb.r
  br label %bb.aq

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader8read_u64B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #12
  %i.bi = load i8, ptr %i.f, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not382.i = icmp eq i8 %i.bi, -1
  br i1 %.not382.i, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader8read_u64B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #12
  %i.bj = load i8, ptr %i.e, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not381.i = icmp eq i8 %i.bj, -1
  br i1 %.not381.i, label %bb.aa, label %bb.z

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader8read_u64B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #12
  %i.bk = load i8, ptr %i.d, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not379.i = icmp eq i8 %i.bk, -1
  br i1 %.not379.i, label %bb.ac, label %bb.ab

bb.x:                                             ; preds = %bb.u
  %.sroa.4329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.21.sroa.21.1.copyload84 = load i8, ptr %.sroa.4329.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4329.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.21.sroa.34.1.copyload99 = load i48, ptr %.sroa.21.sroa.34.1..sroa.4329.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5330.0.copyload.i = load i64, ptr %.sroa.5330.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc30 = trunc i64 %.sroa.5330.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift56 = lshr i64 %.sroa.5330.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc57 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift56 to i56
  br label %bb.an

bb.y:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !26, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26
  br label %bb.aq

bb.z:                                             ; preds = %bb.v
  %.sroa.4341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.21.sroa.21.1.copyload83 = load i8, ptr %.sroa.4341.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4341.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.21.sroa.34.1.copyload98 = load i48, ptr %.sroa.21.sroa.34.1..sroa.4341.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5342.0.copyload.i = load i64, ptr %.sroa.5342.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc29 = trunc i64 %.sroa.5342.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift54 = lshr i64 %.sroa.5342.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc55 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift54 to i56
  br label %bb.an

bb.aa:                                            ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !26, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26
  br label %bb.aq

bb.ab:                                            ; preds = %bb.w
  %.sroa.4353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.21.sroa.21.1.copyload81 = load i8, ptr %.sroa.4353.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4353.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.21.sroa.34.1.copyload96 = load i48, ptr %.sroa.21.sroa.34.1..sroa.4353.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5354.0.copyload.i = load i64, ptr %.sroa.5354.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc26 = trunc i64 %.sroa.5354.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift48 = lshr i64 %.sroa.5354.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc49 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift48 to i56
  br label %bb.an

bb.ac:                                            ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !26, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m, i8 noundef %.sroa.4230.0.copyload.i)
  %i.br = load i8, ptr %i.c, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not380.i = icmp eq i8 %i.br, -1
  br i1 %.not380.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.21.sroa.21.1.copyload82 = load i8, ptr %.sroa.4365.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4365.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.21.sroa.34.1.copyload97 = load i48, ptr %.sroa.21.sroa.34.1..sroa.4365.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5366.0.copyload.i = load i64, ptr %.sroa.5366.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc27 = trunc i64 %.sroa.5366.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift50 = lshr i64 %.sroa.5366.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc51 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift50 to i56
  br label %bb.an

bb.ae:                                            ; preds = %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !26, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26
  br label %bb.aq

bb.af:                                            ; preds = %bb.j
  %.sroa.4251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.21.sroa.21.1.copyload87 = load i8, ptr %.sroa.4251.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4251.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.21.sroa.34.1.copyload102 = load i48, ptr %.sroa.21.sroa.34.1..sroa.4251.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5252.0.copyload.i = load i64, ptr %.sroa.5252.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc34 = trunc i64 %.sroa.5252.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift64 = lshr i64 %.sroa.5252.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc65 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift64 to i56
  br label %bb.an

bb.ag:                                            ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !26, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader17read_address_sizeB26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.bw = load i8, ptr %i.k, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not386.i = icmp eq i8 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !noalias !26 ; 2 uses
  br i1 %.not386.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.sroa.21.sroa.34.2.copyload103 = load i48, ptr %.sroa.5267.0..sroa_idx.i, align 2, !noalias !23
  %.sroa.57.10..sroa.5267.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.10.copyload18 = load i64, ptr %.sroa.57.10..sroa.5267.0..sroa_idx.i.sroa_idx, align 8, !noalias !23 ; 2 uses
  %.sroa.57.sroa.0.0.extract.trunc22 = trunc i64 %.sroa.57.10.copyload18 to i8
  %.sroa.57.sroa.20.0.extract.shift40 = lshr i64 %.sroa.57.10.copyload18, 8
  %.sroa.57.sroa.20.0.extract.trunc41 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift40 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26
  br label %bb.aq

bb.aj:                                            ; preds = %bb.s
  %.sroa.4305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.21.sroa.21.1.copyload85 = load i8, ptr %.sroa.4305.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4305.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.21.sroa.34.1.copyload100 = load i48, ptr %.sroa.21.sroa.34.1..sroa.4305.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5306.0.copyload.i = load i64, ptr %.sroa.5306.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc31 = trunc i64 %.sroa.5306.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift58 = lshr i64 %.sroa.5306.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc59 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift58 to i56
  br label %bb.an

bb.ak:                                            ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !26, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m, i8 noundef %.sroa.4230.0.copyload.i)
  %i.cb = load i8, ptr %i.g, align 8, !range !82, !noalias !26, !noundef !6 ; 2 uses
  %.not384.i = icmp eq i8 %i.cb, -1
  br i1 %.not384.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.4317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.21.sroa.21.1.copyload86 = load i8, ptr %.sroa.4317.0..sroa_idx.i, align 1, !noalias !23
  %.sroa.21.sroa.34.1..sroa.4317.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.21.sroa.34.1.copyload101 = load i48, ptr %.sroa.21.sroa.34.1..sroa.4317.0..sroa_idx.i.sroa_idx, align 2, !noalias !23
  %.sroa.5318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5318.0.copyload.i = load i64, ptr %.sroa.5318.0..sroa_idx.i, align 8, !noalias !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26
  %.sroa.57.sroa.0.0.extract.trunc32 = trunc i64 %.sroa.5318.0.copyload.i to i8
  %.sroa.57.sroa.20.0.extract.shift60 = lshr i64 %.sroa.5318.0.copyload.i, 8
  %.sroa.57.sroa.20.0.extract.trunc61 = trunc nuw i64 %.sroa.57.sroa.20.0.extract.shift60 to i56
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !26, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26
  br label %bb.aq

bb.an:                                            ; preds = %bb.r, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.q, %bb.o, %bb.m, %bb.l, %bb.g, %bb.e
  %.sroa.21.sroa.34.0 = phi i48 [ 0, %bb.e ], [ %.sroa.21.sroa.34.2.copyload103, %bb.ah ], [ %.sroa.21.sroa.34.1.copyload102, %bb.af ], [ 0, %bb.m ], [ 0, %bb.g ], [ %.sroa.21.sroa.34.1.copyload101, %bb.al ], [ %.sroa.21.sroa.34.1.copyload100, %bb.aj ], [ %.sroa.21.sroa.34.1.copyload99, %bb.x ], [ %.sroa.21.sroa.34.1.copyload98, %bb.z ], [ %.sroa.21.sroa.34.1.copyload97, %bb.ad ], [ %.sroa.21.sroa.34.1.copyload96, %bb.ab ], [ %.sroa.21.sroa.34.1.copyload, %bb.q ], [ %.sroa.21.sroa.34.2.copyload, %bb.o ], [ undef, %bb.l ], [ undef, %bb.r ]
  %.sroa.21.sroa.21.0 = phi i8 [ 0, %bb.e ], [ %i.by, %bb.ah ], [ %.sroa.21.sroa.21.1.copyload87, %bb.af ], [ 0, %bb.m ], [ 0, %bb.g ], [ %.sroa.21.sroa.21.1.copyload86, %bb.al ], [ %.sroa.21.sroa.21.1.copyload85, %bb.aj ], [ %.sroa.21.sroa.21.1.copyload84, %bb.x ], [ %.sroa.21.sroa.21.1.copyload83, %bb.z ], [ %.sroa.21.sroa.21.1.copyload82, %bb.ad ], [ %.sroa.21.sroa.21.1.copyload81, %bb.ab ], [ %.sroa.21.sroa.21.1.copyload, %bb.q ], [ %i.bd, %bb.o ], [ undef, %bb.l ], [ %.sroa.0.0.copyload.i.i387.i, %bb.r ]
  %.sroa.21.sroa.0.0 = phi i8 [ 17, %bb.e ], [ %i.bw, %bb.ah ], [ %i.at, %bb.af ], [ 17, %bb.m ], [ 17, %bb.g ], [ %i.cb, %bb.al ], [ %i.bh, %bb.aj ], [ %i.bi, %bb.x ], [ %i.bj, %bb.z ], [ %i.br, %bb.ad ], [ %i.bk, %bb.ab ], [ %i.be, %bb.q ], [ %i.bb, %bb.o ], [ 15, %bb.l ], [ 60, %bb.r ]
  %.sroa.57.sroa.20.sroa.0.0 = phi i56 [ %.sroa.57.sroa.20.0.extract.trunc67, %bb.e ], [ %.sroa.57.sroa.20.0.extract.trunc41, %bb.ah ], [ %.sroa.57.sroa.20.0.extract.trunc65, %bb.af ], [ %.sroa.57.sroa.20.0.extract.trunc63, %bb.m ], [ %.sroa.57.sroa.20.0.extract.trunc43, %bb.g ], [ %.sroa.57.sroa.20.0.extract.trunc61, %bb.al ], [ %.sroa.57.sroa.20.0.extract.trunc59, %bb.aj ], [ %.sroa.57.sroa.20.0.extract.trunc57, %bb.x ], [ %.sroa.57.sroa.20.0.extract.trunc55, %bb.z ], [ %.sroa.57.sroa.20.0.extract.trunc51, %bb.ad ], [ %.sroa.57.sroa.20.0.extract.trunc49, %bb.ab ], [ %.sroa.57.sroa.20.0.extract.trunc47, %bb.q ], [ %.sroa.57.sroa.20.0.extract.trunc, %bb.o ], [ %.sroa.57.sroa.20.0.extract.trunc45, %bb.l ], [ undef, %bb.r ]
  %.sroa.57.sroa.0.0 = phi i8 [ %.sroa.57.sroa.0.0.extract.trunc35, %bb.e ], [ %.sroa.57.sroa.0.0.extract.trunc22, %bb.ah ], [ %.sroa.57.sroa.0.0.extract.trunc34, %bb.af ], [ %.sroa.57.sroa.0.0.extract.trunc33, %bb.m ], [ %.sroa.57.sroa.0.0.extract.trunc23, %bb.g ], [ %.sroa.57.sroa.0.0.extract.trunc32, %bb.al ], [ %.sroa.57.sroa.0.0.extract.trunc31, %bb.aj ], [ %.sroa.57.sroa.0.0.extract.trunc30, %bb.x ], [ %.sroa.57.sroa.0.0.extract.trunc29, %bb.z ], [ %.sroa.57.sroa.0.0.extract.trunc27, %bb.ad ], [ %.sroa.57.sroa.0.0.extract.trunc26, %bb.ab ], [ %.sroa.57.sroa.0.0.extract.trunc25, %bb.q ], [ %.sroa.57.sroa.0.0.extract.trunc, %bb.o ], [ %.sroa.57.sroa.0.0.extract.trunc24, %bb.l ], [ undef, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26
  %2 = zext i48 %.sroa.21.sroa.34.0 to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.c, %bb.an
  %.sroa.21.sroa.34.1.ph = phi i64 [ %2, %bb.an ], [ %.sroa.21.sroa.34.0.extract.shift90, %bb.c ]
  %.sroa.21.sroa.21.1.ph = phi i8 [ %.sroa.21.sroa.21.0, %bb.an ], [ %.sroa.21.sroa.21.0.extract.trunc76, %bb.c ]
  %.sroa.21.sroa.0.1.ph = phi i8 [ %.sroa.21.sroa.0.0, %bb.an ], [ %.sroa.21.sroa.0.0.extract.trunc69, %bb.c ]
  %.sroa.57.sroa.20.sroa.0.1.ph = phi i56 [ %.sroa.57.sroa.20.sroa.0.0, %bb.an ], [ %.sroa.57.sroa.20.sroa.0.0.copyload, %bb.c ]
  %.sroa.57.sroa.0.1.ph = phi i8 [ %.sroa.57.sroa.0.0, %bb.an ], [ %.sroa.4230.0.copyload.i, %bb.c ]
  %.sroa.21.sroa.34.0.insert.shift93 = shl nuw i64 %.sroa.21.sroa.34.1.ph, 16
  %.sroa.21.sroa.21.0.insert.ext77 = zext i8 %.sroa.21.sroa.21.1.ph to i64
  %.sroa.21.sroa.21.0.insert.shift78 = shl nuw nsw i64 %.sroa.21.sroa.21.0.insert.ext77, 8
  %.sroa.21.sroa.21.0.insert.insert80 = or disjoint i64 %.sroa.21.sroa.21.0.insert.shift78, %.sroa.21.sroa.34.0.insert.shift93
  %.sroa.21.sroa.0.0.insert.ext70 = zext i8 %.sroa.21.sroa.0.1.ph to i64
  %.sroa.21.sroa.0.0.insert.insert72 = or disjoint i64 %.sroa.21.sroa.21.0.insert.insert80, %.sroa.21.sroa.0.0.insert.ext70
  %.sroa.57.sroa.20.0.insert.ext36 = zext i56 %.sroa.57.sroa.20.sroa.0.1.ph to i64
  %.sroa.57.sroa.20.0.insert.shift37 = shl nuw i64 %.sroa.57.sroa.20.0.insert.ext36, 8
  %.sroa.57.sroa.0.0.insert.ext19 = zext i8 %.sroa.57.sroa.0.1.ph to i64
  %.sroa.57.sroa.0.0.insert.insert21 = or disjoint i64 %.sroa.57.sroa.20.0.insert.shift37, %.sroa.57.sroa.0.0.insert.ext19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.ce, align 8, !alias.scope !109
  store i64 0, ptr %i.p, align 8, !alias.scope !109
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.21.sroa.0.0.insert.insert72, ptr %i.cf, align 8
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.57.sroa.0.0.insert.insert21, ptr %.sroa.4133.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.y, %bb.t, %bb.r
  %.sroa.11111.0.i = phi i64 [ %i.cd, %bb.am ], [ %i.bt, %bb.ae ], [ undef, %bb.t ], [ undef, %bb.y ], [ undef, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.r ]
  %.sroa.7110.0.i = phi i64 [ %i.ca, %bb.am ], [ %i.bq, %bb.ae ], [ undef, %bb.t ], [ %i.bm, %bb.y ], [ %i.bo, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.r ]
  %.sroa.0109.0.i = phi i64 [ 1, %bb.am ], [ 5, %bb.ae ], [ 2, %bb.t ], [ 3, %bb.y ], [ 4, %bb.aa ], [ 0, %bb.ai ], [ 0, %bb.r ]
  %.sroa.0107.2.i = phi i8 [ %i.bd, %bb.am ], [ %i.bd, %bb.ae ], [ %i.bd, %bb.t ], [ %i.bd, %bb.y ], [ %i.bd, %bb.aa ], [ %i.by, %bb.ai ], [ %i.bd, %bb.r ]
  %.sroa.0103.2.i = phi i64 [ %i.bg, %bb.am ], [ %i.bg, %bb.ae ], [ %i.bg, %bb.t ], [ %i.bg, %bb.y ], [ %i.bg, %bb.aa ], [ %i.bv, %bb.ai ], [ %i.bg, %bb.r ]
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6123.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26
  %.val = load i64, ptr %i.p, align 8, !noundef !6
  %i.cg = sub i64 %.val2, %.val
  %i.ch = load i64, ptr %1, align 8, !alias.scope !114, !noundef !6
  %i.ci = add i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %1, align 8, !alias.scope !114
  store i64 %.sroa.0109.0.i, ptr %0, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7110.0.i, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11111.0.i, ptr %.sroa.5122.0..sroa_idx, align 8
  %.sroa.7124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0229.0.copyload.i, ptr %.sroa.7124.0..sroa_idx, align 8
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.0103.2.i, ptr %.sroa.8125.0..sroa_idx, align 8
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.r, ptr %.sroa.9126.0..sroa_idx, align 8
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.0107.2.i, ptr %.sroa.10127.0..sroa_idx, align 8
  %.sroa.11128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %.sroa.4230.0.copyload.i, ptr %.sroa.11128.0..sroa_idx, align 1
  %.sroa.12129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i16 %spec.select.i.i.i, ptr %.sroa.12129.0..sroa_idx, align 2
  %.sroa.13130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 9, ptr %.sroa.13130.0..sroa_idx, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEjE7entriesB2B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 43), (48, 97), (104, 121), (128, 132)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !117, !noalias !122, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i = load i8, ptr %i.d, align 8, !range !15, !alias.scope !117, !noalias !122, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !125, !noalias !128, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !125, !noalias !128, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i1.i = load i8, ptr %i.i, align 8, !range !15, !alias.scope !125, !noalias !128, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val1.i = load i64, ptr %i.k, align 8, !alias.scope !130
  %i.l = and i32 %.sroa.0.0.copyload, 65280
  %i.m = icmp eq i32 %i.l, 2048
  %spec.select.i.i = select i1 %i.m, i64 12, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.n = add i64 %.val1.i, %spec.select.i.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !136, !noalias !138
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !136, !noalias !138
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i5, align 8, !alias.scope !136, !noalias !138
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i6, align 8, !alias.scope !136, !noalias !138
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load <2 x ptr>, ptr %i.a, align 8, !alias.scope !140, !noalias !141
  store <2 x ptr> %i.p, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !143
  %.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.c, ptr %.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !142, !noalias !143
  %.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %.val.i.i, ptr %.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !142, !noalias !143
  %.sroa.78.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %.sroa.78.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !142, !noalias !143
  %.sroa.8.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.h, ptr %.sroa.8.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !142, !noalias !143
  %.sroa.10.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.val.i1.i, ptr %.sroa.10.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !142, !noalias !143
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !136, !noalias !138
  store i64 0, ptr %0, align 8, !alias.scope !136, !noalias !138
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !136, !noalias !138
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %.sroa.67.0..sroa_idx.i, align 8, !alias.scope !136, !noalias !138
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %.sroa.78.0..sroa_idx.i, align 2, !alias.scope !136, !noalias !138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE5valueB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i16, ptr %i.a, align 16, !noundef !6
  switch i16 %i.b, label %thread-pre-split [
    i16 2, label %bb.aw
    i16 9, label %bb.ax
    i16 11, label %bb.ay
    i16 12, label %bb.ay
    i16 13, label %bb.ay
    i16 16, label %bb.az
    i16 18, label %bb.ba
    i16 19, label %bb.bb
    i16 23, label %bb.bc
    i16 25, label %bb.bd
    i16 32, label %bb.be
    i16 34, label %bb.bf
    i16 42, label %bb.bg
    i16 44, label %bb.bh
    i16 46, label %bb.bi
    i16 47, label %bb.bj
    i16 50, label %bb.bk
    i16 51, label %bb.bl
    i16 54, label %bb.bm
    i16 55, label %bb.bn
    i16 56, label %bb.bo
    i16 57, label %bb.bp
    i16 58, label %bb.bq
    i16 59, label %bb.br
    i16 62, label %bb.bs
    i16 64, label %bb.bt
    i16 66, label %bb.bu
    i16 67, label %bb.bv
    i16 70, label %bb.bw
    i16 72, label %bb.bx
    i16 74, label %bb.by
    i16 76, label %bb.bz
    i16 77, label %bb.ca
    i16 78, label %bb.cb
    i16 79, label %bb.cc
    i16 80, label %bb.cd
    i16 81, label %bb.ce
    i16 85, label %bb.cf
    i16 87, label %bb.cg
    i16 88, label %bb.ch
    i16 89, label %bb.ci
    i16 94, label %bb.cj
    i16 101, label %bb.ck
    i16 113, label %bb.cl
    i16 114, label %bb.cm
    i16 115, label %bb.cn
    i16 8499, label %bb.cn
    i16 116, label %bb.co
    i16 8498, label %bb.co
    i16 121, label %bb.cp
    i16 126, label %bb.cq
    i16 127, label %bb.cr
    i16 131, label %bb.cs
    i16 132, label %bb.ct
    i16 133, label %bb.cu
    i16 134, label %bb.cv
    i16 140, label %bb.cw
    i16 8497, label %bb.cx
  ]

thread-pre-split:                                 ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cl, %bb.gs, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bw, %bb.bt, %bb.bo, %bb.ex, %bb.bn, %bb.bj, %bb.ee, %bb.bi, %bb.bg, %bb.bf, %bb.bd, %bb.df, %bb.ay, %bb.aw, %bb.a, %bb.ax, %bb.bb, %bb.bc, %bb.be, %bb.bk, %bb.bm, %bb.bs, %bb.bu, %bb.bz, %bb.cj, %bb.ck
  %.pr = load i64, ptr %1, align 16, !alias.scope !144, !noalias !147
  br label %bb.b

bb.b:                                             ; preds = %thread-pre-split, %bb.cx, %bb.cw, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.bv, %bb.br, %bb.bq, %bb.bp, %bb.bl, %bb.bh, %bb.ba, %bb.az
  %i.c = phi i64 [ %.pr, %thread-pre-split ], [ %i.ih, %bb.cx ], [ %i.gc, %bb.bh ], [ %i.if, %bb.cw ], [ %i.hx, %bb.cp ], [ %i.hv, %bb.co ], [ %i.ht, %bb.cn ], [ %i.hr, %bb.cm ], [ %i.hl, %bb.ci ], [ %i.gn, %bb.bp ], [ %i.hk, %bb.ch ], [ %i.fr, %bb.ba ], [ %i.hj, %bb.cg ], [ %i.gi, %bb.bl ], [ %i.hh, %bb.cf ], [ %i.gv, %bb.bv ], [ %i.gp, %bb.br ], [ %i.fp, %bb.az ], [ %i.go, %bb.bq ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  switch i64 %i.c, label %default.unreachable40.i [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %..thread_crit_edge
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
end_hunk_0
