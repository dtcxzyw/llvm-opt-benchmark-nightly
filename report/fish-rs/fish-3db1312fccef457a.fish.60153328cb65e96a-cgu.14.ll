Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMNtNtCs8frGy5WneL6_4fish8builtins6stringNtB2_10RegexError11print_error:bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body89 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.bg

.body89:                                          ; preds = %bb.bg, %bb.be, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit86
  %.pn43 = phi { ptr, i32 } [ %.pn41, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit86 ], [ %i.fi, %bb.bg ], [ %i.fg, %bb.be ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #29
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body89

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit88, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr null, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr null, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 0, ptr %i.fm, align 8
  call void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit93: ; preds = %bb.bi, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp147, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp ], [ %i.ft, %bb.bi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #29
          to label %.body98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc94.preheader, %bb.f
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit93

bb.bh:                                            ; preds = %bb.f
  %i.fn = extractvalue { ptr, i64 } %i.ap, 0
  %i.fo = extractvalue { ptr, i64 } %i.ap, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !8, !noundef !8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !8
  store i64 1, ptr %i.f, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.fq, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.fs, ptr %.sroa.525.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fn, i64 noundef %i.fo, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.f, i64 noundef 1)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %bb.bh
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.fu = load i8, ptr %i.h, align 8, !range !11, !alias.scope !816, !noundef !8
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.bk, label %.noexc94.preheader, !prof !9

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !817
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !range !28, !alias.scope !816, !noundef !8
  store i8 %i.fx, ptr %i.d, align 1, !noalias !817
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #28
          to label %.noexc unwind label %bb.bi

.noexc:                                           ; preds = %bb.bk
  unreachable

.noexc94.preheader:                               ; preds = %bb.bj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit95 unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit95: ; preds = %.noexc94.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fy = load i64, ptr %i.g, align 8, !range !14, !alias.scope !818, !noundef !8
  %i.fz = icmp eq i64 %i.fy, -1
  br i1 %i.fz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit101, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit95
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i97 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body98 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i97: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit101 unwind label %bb.bo

.body98:                                          ; preds = %bb.bo, %bb.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit93
  %.pn39 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit93 ], [ %i.gc, %bb.bo ], [ %i.ga, %bb.bm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #29
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i97
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body98

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit101: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit95, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr null, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 0, ptr %i.gi, align 8
  store ptr @113, ptr %i.gd, align 8
  store i64 6, ptr %i.ge, align 8
  store ptr %i.ae, ptr %i.gf, align 8
  store i64 %i.ag, ptr %i.gg, align 8
  call void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.ay
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs0_NtCs8frGy5WneL6_4fish10parse_treeNtB5_12ParsedSource17lineno_for_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !noundef !8
  %.not5 = icmp eq ptr %i.a, %0
  br i1 %.not5, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.c = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.b ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = icmp ugt i64 %1, %i.c
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %1, %i.c
  br i1 %i.f, label %bb.g, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.d
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre23 = load i64, ptr %.phi.trans.insert22, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load i64, ptr %i.g, align 8, !noundef !8
  %.not.i.i = icmp ugt i64 %1, %.val8
  br i1 %.not.i.i, label %bb.f, label %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #28
  unreachable

_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit: ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %i.c ; 4 uses
  %i.j = sub nuw i64 %1, %i.c
  %.idx.i = shl nuw nsw i64 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %i.l = shl nuw nsw i64 %1, 2
  %i.m = shl nuw nsw i64 %i.c, 2
  %i.n = add nsw i64 %i.l, -4
  %i.o = sub i64 %i.n, %i.m                       ; 2 uses
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.o, 12
  br i1 %min.iters.check32, label %.lr.ph.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit
  %n.vec34 = and i64 %i.q, 9223372036854775804    ; 3 uses
  %i.r = shl i64 %n.vec34, 2
  %i.s = getelementptr i8, ptr %i.i, i64 %i.r
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next42, %vector.body35 ] ; 2 uses
  %vec.phi37 = phi <2 x i64> [ zeroinitializer, %vector.ph33 ], [ %i.z, %vector.body35 ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph33 ], [ %i.aa, %vector.body35 ]
  %i.t = shl i64 %index36, 2
  %next.gep39 = getelementptr i8, ptr %i.i, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep39, i64 8
  %wide.load40 = load <2 x i32>, ptr %next.gep39, align 4, !alias.scope !827
  %wide.load41 = load <2 x i32>, ptr %i.u, align 4, !alias.scope !827
  %i.v = icmp eq <2 x i32> %wide.load40, splat (i32 10)
  %i.w = icmp eq <2 x i32> %wide.load41, splat (i32 10)
  %i.x = zext <2 x i1> %i.v to <2 x i64>
  %i.y = zext <2 x i1> %i.w to <2 x i64>
  %i.z = add <2 x i64> %vec.phi37, %i.x           ; 2 uses
  %i.aa = add <2 x i64> %vec.phi38, %i.y          ; 2 uses
  %index.next42 = add nuw i64 %index36, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.ab, label %middle.block43, label %vector.body35, !llvm.loop !821

middle.block43:                                   ; preds = %vector.body35
  %bin.rdx44 = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx44) ; 2 uses
  %cmp.n45 = icmp eq i64 %i.q, %n.vec34
  br i1 %cmp.n45, label %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit, %middle.block43
  %.sroa.0.05.i.ph = phi i64 [ 0, %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit ], [ %i.ac, %middle.block43 ]
  %.sroa.02.04.i.ph = phi ptr [ %i.i, %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit ], [ %i.s, %middle.block43 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.05.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.sroa.0.05.i.ph, %.lr.ph.i.preheader ]
  %.sroa.02.04.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.02.04.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 4 ; 2 uses
  %i.ae = load i32, ptr %.sroa.02.04.i, align 4, !range !27, !alias.scope !827, !noundef !8
  %i.af = icmp eq i32 %i.ae, 10
  %i.ag = zext i1 %i.af to i64
  %spec.select.i = add i64 %.sroa.0.05.i, %i.ag   ; 2 uses
  %i.ah = icmp eq ptr %i.ad, %i.k
  br i1 %i.ah, label %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit, label %.lr.ph.i, !llvm.loop !822

_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit: ; preds = %.lr.ph.i, %middle.block43
  %spec.select.i.lcssa = phi i64 [ %i.ac, %middle.block43 ], [ %spec.select.i, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8 ; 2 uses
  %i.ak = add i64 %i.aj, %spec.select.i.lcssa     ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.m, label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.am, align 8, !noundef !8
  %.not.i.i9 = icmp ugt i64 %i.c, %.val6
  br i1 %.not.i.i9, label %bb.h, label %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit11, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #28
  unreachable

_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit11: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %1 ; 4 uses
  %i.ap = sub nuw i64 %i.c, %1
  %.idx.i12 = shl nuw nsw i64 %i.ap, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i12
  %i.ar = shl nuw nsw i64 %i.c, 2
  %i.as = shl nuw nsw i64 %1, 2
  %i.at = add nsw i64 %i.ar, -4
  %i.au = sub i64 %i.at, %i.as                    ; 2 uses
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 12
  br i1 %min.iters.check, label %.lr.ph.i13.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit11
  %n.vec = and i64 %i.aw, 9223372036854775804     ; 3 uses
  %i.ax = shl i64 %n.vec, 2
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi29 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.az = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !828
  %wide.load30 = load <2 x i32>, ptr %i.ba, align 4, !alias.scope !828
  %i.bb = icmp eq <2 x i32> %wide.load, splat (i32 10)
  %i.bc = icmp eq <2 x i32> %wide.load30, splat (i32 10)
  %i.bd = zext <2 x i1> %i.bb to <2 x i64>
  %i.be = zext <2 x i1> %i.bc to <2 x i64>
  %i.bf = add <2 x i64> %vec.phi, %i.bd           ; 2 uses
  %i.bg = add <2 x i64> %vec.phi29, %i.be         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit18, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit11, %middle.block
  %.sroa.0.05.i14.ph = phi i64 [ 0, %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit11 ], [ %i.bi, %middle.block ]
  %.sroa.02.04.i15.ph = phi ptr [ %i.ao, %_RNvXs2o_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtB15_5range5RangejEE5indexCs8frGy5WneL6_4fish.exit11 ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader, %.lr.ph.i13
  %.sroa.0.05.i14 = phi i64 [ %spec.select.i16, %.lr.ph.i13 ], [ %.sroa.0.05.i14.ph, %.lr.ph.i13.preheader ]
  %.sroa.02.04.i15 = phi ptr [ %i.bj, %.lr.ph.i13 ], [ %.sroa.02.04.i15.ph, %.lr.ph.i13.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i15, i64 4 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.04.i15, align 4, !range !27, !alias.scope !828, !noundef !8
  %i.bl = icmp eq i32 %i.bk, 10
  %i.bm = zext i1 %i.bl to i64
  %spec.select.i16 = add i64 %.sroa.0.05.i14, %i.bm ; 2 uses
  %i.bn = icmp eq ptr %i.bj, %i.aq
  br i1 %i.bn, label %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit18, label %.lr.ph.i13, !llvm.loop !826

_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit18: ; preds = %.lr.ph.i13, %middle.block
  %spec.select.i16.lcssa = phi i64 [ %i.bi, %middle.block ], [ %spec.select.i16, %.lr.ph.i13 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !8 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %spec.select.i16.lcssa
  br i1 %i.bq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit18
  %i.br = sub nuw i64 %i.bp, %spec.select.i16.lcssa ; 2 uses
  store i64 %i.br, ptr %i.bo, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit18
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #28
  unreachable

bb.k:                                             ; preds = %._crit_edge21, %bb.i, %bb.l
  %i.bs = phi i64 [ %.pre23, %._crit_edge21 ], [ %i.br, %bb.i ], [ %i.ak, %bb.l ]
  store i64 %1, ptr %i.d, align 8
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.o, label %bb.n

bb.l:                                             ; preds = %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit
  store i64 %i.ak, ptr %i.ai, align 8
  br label %bb.k

bb.m:                                             ; preds = %_RNvCskeBJdk8gjxq_17fish_wcstringutil14count_newlines.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #28
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.bv = add nuw i32 %i.bt, 1
  ret i32 %i.bv

bb.o:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange18contains_inclusive(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %.not = icmp uge i64 %2, %i.a
  %i.b = sub nuw i64 %2, %i.a
  %i.c = zext i32 %1 to i64
  %i.d = icmp ule i64 %i.b, %i.c
  %.sroa.0.0 = select i1 %.not, i1 %i.d, i1 false
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 4294967296) i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end(i32 noundef %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i32 %1, %0                           ; 2 uses
  %i.b = icmp ult i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, !prof !9

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.c = zext i32 %i.a to i64
  ret i64 %i.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3new(i64 noundef %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = icmp ugt i64 %0, 4294967295
  %i.d = shl nuw i64 %0, 32
  %.sroa.06.0.insert.insert = select i1 %i.c, i64 513, i64 %i.d ; 2 uses
  %i.e = trunc i64 %.sroa.06.0.insert.insert to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit18, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !833
  store i8 2, ptr %i.a, align 1, !noalias !833
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #28
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit18: ; preds = %bb.a
  %i.f = icmp ugt i64 %1, 4294967295
  %i.g = shl nuw i64 %1, 32
  %.sroa.09.0.insert.insert = select i1 %i.f, i64 513, i64 %i.g ; 2 uses
  %i.h = trunc i64 %.sroa.09.0.insert.insert to i1
  br i1 %i.h, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, !prof !9

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !834
  store i8 2, ptr %i.b, align 1, !noalias !834
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #28
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit18
  %.sroa.6.0.extract.shift.i14 = lshr i64 %.sroa.06.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i15 = trunc nuw i64 %.sroa.6.0.extract.shift.i14 to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.09.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.i = insertvalue { i32, i32 } poison, i32 %.sroa.6.0.extract.trunc.i15, 0
  %i.j = insertvalue { i32, i32 } %i.i, i32 %.sroa.6.0.extract.trunc.i, 1
  ret { i32, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 4294967296) i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %0, i32 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit:
  %i.a = zext i32 %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 4294967296) i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange6length(i32 noundef %0, i32 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit:
  %i.a = zext i32 %1 to i64
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange7combine(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i32 %1, %0                           ; 2 uses
  %i.b = icmp ult i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #28
  unreachable

_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end.exit: ; preds = %bb.a
  %i.c = add i32 %3, %2                           ; 2 uses
  %i.d = icmp ult i32 %i.c, %2
  br i1 %i.d, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, !prof !9

bb.c:                                             ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #28
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end.exit
  %..i = tail call noundef i32 @llvm.umin.i32(i32 %2, i32 %0) ; 2 uses
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.c, i32 %i.a)
  %narrow = sub nuw i32 %i.e, %..i
  %i.f = insertvalue { i32, i32 } poison, i32 %..i, 0
end_hunk_0
