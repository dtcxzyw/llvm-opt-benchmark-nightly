Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer6string:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 {
bb.a:
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !19
  %.off.i = add i8 %i.b, -46
  %switch.i = icmp ult i8 %.off.i, 6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !20, !noundef !19
  %i.e = select i1 %switch.i, i8 0, i8 %i.d
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5136, !noalias !5137, !noundef !19 ; 4 uses
  %i.h = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5137
  %i.i = load i64, ptr %i.f, align 8, !alias.scope !5136, !noalias !5137, !noundef !19 ; 2 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #62
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !5136, !noalias !5137, !nonnull !19, !noundef !19
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.g
  tail call fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode10unexpected(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.49.0..sroa_idx, align 8
  %i.h = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @398, ptr noundef nonnull %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %common.resume unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #62
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !5149)
  store i64 1, ptr %i.b, align 8, !noalias !5148
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.j, align 8, !noalias !5148
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.k, align 8, !noalias !5148
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store i64 -9223372036854775808, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !noalias !5148
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !5150
  %i.l = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !5150 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit, !prof !23

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #58
          to label %.noexc.i unwind label %bb.f, !noalias !5148

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.k)
          to label %common.resume unwind label %bb.g, !noalias !5148

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5148
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.n, %bb.f ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !5148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5148
  store i8 2, ptr %i.e, align 8, !alias.scope !5149, !noalias !5151
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !5149, !noalias !5151
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %.sroa.51.0..sroa_idx.i, align 8, !alias.scope !5149, !noalias !5151
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.p, align 8, !alias.scope !5149, !noalias !5151
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5152)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5152, !noalias !5153, !noundef !19 ; 7 uses
  %i.t = icmp ult i64 %i.s, 288230376151711744
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp ugt i64 %1, %i.s
  br i1 %i.u, label %bb.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit
  %i.v = load i64, ptr %i.q, align 8, !range !34, !alias.scope !5152, !noalias !5153, !noundef !19
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %1, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #58
          to label %bb.n unwind label %bb.l, !noalias !5154

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.k unwind label %bb.l, !noalias !5153

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !5152, !noalias !5153, !nonnull !19, !noundef !19
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %1 ; 3 uses
  %i.aa = icmp samesign ult i64 %1, %i.s
  br i1 %i.aa, label %bb.m, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.e) #59
          to label %common.resume unwind label %bb.o, !noalias !5152

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = sub nuw nsw i64 %i.s, %1
  %i.ae = shl nuw nsw i64 %i.ad, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.z, i64 %i.ae, i1 false), !noalias !5155
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit

bb.n:                                             ; preds = %bb.i
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5154
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit: ; preds = %bb.k, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !5156
  %i.ag = add nuw nsw i64 %i.s, 1
  store i64 %i.ag, ptr %i.r, align 8, !alias.scope !5152, !noalias !5153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.p:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 8 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 9 uses
  %i.f = sub i64 %i.b, %i.e                       ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19 ; 3 uses
  %1 = add i64 %i.f, -1
  %.first_iter = icmp ult i64 %1, %i.b
  %.not44 = icmp eq i64 %i.f, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.045 = phi i64 [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = add i64 %.sroa.0.045, -1                 ; 5 uses
  br i1 %.first_iter, label %bb.l, label %bb.m

._crit_edge:                                      ; preds = %bb.b, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit, %bb.l, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.i, %bb.b ], [ %.sroa.0.045, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit ], [ %.sroa.0.045, %bb.l ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5170)
  %i.j = icmp ugt i64 %i.e, %i.b
  br i1 %i.j, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @544) #62, !noalias !5171
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.k = icmp ugt i64 %.sroa.0.0.lcssa, %i.f
  br i1 %i.k, label %bb.e, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa, i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @545) #62, !noalias !5171
  unreachable

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit: ; preds = %bb.d
  store i64 %.sroa.0.0.lcssa, ptr %i.a, align 8, !alias.scope !5170, !noalias !5172
  %.idx15 = shl nuw nsw i64 %.sroa.0.0.lcssa, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx15 ; 3 uses
  %.idx = shl nuw nsw i64 %i.f, 5
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %i.n = icmp samesign eq i64 %i.f, %.sroa.0.0.lcssa
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split

bb.g:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.not.i.i8 = icmp eq i64 %i.e, 0
  br i1 %.not.i.i8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl nuw nsw i64 %i.e, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.p, i1 false)
  %i.q = add nuw nsw i64 %i.e, %.sroa.0.0.lcssa
  store i64 %i.q, ptr %i.a, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit
  %i.r = sub nuw nsw i64 %i.f, %.sroa.0.0.lcssa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.l, i64 noundef %i.r)
          to label %bb.j unwind label %bb.g, !noalias !5173

bb.j:                                             ; preds = %bb.i
  %.not.i.i4.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i4.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = shl nuw nsw i64 %i.e, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.s, i1 false), !noalias !5173
  %i.t = add nuw nsw i64 %i.e, %.sroa.0.0.lcssa
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split: ; preds = %bb.f, %bb.k
  %.sink = phi i64 [ %i.t, %bb.k ], [ %i.b, %bb.f ]
  store i64 %.sink, ptr %i.a, align 8, !noalias !5173
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split, %bb.f, %bb.j
  ret void

bb.l:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.05.0 = load i8, ptr %.sroa.05.0.in, align 1, !range !21, !noundef !19
  %i.v = icmp eq i8 %.sroa.05.0, 1
  br i1 %i.v, label %.preheader, label %._crit_edge

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #62
  unreachable

.preheader:                                       ; preds = %bb.l, %bb.q
  %.sroa.04.0.i.i = phi ptr [ %i.aj, %bb.q ], [ %i.u, %bb.l ] ; 6 uses
  %i.w = load i8, ptr %.sroa.04.0.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
  ]

default.unreachable:                              ; preds = %.preheader
  unreachable

bb.n:                                             ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 23
  %i.y = load i8, ptr %i.x, align 1, !noundef !19 ; 2 uses
  %.not14.i.i = icmp sgt i8 %i.y, -1
  br i1 %.not14.i.i, label %bb.r, label %bb.s

bb.o:                                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !5174, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.p:                                             ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 47
  %i.ag = load i8, ptr %i.af, align 1, !noalias !5174, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.ag, -1
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.q:                                             ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !19, !noundef !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %.preheader

bb.r:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.s:                                             ; preds = %bb.n
  %i.am = and i8 %i.y, 127
  %i.an = zext nneg i8 %i.am to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.t:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !5174, !noundef !19
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
  %.val = load i64, ptr %i.f, align 8, !noundef !19 ; 3 uses
  %i.g = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !range !25, !alias.scope !5223, !noalias !5224, !noundef !19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5223, !noalias !5224 ; 2 uses
  store i64 0, ptr %i.h, align 8, !alias.scope !5223, !noalias !5224
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = trunc nuw i128 %1 to i1
  %.val10.us.pre.i.i = load i8, ptr %i.l, align 8, !range !21, !alias.scope !5225, !noalias !5226 ; 2 uses
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
end_hunk_0
