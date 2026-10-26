Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.09?download=true
inline.NumInlined: 75
inline.NumDeleted: 10
begin_hunk_0_@_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser13parse_literal:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = invoke i32 @_RNvMNtNtCshx33xqnyVJN_3syn3lit5valueNtB4_3Lit4span(ptr nonnull align 8 %1)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit: ; preds = %._RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit_crit_edge, %bb.d, %bb.c
  %i.i = phi i64 [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ %.pre, %._RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit_crit_edge ]
  %.sroa.4.0 = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.c ], [ undef, %._RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit_crit_edge ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ], [ 2, %._RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit_crit_edge ]
  %switch = icmp slt i64 %i.i, -9223372036854775806
  br i1 %switch, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.f, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %1, align 8
  %switch2 = icmp slt i64 %i.k, -9223372036854775806
  br i1 %switch2, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.l = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %0, ptr nonnull @2, i64 30, i32 %i.d)
          to label %._RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit_crit_edge unwind label %bb.e ; 0 uses

._RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit_crit_edge: ; preds = %bb.f
  %.pre = load i64, ptr %1, align 8
  br label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit

bb.g:                                             ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn3lit3LitEBF_(ptr nonnull align 8 %1)
  br label %bb.h

bb.h:                                             ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit, %bb.g
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.n

bb.i:                                             ; preds = %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn3lit3LitEBF_(ptr nonnull align 8 %1) #16
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.e, %bb.i
  resume { ptr, i32 } %i.j

bb.k:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser14parse_callback(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [64 x i8], align 8                ; 2 uses
  %.sroa.020 = alloca [56 x i8], align 8          ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 2 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 3 uses
  %i.s = alloca [32 x i8], align 8                ; 2 uses
  %i.t = alloca [40 x i8], align 8                ; 10 uses
  %i.u = invoke i32 @_RNvXNtCshx33xqnyVJN_3syn7spannedNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB2_7Spanned4spanCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %2)
          to label %bb.b unwind label %bb.bb      ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvXs0_NtCsgSMwPvzVUxY_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull sret([40 x i8]) align 8 %i.t, ptr nonnull align 8 %i.s)
  invoke void @_RNvXNtCsgSMwPvzVUxY_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.t)
          to label %bb.d unwind label %.thread87

bb.c:                                             ; preds = %bb.ao
  br i1 %.sroa.030.3.ph, label %.thread114, label %.thread

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCs2SM5xCHwwDm_13logos_codegen4util12expect_punct(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q, i32 124)
          to label %bb.e unwind label %.thread87

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.r, align 8
  %.not38 = icmp eq i32 %i.v, -1
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  invoke void @_RNvXs3_CsgSMwPvzVUxY_11proc_macro2NtB5_11TokenStreamINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9TokenTreeE4from(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr nonnull align 8 %i.c)
          to label %bb.h unwind label %.thread87

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXNtCsgSMwPvzVUxY_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.n, ptr nonnull align 8 %i.t)
          to label %bb.l unwind label %.thread87

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  invoke void @_RINvXs4_CsgSMwPvzVUxY_11proc_macro2NtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendNtNtB6_12token_stream8IntoIterECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.p) #16
          to label %.thread unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.ak

bb.k:                                             ; preds = %bb.bb, %.thread114, %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.af, %bb.ab, %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.l:                                             ; preds = %bb.g
  invoke void @_RNvXNtCsgSMwPvzVUxY_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.l, ptr nonnull align 8 %i.t)
          to label %bb.m unwind label %bb.ba

.thread87:                                        ; preds = %.invoke, %bb.g, %bb.f, %bb.d, %bb.b, %bb.as
  %lpad.thr_comm85 = landingpad { ptr, i32 }
          cleanup
  br label %.thread114

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs2SM5xCHwwDm_13logos_codegen4util12expect_punct(ptr nonnull sret([32 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l, i32 124)
          to label %bb.n unwind label %bb.ba

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.z = load i32, ptr %i.j, align 8
  %.not39 = icmp eq i32 %i.z, -1
  %i.aa = load i32, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.aa, 1
  %or.cond = select i1 %.not39, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %1, ptr nonnull @6, i64 67, i32 %i.u)
          to label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit unwind label %bb.ap ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.j)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.af = load i32, ptr %i.y, align 8
  switch i32 %i.af, label %bb.an [
    i32 -1, label %bb.ao
    i32 1, label %bb.ao
  ]

bb.r:                                             ; preds = %bb.p
  %i.ag = load i32, ptr %i.y, align 8
  switch i32 %i.ag, label %bb.t [
    i32 -1, label %bb.s
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.t, %bb.r, %bb.r
  invoke void @_RNvXNtCsgSMwPvzVUxY_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.t)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y)
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.v:                                             ; preds = %bb.s
  %i.ai = load i32, ptr %i.h, align 8             ; 2 uses
  %.not41 = icmp eq i32 %i.ai, -1
  br i1 %.not41, label %bb.w, label %3

3:                                                ; preds = %bb.v
  %.not = icmp eq i32 %i.ai, 0                    ; 3 uses
  br i1 %.not, label %bb.z, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.aj = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %1, ptr nonnull @3, i64 23, i32 %i.u)
          to label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit60 unwind label %bb.y ; 0 uses

bb.x:                                             ; preds = %bb.ab, %bb.y
  %.sroa.028.0 = phi i1 [ %.sroa.028.1, %bb.y ], [ true, %bb.ab ]
  %.pn = phi { ptr, i32 } [ %i.an, %bb.y ], [ %i.ap, %bb.ab ] ; 2 uses
  %i.ak = load i32, ptr %i.h, align 8
  %i.al = add i32 %i.ak, -1
  %i.am = icmp ult i32 %i.al, -2
  %or.cond11.not = and i1 %.sroa.028.0, %i.am
  br i1 %or.cond11.not, label %bb.am, label %bb.ao

bb.y:                                             ; preds = %bb.w, %bb.ac, %bb.aa
  %.sroa.028.1 = phi i1 [ true, %bb.ac ], [ false, %bb.aa ], [ true, %bb.w ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit60: ; preds = %bb.w
  store i64 -3, ptr %0, align 8
  br label %.invoke

bb.z:                                             ; preds = %3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  invoke void @_RNvMsn_CsgSMwPvzVUxY_11proc_macro2NtB5_5Group6stream(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.g)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvXs3_CsgSMwPvzVUxY_11proc_macro2NtB5_11TokenStreamINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9TokenTreeE4from(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.b)
          to label %bb.ae unwind label %bb.y

bb.ab:                                            ; preds = %bb.z
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25GroupEBD_(ptr nonnull align 8 %i.g) #16
          to label %bb.x unwind label %bb.k

bb.ac:                                            ; preds = %bb.z
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25GroupEBD_(ptr nonnull align 8 %i.g)
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %bb.ac
  %i.aq = load i32, ptr %i.h, align 8
  %.off = add i32 %i.aq, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.ah, label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  invoke void @_RINvXs4_CsgSMwPvzVUxY_11proc_macro2NtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendNtNtB6_12token_stream8IntoIterECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %.thread102 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.f) #16
          to label %bb.ao unwind label %bb.k

.thread102:                                       ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread102, %bb.ad, %bb.ah
  %.sroa.020.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.020, i64 56, i1 false)
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.u, ptr %.sroa.321.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCs2SM5xCHwwDm_13logos_codegen4leaf14InlineCallbackINtB5_4IntoNtBA_8CallbackE4intoBC_(ptr nonnull sret([64 x i8]) align 8 %i.d, ptr nonnull align 8 %i.a, ptr nonnull align 8 @5)
          to label %bb.ai unwind label %.split

bb.ah:                                            ; preds = %bb.ad
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.h)
          to label %bb.ag unwind label %bb.al

.split:                                           ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %.thread114, label %.thread

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  br i1 %.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.t)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.au, %bb.j, %bb.ai
  ret void

bb.al:                                            ; preds = %bb.ah
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.i) #16
          to label %bb.ao unwind label %bb.k

bb.am:                                            ; preds = %bb.x
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.h) #16
          to label %bb.ao unwind label %bb.k

bb.an:                                            ; preds = %bb.q
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y) #16
          to label %bb.ao unwind label %bb.k

bb.ao:                                            ; preds = %bb.al, %bb.x, %bb.am, %bb.u, %bb.q, %bb.q, %bb.an, %bb.af
  %.sroa.030.3.ph = phi i1 [ true, %bb.q ], [ true, %bb.an ], [ true, %bb.q ], [ true, %bb.u ], [ true, %bb.am ], [ true, %bb.x ], [ true, %bb.al ], [ false, %bb.af ]
  %.pn46.ph = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.ae, %bb.an ], [ %i.ae, %bb.q ], [ %i.ah, %bb.u ], [ %.pn, %bb.am ], [ %.pn, %bb.x ], [ %i.at, %bb.al ], [ %i.ar, %bb.af ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.k) #16
          to label %bb.c unwind label %bb.k

bb.ap:                                            ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.j) #16
          to label %bb.ax unwind label %bb.k

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit: ; preds = %bb.o
  store i64 -3, ptr %0, align 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.j)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aw = load i32, ptr %i.y, align 8
  switch i32 %i.aw, label %bb.av [
    i32 -1, label %.thread114
    i32 1, label %bb.aw
  ]

bb.ar:                                            ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit
  %i.ax = load i32, ptr %i.y, align 8
  switch i32 %i.ax, label %bb.as [
    i32 -1, label %bb.au
    i32 1, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y)
          to label %bb.au unwind label %.thread87

bb.at:                                            ; preds = %bb.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %.invoke

.invoke:                                          ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit60, %bb.at
  %i.az = phi ptr [ %i.ay, %bb.at ], [ %i.k, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit60 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.az)
          to label %bb.au unwind label %.thread87

bb.au:                                            ; preds = %.invoke, %bb.ar, %bb.as
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.t)
  br label %bb.ak

bb.av:                                            ; preds = %bb.aq
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y) #16
          to label %.thread114 unwind label %bb.k

bb.aw:                                            ; preds = %bb.aq
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ba) #16
          to label %.thread114 unwind label %bb.k

bb.ax:                                            ; preds = %bb.ap
  %i.bb = load i32, ptr %i.y, align 8
  switch i32 %i.bb, label %bb.ay [
    i32 -1, label %.thread114
    i32 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y) #16
          to label %.thread114 unwind label %bb.k

bb.az:                                            ; preds = %bb.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.bc) #16
          to label %.thread114 unwind label %bb.k

bb.ba:                                            ; preds = %bb.m, %bb.l
  %lpad.thr_comm.split-lp86 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.n) #16
          to label %.thread114 unwind label %bb.k

.thread114:                                       ; preds = %bb.aw, %bb.av, %bb.aq, %bb.az, %bb.ay, %bb.ax, %.thread87, %bb.ba, %.split, %bb.c
  %.pn5272 = phi { ptr, i32 } [ %i.au, %bb.ax ], [ %.pn46.ph, %bb.c ], [ %i.as, %.split ], [ %lpad.thr_comm.split-lp86, %bb.ba ], [ %lpad.thr_comm85, %.thread87 ], [ %i.av, %bb.aw ], [ %i.av, %bb.av ], [ %i.av, %bb.aq ], [ %i.au, %bb.az ], [ %i.au, %bb.ay ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.t) #16
          to label %.thread unwind label %bb.k

.thread:                                          ; preds = %.split, %bb.i, %bb.c, %.thread114, %bb.bb
  %.pn5463 = phi { ptr, i32 } [ %i.as, %.split ], [ %lpad.thr_comm.split-lp, %bb.bb ], [ %.pn46.ph, %bb.c ], [ %.pn5272, %.thread114 ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %.pn5463

bb.bb:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr align 8 %2) #16
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser15try_parse_logos(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [96 x i8], align 8                ; 2 uses
  %i.m = alloca [104 x i8], align 8               ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [16 x i8], align 8                ; 2 uses
  %i.s = alloca [16 x i8], align 8                ; 2 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [16 x i8], align 8                ; 3 uses
  %i.v = alloca [16 x i8], align 8                ; 2 uses
  %i.w = alloca [16 x i8], align 8                ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [8 x i8], align 4                 ; 3 uses
  %i.aa = alloca [32 x i8], align 8               ; 2 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 2 uses
  %i.aj = alloca [40 x i8], align 8               ; 2 uses
  %i.ak = alloca [104 x i8], align 8              ; 3 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [104 x i8], align 8              ; 2 uses
  %i.an = alloca [24 x i8], align 8               ; 2 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 2 uses
  %i.aq = alloca [32 x i8], align 8               ; 3 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 2 uses
  %i.aw = alloca [24 x i8], align 8               ; 3 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 2 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [96 x i8], align 8               ; 4 uses
  %i.bc = alloca [96 x i8], align 8               ; 2 uses
  %i.bd = alloca [96 x i8], align 8               ; 3 uses
  %i.be = alloca [32 x i8], align 8               ; 2 uses
  %i.bf = alloca [64 x i8], align 8               ; 3 uses
  %i.bg = alloca [32 x i8], align 8               ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.311 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.513 = alloca [40 x i8], align 8          ; 3 uses
  %i.bi = alloca [48 x i8], align 8               ; 5 uses
  %i.bj = alloca [40 x i8], align 8               ; 2 uses
  %i.bk = alloca [48 x i8], align 8               ; 2 uses
  %i.bl = alloca [224 x i8], align 8              ; 2 uses
  %i.bm = alloca [32 x i8], align 8               ; 2 uses
  %i.bn = alloca [96 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 3 uses
  %i.bp = alloca [24 x i8], align 8               ; 5 uses
  %i.bq = alloca [224 x i8], align 8              ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 2 uses
  %i.bs = alloca [40 x i8], align 8               ; 5 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [96 x i8], align 8               ; 4 uses
  %i.bv = alloca [96 x i8], align 8               ; 3 uses
  %i.bw = alloca [32 x i8], align 8               ; 2 uses
  %i.bx = alloca [96 x i8], align 8               ; 2 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 3 uses
  %i.ca = alloca [24 x i8], align 8               ; 5 uses
  %i.cb = alloca [32 x i8], align 8               ; 4 uses
  %i.cc = alloca [56 x i8], align 8               ; 20 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [80 x i8], align 8               ; 5 uses
  %i.cf = alloca [40 x i8], align 8               ; 5 uses
  %i.cg = alloca [40 x i8], align 8               ; 3 uses
  %i.ch = alloca [40 x i8], align 8               ; 2 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 2 uses
  %i.ci = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.ci, align 8
  %i.cj = tail call align 8 ptr @_RNvMNtCshx33xqnyVJN_3syn4attrNtB2_9Attribute4path(ptr align 8 %1)
  %i.ck = tail call zeroext i1 @_RINvMs_NtCshx33xqnyVJN_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.cj, ptr nonnull @7, i64 5)
  br i1 %i.ck, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.fi, %bb.e, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cl = load i64, ptr %1, align 8, !noalias !10
  %i.cm = icmp eq i64 %i.cl, 41
  br i1 %i.cm, label %_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr.exit, label %_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr.exit.thread

_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr.exit: ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.h), !noalias !10
  call void @_RINvNtCskKLDkoKarTP_4core3mem7replaceNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.h) #18, !noalias !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !10
  call void @_RNvMs_NtNtCs2SM5xCHwwDm_13logos_codegen6parser6nestedNtB4_15AttributeParser3new(ptr nonnull sret([40 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f), !noalias !10
  %.sroa.0.0.copyload130 = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx131, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq i64 %.sroa.0.0.copyload130, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr.exit
  %.sroa.2135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2135.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload130, ptr %i.cg, align 8
  call void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested15AttributeParserNtB2_12IntoIterator9into_iterBR_(ptr nonnull sret([40 x i8]) align 8 %i.ch, ptr nonnull align 8 %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i64 40, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %.sroa.2.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 15 uses
  %.sroa.2.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.df = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 2 uses
  %.sroa.5138.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.513.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.513, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  br label %.backedge266

bb.e:                                             ; preds = %_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr.exit.thread, %_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr.exit
  %i.dk = call i32 @_RNvXNtCshx33xqnyVJN_3syn7spannedQNtNtB4_4attr9AttributeNtB2_7Spanned4spanCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.ci)
  %i.dl = call align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %0, ptr nonnull @8, i64 22, i32 %i.dk) ; 0 uses
  br label %bb.b

.backedge266:                                     ; preds = %.backedge266.backedge, %bb.d
  invoke void @_RNvXs0_NtNtCs2SM5xCHwwDm_13logos_codegen6parser6nestedNtB5_15AttributeParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([80 x i8]) align 8 %i.ce, ptr nonnull align 8 %i.cf)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ge, %bb.gd, %.loopexit.split-lp262
  %.pn246 = phi { ptr, i32 } [ %i.dt, %bb.gd ], [ %i.jc, %bb.ge ], [ %.pn244, %.loopexit.split-lp262 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested15AttributeParserEBH_(ptr nonnull align 8 %i.cf) #16
          to label %bb.gg unwind label %bb.bf

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit129, %bb.fw, %.backedge266, %bb.fh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

end_hunk_0
