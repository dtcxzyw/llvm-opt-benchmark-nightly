Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.1?download=true
inline.NumInlined: 62
inline.NumDeleted: 49
begin_hunk_0_@_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4attr9AttributeECsaC8UfsfJL0H_18foundations_macros:bb.a
  %i.h = alloca [256 x i8], align 8               ; 6 uses
  %i.i = alloca [256 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [256 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = call { ptr, i64 } @_RNvMNtCs6bAnw1I7Lci_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c), !noalias !7 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %i.k, align 8, !noalias !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !7
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c, !noalias !7

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.c ], [ %.pn.i, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #27
          to label %common.resume unwind label %bb.t

bb.c:                                             ; preds = %.invoke.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([256 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f, !noalias !7

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.w, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #27
          to label %bb.b unwind label %bb.t

bb.f:                                             ; preds = %.invoke10.i, %bb.i, %bb.g, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([256 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f, !noalias !7

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.h, align 8, !noalias !7
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !7
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1l_EE13from_residualBO_(ptr nonnull sret([256 x i8]) align 8 %i.m, ptr nonnull align 8 %i.a, ptr nonnull align 8 @44)
          to label %.invoke.i unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.i, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false), !noalias !7
  invoke void @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k, !noalias !7

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr nonnull align 8 %i.i) #27
          to label %bb.e unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k, !noalias !7

bb.m:                                             ; preds = %bb.l
  %i.x = load i64, ptr %i.f, align 8, !noalias !7
  %.not.i = icmp eq i64 %i.x, -1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !7
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1l_EE13from_residualBO_(ptr nonnull sret([256 x i8]) align 8 %i.m, ptr nonnull align 8 %i.b, ptr nonnull align 8 @43)
          to label %.invoke10.i unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.y = invoke { ptr, ptr } @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k, !noalias !7 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  %i.ab = invoke { i32, i8 } @_RNvNtCs6bAnw1I7Lci_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.z, ptr %i.aa)
          to label %bb.q unwind label %bb.k, !noalias !7 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = extractvalue { i32, i8 } %i.ab, 1       ; 2 uses
  %.not6.not.i = icmp eq i8 %i.ac, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = extractvalue { i32, i8 } %i.ab, 0
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ad, i8 %i.ac)
          to label %bb.s unwind label %bb.k, !noalias !7

.thread.i:                                        ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, ptr noundef nonnull align 8 dereferenceable(256) %i.i, i64 256, i1 false)
  br label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %i.m, align 8, !alias.scope !7
  br label %.invoke10.i

.invoke10.i:                                      ; preds = %bb.s, %bb.n
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.f

.invoke.i:                                        ; preds = %.invoke10.i, %.thread.i, %bb.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4attr9AttributeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.c

bb.t:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %.pn8.i, %bb.b ], [ %i.aj, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4attr9AttributeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %.invoke.i
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
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
  %i.ag = load i64, ptr %i.m, align 8
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4attr9AttributeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsaC8UfsfJL0H_18foundations_macros.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13panic_displayNtNtCs6bAnw1I7Lci_3syn5error5ErrorECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.l, ptr align 8 %2) #29
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4attr9AttributeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsaC8UfsfJL0H_18foundations_macros.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.m, i64 256, i1 false)
  ret void

bb.w:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.l) #27
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %bb.u
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaC8UfsfJL0H_18foundations_macros6common16parse_attr_valueNtNtCs6bAnw1I7Lci_3syn3lit6LitStrEB4_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.l)
          to label %.noexc unwind label %bb.d, !noalias !12

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvXs_NtNtCs6bAnw1I7Lci_3syn4attr8printingNtB6_4MetaNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.l)
          to label %bb.e unwind label %bb.b, !noalias !12

bb.b:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.l) #27
          to label %.body unwind label %bb.c, !noalias !12

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !12
  unreachable

bb.d:                                             ; preds = %bb.x, %bb.e, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.o, %bb.d ], [ %.pn9.i, %bb.f ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr align 8 %1) #27
          to label %bb.ab unwind label %bb.aa

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.p = invoke { ptr, i64 } @_RNvMNtCs6bAnw1I7Lci_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c)
          to label %.noexc1 unwind label %bb.d, !noalias !13 ; 2 uses

.noexc1:                                          ; preds = %bb.e
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  store ptr %i.q, ptr %i.k, align 8, !noalias !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !13
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.h unwind label %bb.g, !noalias !13

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn9.i = phi { ptr, i32 } [ %i.t, %bb.g ], [ %.pn.i, %bb.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #27
          to label %.body unwind label %bb.y

bb.g:                                             ; preds = %.invoke.i, %.noexc1
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %.noexc1
  invoke void @_RNvYNCINvNtCsaC8UfsfJL0H_18foundations_macros6common16parse_attr_valueNtNtCs6bAnw1I7Lci_3syn3lit6LitStrE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB1a_5parse11ParseBufferEE9call_onceB9_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.k unwind label %bb.j, !noalias !13

bb.i:                                             ; preds = %bb.o, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.y, %bb.o ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #27
          to label %bb.f unwind label %bb.y

bb.j:                                             ; preds = %.invoke11.i, %bb.m, %bb.k, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn3lit6LitStrNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.l unwind label %bb.j, !noalias !13

bb.l:                                             ; preds = %bb.k
  %i.v = load i64, ptr %i.h, align 8, !noalias !13
  %.not.i = icmp eq i64 %i.v, -1
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !13
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn3lit6LitStrNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1h_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @44)
          to label %.invoke.i unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !13
  store ptr %i.x, ptr %i.i, align 8, !noalias !13
  invoke void @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.o, !noalias !13

bb.o:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.p, %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn3lit6LitStrEBF_(ptr nonnull align 8 %i.i) #27
          to label %bb.i unwind label %bb.y

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.q unwind label %bb.o, !noalias !13

bb.q:                                             ; preds = %bb.p
  %i.z = load i64, ptr %i.f, align 8, !noalias !13
  %.not6.i = icmp eq i64 %i.z, -1
  br i1 %.not6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !13
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn3lit6LitStrNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1h_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @43)
          to label %.invoke11.i unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  %i.aa = invoke { ptr, ptr } @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.o, !noalias !13 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  %i.ad = invoke { i32, i8 } @_RNvNtCs6bAnw1I7Lci_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.ab, ptr %i.ac)
          to label %bb.u unwind label %bb.o, !noalias !13 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ae = extractvalue { i32, i8 } %i.ad, 1       ; 2 uses
  %.not7.not.i = icmp eq i8 %i.ae, -1
  br i1 %.not7.not.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = extractvalue { i32, i8 } %i.ad, 0
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.af, i8 %i.ae)
          to label %bb.w unwind label %bb.o, !noalias !13

.thread.i:                                        ; preds = %bb.u
  %i.ag = load ptr, ptr %i.i, align 8, !noalias !13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !13
  store i64 -1, ptr %0, align 8, !alias.scope !13
  br label %.invoke.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.invoke11.i

bb.x:                                             ; preds = %.invoke.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
          to label %bb.z unwind label %bb.d

.invoke11.i:                                      ; preds = %bb.w, %bb.r
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn3lit6LitStrEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.j

.invoke.i:                                        ; preds = %.invoke11.i, %.thread.i, %bb.m
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.x unwind label %bb.g

bb.y:                                             ; preds = %bb.o, %bb.i, %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.x
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
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr align 8 %1)
  ret void

bb.aa:                                            ; preds = %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ab:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaC8UfsfJL0H_18foundations_macros6common16parse_attr_valueNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructEB4_(ptr sret([168 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [168 x i8], align 8               ; 4 uses
  %i.h = alloca [168 x i8], align 8               ; 6 uses
  %i.i = alloca [168 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.l)
          to label %.noexc unwind label %bb.d, !noalias !18

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvXs_NtNtCs6bAnw1I7Lci_3syn4attr8printingNtB6_4MetaNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.l)
          to label %bb.e unwind label %bb.b, !noalias !18

bb.b:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.l) #27
          to label %.body unwind label %bb.c, !noalias !18

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !18
  unreachable

bb.d:                                             ; preds = %bb.x, %bb.e, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.o, %bb.d ], [ %.pn8.i, %bb.f ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr align 8 %1) #27
          to label %bb.ab unwind label %bb.aa

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.p = invoke { ptr, i64 } @_RNvMNtCs6bAnw1I7Lci_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c)
          to label %.noexc1 unwind label %bb.d, !noalias !19 ; 2 uses

.noexc1:                                          ; preds = %bb.e
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  store ptr %i.q, ptr %i.k, align 8, !noalias !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !19
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.h unwind label %bb.g, !noalias !19

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn8.i = phi { ptr, i32 } [ %i.t, %bb.g ], [ %.pn.i, %bb.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #27
          to label %.body unwind label %bb.y

bb.g:                                             ; preds = %.invoke.i, %.noexc1
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %.noexc1
  invoke void @_RNvYNCINvNtCsaC8UfsfJL0H_18foundations_macros6common16parse_attr_valueNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB1a_5parse11ParseBufferEE9call_onceB9_(ptr nonnull sret([168 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.k unwind label %bb.j, !noalias !19

bb.i:                                             ; preds = %bb.o, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.y, %bb.o ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #27
          to label %bb.f unwind label %bb.y

bb.j:                                             ; preds = %.invoke10.i, %bb.m, %bb.k, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([168 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.l unwind label %bb.j, !noalias !19

bb.l:                                             ; preds = %bb.k
  %i.v = load i64, ptr %i.h, align 8, !noalias !19
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !19
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([168 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @44)
          to label %.invoke.i unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.i, ptr noundef nonnull align 8 dereferenceable(168) %i.h, i64 168, i1 false), !noalias !19
  invoke void @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.o, !noalias !19

bb.o:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.p, %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructEBF_(ptr nonnull align 8 %i.i) #27
          to label %bb.i unwind label %bb.y

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.q unwind label %bb.o, !noalias !19

bb.q:                                             ; preds = %bb.p
  %i.z = load i64, ptr %i.f, align 8, !noalias !19
  %.not.i = icmp eq i64 %i.z, -1
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !19
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([168 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @43)
          to label %.invoke10.i unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  %i.aa = invoke { ptr, ptr } @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.o, !noalias !19 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  %i.ad = invoke { i32, i8 } @_RNvNtCs6bAnw1I7Lci_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.ab, ptr %i.ac)
          to label %bb.u unwind label %bb.o, !noalias !19 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ae = extractvalue { i32, i8 } %i.ad, 1       ; 2 uses
  %.not6.not.i = icmp eq i8 %i.ae, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = extractvalue { i32, i8 } %i.ad, 0
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.af, i8 %i.ae)
          to label %bb.w unwind label %bb.o, !noalias !19

.thread.i:                                        ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.i, i64 168, i1 false)
  br label %.invoke.i

bb.w:                                             ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !19
  br label %.invoke10.i

bb.x:                                             ; preds = %.invoke.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
          to label %bb.z unwind label %bb.d

.invoke10.i:                                      ; preds = %bb.w, %bb.r
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.j

.invoke.i:                                        ; preds = %.invoke10.i, %.thread.i, %bb.m
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.x unwind label %bb.g

bb.y:                                             ; preds = %bb.o, %bb.i, %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.x
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
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr align 8 %1)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ab:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtNtCs6bAnw1I7Lci_3syn4item4ItemEB4_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !25
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtNtCs6bAnw1I7Lci_3syn4item4ItemNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4item4ItemNtB2_7Spanned4spanCsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.b, !noalias !25

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.a) #27
          to label %bb.d unwind label %bb.c, !noalias !25

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !25
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4item4ItemNtB2_7Spanned4spanCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = call i32 @_RNvNtCsk5uxfcyCLQt_5quote7spanned10join_spans(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.g, ptr %2, i64 %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtCse4VeaA6Ikg_11proc_macro211TokenStreamQNtNtCs6bAnw1I7Lci_3syn4item10ItemStructEB4_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !31
  %.val.val.i.i.i.i = load ptr, ptr %1, align 8, !noalias !31
end_hunk_0
begin_hunk_1_@_RNvCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry:bb.a
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.c)
          to label %bb.ec unwind label %bb.du, !noalias !34

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @21, i64 16)
          to label %bb.ed unwind label %bb.du, !noalias !34

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.c)
          to label %bb.ee unwind label %bb.du, !noalias !34

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @22, i64 4)
          to label %bb.ef unwind label %bb.du, !noalias !34

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.eg unwind label %bb.du, !noalias !34

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.c, i8 0, ptr nonnull align 8 %i.b)
          to label %bb.eh unwind label %bb.du, !noalias !34

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private9push_semi(ptr nonnull align 8 %i.c)
          to label %bb.ei unwind label %bb.du, !noalias !34

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvXsu_NtCsk5uxfcyCLQt_5quote9to_tokensNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.c)
          to label %bb.ej unwind label %bb.du, !noalias !34

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !34
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.j, i8 1, ptr nonnull align 8 %i.d)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.w)
          to label %bb.el unwind label %bb.au, !noalias !34

bb.el:                                            ; preds = %bb.ek
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.aa)
          to label %bb.em unwind label %bb.w, !noalias !34

bb.em:                                            ; preds = %bb.el
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.af)
          to label %bb.en unwind label %bb.o, !noalias !34

bb.en:                                            ; preds = %bb.em
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.ag)
          to label %bb.eo unwind label %bb.l, !noalias !34

bb.eo:                                            ; preds = %bb.en
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.ah)
          to label %bb.ep unwind label %bb.i, !noalias !34

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4stmt5BlockEEB1e_(ptr nonnull align 8 %i.ai)
          to label %bb.es unwind label %bb.er, !noalias !34

bb.eq:                                            ; preds = %bb.er, %bb.h
  %.pn12.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.i.i, %bb.h ], [ %i.do, %bb.er ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn8generics11WhereClauseEEB11_(ptr nonnull align 8 %i.aj) #27
          to label %bb.et unwind label %bb.bn, !noalias !34

bb.er:                                            ; preds = %bb.ep
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.es:                                            ; preds = %bb.ep
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn8generics11WhereClauseEEB11_(ptr nonnull align 8 %i.aj)
          to label %bb.ev unwind label %bb.eu, !noalias !34

bb.et:                                            ; preds = %bb.eu, %bb.eq
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.eq ], [ %i.dp, %bb.eu ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.ak) #27
          to label %bb.ew unwind label %bb.bn, !noalias !34

bb.eu:                                            ; preds = %bb.es
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ev:                                            ; preds = %bb.es
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.ak)
          to label %bb.ey unwind label %bb.ex, !noalias !34

bb.ew:                                            ; preds = %bb.ex, %bb.et
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.et ], [ %i.dq, %bb.ex ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.al) #27
          to label %bb.ez unwind label %bb.bn, !noalias !34

bb.ex:                                            ; preds = %bb.ev
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ey:                                            ; preds = %bb.ev
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.al)
          to label %bb.fb unwind label %bb.fa, !noalias !34

bb.ez:                                            ; preds = %bb.fa, %bb.ew
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.ew ], [ %i.dr, %bb.fa ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty3AbiEEB11_(ptr nonnull align 8 %i.am) #27
          to label %bb.fc unwind label %bb.bn, !noalias !34

bb.fa:                                            ; preds = %bb.ey
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fb:                                            ; preds = %bb.ey
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty3AbiEEB11_(ptr nonnull align 8 %i.am)
          to label %bb.fe unwind label %bb.fd, !noalias !34

bb.fc:                                            ; preds = %bb.fd, %bb.ez
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.ez ], [ %i.ds, %bb.fd ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.aq) #27
          to label %bb.ff unwind label %bb.bn, !noalias !34

bb.fd:                                            ; preds = %bb.fb
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fe:                                            ; preds = %bb.fb
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.aq)
          to label %bb.fh unwind label %bb.fg, !noalias !34

bb.ff:                                            ; preds = %bb.fg, %bb.fc
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fc ], [ %i.dt, %bb.fg ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn2ty10ReturnTypeEBF_(ptr nonnull align 8 %i.ar) #27
          to label %bb.fi unwind label %bb.bn, !noalias !34

bb.fg:                                            ; preds = %bb.fe
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fh:                                            ; preds = %bb.fe
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn2ty10ReturnTypeEBF_(ptr nonnull align 8 %i.ar)
          to label %bb.fk unwind label %bb.fj, !noalias !34

bb.fi:                                            ; preds = %bb.fj, %bb.ff
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.ff ], [ %i.du, %bb.fj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.as) #27
          to label %bb.fl unwind label %bb.bn, !noalias !34

bb.fj:                                            ; preds = %bb.fh
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fk:                                            ; preds = %bb.fh
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.as)
          to label %bb.fn unwind label %bb.fm, !noalias !34

bb.fl:                                            ; preds = %bb.fm, %bb.fi
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fi ], [ %i.dv, %bb.fm ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.at) #27
          to label %bb.fo unwind label %bb.bn, !noalias !34

bb.fm:                                            ; preds = %bb.fk
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fn:                                            ; preds = %bb.fk
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.at)
          to label %bb.fq unwind label %bb.fp, !noalias !34

bb.fo:                                            ; preds = %bb.fp, %bb.fl
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fl ], [ %i.dx, %bb.fp ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4item8VariadicEEB11_(ptr nonnull align 8 %i.dw) #27
          to label %bb.fr unwind label %bb.bn, !noalias !34

bb.fp:                                            ; preds = %bb.fn
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fq:                                            ; preds = %bb.fn
  %i.dy = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4item8VariadicEEB11_(ptr nonnull align 8 %i.dy)
          to label %bb.ft unwind label %bb.fs, !noalias !34

bb.fr:                                            ; preds = %bb.fs, %bb.fo
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fo ], [ %i.dz, %bb.fs ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.av) #27
          to label %.thread.i unwind label %bb.bn, !noalias !34

bb.fs:                                            ; preds = %bb.fq
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ft:                                            ; preds = %bb.fq
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.av), !noalias !34
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.ea = call i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.aw)
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit

bb.fu:                                            ; preds = %.thread13.i, %bb.gd, %bb.gc, %bb.fz
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.fv:                                            ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6bAnw1I7Lci_3syn4item6ItemFnNtNtB11_5error5ErrorEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ax)
          to label %bb.fw unwind label %bb.e

bb.fw:                                            ; preds = %bb.fv
  %i.ec = invoke i32 @_RNvMsi_Cse4VeaA6Ikg_11proc_macro2NtB5_4Span9call_site()
          to label %bb.fx unwind label %bb.e

bb.fx:                                            ; preds = %bb.fw
  invoke void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.ay, i32 %i.ec, ptr nonnull @23, i64 57)
          to label %bb.fy unwind label %bb.e

bb.fy:                                            ; preds = %bb.fx
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.az, ptr nonnull align 8 %i.ay)
          to label %bb.ga unwind label %bb.fz

bb.fz:                                            ; preds = %bb.ga, %bb.fy
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.ay) #27
          to label %bb.gc unwind label %bb.fu

bb.ga:                                            ; preds = %bb.fy
  %i.ee = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.az)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros.exit9.i unwind label %bb.fz

_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros.exit9.i: ; preds = %bb.ga
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.ay)
          to label %bb.gb unwind label %bb.e

bb.gb:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros.exit9.i
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.bd)
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit

bb.gc:                                            ; preds = %bb.fz, %bb.e
  %.pn.ph.i = phi { ptr, i32 } [ %i.bj, %bb.e ], [ %i.ed, %bb.fz ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.bd) #27
          to label %.thread.i unwind label %bb.fu

bb.gd:                                            ; preds = %bb.ge, %bb.c
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.bb) #27
          to label %.thread13.i unwind label %bb.fu

bb.ge:                                            ; preds = %bb.c
  %i.eg = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.ba)
          to label %bb.gf unwind label %bb.gd

bb.gf:                                            ; preds = %bb.ge
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.bb)
          to label %.thread27.i unwind label %.thread18.i

.thread27.i:                                      ; preds = %bb.gf
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.be)
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit

.thread.i:                                        ; preds = %.thread13.i, %bb.gc, %bb.fr
  %.pn712.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fr ], [ %.pn716.i, %.thread13.i ], [ %.pn.ph.i, %bb.gc ]
  resume { ptr, i32 } %.pn712.i

.thread13.i:                                      ; preds = %bb.gd, %.thread18.i
  %.pn716.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread18.i ], [ %i.ef, %bb.gd ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.be) #27
          to label %.thread.i unwind label %bb.fu

_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit: ; preds = %bb.ft, %bb.gb, %.thread27.i
  %.sroa.0.0.i = phi i32 [ %i.eg, %.thread27.i ], [ %i.ea, %bb.ft ], [ %i.ee, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvCsaC8UfsfJL0H_18foundations_macros7metrics(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvNtCsaC8UfsfJL0H_18foundations_macros7metrics6expand(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvCsaC8UfsfJL0H_18foundations_macros7span_fn(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn6expand(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvCsaC8UfsfJL0H_18foundations_macros8settings(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings6expand(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3newCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %1, 65536
  %. = select i1 %i.e, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 2, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %.sroa.0.0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCsaC8UfsfJL0H_18foundations_macros(i32 %1, ptr %i.h) #26
  %i.i = add i64 %.sroa.0.0, %i.b
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6as_strCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
end_hunk_1
begin_hunk_2_@_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros:bb.a
_RNvXsz_NtCse4VeaA6Ikg_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i, %bb.b
  %.sroa.46.0 = phi i32 [ undef, %bb.b ], [ %i.h, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %.sroa.4.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.0.copyload5, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %.sroa.3.0 = phi ptr [ %i.f, %bb.b ], [ %.sroa.3.0.copyload3, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %.sroa.0.0.copyload1, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.46.0, ptr %.sroa.46.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #2 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueENtNtB7_5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldENtNtB7_5clone5Clone5cloneBR_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENtNtB7_5clone5Clone5cloneBR_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_charCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %1, 65536
  %..i = select i1 %i.e, i64 3, i64 4
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %.sroa.0.0.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCsaC8UfsfJL0H_18foundations_macros(i32 %1, ptr %i.h) #26
  %i.i = add i64 %.sroa.0.0.i, %i.b
  store i64 %i.i, ptr %i.a, align 8
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCse4VeaA6Ikg_11proc_macro2(ptr align 8 %0, ptr %1, i64 %2) #26
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs6bAnw1I7Lci_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEp4ItemRB1c_EL_ENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1g_(ptr %0, ptr align 8 %1) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryNtB4_4ArgsNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [56 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [80 x i8], align 8                ; 2 uses
  %i.z = alloca [96 x i8], align 8                ; 3 uses
  %i.aa = alloca [80 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 2 uses
  %i.ad = alloca [32 x i8], align 8               ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 2 uses
  %i.ag = alloca [48 x i8], align 8               ; 2 uses
  %i.ah = alloca [48 x i8], align 8               ; 4 uses
  %i.ai = alloca [48 x i8], align 8               ; 9 uses
  %i.aj = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.aj, align 8
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4path4PathEB8_(ptr nonnull sret([48 x i8]) align 8 %i.ag, ptr align 8 %1)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.ag) #26
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1M_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.w, ptr nonnull align 8 @41) #26
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  %i.an = invoke i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3lenB4_(ptr nonnull align 8 %i.ai)
          to label %bb.d unwind label %.thread13

.thread13:                                        ; preds = %bb.s, %bb.bo, %bb.q, %bb.n, %.noexc, %bb.l, %bb.i, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ap = invoke align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.ai, i64 0, ptr nonnull align 8 @33)
          to label %bb.f unwind label %.thread13

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = invoke zeroext i1 @_RNvXsz_Cse4VeaA6Ikg_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.aq, ptr nonnull align 8 @35)
          to label %bb.g unwind label %.thread13

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = invoke align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.ai, i64 1, ptr nonnull align 8 @36)
          to label %bb.j unwind label %.thread13

bb.i:                                             ; preds = %bb.j, %bb.d, %bb.g
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ false, %bb.g ], [ %i.av, %bb.j ] ; 2 uses
  %i.at = invoke align 8 ptr @_RNvMs_NtCs6bAnw1I7Lci_3syn4pathNtB4_4Path9get_ident(ptr nonnull align 8 %i.ai)
          to label %bb.k unwind label %.thread13  ; 2 uses

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.av = invoke zeroext i1 @_RNvXsz_Cse4VeaA6Ikg_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.au, ptr nonnull align 8 @37)
          to label %bb.i unwind label %.thread13

bb.k:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.af, align 8
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtCse4VeaA6Ikg_11proc_macro25IdentINtB7_9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.af, ptr nonnull align 8 @37)
          to label %.split unwind label %.thread13

.split:                                           ; preds = %bb.l
  %spec.select = select i1 %i.aw, i1 true, i1 %.sroa.0.0
  br i1 %spec.select, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  br i1 %.sroa.0.0, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split, %bb.m
  invoke void @_RNvNtCsaC8UfsfJL0H_18foundations_macros6common33parse_optional_trailing_meta_list(ptr nonnull sret([32 x i8]) align 8 %i.ac, ptr nonnull align 8 %i.aj)
          to label %bb.q unwind label %.thread13

bb.o:                                             ; preds = %.split, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ax = invoke i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4path4PathNtB2_7Spanned4spanCsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.ai)
          to label %.noexc unwind label %.thread13, !noalias !62

.noexc:                                           ; preds = %bb.o
  invoke void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.v, i32 %i.ax, ptr nonnull @38, i64 59)
          to label %_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtNtB4_19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn4path4PathEB4_.exit unwind label %.thread13, !noalias !62

_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtNtB4_19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn4path4PathEB4_.exit: ; preds = %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtNtB4_19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn4path4PathEB4_.exit, %bb.s, %bb.bo
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.ai)
  br label %bb.bn

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1p_(ptr nonnull sret([32 x i8]) align 8 %i.ad, ptr nonnull align 8 %i.ac)
          to label %bb.r unwind label %.thread13

bb.r:                                             ; preds = %bb.q
  %i.az = load i64, ptr %i.ad, align 8
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1M_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.x, ptr nonnull align 8 @40)
          to label %bb.p unwind label %.thread13

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %i.bc = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ae)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.an, %bb.bl, %bb.bj, %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.thread18.i, %bb.bi, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.u ], [ %.pn10.pn.i, %bb.bi ], [ %.pn10.pn.i, %.thread18.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEEB1g_(ptr nonnull align 8 %i.ae) #27
          to label %.thread unwind label %bb.bp

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 0, ptr %i.u, align 8, !noalias !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  store i64 -1, ptr %i.be, align 8, !noalias !63
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error11accumulator(ptr nonnull sret([24 x i8]) align 8 %i.t)
          to label %bb.w unwind label %bb.x, !noalias !63

.thread18.i:                                      ; preds = %.thread.i, %bb.aj, %bb.x
  %.pn10.pn.i = phi { ptr, i32 } [ %.pn1017.i, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.x ], [ %i.bu, %bb.aj ] ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noalias !63
  %.not13.i = icmp eq i64 %i.bf, -1
  br i1 %.not13.i, label %.body, label %bb.bi

bb.w:                                             ; preds = %bb.v
  %i.bg = extractvalue { ptr, i64 } %i.bc, 1
  %i.bh = extractvalue { ptr, i64 } %i.bc, 0
  %i.bi = invoke { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBM_(ptr align 8 %i.bh, i64 %i.bg)
          to label %bb.y unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63 ; 2 uses

.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh, %bb.bg, %bb.aw, %bb.aq, %bb.ap, %bb.ao, %.backedge.i, %bb.w
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.x:                                             ; preds = %bb.al, %bb.ai, %bb.ae, %bb.ac, %bb.ab, %bb.v
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread18.i

bb.y:                                             ; preds = %bb.w
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1
  store ptr %i.bj, ptr %i.s, align 8, !noalias !63
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !noalias !63
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.y
  %i.bo = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_(ptr nonnull align 8 %i.s)
          to label %bb.z unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63 ; 5 uses

bb.z:                                             ; preds = %.backedge.i
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !63
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %bb.ao, label %bb.ap

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !63
  invoke void @_RNvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB5_11Accumulator6finish(ptr nonnull sret([80 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.ac unwind label %bb.x, !noalias !63

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCsje5z0uo7eGy_12darling_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([80 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.ad unwind label %bb.x, !noalias !63

bb.ad:                                            ; preds = %bb.ac
  %i.br = load i64, ptr %i.g, align 8, !noalias !63
  %.not7.i = icmp eq i64 %i.br, -1
  br i1 %.not7.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !63
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry7OptionsNtNtCsje5z0uo7eGy_12darling_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1P_EE13from_residualBO_(ptr nonnull sret([80 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.c, ptr nonnull align 8 @26)
          to label %bb.an unwind label %bb.x

bb.af:                                            ; preds = %bb.ad
  %i.bs = load i64, ptr %i.be, align 8, !noalias !63
  %.not8.i = icmp eq i64 %i.bs, -1
  br i1 %.not8.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !noalias !63
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvMNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryNtB2_7Options18default_crate_path.exit.i, %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  store i64 -1, ptr %i.aa, align 8, !alias.scope !63
  br label %bb.bj

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc.i unwind label %bb.x, !noalias !64

.noexc.i:                                         ; preds = %bb.ai
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.a)
          to label %bb.ak unwind label %bb.aj, !noalias !64

bb.aj:                                            ; preds = %bb.ak, %.noexc.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.a) #27
          to label %.thread18.i unwind label %bb.am, !noalias !64

bb.ak:                                            ; preds = %.noexc.i
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @5, i64 11)
          to label %bb.al unwind label %bb.aj, !noalias !64

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !64
  invoke void @_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4path4PathECsje5z0uo7eGy_12darling_core(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.b, ptr nonnull align 8 @7)
          to label %_RNvMNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryNtB2_7Options18default_crate_path.exit.i unwind label %bb.x, !noalias !63

bb.am:                                            ; preds = %bb.aj
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !64
  unreachable

_RNvMNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryNtB2_7Options18default_crate_path.exit.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  br label %bb.ah

bb.an:                                            ; preds = %bb.ae
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTbINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4path4PathEEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u)
          to label %bb.bj unwind label %bb.u

bb.ao:                                            ; preds = %bb.aa
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error18unsupported_format(ptr nonnull sret([80 x i8]) align 8 %i.h, ptr nonnull @28, i64 7)
          to label %bb.bg unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63

bb.ap:                                            ; preds = %bb.aa
  store ptr %i.bo, ptr %i.r, align 8, !noalias !63
  %i.bw = invoke align 8 ptr @_RNvMs_NtCs6bAnw1I7Lci_3syn4attrNtB4_4Meta4path(ptr nonnull align 8 %i.bo)
          to label %bb.aq unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtNtCsje5z0uo7eGy_12darling_core4util14path_to_string14path_to_string(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr align 8 %i.bw)
          to label %bb.at unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63

bb.ar:                                            ; preds = %bb.bc, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.bx, %bb.as ], [ %i.cp, %bb.bc ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.q) #27
          to label %.thread.i unwind label %bb.bf, !noalias !63

bb.as:                                            ; preds = %.invoke.i, %bb.be, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.av, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.thread.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq
  %i.by = load ptr, ptr %i.bm, align 8, !noalias !63 ; 3 uses
  %i.bz = load i64, ptr %i.bn, align 8, !noalias !63 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 10
  br i1 %i.ca, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.thread.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.i: ; preds = %bb.at
  %i.cb = load i64, ptr %i.by, align 1
  %i.cc = xor i64 %i.cb, 7021216708419482211
  %i.cd = getelementptr i8, ptr %i.by, i64 8
  %i.ce = load i16, ptr %i.cd, align 1
  %i.cf = zext i16 %i.ce to i64
  %i.cg = xor i64 %i.cf, 26740
  %i.ch = or i64 %i.cc, %i.cg
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.au, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.thread.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.thread.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.i, %bb.at
  invoke void @_RINvMNtCsje5z0uo7eGy_12darling_core5errorNtB3_5Error23unknown_field_with_altsReRAB1d_j1_ECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([80 x i8]) align 8 %i.j, ptr %i.by, i64 %i.bz, ptr nonnull align 8 @27)
          to label %bb.av unwind label %bb.as, !noalias !63

bb.au:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.i
  %i.cl = load i8, ptr %i.u, align 8, !noalias !63
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ax, label %bb.ay

bb.av:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros.exit.thread.i
  %i.cn = load ptr, ptr %i.r, align 8, !noalias !63
  invoke void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanNtNtCs6bAnw1I7Lci_3syn4attr4MetaEB8_(ptr nonnull sret([80 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j, ptr align 8 %i.cn)
          to label %.invoke.i unwind label %bb.as, !noalias !63

bb.aw:                                            ; preds = %.invoke.i, %bb.bd
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.q)
          to label %.backedge.i.backedge unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63

bb.ax:                                            ; preds = %bb.au
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error15duplicate_field(ptr nonnull sret([80 x i8]) align 8 %i.l, ptr nonnull @4, i64 10)
          to label %bb.be unwind label %bb.as, !noalias !63

bb.ay:                                            ; preds = %bb.au
  %i.co = load ptr, ptr %i.r, align 8, !noalias !63
  invoke void @_RNvYNtNtCs6bAnw1I7Lci_3syn4path4PathNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_metaBC_(ptr nonnull sret([80 x i8]) align 8 %i.n, ptr align 8 %i.co)
          to label %bb.az unwind label %bb.as, !noalias !63

bb.az:                                            ; preds = %bb.ay
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs6bAnw1I7Lci_3syn4path4PathNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1e_NCNvXs0_NtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryNtB2h_7OptionsNtNtB1i_9from_meta8FromMeta9from_list0EB2j_(ptr nonnull sret([80 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.r)
          to label %bb.ba unwind label %bb.as, !noalias !63

bb.ba:                                            ; preds = %bb.az
  invoke void @_RINvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB6_11Accumulator6handleNtNtCs6bAnw1I7Lci_3syn4path4PathECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([48 x i8]) align 8 %i.p, ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.o)
          to label %bb.bb unwind label %bb.as, !noalias !63

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTbINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4path4PathEEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.u)
          to label %bb.bd unwind label %bb.bc, !noalias !63

bb.bc:                                            ; preds = %bb.bb
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.u, align 8, !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !63
  br label %bb.ar

bb.bd:                                            ; preds = %bb.bb
  store i8 1, ptr %i.u, align 8, !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !63
  br label %bb.aw

bb.be:                                            ; preds = %bb.ax
  invoke void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanRNtNtCs6bAnw1I7Lci_3syn4attr4MetaECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([80 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.r)
          to label %.invoke.i unwind label %bb.as, !noalias !63

.invoke.i:                                        ; preds = %bb.be, %bb.av
  %i.cq = phi ptr [ %i.k, %bb.av ], [ %i.m, %bb.be ]
  invoke void @_RNvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB5_11Accumulator4push(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.cq)
          to label %bb.aw unwind label %bb.as, !noalias !63

bb.bf:                                            ; preds = %bb.bi, %.thread.i, %bb.ar
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bg:                                            ; preds = %bb.ao
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  invoke void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanNtNtCs6bAnw1I7Lci_3syn3lit3LitEB8_(ptr nonnull sret([80 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.cs)
          to label %bb.bh unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB5_11Accumulator4push(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.i)
          to label %.backedge.i.backedge unwind label %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !63

.backedge.i.backedge:                             ; preds = %bb.bh, %bb.aw
  br label %.backedge.i

.thread.i:                                        ; preds = %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %.pn1017.i = phi { ptr, i32 } [ %.pn.i, %bb.ar ], [ %lpad.loopexit.split-lp17, %.thread21.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error11AccumulatorEBF_(ptr nonnull align 8 %i.t) #27
          to label %.thread18.i unwind label %bb.bf, !noalias !63

bb.bi:                                            ; preds = %.thread18.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.be) #27
          to label %.body unwind label %bb.bf

bb.bj:                                            ; preds = %bb.ah, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry7OptionsNtNtCsje5z0uo7eGy_12darling_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([80 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.aa)
          to label %bb.bk unwind label %bb.u

bb.bk:                                            ; preds = %bb.bj
  %i.ct = load i64, ptr %i.ab, align 8
  %.not5 = icmp eq i64 %i.ct, -1
  br i1 %.not5, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i64 80, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtCsje5z0uo7eGy_12darling_core5error5ErrorEE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.y, ptr nonnull align 8 @39)
          to label %bb.bo unwind label %bb.u

bb.bm:                                            ; preds = %bb.bk
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 48
end_hunk_2
