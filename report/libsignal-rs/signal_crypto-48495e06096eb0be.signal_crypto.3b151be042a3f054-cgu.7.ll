Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/signal_crypto-48495e06096eb0be.signal_crypto.3b151be042a3f054-cgu.7?download=true
inline.NumInlined: 158
inline.NumDeleted: 82
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write10write_char:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !172, !noundef !4 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !11, !alias.scope !173, !noundef !4
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !172, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !172
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !181, !noalias !182, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !alias.scope !181, !noalias !182, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.thread.i.i, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i.i, !prof !8

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !182
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !183, !noalias !182, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i.i, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !183, !noalias !182, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !183, !noalias !182
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !183, !noalias !182
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB1n_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEE11spec_extendCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.a = load i64, ptr %1, align 8, !range !6, !alias.scope !235, !noalias !236, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !235, !noalias !236, !noundef !4
  %.not7.i.i.i = icmp eq ptr %i.d, null           ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !235, !noalias !236, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !235, !noalias !236, !noundef !4
  %i.g = sub nuw i64 %.val13.i.i.i, %.val12.i.i.i ; 3 uses
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.thread.i, label %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.i

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !233, !noalias !234, !noundef !4
  br label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val10.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !235, !noalias !236, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val11.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !235, !noalias !236, !nonnull !4, !noundef !4
  %i.l = ptrtoint ptr %.val11.i.i.i to i64
  %i.m = ptrtoint ptr %.val10.i.i.i to i64
  %i.n = sub nuw i64 %i.l, %i.m
  br label %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.thread.i

_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !235, !noalias !236, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val9.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !235, !noalias !236, !nonnull !4, !noundef !4
  %i.q = ptrtoint ptr %.val9.i.i.i to i64
  %i.r = ptrtoint ptr %.val.i.i.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = add i64 %i.s, %i.g                       ; 2 uses
  %.not.i = icmp ult i64 %i.t, %i.g
  br i1 %.not.i, label %bb.i, label %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.thread.i, !prof !12

_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.i, %bb.d, %bb.b
  %.sink.i.i9.i = phi i64 [ %i.t, %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.i ], [ %i.n, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !237, !noalias !234, !noundef !4 ; 3 uses
  %i.w = load i64, ptr %0, align 8, !range !11, !alias.scope !237, !noalias !234, !noundef !4
  %i.x = sub i64 %i.w, %i.v
  %i.y = icmp ugt i64 %.sink.i.i9.i, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i, !prof !238

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.thread.i
  tail call void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v, i64 noundef %.sink.i.i9.i, i64 noundef 1, i64 noundef 1), !noalias !234
  %.pre.i = load i64, ptr %i.u, align 8, !alias.scope !233, !noalias !234
  br label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.e, %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.thread.i
  %i.z = phi i64 [ %i.v, %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.thread.i ], [ %.pre.i, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !233, !noalias !234, !nonnull !4, !noundef !4 ; 9 uses
  %2 = ptrtoaddr ptr %i.ab to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !245, !noalias !246, !noundef !4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !245, !noalias !246, !noundef !4 ; 3 uses
  %i.ag = icmp ule i64 %i.ad, %i.af
  tail call void @llvm.assume(i1 %i.ag)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %i.ad, %i.af
  br i1 %.not2.i.i.i.i.i.i.i, label %_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.af, 1
  %i.ai = icmp eq i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ah, align 8, !alias.scope !247, !noalias !248, !noundef !4
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 %i.aj, ptr %i.ak, align 1, !noalias !249
  %i.al = add i64 %i.z, 1
  store i64 1, ptr %i.ac, align 8, !alias.scope !245, !noalias !246
  br label %_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto.exit.i.i.i.i.i, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i
  %.sroa.4.0.i.i.i.i = phi i64 [ %.sroa.4.1.i.i.i.i, %_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto.exit.i.i.i.i.i ], [ %i.z, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto.exit.i ] ; 9 uses
  br i1 %.not7.i.i.i, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto.exit, label %bb.h

_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.4.1.i.i.i.i = phi i64 [ %i.z, %bb.f ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  store i64 0, ptr %1, align 8, !alias.scope !250, !noalias !251
  br label %bb.g

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !253, !noalias !254, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !253, !noalias !254 ; 8 uses
  %.promoted.i.i.i.i.i.i9 = ptrtoaddr ptr %.promoted.i.i.i.i.i.i to i64 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.an
  br i1 %.not6.i.i.i.i.i.i, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.ap = ptrtoaddr ptr %i.an to i64              ; 3 uses
  %i.aq = sub i64 %i.ap, %.promoted.i.i.i.i.i.i9  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add i64 %.sroa.4.0.i.i.i.i, %2
  %i.as = sub i64 %.promoted.i.i.i.i.i.i9, %i.ar
  %diff.check = icmp ugt i64 %i.as, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.aq, 24
  %n.vec = and i64 %i.aq, -32                     ; 5 uses
  %i.au = add i64 %.sroa.4.0.i.i.i.i, %n.vec      ; 2 uses
  %i.av = getelementptr i8, ptr %.promoted.i.i.i.i.i.i, i64 %n.vec ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ab, i64 %.sroa.4.0.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !255
  %wide.load11 = load <16 x i8>, ptr %i.ax, align 1, !noalias !255
  %i.ay = getelementptr i8, ptr %i.aw, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <16 x i8> %wide.load, ptr %i.ay, align 1, !noalias !256
  store <16 x i8> %wide.load11, ptr %i.az, align 1, !noalias !256
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !257

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.aq, -8                    ; 4 uses
  %i.bb = add i64 %.sroa.4.0.i.i.i.i, %n.vec13    ; 2 uses
  %i.bc = getelementptr i8, ptr %.promoted.i.i.i.i.i.i, i64 %n.vec13 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ab, i64 %.sroa.4.0.i.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %next.gep15 = getelementptr i8, ptr %.promoted.i.i.i.i.i.i, i64 %index14
  %wide.load16 = load <8 x i8>, ptr %next.gep15, align 1, !noalias !255
  %i.be = getelementptr i8, ptr %i.bd, i64 %index14
  store <8 x i8> %wide.load16, ptr %i.be, align 1, !noalias !256
  %index.next17 = add nuw i64 %index14, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next17, %n.vec13
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !230

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.aq, %n.vec13
  br i1 %cmp.n18, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.i.i.i.i, %iter.check ], [ %.sroa.4.0.i.i.i.i, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 2 uses
  %.ph21 = phi ptr [ %.promoted.i.i.i.i.i.i, %iter.check ], [ %.promoted.i.i.i.i.i.i, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 3 uses
  %.ph2124 = ptrtoaddr ptr %.ph21 to i64          ; 2 uses
  %i.bg = sub i64 %i.ap, %.ph2124
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %i.bh = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bi = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.prol ], [ %.ph21, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !255, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bh
  store i8 %i.bj, ptr %i.bl, align 1, !noalias !256
  %i.bm = add i64 %i.bh, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !231

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa23.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa22.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr25 = phi ptr [ %.ph21, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bn = sub i64 %.ph2124, %i.ap
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa8 = phi ptr [ %i.bc, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %.lcssa23.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa = phi i64 [ %i.bb, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %.lcssa22.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.lcssa8, ptr %i.ao, align 8, !alias.scope !253, !noalias !254
  br label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %i.bp = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bq = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i ], [ %.unr25, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.br = load i8, ptr %i.bq, align 1, !noalias !255, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bp
  store i8 %i.br, ptr %i.bt, align 1, !noalias !256
  %i.bu = load i8, ptr %i.bs, align 1, !noalias !255, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bw = getelementptr i8, ptr %i.ab, i64 %i.bp
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  store i8 %i.bu, ptr %i.bx, align 1, !noalias !256
  %i.by = load i8, ptr %i.bv, align 1, !noalias !255, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.ca = getelementptr i8, ptr %i.ab, i64 %i.bp
  %i.cb = getelementptr i8, ptr %i.ca, i64 2
  store i8 %i.by, ptr %i.cb, align 1, !noalias !256
  %i.cc = load i8, ptr %i.bz, align 1, !noalias !255, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.ab, i64 %i.bp
  %i.cf = getelementptr i8, ptr %i.ce, i64 3
  store i8 %i.cc, ptr %i.cf, align 1, !noalias !256
  %i.cg = add i64 %i.bp, 4                        ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.cd, %i.an
  br i1 %.not.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !232

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto.exit.i
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !259
  unreachable

_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %.thread.i, %bb.g, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.h, %.thread.i ], [ %i.u, %bb.g ], [ %i.u, %._crit_edge.i.i.i.i.i.i ], [ %i.u, %bb.h ]
  %.val3.i.sink.i.i.i.i.i = phi i64 [ %i.i, %.thread.i ], [ %.sroa.4.0.i.i.i.i, %bb.g ], [ %.lcssa, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %bb.h ]
  store i64 %.val3.i.sink.i.i.i.i.i, ptr %i.ch, align 8, !alias.scope !233, !noalias !260
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtB1A_3zip3ZipINtNtNtB1E_5slice4iter4IterhEB2A_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0EE9from_iterCs54uEYnqmHDA_13signal_crypto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.d, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4
  %i.f = sub i64 %.val3, %.val                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !7, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtB12_3zip3ZipINtNtNtB16_5slice4iter4IterhEB22_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0EECs54uEYnqmHDA_13signal_crypto.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #17
  unreachable

_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtB12_3zip3ZipINtNtNtB16_5slice4iter4IterhEB22_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0EECs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.q, align 8, !noalias !267
  store ptr %i.p, ptr %i.a, align 8, !noalias !267
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.r, align 8, !noalias !267
  invoke void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1d_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2t_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VechE14extend_trustedBN_E0E0ECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtB12_3zip3ZipINtNtNtB16_5slice4iter4IterhEB22_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0EECs54uEYnqmHDA_13signal_crypto.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtB12_3zip3ZipINtNtNtB16_5slice4iter4IterhEB22_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0EECs54uEYnqmHDA_13signal_crypto.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.s
}

end_hunk_0
