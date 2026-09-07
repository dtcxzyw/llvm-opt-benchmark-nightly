Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXs2_NtCs8frGy5WneL6_4fish3astNtB5_14TokenLeftBraceNtB5_6AsNode7as_nodeB7_:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs8frGy5WneL6_4fish3astNtB5_15TokenRightBraceNtB5_6AsNode7as_nodeB7_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @122, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs8frGy5WneL6_4fish3astNtB5_25ArgumentOrRedirectionListNtB5_6AsNode7as_nodeB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @110, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs8frGy5WneL6_4fish3astNtB5_7JobListNtB5_6AsNode7as_nodeB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @113, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs8frGy5WneL6_4fish3astNtB5_9ForHeaderNtB5_6AsNode7as_nodeB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @101, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs8frGy5WneL6_4fish3keyNtB5_3KeyNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  call void @_RNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.copyload)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.not.not.i.not.not.not17.not = icmp eq i64 %i.f, 0
  br i1 %.not.not.not.i.not.not.not17.not, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc4, %bb.a
  %i.h = phi ptr [ %i.i, %.noexc4 ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !noalias !2918, !noundef !12 ; 4 uses
  %i.k = xor i32 %i.j, 55296
  %i.l = add i32 %i.k, -1114112
  %i.m = icmp ult i32 %i.l, -1112064
  br i1 %i.m, label %.split.i.i, label %bb.b

.split.i.i:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2919
  store i32 %i.j, ptr %i.a, align 4, !noalias !2919
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @732) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.i.i
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp ult i32 %i.j, 1114112
  tail call void @llvm.assume(i1 %i.n)
  %i.o = invoke noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %i.j)
          to label %.noexc4 unwind label %.loopexit ; 2 uses

.noexc4:                                          ; preds = %bb.b
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.i, %i.g
  %or.cond = select i1 %i.o, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit, label %.lr.ph

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.split.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #48
          to label %common.resume unwind label %bb.f

_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit: ; preds = %.noexc4, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.o, %.noexc4 ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %lpad.phi, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.not.not.i.not.not.not.lcssa

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef range(i32 0, 1114112) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [104 x i8], align 8               ; 24 uses
  %i.c = alloca [4 x i8], align 4                 ; 18 uses
  %i.d = icmp samesign ult i32 %0, 128
  br i1 %i.d, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.e = icmp samesign ult i32 %0, 2048
  %i.f = trunc i32 %0 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 4 uses
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
  br i1 %i.e, label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %0, 65536
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i8 %i.n, -32
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.h, ptr %i.v, align 1, !alias.scope !2969
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.d, %bb.e
  %i.w = phi i8 [ %i.u, %bb.d ], [ %i.s, %bb.e ]  ; 6 uses
  %.sink31 = phi i8 [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  %.sink = phi i8 [ %i.h, %bb.d ], [ %i.l, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 10 uses
  store i8 %i.w, ptr %i.c, align 4, !alias.scope !2969
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sink31, ptr %i.x, align 1, !alias.scope !2969
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %.sink, ptr %i.y, align 2, !alias.scope !2969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.z = icmp samesign ult i64 %.sroa.0.05.i, %2
  br i1 %i.z, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i, label %bb.f

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread: ; preds = %bb.b
  %i.aa = or disjoint i8 %i.j, -64                ; 2 uses
  store i8 %i.aa, ptr %i.c, align 4, !alias.scope !2969
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.ab, align 1, !alias.scope !2969
  %i.ac = icmp samesign ugt i64 %2, 2
  br i1 %i.ac, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %.sroa.0.05.i4 = phi i64 [ 2, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread ], [ %.sroa.0.05.i, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit ]
  %i.ad = icmp eq i64 %.sroa.0.05.i4, %2
  br i1 %i.ad, label %bb.ao, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  %i.ae = add nsw i64 %.sroa.0.05.i, -1
  %i.af = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !2974, !noalias !2975, !noundef !12 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ah, %i.w
  br i1 %.not.i.not.i.i.i, label %.preheader.split.i.i, label %bb.g

.preheader.split.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1: ; preds = %.preheader.split.i.i
  %i.ai = add nsw i64 %.sroa.0.05.i, -2           ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !2974, !noalias !2975, !noundef !12 ; 2 uses
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.ak, %i.w
  br i1 %.not.i.not.i.i.i.1, label %.preheader.split.i.i.1, label %bb.g

.preheader.split.i.i.1:                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1
  %.not.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2: ; preds = %.preheader.split.i.i.1
  %i.al = add nsw i64 %.sroa.0.05.i, -3           ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !2974, !noalias !2975, !noundef !12 ; 2 uses
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.an, %i.w
  br i1 %.not.i.not.i.i.i.2, label %.preheader.split.i.i.2, label %bb.g

.preheader.split.i.i.2:                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2
  %.not.i.i.2 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.2, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3: ; preds = %.preheader.split.i.i.2
  %i.ao = add nsw i64 %.sroa.0.05.i, -4           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !2974, !noalias !2975, !noundef !12 ; 2 uses
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.aq, %i.w
  br i1 %.not.i.not.i.i.i.3, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i
  %.lcssa119 = phi i64 [ %i.af, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.ai, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1 ], [ %i.al, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2 ], [ %i.ao, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3 ]
  %.lcssa117 = phi i8 [ %i.ah, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.ak, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1 ], [ %i.an, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2 ], [ %i.aq, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3 ]
  %i.ar = add nuw nsw i64 %.sroa.0.05.i, 15       ; 2 uses
  %i.as = icmp samesign ult i64 %2, %i.ar
  br i1 %i.as, label %.lr.ph.split.us.i.i.i, label %.thread84.i.i

.thread.i.i:                                      ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread
  %i.at = icmp samesign ult i64 %2, 17
  br i1 %i.at, label %.lr.ph.split.us.i.i.i, label %.thread84.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.g
  %.sroa.0.05.i36 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 4 uses
  %bcmp.i.i.us22.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i36), !alias.scope !2976, !noalias !2977
  %i.au = icmp eq i32 %bcmp.i.i.us22.i.i.i, 0
  br i1 %i.au, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i
  %i.av = add nsw i64 %2, -1                      ; 2 uses
  %.not27.i.i.i103 = icmp ugt i64 %.sroa.0.05.i36, %i.av
  br i1 %.not27.i.i.i103, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i
  %i.aw = phi i64 [ %i.az, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i ], [ %i.av, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ]
  %.pn.i.i104 = phi ptr [ %i.ax, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn.i.i104, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ax, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i36), !alias.scope !2976, !noalias !2977
  %i.ay = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.ay, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i: ; preds = %.split.us.i.i.i
  %i.az = add nsw i64 %i.aw, -1                   ; 2 uses
  %.not27.i.i.i = icmp ugt i64 %.sroa.0.05.i36, %i.az
  br i1 %.not27.i.i.i, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.thread84.i.i:                                    ; preds = %bb.g, %.thread.i.i
  %.sink82 = phi i8 [ %i.aa, %.thread.i.i ], [ %i.w, %bb.g ]
  %i.ba = phi i64 [ 1, %.thread.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ 17, %.thread.i.i ], [ %i.ar, %bb.g ]
  %i.bb = phi i8 [ %i.h, %.thread.i.i ], [ %.lcssa117, %bb.g ]
  %storemerge8386.i.i = phi i64 [ 1, %.thread.i.i ], [ %.lcssa119, %bb.g ] ; 2 uses
  %i.bc = insertelement <16 x i8> poison, i8 %.sink82, i64 0
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.be = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.bf = shufflevector <16 x i8> %i.be, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2976
  store ptr %1, ptr %i.a, align 8, !noalias !2976
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.bh, align 8, !noalias !2976
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bg, ptr %i.bi, align 8, !noalias !2976
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ba, ptr %i.bj, align 8, !noalias !2976
  %.not92.i.i = icmp samesign ult i64 %.pre-phi.i.i, %2
  br i1 %.not92.i.i, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread84.i.i
  %.sroa.0.0.copyload.i57.i.i = load <16 x i8>, ptr %1, align 1, !alias.scope !2978, !noalias !2979
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %storemerge8386.i.i
  %.sroa.01.0.copyload.i58.i.i = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !2978, !noalias !2979
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i, %i.bd
  %i.bm = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i, %i.bf
  %i.bn = and <16 x i1> %i.bl, %i.bm
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %._crit_edge.loopexit.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.thread84.i.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ 0, %.thread84.i.i ], [ %.sroa.014.4.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ false, %.thread84.i.i ], [ %i.bz, %._crit_edge.loopexit.i.i ]
  %i.bq = sub nuw nsw i64 %2, %i.ba
  %i.br = add nsw i64 %i.bq, -16                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !2978, !noalias !2980
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %storemerge8386.i.i
  %.sroa.01.0.copyload.i.i.i = load <16 x i8>, ptr %i.bt, align 1, !alias.scope !2978, !noalias !2980
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.bd
  %i.bv = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i, %i.bf
  %i.bw = and <16 x i1> %i.bu, %i.bv
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %i.by = icmp eq i16 %i.bx, 0
  br i1 %i.by, label %bb.i, label %bb.j

._crit_edge.loopexit.i.i:                         ; preds = %bb.h, %.lr.ph.preheader.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph.preheader.i.i ], [ %i.cb, %bb.h ] ; 2 uses
  %i.bz = trunc nuw i8 %.sroa.014.4.i.i to i1
  br label %._crit_edge.i.i

bb.h:                                             ; preds = %.lr.ph.preheader.i.i
  %i.ca = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef 0, i16 noundef %i.bo, i1 noundef zeroext false) #52
  %i.cb = zext i1 %i.ca to i8
  br label %._crit_edge.loopexit.i.i

bb.i:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.014.5.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.ce, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2976
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cc = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.br, i16 noundef %i.bx, i1 noundef zeroext %.lcssa.i.i) #52
  %i.cd = zext i1 %i.cc to i8
  %i.ce = or i8 %.sroa.014.3.lcssa.i.i, %i.cd
  br label %bb.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3, %.preheader.split.i.i.2, %.preheader.split.i.i.1, %.preheader.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2981
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  %i.cf = load i64, ptr %i.b, align 8, !range !41, !alias.scope !2982, !noalias !2983, !noundef !12
  switch i64 %i.cf, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

.preheader.i.i:                                   ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ch = load i8, ptr %i.cg, align 2, !range !14, !alias.scope !2982, !noalias !2983
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !2982, !noalias !2983, !nonnull !12 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !2982, !noalias !2983 ; 14 uses
  br i1 %i.ci, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.preheader.i8.i

.lr.ph.preheader.i8.i:                            ; preds = %.preheader.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted206.i.i = load i8, ptr %i.cn, align 8, !alias.scope !2982, !noalias !2983 ; 2 uses
  %.promoted157.i.i = load i64, ptr %i.co, align 8, !alias.scope !2982, !noalias !2983 ; 12 uses
  %i.cp = trunc nuw i8 %.promoted206.i.i to i1
  %i.cq = icmp eq i64 %.promoted157.i.i, 0
  br i1 %i.cq, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.preheader.i8.i
  %.not.i.i.us.i.peel.i = icmp ult i64 %.promoted157.i.i, %i.cm
  br i1 %.not.i.i.us.i.peel.i, label %bb.l, label %.split.i.i.us.i.peel.i

.split.i.i.us.i.peel.i:                           ; preds = %bb.k
  %i.cr = icmp eq i64 %.promoted157.i.i, %i.cm
  br i1 %i.cr, label %bb.m, label %.split.us161.i.i

bb.l:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.promoted157.i.i
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !2984, !noalias !2985, !noundef !12
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %bb.m, label %.split.us161.i.i

bb.m:                                             ; preds = %bb.l, %.split.i.i.us.i.peel.i, %.lr.ph.preheader.i8.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.promoted157.i.i ; 4 uses
  %i.cw = icmp samesign eq i64 %.promoted157.i.i, %i.cm
  br i1 %i.cw, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = load i8, ptr %i.cv, align 1, !noalias !2986, !noundef !12 ; 5 uses
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %bb.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i: ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.da = and i8 %i.cx, 31
  %i.db = zext nneg i8 %i.da to i32               ; 3 uses
  %i.dc = add nuw nsw i64 %.promoted157.i.i, 1
  %i.dd = icmp samesign ne i64 %i.dc, %i.cm
  call void @llvm.assume(i1 %i.dd)
  %i.de = load i8, ptr %i.cz, align 1, !noalias !2986, !noundef !12
  %i.df = shl nuw nsw i32 %i.db, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32               ; 2 uses
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = icmp samesign ugt i8 %i.cx, -33
  br i1 %i.dj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i, label %bb.p

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.dl = add nuw nsw i64 %.promoted157.i.i, 2
  %i.dm = icmp samesign ne i64 %i.dl, %i.cm
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load i8, ptr %i.dk, align 1, !noalias !2986, !noundef !12
  %i.do = shl nuw nsw i32 %i.dh, 6
  %i.dp = and i8 %i.dn, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq            ; 2 uses
  %i.ds = shl nuw nsw i32 %i.db, 12
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %i.du = icmp samesign ugt i8 %i.cx, -17
  br i1 %i.du, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i, label %bb.p

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.dw = add nuw nsw i64 %.promoted157.i.i, 3
  %i.dx = icmp samesign ne i64 %i.dw, %i.cm
  call void @llvm.assume(i1 %i.dx)
  %i.dy = load i8, ptr %i.dv, align 1, !noalias !2986, !noundef !12
  %i.dz = shl nuw nsw i32 %i.db, 18
  %i.ea = and i32 %i.dz, 1835008
  %i.eb = shl nuw nsw i32 %i.dr, 6
  %i.ec = and i8 %i.dy, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.eb, %i.ed
  %i.ef = or disjoint i32 %i.ee, %i.ea
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eg = zext nneg i8 %i.cx to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.dt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i ], [ %i.ef, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i ], [ %i.di, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i ], [ %i.eg, %bb.o ] ; 4 uses
  %i.eh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.eh)
  br i1 %i.cp, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 128
  br i1 %i.ei, label %.lr.ph.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 2048
  br i1 %i.ej, label %.lr.ph.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 65536
  %..i.us.i.peel.i = select i1 %i.ek, i64 3, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.i.us.i.peel.i = phi i64 [ 2, %bb.r ], [ %..i.us.i.peel.i, %bb.s ], [ 1, %bb.q ]
  %i.el = add i64 %.sroa.01.0.i.us.i.peel.i, %.promoted157.i.i ; 11 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.us.i.i = icmp ult i64 %i.el, %i.cm
  br i1 %.not.i.i.us.i.i, label %bb.u, label %.split.i.i.us.i.i

.split.i.i.us.i.i:                                ; preds = %bb.t
  %i.en = icmp eq i64 %i.el, %i.cm
  br i1 %i.en, label %bb.v, label %.split.us161.i.i

bb.u:                                             ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.el
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !2984, !noalias !2987, !noundef !12
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.v, label %.split.us161.i.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.us.i.i, %.lr.ph.i.i
  %i.er = icmp samesign eq i64 %i.el, %i.cm
  br i1 %i.er, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.el
  %i.et = load i8, ptr %i.es, align 1, !noalias !2988, !noundef !12 ; 3 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.i: ; preds = %bb.w
  %i.ev = add nuw nsw i64 %i.el, 1
  %i.ew = icmp samesign ne i64 %i.ev, %i.cm
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ugt i8 %i.et, -33
  br i1 %i.ex, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.i
  %i.ey = add nuw nsw i64 %i.el, 2
  %i.ez = icmp samesign ne i64 %i.ey, %i.cm
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp samesign ugt i8 %i.et, -17
  br i1 %i.fa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.i
  %i.fb = add nuw nsw i64 %i.el, 3
  %i.fc = icmp samesign ne i64 %i.fb, %i.cm
  call void @llvm.assume(i1 %i.fc)
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

.split.us161.i.i:                                 ; preds = %bb.u, %.split.i.i.us.i.i, %bb.l, %.split.i.i.us.i.peel.i
  %.lcssa53.i = phi i64 [ %.promoted157.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted157.i.i, %bb.l ], [ %i.el, %.split.i.i.us.i.i ], [ %i.el, %bb.u ]
  call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cm, i64 noundef %.lcssa53.i, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #54, !noalias !2987
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  unreachable

bb.x:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !2982, !noalias !2983, !noundef !12 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !2982, !noalias !2983, !noundef !12 ; 3 uses
  %.not.i4.i = icmp ult i64 %i.fg, %i.fe
  br i1 %.not.i4.i, label %bb.z, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.y:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !2982, !noalias !2983, !noundef !12 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !2982, !noalias !2983, !nonnull !12, !noundef !12 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !2982, !noalias !2983, !noundef !12 ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !2982, !noalias !2983, !nonnull !12, !noundef !12 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !2982, !noalias !2983, !noundef !12 ; 12 uses
end_hunk_0
