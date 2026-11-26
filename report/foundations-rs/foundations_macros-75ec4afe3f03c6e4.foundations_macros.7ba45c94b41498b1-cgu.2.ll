Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.2?download=true
inline.NumInlined: 208
inline.NumDeleted: 124
begin_hunk_0_@_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaC8UfsfJL0H_18foundations_macros:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull byval([40 x i8]) align 8 %i.c, i64 1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr nonnull byval([40 x i8]) align 8 %i.a) #27, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn3lit6LitStrE8grow_oneCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaC8UfsfJL0H_18foundations_macros7metrics6ItemFnE8grow_oneBQ_(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 552) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEE8grow_oneBR_(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 808) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtCs6bAnw1I7Lci_3syn5token5CommaEE8grow_oneBR_(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 1008) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdNtCse4VeaA6Ikg_11proc_macro24SpanEE8grow_oneCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 16) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaC8UfsfJL0H_18foundations_macros(ptr %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = or disjoint i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCsaC8UfsfJL0H_18foundations_macros(i32 %0, ptr nofree writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  %i.c = trunc i32 %0 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %0, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %0, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %0, 18
  %i.o = trunc i32 %i.n to i8
  %i.p = or i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %0 to i8
  store i8 %i.q, ptr %1, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.s, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i32 %0, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.k, -32
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.e, ptr %i.w, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.e, ptr %i.z, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.d, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation21validate_bucket_array(ptr noalias align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 2 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 2 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 12 uses
  %i.v = load i64, ptr %1, align 8
  %i.w = icmp eq i64 %i.v, 28
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  call void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEE3newCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.u) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = invoke { ptr, ptr } @_RNvXs9_NtCs6bAnw1I7Lci_3syn10punctuatedRINtB5_10PunctuatedNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ab)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.aq

.loopexit.split-lp.a:                             ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp46, %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEECsaC8UfsfJL0H_18foundations_macros(ptr align 8 %i.u) #24
          to label %common.resume unwind label %bb.ay

.loopexit:                                        ; preds = %bb.ae, %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %3, ptr %i.m, align 8
  store ptr %2, ptr %i.l, align 8
  store double %i.bo, ptr %i.q, align 8
  br label %.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.s, %bb.t, %bb.v, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.a

bb.f:                                             ; preds = %bb.d
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  store ptr %i.ad, ptr %i.t, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.av, %bb.f
  %i.aj = invoke align 8 ptr @_RNvXst_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_4IterNtNtB7_4expr4ExprENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.t)
          to label %bb.h unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.q, %.noexc, %bb.m, %bb.av, %bb.ar, %bb.g, %bb.at
  %lpad.loopexit.split-lp46 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4expr4ExprEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.t) #24
          to label %.loopexit.split-lp.a unwind label %bb.ay

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !81
  switch i64 %i.ak, label %bb.j [
    i64 19, label %bb.k
    i64 35, label %bb.l
  ]

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !81
  br label %bb.ar

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noalias !81
  %i.an = icmp eq i64 %i.am, -9223372036854775802
  br i1 %i.an, label %bb.m, label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !noalias !81
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.n, label %bb.j

bb.m:                                             ; preds = %bb.o, %bb.k
  %.sroa.3.0.i = phi double [ 1.000000e+00, %bb.k ], [ -1.000000e+00, %bb.o ]
  %.pn.i = phi ptr [ %i.aj, %bb.k ], [ %i.at, %bb.o ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 40
  invoke void @_RINvMs6_NtCs6bAnw1I7Lci_3syn3litNtB6_8LitFloat12base10_parsedECsje5z0uo7eGy_12darling_core(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %.sroa.0.0.i)
          to label %.noexc unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !81

.noexc:                                           ; preds = %bb.m
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultdNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #23
          to label %.noexc15 unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !81

.noexc15:                                         ; preds = %.noexc
  %i.ar = load i64, ptr %i.c, align 8, !noalias !81
  %.not.i = icmp eq i64 %i.ar, -1
  br i1 %.not.i, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !noalias !81 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !81
  %i.av = icmp eq i64 %i.au, 19
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !81
  %i.ay = icmp eq i64 %i.ax, -9223372036854775802
  br i1 %i.ay, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !81
  br label %bb.ar

bb.q:                                             ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !81
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1H_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.a, ptr nonnull align 8 @13) #23
          to label %bb.ar unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.noexc15
  %i.az = load double, ptr %i.ag, align 8, !noalias !81
  %i.ba = invoke i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4expr4ExprNtB2_7Spanned4spanCsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.aj)
          to label %.noexc17 unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !81

.noexc17:                                         ; preds = %bb.r
  %i.bb = fmul double %.sroa.3.0.i, %i.az
  store i64 1, ptr %i.ah, align 8, !alias.scope !81
  store double %i.bb, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !81
  store i32 %i.ba, ptr %.sroa.39.0..sroa_idx.i, align 8, !alias.scope !81
  store i64 0, ptr %i.r, align 8, !alias.scope !81
  br label %bb.ar

bb.s:                                             ; preds = %bb.h
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4expr4ExprEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.t)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bc = invoke zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEE8is_emptyCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  br i1 %i.bc, label %.loopexit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = invoke align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u, i64 0, ptr nonnull align 8 @14)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit24:                                      ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEEENtNtNtB8_6traits8iterator8Iterator4nextCsaC8UfsfJL0H_18foundations_macros.exit, %bb.u
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEECsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.w

bb.w:                                             ; preds = %.loopexit24
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.u, i64 8, i64 16)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.a, %bb.ao, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.ao ], [ %i.be, %bb.w ], [ %.pn, %.loopexit.split-lp.a ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEECsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %.loopexit24
  call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.u, i64 8, i64 16)
  br label %bb.aq

bb.y:                                             ; preds = %bb.v
  %i.bg = load double, ptr %i.bd, align 8         ; 2 uses
  store double %i.bg, ptr %i.q, align 8
  %i.bh = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  %i.bk = invoke { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTdNtCse4VeaA6Ikg_11proc_macro24SpanE4iterCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %i.bi, i64 %i.bj)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  invoke void @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr %i.bl, ptr %i.bm)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtNtBb_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEENtNtNtB9_6traits8iterator8Iterator4skipCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o, i64 1)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %i.bo = phi double [ %i.bu, %bb.ag ], [ %i.bg, %bb.ac ] ; 3 uses
  %2 = phi ptr [ %i.bs, %bb.ag ], [ undef, %bb.ac ]
  %3 = phi i64 [ %i.bt, %bb.ag ], [ undef, %bb.ac ]
  %i.bp = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i18, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bq = invoke { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEENtNtNtB8_6traits8iterator8Iterator4nextCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.n) #23
          to label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEEENtNtNtB8_6traits8iterator8Iterator4nextCsaC8UfsfJL0H_18foundations_macros.exit unwind label %.loopexit

bb.af:                                            ; preds = %bb.ad
  store i64 0, ptr %i.bn, align 8
  %i.br = invoke { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEENtNtNtB8_6traits8iterator8Iterator3nthCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.n, i64 %i.bp) #23
          to label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEEENtNtNtB8_6traits8iterator8Iterator4nextCsaC8UfsfJL0H_18foundations_macros.exit unwind label %.loopexit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEEENtNtNtB8_6traits8iterator8Iterator4nextCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.ae, %bb.af
  %.pn.i19 = phi { i64, ptr } [ %i.bq, %bb.ae ], [ %i.br, %bb.af ] ; 2 uses
  %i.bs = extractvalue { i64, ptr } %.pn.i19, 1   ; 5 uses
  %.not13 = icmp eq ptr %i.bs, null
  br i1 %.not13, label %.loopexit24, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEEEENtNtNtB8_6traits8iterator8Iterator4nextCsaC8UfsfJL0H_18foundations_macros.exit
  %i.bt = extractvalue { i64, ptr } %.pn.i19, 0   ; 2 uses
  %i.bu = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bv = fcmp ugt double %i.bu, %i.bo
  br i1 %i.bv, label %bb.ad, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 %i.bt, ptr %i.m, align 8
  store ptr %i.bs, ptr %i.l, align 8
  store double %i.bo, ptr %i.q, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayjECse4VeaA6Ikg_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.i, ptr nonnull align 8 %i.m)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayRdECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 8 %i.l)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaydECse4VeaA6Ikg_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.g, ptr nonnull align 8 %i.q)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull @15, ptr nonnull %i.j)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bz = load i32, ptr %i.bw, align 4
  invoke void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringEB5_(ptr nonnull sret([24 x i8]) align 8 %i.f, i32 %i.bz, ptr nonnull align 8 %i.e)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.ax, %bb.am
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEECsaC8UfsfJL0H_18foundations_macros.exit23 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.u, i64 8, i64 16)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEECsaC8UfsfJL0H_18foundations_macros.exit23: ; preds = %bb.an
  call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.u, i64 8, i64 16)
  br label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEECsaC8UfsfJL0H_18foundations_macros.exit23, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEECsaC8UfsfJL0H_18foundations_macros.exit, %bb.e, %bb.c
  ret void

bb.ar:                                            ; preds = %.noexc17, %bb.p, %bb.j, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %bb.as unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.cc = load i64, ptr %i.s, align 8
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @16)
          to label %bb.ax unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  %.sroa.02.0.copyload = load i64, ptr %i.ai, align 8
  %i.ce = trunc nuw i64 %.sroa.02.0.copyload to i1
  br i1 %i.ce, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEE4pushCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u, double %.sroa.2.0.copyload, i32 %.sroa.3.0.copyload)
          to label %bb.g unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.au
  store i64 -1, ptr %0, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4expr4ExprEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.t)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.a
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation26validate_histogram_buckets(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @17, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 7, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = tail call { ptr, ptr } @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr10FieldValueNtNtB4_5token5CommaE4iterCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.h) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.j, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = invoke align 8 ptr @_RINvYINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtB8_4expr10FieldValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_mapRNtBJ_4ExprNCNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field0EB2t_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtBM_4expr10FieldValueEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.a) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4expr10FieldValueEECsaC8UfsfJL0H_18foundations_macros.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4expr10FieldValueEECsaC8UfsfJL0H_18foundations_macros.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.n

_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field.exit: ; preds = %bb.a
  call void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtBM_4expr10FieldValueEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs6bAnw1I7Lci_3syn4expr4ExprE10ok_or_elseNtNtBN_5error5ErrorNCNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation26validate_histogram_buckets0EB1T_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr align 8 %i.m, ptr nonnull align 8 %i.f) #23
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRNtNtCs6bAnw1I7Lci_3syn4expr4ExprNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d) #23
  %i.p = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @18) #23
  br label %bb.f

bb.e:                                             ; preds = %_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call fastcc void @_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation21validate_bucket_array(ptr noalias align 8 %0, ptr align 8 %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation33validate_native_histogram_buckets(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @19, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 15, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = tail call { ptr, ptr } @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr10FieldValueNtNtB4_5token5CommaE4iterCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  store ptr %i.f, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = invoke align 8 ptr @_RINvYINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtB8_4expr10FieldValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_mapRNtBJ_4ExprNCNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field0EB2t_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtBM_4expr10FieldValueEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.a) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4expr10FieldValueEECsaC8UfsfJL0H_18foundations_macros.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4expr10FieldValueEECsaC8UfsfJL0H_18foundations_macros.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.j

_RNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field.exit: ; preds = %bb.a
  call void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtBM_4expr10FieldValueEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
