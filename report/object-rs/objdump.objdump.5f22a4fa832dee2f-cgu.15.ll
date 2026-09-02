Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.15?download=true
inline.NumInlined: 288
inline.NumDeleted: 102
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [37 x i8] c"Unknown COFF import library name type", align 1
@1 = private unnamed_addr constant [39 x i8] c"Invalid COFF import library import type", align 1
@2 = private unnamed_addr constant [17 x i8] c"Invalid nfat_arch", align 1
@3 = private unnamed_addr constant [17 x i8] c"Invalid fat magic", align 1
@4 = private unnamed_addr constant [36 x i8] c"Invalid fat header size or alignment", align 1
@5 = private unnamed_addr constant [44 x i8] c"Invalid Mach-O chained fixups offset or size", align 1
@6 = private unnamed_addr constant [46 x i8] c"Invalid Mach-O dyld info export offset or size", align 1
@7 = private unnamed_addr constant [49 x i8] c"Invalid Mach-O dyld info lazy bind offset or size", align 1
@8 = private unnamed_addr constant [49 x i8] c"Invalid Mach-O dyld info weak bind offset or size", align 1
@9 = private unnamed_addr constant [44 x i8] c"Invalid Mach-O dyld info bind offset or size", align 1
@10 = private unnamed_addr constant [42 x i8] c"Invalid Mach-O symbol table offset or size", align 1
@11 = private unnamed_addr constant [27 x i8] c"Not an exports trie command", align 1
@12 = private unnamed_addr constant [31 x i8] c"Invalid linkedit offset or size", align 1
@13 = private unnamed_addr constant [17 x i8] c"Invalid DOS magic", align 1
@14 = private unnamed_addr constant [36 x i8] c"Invalid DOS header size or alignment", align 1
@15 = private unnamed_addr constant [30 x i8] c"Invalid COFF relocation number", align 1
@16 = private unnamed_addr constant [40 x i8] c"Invalid COFF relocation offset or number", align 1
@17 = private unnamed_addr constant [32 x i8] c"Invalid COFF section name offset", align 1
@18 = private unnamed_addr constant [32 x i8] c"Invalid data dir virtual address", align 1
@19 = private unnamed_addr constant [21 x i8] c"Invalid data dir size", align 1
@20 = private unnamed_addr constant [46 x i8] c"Could not read COFF import library export name", align 1
@21 = private unnamed_addr constant [43 x i8] c"Could not read COFF import library DLL name", align 1
@22 = private unnamed_addr constant [46 x i8] c"Could not read COFF import library symbol name", align 1
@23 = private unnamed_addr constant [37 x i8] c"Invalid COFF import library data size", align 1
@24 = private unnamed_addr constant [42 x i8] c"Unknown COFF import library header version", align 1
@25 = private unnamed_addr constant [34 x i8] c"Invalid COFF import library header", align 1
@26 = private unnamed_addr constant [39 x i8] c"Invalid COFF import library header size", align 1
@27 = private unnamed_addr constant [42 x i8] c"Invalid dyld cache image size or alignment", align 1
@28 = private unnamed_addr constant [44 x i8] c"Invalid dyld cache mapping size or alignment", align 1
@29 = private unnamed_addr constant [40 x i8] c"Invalid dyld subcaches size or alignment", align 1
@30 = private unnamed_addr constant [35 x i8] c"Couldn't read dyld cache image path", align 1
@31 = private unnamed_addr constant [33 x i8] c"Invalid COFF optional header size", align 1
@32 = private unnamed_addr constant [42 x i8] c"Invalid COFF file header size or alignment", align 1
@33 = private unnamed_addr constant [33 x i8] c"Invalid COFF bigobj header values", align 1
@34 = private unnamed_addr constant [49 x i8] c"Invalid COFF bigobj file header size or alignment", align 1
@35 = private unnamed_addr constant [38 x i8] c"Invalid Mach-O load command table size", align 1
@36 = private unnamed_addr constant [25 x i8] c"Unsupported Mach-O header", align 1
@37 = private unnamed_addr constant [39 x i8] c"Invalid Mach-O header size or alignment", align 1
@38 = private unnamed_addr constant [33 x i8] c"Invalid Mach-O number of sections", align 1
@39 = private unnamed_addr constant [33 x i8] c"Invalid Mach-O symbol name offset", align 1
@40 = private unnamed_addr constant [43 x i8] c"Invalid Mach-O relocations offset or number", align 1
@41 = private unnamed_addr constant [31 x i8] c"Invalid COFF symbol name offset", align 1
@42 = private unnamed_addr constant [32 x i8] c"Invalid PE optional header magic", align 1
@43 = private unnamed_addr constant [31 x i8] c"Invalid PE optional header size", align 1
@44 = private unnamed_addr constant [36 x i8] c"PE optional header size is too small", align 1
@45 = private unnamed_addr constant [16 x i8] c"Invalid PE magic", align 1
@46 = private unnamed_addr constant [33 x i8] c"Invalid PE headers offset or size", align 1
@47 = private unnamed_addr constant [31 x i8] c"Invalid fat arch offset or size", align 1
@_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN = external local_unnamed_addr global { { { ptr } } }
@48 = private unnamed_addr constant [29 x i8] c"Unrecognized dyld cache magic", align 1
@49 = private unnamed_addr constant [29 x i8] c"Invalid COFF/PE section index", align 1
@switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB2_23XcoffRelocationIteratorNtNtB8_5xcoff12FileHeader64ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump = private unnamed_addr constant [50 x i8] c"\02\00\03\04\00\00\00\00\02\00\03\00\02\02\00\00\00\00\00\00\00\00\00\00\02\00\03\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04", align 1
@switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB2_23XcoffRelocationIteratorNtNtB8_5xcoff12FileHeader64ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.70 = private unnamed_addr constant [50 x i64] [i64 0, i64 0, i64 -4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtB3_10ImportFile5parseRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe18ImportObjectHeaderECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !35 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload.i = load i16, ptr %i.b, align 1, !noalias !35
  %.not.i = icmp eq i16 %.sroa.05.0.copyload.i, 0
  br i1 %.not.i, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.06.0.copyload.i = load i16, ptr %i.d, align 1, !noalias !35
  %i.e = icmp eq i16 %.sroa.06.0.copyload.i, -1
  br i1 %i.e, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.07.0.copyload.i = load i16, ptr %i.f, align 1, !noalias !35
  %i.g = icmp eq i16 %.sroa.07.0.copyload.i, 0
  br i1 %i.g, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.b, i64 12
  %.val = load i32, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %i.b, i64 18       ; 2 uses
  %.val29 = load i16, ptr %i.i, align 1
  %i.j = zext i32 %.val to i64
  %i.k = call { ptr, i64 } @_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.j), !noalias !36 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = extractvalue { ptr, i64 } %i.k, 1        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  %i.p = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !37, !nonnull !6, !noundef !6
  %i.q = call { i64, ptr } %i.p(i8 noundef 0, ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.o), !noalias !38, !inline_history !22 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.t = extractvalue { i64, ptr } %i.q, 1
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v                       ; 8 uses
  %i.x = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.x)
  %.not.i.i.i = icmp ult i64 %i.w, %i.n
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w
  %3 = xor i64 %i.w, -1
  %4 = add i64 %i.n, %3                           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4
  %i.ab = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !39, !nonnull !6, !noundef !6
  %i.ac = call { i64, ptr } %i.ab(i8 noundef 0, ptr noundef nonnull readonly %i.z, ptr noundef nonnull readonly %i.aa), !noalias !40, !inline_history !22 ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.af = extractvalue { i64, ptr } %i.ac, 1
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %.not.i.i72.i = icmp ult i64 %i.ai, %4
  call void @llvm.assume(i1 %.not.i.i72.i)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai
  %5 = xor i64 %i.ai, -1
  %i.al = add i64 %4, %5                          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 4 uses
  %i.an = and i16 %.val29, 28
  %i.ao = icmp eq i16 %i.an, 16
  br i1 %i.ao, label %bb.i, label %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  %i.aq = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !41, !nonnull !6, !noundef !6
  %i.ar = call { i64, ptr } %i.aq(i8 noundef 0, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.ap), !noalias !42, !inline_history !22 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.au = extractvalue { i64, ptr } %i.ar, 1
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.am to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  call void @llvm.assume(i1 %i.ay)
  %.not.i.i79.i = icmp ult i64 %i.ax, %i.al
  call void @llvm.assume(i1 %.not.i.i79.i)
  br label %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit

_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.j, %bb.h
  %.sroa.27.0 = phi i64 [ %i.ax, %bb.j ], [ undef, %bb.h ]
  %.sroa.25.0 = phi ptr [ %i.am, %bb.j ], [ null, %bb.h ] ; 2 uses
  %.sroa.023.0.copyload = load i16, ptr %i.i, align 1 ; 2 uses
  %i.az = and i16 %.sroa.023.0.copyload, 3
  switch i16 %i.az, label %default.unreachable52 [
    i16 0, label %bb.m
    i16 1, label %bb.k
    i16 2, label %bb.l
    i16 3, label %bb.u
  ]

default.unreachable52:                            ; preds = %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit
  unreachable

bb.k:                                             ; preds = %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit
  br label %bb.m

bb.l:                                             ; preds = %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit
  br label %bb.m

bb.m:                                             ; preds = %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit, %bb.l, %bb.k
  %.sroa.09.0 = phi i8 [ 2, %bb.l ], [ 1, %bb.k ], [ 0, %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit ]
  %i.ba = lshr i16 %.sroa.023.0.copyload, 2
  %i.bb = and i16 %i.ba, 7
  switch i16 %i.bb, label %bb.u [
    i16 0, label %bb.s
    i16 1, label %.loopexit
    i16 2, label %bb.n
    i16 3, label %bb.o
    i16 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.bc = call { ptr, i64 } @_RNvNvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtB4_10ImportFile5parse12strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.w) ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bf = call { ptr, i64 } @_RNvNvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtB4_10ImportFile5parse12strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.w) ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0      ; 6 uses
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %i.bj = icmp samesign eq i64 %i.bh, 0
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.p
  %.sroa.02.07.i.i = phi i64 [ %i.bn, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %i.bk = phi ptr [ %i.bm, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  %.val.i.i = load i8, ptr %i.bk, align 1, !noalias !43, !noundef !6
  %i.bl = icmp eq i8 %.val.i.i, 64
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %i.bn = add nuw i64 %.sroa.02.07.i.i, 1
  %i.bo = icmp eq ptr %i.bm, %i.bi
  br i1 %i.bo, label %.loopexit, label %.lr.ph.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bp = icmp ult i64 %.sroa.02.07.i.i, %i.bh
  call void @llvm.assume(i1 %i.bp)
  br label %.loopexit

bb.r:                                             ; preds = %bb.m
  %.not27 = icmp eq ptr %.sroa.25.0, null
  br i1 %.not27, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r, %bb.m
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.o, %bb.q, %bb.r, %bb.n, %bb.m, %bb.s
  %.sroa.611.0 = phi i64 [ undef, %bb.s ], [ %i.w, %bb.m ], [ %i.be, %bb.n ], [ %.sroa.27.0, %bb.r ], [ %.sroa.02.07.i.i, %bb.q ], [ 0, %bb.o ], [ %i.bh, %bb.p ]
  %.sroa.010.0 = phi ptr [ null, %bb.s ], [ %i.l, %bb.m ], [ %i.bd, %bb.n ], [ %.sroa.25.0, %bb.r ], [ %i.bg, %bb.q ], [ %i.bg, %bb.o ], [ %i.bg, %bb.p ]
  store ptr %i.b, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.w, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.010.0, ptr %.sroa.97.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.loopexit
  %.sink59 = phi i64 [ 8, %bb.u ], [ 48, %.loopexit ]
  %.sink.sink = phi i64 [ %.sink, %bb.u ], [ %.sroa.611.0, %.loopexit ]
  %.sink56 = phi i8 [ -1, %bb.u ], [ %.sroa.09.0, %.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink59
  store i64 %.sink.sink, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sink56, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.u:                                             ; preds = %bb.m, %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit, %bb.f, %bb.g, %bb.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink55 = phi ptr [ @23, %bb.e ], [ @1, %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit ], [ @26, %bb.a ], [ @24, %bb.d ], [ @25, %bb.c ], [ @25, %bb.b ], [ @22, %bb.f ], [ @21, %bb.g ], [ @20, %bb.i ], [ @0, %bb.m ]
  %.sink = phi i64 [ 37, %bb.e ], [ 39, %_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump.exit ], [ 39, %bb.a ], [ 42, %bb.d ], [ 34, %bb.c ], [ 34, %bb.b ], [ 46, %bb.f ], [ 43, %bb.g ], [ 46, %bb.i ], [ 37, %bb.m ]
  store ptr %.sink55, ptr %0, align 8
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read5macho3fatINtB3_12MachOFatFileNtNtB9_5macho9FatArch32E5parseRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_5macho9FatHeaderECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load i32, ptr %i.b, align 1
  %.not = icmp eq i32 %.sroa.019.0.copyload, -1095041334
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.020.0.copyload = load i32, ptr %i.d, align 1
  %i.e = call i32 @llvm.bswap.i32(i32 %.sroa.020.0.copyload)
  %i.f = zext i32 %i.e to i64
  %i.g = call { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_5macho9FatArch32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.f) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.b, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink23 = phi ptr [ @3, %bb.b ], [ @4, %bb.a ], [ @2, %bb.c ]
  %.sink = phi i64 [ 17, %bb.b ], [ 36, %bb.a ], [ 17, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink23, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.l, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read5macho3fatINtB3_12MachOFatFileNtNtB9_5macho9FatArch64E5parseRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_5macho9FatHeaderECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load i32, ptr %i.b, align 1
  %.not = icmp eq i32 %.sroa.019.0.copyload, -1078264118
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.020.0.copyload = load i32, ptr %i.d, align 1
  %i.e = call i32 @llvm.bswap.i32(i32 %.sroa.020.0.copyload)
  %i.f = zext i32 %i.e to i64
  %i.g = call { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_5macho9FatArch64ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.f) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.g, 1
end_hunk_0
begin_hunk_1_@_RNvYNtNtCseHTIzroA4w0_6object5macho9FatArch64NtNtNtNtB6_4read5macho3fat7FatArch12architectureCs8aoZCP6pRcV_7objdump:bb.a
bb.d:                                             ; preds = %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 24, %bb.h ], [ 4, %bb.b ], [ 1, %bb.c ], [ 10, %bb.d ], [ 11, %bb.e ], [ 19, %bb.f ], [ 23, %bb.g ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtB4_10ImportFile5parse12strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_5macho9FatHeaderECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_5macho9FatArch32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_5macho9FatArch64ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupINtB4_17DyldChainedFixupsNtNtBa_6endian10EndiannessE5parseCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho7Nlist32NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho7Nlist64NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atNtNtBc_2pe14ImageDosHeaderECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtBb_2pe18ImageSectionHeader16pe_file_range_at(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtBb_2pe18ImageSectionHeader13pe_file_range(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atNtNtBc_2pe15ImageRelocationECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atNtNtBc_2pe15ImageRelocationECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read4coff7sectionNtNtBb_2pe18ImageSectionHeader11name_offset(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs3_NtNtCseHTIzroA4w0_6object4read4utilNtB5_11StringTable3getCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read4coff7sectionNtNtBb_2pe18ImageSectionHeader8raw_name(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtNtBa_4coff7section12SectionTable10pe_data_atRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe18ImportObjectHeaderECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtNtCseHTIzroA4w0_6object4read8read_refRShNtB2_7ReadRef19read_bytes_at_until(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe15ImageFileHeaderECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe22AnonObjectHeaderBigobjECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE4uuidCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_5macho12MachHeader32NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_5macho12MachHeader64NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho9Section32NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho9Section64NtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho10RelocationNtNtBc_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe16ImageNtHeaders32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories5parse(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe16ImageNtHeaders64ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff5Rel32NtNtNtNtB6_4read5xcoff10relocation3Rel6symbolCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(10)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff5Rel64NtNtNtNtB6_4read5xcoff10relocation3Rel6symbolCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(14)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_11SymbolTableRShNtNtBb_2pe22AnonObjectHeaderBigobjE3getNtB1b_21ImageAuxSymbolSectionECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_11SymbolTableRShNtNtBb_2pe22AnonObjectHeaderBigobjE3getNtB1b_13ImageSymbolExECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_11SymbolTable3getNtNtBb_2pe21ImageAuxSymbolSectionECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_11SymbolTable3getNtNtBb_2pe11ImageSymbolECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4u_NtCseHTIzroA4w0_6object2peNtB6_11SymbolClassNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2N_NtCseHTIzroA4w0_6object2peNtB6_12SectionFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsL_NtCseHTIzroA4w0_6object2peNtB5_9FileFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsct_NtCseHTIzroA4w0_6object5machoNtB6_10SymbolDescNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3R_NtCseHTIzroA4w0_6object5machoNtB6_9FileFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE10segment_32Cs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE10segment_64Cs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RNvMs7_NtCseHTIzroA4w0_6object6endianINtB5_3U16NtB5_12LittleEndianE3getCs8aoZCP6pRcV_7objdump(i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_12LittleEndianE3getCs8aoZCP6pRcV_7objdump(i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!6 = !{}
!7 = !{i32 0, i32 2}
!8 = !{i64 0, i64 2}
!9 = !{i64 4}
!10 = !{i64 2}
!11 = !{i64 8}
!12 = distinct !{!12, !"_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader5parseRShECs8aoZCP6pRcV_7objdump"}
!13 = distinct !{!13, !12, !"_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader5parseRShECs8aoZCP6pRcV_7objdump: argument 0"}
!14 = distinct !{!14, !"_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump"}
!15 = distinct !{!15, !14, !"_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump: argument 0"}
!16 = distinct !{!16, !14, !"_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump: argument 2"}
!17 = distinct !{!17, !14, !"_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6importNtNtBb_2pe18ImportObjectHeader10parse_dataRShECs8aoZCP6pRcV_7objdump: argument 1"}
!18 = distinct !{!18, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!19 = distinct !{!19, !18, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!20 = distinct !{!20, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!21 = distinct !{!21, !20, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!22 = distinct !{null, null, null}
!23 = distinct !{!23, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!24 = distinct !{!24, !23, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!25 = distinct !{!25, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!26 = distinct !{!26, !25, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!27 = distinct !{!27, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!28 = distinct !{!28, !27, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!29 = distinct !{!29, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!30 = distinct !{!30, !29, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!31 = distinct !{!31, !"_RNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCINvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtBW_10ImportFile5parseRShE0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump"}
!32 = distinct !{!32, !31, !"_RNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCINvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtBW_10ImportFile5parseRShE0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump: argument 0"}
!33 = distinct !{!33, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNCINvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtB2a_10ImportFile5parseRShE0EBS_4next0ECs8aoZCP6pRcV_7objdump"}
!34 = distinct !{!34, !33, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNCINvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtB2a_10ImportFile5parseRShE0EBS_4next0ECs8aoZCP6pRcV_7objdump: argument 0"}
!35 = !{!13}
!36 = !{!15}
!37 = !{!21, !19, !15, !17, !16}
!38 = !{!21, !19, !15}
!39 = !{!26, !24, !15, !17, !16}
!40 = !{!26, !24, !15}
!41 = !{!30, !28, !15, !17, !16}
!42 = !{!30, !28, !15}
!43 = !{!34, !32}
!44 = distinct !{null}
!45 = !{i64 8225433604405466}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = distinct !{!47, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump"}
!48 = distinct !{!48, !47, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump: argument 1"}
!49 = distinct !{!49, !47, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump: argument 2"}
!50 = distinct !{!50, !47, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump: argument 0"}
!51 = !{!48}
!52 = !{!50, !49}
!53 = distinct !{!53, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump"}
!54 = distinct !{!54, !53, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump: argument 1"}
!55 = distinct !{!55, !53, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump: argument 2"}
!56 = distinct !{!56, !53, !"_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs8aoZCP6pRcV_7objdump: argument 0"}
!57 = !{!54}
!58 = !{!56, !55}
!59 = distinct !{!59, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!60 = distinct !{!60, !59, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!63 = distinct !{!63, !62, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB4_23XcoffRelocationIteratorNtNtBa_5xcoff12FileHeader32ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump"}
!66 = distinct !{!66, !65, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB4_23XcoffRelocationIteratorNtNtBa_5xcoff12FileHeader32ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 1"}
!67 = distinct !{!67, !65, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB4_23XcoffRelocationIteratorNtNtBa_5xcoff12FileHeader32ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 0"}
!68 = !{!66}
!69 = !{!67}
!70 = distinct !{!70, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB4_23XcoffRelocationIteratorNtNtBa_5xcoff12FileHeader64ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump"}
!71 = distinct !{!71, !70, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB4_23XcoffRelocationIteratorNtNtBa_5xcoff12FileHeader64ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 1"}
!72 = distinct !{!72, !70, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff10relocationINtB4_23XcoffRelocationIteratorNtNtBa_5xcoff12FileHeader64ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 0"}
!73 = !{!71}
!74 = !{!72}
!75 = distinct !{!75, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump"}
!76 = distinct !{!76, !75, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump: argument 0"}
!77 = !{!76}
!78 = distinct !{!78, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump"}
!79 = distinct !{!79, !78, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump: argument 0"}
!80 = !{!79}
!81 = distinct !{!81, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjE5parseCs8aoZCP6pRcV_7objdump"}
!82 = distinct !{!82, !81, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjE5parseCs8aoZCP6pRcV_7objdump: argument 2"}
!83 = distinct !{!83, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump"}
!84 = distinct !{!84, !83, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump: argument 0"}
!85 = distinct !{!85, !81, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjE5parseCs8aoZCP6pRcV_7objdump: argument 1"}
!86 = distinct !{!86, !81, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_10CoffComdatRShNtNtBb_2pe22AnonObjectHeaderBigobjE5parseCs8aoZCP6pRcV_7objdump: argument 0"}
!87 = !{!82}
!88 = !{!84, !82}
!89 = !{!86, !85}
!90 = !{!86, !85, !82}
!91 = !{!86, !82}
!92 = !{!86}
!93 = distinct !{!93, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdat5parseCs8aoZCP6pRcV_7objdump"}
!94 = distinct !{!94, !93, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdat5parseCs8aoZCP6pRcV_7objdump: argument 2"}
!95 = distinct !{!95, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump"}
!96 = distinct !{!96, !95, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump: argument 0"}
!97 = distinct !{!97, !93, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdat5parseCs8aoZCP6pRcV_7objdump: argument 1"}
!98 = distinct !{!98, !93, !"_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_10CoffComdat5parseCs8aoZCP6pRcV_7objdump: argument 0"}
!99 = !{!94}
!100 = !{!96, !94}
!101 = !{!98, !97}
!102 = !{!98, !97, !94}
!103 = !{!98, !94}
!104 = !{!98}
!105 = distinct !{!105, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!106 = distinct !{!106, !105, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!107 = !{!106}
!108 = distinct !{!108, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!109 = distinct !{!109, !108, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!110 = !{!109}
!111 = distinct !{!111, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!112 = distinct !{!112, !111, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!113 = !{!112}
!114 = distinct !{!114, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!115 = distinct !{!115, !114, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, !"_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section32NtNtBb_6endian10EndiannessENtB5_7Section5flagsCs8aoZCP6pRcV_7objdump"}
!118 = distinct !{!118, !117, !"_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section32NtNtBb_6endian10EndiannessENtB5_7Section5flagsCs8aoZCP6pRcV_7objdump: argument 0"}
!119 = distinct !{!119, !"_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section32NtNtBb_6endian10EndiannessENtB5_7Section4sizeCs8aoZCP6pRcV_7objdump"}
!120 = distinct !{!120, !119, !"_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section32NtNtBb_6endian10EndiannessENtB5_7Section4sizeCs8aoZCP6pRcV_7objdump: argument 0"}
!121 = !{!118}
!122 = !{!120}
!123 = distinct !{!123, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!124 = distinct !{!124, !123, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!125 = !{!124}
!126 = distinct !{!126, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!127 = distinct !{!127, !126, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!128 = !{!127}
!129 = distinct !{!129, !"_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section64NtNtBb_6endian10EndiannessENtB5_7Section5flagsCs8aoZCP6pRcV_7objdump"}
!130 = distinct !{!130, !129, !"_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section64NtNtBb_6endian10EndiannessENtB5_7Section5flagsCs8aoZCP6pRcV_7objdump: argument 0"}
!131 = distinct !{!131, !"_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section64NtNtBb_6endian10EndiannessENtB5_7Section4sizeCs8aoZCP6pRcV_7objdump"}
!132 = distinct !{!132, !131, !"_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section64NtNtBb_6endian10EndiannessENtB5_7Section4sizeCs8aoZCP6pRcV_7objdump: argument 0"}
!133 = !{!130}
!134 = !{!132}
!135 = distinct !{!135, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump"}
!136 = distinct !{!136, !135, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump: argument 0"}
!137 = !{!136}
!138 = distinct !{!138, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol12derived_typeCs8aoZCP6pRcV_7objdump"}
!139 = distinct !{!139, !138, !"_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol12derived_typeCs8aoZCP6pRcV_7objdump: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump"}
!142 = distinct !{!142, !141, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump: argument 0"}
!143 = !{!142}
!144 = distinct !{!144, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol12derived_typeCs8aoZCP6pRcV_7objdump"}
!145 = distinct !{!145, !144, !"_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol12derived_typeCs8aoZCP6pRcV_7objdump: argument 0"}
!146 = !{!145}
end_hunk_1
