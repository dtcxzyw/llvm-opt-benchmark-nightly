Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.01?download=true
inline.NumInlined: 126
inline.NumDeleted: 103
begin_hunk_0_@_RNvXs8_NtNtCseHTIzroA4w0_6object4read3anyNtB5_7SectionNtNtB7_6traits13ObjectSection4nameCs8aoZCP6pRcV_7objdump:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtNtCseHTIzroA4w0_6object4read3anyNtB5_14ComdatIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %.sroa.7 = alloca [32 x i8], align 8            ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = load i64, ptr %1, align 8, !range !8, !noundef !5 ; 2 uses
  switch i64 %i.e, label %default.unreachable21 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.h
    i64 5, label %bb.h
    i64 6, label %bb.h
    i64 7, label %bb.h
    i64 8, label %bb.h
    i64 9, label %bb.h
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB4_18CoffComdatIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.d, align 8, !noundef !5
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB4_18CoffComdatIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.i = load ptr, ptr %i.c, align 8, !noundef !5
  %.not19 = icmp eq ptr %i.i, null
  br i1 %.not19, label %bb.k, label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB4_17ElfComdatIteratorINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.k = load ptr, ptr %i.b, align 8, !noundef !5
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB4_17ElfComdatIteratorINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.m = load ptr, ptr %i.a, align 8, !noundef !5
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.o, label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.o, %bb.m, %bb.k, %bb.g
  store i64 -1, ptr %0, align 8
  br label %bb.p

bb.i:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.f
  store i64 %i.e, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  br label %bb.p

bb.j:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.l:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.n:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.p:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsE_NtCseHTIzroA4w0_6object6commonNtB5_11SectionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !14, !noundef !5
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXsE_NtCseHTIzroA4w0_6object6commonNtB7_11SectionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsE_NtCseHTIzroA4w0_6object6commonNtB7_11SectionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsE_NtCseHTIzroA4w0_6object6commonNtB7_11SectionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 18, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsM_NtCseHTIzroA4w0_6object6commonNtB5_10ComdatKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsM_NtCseHTIzroA4w0_6object6commonNtB5_10ComdatKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsM_NtCseHTIzroA4w0_6object6commonNtB5_10ComdatKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.61, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtCseHTIzroA4w0_6object6commonNtB5_10SymbolKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsU_NtCseHTIzroA4w0_6object6commonNtB5_10SymbolKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsU_NtCseHTIzroA4w0_6object6commonNtB5_10SymbolKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.62, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCseHTIzroA4w0_6object4readNtB5_11SymbolIndexNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.l = load i64, ptr %0, align 8, !range !8, !alias.scope !113, !noundef !5 ; 2 uses
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.b
    i64 5, label %bb.c
    i64 6, label %bb.d
    i64 7, label %bb.e
    i64 8, label %bb.f
    i64 9, label %bb.g
  ], !prof !16

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #8, !noalias !113
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #8, !noalias !113
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #8, !noalias !113
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #8, !noalias !113
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #8, !noalias !113
  unreachable

bb.g:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #8, !noalias !113
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !113, !noundef !5
  store i64 %i.n, ptr %i.j, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !114, !nonnull !5, !align !6, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !114, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !116
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !116
  call void @_RINvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB7_4read4coff6symbol6Symbol4nameRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(18) %.val1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !116
  %i.s = load i64, ptr %i.f, align 8, !range !12, !noalias !116, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !116, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !116, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !116
  br i1 %i.t, label %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdatNtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !116
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x), !noalias !116
  %i.y = load i64, ptr %i.e, align 8, !range !12, !noalias !116, !noundef !5 ; 2 uses
  %i.z = trunc nuw i64 %i.y to i1                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !116, !nonnull !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !116
  %.sink2.ph.i.i = select i1 %i.z, ptr @66, ptr %i.ab
  %.sink.ph.i.i = select i1 %i.z, i64 26, i64 %i.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !116
  br label %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdatNtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i

_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdatNtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i: ; preds = %.sink.split.i.i, %bb.h
  %.sink2.i.i = phi ptr [ %i.v, %bb.h ], [ %.sink2.ph.i.i, %.sink.split.i.i ]
  %.sink.i.i = phi i64 [ %i.x, %bb.h ], [ %.sink.ph.i.i, %.sink.split.i.i ]
  %storemerge4.i.i = phi i64 [ 1, %bb.h ], [ %i.y, %.sink.split.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sink2.i.i, ptr %i.ae, align 8, !alias.scope !117
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sink.i.i, ptr %i.af, align 8, !alias.scope !117
  store i64 %storemerge4.i.i, ptr %i.h, align 8, !alias.scope !117
  br label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit

bb.i:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !113, !noundef !5
  store i64 %i.ah, ptr %i.j, align 8
  %i.ai = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.aj, align 8, !alias.scope !114, !nonnull !5, !align !6, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.ak, align 8, !alias.scope !114, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !119
  call void @_RINvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB7_4read4coff6symbol6Symbol4nameRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %.val3.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  %i.am = load i64, ptr %i.c, align 8, !range !12, !noalias !119, !noundef !5
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !119, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !119, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !119
  br i1 %i.an, label %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i, label %.sink.split.i4.i

.sink.split.i4.i:                                 ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar), !noalias !119
  %i.as = load i64, ptr %i.b, align 8, !range !12, !noalias !119, !noundef !5 ; 2 uses
  %i.at = trunc nuw i64 %i.as to i1               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !119, !nonnull !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !119
  %.sink2.ph.i5.i = select i1 %i.at, ptr @66, ptr %i.av
  %.sink.ph.i6.i = select i1 %i.at, i64 26, i64 %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  br label %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i

_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i: ; preds = %.sink.split.i4.i, %bb.i
  %.sink2.i7.i = phi ptr [ %i.ap, %bb.i ], [ %.sink2.ph.i5.i, %.sink.split.i4.i ]
  %.sink.i8.i = phi i64 [ %i.ar, %bb.i ], [ %.sink.ph.i6.i, %.sink.split.i4.i ]
  %storemerge4.i9.i = phi i64 [ 1, %bb.i ], [ %i.as, %.sink.split.i4.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sink2.i7.i, ptr %i.ay, align 8, !alias.scope !120
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sink.i8.i, ptr %i.az, align 8, !alias.scope !120
  store i64 %storemerge4.i9.i, ptr %i.h, align 8, !alias.scope !120
  br label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit

bb.j:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !113, !nonnull !5, !noundef !5
  %i.bd = load ptr, ptr %i.ba, align 8, !alias.scope !113, !nonnull !5, !align !6, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 288
  %i.bf = load i8, ptr %i.be, align 8, !range !10, !noalias !113, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %.sroa.05.0.copyload.i = load i32, ptr %i.bg, align 1, !noalias !113 ; 2 uses
  %.not7.i = icmp eq i8 %i.bf, 0
  %i.bh = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i)
  %.sroa.02.0.i = select i1 %.not7.i, i32 %.sroa.05.0.copyload.i, i32 %i.bh
  %i.bi = zext i32 %.sroa.02.0.i to i64
  store i64 %i.bi, ptr %i.j, align 8
  %i.bj = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB5_9ElfComdatINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba)
  br label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit

bb.k:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !113, !nonnull !5, !noundef !5
  %i.bn = load ptr, ptr %i.bk, align 8, !alias.scope !113, !nonnull !5, !align !6, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.bp = load i8, ptr %i.bo, align 8, !range !10, !noalias !113, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %.sroa.03.0.copyload.i = load i32, ptr %i.bq, align 1, !noalias !113 ; 2 uses
  %.not.i = icmp eq i8 %i.bp, 0
  %i.br = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i)
  %.sroa.01.0.i = select i1 %.not.i, i32 %.sroa.03.0.copyload.i, i32 %i.br
  %i.bs = zext i32 %.sroa.01.0.i to i64
  store i64 %i.bs, ptr %i.j, align 8
  %i.bt = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB5_9ElfComdatINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
  br label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit

_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit: ; preds = %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdatNtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i, %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i, %bb.j, %bb.k
  %2 = phi ptr [ %i.o, %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdatNtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i ], [ %i.ai, %_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit.i ], [ %i.bj, %bb.j ], [ %i.bt, %bb.k ]
  %3 = load i64, ptr %i.h, align 8, !range !12, !noundef !5
  %i.bu = trunc nuw i64 %3 to i1                  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.by = load i64, ptr %i.bx, align 8
  %.sink8 = select i1 %i.bu, ptr @59, ptr %i.bw
  %.sink = select i1 %i.bu, i64 9, i64 %i.by
  store ptr %.sink8, ptr %i.i, align 8, !captures !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.val1 = load i8, ptr %i.cb, align 4            ; 4 uses
  switch i64 %i.l, label %default.unreachable.i [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4kindCs8aoZCP6pRcV_7objdump.exit
    i64 3, label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4kindCs8aoZCP6pRcV_7objdump.exit
  ], !prof !122

default.unreachable.i:                            ; preds = %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit
  unreachable

bb.l:                                             ; preds = %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit
  %i.cc = icmp ult i8 %.val1, 8
  br i1 %i.cc, label %switch.lookup, label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4kindCs8aoZCP6pRcV_7objdump.exit

bb.m:                                             ; preds = %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit
  %i.cd = icmp ult i8 %.val1, 8
  br i1 %i.cd, label %switch.lookup9, label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4kindCs8aoZCP6pRcV_7objdump.exit

switch.lookup:                                    ; preds = %bb.l
  %i.ce = shl nuw nsw i8 %.val1, 3
  %switch.shiftamt = zext nneg i8 %i.ce to i64
  %switch.downshift = lshr i64 433752956341387776, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  br label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4kindCs8aoZCP6pRcV_7objdump.exit

switch.lookup9:                                   ; preds = %bb.m
  %i.cf = shl nuw nsw i8 %.val1, 3
  %switch.shiftamt11 = zext nneg i8 %i.cf to i64
  %switch.downshift12 = lshr i64 433752956341387776, %switch.shiftamt11
  %switch.masked13 = trunc i64 %switch.downshift12 to i8
  br label %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4kindCs8aoZCP6pRcV_7objdump.exit

_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4kindCs8aoZCP6pRcV_7objdump.exit: ; preds = %switch.lookup9, %bb.m, %switch.lookup, %bb.l, %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit, %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit
  %.sroa.0.0.i2 = phi i8 [ 1, %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit ], [ 0, %bb.m ], [ 1, %_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat4nameCs8aoZCP6pRcV_7objdump.exit ], [ %switch.masked, %switch.lookup ], [ 0, %bb.l ], [ %switch.masked13, %switch.lookup9 ]
  store i8 %.sroa.0.0.i2, ptr %i.g, align 1
  %i.cg = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
  %i.ch = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret i1 %i.ch
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat8sectionsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !8, !noundef !5 ; 2 uses
  switch i64 %i.a, label %default.unreachable29 [
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
  ], !prof !16

default.unreachable29:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8, !noundef !5
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !5
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %.sroa.625.16.extract.trunc = trunc i64 %i.l to i32
  %.sroa.625.20.extract.shift = lshr i64 %i.l, 32
  %.sroa.625.20.extract.trunc = trunc nuw i64 %.sroa.625.20.extract.shift to i32
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %.sroa.628.16.extract.trunc = trunc i64 %i.s to i32
  %.sroa.628.20.extract.shift = lshr i64 %i.s, 32
  %.sroa.628.20.extract.trunc = trunc nuw i64 %.sroa.628.20.extract.shift to i32
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #8
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #8
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #8
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #8
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #8
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #8
  unreachable

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.7.sroa.7.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.k, %bb.d ], [ %i.r, %bb.e ]
  %.sroa.7.sroa.8.0 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %.sroa.625.16.extract.trunc, %bb.d ], [ %.sroa.628.16.extract.trunc, %bb.e ]
  %.sroa.7.sroa.9.0 = phi i32 [ undef, %bb.b ], [ undef, %bb.c ], [ %.sroa.625.20.extract.trunc, %bb.d ], [ %.sroa.628.20.extract.trunc, %bb.e ]
  %.sroa.7.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.sroa.0.0 = load ptr, ptr %.sroa.7.sroa.0.0.in, align 8, !nonnull !5, !align !6, !noundef !5
  store i64 %i.a, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7.sroa.8.0, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.7.sroa.9.0, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsd_NtNtCseHTIzroA4w0_6object4read3anyNtB5_21ComdatSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.f
    i64 6, label %bb.f
    i64 7, label %bb.f
    i64 8, label %bb.f
    i64 9, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_25CoffComdatSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_25CoffComdatSectionIteratorRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB5_24ElfComdatSectionIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB5_24ElfComdatSectionIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.11.0 = phi i64 [ %i.e, %bb.b ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.11.0, 1
  ret { i64, i64 } %i.s
}
end_hunk_0
