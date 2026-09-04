Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_common-b7c4b49eefc7af9d.fish_common.44f050c8d4e88757-cgu.1?download=true
inline.NumInlined: 165
inline.NumDeleted: 99
begin_hunk_0
@18 = private unnamed_addr constant [87 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/sys/sync/once/futex.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@20 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bitflags-2.11.1/src/iter.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"`\00\00\00\00\00\00\00u\00\00\00\0D\00\00\00" }>, align 8
@22 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/widestring-1.2.1/src/utfstr/iter.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00$\00\00\00" }>, align 8
@24 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@25 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@26 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@27 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@28 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@29 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs5UXtnEuoeIl_11fish_common }>, align 8
@31 = private unnamed_addr constant [16 x i8] c"DecodeUtf32Error", align 1
@32 = private unnamed_addr constant [4 x i8] c"code", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1C\00\00\00\00\00\00\00P\03\00\00\0D\00\00\00" }>, align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5UXtnEuoeIl_11fish_common = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5UXtnEuoeIl_11fish_common.41 = private unnamed_addr constant [6 x ptr] [ptr @24, ptr @25, ptr @26, ptr @27, ptr @28, ptr @29], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs5UXtnEuoeIl_11fish_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %.sroa.0.i = alloca i32, align 4                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !30
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.loopexit7, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 3
  %.sroa.0.i.1.i.1.i.1..sroa_idx22 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  %.sroa.0.i.2.i.2.i.2..sroa_idx24 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.1.i.1.i.1..sroa_idx23 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i
  %i.g = phi ptr [ %i.ap, %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i ], [ inttoptr (i64 1 to ptr), %.lr.ph.i.preheader ]
  %i.h = phi i64 [ %i.as, %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.08.017.i = phi ptr [ %i.i, %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.017.i, i64 4 ; 2 uses
  %i.j = load i32, ptr %.sroa.08.017.i, align 4, !alias.scope !28, !noalias !31, !noundef !4 ; 12 uses
  %i.k = xor i32 %i.j, 55296
  %i.l = add i32 %i.k, -1114112
  %i.m = icmp ult i32 %i.l, -1112064
  br i1 %i.m, label %.split.i.i, label %bb.b

.split.i.i:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  store i32 %i.j, ptr %i.a, align 4, !noalias !32
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.i.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = icmp ult i32 %i.j, 1114112
  tail call void @llvm.assume(i1 %i.n)
  %i.o = invoke { i1, i8 } @_RNvCskr4qsHYS30i_15fish_widestring21decode_byte_from_char(i32 noundef %i.j)
          to label %.noexc2 unwind label %.loopexit ; 2 uses

.noexc2:                                          ; preds = %bb.b
  %i.p = extractvalue { i1, i8 } %i.o, 0
  br i1 %i.p, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs5UXtnEuoeIl_11fish_common.exit.i, label %bb.c

_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs5UXtnEuoeIl_11fish_common.exit.i: ; preds = %.noexc2
  %i.q = extractvalue { i1, i8 } %i.o, 1
  store i8 %i.q, ptr %.sroa.0.i, align 4, !noalias !30
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.c:                                             ; preds = %.noexc2
  %i.r = icmp samesign ult i32 %i.j, 128
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.j, 2048
  %i.t = trunc i32 %i.j to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128                ; 3 uses
  %i.w = lshr i32 %i.j, 6
  %i.x = trunc i32 %i.w to i8                     ; 2 uses
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128                ; 2 uses
  %i.aa = lshr i32 %i.j, 12
  %i.ab = trunc i32 %i.aa to i8                   ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128
  %i.ae = lshr i32 %i.j, 18
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = or disjoint i8 %i.af, -16
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ah = trunc nuw nsw i32 %i.j to i8
  store i8 %i.ah, ptr %.sroa.0.i, align 4, !alias.scope !33, !noalias !30
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ai = or disjoint i8 %i.x, -64
  store i8 %i.ai, ptr %.sroa.0.i, align 4, !alias.scope !33, !noalias !30
  store i8 %i.v, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx23, align 1, !alias.scope !33, !noalias !30
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.g:                                             ; preds = %bb.d
  %i.aj = icmp samesign ult i32 %i.j, 65536
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = or disjoint i8 %i.ab, -32
  store i8 %i.ak, ptr %.sroa.0.i, align 4, !alias.scope !33, !noalias !30
  store i8 %i.z, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx22, align 1, !alias.scope !33, !noalias !30
  store i8 %i.v, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx24, align 2, !alias.scope !33, !noalias !30
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.i:                                             ; preds = %bb.g
  store i8 %i.ag, ptr %.sroa.0.i, align 4, !alias.scope !33, !noalias !30
  store i8 %i.ad, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !33, !noalias !30
  store i8 %i.z, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !33, !noalias !30
  store i8 %i.v, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !33, !noalias !30
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs5UXtnEuoeIl_11fish_common.exit.i
  %.pn14.i = phi i64 [ 1, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs5UXtnEuoeIl_11fish_common.exit.i ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.al = load i64, ptr %i.b, align 8, !range !5, !alias.scope !35, !noalias !36, !noundef !4
  %i.am = sub i64 %i.al, %i.h
  %i.an = icmp ugt i64 %.pn14.i, %i.am
  br i1 %i.an, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5UXtnEuoeIl_11fish_common.exit.thread.i.i.i, label %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i, !prof !6

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5UXtnEuoeIl_11fish_common.exit.thread.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.h, i64 noundef range(i64 0, 5) %.pn14.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc3 unwind label %.loopexit

.noexc3:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5UXtnEuoeIl_11fish_common.exit.thread.i.i.i
  %i.ao = load i64, ptr %i.d, align 8, !alias.scope !37, !noalias !36, !noundef !4
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !37, !noalias !36
  br label %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i

_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i: ; preds = %.noexc3, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  %i.ap = phi ptr [ %.pre, %.noexc3 ], [ %i.g, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i ] ; 2 uses
  %.sink30.i = phi i64 [ %i.ao, %.noexc3 ], [ %i.h, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.sink30.i, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink30.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0.i, i64 range(i64 0, 5) %.pn14.i, i1 false), !noalias !38
  %i.as = add nuw i64 %.sink30.i, %.pn14.i        ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !37, !noalias !36
  %i.at = icmp eq ptr %i.i, %i.e
  br i1 %i.at, label %.loopexit7, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5UXtnEuoeIl_11fish_common.exit.thread.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %.split.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.au = icmp eq i64 %.val, 0
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !39
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit

.loopexit7:                                       ; preds = %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !66, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !66, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !66, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !66, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !67, !noundef !4
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !67, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !68, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !68, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !68, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !68, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !69, !noundef !4
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !69, !noundef !4
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit, %bb.u
  %.sroa.0.02934 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.02934
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02934
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj8_ECs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(8) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = add nsw i64 %1, -8
  %i.d = load i64, ptr %0, align 1
  %i.e = load i64, ptr %2, align 1
  %i.f = icmp ne i64 %i.d, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %spec.select = select i1 %i.h, i64 %i.c, i64 undef
  %spec.select3 = select i1 %i.h, ptr %i.b, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %spec.select, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %spec.select3, %bb.b ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs5UXtnEuoeIl_11fish_common(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCse7JGOylGlDZ_3nix6unistd4readNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdECs5UXtnEuoeIl_11fish_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, i32 noundef range(i32 0, -1) %1, ptr noalias nofree noundef nonnull captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @read(i32 noundef %1, ptr noundef nonnull %2, i64 noundef %3) #24 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %_RINvMNtCse7JGOylGlDZ_3nix5errnoNtNtB3_6consts5Errno6resultiECs5UXtnEuoeIl_11fish_common.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_RNvMNtCse7JGOylGlDZ_3nix5errnoNtNtB2_6consts5Errno4last(), !noalias !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4
  br label %bb.c

_RINvMNtCse7JGOylGlDZ_3nix5errnoNtNtB3_6consts5Errno6resultiECs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtCse7JGOylGlDZ_3nix5errnoNtNtB3_6consts5Errno6resultiECs5UXtnEuoeIl_11fish_common.exit, %bb.b
  %storemerge = phi i32 [ 0, %_RINvMNtCse7JGOylGlDZ_3nix5errnoNtNtB3_6consts5Errno6resultiECs5UXtnEuoeIl_11fish_common.exit ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCse7JGOylGlDZ_3nix6unistd7ttynameNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdECs5UXtnEuoeIl_11fish_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !84
  %i.a = tail call noundef dereferenceable_or_null(4096) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 4096, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !84 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs5UXtnEuoeIl_11fish_common.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4096) #25, !noalias !85
  unreachable

_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @ttyname_r(i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 4096) #24 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs5UXtnEuoeIl_11fish_common.exit
  %i.e = invoke { ptr, i64 } @_RNvMs3_NtNtCs3oUPovFnLWP_4core3ffi5c_strNtB5_4CStr20from_bytes_until_nul(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4096)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs5UXtnEuoeIl_11fish_common.exit
  %i.f = invoke noundef i32 @_RNvMNtCse7JGOylGlDZ_3nix5errnoNtNtB2_6consts5Errno8from_raw(i32 noundef %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit12 unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 22, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit11

bb.g:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i64 %i.j, -1                         ; 7 uses
  %.not.i.i = icmp slt i64 %i.l, 0
  br i1 %.not.i.i, label %bb.j, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNCINvNtCse7JGOylGlDZ_3nix6unistd7ttynameNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdE0Cs5UXtnEuoeIl_11fish_common.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !86
  %i.n = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !86 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.l) #25
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.g, i64 %i.l, i1 false), !noalias !87
  br label %_RNCINvNtCse7JGOylGlDZ_3nix6unistd7ttynameNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdE0Cs5UXtnEuoeIl_11fish_common.exit

_RNCINvNtCse7JGOylGlDZ_3nix6unistd7ttynameNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdE0Cs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.k, %bb.h
  %i.p = phi ptr [ %i.n, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.h ]
  store i64 %i.l, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.524.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit11: ; preds = %bb.f, %_RNCINvNtCse7JGOylGlDZ_3nix6unistd7ttynameNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdE0Cs5UXtnEuoeIl_11fish_common.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !4
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit12: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5UXtnEuoeIl_11fish_common.exit11

bb.l:                                             ; preds = %bb.c, %bb.d, %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !88
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294966272) i64 @_RINvNtCslEmbWASCaJL_8bitflags6parser8from_strNtCs5UXtnEuoeIl_11fish_common11EscapeFlagsEBJ_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i32 @_RNvYNtCs5UXtnEuoeIl_11fish_common11EscapeFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags5emptyB4_() ; 5 uses
  store i32 %i.b, ptr %i.a, align 4
  %i.c = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.sink.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.a, %bb.i
  %.lcssa5361 = phi i64 [ %.lcssa5359, %bb.i ], [ 0, %bb.a ] ; 3 uses
  %.lcssa485657 = phi i64 [ %.lcssa4855, %bb.i ], [ 0, %bb.a ] ; 7 uses
  %i.f = icmp ult i64 %1, %.lcssa5361
  br i1 %i.f, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split, %bb.d
  %i.g = phi i64 [ %i.u, %bb.d ], [ %.lcssa5361, %.lr.ph.split ] ; 6 uses
  %i.h = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 16
  br i1 %i.j, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %1, %i.g
  br i1 %.not.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i
  %i.k = call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 124, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !96 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
end_hunk_0
