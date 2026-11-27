Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.09?download=true
inline.NumInlined: 169
inline.NumDeleted: 82
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [39 x i8] c"Invalid import data dir virtual address", align 1
@1 = private unnamed_addr constant [23 x i8] c"src/read/macho/file.rs\00", align 1
@2 = private unnamed_addr constant [48 x i8] c"Could not find segment data in dyld shared cache", align 1
@3 = private unnamed_addr constant [97 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/sort/unstable/heapsort.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"`\00\00\00\00\00\00\00\14\00\00\00\0F\00\00\00" }>, align 8
@5 = private unnamed_addr constant [43 x i8] c"Invalid dyld cache header size or alignment", align 1
@6 = private unnamed_addr constant [29 x i8] c"src/read/macho/dyld_cache.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\1C\00\00\00\00\00\00\00p\00\00\00H\00\00\00" }>, align 8
@8 = private unnamed_addr constant [33 x i8] c"Unexpected .symbols SubCache UUID", align 1
@9 = private unnamed_addr constant [24 x i8] c"Unexpected SubCache UUID", align 1
@10 = private unnamed_addr constant [29 x i8] c"Incorrect number of SubCaches", align 1
@11 = private unnamed_addr constant [32 x i8] c"Address not found in any mapping", align 1
@12 = private unnamed_addr constant [27 x i8] c"Path string not valid utf-8", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\16\00\00\00\00\00\00\00\22\02\00\00#\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\16\00\00\00\00\00\00\00(\02\00\00#\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB3_15DataDirectories12export_tableRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call noundef ptr @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load i32, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtNtBb_2pe18ImageDataDirectory4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
  %i.d = load i64, ptr %i.b, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.e, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i32 noundef %.sroa.06.0.copyload)
  %i.l = load ptr, ptr %i.a, align 8, !noundef !6
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.s, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ 1, %bb.g ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB3_15DataDirectories12import_tableRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = tail call noundef ptr @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i32, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtNtNtCseHTIzroA4w0_6object4read2pe6importNtB3_11ImportTable13from_sectionsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4, i32 noundef %.sroa.03.0.copyload)
  %i.c = load ptr, ptr %i.a, align 8, !noundef !6
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.j, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB3_15DataDirectories23delay_load_import_tableRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = tail call noundef ptr @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 13) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.026.0.copyload = load i32, ptr %i.b, align 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBa_4coff7section12SectionTable18pe_data_containingRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %.sroa.026.0.copyload)
  %i.c = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.522.0.copyload = load i64, ptr %.sroa.522.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.sroa.421.0.copyload to i64
  %.sroa.522.0.copyload.fr = freeze i64 %.sroa.522.0.copyload
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = and i64 %.sroa.522.0.copyload.fr, 4294967295
  %6 = zext i32 %.sroa.026.0.copyload to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %5, %7
  store i64 %8, ptr %.sroa.518.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 39, ptr %i.g, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB3_9MachOFileINtNtB9_5macho12MachHeader32NtNtB9_6endian10EndiannessEE22parse_dyld_cache_imageB1s_ECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.065 = alloca [48 x i8], align 8          ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 3 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val114 = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %.sroa.0.0.copyload.i = load i64, ptr %.val114, align 1, !noalias !38 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.p = load i8, ptr %i.o, align 8, !range !8, !noalias !38, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = tail call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i)
  %.sroa.03.0.i.i = select i1 %i.q, i64 %i.r, i64 %.sroa.0.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  call fastcc void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2_9DyldCache27data_and_offset_for_addressCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.val, i64 noundef %.sroa.03.0.i.i), !noalias !38
  %i.s = load ptr, ptr %i.a, align 8, !noalias !38, !noundef !6 ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader5parseRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %.sroa.6.0.copyload, i64 noundef %.sroa.9.0.copyload)
  %i.v = load ptr, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.w, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho4file10MachHeader6endianCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %i.aa)
  %i.ab = load ptr, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %.not102 = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %.not102, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ac, align 8, !range !8, !noundef !6 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %i.aa, i1 noundef zeroext %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %.sroa.6.0.copyload, i64 noundef %.sroa.9.0.copyload)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.g, %bb.am, %bb.k, %bb.n, %bb.s, %bb.z, %bb.aa, %bb.u, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #20
          to label %.body unwind label %bb.aw

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.an = load i8, ptr %i.am, align 4, !range !9, !noundef !6
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aq

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.j
  %.sroa.534.0.ph = phi i64 [ %.sroa.534.1, %bb.ab ], [ undef, %bb.j ] ; 5 uses
  %.sroa.031.0.ph = phi ptr [ %.sroa.031.1, %bb.ab ], [ null, %bb.j ] ; 6 uses
  %.sroa.08.0.ph = phi ptr [ %.sroa.08.0, %bb.ab ], [ null, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.af
  %.sroa.08.0 = phi ptr [ %.sroa.08.0., %bb.af ], [ %.sroa.08.0.ph, %.outer ] ; 4 uses
  invoke void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.as = load i64, ptr %i.g, align 8, !range !5, !noundef !6
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = load ptr, ptr %i.ap, align 8
  %.not103 = icmp eq ptr %i.au, null
  %or.cond143 = select i1 %i.at, i1 true, i1 %.not103
  br i1 %or.cond143, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not109 = icmp eq ptr %.sroa.08.0, null
  %.not110 = icmp eq ptr %.sroa.031.0.ph, null
  %or.cond = select i1 %.not109, i1 true, i1 %.not110
  br i1 %or.cond, label %bb.aq, label %bb.am

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false)
  invoke void @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5macho7segmentINtNtBb_5macho16SegmentCommand32NtNtBb_6endian10EndiannessENtB5_7Segment12from_commandCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = load i64, ptr %i.f, align 8, !range !5, !noundef !6
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = load ptr, ptr %i.aq, align 8            ; 6 uses
  %i.ay = load i64, ptr %.sroa.478.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

bb.q:                                             ; preds = %bb.o
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not104 = icmp eq ptr %i.ax, null
  br i1 %.not104, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = invoke noundef i32 @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5macho7segmentINtNtBb_5macho16SegmentCommand32NtNtBb_6endian10EndiannessENtB5_7Segment6vmaddrCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(56) %i.ax, i1 noundef zeroext %i.ah)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2_9DyldCache5parseCs8aoZCP6pRcV_7objdump:bb.a

bb.n:                                             ; preds = %bb.m
  br i1 %.sroa.023.0, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not149 = icmp eq i64 %4, 0
  br i1 %.not149, label %bb.q, label %bb.r, !prof !14

bb.p:                                             ; preds = %bb.n
  br i1 %.not147, label %bb.ae, label %bb.u

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.o
  %i.au = add nsw i64 %4, -1                      ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !6 ; 2 uses
  br i1 %.not147, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r, %select.unfold
  %.sroa.444.1 = phi i64 [ %.sroa.444.0, %select.unfold ], [ %i.ay, %bb.r ] ; 2 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.0, %select.unfold ], [ %i.aw, %bb.r ] ; 2 uses
  %i.az = invoke noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.042.1, i64 noundef %.sroa.444.1, i64 noundef 0)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.u:                                             ; preds = %bb.r, %bb.p
  %.sroa.444.0 = phi i64 [ %i.ay, %bb.r ], [ undef, %bb.p ]
  %.sroa.042.0 = phi ptr [ %i.aw, %bb.r ], [ null, %bb.p ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %i.au, %bb.r ], [ %4, %bb.p ] ; 2 uses
  %i.ba = trunc nuw i64 %i.am to i1               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %..sroa.5123.0.copyload = select i1 %i.ba, i64 0, i64 %i.ar
  %..sroa.4122.0.copyload = select i1 %i.ba, ptr inttoptr (i64 1 to ptr), ptr %i.ap ; 2 uses
  %.sroa.4122.0.copyload. = select i1 %i.ba, ptr %i.ap, ptr inttoptr (i64 1 to ptr) ; 2 uses
  %.sroa.5123.0.copyload. = select i1 %i.ba, i64 %i.ar, i64 0
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %..sroa.4122.0.copyload, i64 %..sroa.5123.0.copyload
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr %.sroa.4122.0.copyload., i64 %.sroa.5123.0.copyload.
  %.idx = shl nuw nsw i64 %.sroa.7.0, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.be = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.be, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.0165.0185 = phi ptr [ %3, %.lr.ph ], [ %i.bf, %bb.al ] ; 3 uses
  %.sroa.8.0184 = phi ptr [ %..sroa.4122.0.copyload, %.lr.ph ], [ %.sroa.8.1.ph, %bb.al ] ; 4 uses
  %.sroa.13.0183 = phi ptr [ %.sroa.4122.0.copyload., %.lr.ph ], [ %.sroa.13.1.ph, %bb.al ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0165.0185, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.8.0184, null
  %i.bg = icmp eq ptr %.sroa.8.0184, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.8.0184, i64 24
  %or.cond = select i1 %.not.i.i.i, i1 true, i1 %i.bg
  br i1 %or.cond, label %select.unfold.i.i, label %bb.x

select.unfold.i.i:                                ; preds = %bb.v
  %.not.i.i.i.i = icmp eq ptr %.sroa.13.0183, null
  %i.bi = icmp eq ptr %.sroa.13.0183, %i.bc
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i.i, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %select.unfold.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.13.0183, i64 56
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.13.1.ph = phi ptr [ %.sroa.13.0183, %bb.v ], [ %i.bj, %bb.w ]
  %.sroa.8.1.ph = phi ptr [ %i.bh, %bb.v ], [ null, %bb.w ]
  %.sroa.0.0.i2.i.i.ph = phi ptr [ %.sroa.8.0184, %bb.v ], [ %.sroa.13.0183, %bb.w ] ; 2 uses
  %i.bk = load ptr, ptr %.sroa.0165.0185, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0165.0185, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i2.i.i.ph) ]
  %i.bn = invoke noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i64 noundef 0)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

select.unfold:                                    ; preds = %bb.al, %select.unfold.i.i, %bb.u
  %.not151 = icmp eq ptr %.sroa.042.0, null
  br i1 %.not151, label %bb.ae, label %bb.t

bb.y:                                             ; preds = %bb.t
  %i.bo = icmp eq ptr %i.az, null
  br i1 %i.bo, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bq = load i128, ptr %i.bp, align 1, !noundef !6
  %.not152 = icmp eq i128 %i.bq, %.sroa.725.sroa.0.0
  br i1 %.not152, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMsb_NtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessE8mappingsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(552) %i.az, i1 noundef zeroext %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.042.1, i64 noundef %.sroa.444.1)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.br = load i64, ptr %i.b, align 8, !range !13, !noundef !6
  %i.bs = icmp eq i64 %i.br, 2
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %select.unfold, %bb.p, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMsb_NtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessE6imagesRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(552) %i.h, i1 noundef zeroext %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.x
  %i.bx = icmp eq ptr %i.bn, null
  br i1 %i.bx, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bz = load i128, ptr %i.by, align 1, !noundef !6
  %i.ca = load i128, ptr %.sroa.0.0.i2.i.i.ph, align 1, !noundef !6
  %.not153 = icmp eq i128 %i.bz, %i.ca
  br i1 %.not153, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMsb_NtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessE8mappingsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(552) %i.bn, i1 noundef zeroext %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.cb = load i64, ptr %i.c, align 8, !range !13, !noundef !6 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 2
  %i.cd = load ptr, ptr %.sroa.4135.0..sroa_idx, align 8 ; 2 uses
  %i.ce = load i64, ptr %.sroa.5136.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.cc, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.cf = load i64, ptr %i.v, align 8, !alias.scope !256, !noundef !6 ; 3 uses
  %i.cg = load i64, ptr %i.f, align 8, !range !10, !alias.scope !256, !noundef !6
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileE8grow_oneCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #21
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !257

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.ci = load ptr, ptr %i.u, align 8, !alias.scope !256, !nonnull !6, !noundef !6
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %i.cf ; 5 uses
  store i64 %i.cb, ptr %i.cj, align 8, !noalias !256
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cd, ptr %.sroa.4168.0..sroa_idx, align 8, !noalias !256
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %i.ce, ptr %.sroa.5169.0..sroa_idx, align 8, !noalias !256
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.bk, ptr %.sroa.6170.0..sroa_idx, align 8, !noalias !256
  %.sroa.7171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i64 %i.bm, ptr %.sroa.7171.0..sroa_idx, align 8, !noalias !256
  %i.ck = add i64 %i.cf, 1
  store i64 %i.ck, ptr %i.v, align 8, !alias.scope !256
  %i.cl = icmp eq ptr %i.bf, %i.bd
  br i1 %i.cl, label %select.unfold, label %bb.v

bb.am:                                            ; preds = %bb.ae
  %i.cm = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.cn, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.5107.0..sroa_idx, align 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.cp, ptr %.sroa.6108.0..sroa_idx, align 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cr, ptr %.sroa.7109.0..sroa_idx, align 8
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = zext nneg i8 %i.s to i16
  %6 = zext nneg i8 %i.q to i16
  %7 = shl nuw nsw i16 %6, 8
  %8 = or disjoint i16 %7, %5
  store i16 %8, ptr %.sroa.8110.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileEECs8aoZCP6pRcV_7objdump.exit, %bb.an, %bb.d, %bb.b
  ret void

.loopexit:                                        ; preds = %bb.ai, %bb.ag, %bb.af, %bb.am, %bb.z, %bb.y, %bb.m, %bb.l, %bb.f, %bb.ac
  %.sink196 = phi ptr [ @8, %bb.z ], [ %i.bu, %bb.ac ], [ %i.cp, %bb.am ], [ %i.z, %bb.f ], [ %i.ap, %bb.l ], [ @10, %bb.m ], [ @5, %bb.y ], [ @5, %bb.af ], [ @9, %bb.ag ], [ %i.cd, %bb.ai ]
  %.sink = phi i64 [ 33, %bb.z ], [ %i.bw, %bb.ac ], [ %i.cr, %bb.am ], [ %i.ab, %bb.f ], [ %i.ar, %bb.l ], [ 29, %bb.m ], [ 43, %bb.y ], [ 43, %bb.af ], [ 24, %bb.ag ], [ %i.ce, %bb.ai ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink196, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.ct, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.f, align 8, !range !10, !alias.scope !258, !noundef !6 ; 2 uses
  %i.cv = icmp eq i64 %.val2.i, 0
  br i1 %i.cv, label %common.resume, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !259, !nonnull !6, !noundef !6
  %i.cw = mul nuw i64 %.val2.i, 40
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !260
  br label %common.resume

bb.ar:                                            ; preds = %.loopexit
  %.val.i = load i64, ptr %i.f, align 8, !range !10, !alias.scope !258, !noundef !6 ; 2 uses
  %i.cx = icmp eq i64 %.val.i, 0
  br i1 %i.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileEECs8aoZCP6pRcV_7objdump.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !259, !nonnull !6, !noundef !6
  %i.cy = mul nuw i64 %.val.i, 40
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !261
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileEECs8aoZCP6pRcV_7objdump.exit

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.ap ], [ %i.cu, %bb.aq ], [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ao

bb.at:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB2_9MachOFileINtNtB8_5macho12MachHeader32NtNtB8_6endian10EndiannessEE14parse_sectionsCs8aoZCP6pRcV_7objdump(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(56) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = tail call noundef i32 @_RNvXs6_NtNtNtCseHTIzroA4w0_6object4read5macho4fileINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessENtB5_10MachHeader8filetypeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %3, i1 noundef zeroext %0)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5macho7segmentINtNtBb_5macho16SegmentCommand32NtNtBb_6endian10EndiannessENtB5_7Segment8initprotCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(56) %4, i1 noundef zeroext %0)
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5macho7segmentINtNtBb_5macho16SegmentCommand32NtNtBb_6endian10EndiannessENtB5_7Segment5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(56) %4, i1 noundef zeroext %0)
  %i.i = trunc i32 %i.h to i8
  %i.j = lshr i8 %i.i, 4
  %i.k = and i8 %i.j, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0 = phi i8 [ 2, %bb.a ], [ %i.k, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvYINtNtCseHTIzroA4w0_6object5macho16SegmentCommand32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho7segment7Segment8sectionsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(56) %4, i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  %i.l = load i64, ptr %i.c, align 8, !range !5, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvYINtNtCseHTIzroA4w0_6object5macho16SegmentCommand32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7segment7Segment15section_offsetsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(56) %4, i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho7segmentINtB5_21SectionOffsetIteratorINtNtBb_5macho16SegmentCommand32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !13, !noundef !6 ; 2 uses
  %.not1518 = icmp eq i64 %i.r, 2
  br i1 %.not1518, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit
  %i.u = phi i64 [ %i.r, %.lr.ph ], [ %i.ag, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit ]
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.f, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit, %bb.e
  %.sroa.4.0.ph = phi i64 [ undef, %bb.e ], [ %.sroa.7.0.copyload, %bb.f ], [ undef, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit ]
  %.sroa.0.0.ph = phi ptr [ null, %bb.e ], [ %.sroa.57.0.copyload, %bb.f ], [ null, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d
  %.sroa.4.0 = phi i64 [ %i.q, %bb.d ], [ %.sroa.4.0.ph, %.sink.split ]
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.s, align 8, !noundef !6 ; 4 uses
  %i.z = icmp ult i64 %i.y, 192153584101141163
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1                 ; 2 uses
  %i.ab = call noundef i8 @_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtB5_20MachOSectionInternalINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessERShE10parse_kindCs8aoZCP6pRcV_7objdump(i1 noundef zeroext %0, i8 noundef %.sroa.01.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %.sroa.57.0.copyload)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.ac = load i64, ptr %7, align 8, !range !10, !alias.scope !265, !noundef !6
  %i.ad = icmp eq i64 %i.y, %i.ac
  br i1 %i.ad, label %bb.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEE8grow_oneCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7) #21, !noalias !266
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCseHTIzroA4w0_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEE8push_mutCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.h, %bb.i
  %i.ae = load ptr, ptr %i.t, align 8, !alias.scope !265, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.y ; 6 uses
  store ptr %.sroa.57.0.copyload, ptr %i.af, align 8, !noalias !265
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !265
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !265
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !265
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx16, align 8, !noalias !265
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 %i.ab, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !265
  store i64 %i.aa, ptr %i.s, align 8, !alias.scope !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho7segmentINtB5_21SectionOffsetIteratorINtNtBb_5macho16SegmentCommand32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.ag = load i64, ptr %i.a, align 8, !range !13, !noundef !6 ; 2 uses
  %.not15 = icmp eq i64 %i.ag, 2
  br i1 %.not15, label %.sink.split, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB2_9MachOFileINtNtB8_5macho12MachHeader32NtNtB8_6endian10EndiannessEE19macho_load_commandsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  tail call void @_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB2_9MachOFileINtNtB8_5macho12MachHeader32NtNtB8_6endian10EndiannessEE5parseCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.035 = alloca [48 x i8], align 8          ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
end_hunk_1
