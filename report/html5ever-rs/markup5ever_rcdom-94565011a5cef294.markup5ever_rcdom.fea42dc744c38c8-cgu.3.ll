Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.3?download=true
inline.NumInlined: 102
inline.NumDeleted: 67
begin_hunk_0_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_:bb.a

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBB_3fmt4UTF8ENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !145, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  %i.e = load ptr, ptr %i.d, align 8, !noalias !146, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 16 to ptr)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @4, ptr %i.c, align 8, !noalias !146, !captures !149
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 6, ptr %i.j, align 8, !noalias !146
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store ptr @2, ptr %i.c, align 8, !noalias !146, !captures !149
  store i64 6, ptr %i.i, align 8, !noalias !146
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @3, ptr %i.c, align 8, !noalias !146, !captures !149
  store i64 5, ptr %i.i, align 8, !noalias !146
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146
  store ptr %i.a, ptr %i.b, align 8, !noalias !146
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsr_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !146
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.k, align 8, !noalias !146
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !146
  %i.l = load ptr, ptr %1, align 8, !alias.scope !146, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !146, !nonnull !5, !align !145, !noundef !5
  %i.o = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @5, ptr noundef nonnull %i.b), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146
  br i1 %i.o, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !noalias !146, !nonnull !5, !noundef !5 ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 15 to ptr)
  br i1 %i.r, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ult ptr %i.p, inttoptr (i64 9 to ptr)
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = and i64 %i.q, 1
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr i8, ptr %i.p, i64 %i.u
  %i.w = trunc i64 %i.q to i1
  br i1 %i.w, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.y = load i32, ptr %i.x, align 4, !noalias !150, !noundef !5
  %i.z = zext i32 %i.y to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.z, %bb.j ], [ 0, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !noalias !146, !noundef !5
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.ae, %bb.l ], [ %i.q, %bb.k ], [ 0, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %i.af, %bb.l ], [ %i.aa, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %i.ag = call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ag, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !146, !nonnull !5, !noundef !5
  %i.ai = load ptr, ptr %i.m, align 8, !alias.scope !146, !nonnull !5, !align !145, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !5, !nonnull !5
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1) #27, !inline_history !153
  br label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.f, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.m
  %.sroa.0.1.i = phi i1 [ %i.al, %bb.m ], [ true, %bb.f ], [ true, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterB13_ENCNvMB1j_B1h_18clone_with_subtree0EE9from_iterB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 4 uses
  %i.f = lshr exact i64 %i.e, 3                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, 9223372036854775800
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, %1
  br i1 %i.g, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !154
  %i.h = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !154 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.h to i64
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.e) #25
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.4.0.i.a = phi i64 [ %i.j, %bb.d ], [ 8, %bb.b ]
  %.sroa.10.0.i = phi i64 [ %i.f, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.k = inttoptr i64 %.sroa.4.0.i.a to ptr       ; 2 uses
  %i.l = icmp samesign ule i64 %i.f, %.sroa.10.0.i
  tail call void @llvm.assume(i1 %i.l)
  store i64 %.sroa.10.0.i, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.o, align 8, !noalias !157
  store ptr %i.n, ptr %i.a, align 8, !noalias !157
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.p, align 8, !noalias !157
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENCNvMB1U_B1S_18clone_with_subtree0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callB1n_NCINvMsk_NtB1s_3vecINtB4n_3VecB1n_E14extend_trustedBN_E0E0EB1U_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !162
  %i.j = mul nuw nsw i64 %i.i, 40                 ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !noalias !162
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !165
  %i.n = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !165 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.j) #25, !noalias !162
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.i, ptr %i.e, align 8, !noalias !162
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.014.030.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.y, %bb.z ] ; 7 uses
  %.sroa.7.029.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.z ] ; 3 uses
  %.sroa.7.028.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.v, %bb.z ]
  %i.v = add nsw i64 %.sroa.7.028.i, -1           ; 2 uses
  %i.w = icmp eq ptr %.sroa.014.030.i, %i.r
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.f

bb.e:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 40
  %i.z = add nuw nsw i64 %.sroa.7.029.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !176
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !174, !noalias !177, !noundef !5 ; 4 uses
  %.not.i.i12.i = icmp ne i64 %i.ab, 0
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  %or.cond.i.i13.i = and i1 %.not.i.i12.i, %i.ad
  br i1 %or.cond.i.i13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.ab, ptr %i.b, align 8, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  %i.ae = load i64, ptr %.sroa.014.030.i, align 8, !range !80, !alias.scope !174, !noalias !177, !noundef !5 ; 4 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ah = inttoptr i64 %i.ab to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = atomicrmw add ptr %i.ai, i64 1 seq_cst, align 8, !noalias !176
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %bb.g, !prof !20

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %.noexc.i unwind label %bb.e, !noalias !162

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.al = inttoptr i64 %i.ae to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw add ptr %i.am, i64 1 seq_cst, align 8, !noalias !176
  %i.ao = icmp eq i64 %i.an, 9223372036854775807
  br i1 %i.ao, label %bb.k, label %bb.n, !prof !20

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %bb.m unwind label %bb.l, !noalias !176

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ay, %bb.s ], [ %i.ay, %bb.q ], [ %i.ay, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #21
          to label %bb.ab unwind label %bb.t, !noalias !176

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.m:                                             ; preds = %bb.p, %bb.k
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.g
  store i64 %i.ae, ptr %i.a, align 8, !noalias !176
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !80, !alias.scope !174, !noalias !177, !noundef !5 ; 3 uses
  %i.as = and i64 %i.ar, 3
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.au = inttoptr i64 %i.ar to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = atomicrmw add ptr %i.av, i64 1 seq_cst, align 8, !noalias !176
  %i.ax = icmp eq i64 %i.aw, 9223372036854775807
  br i1 %i.ax, label %bb.p, label %._crit_edge.i.i.i, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !range !80, !noalias !176
  br label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %bb.m unwind label %bb.q, !noalias !176

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.az = load i64, ptr %i.a, align 8, !range !80, !alias.scope !184, !noalias !176, !noundef !5 ; 2 uses
  %i.ba = and i64 %i.az, 3
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bc = inttoptr i64 %i.az to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8, !noalias !185
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, !prof !20

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i unwind label %bb.t, !noalias !176

bb.t:                                             ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !176
  unreachable

_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.n
  %i.bh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ae, %bb.n ]
  %i.bi = load i64, ptr %i.b, align 8, !noalias !176, !noundef !5
  store i64 %i.bi, ptr %i.s, align 8, !alias.scope !171, !noalias !186
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !171, !noalias !186
  store i64 %i.ar, ptr %i.t, align 8, !alias.scope !171, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 24 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !187, !nonnull !5, !noundef !5 ; 5 uses
  %i.bl = icmp ugt ptr %i.bk, inttoptr (i64 15 to ptr)
  br i1 %i.bl, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.v, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 36 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !187, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bq, ptr %i.br, align 8, !noalias !187
  %i.bs = getelementptr i8, ptr %i.bk, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  store ptr %i.bs, ptr %i.bj, align 8, !noalias !187
  store i32 0, ptr %i.bp, align 4, !noalias !187
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.v, %bb.u
  %i.bt = phi ptr [ %i.bk, %bb.u ], [ %i.bs, %bb.v ]
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1     ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !187, !noundef !5 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.w, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, !prof !20

bb.w:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.bx = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !187, !nonnull !5, !noundef !5
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !187, !noundef !5
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
          to label %.noexc.i.i unwind label %bb.x, !noalias !168

.noexc.i.i:                                       ; preds = %bb.w
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.bz = add nuw i64 %i.bv, 1
  store i64 %i.bz, ptr %i.bu, align 8, !noalias !187
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.ab unwind label %bb.y, !noalias !168

bb.y:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !168
  unreachable

bb.z:                                             ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !168
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.7.029.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cd = icmp eq i64 %i.v, 0
  br i1 %i.cd, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.d

bb.aa:                                            ; preds = %bb.ab
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !162
  unreachable

bb.ab:                                            ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.e ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i ], [ %i.ca, %bb.x ]
  store i64 %.sroa.7.029.i, ptr %i.q, align 8, !noalias !162
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #21
          to label %bb.ac unwind label %bb.aa, !noalias !162

bb.ac:                                            ; preds = %bb.ab
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.d, %bb.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i
  %i.cf = phi ptr [ %i.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i ], [ %i.q, %bb.z ], [ %i.q, %bb.d ]
  store i64 %i.i, ptr %i.cf, align 8, !noalias !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !162
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !196, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !199, !noundef !5
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !noalias !199
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.p = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !206, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !207, !noundef !5
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !noalias !207
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.u = icmp eq i64 %i.p, %i.d
  br i1 %i.u, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i, %bb.c
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBI_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.08.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.b unwind label %.body.i

.body.i:                                          ; preds = %.lr.ph.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #21
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !214, !nonnull !5, !noundef !5 ; 3 uses
  %i.m = icmp ult ptr %i.l, inttoptr (i64 16 to ptr)
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i: ; preds = %bb.b
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = and i64 %i.n, 1
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p     ; 5 uses
  %i.r = trunc i64 %i.n to i1                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.sroa.0.0.in.i.i.i.i.i = select i1 %i.r, ptr %i.s, ptr %i.t
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 4, !noalias !219, !noundef !5
  br i1 %i.r, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %.sink.split.i.i.i.i

bb.c:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i
  %i.u = load i64, ptr %i.q, align 8, !noalias !222, !noundef !5 ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.q, align 8, !noalias !222
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %.sink.split.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i

.sink.split.i.i.i.i:                              ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i
  %.sink.in.in.in.i.i.i.i = zext i32 %.sroa.0.0.i.i.i.i.i to i64
  %.sink.in.in.i.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i.i, 15
  %.sink.in.i.i.i.i = and i64 %.sink.in.in.i.i.i.i, 8589934576
  %.sink.i.i.i.i = add nuw nsw i64 %.sink.in.i.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !222
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %.sink.split.i.i.i.i, %bb.c, %bb.b
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph
  %i.y = add i64 %.sroa.0.1.i15, 1                ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.d
  %.sroa.0.1.i15 = phi i64 [ %i.y, %bb.d ], [ %i.g, %.body.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aa) #21
          to label %bb.d unwind label %bb.e

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtB5_5Debug3fmtB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noundef nonnull align 8 %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

end_hunk_0
