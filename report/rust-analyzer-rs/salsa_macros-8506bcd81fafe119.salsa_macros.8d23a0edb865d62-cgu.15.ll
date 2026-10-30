Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/salsa_macros-8506bcd81fafe119.salsa_macros.8d23a0edb865d62-cgu.15?download=true
inline.NumInlined: 90
inline.NumDeleted: 45
begin_hunk_0_@_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_INtB7_12GenericShuntIB15_INtNtNtBb_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB5p_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5Q_E9from_iterB1p_E0ENCINvXs6_NtB5p_3impNtB7h_11TokenStreamIB6a_B7r_E9from_iterB1k_Es_0EENtNtB6e_8iterator8Iterator9size_hintB32_:bb.a
  %.sroa.024.0.i = phi i64 [ 0, %bb.f ], [ %.57.i, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i64 %i.ak, ptr %0, align 8, !alias.scope !73
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.024.0.i, ptr %i.aw, align 8, !alias.scope !73
  br label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB7_12GenericShuntIB1c_INtNtNtBb_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB5w_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5X_E9from_iterB1w_E0ENCINvXs6_NtB5w_3impNtB7o_11TokenStreamIB6h_B7y_E9from_iterB1r_Es_0EINtNtB5w_5rcvec13RcVecIntoIterNtB5w_9TokenTreeEENtNtB6l_8iterator8Iterator9size_hintB39_.exit

bb.k:                                             ; preds = %bb.c
  call void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtB7_12GenericShuntIBN_INtNtNtBb_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB4Z_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5q_E9from_iterB10_E0ENCINvXs6_NtB4Z_3impNtB6R_11TokenStreamIB5K_B71_E9from_iterBW_Es_0ENtNtB5O_8iterator8Iterator9size_hintB2C_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.aa) #23, !noalias !73
  %i.ax = load i64, ptr %i.b, align 8, !noalias !73
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !73
  %i.ba = icmp eq i64 %i.ax, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !73
  %i.bd = trunc nuw i64 %i.bc to i1
  %or.cond62.i = select i1 %i.ba, i1 %i.bd, i1 false
  %i.be = trunc nuw i64 %i.l to i1
  %or.cond63.i = select i1 %or.cond62.i, i1 %i.be, i1 false
  %i.bf = trunc nuw i64 %i.s to i1
  %i.bg = icmp eq i64 %i.az, 0
  %i.bh = select i1 %or.cond63.i, i1 %i.bf, i1 false
  %or.cond65.i = select i1 %i.bh, i1 %i.bg, i1 false
  br i1 %or.cond65.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.bi = trunc nuw i64 %i.l to i1
  %i.bj = trunc nuw i64 %i.s to i1
  %or.cond58.i = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond58.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i64 %i.v, ptr %0, align 8, !alias.scope !73
  br label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB7_12GenericShuntIB1c_INtNtNtBb_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB5w_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5X_E9from_iterB1w_E0ENCINvXs6_NtB5w_3impNtB7o_11TokenStreamIB6h_B7y_E9from_iterB1r_Es_0EINtNtB5w_5rcvec13RcVecIntoIterNtB5w_9TokenTreeEENtNtB6l_8iterator8Iterator9size_hintB39_.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bk = add i64 %i.u, %i.n                      ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.n
  %.59.i = zext i1 %i.bl to i64
  store i64 %i.v, ptr %0, align 8, !alias.scope !73
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.59.i, ptr %i.bm, align 8, !alias.scope !73
  br label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB7_12GenericShuntIB1c_INtNtNtBb_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB5w_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5X_E9from_iterB1w_E0ENCINvXs6_NtB5w_3impNtB7o_11TokenStreamIB6h_B7y_E9from_iterB1r_Es_0EINtNtB5w_5rcvec13RcVecIntoIterNtB5w_9TokenTreeEENtNtB6l_8iterator8Iterator9size_hintB39_.exit

_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB7_12GenericShuntIB1c_INtNtNtBb_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB5w_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5X_E9from_iterB1w_E0ENCINvXs6_NtB5w_3impNtB7o_11TokenStreamIB6h_B7y_E9from_iterB1r_Es_0EINtNtB5w_5rcvec13RcVecIntoIterNtB5w_9TokenTreeEENtNtB6l_8iterator8Iterator9size_hintB39_.exit: ; preds = %bb.j, %bb.m, %bb.n
  %.sink70.i = phi i64 [ 8, %bb.m ], [ 16, %bb.n ], [ 16, %bb.j ]
  %.sink.i = phi i64 [ 0, %bb.m ], [ %i.bk, %bb.n ], [ %.sroa.8.0.i, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink70.i
  store i64 %.sink.i, ptr %i.bn, align 8, !alias.scope !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsG_NtCs1K5DUQUZc67_11proc_macro23impNtB5_5IdentNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 12), (16, 17)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsB_NtCs1K5DUQUZc67_11proc_macro28fallbackNtB5_5IdentNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs1s_CsiwvLk4GMN8X_10proc_macroNtB6_5IdentNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsgFSQ9XOTBNe_3syn5parseNCNCNvNtCsKXd8SJXguA_12salsa_macros12salsa_struct23FIELD_OPTION_ATTRIBUTESs4_00NtB5_6Parser14___parse_scopedBD_(ptr sret([224 x i8]) align 8 %0, ptr align 8 %1, i32 %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [224 x i8], align 8               ; 2 uses
  %i.h = alloca [224 x i8], align 8               ; 4 uses
  %i.i = alloca [224 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 2 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.n = call { ptr, i64 } @_RNvMNtCsgFSQ9XOTBNe_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = invoke { ptr, ptr } @_RNvMNtCsgFSQ9XOTBNe_3syn6bufferNtB2_11TokenBuffer5begin(ptr nonnull align 8 %i.m)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn, %bb.h ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.m) #21
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %.invoke, %bb.f, %bb.e, %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.t = extractvalue { ptr, ptr } %i.r, 0
  %i.u = extractvalue { ptr, ptr } %i.r, 1
  store i8 0, ptr %i.k, align 8
  invoke void @_RNvMs7_NtCshzWfHUSfYae_4core4cellINtB5_4CellNtNtCsgFSQ9XOTBNe_3syn5parse10UnexpectedE3newBK_(ptr nonnull sret([16 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.v = invoke ptr @_RNvMs7_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtCshzWfHUSfYae_4core4cell4CellNtNtCsgFSQ9XOTBNe_3syn5parse10UnexpectedEE3newB1f_(ptr nonnull align 8 %i.l)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn5parse16new_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, i32 %2, ptr %i.t, ptr %i.u, ptr %i.v)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvYNCNCNvNtCsKXd8SJXguA_12salsa_macros12salsa_struct23FIELD_OPTION_ATTRIBUTESs4_00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEE9call_onceBa_(ptr nonnull sret([224 x i8]) align 8 %i.g, ptr align 8 %1, ptr nonnull align 8 %i.j)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.aa, %bb.n ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #21
          to label %bb.b unwind label %bb.x

bb.i:                                             ; preds = %.invoke10, %bb.l, %bb.j, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtNtCsgFSQ9XOTBNe_3syn4path4PathNtNtBP_4expr4ExprENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([224 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtNtCsgFSQ9XOTBNe_3syn4path4PathNtNtBP_4expr4ExprENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1z_EE13from_residualCsKXd8SJXguA_12salsa_macros(ptr sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @123)
          to label %.invoke unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.i, ptr noundef nonnull align 8 dereferenceable(224) %i.h, i64 224, i1 false)
  invoke void @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.u, %bb.s, %bb.r, %bb.q, %bb.o, %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsgFSQ9XOTBNe_3syn4path4PathNtNtBG_4expr4ExprEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.i) #21
          to label %bb.h unwind label %bb.x

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ab = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtNtCsgFSQ9XOTBNe_3syn4path4PathNtNtBP_4expr4ExprENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1z_EE13from_residualCsKXd8SJXguA_12salsa_macros(ptr sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @122)
          to label %.invoke10 unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.ac = invoke { ptr, ptr } @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.s unwind label %bb.n       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  %i.af = invoke { i32, i8 } @_RNvNtCsgFSQ9XOTBNe_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.ad, ptr %i.ae)
          to label %bb.t unwind label %bb.n       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ag = extractvalue { i32, i8 } %i.af, 1       ; 2 uses
  %.not6.not = icmp eq i8 %i.ag, -1               ; 2 uses
  br i1 %.not6.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = extractvalue { i32, i8 } %i.af, 0
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ah, i8 %i.ag)
          to label %bb.v unwind label %bb.n

.thread:                                          ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.i, i64 224, i1 false)
  br label %4

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.ai, align 8
  br label %4

4:                                                ; preds = %bb.v, %.thread
  br i1 %.not6.not, label %.invoke, label %.invoke10

bb.w:                                             ; preds = %.invoke
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.m)
  ret void

.invoke10:                                        ; preds = %bb.q, %4
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsgFSQ9XOTBNe_3syn4path4PathNtNtBG_4expr4ExprEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.i

.invoke:                                          ; preds = %.invoke10, %bb.l, %4
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.w unwind label %bb.c

bb.x:                                             ; preds = %bb.n, %bb.h, %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.y:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCs1K5DUQUZc67_11proc_macro23impNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXss_NtCs1K5DUQUZc67_11proc_macro28fallbackNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.e) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXs11_CsiwvLk4GMN8X_10proc_macroNtB6_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros(ptr nonnull align 4 %i.h) #23, !noalias !76 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !76
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCs1K5DUQUZc67_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros.exit unwind label %bb.d, !noalias !76

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro11TokenStreamECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 4 %i.b) #21
          to label %bb.f unwind label %bb.e, !noalias !76

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #22, !noalias !76
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCs1K5DUQUZc67_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCs1K5DUQUZc67_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsKXd8SJXguA_12salsa_macros.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsb_NtCsbSS6DM8SDEO_5alloc6borrowINtB5_3CoweENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsKXd8SJXguA_12salsa_macros(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs7_NtCslCbDOIcU2Dw_5quote9___privateINtB5_20IdentFragmentAdapterRRNtCs1K5DUQUZc67_11proc_macro25IdentENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsKXd8SJXguA_12salsa_macros(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs2_NtCsgFSQ9XOTBNe_3syn5errorNtB5_5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1_NtNtCsgFSQ9XOTBNe_3syn4attr7parsingNtB5_16DisplayAttrStyleNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsn_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsgFSQ9XOTBNe_3syn2ty4TypeENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBL_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRSReNtB6_5Debug3fmtCsKXd8SJXguA_12salsa_macros(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs_NtCsgFSQ9XOTBNe_3syn4pathNtB4_4Path9get_ident(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtCs1K5DUQUZc67_11proc_macro25IdentINtB7_9PartialEqRReE2eqCsKXd8SJXguA_12salsa_macros(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #12

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvMsm_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1U_ENtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0CsKXd8SJXguA_12salsa_macros(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mem7replace10PanicGuardECsKXd8SJXguA_12salsa_macros(ptr) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RNvYNCNKNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state12BRIDGE_STATE0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1n_6option6OptionQIB22_INtNtB1n_4cell4CellPuEEEEE9call_onceCsKXd8SJXguA_12salsa_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellPuEE4withNCNvMs3_B6_BF_7replace0B1s_ECsKXd8SJXguA_12salsa_macros(ptr align 8, ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientNtBa_11TokenStreamNvCsKXd8SJXguA_12salsa_macros6updateE00B1k_(i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECsKXd8SJXguA_12salsa_macros(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientNtBM_11TokenStreamNvCsKXd8SJXguA_12salsa_macros6updateE00EB1W_(ptr align 4) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientNtBa_11TokenStreamNvCsKXd8SJXguA_12salsa_macros9supertypeE00B1k_(i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientNtBM_11TokenStreamNvCsKXd8SJXguA_12salsa_macros9supertypeE00EB1W_(ptr align 4) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsKXd8SJXguA_12salsa_macros11accumulatorE00E00B1Y_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBM_11TokenStreamB1D_ENCNCINvMsg_BI_NtBI_6Client7expand2NvCsKXd8SJXguA_12salsa_macros11accumulatorE00E00EB2A_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsKXd8SJXguA_12salsa_macros2dbE00E00B1Y_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBM_11TokenStreamB1D_ENCNCINvMsg_BI_NtBI_6Client7expand2NvCsKXd8SJXguA_12salsa_macros2dbE00E00EB2A_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsKXd8SJXguA_12salsa_macros5inputE00E00B1Y_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBM_11TokenStreamB1D_ENCNCINvMsg_BI_NtBI_6Client7expand2NvCsKXd8SJXguA_12salsa_macros5inputE00E00EB2A_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsKXd8SJXguA_12salsa_macros7trackedE00E00B1Y_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBM_11TokenStreamB1D_ENCNCINvMsg_BI_NtBI_6Client7expand2NvCsKXd8SJXguA_12salsa_macros7trackedE00E00EB2A_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsKXd8SJXguA_12salsa_macros8internedE00E00B1Y_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientTNtBM_11TokenStreamB1D_ENCNCINvMsg_BI_NtBI_6Client7expand2NvCsKXd8SJXguA_12salsa_macros8internedE00E00EB2A_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtCs1K5DUQUZc67_11proc_macro29detection17inside_proc_macro() unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterNCNvNtCsKXd8SJXguA_12salsa_macros5xform18respan_tokenstream0ENtB2_12IntoIterator9into_iterB2a_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterNCNvNtCsKXd8SJXguA_12salsa_macros5xform18respan_tokenstream0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtBV_8fallback11TokenStreamEB1P_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterNCNvNtCsKXd8SJXguA_12salsa_macros5xform18respan_tokenstream0ENtNtNtBa_6traits8iterator8Iterator3mapNtCsiwvLk4GMN8X_10proc_macro9TokenTreeNvNtBV_3imp19into_compiler_tokenEB1P_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB4_NtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterNCNvNtCsKXd8SJXguA_12salsa_macros5xform18respan_tokenstream0ENvNtBZ_3imp19into_compiler_tokenENtNtNtBa_6traits8iterator8Iterator7collectNtCsiwvLk4GMN8X_10proc_macro11TokenStreamEB1T_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1K5DUQUZc67_11proc_macro23impNtB2_19DeferredTokenStream3new(ptr sret([32 x i8]) align 8, i32) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterNCNvNtCsKXd8SJXguA_12salsa_macros5xform18respan_tokenstream0EEB27_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtBQ_12GenericShuntIBM_INtNtNtB8_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB5b_11TokenStreamINtB2_12FromIteratorB5C_E9from_iterB1c_E0ENtB2_12IntoIterator9into_iterB2O_(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtB7_12GenericShuntIBN_INtNtNtBb_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB4V_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5m_E9from_iterBW_E0ENtNtB5K_8iterator8Iterator4nextB2y_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs1K5DUQUZc67_11proc_macro23impNtB4_11TokenStream3new(ptr sret([32 x i8]) align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1K5DUQUZc67_11proc_macro23impNtB2_19DeferredTokenStream12evaluate_now(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtB8_12GenericShuntIB4_INtNtNtBc_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB4Q_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5h_E9from_iterBR_E0ENtNtB5F_8iterator8Iterator3mapNtCsiwvLk4GMN8X_10proc_macro11TokenStreamNCINvXs6_NtB4Q_3impNtB7Q_11TokenStreamIB5B_B80_E9from_iterB3_E0EB2t_(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsm_CsiwvLk4GMN8X_10proc_macroNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBw_E6extendINtNtNtBV_8adapters3map3MapIB1T_INtB1X_12GenericShuntIB1T_INtNtNtBX_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBX_6result6ResultNtNtBX_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB6p_11TokenStreamINtBR_12FromIteratorB6Q_E9from_iterB2o_E0ENCINvXs6_NtB6p_3impNtB7Y_11TokenStreamIB7a_B88_E9from_iterB2j_E0EEB42_(ptr align 4, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro23imp19DeferredTokenStreamEBF_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtB8_12GenericShuntIB4_INtNtNtBc_5slice4iter4IterNtCs2RXd34xq0RM_12synstructure11VariantInfoENCNvNtCsKXd8SJXguA_12salsa_macros6update13update_derives_0EINtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEENCINvXsb_Cs1K5DUQUZc67_11proc_macro2NtB4Q_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5h_E9from_iterBR_E0ENtNtB5F_8iterator8Iterator3mapNtNtB4Q_8fallback11TokenStreamNCINvXs6_NtB4Q_3impNtB7F_11TokenStreamIB5B_B7P_E9from_iterB3_Es_0EB2t_(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #1
end_hunk_0
