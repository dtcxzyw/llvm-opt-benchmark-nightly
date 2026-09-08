Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCs9gmjTwvRRSu_10typst_html:bb.a
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !noundef !57 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !19897, !noalias !19898, !noundef !57 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB6_7Display3fmtCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !63, !noundef !57 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !alias.scope !19904, !noalias !19905, !noundef !57 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.c, -1                ; 2 uses
  %i.d = and i8 %i.c, 127
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !19904, !noalias !19905, !nonnull !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !19904, !noalias !19905
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.e
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.a
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !63, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19909)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !19909, !noalias !19910, !nonnull !57, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !19909, !noalias !19910, !noundef !57
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !19909
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1r_NtNtCsdaEETE4DqmE_13typst_library11foundations3strcNtNtB8_4cast7Reflect5input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvNvXso_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB7_3StrNtNtB9_2ty10NativeType4data4DATA, ptr %i.a, align 8
  store i64 34, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @_RNvXs1r_NtNtCsdaEETE4DqmE_13typst_library11foundations3strcNtNtB8_4cast7Reflect8castable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #27 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !67, !noundef !57 ; 3 uses
  %i.b = icmp ne i64 %i.a, 30
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ugt i64 %i.a, 1
  %i.d = add nsw i64 %i.a, -15
  %i.e = and i64 %i.d, -3
  %switch.selectcmp1 = icmp eq i64 %i.e, 0
  %switch.selectcmp = select i1 %i.c, i1 %switch.selectcmp1, i1 false
  ret i1 %switch.selectcmp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !19913, !noundef !57 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !19913, !nonnull !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !19913
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef range(i32 0, 1114112) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 18 uses
  %i.e = icmp samesign ult i32 %0, 128
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.f = icmp samesign ult i32 %0, 2048
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 4 uses
  %i.j = lshr i32 %0, 6
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128                ; 2 uses
  %i.n = lshr i32 %0, 12
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  %i.r = lshr i32 %0, 18
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or disjoint i8 %i.s, -16
  br i1 %i.f, label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 65536
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = or disjoint i8 %i.o, -32
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.i, ptr %i.w, align 1, !alias.scope !19942
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.d, %bb.e
  %i.x = phi i8 [ %i.v, %bb.d ], [ %i.t, %bb.e ]  ; 6 uses
  %.sink19 = phi i8 [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  %.sink = phi i8 [ %i.i, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 11 uses
  store i8 %i.x, ptr %i.d, align 4, !alias.scope !19942
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sink19, ptr %i.y, align 1, !alias.scope !19942
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %.sink, ptr %i.z, align 2, !alias.scope !19942
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19944)
  %i.aa = icmp ult i64 %.sroa.0.05.i, %2
  br i1 %i.aa, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i, label %bb.f

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread: ; preds = %bb.b
  %i.ab = or disjoint i8 %i.k, -64                ; 2 uses
  store i8 %i.ab, ptr %i.d, align 4, !alias.scope !19942
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.i, ptr %i.ac, align 1, !alias.scope !19942
  %i.ad = icmp ugt i64 %2, 2
  br i1 %i.ad, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %.sroa.0.05.i6 = phi i64 [ 2, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread ], [ %.sroa.0.05.i, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit ]
  %i.ae = icmp eq i64 %.sroa.0.05.i6, %2
  br i1 %i.ae, label %bb.q, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19946)
  %i.af = add nsw i64 %.sroa.0.05.i, -1
  %i.ag = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !19947, !noalias !19948, !noundef !57 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ai, %i.x
  br i1 %.not.i.not.i.i.i, label %.preheader96.split.i.i, label %bb.g

.preheader96.split.i.i:                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.1

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.1: ; preds = %.preheader96.split.i.i
  %i.aj = add nsw i64 %.sroa.0.05.i, -2           ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !19947, !noalias !19948, !noundef !57 ; 2 uses
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.al, %i.x
  br i1 %.not.i.not.i.i.i.1, label %.preheader96.split.i.i.1, label %bb.g

.preheader96.split.i.i.1:                         ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.1
  %.not.i.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.2

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.2: ; preds = %.preheader96.split.i.i.1
  %i.am = add nsw i64 %.sroa.0.05.i, -3           ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !19947, !noalias !19948, !noundef !57 ; 2 uses
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.ao, %i.x
  br i1 %.not.i.not.i.i.i.2, label %.preheader96.split.i.i.2, label %bb.g

.preheader96.split.i.i.2:                         ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.2
  %.not.i.i.2 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.2, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.3

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.3: ; preds = %.preheader96.split.i.i.2
  %i.ap = add nsw i64 %.sroa.0.05.i, -4           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !19947, !noalias !19948, !noundef !57 ; 2 uses
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.ar, %i.x
  br i1 %.not.i.not.i.i.i.3, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.3, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.2, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %.lcssa51 = phi i64 [ %i.ag, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ %i.aj, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.1 ], [ %i.am, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.2 ], [ %i.ap, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.3 ]
  %.lcssa49 = phi i8 [ %i.ai, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ %i.al, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.1 ], [ %i.ao, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.2 ], [ %i.ar, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.3 ]
  %i.as = add nuw nsw i64 %.sroa.0.05.i, 15
  %i.at = icmp ult i64 %2, %i.as
  br i1 %i.at, label %.lr.ph.split.us.i.i.i, label %.thread92.i.i

.thread.i.i:                                      ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.thread
  %i.au = icmp ult i64 %2, 17
  br i1 %i.au, label %.lr.ph.split.us.i.i.i, label %.thread92.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.g
  %.sroa.0.05.i58 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 4 uses
  %bcmp.i.i.us22.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i58), !alias.scope !19949, !noalias !19950
  %i.av = icmp eq i32 %bcmp.i.i.us22.i.i.i, 0
  br i1 %i.av, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i.preheader

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i
  %i.aw = add i64 %2, -1                          ; 2 uses
  %.not27.i.i.i44 = icmp ugt i64 %.sroa.0.05.i58, %i.aw
  br i1 %.not27.i.i.i44, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i.preheader, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i
  %i.ax = phi i64 [ %i.ba, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i ], [ %i.aw, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i.preheader ]
  %.pn.i.i45 = phi ptr [ %i.ay, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn.i.i45, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ay, ptr noundef nonnull readonly dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i58), !alias.scope !19949, !noalias !19950
  %i.az = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.az, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i: ; preds = %.split.us.i.i.i
  %i.ba = add i64 %i.ax, -1                       ; 2 uses
  %.not27.i.i.i = icmp ugt i64 %.sroa.0.05.i58, %i.ba
  br i1 %.not27.i.i.i, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.thread92.i.i:                                    ; preds = %bb.g, %.thread.i.i
  %.sink39 = phi i8 [ %i.ab, %.thread.i.i ], [ %i.x, %bb.g ]
  %i.bb = phi i64 [ 1, %.thread.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.sroa.0.05.i510 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 2 uses
  %i.bc = phi i8 [ %i.i, %.thread.i.i ], [ %.lcssa49, %bb.g ]
  %storemerge9194.i.i = phi i64 [ 1, %.thread.i.i ], [ %.lcssa51, %bb.g ] ; 6 uses
  %i.bd = insertelement <16 x i8> poison, i8 %.sink39, i64 0
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bf = insertelement <16 x i8> poison, i8 %i.bc, i64 0
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19949
  store ptr %1, ptr %i.a, align 8, !noalias !19949
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.bi, align 8, !noalias !19949
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !19949
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bb, ptr %i.bk, align 8, !noalias !19949
  %i.bl = add nuw nsw i64 %.sroa.0.05.i510, 63    ; 2 uses
  %.not110.i.i = icmp ult i64 %i.bl, %2
  br i1 %.not110.i.i, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.k, %.thread92.i.i
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %.thread92.i.i ], [ %.sroa.014.2.3.i.i, %bb.k ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %.thread92.i.i ], [ %i.dh, %bb.k ] ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.0.05.i510, 15    ; 2 uses
  %i.bn = add i64 %.sroa.06.0.lcssa.i.i, %i.bm
  %i.bo = icmp uge i64 %i.bn, %2
  %i.bp = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3105.i.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond3105.i.i, label %._crit_edge.i.i, label %.lr.ph107.i.i

.lr.ph.i.i:                                       ; preds = %.thread92.i.i, %bb.k
  %.sroa.06.0103.i.i = phi i64 [ %i.dh, %bb.k ], [ 0, %.thread92.i.i ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0103.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !19951, !noalias !19952
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.i.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !19951, !noalias !19952
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.be
  %i.bt = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i, %i.bg
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !19951, !noalias !19952
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !19951, !noalias !19952
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.be
  %i.bz = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i, %i.bg
  %i.ca = and <16 x i1> %i.by, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.cc, align 1, !alias.scope !19951, !noalias !19952
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.cd, align 1, !alias.scope !19951, !noalias !19952
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.be
  %i.cf = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i, %i.bg
  %i.cg = and <16 x i1> %i.ce, %i.cf
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.ci, align 1, !alias.scope !19951, !noalias !19952
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.cj, align 1, !alias.scope !19951, !noalias !19952
  %i.ck = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.be
  %i.cl = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i, %i.bg
  %i.cm = and <16 x i1> %i.ck, %i.cl
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %i.co = icmp eq i16 %i.bv, 0
  br i1 %i.co, label %.preheader95.1.i.i, label %bb.l

.preheader95.1.i.i:                               ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.dm, %bb.l ] ; 3 uses
  %i.cp = icmp eq i16 %i.cb, 0
  br i1 %i.cp, label %.preheader95.2.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader95.1.i.i
  %i.cq = or disjoint i64 %.sroa.06.0103.i.i, 16
  %i.cr = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.cs = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cq, i16 noundef %i.cb, i1 noundef zeroext %i.cr) #52
  %i.ct = zext i1 %i.cs to i8
  %i.cu = or i8 %.sroa.014.2.i.i, %i.ct
  br label %.preheader95.2.i.i

.preheader95.2.i.i:                               ; preds = %bb.h, %.preheader95.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader95.1.i.i ], [ %i.cu, %bb.h ] ; 3 uses
  %i.cv = icmp eq i16 %i.ch, 0
  br i1 %i.cv, label %.preheader95.3.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader95.2.i.i
  %i.cw = or disjoint i64 %.sroa.06.0103.i.i, 32
  %i.cx = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.cy = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cw, i16 noundef %i.ch, i1 noundef zeroext %i.cx) #52
  %i.cz = zext i1 %i.cy to i8
  %i.da = or i8 %.sroa.014.2.1.i.i, %i.cz
  br label %.preheader95.3.i.i

.preheader95.3.i.i:                               ; preds = %bb.i, %.preheader95.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader95.2.i.i ], [ %i.da, %bb.i ] ; 3 uses
  %i.db = icmp eq i16 %i.cn, 0
  br i1 %i.db, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader95.3.i.i
  %i.dc = or disjoint i64 %.sroa.06.0103.i.i, 48
  %i.dd = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.de = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dc, i16 noundef %i.cn, i1 noundef zeroext %i.dd) #52
  %i.df = zext i1 %i.de to i8
  %i.dg = or i8 %.sroa.014.2.2.i.i, %i.df
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader95.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader95.3.i.i ], [ %i.dg, %bb.j ] ; 2 uses
  %i.dh = add i64 %.sroa.06.0103.i.i, 64          ; 3 uses
  %i.di = add i64 %i.dh, %i.bl
  %i.dj = icmp uge i64 %i.di, %2
  %i.dk = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.dl = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i.i, i16 noundef %i.bv, i1 noundef zeroext false) #52
  %i.dm = zext i1 %i.dl to i8
  br label %.preheader95.1.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %.preheader.i.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.014.4.i.i, %bb.m ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.bp, %.preheader.i.i ], [ %i.eg, %bb.m ]
  %i.dn = sub nuw i64 %2, %i.bb
  %i.do = add i64 %i.dn, -16                      ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do ; 2 uses
  %.sroa.0.0.copyload.i57.i.i = load <16 x i8>, ptr %i.dp, align 1, !alias.scope !19951, !noalias !19953
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i58.i.i = load <16 x i8>, ptr %i.dq, align 1, !alias.scope !19951, !noalias !19953
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i, %i.be
  %i.ds = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i, %i.bg
  %i.dt = and <16 x i1> %i.dr, %i.ds
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %i.dv = icmp eq i16 %i.du, 0
  br i1 %i.dv, label %bb.o, label %bb.p

.lr.ph107.i.i:                                    ; preds = %.preheader.i.i, %bb.m
  %.sroa.06.1106.i.i = phi i64 [ %i.ed, %bb.m ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.1106.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i = load <16 x i8>, ptr %i.dw, align 1, !alias.scope !19951, !noalias !19954
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i60.i.i = load <16 x i8>, ptr %i.dx, align 1, !alias.scope !19951, !noalias !19954
  %i.dy = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i, %i.be
  %i.dz = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i, %i.bg
  %i.ea = and <16 x i1> %i.dy, %i.dz
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %i.ec = icmp eq i16 %i.eb, 0
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %.lr.ph107.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph107.i.i ], [ %i.ei, %bb.n ] ; 2 uses
  %i.ed = add i64 %.sroa.06.1106.i.i, 16          ; 2 uses
  %i.ee = add i64 %i.ed, %i.bm
  %i.ef = icmp uge i64 %i.ee, %2
  %i.eg = trunc nuw i8 %.sroa.014.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.ef, %i.eg
  br i1 %or.cond3.i.i, label %._crit_edge.i.i, label %.lr.ph107.i.i

bb.n:                                             ; preds = %.lr.ph107.i.i
  %i.eh = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i.i, i16 noundef %i.eb, i1 noundef zeroext false) #52
  %i.ei = zext i1 %i.eh to i8
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %._crit_edge.i.i
  %.sroa.014.5.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.el, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19949
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ej = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.do, i16 noundef %i.du, i1 noundef zeroext %.lcssa.i.i) #52
  %i.ek = zext i1 %i.ej to i8
  %i.el = or i8 %.sroa.014.3.lcssa.i.i, %i.ek
  br label %bb.o

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.3, %.preheader96.split.i.i.2, %.preheader96.split.i.i.1, %.preheader96.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19955
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #52
  %i.em = load i64, ptr %i.c, align 8, !range !65, !noalias !19955, !noundef !57
  %i.en = trunc nuw nsw i64 %i.em to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19955
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.q:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.d, ptr noundef nonnull readonly dereferenceable(1) %1, i64 range(i64 1, 5) %2), !alias.scope !19955
  %i.eo = icmp eq i32 %bcmp.i, 0
  %i.ep = zext i1 %i.eo to i8
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i, %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i.preheader, %bb.f, %.lr.ph.split.us.i.i.i, %bb.o, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, %bb.q
  %.sroa.0.0.i = phi i8 [ 0, %bb.f ], [ %.sroa.014.5.i.i, %bb.o ], [ %i.ep, %bb.q ], [ %i.en, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i ], [ 1, %.lr.ph.split.us.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i.preheader ], [ 1, %.split.us.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9gmjTwvRRSu_10typst_html.exit.backedge.us.i.i.i ]
  %i.eq = trunc nuw i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs9gmjTwvRRSu_10typst_html.exit

bb.r:                                             ; preds = %bb.a
  %i.er = trunc nuw nsw i32 %0 to i8              ; 2 uses
  %i.es = icmp samesign ult i64 %2, 16
  br i1 %i.es, label %.preheader.i.i1, label %bb.s

.preheader.i.i1:                                  ; preds = %bb.r
  %.not.i.i2 = icmp eq i64 %2, 0
  br i1 %.not.i.i2, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs9gmjTwvRRSu_10typst_html.exit, label %.lr.ph.i.i3

bb.s:                                             ; preds = %bb.r
  %i.et = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) ; 2 uses
  %i.eu = extractvalue { i64, i64 } %i.et, 0
  %i.ev = extractvalue { i64, i64 } %i.et, 1
  %i.ew = trunc nuw i64 %i.eu to i1
  br i1 %i.ew, label %.loopexit9.i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs9gmjTwvRRSu_10typst_html.exit

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i3, %bb.s
  %.sroa.5.0.i.i = phi i64 [ %i.ev, %bb.s ], [ %.sroa.04.011.i.i, %.lr.ph.i.i3 ]
  %i.ex = icmp ult i64 %.sroa.5.0.i.i, %2
  tail call void @llvm.assume(i1 %i.ex)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs9gmjTwvRRSu_10typst_html.exit

.lr.ph.i.i3:                                      ; preds = %.preheader.i.i1, %bb.t
  %.sroa.04.011.i.i = phi i64 [ %i.fb, %bb.t ], [ 0, %.preheader.i.i1 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.011.i.i
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !19956, !noundef !57
  %i.fa = icmp eq i8 %i.ez, %i.er
  br i1 %i.fa, label %.loopexit9.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i3
  %i.fb = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fb, %2
  br i1 %exitcond.not.i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs9gmjTwvRRSu_10typst_html.exit, label %.lr.ph.i.i3

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.t, %.loopexit9.i.i, %bb.s, %.preheader.i.i1, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.0.in = phi i1 [ %i.eq, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit ], [ true, %.loopexit9.i.i ], [ false, %bb.s ], [ false, %.preheader.i.i1 ], [ false, %bb.t ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NvCs9gmjTwvRRSu_10typst_htmls_1__NtB7_9FrameElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element9Construct9construct(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19966
  call fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtB5_7content7ContentECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !noalias !19967
  %i.f = load i64, ptr %i.e, align 8, !range !65, !noalias !19966, !noundef !57
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !19966 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19966 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19966
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !19966 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19966
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtB5_7content7ContentECs9gmjTwvRRSu_10typst_html.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19966
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB2_4Args16missing_argument(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 4), !noalias !19967
  %i.l = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.d), !noalias !19967 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19966
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink2.i = phi ptr [ %i.m, %bb.d ], [ %i.i, %bb.b ]
  %.sink.i = phi i64 [ %i.n, %bb.d ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink2.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.p, align 8
  store ptr null, ptr %0, align 8
  br label %bb.l

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtB5_7content7ContentECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.c
  %i.q = inttoptr i64 %i.k to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19968
  store ptr %i.i, ptr %i.c, align 8, !noalias !19969
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !19969
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.613.0..sroa_idx, align 8, !noalias !19969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19968
  invoke void @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b)
          to label %bb.f unwind label %bb.j, !noalias !19968, !inline_history !19963

bb.f:                                             ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtB5_7content7ContentECs9gmjTwvRRSu_10typst_html.exit
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !19968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19968
  store i128 0, ptr %i.a, align 16, !noalias !19968
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.68.0..sroa_idx.i, align 16, !noalias !19968
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i128 0, ptr %.sroa.8.0..sroa_idx.i, align 16, !noalias !19968
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 1, ptr %.sroa.9.0..sroa_idx.i, align 16, !noalias !19968
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.i, ptr %i.r, align 16, !noalias !19969
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx11, align 8, !noalias !19969
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.613.0..sroa_idx14, align 16, !noalias !19969
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !19970, !inline_history !19963
  %i.s = tail call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !19970, !inline_history !19963 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html9FrameElemEB1o_.exit, !prof !60

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #54
          to label %.noexc.i unwind label %bb.h, !noalias !19968, !inline_history !19963

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtCs9gmjTwvRRSu_10typst_html9FrameElemEEB1K_(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %i.a) #49
          to label %.body.i unwind label %bb.i, !noalias !19968, !inline_history !19963

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !19968, !inline_history !19963
  unreachable

.body.i:                                          ; preds = %bb.j, %bb.h
  %eh.lpad-body17.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.w, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body17.i

bb.j:                                             ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtB5_7content7ContentECs9gmjTwvRRSu_10typst_html.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.k, !noalias !19968, !inline_history !19963

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !19968, !inline_history !19963
  unreachable

_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html9FrameElemEB1o_.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.s, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !19968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19968
  store ptr %i.s, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvNvXs0_NvCs9gmjTwvRRSu_10typst_htmls_1__NtB9_9FrameElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.520.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html9FrameElemEB1o_.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs9gmjTwvRRSu_10typst_html3dom12HtmlDocumentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBO_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.052.i.i = alloca [11 x i8], align 4      ; 4 uses
  %.sroa.5.i.i = alloca [6 x i8], align 1         ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_0
