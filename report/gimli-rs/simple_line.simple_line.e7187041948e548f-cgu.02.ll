Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_line.simple_line.e7187041948e548f-cgu.02?download=true
inline.NumInlined: 196
inline.NumDeleted: 121
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/navigate.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@2 = private unnamed_addr constant [44 x i8] c"Invalid anon object header size or alignment", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@4 = private unnamed_addr constant [33 x i8] c"Invalid XCOFF string table length", align 1
@5 = private unnamed_addr constant [26 x i8] c"Missing XCOFF string table", align 1
@6 = private unnamed_addr constant [41 x i8] c"Invalid XCOFF symbol table offset or size", align 1
@7 = private unnamed_addr constant [64 x i8] c"section size mismatch: unexpected data at the end of the section", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB6_11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjQ7aQP35kzr_11simple_line9dump_files_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsjQ7aQP35kzr_11simple_line9dump_files_0INtB7_5FnMutTRINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEE8call_mutBS_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_18AbbreviationsCache3getINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.14.i.i.i = alloca [12 x i8], align 4     ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 9 uses
  %.sroa.10.i.i = alloca [72 x i8], align 8       ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.7.i.i.sroa.6 = alloca [7 x i8], align 1  ; 7 uses
  %.sroa.4.i.i = alloca [88 x i8], align 8        ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 13 uses
  %i.k = alloca [48 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %.sroa.12 = alloca [7 x i8], align 1            ; 6 uses
  %.sroa.14 = alloca [24 x i8], align 8           ; 4 uses
  %.val = load ptr, ptr %1, align 8, !noundef !5  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.n, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.d
  %.sroa.3.0.i.i = phi i64 [ %i.ad, %bb.d ], [ %.val5, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ac, %bb.d ], [ %.val, %.preheader.i.preheader ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 184 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 274
  %i.q = load i16, ptr %i.p, align 2, !noalias !61, !noundef !5 ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.t = icmp eq i16 %i.q, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i365, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.8.0.i.i.i364, 1
  %i.w = icmp eq ptr %i.u, %i.s
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.b
  %.sroa.0.03.i.i.i365 = phi ptr [ %i.u, %bb.b ], [ %i.o, %.preheader.i ] ; 2 uses
  %.sroa.8.0.i.i.i364 = phi i64 [ %i.v, %bb.b ], [ 0, %.preheader.i ] ; 4 uses
  %.val6.i.i.i = load i64, ptr %.sroa.0.03.i.i.i365, align 8, !noalias !61, !noundef !5
  %i.x = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %3, i64 %.val6.i.i.i)
  switch i8 %i.x, label %bb.c [
    i8 -1, label %._crit_edge
    i8 0, label %bb.e
    i8 1, label %bb.b
  ]

bb.c:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.preheader.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.r, %.preheader.i ], [ %i.r, %bb.b ], [ %.sroa.8.0.i.i.i364, %.lr.ph ] ; 2 uses
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 280
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.4.0.i.ph.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !61, !nonnull !5, !noundef !5
  %i.ad = add i64 %.sroa.3.0.i.i, -1
  br label %.preheader.i

bb.e:                                             ; preds = %.lr.ph
  %i.ae = icmp samesign ult i64 %.sroa.8.0.i.i.i364, 11
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.8.0.i.i.i364 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !6, !noundef !5
  %.not4 = icmp eq i8 %i.ag, -1
  br i1 %.not4, label %bb.aw, label %bb.av

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.ah = load ptr, ptr %2, align 8, !alias.scope !66, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !66, !noundef !5 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i.i = load i8, ptr %i.ak, align 8, !range !7, !alias.scope !66, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 %.val.i.i, ptr %i.am, align 8, !alias.scope !64, !noalias !63
  %i.an = icmp ult i64 %i.aj, %3
  br i1 %i.an, label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread, label %bb.f

_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread: ; preds = %.loopexit
  %i.ao = ptrtoint ptr %i.ah to i64
  br label %.sink.split

bb.f:                                             ; preds = %.loopexit
  %i.ap = sub nuw i64 %i.aj, %3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %3
  store ptr %i.aq, ptr %i.l, align 8, !alias.scope !67, !noalias !63, !captures !68
  store i64 %i.ap, ptr %i.al, align 8, !alias.scope !67, !noalias !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !70
  store i64 0, ptr %i.k, align 8, !noalias !70
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !70
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.2.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.838.0..sroa_idx39.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.636.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !70
  %i.az = icmp eq i64 %i.aj, %3
  br i1 %i.az, label %.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.j, i64 9 ; 5 uses
  %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %.sroa.7.i.i.sroa.6.0..sroa.3.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %.sroa.7.i.i.sroa.7.0..sroa.3.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !73
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader12read_uleb128CsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc.i.i unwind label %bb.ah, !noalias !74

.noexc.i.i:                                       ; preds = %.lr.ph.i
  %i.ba = load i8, ptr %i.h, align 8, !range !6, !noalias !73, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ba, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc.i.i
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx25, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.444.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !75
  %.sroa.545.0.copyload.i.i.i = load i64, ptr %i.ar, align 8, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !73
  store i64 %.sroa.545.0.copyload.i.i.i, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx26, align 8, !alias.scope !71, !noalias !70
  br label %.thread.i.i

bb.h:                                             ; preds = %.noexc.i.i
  %i.bb = load i64, ptr %i.ar, align 8, !noalias !73, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !73
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !76
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc18.i.i unwind label %bb.ah, !noalias !77

.noexc18.i.i:                                     ; preds = %bb.i
  %i.bd = load i8, ptr %i.f, align 8, !range !6, !noalias !76, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc18.i.i
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.417.0.copyload.i.i.i.i = load i8, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 1, !noalias !76
  %.sroa.518.0.copyload.i.i.i.i = load i16, ptr %i.as, align 2, !noalias !76
  %.sroa.619.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.619.0..sroa_idx.i.i.i.i, i64 12, i1 false), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76
  br label %.loopexit.i.i

bb.k:                                             ; preds = %.noexc18.i.i
  %i.be = load i16, ptr %i.as, align 2, !noalias !76, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %.loopexit.i.i, label %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line.exit.i.i.i

.loopexit.i.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i16 [ %.sroa.518.0.copyload.i.i.i.i, %bb.j ], [ undef, %bb.k ]
  %.sroa.876.0.ph.i.i.i = phi i8 [ %.sroa.417.0.copyload.i.i.i.i, %bb.j ], [ undef, %bb.k ]
  %.sroa.0.0.ph.i.i.i = phi i8 [ %i.bd, %bb.j ], [ 8, %bb.k ]
  store i8 %.sroa.876.0.ph.i.i.i, ptr %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx25, align 1, !alias.scope !71, !noalias !70
  %.sroa.559.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  store i16 %.sroa.10.0.ph.i.i.i, ptr %.sroa.559.0..sroa_idx.i.i.i, align 2, !alias.scope !71, !noalias !70
  %.sroa.660.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.660.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.i.i.i, i64 12, i1 false), !noalias !75
  br label %.thread.i.i

_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line.exit.i.i.i: ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.bg = load i64, ptr %i.al, align 8, !alias.scope !80, !noalias !63, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bg, 0
  %i.bh = load ptr, ptr %i.l, align 8, !alias.scope !80, !noalias !63, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line.exit.i.i.i
  %i.bi = ptrtoint ptr %i.bh to i64
  br label %.loopexit36.i.i

bb.m:                                             ; preds = %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bk = add i64 %i.bg, -1
  %i.bl = load i8, ptr %i.bh, align 1, !noalias !81, !noundef !5 ; 3 uses
  store ptr %i.bj, ptr %i.l, align 8, !alias.scope !80, !noalias !63, !captures !68
  store i64 %i.bk, ptr %i.al, align 8, !alias.scope !80, !noalias !63
  %switch.i.i.i.i = icmp ult i8 %i.bl, 2
  br i1 %switch.i.i.i.i, label %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line.exit.i.i.i, label %.loopexit36.i.i

.loopexit36.i.i:                                  ; preds = %bb.m, %bb.l
  %.sroa.13.0.ph.i.i.i = phi i64 [ %i.bi, %bb.l ], [ undef, %bb.m ]
  %.sroa.880.0.ph.i.i.i = phi i8 [ undef, %bb.l ], [ %i.bl, %bb.m ]
  %.sroa.078.0.ph.i.i.i = phi i8 [ 17, %bb.l ], [ 11, %bb.m ]
  store i8 %.sroa.880.0.ph.i.i.i, ptr %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx25, align 1, !alias.scope !71, !noalias !70
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx26, align 8, !alias.scope !71, !noalias !70
  br label %.thread.i.i

_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i8 0, i64 96, i1 false), !noalias !82
  br label %bb.n

bb.n:                                             ; preds = %bb.ae, %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECsjQ7aQP35kzr_11simple_line.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc.i.i.i unwind label %bb.x, !noalias !84

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.bm = load i8, ptr %i.c, align 8, !range !6, !noalias !83, !noundef !5 ; 2 uses
  %.not.i.i21.i.i = icmp eq i8 %i.bm, -1
  br i1 %.not.i.i21.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i
  %.sroa.454.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.454.0.copyload.i.i.i.i = load i8, ptr %.sroa.454.0..sroa_idx.i.i.i.i, align 1, !noalias !83
  %.sroa.555.0.copyload.i.i.i.i = load i16, ptr %i.av, align 2, !noalias !83
  %.sroa.656.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.12.sroa.16.4.copyload.i.i.i = load i32, ptr %.sroa.656.0..sroa_idx.i.i.i.i, align 4, !noalias !85
  %.sroa.27.12..sroa.656.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.27.12.copyload.i.i.i = load i64, ptr %.sroa.27.12..sroa.656.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83
  br label %.loopexit.i.i.i

bb.p:                                             ; preds = %.noexc.i.i.i
  %i.bn = load i16, ptr %i.av, align 2, !noalias !83, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc8.i.i.i unwind label %bb.x, !noalias !84

.noexc8.i.i.i:                                    ; preds = %bb.p
  %i.bo = load i8, ptr %i.b, align 8, !range !6, !noalias !83, !noundef !5 ; 2 uses
  %.not83.i.i.i.i = icmp eq i8 %i.bo, -1
  br i1 %.not83.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc8.i.i.i
  %.sroa.466.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.466.0.copyload.i.i.i.i = load i8, ptr %.sroa.466.0..sroa_idx.i.i.i.i, align 1, !noalias !83
  %.sroa.567.0.copyload.i.i.i.i = load i16, ptr %i.aw, align 2, !noalias !83
  %.sroa.668.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.12.sroa.16.4.copyload33.i.i.i = load i32, ptr %.sroa.668.0..sroa_idx.i.i.i.i, align 4, !noalias !85
  %.sroa.27.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.27.12.copyload17.i.i.i = load i64, ptr %.sroa.27.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83
  br label %.loopexit.i.i.i

bb.r:                                             ; preds = %.noexc8.i.i.i
  %i.bp = load i16, ptr %i.aw, align 2, !noalias !83, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83
  %.not.i22.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i22.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %.noexc19.i.i, label %.loopexit.i.i.i

bb.t:                                             ; preds = %bb.r
  switch i16 %i.bp, label %bb.ad [
    i16 0, label %.loopexit.i.i.i
    i16 33, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader12read_sleb128CsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc9.i.i.i unwind label %bb.x, !noalias !84

.noexc9.i.i.i:                                    ; preds = %bb.u
  %i.br = load i8, ptr %i.a, align 8, !range !6, !noalias !83, !noundef !5 ; 2 uses
  %.not84.i.i.i.i = icmp eq i8 %i.br, -1
  br i1 %.not84.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc9.i.i.i
  %.sroa.477.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.12.sroa.11.1.copyload.i.i.i = load i8, ptr %.sroa.477.0..sroa_idx.i.i.i.i, align 1, !noalias !85
  %.sroa.12.sroa.14.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.12.sroa.14.1.copyload.i.i.i = load i16, ptr %.sroa.12.sroa.14.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i.i, align 2, !noalias !85
  %.sroa.12.sroa.16.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.12.sroa.16.1.copyload.i.i.i = load i32, ptr %.sroa.12.sroa.16.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i.i, align 4, !noalias !85
  %.sroa.578.0.copyload.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  br label %.loopexit.i.i.i

bb.w:                                             ; preds = %.noexc9.i.i.i
  %i.bs = load i64, ptr %i.ax, align 8, !noalias !83, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  br label %bb.ad

bb.x:                                             ; preds = %bb.ad, %bb.u, %bb.p, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev10AttributesECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #21
          to label %.body.i.i unwind label %bb.af, !noalias !86

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.t, %bb.v, %bb.q, %bb.o
  %.sroa.12.sroa.16.0.ph.i.i.i = phi i32 [ %.sroa.12.sroa.16.4.copyload.i.i.i, %bb.o ], [ %.sroa.12.sroa.16.4.copyload33.i.i.i, %bb.q ], [ %.sroa.12.sroa.16.1.copyload.i.i.i, %bb.v ], [ undef, %bb.t ], [ undef, %bb.s ]
  %.sroa.12.sroa.14.0.ph.i.i.i = phi i16 [ %.sroa.555.0.copyload.i.i.i.i, %bb.o ], [ %.sroa.567.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.12.sroa.14.1.copyload.i.i.i, %bb.v ], [ undef, %bb.t ], [ undef, %bb.s ]
  %.sroa.12.sroa.11.0.ph.i.i.i = phi i8 [ %.sroa.454.0.copyload.i.i.i.i, %bb.o ], [ %.sroa.466.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.12.sroa.11.1.copyload.i.i.i, %bb.v ], [ undef, %bb.t ], [ undef, %bb.s ]
  %.sroa.12.sroa.0.0.ph.i.i.i = phi i8 [ %i.bm, %bb.o ], [ %i.bo, %bb.q ], [ %i.br, %bb.v ], [ 10, %bb.t ], [ 9, %bb.s ]
  %.sroa.27.0.ph.i.i.i = phi i64 [ %.sroa.27.12.copyload.i.i.i, %bb.o ], [ %.sroa.27.12.copyload17.i.i.i, %bb.q ], [ %.sroa.578.0.copyload.i.i.i.i, %bb.v ], [ undef, %bb.t ], [ undef, %bb.s ]
  %.sroa.12.sroa.16.0.insert.ext.i.i.i = zext i32 %.sroa.12.sroa.16.0.ph.i.i.i to i64
  %.sroa.12.sroa.16.0.insert.shift.i.i.i = shl nuw i64 %.sroa.12.sroa.16.0.insert.ext.i.i.i, 32
  %.sroa.12.sroa.14.0.insert.ext.i.i.i = zext i16 %.sroa.12.sroa.14.0.ph.i.i.i to i64
  %.sroa.12.sroa.14.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.12.sroa.14.0.insert.ext.i.i.i, 16
  %.sroa.12.sroa.14.0.insert.insert.i.i.i = or disjoint i64 %.sroa.12.sroa.14.0.insert.shift.i.i.i, %.sroa.12.sroa.16.0.insert.shift.i.i.i
  %.sroa.12.sroa.11.0.insert.ext.i.i.i = zext i8 %.sroa.12.sroa.11.0.ph.i.i.i to i64
  %.sroa.12.sroa.11.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.12.sroa.11.0.insert.ext.i.i.i, 8
  %.sroa.12.sroa.11.0.insert.insert.i.i.i = or disjoint i64 %.sroa.12.sroa.14.0.insert.insert.i.i.i, %.sroa.12.sroa.11.0.insert.shift.i.i.i
  %.sroa.12.sroa.0.0.insert.ext.i.i.i = zext nneg i8 %.sroa.12.sroa.0.0.ph.i.i.i to i64
  %.sroa.12.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.12.sroa.11.0.insert.insert.i.i.i, %.sroa.12.sroa.0.0.insert.ext.i.i.i
  %i.bu = load i64, ptr %i.e, align 8, !range !8, !alias.scope !87, !noalias !82, !noundef !5
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.noexc19.thread.i.i, label %bb.y

bb.y:                                             ; preds = %.loopexit.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.ab unwind label %bb.z, !noalias !86

bb.z:                                             ; preds = %bb.y
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !9, !alias.scope !88, !noalias !82, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.bx, label %.body.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val3.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !89, !noalias !82, !nonnull !5, !noundef !5
  %i.by = shl nuw i64 %.val2.i.i.i.i.i, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !90
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.y
  %.val.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !9, !alias.scope !88, !noalias !82, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bz, label %.noexc19.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !89, !noalias !82, !nonnull !5, !noundef !5
  %i.ca = shl nuw i64 %.val.i.i.i.i.i, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !91
  br label %.noexc19.thread.i.i

bb.ad:                                            ; preds = %bb.w, %bb.t
  %.sroa.082.0.i.i.i.i = phi i64 [ %i.bs, %bb.w ], [ 0, %bb.t ]
  %.sroa.27.16.insert.ext.i.i.i.a = zext i16 %i.bn to i64
  %.sroa.27.18.insert.ext.i.i.i = zext i16 %i.bp to i64
  %.sroa.27.18.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.27.18.insert.ext.i.i.i, 16
  %.sroa.27.18.insert.insert.i.i.i = or disjoint i64 %.sroa.27.18.insert.shift.i.i.i, %.sroa.27.16.insert.ext.i.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82
  store i64 %.sroa.082.0.i.i.i.i, ptr %i.d, align 8, !noalias !82
  store i64 %.sroa.27.18.insert.insert.i.i.i, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !82
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_10Attributes4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.d)
          to label %bb.ae unwind label %bb.x, !noalias !86

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  br label %bb.n

bb.af:                                            ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !86
  unreachable

.noexc19.thread.i.i:                              ; preds = %bb.ac, %bb.ab, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !82
  br label %.loopexit38.i.i

.noexc19.i.i:                                     ; preds = %bb.s
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !92 ; 2 uses
  %i.cc = load <2 x i64>, ptr %i.au, align 8, !noalias !92 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx.i.i, i64 72, i1 false), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !82
  %i.cd = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %i.cd, label %.loopexit38.i.i.loopexit, label %bb.ag

.loopexit38.i.i.loopexit:                         ; preds = %.noexc19.i.i
  %i.ce = extractelement <2 x i64> %i.cc, i64 1
  %i.cf = extractelement <2 x i64> %i.cc, i64 0
  br label %.loopexit38.i.i

.loopexit38.i.i:                                  ; preds = %.loopexit38.i.i.loopexit, %.noexc19.thread.i.i
  %.sroa.6.033.i.i = phi i64 [ %.sroa.12.sroa.0.0.insert.insert.i.i.i, %.noexc19.thread.i.i ], [ %i.cf, %.loopexit38.i.i.loopexit ] ; 2 uses
  %.sroa.924.032.i.i = phi i64 [ %.sroa.27.0.ph.i.i.i, %.noexc19.thread.i.i ], [ %i.ce, %.loopexit38.i.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  store i64 %.sroa.6.033.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !75
  store i64 %.sroa.924.032.i.i, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx26, align 8, !noalias !75
  %i.cg = trunc i64 %.sroa.6.033.i.i to i8
  br label %.thread.i.i

bb.ag:                                            ; preds = %.noexc19.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.838.0..sroa_idx39.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, i64 72, i1 false), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.g, align 8, !noalias !73
  store <2 x i64> %i.cc, ptr %.sroa.636.0..sroa_idx37.i.i.i, align 8, !noalias !73
  invoke void @_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_12Abbreviation3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, i64 noundef %i.bb, i16 noundef %i.be, i8 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.g)
          to label %bb.ai unwind label %bb.ah, !noalias !93

bb.ah:                                            ; preds = %bb.ak, %bb.ag, %bb.i, %.lr.ph.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ah, %bb.aa, %bb.z, %bb.x
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ch, %bb.ah ], [ %i.bw, %bb.z ], [ %i.bw, %bb.aa ], [ %i.bt, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #21
          to label %common.resume unwind label %bb.an, !noalias !93

.thread.i.i:                                      ; preds = %.loopexit38.i.i, %.loopexit36.i.i, %.loopexit.i.i, %bb.g
  %.sroa.7.i.i.sroa.0.0.copyload195 = phi i8 [ %i.cg, %.loopexit38.i.i ], [ %.sroa.078.0.ph.i.i.i, %.loopexit36.i.i ], [ %.sroa.0.0.ph.i.i.i, %.loopexit.i.i ], [ %i.ba, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !70
  br label %.loopexit39.i.i

.thread.i:                                        ; preds = %bb.am, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !70
  br label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit

bb.ai:                                            ; preds = %bb.ag
  %.pr.i.i = load i64, ptr %i.j, align 8, !noalias !70 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !70
  %i.ci = icmp eq i64 %.pr.i.i, -1
  %.sroa.7.i.i.sroa.0.0.copyload.pre = load i8, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !70 ; 2 uses
  br i1 %i.ci, label %.loopexit39.i.i, label %bb.aj

.loopexit39.i.i:                                  ; preds = %bb.ai, %.thread.i.i
  %.sroa.7.i.i.sroa.0.0.copyload = phi i8 [ %.sroa.7.i.i.sroa.0.0.copyload195, %.thread.i.i ], [ %.sroa.7.i.i.sroa.0.0.copyload.pre, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx25, i64 7, i1 false), !noalias !70
  %.sroa.7.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx26, align 8, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, i64 7, i1 false), !noalias !94
  br label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread36

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx25, i64 7, i1 false), !noalias !70
  %.sroa.7.i.i.sroa.7.0.copyload27 = load i64, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx26, align 8, !noalias !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.515.0..sroa_idx.i.i, i64 88, i1 false), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !70
  %.not.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not.i.i, label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !70
  store i64 %.pr.i.i, ptr %i.i, align 8, !noalias !70
  store i8 %.sroa.7.i.i.sroa.0.0.copyload.pre, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.3.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, i64 7, i1 false), !noalias !70
  store i64 %.sroa.7.i.i.sroa.7.0.copyload27, ptr %.sroa.7.i.i.sroa.7.0..sroa.3.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i, i64 88, i1 false), !noalias !70
  %i.cj = load i64, ptr %i.ay, align 8, !noalias !70, !noundef !5
  %i.ck = invoke noundef zeroext i1 @_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_13Abbreviations6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.i)
          to label %bb.al unwind label %bb.ah, !noalias !93

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !70
  br i1 %i.ck, label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread36, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !70
  %.val.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !95, !noalias !63, !noundef !5
  %i.cl = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cl, label %.thread.i, label %.lr.ph.i

_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread36: ; preds = %bb.al, %.loopexit39.i.i
  %.sroa.1214.0 = phi i64 [ %.sroa.7.i.i.sroa.7.0.copyload, %.loopexit39.i.i ], [ %i.cj, %bb.al ]
  %.sroa.8.0 = phi i8 [ %.sroa.7.i.i.sroa.0.0.copyload, %.loopexit39.i.i ], [ 13, %bb.al ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %.sink.split

bb.an:                                            ; preds = %.body.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !93
  unreachable

common.resume:                                    ; preds = %bb.ar, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cs, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit: ; preds = %bb.aj, %.thread.i
  %.sroa.08.0.copyload9 = load i64, ptr %i.k, align 8, !noalias !94 ; 2 uses
  %.sroa.8.0.copyload11 = load i8, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !94 ; 2 uses
  %.sroa.12.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx13, i64 7, i1 false), !noalias !94
  %.sroa.1214.0.copyload16 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !94 ; 2 uses
  %.sroa.14.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx18, i64 24, i1 false), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !63
  %i.cn = icmp eq i64 %.sroa.08.0.copyload9, -1
  br i1 %i.cn, label %bb.ao, label %bb.ap

.sink.split:                                      ; preds = %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread36
  %.sroa.8.235.ph = phi i8 [ %.sroa.8.0, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread36 ], [ 17, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread ]
  %.sroa.1214.234.ph = phi i64 [ %.sroa.1214.0, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread36 ], [ %i.ao, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !63
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit
  %.sroa.8.235 = phi i8 [ %.sroa.8.0.copyload11, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit ], [ %.sroa.8.235.ph, %.sink.split ]
  %.sroa.1214.234 = phi i64 [ %.sroa.1214.0.copyload16, %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit ], [ %.sroa.1214.234.ph, %.sink.split ]
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i64 7, i1 false)
  store i8 %.sroa.8.235, ptr %0, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1214.234, ptr %.sroa.522.0..sroa_idx, align 8
  br label %bb.at

bb.ap:                                            ; preds = %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCsjQ7aQP35kzr_11simple_line.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i64 7, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  store i64 1, ptr %i.m, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 %.sroa.08.0.copyload9, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 %.sroa.8.0.copyload11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.1214.0.copyload16, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !96
  %i.cq = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #22, !noalias !96 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.aq, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEE3newCsjQ7aQP35kzr_11simple_line.exit, !prof !10

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #24
          to label %.noexc unwind label %bb.ar, !noalias !96

.noexc:                                           ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cp)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEE3newCsjQ7aQP35kzr_11simple_line.exit: ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.cu, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsEE3newCsjQ7aQP35kzr_11simple_line.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.ax, %bb.at
  ret void

bb.av:                                            ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  br label %bb.au

bb.aw:                                            ; preds = %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5
  %i.cx = atomicrmw add ptr %i.cw, i64 1 monotonic, align 8
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cz = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.au

bb.ay:                                            ; preds = %bb.aw
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationE3getyECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationNtB1i_14LeafOrInternalE11search_treeyECsjQ7aQP35kzr_11simple_line.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %.val = load i64, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
end_hunk_0
