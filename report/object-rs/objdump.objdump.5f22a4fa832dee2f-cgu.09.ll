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

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.522.0.copyload = load i64, ptr %.sroa.522.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.sroa.421.0.copyload to i64
  %.sroa.9.16.extract.trunc = trunc i64 %.sroa.522.0.copyload to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.9.16.extract.trunc, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.026.0.copyload, ptr %.sroa.619.0..sroa_idx, align 4
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 39, ptr %i.g, align 8
  br label %.sink.split
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
  %.sroa.0.0.copyload.i = load i64, ptr %.val114, align 1, !noalias !37 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.p = load i8, ptr %i.o, align 8, !range !8, !noalias !37, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = tail call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i)
  %.sroa.03.0.i.i = select i1 %i.q, i64 %i.r, i64 %.sroa.0.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  call fastcc void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2_9DyldCache27data_and_offset_for_addressCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.val, i64 noundef %.sroa.03.0.i.i), !noalias !37
  %i.s = load ptr, ptr %i.a, align 8, !noalias !37, !noundef !6 ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
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

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ap)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.bb = zext i32 %i.ba to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2_9DyldCache27data_and_offset_for_addressCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.val, i64 noundef %i.bb)
  %i.bc = load ptr, ptr %i.e, align 8, !noundef !6 ; 4 uses
end_hunk_0
