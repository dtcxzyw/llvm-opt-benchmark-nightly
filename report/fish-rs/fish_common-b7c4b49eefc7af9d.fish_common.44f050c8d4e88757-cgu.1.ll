Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_common-b7c4b49eefc7af9d.fish_common.44f050c8d4e88757-cgu.1?download=true
inline.NumInlined: 165
inline.NumDeleted: 99
begin_hunk_0_@_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs5UXtnEuoeIl_11fish_common:bb.a
  br i1 %i.m, label %.split.i.i, label %bb.b

.split.i.i:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14
  store i32 %i.j, ptr %i.a, align 4, !noalias !14
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
  store i8 %i.q, ptr %.sroa.0.i, align 4, !noalias !9
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
  store i8 %i.ah, ptr %.sroa.0.i, align 4, !alias.scope !15, !noalias !9
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ai = or disjoint i8 %i.x, -64
  store i8 %i.ai, ptr %.sroa.0.i, align 4, !alias.scope !15, !noalias !9
  store i8 %i.v, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx23, align 1, !alias.scope !15, !noalias !9
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.g:                                             ; preds = %bb.d
  %i.aj = icmp samesign ult i32 %i.j, 65536
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = or disjoint i8 %i.ab, -32
  store i8 %i.ak, ptr %.sroa.0.i, align 4, !alias.scope !15, !noalias !9
  store i8 %i.z, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx22, align 1, !alias.scope !15, !noalias !9
  store i8 %i.v, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx24, align 2, !alias.scope !15, !noalias !9
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.i:                                             ; preds = %bb.g
  store i8 %i.ag, ptr %.sroa.0.i, align 4, !alias.scope !15, !noalias !9
  store i8 %i.ad, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !15, !noalias !9
  store i8 %i.z, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !15, !noalias !9
  store i8 %i.v, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !15, !noalias !9
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs5UXtnEuoeIl_11fish_common.exit.i
  %.pn14.i = phi i64 [ 1, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs5UXtnEuoeIl_11fish_common.exit.i ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.al = load i64, ptr %i.b, align 8, !range !21, !alias.scope !22, !noalias !25, !noundef !13
  %i.am = sub i64 %i.al, %i.h
  %i.an = icmp ugt i64 %.pn14.i, %i.am
  br i1 %i.an, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5UXtnEuoeIl_11fish_common.exit.thread.i.i.i, label %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i, !prof !28

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5UXtnEuoeIl_11fish_common.exit.thread.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.h, i64 noundef range(i64 0, 5) %.pn14.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc3 unwind label %.loopexit

.noexc3:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5UXtnEuoeIl_11fish_common.exit.thread.i.i.i
  %i.ao = load i64, ptr %i.d, align 8, !alias.scope !29, !noalias !25, !noundef !13
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !29, !noalias !25
  br label %_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i

_RNCINvCskr4qsHYS30i_15fish_widestring19wcs2bytes_appendingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE0Cs5UXtnEuoeIl_11fish_common.exit.i: ; preds = %.noexc3, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  %i.ap = phi ptr [ %.pre, %.noexc3 ], [ %i.g, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i ] ; 2 uses
  %.sink30.i = phi i64 [ %i.ao, %.noexc3 ], [ %i.h, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.sink30.i, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink30.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0.i, i64 range(i64 0, 5) %.pn14.i, i1 false), !noalias !30
  %i.as = add nuw i64 %.sink30.i, %.pn14.i        ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !29, !noalias !25
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
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !31
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
  br i1 %i.b, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !34, !noundef !13 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !34, !noundef !13
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
  %i.v = load i8, ptr %i.l, align 1, !noalias !34, !noundef !13
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
  %i.af = load i8, ptr %i.u, align 1, !noalias !34, !noundef !13
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !48, !noundef !13
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !48, !noundef !13
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.020 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.018 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.020, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !49, !noundef !13 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bo = icmp ne ptr %.sroa.4.020, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !49, !noundef !13 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.020, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !49, !noundef !13 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit17.i.i.i.i.i ]
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.020, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !49, !noundef !13
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5UXtnEuoeIl_11fish_common.exit19.i.i.i.i.i ]
  %i.cq = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cr = and i8 %i.bq, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cv)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cw, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !63, !noundef !13
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !63, !noundef !13
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.020, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5UXtnEuoeIl_11fish_common.exit.i.i.i6, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.020 to i64
  %i.dp = sub i64 %.sroa.14.018, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i, %bb.t, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit, %bb.u
  %.sroa.0.045 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5UXtnEuoeIl_11fish_common.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5UXtnEuoeIl_11fish_common.exit.i.i ] ; 2 uses
end_hunk_0
