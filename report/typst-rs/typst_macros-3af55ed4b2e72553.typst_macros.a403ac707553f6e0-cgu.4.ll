Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.4?download=true
begin_hunk_0_@_RNvXsh_NtCsjMPGGl8VONr_3syn5parseNvYNtNtCse52LceO7DeS_12typst_macros4util8BareTypeNtB5_5Parse5parseNtB5_6Parser6parse2BC_:bb.a
  %i.v = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCse52LceO7DeS_12typst_macros4util8BareTypeNtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1u_EE13from_residualBO_(ptr sret([56 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @56)
          to label %.invoke10 unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.w = invoke { ptr, ptr } @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = invoke { i32, i8 } @_RNvNtCsjMPGGl8VONr_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.x, ptr %i.y)
          to label %bb.q unwind label %bb.k       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.aa = extractvalue { i32, i8 } %i.z, 1        ; 2 uses
  %.not6.not = icmp eq i8 %i.aa, -1
  br i1 %.not6.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = extractvalue { i32, i8 } %i.z, 0
  invoke void @_RNvNtCsjMPGGl8VONr_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ab, i8 %i.aa)
          to label %bb.s unwind label %bb.k

.thread:                                          ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  br label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %.invoke10

bb.t:                                             ; preds = %.invoke
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  ret void

.invoke10:                                        ; preds = %bb.n, %bb.s
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse52LceO7DeS_12typst_macros4util8BareTypeEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.f

.invoke:                                          ; preds = %.invoke10, %bb.i, %.thread
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.c

bb.u:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.v:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjMPGGl8VONr_3syn5parseNvYNtNtCse52LceO7DeS_12typst_macros5scope4MetaNtB5_5Parse5parseNtB5_6Parser6parse2BC_(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.k = call { ptr, i64 } @_RNvMNtCsjMPGGl8VONr_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  store ptr %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.n, align 8
  invoke void @_RNvNtCsjMPGGl8VONr_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.j)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn9 = phi { ptr, i32 } [ %i.o, %bb.c ], [ %.pn, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.j) #17
          to label %bb.w unwind label %bb.v

bb.c:                                             ; preds = %.invoke, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtNtCse52LceO7DeS_12typst_macros5scope4MetaNtNtCsjMPGGl8VONr_3syn5parse5Parse5parseINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBO_11ParseBufferEE9call_onceB9_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.i)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.t, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i) #17
          to label %bb.b unwind label %bb.v

bb.f:                                             ; preds = %bb.i, %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCse52LceO7DeS_12typst_macros5scope4MetaNtNtCsjMPGGl8VONr_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCse52LceO7DeS_12typst_macros5scope4MetaNtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1r_EE13from_residualBO_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @57)
          to label %.invoke unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i8, ptr %i.r, align 8
  invoke void @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.i)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCsjMPGGl8VONr_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.u = load i64, ptr %i.f, align 8
  %.not6 = icmp eq i64 %i.u, -1
  br i1 %.not6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCse52LceO7DeS_12typst_macros5scope4MetaNtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1r_EE13from_residualBO_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @56)
          to label %.invoke unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.v = invoke { ptr, ptr } @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.i)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  %i.y = invoke { i32, i8 } @_RNvNtCsjMPGGl8VONr_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.w, ptr %i.x)
          to label %bb.q unwind label %bb.k       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.z = extractvalue { i32, i8 } %i.y, 1         ; 2 uses
  %.not7 = icmp eq i8 %i.z, -1
  br i1 %.not7, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = extractvalue { i32, i8 } %i.y, 0
  invoke void @_RNvNtCsjMPGGl8VONr_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.aa, i8 %i.z)
          to label %bb.t unwind label %bb.k

bb.s:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.s, ptr %i.ab, align 8
  store i64 -1, ptr %0, align 8
  br label %.invoke

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.invoke

bb.u:                                             ; preds = %.invoke
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.j)
  ret void

.invoke:                                          ; preds = %bb.n, %bb.i, %bb.t, %bb.s
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i)
          to label %bb.u unwind label %bb.c

bb.v:                                             ; preds = %bb.e, %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.w:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn9
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCscVvfRCjUNk2_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXss_NtCscVvfRCjUNk2_11proc_macro28fallbackNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.e) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr nonnull align 4 %i.h) #16, !noalias !82 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !82
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCscVvfRCjUNk2_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCscVvfRCjUNk2_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros.exit unwind label %bb.d, !noalias !82

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECscVvfRCjUNk2_11proc_macro2(ptr nonnull align 4 %i.b) #17
          to label %bb.f unwind label %bb.e, !noalias !82

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !82
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCscVvfRCjUNk2_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCscVvfRCjUNk2_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNvYNtNtCsjMPGGl8VONr_3syn4item10ItemStructNtNtB9_5parse5Parse5parseNtBK_6Parser5parseCse52LceO7DeS_12typst_macros(ptr sret([240 x i8]) align 8 %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [240 x i8], align 8               ; 4 uses
  %i.h = alloca [240 x i8], align 8               ; 6 uses
  %i.i = alloca [240 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs1_CscVvfRCjUNk2_11proc_macro2NtB5_11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.l, i32 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !85
  %i.m = call { ptr, i64 } @_RNvMNtCsjMPGGl8VONr_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c), !noalias !85 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  store ptr %i.n, ptr %i.k, align 8, !noalias !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !85
  invoke void @_RNvNtCsjMPGGl8VONr_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c, !noalias !85

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.q, %bb.c ], [ %.pn.i, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #17
          to label %bb.u unwind label %bb.t

bb.c:                                             ; preds = %.invoke.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtNtCsjMPGGl8VONr_3syn4item10ItemStructNtNtB9_5parse5Parse5parseINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBK_11ParseBufferEE9call_onceCse52LceO7DeS_12typst_macros(ptr nonnull sret([240 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f, !noalias !85

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.v, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #17
          to label %bb.b unwind label %bb.t

bb.f:                                             ; preds = %.invoke10.i, %bb.i, %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsjMPGGl8VONr_3syn4item10ItemStructNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCse52LceO7DeS_12typst_macros(ptr nonnull sret([240 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f, !noalias !85

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.h, align 8, !noalias !85
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !85
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsjMPGGl8VONr_3syn4item10ItemStructNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([240 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @57)
          to label %.invoke.i unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.i, ptr noundef nonnull align 8 dereferenceable(240) %i.h, i64 240, i1 false), !noalias !85
  invoke void @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k, !noalias !85

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4item10ItemStructEBF_(ptr nonnull align 8 %i.i) #17
          to label %bb.e unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCsjMPGGl8VONr_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k, !noalias !85

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %i.f, align 8, !noalias !85
  %.not.i = icmp eq i64 %i.w, -1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !85
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsjMPGGl8VONr_3syn4item10ItemStructNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([240 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @56)
          to label %.invoke10.i unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.x = invoke { ptr, ptr } @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k, !noalias !85 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.y = extractvalue { ptr, ptr } %i.x, 0
  %i.z = extractvalue { ptr, ptr } %i.x, 1
  %i.aa = invoke { i32, i8 } @_RNvNtCsjMPGGl8VONr_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.y, ptr %i.z)
          to label %bb.q unwind label %bb.k, !noalias !85 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ab = extractvalue { i32, i8 } %i.aa, 1       ; 2 uses
  %.not6.not.i = icmp eq i8 %i.ab, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = extractvalue { i32, i8 } %i.aa, 0
  invoke void @_RNvNtCsjMPGGl8VONr_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ac, i8 %i.ab)
          to label %bb.s unwind label %bb.k, !noalias !85

.thread.i:                                        ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %i.i, i64 240, i1 false)
  br label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !85
  br label %.invoke10.i

.invoke10.i:                                      ; preds = %bb.s, %bb.n
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4item10ItemStructEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.f

.invoke.i:                                        ; preds = %.invoke10.i, %.thread.i, %bb.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %_RNvXsh_NtCsjMPGGl8VONr_3syn5parseNvYNtNtB7_4item10ItemStructNtB5_5Parse5parseNtB5_6Parser6parse2Cse52LceO7DeS_12typst_macros.exit unwind label %bb.c

bb.t:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.u:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8.i

_RNvXsh_NtCsjMPGGl8VONr_3syn5parseNvYNtNtB7_4item10ItemStructNtB5_5Parse5parseNtB5_6Parser6parse2Cse52LceO7DeS_12typst_macros.exit: ; preds = %.invoke.i
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNvYNtNtCsjMPGGl8VONr_3syn4item4ItemNtNtB9_5parse5Parse5parseNtBD_6Parser5parseCse52LceO7DeS_12typst_macros(ptr sret([352 x i8]) align 8 %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [352 x i8], align 8               ; 4 uses
  %i.h = alloca [352 x i8], align 8               ; 6 uses
  %i.i = alloca [352 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs1_CscVvfRCjUNk2_11proc_macro2NtB5_11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.l, i32 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
end_hunk_0
