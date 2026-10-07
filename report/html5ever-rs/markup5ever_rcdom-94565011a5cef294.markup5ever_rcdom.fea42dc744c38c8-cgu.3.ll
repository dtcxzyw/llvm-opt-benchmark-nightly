Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.3?download=true
inline.NumInlined: 102
inline.NumDeleted: 67
begin_hunk_0_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1mImOlsSUsK_17markup5ever_rcdom:bb.a
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE6removeBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !135, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !135, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !135, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = xor i64 %1, -1
  %i.j = add nsw i64 %i.b, %i.i
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, i64 %i.k, i1 false), !noalias !135
  %i.l = add nsw i64 %i.b, -1
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !135
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB1a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8as_sliceB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !143, !noundef !4 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !5, !alias.scope !143, !noundef !4
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i, !prof !6

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !142, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.e, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i, %.noexc
  %i.l = phi i64 [ %i.i, %.noexc ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !142, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.p = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 8 %i.b, i64 %i.p, i1 false), !noalias !142
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i
  %i.q = phi i64 [ %i.l, %bb.c ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i ]
  %i.r = add i64 %i.q, %i.c
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !142
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1v_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.w = shl nuw i64 %i.t, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !144
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1v_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1v_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.a, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
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
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !150, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !151
  %i.e = load ptr, ptr %i.d, align 8, !noalias !151, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 16 to ptr)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %2 = and i64 %i.g, 1
  %.not.i = icmp eq i64 %2, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @4, ptr %i.c, align 8, !noalias !151, !captures !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 6, ptr %i.i, align 8, !noalias !151
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store ptr @2, ptr %i.c, align 8, !noalias !151, !captures !152
  store i64 6, ptr %i.h, align 8, !noalias !151
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @3, ptr %i.c, align 8, !noalias !151, !captures !152
  store i64 5, ptr %i.h, align 8, !noalias !151
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !151
  store ptr %i.a, ptr %i.b, align 8, !noalias !151
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsr_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !151
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8, !noalias !151
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !151
  %i.k = load ptr, ptr %1, align 8, !alias.scope !151, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !151, !nonnull !4, !align !150, !noundef !4
  %i.n = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @5, ptr noundef nonnull %i.b), !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !151
  br i1 %i.n, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.d, align 8, !noalias !151, !nonnull !4, !noundef !4 ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = icmp eq ptr %i.o, inttoptr (i64 15 to ptr)
  br i1 %i.q, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ult ptr %i.o, inttoptr (i64 9 to ptr)
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i64 %i.p, 1
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.o, i64 %i.t
  %i.v = trunc i64 %i.p to i1
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.x = load i32, ptr %i.w, align 4, !noalias !153, !noundef !4
  %i.y = zext i32 %i.x to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.y, %bb.j ], [ 0, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !151, !noundef !4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.ad, %bb.l ], [ %i.p, %bb.k ], [ 0, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.z, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %i.af = call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.af, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !151, !nonnull !4, !noundef !4
  %i.ah = load ptr, ptr %i.l, align 8, !alias.scope !151, !nonnull !4, !align !150, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !4, !nonnull !4
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1) #27, !inline_history !149
  br label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.f, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.m
  %.sroa.0.1.i = phi i1 [ %i.ak, %bb.m ], [ true, %bb.f ], [ true, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !151
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
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, %1
  br i1 %i.g, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !160
  %i.h = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !160 ; 2 uses
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
  %.sroa.10.0.i = phi i64 [ %i.j, %bb.d ], [ 8, %bb.b ]
  %.sroa.4.0.i = phi i64 [ %i.f, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.k = inttoptr i64 %.sroa.10.0.i to ptr        ; 2 uses
  %i.l = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.l)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.o, align 8, !noalias !161
  store ptr %i.n, ptr %i.a, align 8, !noalias !161
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.p, align 8, !noalias !161
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENCNvMB1U_B1S_18clone_with_subtree0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callB1n_NCINvMsk_NtB1s_3vecINtB4n_3VecB1n_E14extend_trustedBN_E0E0EB1U_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
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
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !177
  %i.j = mul nuw nsw i64 %i.i, 40                 ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !noalias !177
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !177
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !178
  %i.n = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !178 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.j) #25, !noalias !177
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.i, ptr %i.e, align 8, !noalias !177
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !177
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.014.030.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.y, %bb.z ] ; 7 uses
  %.sroa.7.029.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.z ] ; 3 uses
  %.sroa.10.028.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.v, %bb.z ]
  %i.v = add nsw i64 %.sroa.10.028.i, -1          ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !179
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !182
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !181, !noalias !183, !noundef !4 ; 4 uses
  %.not.i.i12.i = icmp ne i64 %i.ab, 0
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  %or.cond.i.i13.i = and i1 %.not.i.i12.i, %i.ad
  br i1 %or.cond.i.i13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.ab, ptr %i.b, align 8, !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  %i.ae = load i64, ptr %.sroa.014.030.i, align 8, !range !7, !alias.scope !181, !noalias !183, !noundef !4 ; 4 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ah = inttoptr i64 %i.ab to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = atomicrmw add ptr %i.ai, i64 1 seq_cst, align 8, !noalias !182
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %bb.g, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %.noexc.i unwind label %bb.e, !noalias !177

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.al = inttoptr i64 %i.ae to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw add ptr %i.am, i64 1 seq_cst, align 8, !noalias !182
  %i.ao = icmp eq i64 %i.an, 9223372036854775807
  br i1 %i.ao, label %bb.k, label %bb.n, !prof !6

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %bb.m unwind label %bb.l, !noalias !182

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ay, %bb.s ], [ %i.ay, %bb.q ], [ %i.ay, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #21
          to label %bb.ab unwind label %bb.t, !noalias !182

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.m:                                             ; preds = %bb.p, %bb.k
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.g
  store i64 %i.ae, ptr %i.a, align 8, !noalias !182
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !7, !alias.scope !181, !noalias !183, !noundef !4 ; 3 uses
  %i.as = and i64 %i.ar, 3
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.au = inttoptr i64 %i.ar to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = atomicrmw add ptr %i.av, i64 1 seq_cst, align 8, !noalias !182
  %i.ax = icmp eq i64 %i.aw, 9223372036854775807
  br i1 %i.ax, label %bb.p, label %._crit_edge.i.i.i, !prof !6

._crit_edge.i.i.i:                                ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !range !7, !noalias !182
  br label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %bb.m unwind label %bb.q, !noalias !182

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.az = load i64, ptr %i.a, align 8, !range !7, !alias.scope !186, !noalias !182, !noundef !4 ; 2 uses
  %i.ba = and i64 %i.az, 3
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bc = inttoptr i64 %i.az to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8, !noalias !187
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i unwind label %bb.t, !noalias !182

bb.t:                                             ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !182
  unreachable

_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.n
  %i.bh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ae, %bb.n ]
  %i.bi = load i64, ptr %i.b, align 8, !noalias !182, !noundef !4
  store i64 %i.bi, ptr %i.s, align 8, !alias.scope !180, !noalias !188
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !180, !noalias !188
  store i64 %i.ar, ptr %i.t, align 8, !alias.scope !180, !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !182
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 24 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !189, !nonnull !4, !noundef !4 ; 5 uses
  %i.bl = icmp ugt ptr %i.bk, inttoptr (i64 15 to ptr)
  br i1 %i.bl, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.bm = ptrtoint ptr %i.bk to i64
  %2 = and i64 %i.bm, 1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb.v, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 36 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !189, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bo, ptr %i.bp, align 8, !noalias !189
  %i.bq = getelementptr i8, ptr %i.bk, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  store ptr %i.bq, ptr %i.bj, align 8, !noalias !189
  store i32 0, ptr %i.bn, align 4, !noalias !189
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.v, %bb.u
  %i.br = phi ptr [ %i.bk, %bb.u ], [ %i.bq, %bb.v ]
  %i.bs = getelementptr i8, ptr %i.br, i64 -1     ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !189, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %bb.w, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, !prof !6

bb.w:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.bv = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !189, !nonnull !4, !noundef !4
  %i.bw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !189, !noundef !4
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
          to label %.noexc.i.i unwind label %bb.x, !noalias !179

.noexc.i.i:                                       ; preds = %bb.w
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.bx = add nuw i64 %i.bt, 1
  store i64 %i.bx, ptr %i.bs, align 8, !noalias !189
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.ab unwind label %bb.y, !noalias !179

bb.y:                                             ; preds = %bb.x
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !179
  unreachable

bb.z:                                             ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !179
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.7.029.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cb = icmp eq i64 %i.v, 0
  br i1 %i.cb, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.d

bb.aa:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !177
  unreachable

bb.ab:                                            ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.e ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i ], [ %i.by, %bb.x ]
  store i64 %.sroa.7.029.i, ptr %i.q, align 8, !noalias !177
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #21
          to label %bb.ac unwind label %bb.aa, !noalias !177

bb.ac:                                            ; preds = %bb.ab
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.d, %bb.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i
  %i.cd = phi ptr [ %i.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i ], [ %i.q, %bb.z ], [ %i.q, %bb.d ]
  store i64 %i.i, ptr %i.cd, align 8, !noalias !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !177
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !202, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !203, !noundef !4
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !noalias !203
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !206, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !207, !noundef !4
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
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !220, !nonnull !4, !noundef !4 ; 3 uses
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
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 4, !noalias !221, !noundef !4
  br i1 %i.r, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %.sink.split.i.i.i.i

bb.c:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i
  %i.u = load i64, ptr %i.q, align 8, !noalias !222, !noundef !4 ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.q, align 8, !noalias !222
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %.sink.split.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i

.sink.split.i.i.i.i:                              ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i
  %.sink.in.in.in.i.i.i.i = zext i32 %.sroa.0.0.i.i.i.i.i to i64
  %.sink.in.in.i.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i.i, 15
  %.sink.in.i.i.i.i = and i64 %.sink.in.in.i.i.i.i, 8589934576
end_hunk_0
