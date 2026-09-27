Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/syn-4d4711ba44a7a591.syn.8a15aecd2500a16-cgu.05?download=true
inline.NumInlined: 76
inline.NumDeleted: 7
begin_hunk_0_@_RNvXs6_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitBoolNtNtB9_5parse5Parse5parse:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.c)
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.c) #20
          to label %bb.i unwind label %bb.p

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.f

bb.i:                                             ; preds = %bb.j, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.p, %bb.g ] ; 3 uses
  %i.q = load i64, ptr %i.b, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.s, label %bb.q

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsJWcWohxsl6_3syn3lit3LitNtNtB11_5error5ErrorEEB11_(ptr nonnull align 8 %i.b)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.v = load i64, ptr %i.g, align 8
  %i.w = icmp eq i64 %i.v, -9223372036854775801
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn3lit3LitEBF_(ptr nonnull align 8 %i.g)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  ret void

bb.p:                                             ; preds = %bb.t, %bb.q, %bb.g, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %bb.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsJWcWohxsl6_3syn3lit3LitNtNtB11_5error5ErrorEEB11_(ptr nonnull align 8 %i.b) #20
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %.pn, %bb.t ], [ %i.d, %bb.b ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.g, align 8
  %i.z = icmp eq i64 %i.y, -9223372036854775801
  br i1 %i.z, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn3lit3LitEBF_(ptr nonnull align 8 %i.g) #20
          to label %bb.r unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXs7_NtCsJWcWohxsl6_3syn3litNtB5_8LitFloatINtNtCs3oUPovFnLWP_4core7convert4FromNtCs6lkCCFP1haM_11proc_macro27LiteralE4from(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  invoke void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToString9to_stringCsJWcWohxsl6_3syn(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 8 %0)
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.body
  br i1 %.not, label %.thread, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.g = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsJWcWohxsl6_3syn(ptr nonnull align 8 %i.e)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.e) #20
          to label %.thread unwind label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.g, 0
  %i.j = extractvalue { ptr, i64 } %i.g, 1
  invoke void @_RNvNtNtCsJWcWohxsl6_3syn3lit5value15parse_lit_float(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr %i.i, i64 %i.j)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.k, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.m, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.q, ptr %i.u, align 8
  %i.v = invoke ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsJWcWohxsl6_3syn(i64 8, i64 56)
          to label %bb.l unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn3lit12LitFloatReprEBF_(ptr nonnull align 8 %i.c) #20
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.j:                                             ; preds = %bb.f
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs1xwejQucwHj_5alloc6string6StringECs6lkCCFP1haM_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.m, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.w, %bb.h ] ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.e) #20
          to label %bb.b unwind label %bb.p

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.e)
  ret ptr %i.v

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.z = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj1b_Kj1_ECsJWcWohxsl6_3syn(ptr nonnull @24, ptr nonnull align 8 %i.b)
          to label %bb.n unwind label %bb.k       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.aa = extractvalue { ptr, ptr } %i.z, 0
  %i.ab = extractvalue { ptr, ptr } %i.z, 1
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.aa, ptr %i.ab, ptr align 8 %1) #21
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %.thread, %.body, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %.thread, %bb.b
  %.pn5 = phi { ptr, i32 } [ %.pn6, %.thread ], [ %eh.lpad-body, %bb.b ]
  resume { ptr, i32 } %.pn5

.thread:                                          ; preds = %bb.d, %.split.thread, %bb.b
  %.pn6 = phi { ptr, i32 } [ %i.f, %.split.thread ], [ %eh.lpad-body, %bb.b ], [ %i.h, %bb.d ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro27LiteralEBD_(ptr align 8 %0) #20
          to label %bb.q unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_3LitNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXs7_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_3LitNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXs7_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_3LitNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @55, i64 7 }
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs8_NtCsJWcWohxsl6_3syn3litNtB5_8LitFloatNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsJ_Cs6lkCCFP1haM_11proc_macro2NtB5_7LiteralNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs9_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_6LitStrNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXs9_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_6LitStrNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXs9_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_6LitStrNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @56, i64 14 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsF_NtCs6lkCCFP1haM_11proc_macro23impNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 4), (8, 17)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 2 uses
  %i.b = load i32, ptr %1, align 8
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = tail call { ptr, i8 } @_RNvXsA_NtCs6lkCCFP1haM_11proc_macro28fallbackNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull align 8 %i.d) #19 ; 2 uses
  %i.f = extractvalue { ptr, i8 } %i.e, 0
  %i.g = extractvalue { ptr, i8 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([20 x i8]) align 4 %i.a, ptr nonnull align 4 %i.j) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %i.a, i64 20, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsG_NtCs6lkCCFP1haM_11proc_macro23impNtB5_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 12), (16, 17)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsB_NtCs6lkCCFP1haM_11proc_macro28fallbackNtB5_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs1s_Csa5ERaWwhjCQ_10proc_macroNtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsH_NtCs6lkCCFP1haM_11proc_macro23impNtB5_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 4                ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsC_NtCs6lkCCFP1haM_11proc_macro28fallbackNtB5_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs1t_Csa5ERaWwhjCQ_10proc_macroNtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([16 x i8]) align 4 %i.b, ptr nonnull align 4 %i.d) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsI_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_3lit3LitNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 13)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = xor i64 %i.b, -9223372036854775808
  switch i64 %i.c, label %bb.j [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr nonnull align 8 %i.d) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr nonnull align 8 %i.g) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr nonnull align 8 %i.j) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr nonnull align 8 %i.m) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr nonnull align 8 %i.p) #19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit10LitIntReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr nonnull align 8 %i.s) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit12LitFloatReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr nonnull align 8 %i.v) #19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = tail call i32 @_RNvXsN_Cs6lkCCFP1haM_11proc_macro2NtB5_4SpanNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull align 4 %i.y) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.aa, ptr %i.ad, align 4
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  call void @_RNvXs16_Cs6lkCCFP1haM_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i1 } @_RNvXsJ_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_3lit7LitBoolNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 4 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call i32 @_RNvXsN_Cs6lkCCFP1haM_11proc_macro2NtB5_4SpanNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr align 4 %0) #19
  %i.e = insertvalue { i32, i1 } poison, i32 %i.d, 0
  %i.f = insertvalue { i32, i1 } %i.e, i1 %i.c, 1
  ret { i32, i1 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsN_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_4attr4MetaNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([224 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB6_6LitStrNtNtB8_5parse5Parse5parse:bb.a
  %i.v = load i64, ptr %i.g, align 8
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn3lit3LitEBF_(ptr nonnull align 8 %i.g) #20
          to label %bb.r unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsJWcWohxsl6_3syn3lit8printingNtB6_10LitByteStrNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsJWcWohxsl6_3syn4attr7parsingNtB6_8MetaListNtNtB8_5parse5Parse5parse(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  call void @_RNvNtNtCsJWcWohxsl6_3syn4attr7parsing25parse_outermost_meta_path(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr align 8 %1)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c) #19
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn4attr8MetaListNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1j_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @58) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @_RNvNtNtCsJWcWohxsl6_3syn4attr7parsing26parse_meta_list_after_path(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsJWcWohxsl6_3syn4attr8printingNtB6_4MetaNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvNtNtCsJWcWohxsl6_3syn4path8printing10print_path(ptr align 8 %1, ptr nonnull align 8 %i.f, i8 1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvNtNtCsJWcWohxsl6_3syn4path8printing10print_path(ptr align 8 %1, ptr nonnull align 8 %i.g, i8 1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_RNvXsK_Cs6lkCCFP1haM_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.i) #19
  call void @_RNvMNtNtCsJWcWohxsl6_3syn3mac8printingNtB4_14MacroDelimiter8surround(ptr nonnull align 4 %i.h, ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsJWcWohxsl6_3syn4path8printing10print_path(ptr align 8 %1, ptr nonnull align 8 %0, i8 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_RNvXs7i_NtCsJWcWohxsl6_3syn5tokenNtB6_2EqNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.j, ptr align 8 %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsP_NtCsJWcWohxsl6_3syn4exprNtB5_4ExprNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.k, ptr align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i8 @_RNvXs_NtNtCsJWcWohxsl6_3syn4path8printingNtB4_9PathStyleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtCsJWcWohxsl6_3syn3litNtB5_7LitReprNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXs16_Cs6lkCCFP1haM_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro27LiteralEBD_(ptr nonnull align 8 %i.a) #20
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 0
  %i.f = extractvalue { ptr, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %i.h, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCsJWcWohxsl6_3syn3litNtB5_10LitIntReprNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXs16_Cs6lkCCFP1haM_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.c)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.e, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro27LiteralEBD_(ptr nonnull align 8 %i.b) #20
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.i)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.a) #20
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, i64 } %i.j, 0
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.m, ptr %i.q, align 8
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsb_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_10LitByteStrNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXsb_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_10LitByteStrNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsb_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_10LitByteStrNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @59, i64 19 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtCsJWcWohxsl6_3syn3litNtB5_12LitFloatReprNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXs16_Cs6lkCCFP1haM_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.c)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.e, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro27LiteralEBD_(ptr nonnull align 8 %i.b) #20
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.i)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.a) #20
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, i64 } %i.j, 0
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.m, ptr %i.q, align 8
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsd_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_6LitStrE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsd_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitCStrNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXsd_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_7LitCStrNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsd_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitCStrNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @60, i64 16 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXse_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10LitByteStrE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsf_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_7LitCStrE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsf_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitByteNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXsf_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_7LitByteNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsf_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitByteNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @61, i64 12 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsg_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_7LitByteE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsh_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_7LitCharE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsh_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitCharNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXsh_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_7LitCharNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsh_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitCharNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @62, i64 17 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsi_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_6LitIntE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsj_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8LitFloatE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsj_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_6LitIntNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXsj_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_6LitIntNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsj_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_6LitIntNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @63, i64 15 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsk_NtCsJWcWohxsl6_3syn3litNtB5_3LitINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_7LitBoolE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 13)) %0, i32 %1, i1 zeroext %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = zext i1 %2 to i8
  store i8 %i.c, ptr %i.b, align 4
  store i64 -9223372036854775801, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtCsJWcWohxsl6_3syn3litNtB5_3LitNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = xor i64 %i.b, -9223372036854775808
  switch i64 %i.c, label %bb.j [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.e, ptr align 8 %1)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.g, ptr align 8 %1)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.i, ptr align 8 %1)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.k, ptr align 8 %1)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.m, ptr align 8 %1)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.o, ptr align 8 %1)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8 %i.q, ptr align 8 %1)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i8, ptr %i.s, align 4
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  %..i.i = select i1 %i.u, i64 4, i64 5
  %.1.i.i = select i1 %i.u, ptr @3, ptr @5
  %i.v = load i32, ptr %i.r, align 8
  call void @_RNvMsx_Cs6lkCCFP1haM_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull %.1.i.i, i64 %..i.i, i32 %i.v, ptr nonnull align 8 @25)
  call void @_RINvXNtCscHOZfnuBWzf_5quote3extNtCs6lkCCFP1haM_11proc_macro211TokenStreamNtB3_14TokenStreamExt6appendNtBv_5IdentEB5_(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvXss_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsl_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_8LitFloatNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXsl_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_8LitFloatNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsl_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_8LitFloatNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @64, i64 22 }
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsm_NtCsJWcWohxsl6_3syn3litNtB5_6LitStrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr align 8 %0) #19
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsn_NtCsJWcWohxsl6_3syn3litNtB5_10LitByteStrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr align 8 %0) #19
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsn_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitBoolNtNtB9_5token5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing9peek_impl(ptr %0, ptr %1, ptr nonnull @_RNvNvXsn_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB9_7LitBoolNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsn_NtNtCsJWcWohxsl6_3syn3lit7parsingNtB7_7LitBoolNtNtB9_5token5Token7display() unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @65, i64 15 }
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXso_NtCsJWcWohxsl6_3syn3litNtB5_7LitCStrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr align 8 %0) #19
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsp_NtCsJWcWohxsl6_3syn3litNtB5_7LitByteNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr align 8 %0) #19
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsq_NtCsJWcWohxsl6_3syn3litNtB5_7LitCharNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit7LitReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr align 8 %0) #19
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsr_NtCsJWcWohxsl6_3syn3litNtB5_6LitIntNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit10LitIntReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr align 8 %0) #19
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXss_NtCs6lkCCFP1haM_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRReE2eqCsJWcWohxsl6_3syn(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = tail call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRReINtB2_5AsRefeE6as_refCsJWcWohxsl6_3syn(ptr align 8 %1) #19 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  store ptr %i.e, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 8
  %.not = icmp eq i8 %i.i, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %i.j = call zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCs6lkCCFP1haM_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCsJWcWohxsl6_3syn(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.c) #19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs6lkCCFP1haM_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 4 %0) #19
  %i.k = invoke zeroext i1 @_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCsJWcWohxsl6_3syn(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.b) #20
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 8 %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.b ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXss_NtCsJWcWohxsl6_3syn3litNtB5_8LitFloatNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsJWcWohxsl6_3syn3lit12LitFloatReprENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr align 8 %0) #19
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCs6lkCCFP1haM_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXss_NtCs6lkCCFP1haM_11proc_macro28fallbackNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull align 8 %i.e) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn(ptr nonnull align 4 %i.h) #19, !noalias !28 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !28
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs6lkCCFP1haM_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCs6lkCCFP1haM_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn.exit unwind label %bb.d, !noalias !28

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs6lkCCFP1haM_11proc_macro2(ptr nonnull align 4 %i.b) #20
          to label %bb.f unwind label %bb.e, !noalias !28

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCs6lkCCFP1haM_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCs6lkCCFP1haM_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsJWcWohxsl6_3syn.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYNtNtCsJWcWohxsl6_3syn10precedence10PrecedenceNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2geB6_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1
  store i8 %i.c, ptr %i.b, align 1
  %i.d = load i8, ptr %1, align 1
  store i8 %i.d, ptr %i.a, align 1
  %i.e = call i8 @_RNvXsX_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_3Ord3cmpCsJWcWohxsl6_3syn(ptr nonnull %i.b, ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = icmp sgt i8 %i.e, -1
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYNtNtCsJWcWohxsl6_3syn10precedence10PrecedenceNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2gtB6_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1
  store i8 %i.c, ptr %i.b, align 1
  %i.d = load i8, ptr %1, align 1
  store i8 %i.d, ptr %i.a, align 1
  %i.e = call i8 @_RNvXsX_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_3Ord3cmpCsJWcWohxsl6_3syn(ptr nonnull %i.b, ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = icmp sgt i8 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYNtNtCsJWcWohxsl6_3syn10precedence10PrecedenceNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB6_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1
  store i8 %i.c, ptr %i.b, align 1
  %i.d = load i8, ptr %1, align 1
  store i8 %i.d, ptr %i.a, align 1
  %i.e = call i8 @_RNvXsX_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_3Ord3cmpCsJWcWohxsl6_3syn(ptr nonnull %i.b, ptr nonnull %i.a) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp ne i8 %i.e, -2
  %i.f = icmp slt i8 %i.e, 1
  %.sroa.0.0 = and i1 %.not, %i.f
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_1
