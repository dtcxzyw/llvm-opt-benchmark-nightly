Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.07?download=true
inline.NumInlined: 54
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro22update_input_lifetimes:bb.a
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro26inputs_use_elided_lifetime(ptr align 8 %0, i64 range(i64 1, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = tail call { ptr, ptr } @_RNvMNtCs3Eghgi3KVFH_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterB4_(ptr nonnull align 8 %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4item5FnArgENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4skipCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.d, ptr align 8 %i.e, i64 %1)
  %i.f = invoke zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtBY_4item5FnArgEENtNtNtBa_6traits8iterator8Iterator3anyNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2y_5Macro26inputs_use_elided_lifetime0EB2A_(ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB1g_4item5FnArgEEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB1g_4item5FnArgEEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a)
  ret i1 %i.f

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro27update_db_argument_lifetime(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = tail call { ptr, ptr } @_RNvMNtCs3Eghgi3KVFH_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE8iter_mutCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  store ptr %i.h, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = invoke align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated7IterMutNtNtB7_4item5FnArgENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.d, i64 %2)
          to label %bb.c unwind label %bb.b       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3Eghgi3KVFH_3syn10punctuated7IterMutNtNtBG_4item5FnArgEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.d) #16
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.k, null
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3Eghgi3KVFH_3syn10punctuated7IterMutNtNtBG_4item5FnArgEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.d)
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedRNtCsRujiHMkeh3_11proc_macro25IdentReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.o, ptr nonnull @71, i64 46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.q = call align 8 ptr @_RNvXsF_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtCs4NRVxsYgnAr_4core7convert5AsMutBG_E6as_mutCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.p) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 12
  br i1 %i.s, label %bb.g, label %_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.v = load i8, ptr %i.u, align 8
  %.not.i = icmp eq i8 %i.v, -1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call zeroext i1 @_RNvYNtCsRujiHMkeh3_11proc_macro25IdentINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2neCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.t, ptr nonnull align 8 @69)
  br i1 %i.w, label %_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_RNvXs0_NtCs3Eghgi3KVFH_3syn8lifetimeNtB5_8LifetimeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeEEB11_(ptr nonnull align 8 %i.t)
          to label %bb.k unwind label %bb.j

common.resume:                                    ; preds = %bb.b, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %common.resume

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit

_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit: ; preds = %bb.f, %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  call void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedQNtNtB5_4item5FnArgReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.k, ptr nonnull @71, i64 46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit, %bb.e
  ret void

bb.n:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %i.a, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB20_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB20_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCshVzvyy7iigg_12salsa_macros12tracked_impl12tracked_impl(ptr sret([32 x i8]) align 8 %0, i32 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [240 x i8], align 8               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [240 x i8], align 8               ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 3 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 3 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.x, align 4
  invoke void @_RINvMNtCshVzvyy7iigg_12salsa_macros7hygieneNtB3_7Hygiene5from2NtNtCs3Eghgi3KVFH_3syn4item8ItemImplEB5_(ptr nonnull sret([48 x i8]) align 8 %i.w, ptr align 8 %2)
          to label %bb.c unwind label %.thread20

.thread20:                                        ; preds = %bb.a
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.b:                                             ; preds = %bb.au
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtNtCs3Eghgi3KVFH_3syn5parse7NothingNtB7_5Parse5parseNtB7_6Parser5parseCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.u, i32 %1)
          to label %_RINvCs3Eghgi3KVFH_3syn5parseNtNtB2_5parse7NothingECshVzvyy7iigg_12salsa_macros.exit unwind label %bb.aw

_RINvCs3Eghgi3KVFH_3syn5parseNtNtB2_5parse7NothingECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.c
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCs3Eghgi3KVFH_3syn5parse7NothingNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.v, ptr nonnull align 8 %i.u)
          to label %bb.d unwind label %bb.aw

bb.d:                                             ; preds = %_RINvCs3Eghgi3KVFH_3syn5parseNtNtB2_5parse7NothingECshVzvyy7iigg_12salsa_macros.exit
  %i.z = load i64, ptr %i.v, align 8
  %.not = icmp eq i64 %i.z, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro211TokenStreamNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1p_EE13from_residualB1t_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.o, ptr nonnull align 8 @114)
          to label %bb.au unwind label %bb.aw

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.q, ptr noundef nonnull align 8 dereferenceable(240) %2, i64 240, i1 false)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 5 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3mem4takeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemEECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.aa)
          to label %bb.h unwind label %.thread.i, !noalias !73

bb.g:                                             ; preds = %bb.ak, %bb.i
  %i.ab = trunc nuw i8 %.sroa.04.1.i to i1
  br i1 %i.ab, label %bb.al, label %.body

.thread.i:                                        ; preds = %bb.ai, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.h:                                             ; preds = %bb.f
  %i.ad = invoke { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.n)
          to label %bb.k unwind label %bb.j, !noalias !73 ; 2 uses

bb.i:                                             ; preds = %bb.o, %bb.j
  %.pn12.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %.pn.i, %bb.o ] ; 2 uses
  %.sroa.04.1.i = phi i8 [ %.sroa.03.1.i, %bb.j ], [ %.sroa.04.3.i, %bb.o ]
  %.sroa.03.0.i = phi i8 [ %.sroa.03.1.i, %bb.j ], [ %.sroa.03.2.i, %bb.o ]
  %i.ae = trunc nuw i8 %.sroa.03.0.i to i1
  br i1 %i.ae, label %bb.ak, label %bb.g

bb.j:                                             ; preds = %bb.ah, %bb.ab, %bb.m, %bb.l, %bb.k, %bb.h
  %.sroa.03.1.i = phi i8 [ 1, %bb.ah ], [ 0, %bb.ab ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.h ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.ag = extractvalue { ptr, i64 } %i.ad, 0
  %i.ah = extractvalue { ptr, i64 } %i.ad, 1
  %i.ai = invoke { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs3Eghgi3KVFH_3syn4item8ImplItem4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %i.ag, i64 %i.ah)
          to label %bb.l unwind label %bb.j, !noalias !73 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  %i.al = invoke { ptr, ptr } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapNtCsRujiHMkeh3_11proc_macro25IdentNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2O_5Macro12try_generate0EB2Q_(ptr %i.aj, ptr %i.ak)
          to label %bb.m unwind label %bb.j, !noalias !73 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2b_5Macro12try_generate0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsRujiHMkeh3_11proc_macro25IdentEEB2d_(ptr nonnull sret([48 x i8]) align 8 %i.m, ptr %i.am, ptr %i.an)
          to label %bb.n unwind label %bb.j, !noalias !73

bb.n:                                             ; preds = %bb.m
  %i.ao = invoke { ptr, ptr } @_RNvXsh_NtCscdodAO9FK5_5alloc3vecQINtB5_3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.n)
          to label %bb.p unwind label %.loopexit.split-lp.i, !noalias !73 ; 2 uses

bb.o:                                             ; preds = %bb.ac, %bb.z, %bb.u, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.at, %bb.u ], [ %i.az, %bb.ac ], [ %i.ay, %bb.z ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.sroa.04.3.i = phi i8 [ 1, %bb.u ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 1, %.loopexit.i ], [ 1, %.loopexit.split-lp.i ]
  %.sroa.03.2.i = phi i8 [ 0, %bb.u ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 1, %.loopexit.i ], [ %.sroa.03.3.ph.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsRujiHMkeh3_11proc_macro25IdentEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.m) #16
          to label %bb.i unwind label %bb.ad

.loopexit.i:                                      ; preds = %bb.ae, %bb.s, %bb.q
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.ag, %bb.x, %bb.w, %bb.v, %bb.n
  %.sroa.03.3.ph.i = phi i8 [ 0, %bb.x ], [ 1, %bb.n ], [ 0, %bb.v ], [ 0, %bb.w ], [ 1, %bb.ag ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.p:                                             ; preds = %bb.n
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1
  store ptr %i.ap, ptr %i.l, align 8, !noalias !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !73
  br label %bb.q

bb.q:                                             ; preds = %bb.af, %bb.p
  %i.as = invoke align 8 ptr @_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.l)
          to label %bb.r unwind label %.loopexit.i, !noalias !73 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro13modify_member(ptr noalias align 8 %i.j, ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.as, ptr align 8 %i.m)
          to label %bb.ae unwind label %.loopexit.i, !noalias !73

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !73
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemEEB1b_(ptr nonnull align 8 %i.aa)
          to label %bb.v unwind label %bb.u, !noalias !73

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !73
  br label %bb.o

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !73
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument9new_debugINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs3Eghgi3KVFH_3syn2ty4TypeEECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull align 8 %i.au)
          to label %bb.w unwind label %.loopexit.split-lp.i, !noalias !73

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !73
  %i.av = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECsRujiHMkeh3_11proc_macro2(ptr nonnull @26, ptr nonnull align 8 %i.e)
          to label %bb.x unwind label %.loopexit.split-lp.i, !noalias !73 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.aw = extractvalue { ptr, ptr } %i.av, 0
  %i.ax = extractvalue { ptr, ptr } %i.av, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.aw, ptr %i.ax)
          to label %bb.y unwind label %.loopexit.split-lp.i, !noalias !73

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(240) %i.q, i64 240, i1 false), !noalias !73
  invoke void @_RNvYNtNtCs3Eghgi3KVFH_3syn4item8ItemImplNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens17into_token_streamCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.aa unwind label %bb.ac, !noalias !73

bb.z:                                             ; preds = %bb.aa
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.aa:                                            ; preds = %bb.y
  invoke void @_RINvNtCshVzvyy7iigg_12salsa_macros5debug11dump_tokensNtNtCscdodAO9FK5_5alloc6string6StringEB4_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.c)
          to label %bb.ab unwind label %bb.z, !noalias !73

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsRujiHMkeh3_11proc_macro25IdentEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.m)
          to label %bb.ao unwind label %bb.j, !noalias !73

bb.ac:                                            ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsRujiHMkeh3_11proc_macro2(ptr nonnull align 8 %i.g) #16
          to label %bb.o unwind label %bb.ad, !noalias !73

bb.ad:                                            ; preds = %.critedge17.thread.i, %.critedge16.i, %.critedge.i, %bb.am, %bb.al, %bb.ak, %bb.ac, %bb.o
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ae:                                            ; preds = %bb.s
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCs3Eghgi3KVFH_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.af unwind label %.loopexit.i, !noalias !73

bb.af:                                            ; preds = %bb.ae
  %i.bb = load i64, ptr %i.k, align 8, !noalias !73
  %.not10.i = icmp eq i64 %i.bb, -1
  br i1 %.not10.i, label %bb.q, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !73
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro211TokenStreamNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1p_EE13from_residualB1t_(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.a, ptr nonnull align 8 @27)
          to label %bb.ah unwind label %.loopexit.split-lp.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsRujiHMkeh3_11proc_macro25IdentEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.m)
          to label %bb.ai unwind label %bb.j

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemEEB1b_(ptr nonnull align 8 %i.n)
          to label %bb.aj unwind label %.thread.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item8ItemImplEBF_(ptr nonnull align 8 %i.q)
          to label %bb.ao unwind label %bb.an

bb.ak:                                            ; preds = %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemEEB1b_(ptr nonnull align 8 %i.n) #16
          to label %bb.g unwind label %bb.ad

bb.al:                                            ; preds = %.thread.i, %bb.g
  %.pn1421.i = phi { ptr, i32 } [ %i.ac, %.thread.i ], [ %.pn12.i, %bb.g ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.q) #16
          to label %bb.am unwind label %bb.ad

bb.am:                                            ; preds = %bb.al
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.bc) #16
          to label %.critedge.i unwind label %bb.ad

.critedge.i:                                      ; preds = %bb.am
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs3Eghgi3KVFH_3syn4path4PathNtNtB12_5token3ForEEEB12_(ptr nonnull align 8 %i.bd) #16
          to label %.critedge16.i unwind label %bb.ad

.critedge16.i:                                    ; preds = %.critedge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs3Eghgi3KVFH_3syn2ty4TypeEEB1d_(ptr nonnull align 8 %i.be) #16
          to label %.critedge17.thread.i unwind label %bb.ad

.critedge17.thread.i:                             ; preds = %.critedge16.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemEEB1b_(ptr nonnull align 8 %i.aa) #16
          to label %.body unwind label %bb.ad

bb.an:                                            ; preds = %bb.aj, %bb.aq, %bb.ao
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.critedge17.thread.i, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.an ], [ %.pn1421.i, %.critedge17.thread.i ], [ %.pn12.i, %bb.g ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros12tracked_impl5MacroEBF_(ptr nonnull align 8 %i.t) #16
          to label %.thread16.thread unwind label %bb.at

bb.ao:                                            ; preds = %bb.ab, %bb.aj
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro211TokenStreamNtNtCs3Eghgi3KVFH_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1t_(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  %i.bg = load i64, ptr %i.s, align 8
  %i.bh = icmp eq i64 %i.bg, -2
  br i1 %i.bh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro211TokenStreamNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1p_EE13from_residualB1t_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.p, ptr nonnull align 8 @113)
          to label %bb.as unwind label %bb.an

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros12tracked_impl5MacroEBF_(ptr nonnull align 8 %i.t)
  br label %.thread24

.thread24:                                        ; preds = %bb.as, %bb.av, %bb.ar
  ret void

bb.as:                                            ; preds = %bb.aq
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros12tracked_impl5MacroEBF_(ptr nonnull align 8 %i.t)
  br label %.thread24

bb.at:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.au:                                            ; preds = %bb.e
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros7hygiene7HygieneEBF_(ptr nonnull align 8 %i.w)
          to label %bb.av unwind label %bb.b

bb.av:                                            ; preds = %bb.au
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item8ItemImplEBF_(ptr align 8 %2)
  br label %.thread24

.thread16:                                        ; preds = %bb.ax
  br i1 %.sroa.04.015, label %bb.ay, label %.thread16.thread

bb.aw:                                            ; preds = %bb.e, %_RINvCs3Eghgi3KVFH_3syn5parseNtNtB2_5parse7NothingECshVzvyy7iigg_12salsa_macros.exit, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros7hygiene7HygieneEBF_(ptr nonnull align 8 %i.w) #16
          to label %bb.ax unwind label %bb.at

bb.ax:                                            ; preds = %bb.b, %bb.aw, %.thread20
  %.sroa.04.015 = phi i1 [ true, %.thread20 ], [ false, %bb.b ], [ false, %bb.aw ]
  %.pn714 = phi { ptr, i32 } [ %3, %.thread20 ], [ %i.y, %bb.b ], [ %lpad.thr_comm, %bb.aw ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item8ItemImplEBF_(ptr align 8 %2) #16
          to label %.thread16 unwind label %bb.at

.thread16.thread:                                 ; preds = %.body, %bb.ay, %.thread16
  %.pn929 = phi { ptr, i32 } [ %.pn714, %.thread16 ], [ %.pn714, %bb.ay ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn929

bb.ay:                                            ; preds = %.thread16
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsRujiHMkeh3_11proc_macro2(ptr nonnull align 4 %i.x) #16
          to label %.thread16.thread unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3Eghgi3KVFH_3syn11parse_quoteNtNtB4_2ty4TypeNtB2_10ParseQuote5parseCshVzvyy7iigg_12salsa_macros(ptr sret([248 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCs3Eghgi3KVFH_3syn2ty7parsingNtB4_4TypeNtNtB6_5parse5Parse5parse(ptr sret([248 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCs3Eghgi3KVFH_3syn7spannedNtNtB4_2ty13TypeReferenceNtB2_7Spanned4spanCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !79
  invoke void @_RNvXs1_NtNtCs3Eghgi3KVFH_3syn2ty8printingNtB7_13TypeReferenceNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn2ty13TypeReferenceNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.b, !noalias !79

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c, !noalias !79

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !79
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn2ty13TypeReferenceNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  %i.e = call i32 @_RNvNtCs66Sk1bwUSDc_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCs3Eghgi3KVFH_3syn7spannedNtNtB4_2ty15TypeTraitObjectNtB2_7Spanned4spanCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !85
  invoke void @_RNvXs6_NtNtCs3Eghgi3KVFH_3syn2ty8printingNtB7_15TypeTraitObjectNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn2ty15TypeTraitObjectNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.b, !noalias !85

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c, !noalias !85

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !85
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn2ty15TypeTraitObjectNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  %i.e = call i32 @_RNvNtCs66Sk1bwUSDc_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCs3Eghgi3KVFH_3syn7spannedNtNtB4_4data5FieldNtB2_7Spanned4spanCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !88
  invoke void @_RNvXNtCs66Sk1bwUSDc_5quote9to_tokensRNtNtCs3Eghgi3KVFH_3syn4data5FieldNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn4data5FieldNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.b, !noalias !88

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c, !noalias !88

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !88
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn4data5FieldNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = call i32 @_RNvNtCs66Sk1bwUSDc_5quote7spanned10join_spans(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXNtCs4NRVxsYgnAr_4core7convertReINtB2_5AsRefNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE6as_refCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RNvXsW_NtNtCs2AWtUsOyxgP_3std3ffi6os_streINtNtCs4NRVxsYgnAr_4core7convert5AsRefNtB5_5OsStrE6as_refCshVzvyy7iigg_12salsa_macros(ptr %i.a, i64 %i.c)
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs66Sk1bwUSDc_5quote9to_tokensRRNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtB2_8ToTokens9to_tokensCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXNtCs66Sk1bwUSDc_5quote9to_tokensRNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtB2_8ToTokens9to_tokensBD_(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCshVzvyy7iigg_12salsa_macros(i64 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_3ops5range9RangeFromlENtB2_12IntoIterator9into_iterCshVzvyy7iigg_12salsa_macros(i32 returned %0) unnamed_addr #2 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1o_2KVE12drop_key_valINtB2_7DropperINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtB2r_3ops4drop4Drop4dropCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %i.g, align 4, !alias.scope !91
  br label %_RINvNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked11decode_reprINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECshVzvyy7iigg_12salsa_macros.exit

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %i.c, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = tail call i8 @_RNvMNtNtCs4NRVxsYgnAr_4core2io5errorNtB2_9ErrorKind9from_primCshVzvyy7iigg_12salsa_macros(i32 %i.i), !noalias !91 ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.k, align 8, !alias.scope !91
  br label %_RINvNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked11decode_reprINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECshVzvyy7iigg_12salsa_macros.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
