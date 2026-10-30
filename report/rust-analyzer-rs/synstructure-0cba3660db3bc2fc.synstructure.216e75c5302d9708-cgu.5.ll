Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/synstructure-0cba3660db3bc2fc.synstructure.216e75c5302d9708-cgu.5?download=true
inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0_@_RNvXNvCs2RXd34xq0RM_12synstructure13get_ty_paramsNtB2_16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_ident:bb.a
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { ptr, ptr } @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE4iterB4_(ptr align 8 %i.e) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  call void @_RNvYINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB7_8generics12GenericParamENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9enumerateCs2RXd34xq0RM_12synstructure(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.g, ptr align 8 %i.h) #12
  call void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1t_8generics12GenericParamEENtB2_12IntoIterator9into_iterCs2RXd34xq0RM_12synstructure(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.i = invoke { i64, ptr } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1c_8generics12GenericParamEENtNtNtB8_6traits8iterator8Iterator4nextCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.h, %bb.f, %.backedge
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1q_8generics12GenericParamEEECs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.a) #13
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %.backedge
  %i.k = extractvalue { i64, ptr } %i.i, 0
  %i.l = extractvalue { i64, ptr } %i.i, 1        ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 18
  br i1 %i.n, label %bb.f, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %bb.g, %bb.i
  br label %.backedge

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1q_8generics12GenericParamEEECs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  %i.p = invoke zeroext i1 @_RNvXsy_Cs1K5DUQUZc67_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr nonnull align 8 %i.o, ptr align 8 %1)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  br i1 %i.p, label %bb.h, label %.backedge.backedge

bb.h:                                             ; preds = %bb.g
  %i.q = invoke ptr @_RNvXse_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecbEINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutjE9index_mutCs2RXd34xq0RM_12synstructure(ptr align 8 %0, i64 %i.k, ptr nonnull align 8 @44)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.q, align 1
  br label %.backedge.backedge

bb.j:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvCs2RXd34xq0RM_12synstructure13get_ty_paramsNtB2_16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit16visit_type_macro(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = tail call { ptr, ptr } @_RNvXsi_NtCsbSS6DM8SDEO_5alloc3vecQINtB5_3VecbENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCs2RXd34xq0RM_12synstructure(ptr align 8 %0) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  store ptr %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = call ptr @_RNvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_7IterMutbENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.a) #12 ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi ptr [ %i.h, %.lr.ph ], [ %i.f, %bb.a ]
  store i8 1, ptr %i.g, align 1
  %i.h = call ptr @_RNvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_7IterMutbENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.a) #12 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit16visit_type_macroNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBU_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_Cs2RXd34xq0RM_12synstructureNtB4_11BindingInfoNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsq_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtCsgFSQ9XOTBNe_3syn5parseNCNvMs2_Cs2RXd34xq0RM_12synstructureNtBD_9Structure8gen_impl0NtB5_6Parser6parse2BD_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.l = call { ptr, i64 } @_RNvMNtCsgFSQ9XOTBNe_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr %i.m, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.n, ptr %i.o, align 8
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn, %bb.e ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #13
          to label %bb.v unwind label %bb.u

bb.c:                                             ; preds = %.invoke, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNCNvMs2_Cs2RXd34xq0RM_12synstructureNtBa_9Structure8gen_impl0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEE9call_onceBa_(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr align 8 %1, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.u, %bb.k ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #13
          to label %bb.b unwind label %bb.u

bb.f:                                             ; preds = %.invoke10, %bb.i, %bb.g, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.h, align 8
  %i.s = icmp eq i64 %i.r, -2
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @47)
          to label %.invoke unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.i) #13
          to label %bb.e unwind label %bb.u

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @46)
          to label %.invoke10 unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.w = invoke { ptr, ptr } @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = invoke { i32, i8 } @_RNvNtCsgFSQ9XOTBNe_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.x, ptr %i.y)
          to label %bb.q unwind label %bb.k       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.aa = extractvalue { i32, i8 } %i.z, 1        ; 2 uses
  %.not6.not = icmp eq i8 %i.aa, -1
  br i1 %.not6.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = extractvalue { i32, i8 } %i.z, 0
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ab, i8 %i.aa)
          to label %bb.s unwind label %bb.k

.thread:                                          ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %.invoke10

bb.t:                                             ; preds = %.invoke
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  ret void

.invoke10:                                        ; preds = %bb.n, %bb.s
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.f

.invoke:                                          ; preds = %.invoke10, %bb.i, %.thread
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.c

bb.u:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.v:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit10visit_exprB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit10visit_exprNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBO_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit10visit_itemB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit10visit_itemNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBO_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit10visit_metaB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit10visit_metaNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBO_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit10visit_pathB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit10visit_pathNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBO_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit10visit_spanB6_(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 4 captures(none) %1) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit10visit_stmtB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit10visit_stmtNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBO_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit10visit_typeB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit10visit_typeNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBO_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_blockB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_blockNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_fieldB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_fieldNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_indexB6_(ptr align 8 %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_indexNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 4 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_labelB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_labelNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_localB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_localNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_macroB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_macroNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_qselfB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_qselfNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit11visit_un_opB6_(ptr align 8 %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit11visit_un_opNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBP_(ptr align 8 %0, ptr align 4 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit12visit_bin_opB6_(ptr align 8 %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit12visit_bin_opNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBQ_(ptr align 8 %0, ptr align 4 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit12visit_fieldsB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit12visit_fieldsNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBQ_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit12visit_fn_argB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit12visit_fn_argNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBQ_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit12visit_memberB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit12visit_memberNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBQ_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit12visit_pat_orB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit12visit_pat_orNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBQ_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit13visit_expr_ifB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit13visit_expr_ifNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBR_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit13visit_item_fnB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit13visit_item_fnNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBR_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit13visit_lit_intB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit13visit_lit_intNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBR_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit13visit_lit_strB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit13visit_lit_strNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBR_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit13visit_variantB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit13visit_variantNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBR_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit14visit_expr_letB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit14visit_expr_letNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBS_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorNtNtNtCsgFSQ9XOTBNe_3syn3gen5visit5Visit14visit_expr_litB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit14visit_expr_litNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBS_(ptr align 8 %0, ptr align 8 %1)
  ret void
}
end_hunk_0
