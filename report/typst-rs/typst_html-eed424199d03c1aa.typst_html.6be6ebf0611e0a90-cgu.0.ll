Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs9gmjTwvRRSu_10typst_html
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEBP_(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyEBR_(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyEEB1g_(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB4_6string9EcoStringEEBQ_(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEEB1f_(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBQ_6styles6StylesEEECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB4_6string9EcoStringEECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_6string9EcoStringEEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowjECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecjEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowmECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %0) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecmEECs9gmjTwvRRSu_10typst_html(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #51
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 281) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4692)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !68, !alias.scope !4692, !noundef !53 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4692
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !4692
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 281) %4), !noalias !4692
  %i.h = load i64, ptr %i.a, align 8, !range !61, !noalias !4692, !noundef !53
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !111, !noalias !4692, !noundef !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4692
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #54
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !4692, !nonnull !53, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4692
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !4692
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !4692
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtCsloFShupyl5J_6comemo5inputNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtB3_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4732)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !4733, !noalias !4734
  %.pre5.i = load i64, ptr %i.c, align 8, !alias.scope !4733, !noalias !4734 ; 2 uses
  %.pre6.i = load i64, ptr %i.d, align 8, !alias.scope !4733, !noalias !4734
  %.promoted = load i64, ptr %i.e, align 8
  %.promoted26 = load i64, ptr %1, align 8
  %.promoted35 = load i64, ptr %i.f, align 8
  %.promoted44 = load i64, ptr %i.g, align 8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i, %bb.a
  %.promoted754 = phi i64 [ %.pre5.i, %bb.a ], [ %.promoted755, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ]
  %.promoted1649 = phi i64 [ %.promoted44, %bb.a ], [ %.promoted1650, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted1540 = phi i64 [ %.promoted35, %bb.a ], [ %.promoted1541, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %.promoted1031 = phi i64 [ %.promoted26, %bb.a ], [ %.promoted1032, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted922 = phi i64 [ %.promoted, %bb.a ], [ %.promoted923, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %i.h = phi i64 [ %.pre5.i, %bb.a ], [ %i.hm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 5 uses
  %i.i = phi i64 [ %.pre6.i, %bb.a ], [ %i.hn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ]
  %i.j = phi i64 [ %.pre.i, %bb.a ], [ %i.gn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ]
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.gk, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.k = load ptr, ptr %.tr.i, align 8, !noalias !4732, !nonnull !53, !align !107, !noundef !53 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !4732, !noundef !53 ; 4 uses
  %i.n = add i64 %i.j, 8                          ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !4733, !noalias !4734
  %i.o = shl i64 %i.h, 3                          ; 2 uses
  %i.p = and i64 %i.o, 56
  %i.q = shl i64 %i.m, %i.p
  %i.r = or i64 %i.q, %i.i                        ; 4 uses
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !4733, !noalias !4734
  %i.s = icmp ugt i64 %i.h, 8
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse.i
  %i.t = xor i64 %.promoted922, %i.r              ; 3 uses
  %i.u = add i64 %.promoted1540, %.promoted1031   ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1540, i64 %.promoted1540, i64 13)
  %i.w = xor i64 %i.v, %i.u                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.y = add i64 %.promoted1649, %i.t             ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.aa = xor i64 %i.y, %i.z                      ; 3 uses
  %i.ab = add i64 %i.aa, %i.x                     ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 21)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !alias.scope !4735, !noalias !4734
  %i.ae = add i64 %i.y, %i.w                      ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 17)
  %i.ag = xor i64 %i.ae, %i.af                    ; 2 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !4735, !noalias !4734
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32) ; 2 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !4735, !noalias !4734
  %i.ai = xor i64 %i.ab, %i.r                     ; 2 uses
  store i64 %i.ai, ptr %1, align 8, !alias.scope !4733, !noalias !4734
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  %i.aj = sub nuw nsw i64 64, %i.o
  %i.ak = lshr i64 %i.m, %i.aj
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.ak ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !4733, !noalias !4734
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i

bb.c:                                             ; preds = %tailrecurse.i
  %i.al = add i64 %i.h, 8                         ; 3 uses
  store i64 %i.al, ptr %i.c, align 8, !alias.scope !4733, !noalias !4734
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.c, %bb.b
  %.promoted757 = phi i64 [ %.promoted754, %bb.b ], [ %i.al, %bb.c ] ; 2 uses
  %.promoted1652 = phi i64 [ %i.ah, %bb.b ], [ %.promoted1649, %bb.c ] ; 3 uses
  %.promoted1543 = phi i64 [ %i.ag, %bb.b ], [ %.promoted1540, %bb.c ] ; 3 uses
  %.promoted1034 = phi i64 [ %i.ai, %bb.b ], [ %.promoted1031, %bb.c ] ; 3 uses
  %.promoted925 = phi i64 [ %i.ad, %bb.b ], [ %.promoted922, %bb.c ] ; 3 uses
  %i.am = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.an = phi i64 [ %i.h, %bb.b ], [ %i.al, %bb.c ]
  %.idx.i.i = shl nuw nsw i64 %i.m, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i
  %i.ap = icmp eq i64 %i.m, 0
  br i1 %i.ap, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit
  %.promoted1648 = phi i64 [ %.promoted1645, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1652, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted1539 = phi i64 [ %.promoted1536, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1543, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted1030 = phi i64 [ %.promoted1027, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1034, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted921 = phi i64 [ %.promoted918, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted925, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %i.aq = phi i64 [ %i.gb, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1652, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.ar = phi i64 [ %i.gc, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1543, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 5 uses
  %.lcssa211 = phi i64 [ %.lcssa212, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1034, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.as = phi i64 [ %i.gd, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted925, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.at = phi i64 [ %i.ge, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %i.am, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ]
  %i.au = phi i64 [ %storemerge.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted757, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %i.av = phi i64 [ %i.bd, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %i.n, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ]
  %.sroa.0.03.i.i = phi ptr [ %i.aw, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %i.k, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 128 ; 2 uses
  %i.ax = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !4736, !nonnull !53, !noundef !53
  %i.ay = tail call noundef i128 %i.ax(ptr noundef nonnull align 16 %.sroa.0.03.i.i), !noalias !4736, !inline_history !4708 ; 2 uses
  %i.az = icmp eq i128 %i.ay, 0
  br i1 %i.az, label %bb.d, label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16
  %i.bb = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba), !noalias !4736, !inline_history !4709 ; 2 uses
  %i.bc = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !4736, !nonnull !53, !noundef !53
  tail call void %i.bc(ptr noundef nonnull align 16 %.sroa.0.03.i.i, i128 noundef %i.bb), !noalias !4736, !inline_history !4710
  br label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i

_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.0.i.i.i1.i = phi i128 [ %i.bb, %bb.d ], [ %i.ay, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4737
  store i128 %.sroa.0.0.i.i.i1.i, ptr %i.a, align 16, !noalias !4737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4739)
  %i.bd = add i64 %i.av, 16                       ; 3 uses
  store i64 %i.bd, ptr %i.b, align 8, !alias.scope !4738, !noalias !4740
  %i.be = icmp eq i64 %i.au, 0
  br i1 %i.be, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i
  %i.bf = trunc i128 %.sroa.0.0.i.i.i1.i to i64
  %i.bg = sub i64 8, %i.au                        ; 4 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 16) ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 3                   ; 3 uses
  %i.bi = and i64 %i.bf, 4294967295
  %.sroa.03.0.i.i = select i1 %i.bh, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i.i = select i1 %i.bh, i64 %i.bi, i64 0 ; 2 uses
  %i.bj = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.bk = icmp samesign ult i64 %i.bj, %..i.i
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bh, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !4741, !noalias !4742
  %i.bl = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.bm = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.bn = shl nuw nsw i64 %i.bl, %i.bm
  %i.bo = or i64 %i.bn, %.sroa.0.0.i.i
  %i.bp = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.03.1.i.i = phi i64 [ %i.bp, %bb.f ], [ %.sroa.03.0.i.i, %bb.e ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.bo, %bb.f ], [ %.sroa.0.0.i.i, %bb.e ] ; 2 uses
  %i.bq = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.bq, label %bb.h, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !4741, !noalias !4742, !noundef !53
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.bv = shl nuw nsw i64 %i.bt, %i.bu
  %i.bw = or i64 %i.bv, %.sroa.0.1.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.0.2.i.i = phi i64 [ %i.bw, %bb.h ], [ %.sroa.0.1.i.i, %bb.g ]
  %i.bx = shl i64 %i.au, 3
  %i.by = and i64 %i.bx, 56
  %i.bz = shl i64 %.sroa.0.2.i.i, %i.by
  %i.ca = or i64 %i.at, %i.bz                     ; 4 uses
  store i64 %i.ca, ptr %i.d, align 8, !alias.scope !4738, !noalias !4740
  %i.cb = icmp ugt i64 %i.bg, 16
  br i1 %i.cb, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.j, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i
  %.promoted1647 = phi i64 [ %.promoted1648, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cx, %bb.j ]
  %.promoted1538 = phi i64 [ %.promoted1539, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cw, %bb.j ]
  %.promoted1029 = phi i64 [ %.promoted1030, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cy, %bb.j ]
  %.promoted920 = phi i64 [ %.promoted921, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.ct, %bb.j ]
  %i.cc = phi i64 [ %i.aq, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cx, %bb.j ] ; 2 uses
  %i.cd = phi i64 [ %i.ar, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cw, %bb.j ] ; 4 uses
  %.lcssa214 = phi i64 [ %.lcssa211, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cy, %bb.j ] ; 2 uses
  %i.ce = phi i64 [ %i.as, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.ct, %bb.j ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.bg, %bb.j ] ; 8 uses
  %i.cf = sub nuw nsw i64 16, %.sroa.0.0.i        ; 2 uses
  %i.cg = and i64 %i.cf, 7                        ; 4 uses
  %i.ch = and i64 %i.cf, 24                       ; 4 uses
  %i.ci = icmp samesign ult i64 %.sroa.0.0.i, %i.ch
  br i1 %i.ci, label %.lr.ph.i, label %bb.l

bb.j:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.cj = xor i64 %i.as, %i.ca                    ; 3 uses
  %i.ck = add i64 %i.ar, %.lcssa211               ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.cm = xor i64 %i.cl, %i.ck                    ; 3 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 32)
  %i.co = add i64 %i.aq, %i.cj                    ; 2 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 16)
  %i.cq = xor i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = add i64 %i.cq, %i.cn                    ; 2 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.ct = xor i64 %i.cs, %i.cr                    ; 3 uses
  store i64 %i.ct, ptr %i.e, align 8, !alias.scope !4743, !noalias !4740
  %i.cu = add i64 %i.co, %i.cm                    ; 3 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 17)
  %i.cw = xor i64 %i.cu, %i.cv                    ; 3 uses
  store i64 %i.cw, ptr %i.f, align 8, !alias.scope !4743, !noalias !4740
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32) ; 3 uses
  store i64 %i.cx, ptr %i.g, align 8, !alias.scope !4743, !noalias !4740
  %i.cy = xor i64 %i.cr, %i.ca                    ; 3 uses
  store i64 %i.cy, ptr %1, align 8, !alias.scope !4738, !noalias !4740
  br label %bb.i

bb.k:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.cz = add i64 %i.au, 16
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i.3, %.lr.ph.i.2.a, %.lr.ph.i.1.a, %.lr.ph.i
  %.lcssa91 = phi i64 [ %13, %.lr.ph.i ], [ %i.ej, %.lr.ph.i.1.a ], [ %i.fc, %.lr.ph.i.2.a ], [ %i.fv, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa90 = phi i64 [ %16, %.lr.ph.i ], [ %i.em, %.lr.ph.i.1.a ], [ %i.ff, %.lr.ph.i.2.a ], [ %i.fy, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa89 = phi i64 [ %17, %.lr.ph.i ], [ %i.en, %.lr.ph.i.1.a ], [ %i.fg, %.lr.ph.i.2.a ], [ %i.fz, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa88 = phi i64 [ %18, %.lr.ph.i ], [ %i.eo, %.lr.ph.i.1.a ], [ %i.fh, %.lr.ph.i.2.a ], [ %i.ga, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa = phi i64 [ %19, %.lr.ph.i ], [ %i.ep, %.lr.ph.i.1.a ], [ %i.fi, %.lr.ph.i.2.a ], [ %21, %.lr.ph.i.3 ]
  store i64 %.lcssa91, ptr %i.e, align 8, !alias.scope !4738, !noalias !4740
  store i64 %.lcssa90, ptr %i.f, align 8, !alias.scope !4744, !noalias !4740
  store i64 %.lcssa89, ptr %i.g, align 8, !alias.scope !4744, !noalias !4740
  store i64 %.lcssa88, ptr %1, align 8, !alias.scope !4738, !noalias !4740
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %bb.i
  %.promoted1646 = phi i64 [ %.lcssa89, %._crit_edge.i ], [ %.promoted1647, %bb.i ]
  %.promoted1537 = phi i64 [ %.lcssa90, %._crit_edge.i ], [ %.promoted1538, %bb.i ]
  %.promoted1028 = phi i64 [ %.lcssa88, %._crit_edge.i ], [ %.promoted1029, %bb.i ]
  %.promoted919 = phi i64 [ %.lcssa91, %._crit_edge.i ], [ %.promoted920, %bb.i ]
  %i.da = phi i64 [ %.lcssa89, %._crit_edge.i ], [ %i.cc, %bb.i ]
  %i.db = phi i64 [ %.lcssa90, %._crit_edge.i ], [ %i.cd, %bb.i ]
  %.lcssa213 = phi i64 [ %.lcssa88, %._crit_edge.i ], [ %.lcssa214, %bb.i ]
  %i.dc = phi i64 [ %.lcssa91, %._crit_edge.i ], [ %i.ce, %bb.i ]
  %.sroa.0.1.lcssa.i = phi i64 [ %.lcssa, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %i.dd = icmp samesign ugt i64 %i.cg, 3
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.de, align 1, !alias.scope !4745, !noalias !4742
  %i.df = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.m ], [ 0, %bb.l ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.df, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.dg = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.dh = icmp samesign ult i64 %i.dg, %i.cg
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i
  %i.dj = getelementptr i8, ptr %i.di, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.dj, align 1, !alias.scope !4745, !noalias !4742
  %i.dk = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.dl = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.dm = shl nuw nsw i64 %i.dk, %i.dl
  %i.dn = or i64 %i.dm, %.sroa.0.0.i11.i
  %i.do = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.03.1.i12.i = phi i64 [ %i.do, %bb.o ], [ %.sroa.03.0.i10.i, %bb.n ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.dn, %bb.o ], [ %.sroa.0.0.i11.i, %bb.n ] ; 2 uses
  %i.dp = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.cg
  br i1 %i.dp, label %bb.q, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

bb.q:                                             ; preds = %bb.p
  %i.dq = add nuw nsw i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.dr = icmp samesign ult i64 %i.dq, 16
  tail call void @llvm.assume(i1 %i.dr), !noalias !4734
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !4745, !noalias !4742, !noundef !53
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.dw = shl nuw nsw i64 %i.du, %i.dv
  %i.dx = or i64 %i.dw, %.sroa.0.1.i13.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i: ; preds = %bb.q, %bb.p
  %.sroa.0.2.i14.i = phi i64 [ %i.dx, %bb.q ], [ %.sroa.0.1.i13.i, %bb.p ] ; 2 uses
  store i64 %.sroa.0.2.i14.i, ptr %i.d, align 8, !alias.scope !4738, !noalias !4740
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit

.lr.ph.i:                                         ; preds = %bb.i
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i
  %.sroa.07.0.copyload.i = load i64, ptr %2, align 1, !alias.scope !4739, !noalias !4742 ; 2 uses
  %3 = xor i64 %.sroa.07.0.copyload.i, %i.ce      ; 3 uses
  %4 = add i64 %.lcssa214, %i.cd                  ; 3 uses
  %5 = tail call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 13)
  %6 = xor i64 %4, %5                             ; 3 uses
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 32)
  %8 = add i64 %3, %i.cc                          ; 2 uses
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 16)
  %10 = xor i64 %8, %9                            ; 3 uses
  %11 = add i64 %10, %7                           ; 2 uses
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 21)
  %13 = xor i64 %12, %11                          ; 2 uses
  %14 = add i64 %8, %6                            ; 3 uses
  %15 = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 17)
  %16 = xor i64 %14, %15                          ; 4 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 32) ; 2 uses
  %18 = xor i64 %11, %.sroa.07.0.copyload.i       ; 2 uses
  %19 = add nuw nsw i64 %.sroa.0.0.i, 8           ; 3 uses
  %20 = icmp samesign ult i64 %19, %i.ch
  br i1 %20, label %.lr.ph.i.1.a, label %._crit_edge.i

.lr.ph.i.1.a:                                     ; preds = %.lr.ph.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %19
  %.sroa.07.0.copyload.i.1.a = load i64, ptr %i.dy, align 1, !alias.scope !4739, !noalias !4742 ; 2 uses
  %i.dz = xor i64 %.sroa.07.0.copyload.i.1.a, %13 ; 3 uses
  %i.ea = add i64 %18, %16                        ; 3 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 13)
  %i.ec = xor i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 32)
  %i.ee = add i64 %i.dz, %17                      ; 2 uses
  %i.ef = tail call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 16)
  %i.eg = xor i64 %i.ee, %i.ef                    ; 3 uses
  %i.eh = add i64 %i.eg, %i.ed                    ; 2 uses
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 21)
  %i.ej = xor i64 %i.ei, %i.eh                    ; 2 uses
  %i.ek = add i64 %i.ee, %i.ec                    ; 3 uses
  %i.el = tail call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 17)
  %i.em = xor i64 %i.ek, %i.el                    ; 4 uses
  %i.en = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 32) ; 2 uses
  %i.eo = xor i64 %i.eh, %.sroa.07.0.copyload.i.1.a ; 2 uses
  %i.ep = add nuw nsw i64 %.sroa.0.0.i, 16        ; 3 uses
  %i.eq = icmp samesign ult i64 %i.ep, %i.ch
  br i1 %i.eq, label %.lr.ph.i.2.a, label %._crit_edge.i

.lr.ph.i.2.a:                                     ; preds = %.lr.ph.i.1.a
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ep
  %.sroa.07.0.copyload.i.2.a = load i64, ptr %i.er, align 1, !alias.scope !4739, !noalias !4742 ; 2 uses
  %i.es = xor i64 %.sroa.07.0.copyload.i.2.a, %i.ej ; 3 uses
  %i.et = add i64 %i.eo, %i.em                    ; 3 uses
  %i.eu = tail call noundef i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 13)
  %i.ev = xor i64 %i.et, %i.eu                    ; 3 uses
  %i.ew = tail call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 32)
  %i.ex = add i64 %i.es, %i.en                    ; 2 uses
  %i.ey = tail call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 16)
  %i.ez = xor i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = add i64 %i.ez, %i.ew                    ; 2 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 21)
  %i.fc = xor i64 %i.fb, %i.fa                    ; 2 uses
  %i.fd = add i64 %i.ex, %i.ev                    ; 3 uses
  %i.fe = tail call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 17)
  %i.ff = xor i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = tail call noundef i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 32) ; 2 uses
  %i.fh = xor i64 %i.fa, %.sroa.07.0.copyload.i.2.a ; 2 uses
  %i.fi = add nuw nsw i64 %.sroa.0.0.i, 24        ; 3 uses
  %i.fj = icmp samesign ult i64 %i.fi, %i.ch
  br i1 %i.fj, label %.lr.ph.i.3, label %._crit_edge.i

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fi
  %.sroa.07.0.copyload.i.3 = load i64, ptr %i.fk, align 1, !alias.scope !4739, !noalias !4742 ; 2 uses
  %i.fl = xor i64 %.sroa.07.0.copyload.i.3, %i.fc ; 3 uses
  %i.fm = add i64 %i.fh, %i.ff                    ; 3 uses
  %i.fn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 13)
  %i.fo = xor i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = tail call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 32)
  %i.fq = add i64 %i.fl, %i.fg                    ; 2 uses
  %i.fr = tail call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 16)
  %i.fs = xor i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = add i64 %i.fs, %i.fp                    ; 2 uses
  %i.fu = tail call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 21)
  %i.fv = xor i64 %i.fu, %i.ft
  %i.fw = add i64 %i.fq, %i.fo                    ; 3 uses
  %i.fx = tail call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 17)
  %i.fy = xor i64 %i.fw, %i.fx
  %i.fz = tail call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 32)
  %i.ga = xor i64 %i.ft, %.sroa.07.0.copyload.i.3
  %21 = or disjoint i64 %.sroa.0.0.i, 32
  br label %._crit_edge.i

_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.k, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i
  %.promoted1645 = phi i64 [ %.promoted1648, %bb.k ], [ %.promoted1646, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %.promoted1536 = phi i64 [ %.promoted1539, %bb.k ], [ %.promoted1537, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %.promoted1027 = phi i64 [ %.promoted1030, %bb.k ], [ %.promoted1028, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %.promoted918 = phi i64 [ %.promoted921, %bb.k ], [ %.promoted919, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %i.gb = phi i64 [ %i.aq, %bb.k ], [ %i.da, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %i.gc = phi i64 [ %i.ar, %bb.k ], [ %i.db, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %.lcssa212 = phi i64 [ %.lcssa211, %bb.k ], [ %.lcssa213, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %i.gd = phi i64 [ %i.as, %bb.k ], [ %i.dc, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %i.ge = phi i64 [ %i.ca, %bb.k ], [ %.sroa.0.2.i14.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %storemerge.i = phi i64 [ %i.cz, %bb.k ], [ %i.cg, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 4 uses
  store i64 %storemerge.i, ptr %i.c, align 8, !alias.scope !4738, !noalias !4740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4737
  %i.gf = icmp eq ptr %i.aw, %i.ao
  br i1 %i.gf, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i.i

_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i
  %.promoted756 = phi i64 [ %.promoted757, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %storemerge.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ]
  %.promoted1651 = phi i64 [ %.promoted1652, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted1645, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 2 uses
  %.promoted1542 = phi i64 [ %.promoted1543, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted1536, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 4 uses
  %.promoted1033 = phi i64 [ %.promoted1034, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted1027, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 2 uses
  %.promoted924 = phi i64 [ %.promoted925, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted918, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 2 uses
  %i.gg = phi i64 [ %i.am, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.ge, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ]
  %i.gh = phi i64 [ %i.an, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %storemerge.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 5 uses
  %i.gi = phi i64 [ %i.n, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.bd, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr.i, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !4732, !align !59, !noundef !53 ; 2 uses
  %i.gl = icmp ne ptr %i.gk, null                 ; 2 uses
  %i.gm = zext i1 %i.gl to i64                    ; 2 uses
  %i.gn = add i64 %i.gi, 8                        ; 2 uses
  store i64 %i.gn, ptr %i.b, align 8, !alias.scope !4746, !noalias !4734
  %i.go = shl i64 %i.gh, 3                        ; 2 uses
  %i.gp = and i64 %i.go, 56
  %i.gq = shl nuw nsw i64 %i.gm, %i.gp
  %i.gr = or i64 %i.gq, %i.gg                     ; 4 uses
  store i64 %i.gr, ptr %i.d, align 8, !alias.scope !4746, !noalias !4734
  %i.gs = icmp ugt i64 %i.gh, 8
  br i1 %i.gs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i
  %i.gt = xor i64 %.promoted924, %i.gr            ; 3 uses
  %i.gu = add i64 %.promoted1542, %.promoted1033  ; 3 uses
  %i.gv = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1542, i64 %.promoted1542, i64 13)
  %i.gw = xor i64 %i.gv, %i.gu                    ; 3 uses
  %i.gx = tail call noundef i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gu, i64 32)
  %i.gy = add i64 %.promoted1651, %i.gt           ; 2 uses
  %i.gz = tail call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 16)
  %i.ha = xor i64 %i.gy, %i.gz                    ; 3 uses
  %i.hb = add i64 %i.ha, %i.gx                    ; 2 uses
  %i.hc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 21)
  %i.hd = xor i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %i.e, align 8, !alias.scope !4747, !noalias !4734
  %i.he = add i64 %i.gy, %i.gw                    ; 3 uses
  %i.hf = tail call noundef i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 17)
  %i.hg = xor i64 %i.he, %i.hf                    ; 2 uses
  store i64 %i.hg, ptr %i.f, align 8, !alias.scope !4747, !noalias !4734
  %i.hh = tail call noundef i64 @llvm.fshl.i64(i64 %i.he, i64 %i.he, i64 32) ; 2 uses
  store i64 %i.hh, ptr %i.g, align 8, !alias.scope !4747, !noalias !4734
  %i.hi = xor i64 %i.hb, %i.gr                    ; 2 uses
  store i64 %i.hi, ptr %1, align 8, !alias.scope !4746, !noalias !4734
  %.not.i.i.i2.i = icmp eq i64 %i.gh, 0
  %i.hj = sub nuw nsw i64 64, %i.go
  %i.hk = lshr i64 %i.gm, %i.hj
  %.sroa.0.0.i.i.i3.i = select i1 %.not.i.i.i2.i, i64 0, i64 %i.hk ; 2 uses
  store i64 %.sroa.0.0.i.i.i3.i, ptr %i.d, align 8, !alias.scope !4746, !noalias !4734
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i

bb.s:                                             ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i
  %i.hl = add i64 %i.gh, 8                        ; 3 uses
  store i64 %i.hl, ptr %i.c, align 8, !alias.scope !4746, !noalias !4734
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.s, %bb.r
  %.promoted755 = phi i64 [ %.promoted756, %bb.r ], [ %i.hl, %bb.s ]
  %.promoted1650 = phi i64 [ %i.hh, %bb.r ], [ %.promoted1651, %bb.s ]
  %.promoted1541 = phi i64 [ %i.hg, %bb.r ], [ %.promoted1542, %bb.s ]
  %.promoted1032 = phi i64 [ %i.hi, %bb.r ], [ %.promoted1033, %bb.s ]
  %.promoted923 = phi i64 [ %i.hd, %bb.r ], [ %.promoted924, %bb.s ]
  %i.hm = phi i64 [ %i.gh, %bb.r ], [ %i.hl, %bb.s ]
  %i.hn = phi i64 [ %.sroa.0.0.i.i.i3.i, %bb.r ], [ %i.gr, %bb.s ]
  br i1 %i.gl, label %tailrecurse.i, label %_RINvXs19_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB7_10StyleChainNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit

_RINvXs19_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB7_10StyleChainNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs1a_NtCsdaEETE4DqmE_13typst_library4diagNtB7_9FileErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !96, !noundef !53 ; 5 uses
  %i.b = icmp ne i32 %i.a, 11
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -5
  %i.d = icmp samesign ugt i32 %i.a, 4
  %narrow = select i1 %i.d, i32 %i.c, i32 6       ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 21 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4882, !noundef !53 ; 6 uses
  %i.h = add i64 %i.g, 8
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !4882
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 21 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4882, !noundef !53 ; 5 uses
  %i.k = shl i64 %i.j, 3                          ; 2 uses
  %i.l = and i64 %i.k, 56
  %i.m = shl nuw nsw i64 %i.e, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 34 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !4882, !noundef !53
  %i.p = or i64 %i.m, %i.o                        ; 4 uses
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !4882
  %i.q = icmp ugt i64 %i.j, 8
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4882, !noundef !53
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = load i64, ptr %1, align 8, !alias.scope !4883, !noundef !53
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !4883, !noundef !53 ; 3 uses
  %i.x = add i64 %i.w, %i.u                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.z = xor i64 %i.y, %i.x                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !4883, !noundef !53
  %i.ad = add i64 %i.ac, %i.t                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.af = xor i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = add i64 %i.af, %i.aa                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 21)
  %i.ai = xor i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.r, align 8, !alias.scope !4883
  %i.aj = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.al = xor i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.v, align 8, !alias.scope !4883
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  store i64 %i.am, ptr %i.ab, align 8, !alias.scope !4883
  %i.an = xor i64 %i.ag, %i.p
  store i64 %i.an, ptr %1, align 8, !alias.scope !4882
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %i.ao = sub nuw nsw i64 64, %i.k
  %i.ap = lshr i64 %i.e, %i.ao
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ap ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.n, align 8, !alias.scope !4882
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit

bb.c:                                             ; preds = %bb.a
  %i.aq = add i64 %i.j, 8                         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !4882
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.b, %bb.c
  %i.ar = phi i64 [ %.sroa.0.0.i.i.i, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %i.j, %bb.b ], [ %i.aq, %bb.c ] ; 9 uses
  switch i32 %narrow, label %_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit [
    i32 0, label %bb.d
    i32 5, label %bb.ag
    i32 6, label %bb.aj
    i32 7, label %bb.bm
  ]

_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html.exit23.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html.exit18.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html.exit.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit13.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit10.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit7.i, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i, %bb.am, %bb.v, %bb.u, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit8, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html.exit13, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html.exit, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit
  ret void

bb.d:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !53, !noundef !53 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noundef !53 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4885)
  switch i64 %i.aw, label %.lr.ph.preheader.split.i.split [
    i64 0, label %._crit_edge.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread
  ]

.lr.ph.preheader.split.i.split:                   ; preds = %bb.d
  %i.ax = add i64 %i.aw, -3
  br label %.lr.ph.i

._crit_edge.loopexit.peel.begin.i.peel.begin:     ; preds = %bb.x
  %i.ay = add nuw i64 %.sroa.019.030.i, 2         ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cw
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !4884, !noalias !4885, !noundef !53
  %i.bb = icmp eq i8 %i.ba, 47
  br i1 %i.bb, label %bb.e, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge

._crit_edge.loopexit.peel.begin.i.peel.begin.thread: ; preds = %bb.d
  %i.bc = load i8, ptr %i.au, align 1, !alias.scope !4884, !noalias !4885, !noundef !53
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %.thread, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread, %._crit_edge.loopexit.peel.begin.i.peel.begin
  %i.be = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ], [ %i.ay, %._crit_edge.loopexit.peel.begin.i.peel.begin ] ; 2 uses
  %i.bf = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ], [ %i.cw, %._crit_edge.loopexit.peel.begin.i.peel.begin ]
  %i.bg = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ], [ %.sroa.012.2.i, %._crit_edge.loopexit.peel.begin.i.peel.begin ]
end_hunk_0
