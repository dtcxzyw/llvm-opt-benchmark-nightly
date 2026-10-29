Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/syn-4d4711ba44a7a591.syn.8a15aecd2500a16-cgu.04?download=true
inline.NumInlined: 28
inline.NumDeleted: 1
begin_hunk_0_@_RNvXsH_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_8generics13LifetimeParamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone:bb.a
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = invoke i64 @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsJWcWohxsl6_3syn5token5ColonENtNtB7_5clone5Clone5cloneBO_(ptr nonnull align 4 %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.b) #17
          to label %bb.b unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs_NtCsJWcWohxsl6_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8lifetime8LifetimeNtNtB6_5token4PlusENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB6_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.i)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsU_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_8generics17PredicateLifetimeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvXs0_NtCsJWcWohxsl6_3syn8lifetimeNtB5_8LifetimeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = invoke i32 @_RNvXs9Q_NtCsJWcWohxsl6_3syn5tokenNtB6_5ColonNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull align 4 %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.b) #17
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtCsJWcWohxsl6_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8lifetime8LifetimeNtNtB6_5token4PlusENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB6_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %1)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.e, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsV_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_8generics13PredicateTypeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([312 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [224 x i8], align 8               ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsJWcWohxsl6_3syn8generics14BoundLifetimesENtNtB7_5clone5Clone5cloneBO_(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d) #16
  invoke void @_RNvXs11_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([224 x i8]) align 8 %i.b, ptr align 8 %1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn8generics14BoundLifetimesEEB11_(ptr nonnull align 8 %i.c) #17
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = invoke i32 @_RNvXs9Q_NtCsJWcWohxsl6_3syn5tokenNtB6_5ColonNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull align 4 %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.b) #17
          to label %bb.b unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @_RNvXs_NtCsJWcWohxsl6_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB6_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.i)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.b, i64 224, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.g, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsY_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_8generics10TraitBoundNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nofree writeonly sret([120 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsJWcWohxsl6_3syn5token5ParenENtNtB7_5clone5Clone5cloneBO_(ptr nonnull sret([16 x i8]) align 4 %i.c, ptr nonnull align 4 %i.d) #16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsJWcWohxsl6_3syn8generics14BoundLifetimesENtNtB7_5clone5Clone5cloneBO_(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f) #16
  invoke void @_RNvXsR_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_4path4PathNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn8generics14BoundLifetimesEEB11_(ptr nonnull align 8 %i.b) #17
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.0.0.copyload.i, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsJWcWohxsl6_3syn8generics7parsingNtB6_12GenericParamNtNtB8_5parse5Parse5parse(ptr sret([456 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [456 x i8], align 8               ; 2 uses
  %i.h = alloca [456 x i8], align 8               ; 7 uses
  %i.i = alloca [456 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.04.sroa.0 = alloca [416 x i8], align 8   ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 2 uses
  %i.l = alloca [96 x i8], align 8                ; 6 uses
  %i.m = alloca [96 x i8], align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.016 = alloca [56 x i8], align 8          ; 3 uses
  %i.o = alloca [320 x i8], align 8               ; 2 uses
  %i.p = alloca [320 x i8], align 8               ; 7 uses
  %i.q = alloca [320 x i8], align 8               ; 3 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [280 x i8], align 8           ; 4 uses
  %i.s = alloca [56 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 2 uses
  %i.u = alloca [32 x i8], align 8                ; 3 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  call void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4callINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr align 8 %1, ptr nonnull @_RNvMNtCsJWcWohxsl6_3syn4attrNtB2_9Attribute11parse_outer)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.u, ptr nonnull align 8 %i.t) #16
  %i.w = load i64, ptr %i.u, align 8
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics12GenericParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @63) #16
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke void @_RNvMs9_NtCsJWcWohxsl6_3syn5parseNtB5_11ParseBuffer10lookahead1(ptr nonnull sret([56 x i8]) align 8 %i.s, ptr align 8 %1)
          to label %bb.e unwind label %.thread36

bb.d:                                             ; preds = %.thread
  br i1 %.sroa.010.221, label %bb.ak, label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.z = invoke zeroext i1 @_RINvMNtCsJWcWohxsl6_3syn9lookaheadNtB3_10Lookahead14peekNvNtB5_5ident5IdentEB5_(ptr nonnull align 8 %i.s)
          to label %bb.f unwind label %.thread24

.thread24:                                        ; preds = %.invoke46.invoke, %.invoke, %bb.j, %bb.g, %bb.e
  %.sroa.010.3.ph = phi i1 [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.j ], [ false, %.invoke ], [ false, %.invoke46.invoke ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread36:                                        ; preds = %bb.c, %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.f:                                             ; preds = %bb.e
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke zeroext i1 @_RINvMNtCsJWcWohxsl6_3syn9lookaheadNtB3_10Lookahead14peekNvNtB5_8lifetime8LifetimeEB5_(ptr nonnull align 8 %i.s)
          to label %bb.i unwind label %.thread24

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics9TypeParamEB8_(ptr nonnull sret([320 x i8]) align 8 %i.o, ptr align 8 %1)
          to label %bb.ac unwind label %bb.ab

bb.i:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke zeroext i1 @_RINvMNtCsJWcWohxsl6_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5ConstNtB3_11TokenMarkerEEB5_(ptr nonnull align 8 %i.s)
          to label %bb.l unwind label %.thread24

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics13LifetimeParamEB8_(ptr nonnull sret([96 x i8]) align 8 %i.k, ptr align 8 %1)
          to label %bb.w unwind label %bb.v

bb.l:                                             ; preds = %bb.j
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  invoke void @_RNvMNtCsJWcWohxsl6_3syn9lookaheadNtB2_10Lookahead15error(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.ag unwind label %.thread36

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics10ConstParamEB8_(ptr nonnull sret([456 x i8]) align 8 %i.g, ptr align 8 %1)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.j) #17
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([456 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.ad = load i64, ptr %i.h, align 8
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics12GenericParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @60)
          to label %.invoke unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.i, ptr noundef nonnull align 8 dereferenceable(456) %i.h, i64 456, i1 false)
  %.sroa.04.sroa.0.224..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.sroa.0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.sroa.0.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  %.sroa.05.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.04.sroa.0, ptr noundef nonnull align 8 dereferenceable(224) %i.h, i64 224, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  %i.aj = load i64, ptr %i.ai, align 8
  %.sroa.04.sroa.0.248..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.sroa.0, i64 248
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.04.sroa.0.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %i.ak, i64 168, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(416) %.sroa.04.sroa.0, i64 416, i1 false)
  %.sroa.05.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.aj, ptr %.sroa.05.sroa.2.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.al = load <2 x i32>, ptr %i.ag, align 8
  store <2 x i32> %i.al, ptr %.sroa.26.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  br label %.invoke46.invoke

bb.t:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.j) #17
          to label %.thread unwind label %bb.u

.invoke.a:                                        ; preds = %.invoke
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.s)
  br label %bb.ah

bb.u:                                             ; preds = %bb.ak, %.thread, %bb.ai, %bb.ab, %bb.aa, %bb.v, %bb.t, %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.n) #17
          to label %.thread unwind label %bb.u

bb.w:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics13LifetimeParamNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([96 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.aq = load i64, ptr %i.l, align 8
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics12GenericParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @61)
          to label %.invoke unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.22.sroa.3.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.sroa.3.0..sroa.22.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8
  %.sroa.016.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.016, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  store i64 17, ptr %0, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.016, i64 56, i1 false)
  %.sroa.22.sroa.2.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.av, ptr %.sroa.22.sroa.2.0..sroa.22.0..sroa_idx.sroa_idx, align 8
  br label %.invoke46.invoke

bb.aa:                                            ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.n) #17
          to label %.thread unwind label %bb.u

bb.ab:                                            ; preds = %bb.ac, %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.r) #17
          to label %.thread unwind label %bb.u

bb.ac:                                            ; preds = %bb.h
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics9TypeParamNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([320 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.az = load i64, ptr %i.p, align 8
  %i.ba = icmp eq i64 %i.az, -2
  br i1 %i.ba, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics12GenericParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @62)
          to label %.invoke unwind label %bb.ai

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.q, ptr noundef nonnull align 8 dereferenceable(320) %i.p, i64 320, i1 false)
  %.sroa.0.224..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %.sroa.0.248..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 248
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(224) %i.p, i64 224, i1 false)
  store i64 18, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.0, i64 280, i1 false)
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bf = load <2 x i64>, ptr %i.bd, align 8
  store <2 x i64> %i.bf, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  br label %.invoke46.invoke

.invoke46.invoke:                                 ; preds = %bb.s, %bb.z, %bb.af
  %2 = phi ptr [ %i.bg, %bb.af ], [ %i.m, %bb.z ], [ %i.am, %bb.s ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %2)
          to label %3 unwind label %.thread24

3:                                                ; preds = %.invoke46.invoke
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.s)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.v)
  br label %bb.ah

bb.ah:                                            ; preds = %.invoke.a, %3, %bb.b, %bb.ag
  ret void

bb.ai:                                            ; preds = %bb.ae
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.r) #17
          to label %.thread unwind label %bb.u

.invoke:                                          ; preds = %bb.ae, %bb.y, %bb.r
  %4 = phi ptr [ %i.n, %bb.y ], [ %i.j, %bb.r ], [ %i.r, %bb.ae ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %4)
          to label %.invoke.a unwind label %.thread24

.thread:                                          ; preds = %bb.o, %bb.t, %bb.v, %bb.aa, %bb.ab, %bb.ai, %.thread24
  %.pn22 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread24 ], [ %i.ac, %bb.o ], [ %i.an, %bb.t ], [ %i.ap, %bb.v ], [ %i.ax, %bb.aa ], [ %i.ay, %bb.ab ], [ %i.bi, %bb.ai ] ; 2 uses
  %.sroa.010.221 = phi i1 [ %.sroa.010.3.ph, %.thread24 ], [ false, %bb.o ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.ai ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.s) #17
          to label %bb.d unwind label %bb.u

bb.aj:                                            ; preds = %bb.ak, %bb.d
  %.pn1439 = phi { ptr, i32 } [ %.pn22, %bb.d ], [ %.pn1440, %bb.ak ]
  resume { ptr, i32 } %.pn1439

bb.ak:                                            ; preds = %.thread36, %bb.d
  %.pn1440 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread36 ], [ %.pn22, %bb.d ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.v) #17
          to label %bb.aj unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsJWcWohxsl6_3syn8generics8printingNtB6_12ImplGenericsNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 2 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = load ptr, ptr %0, align 8
  %i.t = tail call zeroext i1 @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE8is_emptyB4_(ptr align 8 %i.s)
  br i1 %i.t, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = load i32, ptr %i.v, align 4
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 76
  tail call void @_RNvXs7K_NtCsJWcWohxsl6_3syn5tokenNtB6_2LtNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.y, ptr align 8 %1)
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call i32 @_RNvXsaG_NtCsJWcWohxsl6_3syn5tokenNtB6_2LtNtNtCs3oUPovFnLWP_4core7default7Default7default()
  store i32 %i.z, ptr %i.c, align 4
  call void @_RNvXs7K_NtCsJWcWohxsl6_3syn5tokenNtB6_2LtNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.c, ptr align 8 %1)
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = load ptr, ptr %0, align 8
  call void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE5pairsB4_(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr align 8 %i.aa)
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtCsJWcWohxsl6_3syn10punctuated5PairsNtNtBQ_8generics12GenericParamNtNtBQ_5token5CommaENtB2_12IntoIterator9into_iterBQ_(ptr nonnull sret([24 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %.outer4

.outer4:                                          ; preds = %bb.y, %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit
  %.sroa.0.0.ph = phi i1 [ %i.by, %bb.y ], [ true, %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit ]
  br label %bb.f

bb.e:                                             ; preds = %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit, %bb.a
  ret void

bb.f:                                             ; preds = %.outer4, %bb.g
  call void @_RNvXs8_NtCsJWcWohxsl6_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB7_(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.p)
  %i.ac = load i64, ptr %i.o, align 8
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ae = call align 8 ptr @_RNvMsF_NtCsJWcWohxsl6_3syn10punctuatedINtB5_4PairRNtNtB7_8generics12GenericParamRNtNtB7_5token5CommaE5valueB7_(ptr nonnull align 8 %i.n)
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ag, 17
  br i1 %i.ah, label %bb.y, label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %0, align 8
  call void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE5pairsB4_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr align 8 %i.ai)
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtCsJWcWohxsl6_3syn10punctuated5PairsNtNtBQ_8generics12GenericParamNtNtBQ_5token5CommaENtB2_12IntoIterator9into_iterBQ_(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.x, %bb.h
  %.sroa.0.1.ph = phi i1 [ true, %bb.x ], [ %.sroa.0.0.ph, %bb.h ]
  br label %bb.i

bb.i:                                             ; preds = %.outer, %bb.j
  call void @_RNvXs8_NtCsJWcWohxsl6_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB7_(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.j)
  %i.ak = load i64, ptr %i.i, align 8
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.am = call align 8 ptr @_RNvMsF_NtCsJWcWohxsl6_3syn10punctuatedINtB5_4PairRNtNtB7_8generics12GenericParamRNtNtB7_5token5CommaE5valueB7_(ptr nonnull align 8 %i.h)
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.ao, 17
  br i1 %i.ap, label %bb.i, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 84
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

bb.m:                                             ; preds = %bb.k
  %i.av = call i32 @_RNvXsav_NtCsJWcWohxsl6_3syn5tokenNtB6_2GtNtNtCs3oUPovFnLWP_4core7default7Default7default()
  store i32 %i.av, ptr %i.b, align 4
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit: ; preds = %bb.l, %bb.m
  %.sink = phi ptr [ %i.au, %bb.l ], [ %i.b, %bb.m ]
  call void @_RNvXs7y_NtCsJWcWohxsl6_3syn5tokenNtB6_2GtNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %.sink, ptr align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.n:                                             ; preds = %bb.j
  br i1 %.sroa.0.1.ph, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = call i32 @_RNvXs9T_NtCsJWcWohxsl6_3syn5tokenNtB6_5CommaNtNtCs3oUPovFnLWP_4core7default7Default7default()
  store i32 %i.aw, ptr %i.g, align 4
  call void @_RNvXs6U_NtCsJWcWohxsl6_3syn5tokenNtB6_5CommaNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.g, ptr align 8 %1)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = call align 8 ptr @_RNvMsF_NtCsJWcWohxsl6_3syn10punctuatedINtB5_4PairRNtNtB7_8generics12GenericParamRNtNtB7_5token5CommaE5valueB7_(ptr nonnull align 8 %i.h)
  %i.ay = load ptr, ptr %i.ax, align 8            ; 11 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = add i64 %i.az, -17
  %i.bb = icmp ugt i64 %i.az, 16
  %i.bc = select i1 %i.bb, i64 %i.ba, i64 2
  switch i64 %i.bc, label %bb.q [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @37, i64 40, ptr nonnull align 8 @64) #20
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %i.be = call { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.bd) #16 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  call void @_RNvXs1_NtCsJWcWohxsl6_3syn4attrRSNtB5_9AttributeNtB5_11FilterAttrs5outer(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr align 8 %i.bf, i64 %i.bg)
  call void @_RINvXNtCscHOZfnuBWzf_5quote3extNtCs6lkCCFP1haM_11proc_macro211TokenStreamNtB3_14TokenStreamExt10append_allINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtB1P_5slice4iter4IterNtNtCsJWcWohxsl6_3syn4attr9AttributeEFG0_RL1_RL0_B31_EbEEB35_(ptr align 8 %1, ptr nonnull align 8 %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 304
  call void @_RNvXsq_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.bh, ptr align 8 %1)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 256 ; 2 uses
  %i.bj = call zeroext i1 @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE8is_emptyB4_(ptr nonnull align 8 %i.bi)
  br i1 %i.bj, label %bb.x, label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  %i.bl = call { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.bk) #16 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  call void @_RNvXs1_NtCsJWcWohxsl6_3syn4attrRSNtB5_9AttributeNtB5_11FilterAttrs5outer(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 8 %i.bm, i64 %i.bn)
  call void @_RINvXNtCscHOZfnuBWzf_5quote3extNtCs6lkCCFP1haM_11proc_macro211TokenStreamNtB3_14TokenStreamExt10append_allINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtB1P_5slice4iter4IterNtNtCsJWcWohxsl6_3syn4attr9AttributeEFG0_RL1_RL0_B31_EbEEB35_(ptr align 8 %1, ptr nonnull align 8 %i.e)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 448
  call void @_RNvXs1q_NtCsJWcWohxsl6_3syn5tokenNtB6_5ConstNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.bo, ptr align 8 %1)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 424
  call void @_RNvXsq_NtCscHOZfnuBWzf_5quote9to_tokensNtCs6lkCCFP1haM_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.bp, ptr align 8 %1)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 452
  call void @_RNvXs6Q_NtCsJWcWohxsl6_3syn5tokenNtB6_5ColonNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.bq, ptr align 8 %1)
  call void @_RNvXsc_NtCsJWcWohxsl6_3syn2tyNtB5_4TypeNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.ay, ptr align 8 %1)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 292
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token5ColonENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

end_hunk_0
