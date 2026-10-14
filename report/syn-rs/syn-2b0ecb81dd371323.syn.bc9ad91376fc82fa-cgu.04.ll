Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.04?download=true
inline.NumInlined: 577
inline.NumDeleted: 192
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsgbWeKYPjk8w_3syn4data7parsingNtB4_7VariantNtNtB6_5parse5Parse5parse:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i120, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit119, %bb.g
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.thread190, %bb.d, %bb.bl
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.bl ], [ %.pn106189, %.thread190 ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

.thread190:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, %bb.bk, %bb.e
  %.pn106189 = phi { ptr, i32 } [ %i.bl, %bb.bk ], [ %i.r, %bb.e ], [ %.pn104, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #20
          to label %common.resume unwind label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsgbWeKYPjk8w_3syn4data8printingNtB4_7VariantNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = getelementptr inbounds nuw [248 x i8], ptr %i.b, i64 %i.d
  tail call void @_RINvNvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load i64, ptr %0, align 8, !range !19, !alias.scope !1196, !noalias !1197, !noundef !6
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMscu_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Brace8surroundNCNvXs_NtNtB9_4data8printingNtB10_11FieldsNamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
  br label %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs0_NtNtB9_4data8printingNtB11_13FieldsUnnamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
  br label %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXsc_NtCsgbWeKYPjk8w_3syn4exprNtB5_4ExprNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1206
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  %i.g = icmp samesign ult i64 %i.f, 16
  br i1 %i.g, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit11, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.f)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.loopexit, label %.loopexit11

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.sroa.04.011.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.04.011.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1207, !noundef !6
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i64 %.sroa.04.011.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i, label %.loopexit11, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %.sroa.5.0.i = phi i64 [ %i.j, %.noexc ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.5.0.i, %i.f
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.d

.loopexit11:                                      ; preds = %bb.c, %.noexc, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.q = call { ptr, i64 } @_RNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB4_7CString19__from_vec_unchecked(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit11, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.v

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtCsgbWeKYPjk8w_3syn4dataRNtB5_6FieldsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !alias.scope !1210, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RNvMNtCsgbWeKYPjk8w_3syn4dataNtB2_6Fields4iter.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { ptr, ptr } @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn4dataNtB2_6Fields4iter.exit

_RNvMNtCsgbWeKYPjk8w_3syn4dataNtB2_6Fields4iter.exit: ; preds = %bb.a, %.sink.split.i
  %.merged.i = phi { ptr, ptr } [ { ptr inttoptr (i64 1 to ptr), ptr @5 }, %bb.a ], [ %i.d, %.sink.split.i ]
  ret { ptr, ptr } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsgbWeKYPjk8w_3syn6bigintNtB5_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9MulAssignhE10mul_assign(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1213, !noundef !6 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1213, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = tail call noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 2), !noalias !1213
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i64
  %i.i = add nuw i64 %i.b, %i.h
  %i.j = tail call noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 1), !noalias !1213
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw i64 %i.i, %i.l
  tail call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, i8 noundef 0)
  %i.n = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.p = icmp samesign eq i64 %i.o, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.o, 1
  %2 = icmp eq i64 %i.o, 1
  br i1 %2, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.04 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %.sroa.01.03 = phi ptr [ %i.n, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 1 ; 2 uses
  %4 = load i8, ptr %.sroa.01.03, align 1, !noundef !6
  %5 = mul i8 %4, %1
  %6 = add i8 %5, %.sroa.0.04                     ; 2 uses
  %7 = urem i8 %6, 10
  store i8 %7, ptr %.sroa.01.03, align 1
  %8 = udiv i8 %6, 10
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 2 ; 2 uses
  %i.r = load i8, ptr %3, align 1, !noundef !6
  %i.s = mul i8 %i.r, %1
  %i.t = add i8 %i.s, %8                          ; 2 uses
  %i.u = urem i8 %i.t, 10
  store i8 %i.u, ptr %3, align 1
  %i.v = udiv i8 %i.t, 10                         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %i.w = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %i.w, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.04.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.01.03.epil.init = phi ptr [ %i.n, %.lr.ph.preheader ], [ %i.q, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %9 = load i8, ptr %.sroa.01.03.epil.init, align 1, !noundef !6
  %10 = mul i8 %9, %1
  %11 = add i8 %10, %.sroa.0.04.epil.init
  %12 = urem i8 %11, 10
  store i8 %12, ptr %.sroa.01.03.epil.init, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn4data7parsingNtB7_13FieldsUnnamedNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %1)
  %i.d = load i64, ptr %i.a, align 8, !range !17, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE21parse_terminated_withB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.c, ptr noundef nonnull @_RNvMs1_NtNtCsgbWeKYPjk8w_3syn4data7parsingNtB7_5Field13parse_unnamed)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #20
          to label %common.resume unwind label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.b, align 8, !range !5, !noundef !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  br i1 %i.k, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1261, !noundef !6 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.p, align 8, !noalias !1262, !noundef !6
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.p, align 8, !noalias !1262
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #21
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1266, !noundef !6 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %i.v, align 8, !noalias !1267, !noundef !6
  %i.y = add i64 %i.x, -1                         ; 2 uses
  store i64 %i.y, ptr %i.v, align 8, !noalias !1267
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.m:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.o, %bb.p, %bb.q, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.n, %bb.g ], [ %i.n, %bb.i ], [ %i.n, %bb.h ], [ %i.ab, %bb.q ], [ %i.ab, %bb.p ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.v

bb.n:                                             ; preds = %bb.e
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false)
  store i64 %i.j, ptr %0, align 8
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1271, !noundef !6 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !noalias !1272, !noundef !6
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr %i.ad, align 8, !noalias !1272
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #21
          to label %common.resume unwind label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1276, !noundef !6 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit11, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = load i64, ptr %i.aj, align 8, !noalias !1277, !noundef !6
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.aj, align 8, !noalias !1277
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit11

bb.t:                                             ; preds = %bb.s
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit11

bb.u:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit11: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit11
  ret void

bb.w:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn4data8printingNtB7_13FieldsUnnamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs0_NtNtB9_4data8printingNtB11_13FieldsUnnamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter7sources5emptyINtB5_5EmptyQNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backB14_(ptr noalias nofree nonnull readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter7sources5emptyINtB5_5EmptyRNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backB14_(ptr noalias nofree nonnull readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr null
}

end_hunk_0
