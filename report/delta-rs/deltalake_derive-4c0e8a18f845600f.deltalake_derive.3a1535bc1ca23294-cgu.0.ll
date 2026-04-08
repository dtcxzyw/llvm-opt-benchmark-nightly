inline.NumInlined: 116
inline.NumDeleted: 77
begin_hunk_0_@_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !22, !nonnull !22
  %i.g = tail call i64 %i.f(ptr %i.c) #26
  %.val = load ptr, ptr %1, align 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.h = tail call { ptr, ptr } @_RNvXs_NtCs7nQiqFc7Txl_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefB6_(ptr %.val, ptr align 8 %.val1) ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !22, !nonnull !22
  %i.m = tail call i64 %i.l(ptr %i.i) #26
  store i64 %i.g, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8
end_hunk_1
begin_hunk_2_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs1_CsbjGuDcEILED_11proc_macro2NtB5_11TokenStreamINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjJ0p09o2jmV_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.v, i32 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
end_hunk_2
begin_hunk_3_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !52
  %i.w = call { ptr, i64 } @_RNvMNtCs7nQiqFc7Txl_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.m), !noalias !52 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  store ptr %i.x, ptr %i.u, align 8, !noalias !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !52
  invoke void @_RNvNtCs7nQiqFc7Txl_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull align 8 %i.u)
          to label %bb.d unwind label %bb.c, !noalias !52

bb.b:                                             ; preds = %.body.i, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.aa, %bb.c ], [ %.pn.i, %.body.i ]
end_hunk_3
begin_hunk_4_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !55
  invoke void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBH_5token5CommaEE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.j) #26
          to label %.noexc.i unwind label %bb.aj, !noalias !52

.noexc.i:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 9 uses
  store ptr null, ptr %i.ab, align 8, !alias.scope !60, !noalias !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i, %.noexc.i
  %i.ae = invoke zeroext i1 @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.t)
          to label %bb.f unwind label %.loopexit.i.i.i.i, !noalias !63

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp12.i.i.i.i, %.loopexit11.i.i.i.i, %bb.ag, %.loopexit.split-lp7.i.i.i.i, %.loopexit6.i.i.i.i, %bb.u, %.thread.i.i.i.i.i, %bb.o, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.ag ], [ %i.al, %bb.o ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.ap, %.thread.i.i.i.i.i ], [ %lpad.phi5.i.i.i.i, %bb.u ], [ %lpad.loopexit.split-lp9.i.i.i.i, %.loopexit.split-lp7.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit8.i.i.i.i, %.loopexit6.i.i.i.i ], [ %lpad.loopexit13.i.i.i.i, %.loopexit11.i.i.i.i ], [ %lpad.loopexit.split-lp14.i.i.i.i, %.loopexit.split-lp12.i.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j) #23
          to label %.body.i unwind label %bb.ai, !noalias !52

.loopexit.i.i.i.i:                                ; preds = %bb.i, %bb.g, %bb.e
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXNtNtCs7nQiqFc7Txl_3syn4attr7parsingNtB4_4MetaNtNtB6_5parse5Parse5parse(ptr nonnull sret([232 x i8]) align 8 %i.h, ptr nonnull align 8 %i.t)
          to label %bb.i unwind label %.loopexit.i.i.i.i, !noalias !63

bb.h:                                             ; preds = %bb.x, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !52
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([232 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.j unwind label %.loopexit.i.i.i.i, !noalias !63

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !noalias !63
  %i.ag = icmp eq i64 %i.af, 42
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !63
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.c, ptr nonnull align 8 @13)
          to label %bb.ah unwind label %.loopexit.split-lp.i.i.i.i, !noalias !52

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.g, ptr noundef nonnull align 8 dereferenceable(232) %i.i, i64 232, i1 false), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63
  %i.ai = invoke zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE7is_noneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ab) #26
          to label %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i unwind label %.loopexit1.i.i.i.i, !noalias !63

_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.l
  br i1 %i.ai, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.g, i64 232, i1 false), !noalias !63
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !63
  %i.aj = call align 8 dereferenceable_or_null(232) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 232, i64 8) #25, !noalias !63 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 8, i64 232) #28
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !63

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  unreachable
end_hunk_5
begin_hunk_6_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr nonnull align 8 %i.b) #23
          to label %.body.i.i.i.i unwind label %bb.p, !noalias !63

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !63
  unreachable

bb.q:                                             ; preds = %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr nonnull @10, ptr nonnull inttoptr (i64 175 to ptr), ptr nonnull align 8 @11) #28
          to label %bb.r unwind label %.loopexit.split-lp2.i.i.i.i, !noalias !63

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.aj, ptr noundef nonnull align 8 dereferenceable(232) %i.g, i64 232, i1 false), !noalias !63
  %i.an = load ptr, ptr %i.ab, align 8, !noalias !63 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr nonnull align 8 %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i, !noalias !63

.thread.i.i.i.i.i:                                ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !63
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr %.val1.i.i.i.i.i.i.i, i64 232, i64 8) #25, !noalias !63
  store ptr %i.aj, ptr %i.ab, align 8, !noalias !63
  br label %.body.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i.i: ; preds = %bb.t
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !63
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr %.val.i.i.i.i.i.i.i, i64 232, i64 8) #25, !noalias !63
  br label %bb.w

.loopexit1.i.i.i.i:                               ; preds = %bb.l
end_hunk_6
begin_hunk_7_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
bb.u:                                             ; preds = %.loopexit.split-lp2.i.i.i.i, %.loopexit1.i.i.i.i
  %lpad.phi5.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit3.i.i.i.i, %.loopexit1.i.i.i.i ], [ %lpad.loopexit.split-lp4.i.i.i.i, %.loopexit.split-lp2.i.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr nonnull align 8 %i.g) #23
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !63

bb.v:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !63
  unreachable

.loopexit6.i.i.i.i:                               ; preds = %bb.z, %bb.y, %bb.w
end_hunk_7
begin_hunk_8_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %.body.i.i.i.i

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i.i, %bb.s
  store ptr %i.aj, ptr %i.ab, align 8, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  %i.ar = invoke zeroext i1 @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.t)
          to label %bb.x unwind label %.loopexit6.i.i.i.i, !noalias !63

bb.x:                                             ; preds = %bb.w
  br i1 %i.ar, label %bb.h, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RINvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.t)
          to label %bb.z unwind label %.loopexit6.i.i.i.i, !noalias !63

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.aa unwind label %.loopexit6.i.i.i.i, !noalias !63

bb.aa:                                            ; preds = %bb.z
  %i.as = load i64, ptr %i.f, align 8, !noalias !63
  %.not.i.i.i.i = icmp eq i64 %i.as, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !63
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.d, ptr nonnull align 8 @12)
          to label %bb.ah unwind label %.loopexit.split-lp7.i.i.i.i, !noalias !52

bb.ac:                                            ; preds = %bb.aa
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.ac, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  %i.at = invoke zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE7is_someCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ab)
          to label %.noexc.i.i.i.i unwind label %.loopexit11.i.i.i.i, !noalias !63

.noexc.i.i.i.i:                                   ; preds = %bb.ac
  br i1 %i.at, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr nonnull @6, ptr nonnull inttoptr (i64 213 to ptr), ptr nonnull align 8 @8) #28
          to label %.noexc11.i.i.i.i unwind label %.loopexit.split-lp12.i.i.i.i, !noalias !63

.noexc11.i.i.i.i:                                 ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %.noexc.i.i.i.i
  %i.au = invoke align 8 ptr @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE4takeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ab)
          to label %.noexc12.i.i.i.i unwind label %.loopexit11.i.i.i.i, !noalias !63 ; 4 uses

.noexc12.i.i.i.i:                                 ; preds = %bb.ae
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
end_hunk_8
begin_hunk_9_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a

bb.af:                                            ; preds = %.noexc12.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr nonnull align 8 @9) #29
          to label %.noexc13.i.i.i.i unwind label %.loopexit.split-lp12.i.i.i.i, !noalias !63

.noexc13.i.i.i.i:                                 ; preds = %bb.af
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i: ; preds = %.noexc12.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.au, i64 232, i1 false), !noalias !63
  store i32 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ad, align 8, !noalias !63
  invoke void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.a)
          to label %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i unwind label %bb.ag, !noalias !63

bb.ag:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr nonnull %i.au, i64 232, i64 8) #25, !noalias !63
  br label %.body.i.i.i.i

_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr nonnull %i.au, i64 232, i64 8) #25, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  br label %bb.e

.loopexit11.i.i.i.i:                              ; preds = %bb.ae, %bb.ac
end_hunk_9
begin_hunk_10_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a

bb.ah:                                            ; preds = %bb.ab, %bb.k
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j)
          to label %bb.ak unwind label %bb.aj, !noalias !52

bb.ai:                                            ; preds = %.body.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !52
  unreachable

.body.i:                                          ; preds = %bb.ao, %bb.aj, %.body.i.i.i.i
end_hunk_10
begin_hunk_11_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %.body.i

bb.ak:                                            ; preds = %bb.ah, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !55
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q)
          to label %bb.al unwind label %bb.aj, !noalias !52

bb.al:                                            ; preds = %bb.ak
  %i.ay = load i64, ptr %i.r, align 8, !noalias !52
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %i.az, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !52
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.k, ptr nonnull align 8 @22)
          to label %.invoke.i unwind label %bb.aj

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !52
  invoke void @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.t)
          to label %bb.ap unwind label %bb.ao, !noalias !52

bb.ao:                                            ; preds = %bb.av, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.an
  %i.bb = landingpad { ptr, i32 }
end_hunk_11
begin_hunk_12_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.aq unwind label %bb.ao, !noalias !52

bb.aq:                                            ; preds = %bb.ap
  %i.bc = load i64, ptr %i.p, align 8, !noalias !52
  %.not.i = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %.not.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !52
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.l, ptr nonnull align 8 @21)
          to label %.invoke43.i unwind label %bb.ao

bb.as:                                            ; preds = %bb.aq
  %i.bd = invoke { ptr, ptr } @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.t)
          to label %bb.at unwind label %bb.ao, !noalias !52 ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.be = extractvalue { ptr, ptr } %i.bd, 0
  %i.bf = extractvalue { ptr, ptr } %i.bd, 1
  %i.bg = invoke { i32, i8 } @_RNvNtCs7nQiqFc7Txl_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.be, ptr %i.bf)
          to label %bb.au unwind label %bb.ao, !noalias !52 ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.bh = extractvalue { i32, i8 } %i.bg, 1       ; 2 uses
end_hunk_12
begin_hunk_13_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
bb.av:                                            ; preds = %bb.au
  %i.bi = extractvalue { i32, i8 } %i.bg, 0
  invoke void @_RNvNtCs7nQiqFc7Txl_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.n, i32 %i.bi, i8 %i.bh)
          to label %bb.aw unwind label %bb.ao, !noalias !52

.thread.i:                                        ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
end_hunk_13
begin_hunk_14_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
bb.aw:                                            ; preds = %bb.av
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !52
  br label %.invoke43.i

.invoke43.i:                                      ; preds = %bb.aw, %bb.ar
end_hunk_14
begin_hunk_15_@llvm.memmove.p0.p0.i64
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!51 = distinct !{!51, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs4ZaLwAtrTbk_16deltalake_derive"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNvXsh_NtCs7nQiqFc7Txl_3syn5parseNvMNtB7_10punctuatedINtBy_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtB5_6Parser6parse2Cs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!54 = distinct !{!54, !"_RNvXsh_NtCs7nQiqFc7Txl_3syn5parseNvMNtB7_10punctuatedINtBy_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtB5_6Parser6parse2Cs4ZaLwAtrTbk_16deltalake_derive"}
!55 = !{!56, !58, !53}
!56 = distinct !{!56, !57, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE16parse_terminatedCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!57 = distinct !{!57, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE16parse_terminatedCs4ZaLwAtrTbk_16deltalake_derive"}
!58 = distinct !{!58, !59, !"_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtNtB7_5parse11ParseBufferEE9call_onceCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!59 = distinct !{!59, !"_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtNtB7_5parse11ParseBufferEE9call_onceCs4ZaLwAtrTbk_16deltalake_derive"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE3newCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!62 = distinct !{!62, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE3newCs4ZaLwAtrTbk_16deltalake_derive"}
!63 = !{!64, !56, !58, !53}
!64 = distinct !{!64, !65, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE21parse_terminated_withCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!65 = distinct !{!65, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE21parse_terminated_withCs4ZaLwAtrTbk_16deltalake_derive"}
end_hunk_15
