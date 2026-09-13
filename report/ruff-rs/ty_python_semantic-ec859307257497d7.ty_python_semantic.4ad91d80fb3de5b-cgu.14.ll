Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.14?download=true
inline.NumInlined: 8764
inline.NumDeleted: 4182
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXsS_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq
define internal fastcc noundef zeroext i1 @_RNvXsS_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #26 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20549)
  %i.a = load i32, ptr %0, align 4, !range !138, !alias.scope !20548, !noalias !20549, !noundef !22 ; 4 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %i.a, i32 4) ; 2 uses
  %i.c = load i32, ptr %1, align 4, !range !138, !alias.scope !20549, !noalias !20548, !noundef !22 ; 4 uses
  %i.d = icmp slt i32 %i.c, 5
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.c, i32 4)
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %default.unreachable [
    i32 4, label %bb.c
    i32 5, label %bb.s
    i32 6, label %bb.t
  ]

default.unreachable:                              ; preds = %bb.g, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20551)
  %i.g = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.h = icmp eq i32 %i.c, -1                     ; 3 uses
  %i.i = xor i1 %i.g, %i.h
  br i1 %i.i, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !20552, !noalias !20553, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !20553, !noalias !20552, !noundef !22
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.r, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
  %i.o = xor i1 %i.h, true
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20555)
  %i.p = icmp eq i32 %i.a, %i.c
  br i1 %i.p, label %bb.g, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !20556, !noalias !20557, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !20557, !noalias !20556, !noundef !22
  %i.u = icmp eq i32 %i.r, %i.t                   ; 5 uses
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.m, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.n, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.o, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.p, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.q, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !range !24, !alias.scope !20556, !noalias !20557, !noundef !22
  %i.y = load i32, ptr %i.v, align 4, !range !24, !alias.scope !20557, !noalias !20556, !noundef !22
  %i.z = icmp eq i32 %i.x, %i.y
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !24, !alias.scope !20556, !noalias !20557, !noundef !22
  %i.ad = load i32, ptr %i.aa, align 4, !range !24, !alias.scope !20557, !noalias !20556, !noundef !22
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !24, !alias.scope !20556, !noalias !20557, !noundef !22
  %i.ai = load i32, ptr %i.af, align 4, !range !24, !alias.scope !20557, !noalias !20556, !noundef !22
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !24, !alias.scope !20556, !noalias !20557, !noundef !22
  %i.an = load i32, ptr %i.ak, align 4, !range !24, !alias.scope !20557, !noalias !20556, !noundef !22
  %i.ao = icmp eq i32 %i.am, %i.an
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !24, !alias.scope !20556, !noalias !20557, !noundef !22
  %i.as = load i32, ptr %i.ap, align 4, !range !24, !alias.scope !20557, !noalias !20556, !noundef !22
  %i.at = icmp eq i32 %i.ar, %i.as
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !range !24, !alias.scope !20552, !noalias !20553, !noundef !22
  %i.ax = load i32, ptr %i.au, align 4, !range !24, !alias.scope !20553, !noalias !20552, !noundef !22
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !20548, !noalias !20549, !noundef !22
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !20549, !noalias !20548, !noundef !22
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.u, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !20548, !noalias !20549, !noundef !22
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !20549, !noalias !20548, !noundef !22
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.v, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !range !24, !alias.scope !20548, !noalias !20549, !noundef !22
  %i.bm = load i32, ptr %i.bj, align 4, !range !24, !alias.scope !20549, !noalias !20548, !noundef !22
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !range !24, !alias.scope !20548, !noalias !20549, !noundef !22
  %i.br = load i32, ptr %i.bo, align 4, !range !24, !alias.scope !20549, !noalias !20548, !noundef !22
  %i.bs = icmp eq i32 %i.bq, %i.br
  br label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.t ], [ %i.bn, %bb.u ], [ false, %bb.a ], [ %i.bs, %bb.v ], [ false, %bb.s ], [ %i.ay, %bb.r ], [ false, %bb.c ], [ false, %bb.e ], [ %i.z, %bb.m ], [ false, %bb.f ], [ %i.ae, %bb.n ], [ false, %bb.h ], [ %i.aj, %bb.o ], [ false, %bb.i ], [ %i.ao, %bb.p ], [ false, %bb.j ], [ %i.at, %bb.q ], [ false, %bb.k ], [ false, %bb.l ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CscxDUFidjJwY_9inventoryNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNtB4_10ErasedNode6submitCsoTR8nlGN3X_18ty_python_semantic(ptr noalias readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs0_CscxDUFidjJwY_9inventoryNtB5_8Registry6submit(ptr noundef nonnull align 8 @_RNvNvXsA_NtCs45bxiIjzMqg_5salsa5zalsaNtB7_9ErasedJarNtCscxDUFidjJwY_9inventory7Collect8registry8REGISTRY, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !22, !align !25, !noundef !22
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsh7jLiOpeRCu_8ordermap3mapINtB4_8OrderMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBO_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtB2v_3fmt5Debug3fmtBS_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !22
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.e
  %i.g = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityRNtB15_20BoundTypeVarInstanceINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB13_B2h_EEB19_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef ptr @_RNvXs_NtCsoTR8nlGN3X_18ty_python_semantic9subscriptRShNtB4_7PyIndex8py_indexB6_(ptr noalias noundef nonnull readonly captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %3, ptr nofree noundef nonnull readnone align 4 captures(none) %4, i32 noundef %5) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i32 %5, 0
  %6 = sub i32 0, %5
  %7 = zext i32 %6 to i64                         ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %8 = add nsw i64 %7, -1
  %.not11 = icmp samesign ugt i64 %1, %8
  br i1 %.not11, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %5 to i64                  ; 2 uses
  %i.c = icmp samesign ugt i64 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %.sroa.0.0 = select i1 %i.c, ptr %i.d, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.b, %bb.c
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.c ], [ %i.f, %bb.e ], [ null, %bb.b ]
  ret ptr %.sroa.0.1

bb.e:                                             ; preds = %bb.b
  %i.e = sub nsw i64 0, %7
  %9 = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %9, i64 %i.e
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1V_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3set7HashSetNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1v_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB4_14SubclassOfTypeNtNtB6_8variance17VarianceInferable11variance_of(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(28) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = load i32, ptr %0, align 4, !range !84, !noundef !22
  switch i32 %i.d, label %default.unreachable3 [
    i32 0, label %bb.b
    i32 1, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  switch i32 %.sroa.0.0.copyload, label %default.unreachable.i [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 2, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 3, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 4, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20571
  store i32 %.sroa.4.0.copyload, ptr %i.b, align 4, !noalias !20572
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.6.0.copyload, ptr %i.f, align 4, !noalias !20572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20572
  store ptr %1, ptr %i.a, align 8, !noalias !20572
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.g, align 8, !noalias !20572
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.h, align 8, !noalias !20572
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !20572
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !20572
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %4, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !20572
  %i.i = call noundef range(i8 0, 4) i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8variance15TypeVarVarianceDNtNtB1Z_2db2DbEL_NCNvNvMsU_NtB1X_5classNtB3u_12GenericAlias17variance_of_owner18variance_of_owner_0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @235, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !20573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20571
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

default.unreachable.i:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef i8 @_RNvXs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteralNtNtB9_8variance17VarianceInferable11variance_of(i32 noundef %.sroa.4.0.copyload, i32 noundef %.sroa.6.0.copyload, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(28) %4), !noalias !20573
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = tail call noundef i8 @_RNvXs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceTypeNtNtB7_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.k, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(28) %4)
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = load <2 x i32>, ptr %i.m, align 4
  store <2 x i32> %i.o, ptr %i.n, align 4
  store i32 29, ptr %i.c, align 4
  %i.p = call noundef i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a, %bb.f, %bb.e
  %.sroa.0.0 = phi i8 [ 3, %bb.a ], [ %i.p, %bb.f ], [ %i.l, %bb.e ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ 3, %bb.b ], [ 3, %bb.b ], [ 3, %bb.b ], [ 3, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtBa_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEj2_NtB4_11PartialDrop12partial_dropB1Y_(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitINtNtB8_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEENtB2_11PartialDrop12partial_dropB1W_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i, %bb.b
  %.sroa.0.07.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.07.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20594)
  %i.f = load i32, ptr %i.d, align 8, !range !30, !alias.scope !20595, !noundef !22
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20597)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20601)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  %i.j = load i8, ptr %i.i, align 1, !range !29, !alias.scope !20602, !noundef !22
  %i.k = and i8 %i.j, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, -48
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20603)
  %.pn.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !20604, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.l = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !20605
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i, !prof !23

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.n = icmp eq i64 %i.e, %i.b
  br i1 %i.n, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitINtNtB8_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEENtB2_11PartialDrop12partial_dropB1W_.exit, label %bb.c

bb.g:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.0.1.i.i7, 1               ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.b
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.e, %i.b
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i7 = phi i64 [ %i.o, %bb.g ], [ %i.e, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.1.i.i7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_(ptr noalias noundef align 8 dereferenceable(48) %i.s) #52
          to label %bb.g unwind label %bb.i

._crit_edge:                                      ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.q

end_hunk_0
