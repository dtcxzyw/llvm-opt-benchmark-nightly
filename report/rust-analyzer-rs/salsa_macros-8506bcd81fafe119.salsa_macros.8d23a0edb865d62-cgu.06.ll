Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/salsa_macros-8506bcd81fafe119.salsa_macros.8d23a0edb865d62-cgu.06?download=true
inline.NumInlined: 38
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro26inputs_use_elided_lifetime:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro27update_db_argument_lifetime(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = tail call { ptr, ptr } @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE8iter_mutCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  store ptr %i.h, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = invoke align 8 ptr @_RNvYINtNtCsgFSQ9XOTBNe_3syn10punctuated7IterMutNtNtB7_4item5FnArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.d, i64 %2)
          to label %bb.c unwind label %bb.b       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgFSQ9XOTBNe_3syn10punctuated7IterMutNtNtBG_4item5FnArgEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.d) #24
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.k, null
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgFSQ9XOTBNe_3syn10punctuated7IterMutNtNtBG_4item5FnArgEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.d)
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtCs1K5DUQUZc67_11proc_macro25IdentReECsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.o, ptr nonnull @68, i64 46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.q = call align 8 ptr @_RNvXsF_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsgFSQ9XOTBNe_3syn2ty4TypeEINtNtCshzWfHUSfYae_4core7convert5AsMutBH_E6as_mutCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.p) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 12
  br i1 %i.s, label %bb.g, label %_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load i8, ptr %i.u, align 8
  %.not.i = icmp eq i8 %i.v, -1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call zeroext i1 @_RNvYNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2neCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.t, ptr nonnull align 8 @66) #21
  br i1 %i.w, label %_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_RNvXs0_NtCsgFSQ9XOTBNe_3syn8lifetimeNtB5_8LifetimeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeEEB11_(ptr nonnull align 8 %i.t)
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
  br label %_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit

_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit: ; preds = %bb.f, %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  call void @_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedQNtNtB5_4item5FnArgReECsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.k, ptr nonnull @68, i64 46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro15set_db_lifetime.exit, %bb.e
  ret void

bb.n:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4pushCsKXd8SJXguA_12salsa_macros(ptr align 8 %0, i32 %1) unnamed_addr #1 {
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
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %0, i64 %.sroa.0.0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  tail call void @_RNvNtNtCshzWfHUSfYae_4core4char7methods25encode_utf8_raw_uncheckedCsKXd8SJXguA_12salsa_macros(i32 %1, ptr %i.h) #21
  %i.i = add i64 %.sroa.0.0, %i.b
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8as_bytesCsKXd8SJXguA_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsgFSQ9XOTBNe_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_8lifetime8LifetimeNtNtB4_5token4PlusEE3newCsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsgFSQ9XOTBNe_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_4item5FnArgNtNtB4_5token5CommaEE3newCsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsgFSQ9XOTBNe_3syn4item5FnArgNtNtBz_5token5CommaE8iter_mutCsKXd8SJXguA_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7IterMutTNtNtCsgFSQ9XOTBNe_3syn4item5FnArgNtNtBW_5token5CommaEE3newCsKXd8SJXguA_12salsa_macros(ptr align 8 %0, i64 %1) #21
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsgFSQ9XOTBNe_3syn4item7UseTreeNtNtBz_5token5CommaE8iter_mutCsKXd8SJXguA_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7IterMutTNtNtCsgFSQ9XOTBNe_3syn4item7UseTreeNtNtBW_5token5CommaEE3newCsKXd8SJXguA_12salsa_macros(ptr align 8 %0, i64 %1) #21
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsKXd8SJXguA_12salsa_macros12tracked_impl12tracked_impl(ptr sret([32 x i8]) align 8 %0, i32 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [240 x i8], align 8               ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [240 x i8], align 8               ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 3 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 3 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.y, align 4
  invoke void @_RINvMNtCsKXd8SJXguA_12salsa_macros7hygieneNtB3_7Hygiene5from2NtNtCsgFSQ9XOTBNe_3syn4item8ItemImplEB5_(ptr nonnull sret([48 x i8]) align 8 %i.x, ptr align 8 %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.aw, %bb.a
  %.sroa.04.1 = phi i1 [ false, %bb.aw ], [ true, %bb.a ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvCsgFSQ9XOTBNe_3syn5parseNtNtB2_5parse7NothingECsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.v, i32 %1)
          to label %bb.d unwind label %bb.ay

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5parse7NothingNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull align 8 %i.v)
          to label %bb.e unwind label %bb.ay

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.w, align 8
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.p, ptr nonnull align 8 @110)
          to label %bb.aw unwind label %bb.ay

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.r, ptr noundef nonnull align 8 dereferenceable(240) %2, i64 240, i1 false)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 5 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3mem4takeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEECsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.ab)
          to label %bb.i unwind label %.thread.i, !noalias !48

bb.h:                                             ; preds = %bb.am, %bb.j
  %i.ac = trunc nuw i8 %.sroa.04.1.i to i1
  br i1 %i.ac, label %bb.an, label %.body

.thread.i:                                        ; preds = %bb.ak, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.i:                                             ; preds = %bb.g
  %i.ae = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.o)
          to label %bb.l unwind label %bb.k, !noalias !48 ; 2 uses

bb.j:                                             ; preds = %bb.o, %bb.k
  %.pn12.i = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %.pn.i, %bb.o ] ; 2 uses
  %.sroa.04.1.i = phi i8 [ %.sroa.03.1.i, %bb.k ], [ %.sroa.04.3.i, %bb.o ]
  %.sroa.03.0.i = phi i8 [ %.sroa.03.1.i, %bb.k ], [ %.sroa.03.2.i, %bb.o ]
  %i.af = trunc nuw i8 %.sroa.03.0.i to i1
  br i1 %i.af, label %bb.am, label %bb.h

bb.k:                                             ; preds = %bb.aj, %bb.ae, %bb.m, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItem4iterCsKXd8SJXguA_12salsa_macros.exit.i, %bb.l, %bb.i
  %.sroa.03.1.i = phi i8 [ 1, %bb.aj ], [ 0, %bb.ae ], [ 1, %bb.m ], [ 1, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItem4iterCsKXd8SJXguA_12salsa_macros.exit.i ], [ 1, %bb.l ], [ 1, %bb.i ] ; 2 uses
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.ah = extractvalue { ptr, i64 } %i.ae, 0
  %i.ai = extractvalue { ptr, i64 } %i.ae, 1
  %i.aj = invoke { ptr, ptr } @_RNvMs4_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_4IterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemE3newCsKXd8SJXguA_12salsa_macros(ptr align 8 %i.ah, i64 %i.ai) #21
          to label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItem4iterCsKXd8SJXguA_12salsa_macros.exit.i unwind label %bb.k, !noalias !48 ; 2 uses

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItem4iterCsKXd8SJXguA_12salsa_macros.exit.i: ; preds = %bb.l
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0
  %i.al = extractvalue { ptr, ptr } %i.aj, 1
  %i.am = invoke { ptr, ptr } @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapNtCs1K5DUQUZc67_11proc_macro25IdentNCNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2P_5Macro12try_generate0EB2R_(ptr %i.ak, ptr %i.al)
          to label %bb.m unwind label %bb.k, !noalias !48 ; 2 uses

bb.m:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItem4iterCsKXd8SJXguA_12salsa_macros.exit.i
  %i.an = extractvalue { ptr, ptr } %i.am, 0
  %i.ao = extractvalue { ptr, ptr } %i.am, 1
  invoke void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENCNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2b_5Macro12try_generate0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentEEB2d_(ptr nonnull sret([48 x i8]) align 8 %i.n, ptr %i.an, ptr %i.ao)
          to label %bb.n unwind label %bb.k, !noalias !48

bb.n:                                             ; preds = %bb.m
  %i.ap = invoke { ptr, ptr } @_RNvXsi_NtCsbSS6DM8SDEO_5alloc3vecQINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.o)
          to label %bb.p unwind label %.loopexit.split-lp.i, !noalias !48 ; 2 uses

bb.o:                                             ; preds = %.body.thread.i, %.body.i, %bb.u, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.au, %bb.u ], [ %eh.lpad-body24.i, %.body.thread.i ], [ %i.be, %.body.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.sroa.04.3.i = phi i8 [ 1, %bb.u ], [ 0, %.body.thread.i ], [ 0, %.body.i ], [ 1, %.loopexit.i ], [ 1, %.loopexit.split-lp.i ]
  %.sroa.03.2.i = phi i8 [ 0, %bb.u ], [ 0, %.body.thread.i ], [ 0, %.body.i ], [ 1, %.loopexit.i ], [ %.sroa.03.3.ph.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.n) #24
          to label %bb.j unwind label %bb.af

.loopexit.i:                                      ; preds = %bb.ag, %bb.s, %bb.q
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.ai, %bb.x, %bb.w, %bb.v, %bb.n
  %.sroa.03.3.ph.i = phi i8 [ 0, %bb.x ], [ 1, %bb.n ], [ 0, %bb.v ], [ 0, %bb.w ], [ 1, %bb.ai ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.p:                                             ; preds = %bb.n
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %i.ar = extractvalue { ptr, ptr } %i.ap, 1
  store ptr %i.aq, ptr %i.m, align 8, !noalias !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !noalias !48
  br label %bb.q

bb.q:                                             ; preds = %bb.ah, %bb.p
  %i.at = invoke align 8 ptr @_RNvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_7IterMutNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.m)
          to label %bb.r unwind label %.loopexit.i, !noalias !48 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RNvMNtCsKXd8SJXguA_12salsa_macros12tracked_implNtB2_5Macro13modify_member(ptr noalias align 8 %i.k, ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.at, ptr align 8 %i.n)
          to label %bb.ag unwind label %.loopexit.i, !noalias !48

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !48
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEEB1c_(ptr nonnull align 8 %i.ab)
          to label %bb.v unwind label %bb.u, !noalias !48

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !48
  br label %bb.o

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  invoke void @_RINvMNtNtCshzWfHUSfYae_4core3fmt2rtNtB3_8Argument9new_debugINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsgFSQ9XOTBNe_3syn2ty4TypeEECsKXd8SJXguA_12salsa_macros(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull align 8 %i.av)
          to label %bb.w unwind label %.loopexit.split-lp.i, !noalias !48

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !48
  %i.aw = invoke { ptr, ptr } @_RINvMs2_NtCshzWfHUSfYae_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs1K5DUQUZc67_11proc_macro2(ptr nonnull @22, ptr nonnull align 8 %i.f)
          to label %bb.x unwind label %.loopexit.split-lp.i, !noalias !48 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc3fmt6formatCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr %i.ax, ptr %i.ay)
          to label %bb.y unwind label %.loopexit.split-lp.i, !noalias !48

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.c, ptr noundef nonnull align 8 dereferenceable(240) %i.r, i64 240, i1 false), !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc.i.i unwind label %bb.ab, !noalias !49

.noexc.i.i:                                       ; preds = %bb.y
  invoke void @_RNvXsb_NtNtCsgFSQ9XOTBNe_3syn4item8printingNtB7_8ItemImplNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
          to label %bb.ac unwind label %bb.z, !noalias !49

bb.z:                                             ; preds = %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #24
          to label %.body.i.i unwind label %bb.aa, !noalias !49

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !49
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ab, %bb.z
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bb, %bb.ab ], [ %i.az, %bb.z ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplEBF_(ptr nonnull align 8 %i.c) #24
          to label %.body.thread.i unwind label %bb.ad, !noalias !49

bb.ac:                                            ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplEBF_(ptr nonnull align 8 %i.c)
          to label %_RNvYNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens17into_token_streamCsKXd8SJXguA_12salsa_macros.exit.i unwind label %.body.thread25.i, !noalias !48

.body.thread25.i:                                 ; preds = %bb.ac
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.ad:                                            ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !49
  unreachable

.body.i:                                          ; preds = %_RNvYNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens17into_token_streamCsKXd8SJXguA_12salsa_macros.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_RNvYNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens17into_token_streamCsKXd8SJXguA_12salsa_macros.exit.i: ; preds = %bb.ac
  invoke void @_RINvNtCsKXd8SJXguA_12salsa_macros5debug11dump_tokensNtNtCsbSS6DM8SDEO_5alloc6string6StringEB4_(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.d)
          to label %bb.ae unwind label %.body.i, !noalias !48

bb.ae:                                            ; preds = %_RNvYNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens17into_token_streamCsKXd8SJXguA_12salsa_macros.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.n)
          to label %bb.aq unwind label %bb.k, !noalias !48

.body.thread.i:                                   ; preds = %.body.thread25.i, %.body.i.i
  %eh.lpad-body24.i = phi { ptr, i32 } [ %i.bc, %.body.thread25.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.h) #24
          to label %bb.o unwind label %bb.af, !noalias !48

bb.af:                                            ; preds = %.critedge17.thread.i, %.critedge16.i, %.critedge.i, %bb.ao, %bb.an, %bb.am, %.body.thread.i, %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ag:                                            ; preds = %bb.s
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.ah unwind label %.loopexit.i, !noalias !48

bb.ah:                                            ; preds = %bb.ag
  %i.bg = load i64, ptr %i.l, align 8, !noalias !48
  %.not10.i = icmp eq i64 %i.bg, -1
  br i1 %.not10.i, label %bb.q, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !48
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.b, ptr nonnull align 8 @23)
          to label %bb.aj unwind label %.loopexit.split-lp.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.n)
          to label %bb.ak unwind label %bb.k

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEEB1c_(ptr nonnull align 8 %i.o)
          to label %bb.al unwind label %.thread.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplEBF_(ptr nonnull align 8 %i.r)
          to label %bb.aq unwind label %bb.ap

bb.am:                                            ; preds = %bb.j
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEEB1c_(ptr nonnull align 8 %i.o) #24
          to label %bb.h unwind label %bb.af

bb.an:                                            ; preds = %.thread.i, %bb.h
  %.pn1421.i = phi { ptr, i32 } [ %i.ad, %.thread.i ], [ %.pn12.i, %bb.h ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.r) #24
          to label %bb.ao unwind label %bb.af

bb.ao:                                            ; preds = %bb.an
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.bh) #24
          to label %.critedge.i unwind label %bb.af

.critedge.i:                                      ; preds = %bb.ao
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtCsgFSQ9XOTBNe_3syn5token3NotENtNtB16_4path4PathNtB14_3ForEEEB16_(ptr nonnull align 8 %i.bi) #24
          to label %.critedge16.i unwind label %bb.af

.critedge16.i:                                    ; preds = %.critedge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsgFSQ9XOTBNe_3syn2ty4TypeEEB1e_(ptr nonnull align 8 %i.bj) #24
          to label %.critedge17.thread.i unwind label %bb.af

.critedge17.thread.i:                             ; preds = %.critedge16.i
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEEB1c_(ptr nonnull align 8 %i.ab) #24
          to label %.body unwind label %bb.af

bb.ap:                                            ; preds = %bb.al, %bb.as, %bb.aq
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %.critedge17.thread.i, %bb.ap
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.ap ], [ %.pn1421.i, %.critedge17.thread.i ], [ %.pn12.i, %bb.h ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsKXd8SJXguA_12salsa_macros12tracked_impl5MacroEBF_(ptr nonnull align 8 %i.u) #24
          to label %.thread16.thread unwind label %bb.av

bb.aq:                                            ; preds = %bb.ae, %bb.al
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
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull align 8 %i.s)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.bl = load i64, ptr %i.t, align 8
  %i.bm = icmp eq i64 %i.bl, -2
  br i1 %i.bm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.q, ptr nonnull align 8 @109)
          to label %bb.au unwind label %bb.ap

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsKXd8SJXguA_12salsa_macros12tracked_impl5MacroEBF_(ptr nonnull align 8 %i.u)
  br label %.thread24

.thread24:                                        ; preds = %bb.ax, %bb.at, %bb.au
  ret void

bb.au:                                            ; preds = %bb.as
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsKXd8SJXguA_12salsa_macros12tracked_impl5MacroEBF_(ptr nonnull align 8 %i.u)
  br label %.thread24

bb.av:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aw:                                            ; preds = %bb.f
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsKXd8SJXguA_12salsa_macros7hygiene7HygieneEBF_(ptr nonnull align 8 %i.x)
          to label %bb.ax unwind label %bb.b

bb.ax:                                            ; preds = %bb.aw
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplEBF_(ptr align 8 %2)
  br label %.thread24

.thread16:                                        ; preds = %bb.az
  br i1 %.sroa.04.0.ph, label %bb.ba, label %.thread16.thread

bb.ay:                                            ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsKXd8SJXguA_12salsa_macros7hygiene7HygieneEBF_(ptr nonnull align 8 %i.x) #24
          to label %bb.az unwind label %bb.av

bb.az:                                            ; preds = %bb.b, %bb.ay
  %.pn7.ph = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ay ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.04.0.ph = phi i1 [ false, %bb.ay ], [ %.sroa.04.1, %bb.b ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4item8ItemImplEBF_(ptr align 8 %2) #24
          to label %.thread16 unwind label %bb.av

.thread16.thread:                                 ; preds = %.body, %bb.ba, %.thread16
  %.pn929 = phi { ptr, i32 } [ %.pn7.ph, %.thread16 ], [ %.pn7.ph, %bb.ba ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn929

bb.ba:                                            ; preds = %.thread16
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro11TokenStreamECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 4 %i.y) #24
          to label %.thread16.thread unwind label %bb.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytesCsKXd8SJXguA_12salsa_macros(ptr %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 2 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2RXd34xq0RM_12synstructure(ptr %0, ptr %1, i64 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %_RNvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsKXd8SJXguA_12salsa_macros.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = and i64 %2, -8                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.f = icmp samesign ult i64 %i.b, 4
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr10swap_chunkKj4_ECs2RXd34xq0RM_12synstructure(ptr %i.d, ptr %i.e) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 4, %bb.e ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr10swap_chunkKj2_ECs2RXd34xq0RM_12synstructure(ptr %i.i, ptr %i.j) #21
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.l = and i64 %2, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsKXd8SJXguA_12salsa_macros.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr10swap_chunkKj1_ECs2RXd34xq0RM_12synstructure(ptr %i.n, ptr %i.o) #21
  br label %_RNvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsKXd8SJXguA_12salsa_macros.exit

_RNvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsKXd8SJXguA_12salsa_macros.exit: ; preds = %bb.i, %bb.h, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse212__mm_or_si128CsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = load <2 x i64>, ptr %2, align 16
  %i.c = or <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse213__mm_set1_epi8CsKXd8SJXguA_12salsa_macros(ptr sret([16 x i8]) align 16 %0, i8 %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  call void @_RNvMsb_NtNtCshzWfHUSfYae_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCs2RXd34xq0RM_12synstructure(ptr nonnull sret([16 x i8]) align 16 %i.b, i8 %1) #21
  %i.c = load <16 x i8>, ptr %i.b, align 16
  store <16 x i8> %i.c, ptr %i.a, align 16
  call void @_RNvMs1P_NtNtCshzWfHUSfYae_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCsKXd8SJXguA_12salsa_macros(ptr sret([16 x i8]) align 16 %0, ptr nonnull align 16 %i.a) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_cmpeq_epi8CsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = alloca [16 x i8], align 16               ; 2 uses
  %i.d = alloca [16 x i8], align 16               ; 2 uses
  %i.e = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.e, ptr %i.c, align 16
  call void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsKXd8SJXguA_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c) #21
  %i.f = load <16 x i8>, ptr %i.d, align 16
  %i.g = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %i.g, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsKXd8SJXguA_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a) #21
  %i.h = load <16 x i8>, ptr %i.b, align 16
  %i.i = icmp eq <16 x i8> %i.f, %i.h
  %i.j = sext <16 x i1> %i.i to <16 x i8>
  store <16 x i8> %i.j, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_cmpgt_epi8CsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = alloca [16 x i8], align 16               ; 2 uses
  %i.d = alloca [16 x i8], align 16               ; 2 uses
  %i.e = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.e, ptr %i.c, align 16
  call void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsKXd8SJXguA_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c) #21
  %i.f = load <16 x i8>, ptr %i.d, align 16
  %i.g = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %i.g, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsKXd8SJXguA_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a) #21
  %i.h = load <16 x i8>, ptr %i.b, align 16
  %i.i = icmp sgt <16 x i8> %i.f, %i.h
  %i.j = sext <16 x i1> %i.i to <16 x i8>
  store <16 x i8> %i.j, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128CsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128CsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %.sroa.0.0.copyload, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_store_si128CsKXd8SJXguA_12salsa_macros(ptr nofree writeonly captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i32 0, 65536) i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8CsKXd8SJXguA_12salsa_macros(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = load <2 x i64>, ptr %0, align 16
  store <2 x i64> %i.c, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsKXd8SJXguA_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a) #21
  %i.d = load <16 x i8>, ptr %i.b, align 16
  %i.e = icmp slt <16 x i8> %i.d, zeroinitializer
  %i.f = bitcast <16 x i1> %i.e to i16
  %i.g = zext i16 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_setzero_si128CsKXd8SJXguA_12salsa_macros(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0) unnamed_addr #7 {
bb.a:
  store <2 x i64> zeroinitializer, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsKXd8SJXguA_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec10partial_eqINtB4_3VechENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs1K5DUQUZc67_11proc_macro2(ptr align 8 %0, ptr align 8 %1) #21
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCsgFSQ9XOTBNe_3syn7spannedNtNtB4_4item4ItemNtB2_7Spanned4spanCsKXd8SJXguA_12salsa_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !55
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4item4ItemNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCslCbDOIcU2Dw_5quote7spannedNtNtCsgFSQ9XOTBNe_3syn4item4ItemNtB5_7Spanned6___spanCsKXd8SJXguA_12salsa_macros.exit unwind label %bb.b, !noalias !55

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #24
          to label %bb.d unwind label %bb.c, !noalias !55

end_hunk_0
