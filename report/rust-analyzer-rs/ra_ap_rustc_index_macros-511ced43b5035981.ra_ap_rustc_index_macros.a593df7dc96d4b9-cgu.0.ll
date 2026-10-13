Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_index_macros-511ced43b5035981.ra_ap_rustc_index_macros.a593df7dc96d4b9-cgu.0?download=true
inline.NumInlined: 125
inline.NumDeleted: 79
begin_hunk_0_@_RINvNvNtNtCsiwvLk4GMN8X_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientNtB24_6Client7expand1NvCsT5i8M4cfn9_24ra_ap_rustc_index_macros13newtype_indexE0EB2D_:bb.a
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !47

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.i unwind label %bb.g, !noalias !47

bb.i:                                             ; preds = %bb.h
  %i.cd = load i64, ptr %i.f, align 8, !noalias !47
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cd, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ce = invoke { ptr, ptr } @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.i)
          to label %bb.k unwind label %bb.g, !noalias !47 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1
  %i.ch = invoke { i32, i8 } @_RNvNtCsgFSQ9XOTBNe_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.cf, ptr %i.cg)
          to label %bb.l unwind label %bb.g, !noalias !47 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ci = extractvalue { i32, i8 } %i.ch, 1       ; 2 uses
  %.not6.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ci, -1
  br i1 %.not6.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = extractvalue { i32, i8 } %i.ch, 0
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.cj, i8 %i.ci)
          to label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !47

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.l
  %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !42
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.sink.split.i.i.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %bb.i
  %.sink17.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.d, %bb.m ], [ %i.f, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sink17.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !42
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !47

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYNvYNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeNtNtCsgFSQ9XOTBNe_3syn5parse5Parse5parseINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtB14_11ParseBufferEE9call_onceB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.sink.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %_RNvYNvYNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeNtNtCsgFSQ9XOTBNe_3syn5parse5Parse5parseINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtB14_11ParseBufferEE9call_onceB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.09.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -2, %_RNvYNvYNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeNtNtCsgFSQ9XOTBNe_3syn5parse5Parse5parseINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtB14_11ParseBufferEE9call_onceB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.sink.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !42
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.sink.split.i.i.i.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ -2, %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.09.ph.i.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i)
          to label %_RINvCsgFSQ9XOTBNe_3syn5parseNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBu_.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.c, !noalias !47

bb.n:                                             ; preds = %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !47
  unreachable

_RINvCsgFSQ9XOTBNe_3syn5parseNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBu_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBF_.exit11.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.j)
          to label %.noexc4.i.i.i.i.i.i unwind label %bb.u, !noalias !42

.noexc4.i.i.i.i.i.i:                              ; preds = %_RINvCsgFSQ9XOTBNe_3syn5parseNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBu_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45
  %i.cl = icmp eq i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !42
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.m, ptr nonnull align 8 %i.n)
          to label %bb.s unwind label %bb.r, !noalias !42

bb.p:                                             ; preds = %.noexc4.i.i.i.i.i.i
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !42
  store i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !42
  %i.cm = invoke i32 @_RNvXs2_Cs1K5DUQUZc67_11proc_macro2NtCsiwvLk4GMN8X_10proc_macro11TokenStreamINtNtCshzWfHUSfYae_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit9.i.i.i.i.i.i unwind label %bb.u, !noalias !42

bb.q:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !42
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.n) #12
          to label %.body.i.i.i.i.i.i unwind label %bb.q, !noalias !42

bb.s:                                             ; preds = %bb.o
  %i.cp = invoke i32 @_RNvXs2_Cs1K5DUQUZc67_11proc_macro2NtCsiwvLk4GMN8X_10proc_macro11TokenStreamINtNtCshzWfHUSfYae_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.m)
          to label %bb.t unwind label %bb.r, !noalias !42

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit9.i.i.i.i.i.i unwind label %bb.u, !noalias !42

bb.u:                                             ; preds = %bb.t, %bb.p, %_RINvCsgFSQ9XOTBNe_3syn5parseNtNtCsT5i8M4cfn9_24ra_ap_rustc_index_macros7newtype7NewtypeEBu_.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i, %_RNvXs7_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.u, %bb.r, %bb.b
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %.pn8.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b ], [ %i.co, %bb.r ]
  invoke void @_RNvXNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.o)
          to label %.thread.i.i.i.i.i unwind label %bb.v, !noalias !42

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit9.i.i.i.i.i.i: ; preds = %bb.t, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.p ], [ %i.cp, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  invoke void @_RNvXNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.o)
          to label %.thread60.i.i unwind label %bb.w, !noalias !42

bb.v:                                             ; preds = %.body.i.i.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !42
  unreachable

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit9.i.i.i.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.w, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.cs, %bb.w ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.310.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !42
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !42
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !42
  call void %i.cu(ptr nonnull byval([40 x i8]) align 8 %i.a) #15, !noalias !42, !inline_history !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  br label %.body.i.i

bb.x:                                             ; preds = %.invoke.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i.i.i.i.i.i.i, %.invoke79.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i5.i.i.i.i.i.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i1.i.i.i.i.i.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i.i.i.i.i.i.i.i, %.noexc23.i.i, %bb.a
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.x, %.thread.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cv, %bb.x ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %i.cw = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.cx = invoke { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr %i.cw)
          to label %bb.z unwind label %bb.y, !noalias !42 ; 2 uses

bb.y:                                             ; preds = %.body.i.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #13, !noalias !42
  unreachable

.thread60.i.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit9.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !42
  call void %i.da(ptr nonnull byval([40 x i8]) align 8 %i.b) #15, !noalias !42, !inline_history !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !42
  %.sroa.4.8.insert.ext.i.i = zext i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i64
  %i.db = inttoptr i64 %.sroa.4.8.insert.ext.i.i to ptr
  store i64 0, ptr %i.bd, align 8, !noalias !42
  br label %.thread62.i.i

bb.z:                                             ; preds = %.body.i.i
  %i.dc = extractvalue { ptr, ptr } %i.cx, 0      ; 2 uses
  %i.dd = extractvalue { ptr, ptr } %i.cx, 1      ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 34 uses
  store i64 0, ptr %i.de, align 8, !noalias !42
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %.thread62.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXNtNtCsiwvLk4GMN8X_10proc_macro6bridge13panic_messageNtB2_12PanicMessageINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB1g_3any3AnyNtNtB1g_6marker4SendEL_EE4from(ptr nonnull sret([24 x i8]) align 8 %i.ay, ptr nonnull %i.dc, ptr align 8 %i.dd)
          to label %bb.ab unwind label %.critedge.body, !noalias !42

.thread62.i.i:                                    ; preds = %bb.z, %.thread60.i.i
  %i.df = phi ptr [ %i.bd, %.thread60.i.i ], [ %i.de, %bb.z ]
  %i.dg = phi ptr [ %i.db, %.thread60.i.i ], [ %i.dd, %bb.z ]
  %i.dh = ptrtoint ptr %i.dg to i64
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %i.dh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ay, align 8, !noalias !42 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.ac

._crit_edge.i.i:                                  ; preds = %bb.ab
  %.pre.i.i = load i64, ptr %i.de, align 8, !noalias !42
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i, i64 12, i1 false), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !42
  %i.di = load i64, ptr %i.de, align 8, !noalias !42 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !42
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !42
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !42
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !42
  call void %i.dn(ptr nonnull sret([40 x i8]) align 8 %i.av, ptr nonnull byval([40 x i8]) align 8 %i.aw, i64 1) #15, !noalias !42, !inline_history !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !42
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !42
  call void %i.dp(ptr nonnull byval([40 x i8]) align 8 %i.au) #15, !noalias !42, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false), !noalias !42
  %.pre.i.i.i.i = load i64, ptr %i.de, align 8, !noalias !42
  br label %bb.an

bb.ae:                                            ; preds = %._crit_edge.i.i, %.thread62.i.i
  %2 = phi i64 [ 0, %.thread62.i.i ], [ %.pre.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.4.04666.i.i = phi i32 [ %.sroa.4.8.extract.trunc.i.i, %.thread62.i.i ], [ %.sroa.4.0.copyload.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.dq = phi ptr [ %i.df, %.thread62.i.i ], [ %i.de, %._crit_edge.i.i ] ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !42
  %i.dr = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 4 uses
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !42
  %i.dt = icmp eq i64 %2, %i.ds
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  %.sroa.4.0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !42
  %.sroa.5.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !42
  %i.du = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !42
  call void %i.dv(ptr nonnull sret([40 x i8]) align 8 %i.as, ptr nonnull byval([40 x i8]) align 8 %i.at, i64 1) #15, !noalias !42, !inline_history !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !42
  call void %i.dx(ptr nonnull byval([40 x i8]) align 8 %i.ar) #15, !noalias !42, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !noalias !42
  %.pre.i6.i.i.i = load i64, ptr %i.dq, align 8, !noalias !42
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dy = phi i64 [ %2, %bb.ae ], [ %.pre.i6.i.i.i, %bb.af ]
  %i.dz = load ptr, ptr %i.az, align 8, !noalias !42
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  store i8 0, ptr %i.ea, align 1, !noalias !42
  %i.eb = load i64, ptr %i.dq, align 8, !noalias !42
  %i.ec = add i64 %i.eb, 1                        ; 5 uses
  store i64 %i.ec, ptr %i.dq, align 8, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !42
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.4.04666.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !42
  %i.ed = load i64, ptr %i.dr, align 8, !noalias !42
  %i.ee = icmp eq i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !42
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !42
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !42
  call void %i.eg(ptr nonnull sret([40 x i8]) align 8 %i.ap, ptr nonnull byval([40 x i8]) align 8 %i.aq, i64 1) #15, !noalias !42, !inline_history !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !42
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !42
  call void %i.ei(ptr nonnull byval([40 x i8]) align 8 %i.ao) #15, !noalias !42, !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !42
  %.pre.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !noalias !42
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !42
  %i.ej = load i64, ptr %i.dr, align 8, !noalias !42
  %i.ek = icmp eq i64 %i.ec, %i.ej
  br i1 %i.ek, label %bb.ak, label %_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit7.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  %.sroa.4.0..sroa_idx.i4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !42
  %.sroa.5.0..sroa_idx.i5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !42
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !noalias !42
  call void %i.em(ptr nonnull sret([40 x i8]) align 8 %i.am, ptr nonnull byval([40 x i8]) align 8 %i.an, i64 1) #15, !noalias !42, !inline_history !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !42
  %i.en = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !42
  call void %i.eo(ptr nonnull byval([40 x i8]) align 8 %i.al) #15, !noalias !42, !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false), !noalias !42
  %.pre.i6.i.i.i.i.i = load i64, ptr %i.dq, align 8, !noalias !42
  br label %_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit7.i.i.i.i.i

_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit7.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.ep = phi i64 [ %i.ec, %bb.aj ], [ %.pre.i6.i.i.i.i.i, %bb.ak ]
  %i.eq = load ptr, ptr %i.az, align 8, !noalias !42
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ep
  store i8 1, ptr %i.er, align 1, !noalias !42
  %i.es = load i64, ptr %i.dq, align 8, !noalias !42
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.dq, align 8, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !42
  br label %bb.av

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %i.eu = phi i64 [ %i.ec, %bb.ah ], [ %.pre.i.i.i.i.i.i, %bb.ai ]
  %i.ev = load ptr, ptr %i.az, align 8, !noalias !42
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eu
  store i8 0, ptr %i.ew, align 1, !noalias !42
  %i.ex = load i64, ptr %i.dq, align 8, !noalias !42
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.dq, align 8, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !42
  %i.ez = load i64, ptr %i.dr, align 8, !noalias !42
  %i.fa = sub i64 %i.ez, %i.ey
  %i.fb = icmp ult i64 %i.fa, 4
  br i1 %i.fb, label %bb.am, label %_RNvXs1_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !42
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !42
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !42
  call void %i.fd(ptr nonnull sret([40 x i8]) align 8 %i.aj, ptr nonnull byval([40 x i8]) align 8 %i.ak, i64 4) #15, !noalias !42, !inline_history !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !42
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !42
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !42
  call void %i.ff(ptr nonnull byval([40 x i8]) align 8 %i.ai) #15, !noalias !42, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !42
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !noalias !42
  br label %_RNvXs1_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i.i.i.i

_RNvXs1_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsT5i8M4cfn9_24ra_ap_rustc_index_macros.exit.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %i.fg = phi i64 [ %i.ey, %bb.al ], [ %.pre.i.i.i.i.i.i.i, %bb.am ]
  %i.fh = load ptr, ptr %i.az, align 8, !noalias !42
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store i32 %.sroa.4.04666.i.i, ptr %i.fi, align 1, !noalias !42
  %i.fj = load i64, ptr %i.dq, align 8, !noalias !42
  %i.fk = add i64 %i.fj, 4
  store i64 %i.fk, ptr %i.dq, align 8, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !42
  br label %bb.av

bb.an:                                            ; preds = %bb.ad, %bb.ac
  %i.fl = phi i64 [ %i.di, %bb.ac ], [ %.pre.i.i.i.i, %bb.ad ]
  %i.fm = load ptr, ptr %i.az, align 8, !noalias !42
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 1, ptr %i.fn, align 1, !noalias !42
  %i.fo = load i64, ptr %i.de, align 8, !noalias !42
  %i.fp = add i64 %i.fo, 1                        ; 5 uses
  store i64 %i.fp, ptr %i.de, align 8, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !42
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ax, align 8, !noalias !42
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !42
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !noalias !42
  %i.fq = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775806
  br i1 %i.fq, label %.thread.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !42 ; 2 uses
  %.sroa.4.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.4.0.i.i.i.i = load i64, ptr %.sroa.4.0.in.i.i.i.i, align 8, !noalias !42 ; 5 uses
  %.not.i.i8.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i8.i.i.i, label %.thread.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !42
end_hunk_0
