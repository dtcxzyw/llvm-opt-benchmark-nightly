Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i64, ptr %i.q, align 8, !range !26, !noundef !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8
  call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.p, i64 noundef %i.r, i64 %i.t)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3lex(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) initializes((57, 58)) %2, i64 noundef range(i64 0, 5) %3, i64 %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.val14 = load i64, ptr %i.d, align 8, !noundef !20 ; 2 uses
  call fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %2)
  %i.e = load i8, ptr %i.b, align 8, !range !22, !noundef !20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.sroa.022.0 = phi i8 [ %i.e, %bb.a ], [ %i.al, %bb.n ] ; 8 uses
  %.sroa.0.025 = phi i64 [ %.val14, %bb.a ], [ %.val, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i8 [ 0, %bb.a ], [ %i.ab, %bb.n ] ; 6 uses
  %.sroa.02.0 = phi i1 [ false, %bb.a ], [ %i.y, %bb.n ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.n ] ; 2 uses
  switch i8 %.sroa.022.0, label %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit [
    i8 2, label %bb.j
    i8 3, label %bb.j
    i8 4, label %bb.j
    i8 7, label %bb.j
    i8 9, label %bb.j
  ]

_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit: ; preds = %bb.b
  br i1 %.sroa.02.0, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %.thread28, %bb.i, %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit
  %.sroa.3.sroa.2.0 = phi i8 [ undef, %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit ], [ %.sroa.04.0, %bb.i ], [ %.sroa.04.0, %.thread28 ], [ %.sroa.04.0, %bb.g ], [ %.sroa.04.0, %bb.e ]
  %.sroa.3.sroa.0.0 = phi i64 [ undef, %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit ], [ %.sroa.310.0, %bb.i ], [ %.sroa.310.0, %.thread28 ], [ %.sroa.310.0, %bb.g ], [ %.sroa.310.0, %bb.e ]
  %.sroa.06.0 = phi i64 [ 2, %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit ], [ %.sroa.09.0, %bb.i ], [ %.sroa.09.0, %.thread28 ], [ 0, %bb.g ], [ %.sroa.09.0, %bb.e ]
  %i.j = phi i8 [ %.sroa.022.0, %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit ], [ %.sroa.022.0, %bb.i ], [ 0, %.thread28 ], [ %.sroa.022.0, %bb.g ], [ %.sroa.022.0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0, ptr %i.m, align 8
  store i64 %.sroa.06.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.sroa.0.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.3.sroa.2.0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.025, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.val14, ptr %i.o, align 8
  ret void

bb.c:                                             ; preds = %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind9is_trivia.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val18 = load i8, ptr %i.p, align 8, !range !25, !noundef !20
  %i.q = icmp eq i8 %.val18, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call fastcc noundef i64 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2_5Lexer6column(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef %.sroa.0.025)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.310.0 = phi i64 [ undef, %bb.c ], [ %i.r, %bb.d ] ; 5 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.c ], [ 1, %bb.d ] ; 4 uses
  switch i64 %3, label %default.unreachable [
    i64 0, label %.thread
    i64 1, label %.thread28
    i64 2, label %bb.f
    i64 3, label %bb.i
    i64 4, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %switch.selectcmp.case1.i = icmp ne i8 %.sroa.022.0, 62
  %switch.selectcmp.case2.i = icmp ne i8 %.sroa.022.0, 88
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.s = zext i1 %switch.selectcmp.not.i to i8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.t = trunc nuw i64 %.sroa.09.0 to i1
  br i1 %i.t, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ule i64 %.sroa.310.0, %4
  %i.v = zext i1 %i.u to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %.sroa.02.0.i = phi i8 [ %.sroa.04.0, %bb.e ], [ %i.v, %bb.h ], [ %i.s, %bb.f ]
  %i.w = trunc nuw i8 %.sroa.02.0.i to i1
  br i1 %i.w, label %.thread28, label %.thread

.thread28:                                        ; preds = %bb.e, %bb.i
  br label %.thread

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.val17 = load i8, ptr %i.f, align 1, !range !21, !noundef !20
  %i.x = trunc nuw i8 %.val17 to i1
  %i.y = or i1 %.sroa.02.0, %i.x
  %i.z = icmp eq i8 %.sroa.022.0, 9
  %i.aa = zext i1 %i.z to i8
  %i.ab = or i8 %.sroa.04.0, %i.aa
  %i.ac = add i64 %.sroa.0.0, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4082)
  %i.ad = load i64, ptr %i.g, align 8, !alias.scope !4082, !noundef !20 ; 3 uses
  %i.ae = load i64, ptr %1, align 8, !range !34, !alias.scope !4082, !noundef !20
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.l, !noalias !4083

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.c) #59
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4084
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.k
  %i.ai = load ptr, ptr %i.h, align 8, !alias.scope !4082, !nonnull !20, !noundef !20
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ak = add i64 %i.ad, 1
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !4082
  %.val = load i64, ptr %i.d, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %2)
  %i.al = load i8, ptr %i.a, align 8, !range !22, !noundef !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

.body:                                            ; preds = %bb.l
  resume { ptr, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0, i64 noundef %1, i8 noundef range(i8 0, -119) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !20 ; 4 uses
  %i.g = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !noundef !20 ; 15 uses
  %i.j = sub i64 %i.f, %i.i                       ; 12 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %1) ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4125)
  %i.k = icmp ugt i64 %i.i, %i.f
  br i1 %i.k, label %bb.b, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @544) #62, !noalias !4126
  unreachable

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit: ; preds = %bb.a
  store i64 %..i, ptr %i.e, align 8, !alias.scope !4125
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4125, !nonnull !20, !noundef !20 ; 13 uses
  %.idx7 = shl nuw nsw i64 %..i, 5                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx7 ; 3 uses
  %.idx = shl nuw nsw i64 %i.j, 5                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4127
  %i.p = ptrtoint ptr %i.o to i64
  %gepdiff = sub nuw nsw i64 %.idx, %.idx7        ; 3 uses
  %i.q = lshr exact i64 %gepdiff, 5               ; 2 uses
  %i.r = icmp samesign eq i64 %.idx, %.idx7
  br i1 %i.r, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.thread: ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit
  store i64 0, ptr %i.a, align 8, !noalias !4127
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !4127
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !4128
  %i.u = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %gepdiff, i64 noundef range(i64 1, 9) 8) #60, !noalias !4128 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.preheader

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %gepdiff) #58
          to label %.noexc.i unwind label %bb.o, !noalias !4127

.noexc.i:                                         ; preds = %bb.c
  unreachable

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.preheader: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.q, ptr %i.a, align 8, !noalias !4127
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !4127
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  br label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.preheader, %bb.d
  %i.y = phi i64 [ %i.ac, %bb.d ], [ 0, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = phi ptr [ %i.aa, %bb.d ], [ %i.n, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  %.sroa.0.0.copyload6.i.i.i.i.i = load i8, ptr %i.z, align 8, !noalias !4131 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload6.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i
  %.sroa.7.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.y ; 2 uses
  store i8 %.sroa.0.0.copyload6.i.i.i.i.i, ptr %i.ab, align 8, !noalias !4132
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx7.i.i.i.i.i, i64 31, i1 false)
  %i.ac = add nuw nsw i64 %i.y, 1                 ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.o
  br i1 %i.ad, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i.i.i.i: ; preds = %bb.d
  store i64 %i.ac, ptr %i.x, align 8, !alias.scope !4133, !noalias !4134
  br label %bb.e

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.thread
  %3 = phi ptr [ %i.t, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.thread ], [ %i.x, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i ]
  %4 = phi ptr [ %i.n, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.thread ], [ %i.aa, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i ] ; 2 uses
  %.val5.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.thread ], [ %i.y, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i, ptr %3, align 8, !alias.scope !4133, !noalias !4134
  %i.ae = icmp eq ptr %i.o, %4
  br i1 %i.ae, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i.i.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ult i64 %..i, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %.not3.i.i.i.i.i.i.i.i.i.not = icmp ugt i64 %i.j, %1
  br i1 %.not3.i.i.i.i.i.i.i.i.i.not, label %.sink.split.sink.split, label %.sink.split

bb.g:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i6.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i6.i.i.i, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp ult i64 %..i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah), !noalias !4135
  %.not3.i.i.i.i.i.not = icmp ugt i64 %i.j, %1
  br i1 %.not3.i.i.i.i.i.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ai = add nuw nsw i64 %..i, %i.i
  store i64 %i.ai, ptr %i.e, align 8, !noalias !4136
  br label %.body.i

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.j
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %..i
  %i.al = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.aj, i64 %i.al, i1 false), !noalias !4136
  br label %bb.i

bb.k:                                             ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i.i.i.i
  %i.am = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.an = sub nuw i64 %i.p, %i.am
  %i.ao = lshr exact i64 %i.an, 5
  %i.ap = ptrtoint ptr %i.m to i64
  %i.aq = sub nuw i64 %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.ar, i64 noundef %i.ao)
          to label %bb.l unwind label %bb.g, !noalias !4137

bb.l:                                             ; preds = %bb.k
  %.not.i.i4.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i4.i.i.i.i.i.i.i, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp ult i64 %..i, 288230376151711744
  tail call void @llvm.assume(i1 %i.as)
  %.not3.i.i5.i.i.i.i.i.i.i.not = icmp ugt i64 %i.j, %1
  br i1 %.not3.i.i5.i.i.i.i.i.i.i.not, label %.sink.split.sink.split, label %.sink.split

.body.i:                                          ; preds = %bb.i, %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #59
          to label %common.resume unwind label %bb.n, !noalias !4127

bb.n:                                             ; preds = %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.r, %bb.p, %bb.n
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4127
  unreachable

common.resume:                                    ; preds = %bb.aa, %.body.i, %bb.t, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.v ], [ %i.ag, %.body.i ], [ %i.br, %bb.aa ], [ %i.au, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %i.q)
          to label %bb.t unwind label %bb.p, !noalias !4138

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp ult i64 %..i, 288230376151711744
  tail call void @llvm.assume(i1 %i.aw), !noalias !4139
  %.not3.i.i.not = icmp ugt i64 %i.j, %1
  br i1 %.not3.i.i.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.ax = add nuw nsw i64 %..i, %i.i
  store i64 %i.ax, ptr %i.e, align 8, !noalias !4139
  br label %.body

bb.s:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.j
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %..i
  %i.ba = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %i.ba, i1 false), !noalias !4139
  br label %bb.r

bb.t:                                             ; preds = %bb.o
  %.not.i.i4.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i4.i.i, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = icmp ult i64 %..i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bb), !noalias !4139
  %.not3.i.i5.i.i.not = icmp ugt i64 %i.j, %1
  br i1 %.not3.i.i5.i.i.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.bc = add nuw nsw i64 %..i, %i.i
  store i64 %i.bc, ptr %i.e, align 8, !noalias !4138
  br label %common.resume

bb.w:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.j
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %..i
  %i.bf = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.bd, i64 %i.bf, i1 false), !noalias !4138
  br label %bb.v

.sink.split.sink.split:                           ; preds = %bb.m, %bb.f
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.j
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %..i
  %i.bi = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bg, i64 %i.bi, i1 false), !noalias !4137
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.m, %bb.f
  %i.bj = add nuw nsw i64 %..i, %i.i              ; 2 uses
  store i64 %i.bj, ptr %i.e, align 8, !noalias !4137
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.l, %bb.e
  %i.bk = phi i64 [ %..i, %bb.e ], [ %..i, %bb.l ], [ %i.bj, %.sink.split ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i8 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree readonly align 8 captures(address, read_provenance) poison)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  %i.bl = icmp ult i64 %i.bk, 288230376151711744
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.d, align 8, !range !34, !alias.scope !4141, !noundef !20
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %._crit_edge unwind label %bb.aa, !noalias !4142

._crit_edge:                                      ; preds = %bb.y
  %.pre = load ptr, ptr %i.l, align 8, !alias.scope !4141
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.x
  %i.bo = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.x ]
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %..i ; 3 uses
  %i.bq = icmp samesign ult i64 %..i, %i.bk
  br i1 %i.bq, label %bb.ab, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit

bb.aa:                                            ; preds = %bb.y
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #59
          to label %common.resume unwind label %bb.ac, !noalias !4141

bb.ab:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bt = sub nuw nsw i64 %i.bk, %..i
  %i.bu = shl nuw nsw i64 %i.bt, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.bp, i64 %i.bu, i1 false), !noalias !4143
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4144
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit: ; preds = %bb.z, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !4145
  %i.bw = add nuw nsw i64 %i.bk, 1
  store i64 %i.bw, ptr %i.e, align 8, !alias.scope !4141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef range(i8 22, 97) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val = load i8, ptr %i.b, align 8, !range !22, !noundef !20
  %i.c = icmp eq i8 %.val, %1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #62
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i8 noundef range(i8 0, -119) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load i8, ptr %i.a, align 8, !range !22, !noundef !20
  %i.b = icmp eq i8 %.val, %1                     ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret i1 %i.b

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath10virtualize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !20
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.s:                                             ; preds = %bb.n
  %i.am = and i8 %i.y, 127
  %i.an = zext nneg i8 %i.am to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.t:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !5029, !noundef !20
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.u:                                             ; preds = %bb.p
  %i.aq = and i8 %i.ag, 127
  %i.ar = zext nneg i8 %i.aq to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit: ; preds = %bb.o, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.1.i.i = phi i64 [ %i.al, %bb.r ], [ %i.ac, %bb.o ], [ %i.an, %bb.s ], [ %i.ar, %bb.u ], [ %i.ap, %bb.t ]
  %i.as = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %i.as, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef range(i128 0, 2) %1, i128 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %.val = load i64, ptr %i.f, align 8, !noundef !20 ; 3 uses
  %i.g = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !range !26, !alias.scope !5077, !noundef !20 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5077 ; 2 uses
  store i64 0, ptr %i.h, align 8, !alias.scope !5077
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = trunc nuw i128 %1 to i1
  %.val10.us.pre.i.i = load i8, ptr %i.l, align 8, !range !22, !alias.scope !5078 ; 2 uses
  br i1 %i.m, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a, %.sink.split.i.i
  %.val10.us.i.i = phi i8 [ %.val11.us.i.i, %.sink.split.i.i ], [ %.val10.us.pre.i.i, %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.w, %.sink.split.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.o = icmp sgt i8 %.val10.us.i.i, -1           ; 2 uses
  %i.p = zext nneg i8 %.val10.us.i.i to i128      ; 2 uses
  %i.q = lshr i128 1477743627730944, %i.p
  %i.r = trunc i128 %i.q to i1
  %.sroa.0.0.i.us.i.i = select i1 %i.o, i1 %i.r, i1 false
  br i1 %.sroa.0.0.i.us.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.s = lshr i128 2955487255461888, %i.p
  %i.t = trunc i128 %i.s to i1
  %.sroa.0.0.i13.us.i.i = select i1 %i.o, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i13.us.i.i, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 1)
  br label %.sink.split.i.i

bb.d:                                             ; preds = %.split.us.i.i
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.d, %bb.b
  %i.w = phi i64 [ %i.n, %bb.b ], [ %i.v, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5079
  %.val11.us.i.i = load i8, ptr %i.l, align 8, !range !22, !alias.scope !5078, !noundef !20 ; 4 uses
  %i.x = icmp sgt i8 %.val11.us.i.i, -1
  %i.y = zext nneg i8 %.val11.us.i.i to i128
  %i.z = lshr i128 %2, %i.y
  %i.aa = trunc i128 %i.z to i1
  %.sroa.0.0.i14.us.i.i = select i1 %i.x, i1 %i.aa, i1 false
  %i.ab = icmp eq i64 %i.w, 0
  %brmerge.not.us.i.i = and i1 %i.ab, %.sroa.0.0.i14.us.i.i
  %i.ac = icmp eq i8 %.val11.us.i.i, 0
  %or.cond.i.i = or i1 %i.ac, %brmerge.not.us.i.i
  br i1 %or.cond.i.i, label %_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i, label %.split.us.i.i

.split.i.i:                                       ; preds = %bb.a, %.sink.split8.i.i
  %.val10.i.i = phi i8 [ %.val12.i.i, %.sink.split8.i.i ], [ %.val10.us.pre.i.i, %bb.a ] ; 2 uses
  %i.ad = phi i64 [ %i.am, %.sink.split8.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.ae = icmp sgt i8 %.val10.i.i, -1             ; 2 uses
  %i.af = zext nneg i8 %.val10.i.i to i128        ; 2 uses
  %i.ag = lshr i128 1477743627730944, %i.af
  %i.ah = trunc i128 %i.ag to i1
  %.sroa.0.0.i.i.i = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %.sroa.0.0.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.i.i
  %i.ai = lshr i128 2955487255461888, %i.af
  %i.aj = trunc i128 %i.ai to i1
  %.sroa.0.0.i13.i.i = select i1 %i.ae, i1 %i.aj, i1 false
  br i1 %.sroa.0.0.i13.i.i, label %bb.g, label %.sink.split8.i.i

bb.f:                                             ; preds = %.split.i.i
  %i.ak = tail call i64 @llvm.uadd.sat.i64(i64 %i.ad, i64 1)
  br label %.sink.split8.i.i

bb.g:                                             ; preds = %bb.e
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1)
  br label %.sink.split8.i.i

.sink.split8.i.i:                                 ; preds = %bb.f, %bb.g, %bb.e
  %i.am = phi i64 [ %i.ad, %bb.e ], [ %i.al, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5079
  %i.an = icmp eq i64 %i.am, 0
  %.val12.i.i = load i8, ptr %i.l, align 8, !range !22, !alias.scope !5078 ; 2 uses
  %i.ao = icmp eq i8 %.val12.i.i, 0
  %or.cond3.i.i = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond3.i.i, label %_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i, label %.split.i.i

_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i: ; preds = %.sink.split8.i.i, %.sink.split.i.i
  store i64 %i.i, ptr %i.h, align 8, !alias.scope !5077
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !5077
  %i.ap = load i64, ptr %0, align 8, !range !27, !alias.scope !5077, !noundef !20 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !5077
  %i.as = icmp eq i64 %i.i, 0
  br i1 %i.as, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit, label %bb.i

.sink.split.i:                                    ; preds = %bb.n, %bb.k, %bb.j, %bb.i
  %.sink.i = phi i8 [ %switch.select8.i, %bb.j ], [ %.sroa.08.0.i, %bb.n ], [ 0, %bb.i ], [ 0, %bb.k ]
  store i8 %.sink.i, ptr %i.l, align 8, !alias.scope !5077
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i8, ptr %i.at, align 8, !range !21, !alias.scope !5077, !noundef !20
  %.sroa.08.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.08.0.i = load i8, ptr %.sroa.08.0.in.i, align 1, !range !22, !alias.scope !5077, !noundef !20 ; 3 uses
  switch i64 %i.i, label %default.unreachable [
    i64 4, label %bb.l
    i64 1, label %.sink.split.i
    i64 2, label %bb.j
    i64 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %switch.selectcmp.i = icmp eq i8 %.sroa.08.0.i, 88
  %switch.select.i = select i1 %switch.selectcmp.i, i8 88, i8 0
  %switch.selectcmp7.i = icmp eq i8 %.sroa.08.0.i, 62
  %switch.select8.i = select i1 %switch.selectcmp7.i, i8 62, i8 %switch.select.i
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.m, %bb.i
  %.sroa.016.0.i = phi i8 [ %i.au, %bb.i ], [ %i.ay, %bb.m ]
  %i.av = trunc nuw i8 %.sroa.016.0.i to i1
  br i1 %i.av, label %.sink.split.i, label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.aw = trunc nuw i64 %i.ap to i1
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ule i64 %i.ar, %i.k
  %i.ay = zext i1 %i.ax to i8
  br label %bb.k

bb.n:                                             ; preds = %bb.l, %bb.k
  br label %.sink.split.i

_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit: ; preds = %_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i, %bb.h, %.sink.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ba = load i64, ptr %i.f, align 8, !alias.scope !5080, !noundef !20 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, 288230376151711744
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !5080, !noundef !20 ; 10 uses
  %i.be = sub i64 %i.ba, %i.bd                    ; 12 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 range(i64 0, 288230376151711744) %.val) ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5082)
  %i.bf = icmp ugt i64 %i.bd, %i.ba
  br i1 %i.bf, label %bb.o, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit.i, !prof !24

bb.o:                                             ; preds = %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.be, i64 noundef range(i64 0, -9223372036854775808) %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @544) #62, !noalias !5083
  unreachable

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit.i: ; preds = %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit
  store i64 %..i.i, ptr %i.f, align 8, !alias.scope !5084
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !5084, !nonnull !20, !noundef !20 ; 2 uses
  %3 = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %..i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.be ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.be, ptr %i.bj, align 8, !alias.scope !5081, !noalias !5080
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.bd, ptr %i.bk, align 8, !alias.scope !5081, !noalias !5080
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bi, ptr %i.bl, align 8, !alias.scope !5081, !noalias !5080
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.az, ptr %i.bm, align 8, !alias.scope !5081, !noalias !5080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5085)
  %.not.i3 = icmp ugt i64 %i.be, %.val
  br i1 %.not.i3, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i: ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  br label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i

bb.p:                                             ; preds = %_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bq, ptr %i.e, align 8, !alias.scope !5086, !noalias !5080
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #59
          to label %common.resume.i unwind label %bb.aj

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i: ; preds = %bb.ai, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i
  %.sroa.0.020.i.i = phi i64 [ 0, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i ], [ %i.di, %bb.ai ] ; 3 uses
  %i.bp = phi ptr [ %3, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i ], [ %i.bq, %bb.ai ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5087)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 4 uses
  %.sroa.0.0.copyload4.i.i = load i8, ptr %i.bp, align 8, !noalias !5086 ; 3 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i, -1
  br i1 %.not.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i
  %.sroa.7.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx5.i.i, i64 31, i1 false), !noalias !5085
  store i64 %.sroa.0.020.i.i, ptr %i.b, align 8, !noalias !5088
  store i8 %.sroa.0.0.copyload4.i.i, ptr %i.bn, align 8, !noalias !5088
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %i.br = phi i8 [ %.pr.i.i, %bb.v ], [ %.sroa.0.0.copyload4.i.i, %bb.q ]
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.ce, %bb.v ], [ %i.bn, %bb.q ] ; 5 uses
  switch i8 %i.br, label %default.unreachable.i.i.i [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
  ]

default.unreachable.i.i.i:                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 23
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !5085, !noundef !20 ; 2 uses
  %.not14.i.i.i.i.i = icmp sgt i8 %i.bt, -1
  br i1 %.not14.i.i.i.i.i, label %bb.w, label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !5085, !nonnull !20, !noundef !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !5089, !noundef !20
  br label %_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !5085, !nonnull !20, !noundef !20 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 47
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !5089, !noundef !20 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i8 %i.cb, -1
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !5085, !nonnull !20, !noundef !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %.pr.i.i = load i8, ptr %i.ce, align 8, !noalias !5085
  br label %bb.r

bb.w:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !5085, !noundef !20
  br label %_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i

bb.x:                                             ; preds = %bb.s
  %i.ch = and i8 %i.bt, 127
  %i.ci = zext nneg i8 %i.ch to i64
  br label %_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i

bb.y:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !5089, !noundef !20
  br label %_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i

bb.z:                                             ; preds = %bb.u
  %i.cl = and i8 %i.cb, 127
  %i.cm = zext nneg i8 %i.cl to i64
  br label %_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i

_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.t
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.cg, %bb.w ], [ %i.bx, %bb.t ], [ %i.ci, %bb.x ], [ %i.cm, %bb.z ], [ %i.ck, %bb.y ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.bn)
          to label %bb.ai unwind label %bb.p, !noalias !5085

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i: ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit.i
  %4 = phi ptr [ %3, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit.i ], [ %i.bq, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit.i ], [ %.sroa.0.020.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i ] ; 4 uses
  %i.cn = icmp eq ptr %i.bi, %4
  br i1 %i.cn, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i, label %bb.af

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i: ; preds = %bb.ai, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i
  %.sroa.0.0.lcssa.i.i10 = phi i64 [ %.sroa.0.0.lcssa.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i ], [ %i.di, %bb.ai ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i
  %i.co = load i64, ptr %i.f, align 8, !alias.scope !5080, !noalias !5090, !noundef !20 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 288230376151711744
  tail call void @llvm.assume(i1 %i.cp)
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.be, %i.co
  br i1 %.not3.i.i.i.i.i.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.sink.split.i

common.resume.i:                                  ; preds = %bb.au, %bb.ao, %bb.ad, %bb.ab, %bb.p
  %common.resume.op.i = phi { ptr, i32 } [ %i.ej, %bb.ao ], [ %i.cq, %bb.ad ], [ %i.bo, %bb.p ], [ %i.cq, %bb.ab ], [ %i.ew, %bb.au ]
  resume { ptr, i32 } %common.resume.op.i

bb.ab:                                            ; preds = %bb.af
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %common.resume.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %i.f, align 8, !alias.scope !5080, !noundef !20 ; 4 uses
  %i.cs = icmp ult i64 %i.cr, 288230376151711744
  tail call void @llvm.assume(i1 %i.cs)
  %.not3.i.i.i = icmp eq i64 %i.be, %i.cr
  br i1 %.not3.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.ct = add nuw nsw i64 %i.cr, %i.bd
  store i64 %i.ct, ptr %i.f, align 8, !alias.scope !5080
  br label %common.resume.i

bb.ae:                                            ; preds = %bb.ac
  %i.cu = load ptr, ptr %i.bg, align 8, !alias.scope !5080, !nonnull !20, !noundef !20 ; 2 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.be
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cr
  %i.cx = shl nuw nsw i64 %i.bd, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 8 %i.cv, i64 %i.cx, i1 false)
  br label %bb.ad

bb.af:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i
  %i.cy = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.cz = ptrtoint ptr %i.bi to i64
  %i.da = sub nuw i64 %i.cz, %i.cy
  %i.db = lshr exact i64 %i.da, 5
  %i.dc = load ptr, ptr %i.bg, align 8, !alias.scope !5080, !noalias !5090, !nonnull !20, !noundef !20 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub nuw i64 %i.cy, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.df, i64 noundef %i.db)
          to label %bb.ag unwind label %bb.ab, !noalias !5090

bb.ag:                                            ; preds = %bb.af
  %.not.i.i4.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i4.i.i.i.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load i64, ptr %i.f, align 8, !alias.scope !5080, !noalias !5090, !noundef !20 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 288230376151711744
  tail call void @llvm.assume(i1 %i.dh)
  %.not3.i.i5.i.i.i.i = icmp eq i64 %i.be, %i.dg
  br i1 %.not3.i.i5.i.i.i.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.sink.split.i

bb.ai:                                            ; preds = %_RNCINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB8_6Parser10wrap_errorReE0Ba_.exit.i.i.i
  %i.di = add i64 %.sroa.0.1.i.i.i.i.i, %.sroa.0.020.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5088
  %i.dj = icmp eq ptr %i.bq, %i.bi
  br i1 %i.dj, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i

bb.aj:                                            ; preds = %bb.p
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5085
  unreachable

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.sink.split.i: ; preds = %bb.ah, %bb.aa
  %.sink49.i = phi i64 [ %.sroa.0.0.lcssa.i.i10, %bb.aa ], [ %.sroa.0.0.lcssa.i.i, %bb.ah ]
  %.sroa.0.0.lcssa38.i.ph.ph.i = phi i64 [ %i.co, %bb.aa ], [ %i.dg, %bb.ah ] ; 2 uses
  %i.dl = load ptr, ptr %i.bg, align 8, !alias.scope !5080, !noalias !5090, !nonnull !20, !noundef !20 ; 2 uses
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.be
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %.sroa.0.0.lcssa38.i.ph.ph.i
  %i.do = shl nuw nsw i64 %i.bd, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.dm, i64 %i.do, i1 false), !noalias !5090
  br label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.i

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.i: ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.sink.split.i, %bb.ah, %bb.aa
  %.sink45.i = phi i64 [ %.sroa.0.0.lcssa.i.i10, %bb.aa ], [ %.sroa.0.0.lcssa.i.i, %bb.ah ], [ %.sink49.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.sink.split.i ]
  %.sroa.0.0.lcssa38.i.ph.i = phi i64 [ %i.be, %bb.aa ], [ %i.be, %bb.ah ], [ %.sroa.0.0.lcssa38.i.ph.ph.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.sink.split.i ]
  %i.dp = add nuw nsw i64 %.sroa.0.0.lcssa38.i.ph.i, %i.bd
  store i64 %i.dp, ptr %i.f, align 8, !alias.scope !5080, !noalias !5090
  br label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.i

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.i: ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.i, %bb.ag, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i
  %.sroa.0.0.lcssa38.i.i = phi i64 [ %.sink45.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.sink.split.i ], [ %.sroa.0.0.lcssa.i.i, %bb.ag ], [ %.sroa.0.0.lcssa.i.i10, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.thread.thread.i.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !5080, !noundef !20 ; 7 uses
  %i.ds = sub i64 %i.dr, %.sroa.0.0.lcssa38.i.i   ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !5080, !nonnull !20, !noundef !20 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !5080, !noundef !20 ; 4 uses
  %i.dx = icmp ugt i64 %.sroa.0.0.lcssa38.i.i, %i.dr
  %i.dy = icmp ugt i64 %i.dr, %i.dw
  %or.cond.i.i4 = or i1 %i.dx, %i.dy
  br i1 %or.cond.i.i4, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, label %bb.ak, !prof !45

bb.ak:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.i
  %i.dz = icmp eq i64 %i.ds, %i.dw
  br i1 %i.dz, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = icmp eq i64 %i.dr, %.sroa.0.0.lcssa38.i.i
  br i1 %i.ea, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.an, %bb.al
  %i.eb = icmp eq i64 %i.dr, %i.dw
  br i1 %i.eb, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.an:                                            ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !5091, !noundef !20
  %i.ee = icmp sgt i8 %i.ed, -65
  br i1 %i.ee, label %bb.am, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !46

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !5091, !noundef !20
  %i.eh = icmp sgt i8 %i.eg, -65
  br i1 %i.eh, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !47

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.an, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1E_8adapters3map8map_foldBK_jjNCINvMs2_NtBO_6parserNtB3m_6Parser10wrap_errorReE0NCINvXsK_NtB1C_5accumjNtB4a_3Sum3sumINtB2E_3MapB3_B3d_EE0E0EBO_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dw, i64 noundef %i.ds, i64 noundef %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #62
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.am, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5093)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5094
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !noalias !5094
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.ei, align 8, !noalias !5094
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5095)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef range(i64 0, -9223372036854775808) 30)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4intoCs5PEMdK7bMAG_12typst_syntax.exit.i unwind label %bb.ao, !noalias !5096

bb.ao:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !5094, !nonnull !20, !noundef !20
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i.i.i) #59
          to label %common.resume.i unwind label %bb.ap, !noalias !5097

bb.ap:                                            ; preds = %bb.ao
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5097
  unreachable

_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4intoCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.em = load ptr, ptr %i.a, align 8, !alias.scope !5095, !noalias !5094, !nonnull !20, !noundef !20 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !5095, !noalias !5094 ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr nuw i8, ptr %i.em, i64 %.promoted.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %scevgep.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(30) @402, i64 range(i64 0, -9223372036854775808) 30, i1 false), !noalias !5098
  %i.en = add i64 %.promoted.i.i.i.i.i.i, 30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5094
  store ptr %i.em, ptr %i.c, align 8, !alias.scope !5099, !noalias !5080
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.en, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !5099, !noalias !5080
  call fastcc void @_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %.sroa.0.0.lcssa38.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5100)
  %i.eo = load i64, ptr %i.f, align 8, !alias.scope !5101, !noundef !20 ; 7 uses
  %i.ep = icmp ult i64 %i.eo, 288230376151711744
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i64 %..i.i, %i.eo
  br i1 %i.eq, label %bb.ar, label %bb.aq, !prof !24

bb.aq:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4intoCs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.er = load i64, ptr %i.az, align 8, !range !34, !alias.scope !5101, !noundef !20
  %i.es = icmp eq i64 %i.eo, %i.er
  br i1 %i.es, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4intoCs5PEMdK7bMAG_12typst_syntax.exit.i
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %..i.i, i64 noundef %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #58
          to label %bb.aw unwind label %bb.au, !noalias !5102

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.at unwind label %bb.au, !noalias !5103

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.et = load ptr, ptr %i.bg, align 8, !alias.scope !5101, !nonnull !20, !noundef !20
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %..i.i ; 3 uses
  %i.ev = icmp samesign ult i64 %..i.i, %i.eo
  br i1 %i.ev, label %bb.av, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser10wrap_errorReEB8_.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.d) #59
          to label %common.resume.i unwind label %bb.ax, !noalias !5100

bb.av:                                            ; preds = %bb.at
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ey = sub nuw nsw i64 %i.eo, %..i.i
  %i.ez = shl nuw nsw i64 %i.ey, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ex, ptr nonnull align 8 %i.eu, i64 %i.ez, i1 false), !noalias !5104
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser10wrap_errorReEB8_.exit

bb.aw:                                            ; preds = %bb.ar
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5102
  unreachable

_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser10wrap_errorReEB8_.exit: ; preds = %bb.at, %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !5105
  %i.fb = add nuw nsw i64 %i.eo, 1
  store i64 %i.fb, ptr %i.f, align 8, !alias.scope !5101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 32, 72) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !noundef !20 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !20
  %i.f = xor i64 %i.e, -1
  %i.g = add i64 %i.b, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.b
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !20, !noundef !20
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.g
  tail call fastcc void @_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4hintReEB7_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i8 noundef range(i8 0, -119) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i8, ptr %i.a, align 8, !range !22, !noundef !20 ; 3 uses
  %i.b = icmp eq i8 %.val2, %1                    ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %1, 99
  %.off.i = add i8 %.val2, -78
  %switch.i = icmp ult i8 %.off.i, 20
  %or.cond = and i1 %i.c, %switch.i
  br i1 %or.cond, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit

bb.d:                                             ; preds = %bb.b
  %.off.i3 = add i8 %1, -46
  %switch.i4 = icmp ult i8 %.off.i3, 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !range !21, !noundef !20
  %i.f = select i1 %switch.i4, i8 0, i8 %i.e
  store i8 %i.f, ptr %i.d, align 4
  %i.g = tail call { ptr, i64 } @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name(i8 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5114)
  %i.j = icmp eq i8 %.val2, 1
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5115)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5116, !noundef !20 ; 6 uses
  %i.m = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
end_hunk_1
