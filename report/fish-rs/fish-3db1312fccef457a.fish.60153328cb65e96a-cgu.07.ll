Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish6expand22expand_escape_variable:bb.a

bb.b:                                             ; preds = %.lr.ph49, %bb.u
  %.sroa.0.048 = phi ptr [ %i.j, %.lr.ph49 ], [ %i.r, %bb.u ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 24 ; 2 uses
  %i.s = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !10 ; 2 uses
  %i.t = icmp ult i64 %i.s, 2305843009213693952
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit, label %bb.c

._crit_edge:                                      ; preds = %bb.u, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.c
  %i.v = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1966, !noundef !10 ; 3 uses
  %i.w = load i64, ptr %i.f, align 8, !range !14, !alias.scope !1966, !noundef !10
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #27
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i unwind label %.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.d, %.noexc
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1966, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  store i32 32, ptr %i.z, align 4
  %i.aa = add i64 %i.v, 1                         ; 2 uses
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1966
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.b
  %i.ab = phi i64 [ %i.aa, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i ], [ 0, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 4 uses
  br i1 %.not, label %bb.e, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.s, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.q ], [ %i.db, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit36, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit39, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %bb.aa unwind label %bb.v

.loopexit:                                        ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i, %.noexc22
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.d
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, %bb.c, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.w, %bb.z
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit
  %i.ag = and i64 %i.af, 2305843009213693936      ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag ; 2 uses
  %.not.i87 = icmp eq i64 %i.ag, 0
  br i1 %.not.i87, label %._crit_edge90, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i89, i64 64
  %i.aj = add nsw i64 %.sroa.5.0.i88, -16         ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %._crit_edge90, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i

._crit_edge90:                                    ; preds = %bb.f, %bb.e
  %i.ak = shl i64 %i.af, 2
  %.idx95 = and i64 %i.ak, 60                     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx95
  %.not.not.not.i.not.not.i91 = icmp samesign eq i64 %.idx95, 0
  br i1 %.not.not.not.i.not.not.i91, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %.lr.ph93

bb.g:                                             ; preds = %.lr.ph93
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.not.not.i.not.not.i, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %.lr.ph93

.lr.ph93:                                         ; preds = %._crit_edge90, %bb.g
  %i.an = phi ptr [ %i.am, %bb.g ], [ %i.ah, %._crit_edge90 ] ; 2 uses
  %.val2.i.i = load i32, ptr %i.an, align 4, !range !16, !alias.scope !1967, !noalias !1968, !noundef !10
  %i.ao = icmp eq i32 %.val2.i.i, 32
  br i1 %i.ao, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread, label %bb.g

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e, %bb.f
  %.sroa.0.05.i89 = phi ptr [ %i.ai, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.5.0.i88 = phi i64 [ %i.aj, %bb.f ], [ %i.ag, %bb.e ]
  %i.ap = load <16 x i32>, ptr %.sroa.0.05.i89, align 4, !alias.scope !1967, !noalias !1969
  %i.aq = icmp eq <16 x i32> %i.ap, splat (i32 32)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not96 = icmp eq i16 %i.ar, 0
  br i1 %.not96, label %bb.f, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.noexc23, %._crit_edge90, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !10
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.at, i64 noundef %i.av)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i, %.lr.ph93, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %.idx50 = shl nuw nsw i64 %i.af, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx50
  %.not.not.not.i.not.i47 = icmp eq i64 %i.af, 0
  br i1 %.not.not.not.i.not.i47, label %_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread, %.noexc11.backedge
  %i.az = phi ptr [ %i.be, %.noexc11.backedge ], [ %i.ad, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread ] ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !1970, !noalias !1971, !noundef !10 ; 11 uses
  %i.bb = xor i32 %i.ba, 55296
  %i.bc = add i32 %i.bb, -1114112
  %i.bd = icmp ult i32 %i.bc, -1112064
  br i1 %i.bd, label %.split.i.i.i, label %bb.h

.split.i.i.i:                                     ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1972
  store i32 %i.ba, ptr %i.d, align 4, !noalias !1972
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1481, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2092) #31
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.split.i.i.i
  unreachable

bb.h:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bf = icmp ult i32 %i.ba, 1114112
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp samesign ult i32 %i.ba, 128
  br i1 %i.bg, label %.lr.ph.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1973
  store i32 0, ptr %i.c, align 4, !noalias !1973
  %i.bh = icmp samesign ult i32 %i.ba, 2048
  %i.bi = trunc i32 %i.ba to i8
  %i.bj = and i8 %i.bi, 63
  %i.bk = or disjoint i8 %i.bj, -128              ; 3 uses
  %i.bl = lshr i32 %i.ba, 6
  %i.bm = trunc i32 %i.bl to i8                   ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128              ; 2 uses
  %i.bp = lshr i32 %i.ba, 12
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = lshr i32 %i.ba, 18
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = or disjoint i8 %i.bu, -16
  br i1 %i.bh, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.bw = or disjoint i8 %i.bm, -64
  store i8 %i.bw, ptr %i.c, align 4, !alias.scope !1974, !noalias !1973
  store i8 %i.bk, ptr %i.n, align 1, !alias.scope !1974, !noalias !1973
  br label %.loopexit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bx = icmp samesign ult i32 %i.ba, 65536
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = or disjoint i8 %i.bq, -32
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  store i8 %i.bk, ptr %i.m, align 1, !alias.scope !1974, !noalias !1973
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sink6.i = phi i8 [ %i.by, %bb.k ], [ %i.bv, %bb.l ] ; 5 uses
  %.sink5.i = phi i8 [ %i.bo, %bb.k ], [ %i.bs, %bb.l ]
  %.sink.i = phi i8 [ %i.bk, %bb.k ], [ %i.bo, %bb.l ]
  %.sroa.0.05.i.i = phi i64 [ 3, %bb.k ], [ 4, %bb.l ] ; 9 uses
  store i8 %.sink6.i, ptr %i.c, align 4, !alias.scope !1974, !noalias !1973
  store i8 %.sink5.i, ptr %i.n, align 1, !alias.scope !1974, !noalias !1973
  store i8 %.sink.i, ptr %i.o, align 2, !alias.scope !1974, !noalias !1973
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  %2 = add nsw i64 %.sroa.0.05.i.i, -1            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !1978, !noalias !1979, !noundef !10
  %.not.i.not.i.i.i.i = icmp eq i8 %i.ca, %.sink6.i
  br i1 %.not.i.not.i.i.i.i, label %3, label %.loopexit.i.i.i

3:                                                ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i
  %.not.i.i21 = icmp eq i64 %2, 0
  br i1 %.not.i.i21, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.1

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.1: ; preds = %3
  %4 = add nsw i64 %.sroa.0.05.i.i, -2            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %4
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !1978, !noalias !1979, !noundef !10
  %.not.i.not.i.i.i.i.1 = icmp eq i8 %i.cc, %.sink6.i
  br i1 %.not.i.not.i.i.i.i.1, label %5, label %.loopexit.i.i.i

5:                                                ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.1
  %.not.i.i21.1 = icmp eq i64 %4, 0
  br i1 %.not.i.i21.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.2

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.2: ; preds = %5
  %i.cd = add nsw i64 %.sroa.0.05.i.i, -3         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !1978, !noalias !1979, !noundef !10
  %.not.i.not.i.i.i.i.2 = icmp eq i8 %i.cf, %.sink6.i
  br i1 %.not.i.not.i.i.i.i.2, label %bb.m, label %.loopexit.i.i.i

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.2
  %.not.i.i21.2 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i21.2, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.3

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.3: ; preds = %bb.m
  %i.cg = getelementptr i8, ptr %i.c, i64 %.sroa.0.05.i.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !1978, !noalias !1979, !noundef !10
  %.not.i.not.i.i.i.i.3 = icmp eq i8 %i.ci, %.sink6.i
  br i1 %.not.i.not.i.i.i.i.3, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.2, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.3, %.thread.i
  %.sroa.0.05.i2.i = phi i64 [ 2, %.thread.i ], [ %.sroa.0.05.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.3 ], [ %.sroa.0.05.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.2 ], [ %.sroa.0.05.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.1 ], [ %.sroa.0.05.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i ] ; 3 uses
  %bcmp.i.i.us22.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) @63, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i2.i), !alias.scope !1980, !noalias !1981
  %i.cj = icmp eq i32 %bcmp.i.i.us22.i.i.i.i, 0
  br i1 %i.cj, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread, label %.split.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %.loopexit.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.i
  %i.ck = phi i64 [ %i.cn, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.i ], [ 4, %.loopexit.i.i.i ]
  %.pn.i.i.i94 = phi ptr [ %i.cl, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.i ], [ @63, %.loopexit.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn.i.i.i94, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cl, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i2.i), !alias.scope !1980, !noalias !1981
  %i.cm = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0
  br i1 %i.cm, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.i: ; preds = %.split.us.i.i.i.i
  %i.cn = add nsw i64 %i.ck, -1                   ; 2 uses
  %.not27.i.i.not.i.not.i = icmp samesign ugt i64 %.sroa.0.05.i2.i, %i.cn
  br i1 %.not27.i.i.not.i.not.i, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i, label %.split.us.i.i.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.3, %bb.m, %5, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1982
  invoke void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef range(i64 5, 12) 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i.i)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i
  invoke fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #33
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %.noexc22
  %i.co = load i64, ptr %i.b, align 8, !range !18, !noalias !1982, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1982
  %i.cp = trunc nuw i64 %i.co to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1973
  br i1 %i.cp, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %.noexc11.backedge

.noexc11.backedge:                                ; preds = %.lr.ph.i.i.i, %.noexc23, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i
  %.not.not.not.i.not.i = icmp eq ptr %i.be, %i.ay
  br i1 %.not.not.not.i.not.i, label %_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread.loopexit, label %.lr.ph

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread: ; preds = %.loopexit.i.i.i, %.split.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1973
  br label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1973
  br label %.noexc11.backedge

.lr.ph.i.i.i:                                     ; preds = %bb.h
  switch i32 %i.ba, label %.noexc11.backedge [
    i32 10, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
    i32 9, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
    i32 13, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
    i32 8, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
    i32 27, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  ]

_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread.loopexit: ; preds = %.noexc11.backedge
  %.pre63 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1983
  br label %_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread

_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread: ; preds = %_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread.loopexit, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread
  %i.cq = phi i64 [ %.pre63, %_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread.loopexit ], [ %i.ab, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread ] ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !range !14, !alias.scope !1983, !noundef !10
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.n, label %bb.w

bb.n:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #27
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  %.val7 = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10
  %.val8 = load i64, ptr %i.q, align 8, !noundef !10 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef range(i64 0, 4611686018427387904) %.val8)
          to label %.noexc13 unwind label %bb.q

.noexc13:                                         ; preds = %bb.o
  %i.ct = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1984, !noundef !10 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952
  call void @llvm.assume(i1 %i.cu)
  %.not.i.i = icmp eq i64 %.val8, 0
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.cv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1984, !nonnull !10, !noundef !10
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ct
  %i.cx = shl nuw nsw i64 %.val8, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr nonnull readonly align 4 %.val7, i64 %i.cx, i1 false)
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1984
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #28
          to label %.body unwind label %bb.v

bb.r:                                             ; preds = %bb.p, %.noexc13
  %i.cz = phi i64 [ %.pre.i.i, %bb.p ], [ %i.ct, %.noexc13 ]
  %i.da = add i64 %i.cz, %.val8
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1984
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.u:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit20, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.dd = icmp eq ptr %i.r, %i.k
  br i1 %i.dd, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.q, %.body
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.w:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish6expand11is_quotable.exit.thread, %bb.n
  %i.df = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1983, !nonnull !10, !noundef !10
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.cq
  store i32 39, ptr %i.dg, align 4
  %i.dh = add i64 %i.cq, 1
  store i64 %i.dh, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1983
  %.sroa.0.0.val = load ptr, ptr %i.aw, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.val6 = load i64, ptr %i.ax, align 8, !noundef !10 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef range(i64 0, 4611686018427387904) %.sroa.0.0.val6)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.w
  %i.di = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1985, !noundef !10 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 2305843009213693952
  call void @llvm.assume(i1 %i.dj)
  %.not.i.i15 = icmp eq i64 %.sroa.0.0.val6, 0
  br i1 %.not.i.i15, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc17
  %i.dk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1985, !nonnull !10, !noundef !10
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.di
  %i.dm = shl nuw nsw i64 %.sroa.0.0.val6, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr nonnull readonly align 4 %.sroa.0.0.val, i64 %i.dm, i1 false)
  %.pre.i.i16 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1985
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc17
  %i.dn = phi i64 [ %.pre.i.i16, %bb.x ], [ %i.di, %.noexc17 ]
  %i.do = add i64 %i.dn, %.sroa.0.0.val6          ; 4 uses
  store i64 %i.do, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1985
  %i.dp = load i64, ptr %i.f, align 8, !range !14, !alias.scope !1986, !noundef !10
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.z, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit20

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #27
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit20: ; preds = %bb.z, %bb.y
  %i.dr = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1986, !nonnull !10, !noundef !10
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.do
  store i32 39, ptr %i.ds, align 4
  %i.dt = add i64 %i.do, 1
  store i64 %i.dt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1986
  br label %bb.u

bb.aa:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish6expand23get_home_directory_name(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 4
  switch i32 %.val, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit [
    i32 64976, label %.loopexit
    i32 126, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1786) #31
  unreachable

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit: ; preds = %.preheader.preheader
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1787, i64 noundef 75, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1788) #31
  unreachable

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.preheader
  %.idx16 = shl nuw nsw i64 %1, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvNtCs8frGy5WneL6_4fish6expand23get_home_directory_name0E0B1n_.exit.i
  %i.c = phi ptr [ %i.e, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvNtCs8frGy5WneL6_4fish6expand23get_home_directory_name0E0B1n_.exit.i ], [ %0, %.loopexit ] ; 2 uses
  %i.d = phi i64 [ %i.l, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvNtCs8frGy5WneL6_4fish6expand23get_home_directory_name0E0B1n_.exit.i ], [ 0, %.loopexit ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.c, align 4, !noalias !1992, !noundef !10 ; 4 uses
  %i.g = xor i32 %i.f, 55296
  %i.h = add i32 %i.g, -1114112
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish:bb.a
  br label %_RNvXs2S_NtCslLGyqsphxMB_10widestring9utfstringNtNtB8_6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_owned.exit

_RNvXs2S_NtCslLGyqsphxMB_10widestring9utfstringNtNtB8_6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_owned.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i, %bb.d
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs2S_NtCslLGyqsphxMB_10widestring9utfstringNtNtB8_6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_owned.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowShENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !20, !noundef !10
  %.not = icmp eq i64 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs7_NtCs1xwejQucwHj_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs8frGy5WneL6_4fish8builtins6printfdNtB5_21RawStringToScalarType25raw_string_to_scalar_type(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %3, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = load i32, ptr %3, align 4, !range !16, !noundef !10
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  call void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod12wcstod_innerNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.e = load i8, ptr %0, align 8, !range !13, !noundef !10
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BX_5count0ECs8frGy5WneL6_4fish.exit, %bb.a
  store i64 0, ptr %i.b, align 8
  call void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod12wcstod_innerNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 46, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.g = load i8, ptr %0, align 8, !range !13, !noundef !10
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BX_5count0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.k = add nsw i64 %.idx, -4
  %i.l = lshr exact i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i
  %.sroa.0.0512.i = phi ptr [ %i.r, %_RNCNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %i.n = load i32, ptr %.sroa.0.0512.i, align 4, !noalias !3146, !noundef !10 ; 3 uses
  %i.o = xor i32 %i.n, 55296
  %i.p = add i32 %i.o, -1114112
  %i.q = icmp ult i32 %i.p, -1112064
  br i1 %i.q, label %.split.i.i, label %_RNCNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i

.split.i.i:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3146
  store i32 %i.n, ptr %i.a, align 4, !noalias !3146
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1481, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2092) #31, !noalias !3146
  unreachable

_RNCNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i: ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i, i64 4 ; 2 uses
  %i.s = icmp ult i32 %i.n, 1114112
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq ptr %i.r, %i.d
  br i1 %i.t, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BX_5count0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BX_5count0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNCNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i, %bb.c
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.m, %_RNCNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i ]
  %i.u = icmp eq i64 %i.i, %.sroa.0.0.lcssa.i
  br i1 %i.u, label %.sink.split, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.b, align 8, !noundef !10
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BX_5count0ECs8frGy5WneL6_4fish.exit, %bb.d
  %.sink12 = phi i64 [ %i.v, %bb.d ], [ %i.i, %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BX_5count0ECs8frGy5WneL6_4fish.exit ]
  %i.w = call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sink12) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  store ptr %i.x, ptr %4, align 8, !captures !35
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish6expand16expand_variables0INtB7_5FnMutTRxEE8call_mutBU_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !10 ; 2 uses
  %i.a = icmp sgt i64 %.val, -1
  %..i = zext i1 %i.a to i64
  %i.b = insertvalue { i64, i64 } poison, i64 %..i, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.val, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef range(i32 0, 1114112) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 5, 12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 16 uses
  %i.d = icmp samesign ult i32 %0, 128
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.e = icmp samesign ult i32 %0, 2048
  %i.f = trunc i32 %0 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %0, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %0, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %0, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.t = or disjoint i8 %i.j, -64
  store i8 %i.t, ptr %i.c, align 4, !alias.scope !3169
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.u, align 1, !alias.scope !3169
  br label %.loopexit.i.i

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %0, 65536
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = or disjoint i8 %i.n, -32
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.h, ptr %i.x, align 1, !alias.scope !3169
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sink6 = phi i8 [ %i.w, %bb.d ], [ %i.s, %bb.e ] ; 5 uses
  %.sink5 = phi i8 [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  %.sink = phi i8 [ %i.h, %bb.d ], [ %i.l, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 9 uses
  store i8 %.sink6, ptr %i.c, align 4, !alias.scope !3169
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sink5, ptr %i.y, align 1, !alias.scope !3169
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %.sink, ptr %i.z, align 2, !alias.scope !3169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  %3 = add nsw i64 %.sroa.0.05.i, -1              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %3
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i = icmp eq i8 %i.ab, %.sink6
  br i1 %.not.i.not.i.i.i, label %4, label %.loopexit.i.i

4:                                                ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1: ; preds = %4
  %5 = add nsw i64 %.sroa.0.05.i, -2              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %5
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.ad, %.sink6
  br i1 %.not.i.not.i.i.i.1, label %6, label %.loopexit.i.i

6:                                                ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1
  %.not.i.1 = icmp eq i64 %5, 0
  br i1 %.not.i.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2: ; preds = %6
  %i.ae = add nsw i64 %.sroa.0.05.i, -3           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.ag, %.sink6
  br i1 %.not.i.not.i.i.i.2, label %bb.f, label %.loopexit.i.i

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2
  %.not.i.2 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.2, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3: ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.c, i64 %.sroa.0.05.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.aj, %.sink6
  br i1 %.not.i.not.i.i.i.3, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3, %.thread
  %.sroa.0.05.i2 = phi i64 [ 2, %.thread ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3 ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2 ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1 ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i ] ; 4 uses
  %bcmp.i.i.us22.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i2), !alias.scope !3175, !noalias !3176
  %i.ak = icmp eq i32 %bcmp.i.i.us22.i.i.i, 0
  br i1 %i.ak, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader: ; preds = %.loopexit.i.i
  %i.al = add nsw i64 %2, -1                      ; 2 uses
  %.not27.i.i.not.i.not12 = icmp ugt i64 %.sroa.0.05.i2, %i.al
  br i1 %.not27.i.i.not.i.not12, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader
  %i.am = phi i64 [ %i.ap, %.split.us.i.i.i ], [ %i.al, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ]
  %.pn.i.i13 = phi ptr [ %i.an, %.split.us.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.pn.i.i13, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.an, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i2), !alias.scope !3175, !noalias !3176
  %i.ao = icmp eq i32 %bcmp.i.i.us.i.i.i, 0       ; 2 uses
  %i.ap = add nsw i64 %i.am, -1                   ; 2 uses
  %.not27.i.i.not.i.not = icmp ugt i64 %.sroa.0.05.i2, %i.ap
  %or.cond = select i1 %i.ao, i1 true, i1 %.not27.i.i.not.i.not
  br i1 %or.cond, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3, %bb.f, %6, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3177
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 5, 12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #33
  %i.aq = load i64, ptr %i.b, align 8, !range !18, !noalias !3177, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3177
  %i.ar = trunc nuw i64 %i.aq to i1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader, %.loopexit.i.i, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  %.sroa.0.0.i = phi i1 [ %i.ar, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i ], [ true, %.loopexit.i.i ], [ false, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ], [ %i.ao, %.split.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %bb.a
  %i.as = trunc nuw nsw i32 %0 to i8
  br label %.lr.ph.i.i

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i
  %i.at = icmp samesign ult i64 %.sroa.04.011.i.i, %2
  tail call void @llvm.assume(i1 %i.at)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.g
  %.sroa.04.011.i.i = phi i64 [ %i.ax, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.011.i.i
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !3178, !noundef !10
  %i.aw = icmp eq i8 %i.av, %i.as
  br i1 %i.aw, label %.loopexit9.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ax = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %2
  br i1 %exitcond.not.i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit: ; preds = %bb.h, %.loopexit9.i.i, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.0.in = phi i1 [ %.sroa.0.0.i, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit ], [ true, %.loopexit9.i.i ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !3182, !noalias !3183, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3182, !noalias !3183, !noundef !10 ; 3 uses
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3184
  invoke void @_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1c_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.h)
          to label %bb.d unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBQ_5alloc6GlobalEEB2A_(ptr nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.j, %bb.g, %bb.k, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.i, %bb.c ], [ %i.ae, %bb.g ], [ %i.ao, %bb.j ], [ %i.ae, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBQ_5alloc6GlobalEEB2A_(ptr nonnull %0) #28
          to label %bb.n unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !noalias !3184, !noundef !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !3184, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !3184, !noundef !10 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noalias !3184, !noundef !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3184
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3184, !nonnull !10, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.j ; 2 uses
  %i.t = sub i64 %i.l, %i.j                       ; 5 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %i.v = sub i64 %i.p, %i.n                       ; 3 uses
  %i.w = add i64 %i.t, %i.g
  store i64 %i.w, ptr %i.f, align 8
  %i.x = sub i64 %i.c, %i.t
  store i64 %i.x, ptr %i.b, align 8
  %i.y = icmp eq i64 %i.l, %i.j
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.t
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i20 = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.sroa.0.0.i20
  %i.ab = add nuw nsw i64 %.sroa.0.0.i20, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aa)
          to label %bb.e unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph22
  %i.ac = add i64 %.sroa.0.1.i21, 1               ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.t
  br i1 %i.ad, label %.body, label %.lr.ph22

bb.g:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.t
  br i1 %i.af, label %.body, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i21 = phi i64 [ %i.ac, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.sroa.0.1.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ag) #28
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph22
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit: ; preds = %bb.e, %bb.d
  store i64 0, ptr %i.b, align 8
  %i.ai = icmp eq i64 %i.p, %i.n
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6, label %.lr.ph24

bb.i:                                             ; preds = %.lr.ph24
  %i.aj = icmp eq i64 %i.al, %i.v
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6, label %.lr.ph24

.lr.ph24:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, %bb.i
  %.sroa.0.0.i223 = phi i64 [ %i.al, %bb.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.sroa.0.0.i223
  %i.al = add nuw nsw i64 %.sroa.0.0.i223, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.i unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph26
  %i.am = add i64 %.sroa.0.1.i325, 1              ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.v
  br i1 %i.an, label %.body, label %.lr.ph26

bb.k:                                             ; preds = %.lr.ph24
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %i.al, %i.v
  br i1 %i.ap, label %.body, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.k, %bb.j
  %.sroa.0.1.i325 = phi i64 [ %i.am, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.sroa.0.1.i325
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aq) #28
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %.lr.ph26
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !27, !noundef !10
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2082, i64 noundef 15)
  br label %bb.h

end_hunk_1
