Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-2eecfb50b9afc52a.tokio_macros.7ac2b7d1e952eaa1-cgu.1?download=true
inline.NumInlined: 169
inline.NumDeleted: 123
begin_hunk_0_@_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterReKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitReEE4nextCsaxs130FOtor_12tokio_macros(ptr align 8 %0, i64 4) #17
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCscBrinq2mG3I_3syn4path4PathENtNtB7_5clone5Clone5cloneCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs21_NtNtCscBrinq2mG3I_3syn3gen5cloneNtNtBa_4path4PathNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCscBrinq2mG3I_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 3 uses
  %i.b = alloca [232 x i8], align 8               ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [240 x i8], align 8               ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %.val9 = load ptr, ptr %i.h, align 8
  %.not.i = icmp ne ptr %.val9, null
  %..i = zext i1 %.not.i to i64
  %i.i = add i64 %.val, %..i
  %i.j = invoke { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfr4kGEjnBfC_11proc_macro2(i64 %i.i, i64 8, i64 232) #17
          to label %bb.c unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.p, %bb.j
  %.sroa.02.2 = phi i1 [ true, %bb.j ], [ false, %bb.p ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.l = extractvalue { i64, ptr } %i.j, 0
  %i.m = extractvalue { i64, ptr } %i.j, 1
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !24
  %.sroa.018.0.copyload = load i64, ptr %1, align 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8 ; 3 uses
  %.sroa.320.0.copyload = load i64, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw [240 x i8], ptr %.sroa.219.0.copyload, i64 %.sroa.320.0.copyload
  store ptr %.sroa.219.0.copyload, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.219.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.018.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit, %bb.c
  invoke void @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB11_5token5CommaEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr nonnull sret([240 x i8]) align 8 %i.d, ptr nonnull align 8 %i.e)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i64 232, i1 false)
  %i.r = load i64, ptr %i.o, align 8              ; 3 uses
  %i.s = load i64, ptr %i.f, align 8
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaE8grow_oneCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr nonnull align 8 %i.a) #18
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.f, %bb.g
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw [232 x i8], ptr %i.w, i64 %i.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.x, ptr noundef nonnull align 8 dereferenceable(232) %i.a, i64 232, i1 false)
  %i.y = add i64 %i.r, 1
  store i64 %i.y, ptr %i.o, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1u_5token5CommaEEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.e)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not5 = icmp eq ptr %i.z, null
  br i1 %.not5, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.z, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.z, i64 232, i1 false)
  %i.aa = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ab = load i64, ptr %i.f, align 8
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaE8grow_oneCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr nonnull align 8 %i.b) #18
          to label %.body10 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body10:                                          ; preds = %bb.n
  invoke void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.c) #18
          to label %bb.t unwind label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.af = load ptr, ptr %i.n, align 8
  %i.ag = getelementptr inbounds nuw [232 x i8], ptr %i.af, i64 %i.aa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ag, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 232, i1 false)
  %i.ah = add i64 %i.aa, 1
  store i64 %i.ah, ptr %i.o, align 8
  invoke void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.c)
          to label %bb.r unwind label %bb.b

bb.q:                                             ; preds = %bb.w, %bb.u, %bb.t, %.body10, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.r:                                             ; preds = %bb.k, %bb.p
  %.sroa.025.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.226.0.copyload = load ptr, ptr %i.n, align 8 ; 3 uses
  %.sroa.327.0.copyload = load i64, ptr %i.o, align 8
  %i.aj = getelementptr inbounds nuw [232 x i8], ptr %.sroa.226.0.copyload, i64 %.sroa.327.0.copyload
  store ptr %.sroa.226.0.copyload, ptr %0, align 8
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.226.0.copyload, ptr %.sroa.222.0..sroa_idx, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.025.0.copyload, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aj, ptr %.sroa.424.0..sroa_idx, align 8
  ret void

bb.s:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.u, %bb.h ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1u_5token5CommaEEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.e) #18
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.b, %.body, %.body10
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.b ], [ %i.ad, %.body10 ]
  %.sroa.02.1 = phi i1 [ true, %.body ], [ %.sroa.02.2, %bb.b ], [ false, %.body10 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #18
          to label %.thread unwind label %bb.q

.thread:                                          ; preds = %bb.t, %bb.u
  %.sroa.02.032 = phi i1 [ %.sroa.02.1, %bb.t ], [ true, %bb.u ]
  %.pn.pn.pn31 = phi { ptr, i32 } [ %.pn.pn, %bb.t ], [ %i.an, %bb.u ]
  %i.al = load ptr, ptr %i.h, align 8
  %i.am = icmp ne ptr %i.al, null
  %or.cond = and i1 %.sroa.02.032, %i.am
  br i1 %or.cond, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1d_5token5CommaEEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %1) #18
          to label %.thread unwind label %bb.q

bb.v:                                             ; preds = %bb.w, %.thread
  resume { ptr, i32 } %.pn.pn.pn31

bb.w:                                             ; preds = %.thread
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.h) #18
          to label %bb.v unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCsaoeXog3N7id_5quote9___private3extINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro25IdentENtB5_16RepAsIteratorExt15quote_into_iterCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtCsfr4kGEjnBfC_11proc_macro25Ident4iterCsaxs130FOtor_12tokio_macros(ptr align 8 %.val, i64 %.val1) #17
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterARej4_Kj2_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEj1_EECsaxs130FOtor_12tokio_macros(ptr align 8 %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterReKj4_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8
  %i.e = tail call { ptr, ptr } @_RNvMsa_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7IterMutTNtNtCscBrinq2mG3I_3syn3pat3PatNtNtBW_5token2OrEE3newCsaxs130FOtor_12tokio_macros(ptr align 8 %.val.i, i64 %.val1.i) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token2OrE8iter_mutCsaxs130FOtor_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call align 8 ptr @_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn3pat3PatEINtNtCs3oUPovFnLWP_4core7convert5AsMutBE_E6as_mutINtNtNtB1e_3ops8function6FnOnceTQB5_EE9call_onceCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #17
  br label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token2OrE8iter_mutCsaxs130FOtor_12tokio_macros.exit

_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token2OrE8iter_mutCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  %i.j = extractvalue { ptr, ptr } %i.e, 0
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.02.0.i.i, ptr %i.l, align 8
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_3pat3PatNtNtB4_5token2OrEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.m = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @8, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8
  %i.e = tail call { ptr, ptr } @_RNvMsa_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7IterMutTNtNtCscBrinq2mG3I_3syn3pat3PatNtNtBW_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr align 8 %.val.i, i64 %.val1.i) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call align 8 ptr @_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn3pat3PatEINtNtCs3oUPovFnLWP_4core7convert5AsMutBE_E6as_mutINtNtNtB1e_3ops8function6FnOnceTQB5_EE9call_onceCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #17
  br label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit

_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  %i.j = extractvalue { ptr, ptr } %i.e, 0
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.02.0.i.i, ptr %i.l, align 8
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_3pat3PatNtNtB4_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.m = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @10, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8
  %i.e = tail call { ptr, ptr } @_RNvMsa_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7IterMutTNtNtCscBrinq2mG3I_3syn3pat8FieldPatNtNtBW_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr align 8 %.val.i, i64 %.val1.i) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat8FieldPatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call align 8 ptr @_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn3pat8FieldPatEINtNtCs3oUPovFnLWP_4core7convert5AsMutBE_E6as_mutINtNtNtB1j_3ops8function6FnOnceTQB5_EE9call_onceCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #17
  br label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat8FieldPatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit

_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat8FieldPatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  %i.j = extractvalue { ptr, ptr } %i.e, 0
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.02.0.i.i, ptr %i.l, align 8
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_3pat8FieldPatNtNtB4_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.m = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @12, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr align 8 %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !27
  %i.b = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !27
  %i.c = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !27
  %i.d = tail call i32 @_RNvXs5_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB9_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17
  store i32 %i.a, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %.sroa.3.0..sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanETNtB9_11TokenStreamB1p_EEINtB5_6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([20 x i8]) align 4 captures(none) initializes((0, 20)) %0, ptr align 8 %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !30
  %i.b = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !30
  %i.c = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !30
  %i.d = tail call { i32, i32 } @_RNvXs7_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcTNtB9_11TokenStreamBL_EINtB5_6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17 ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1
  store i32 %i.a, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %.sroa.3.0..sroa_idx, align 4
end_hunk_0
begin_hunk_1_@_RNvXsC_NtCscBrinq2mG3I_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsaxs130FOtor_12tokio_macros:bb.a
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtCscBrinq2mG3I_3syn3pat8FieldPatE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @_RNvXs2R_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_7IterMutTNtNtCscBrinq2mG3I_3syn3pat8FieldPatNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %0) #17
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtCscBrinq2mG3I_3syn3pat8FieldPatE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtCscBrinq2mG3I_3syn3pat8FieldPatE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal range(i64 0, 96076792050570583) i64 @_RNvXsD_NtCscBrinq2mG3I_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal range(i64 0, 96076792050570583) i64 @_RNvXsD_NtCscBrinq2mG3I_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal range(i64 0, 256204778801521552) i64 @_RNvXsD_NtCscBrinq2mG3I_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvXsf_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr nofree align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.c, ptr nonnull align 8 @26) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs8tmH6GZoEDf_11miniz_oxide(ptr nonnull %i.a, i64 4, ptr %i.e, i64 4, ptr nonnull align 8 @26)
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = add i64 %i.f, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.j, ptr %0, align 8, !captures !31
  store i64 %i.i, ptr %i.b, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4
  ret i32 %.sroa.0.0.copyload

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 4, i64 %i.f, i64 %i.f, ptr nonnull align 8 @26) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvMNtB7_10punctuatedINtBy_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtB5_6Parser6parse2Csaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.l = call { ptr, i64 } @_RNvMNtCscBrinq2mG3I_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr %i.m, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.n, ptr %i.o, align 8
  invoke void @_RNvNtCscBrinq2mG3I_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #18
          to label %bb.v unwind label %bb.u

bb.c:                                             ; preds = %.invoke, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvMNtCscBrinq2mG3I_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB7_5parse11ParseBufferEE9call_onceCsaxs130FOtor_12tokio_macros(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.u, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #18
          to label %bb.b unwind label %bb.u

bb.f:                                             ; preds = %.invoke10, %bb.i, %bb.g, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaxs130FOtor_12tokio_macros(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.h, align 8
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @29)
          to label %.invoke unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_4attr4MetaNtNtBG_5token5CommaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.i) #18
          to label %bb.e unwind label %bb.u

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCscBrinq2mG3I_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @28)
          to label %.invoke10 unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.w = invoke { ptr, ptr } @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = invoke { i32, i8 } @_RNvNtCscBrinq2mG3I_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.x, ptr %i.y)
          to label %bb.q unwind label %bb.k       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.aa = extractvalue { i32, i8 } %i.z, 1        ; 2 uses
  %.not6.not = icmp eq i8 %i.aa, -1               ; 2 uses
  br i1 %.not6.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = extractvalue { i32, i8 } %i.z, 0
  invoke void @_RNvNtCscBrinq2mG3I_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ab, i8 %i.aa)
          to label %bb.s unwind label %bb.k

.thread:                                          ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %2

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %2

2:                                                ; preds = %bb.s, %.thread
  br i1 %.not6.not, label %.invoke, label %.invoke10

bb.t:                                             ; preds = %.invoke
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  ret void

.invoke10:                                        ; preds = %bb.n, %2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_4attr4MetaNtNtBG_5token5CommaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.f

.invoke:                                          ; preds = %.invoke10, %bb.i, %2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.c

bb.u:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.v:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCscBrinq2mG3I_3syn10punctuatedINtB5_8IntoIterNtNtB7_4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr sret([232 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr sret([232 x i8]) align 8 %0, ptr align 8 %1) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECsaxs130FOtor_12tokio_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro25IdentECsaxs130FOtor_12tokio_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCscBrinq2mG3I_3syn4attr4MetaECsaxs130FOtor_12tokio_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBH_5token5CommaEECsaxs130FOtor_12tokio_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXss_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTNtNtCscBrinq2mG3I_3syn2ty4TypeNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn2ty4TypeE7or_elseNCNvXss_NtBN_10punctuatedINtB1u_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsaxs130FOtor_12tokio_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCscBrinq2mG3I_3syn2ty4TypeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.b) #17
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn2ty4TypeE7or_elseNCNvXss_NtBN_10punctuatedINtB1u_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsaxs130FOtor_12tokio_macros.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn2ty4TypeE7or_elseNCNvXss_NtBN_10punctuatedINtB1u_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXss_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTNtNtCscBrinq2mG3I_3syn4path15GenericArgumentNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentE7or_elseNCNvXss_NtBN_10punctuatedINtB1I_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsaxs130FOtor_12tokio_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.b) #17
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentE7or_elseNCNvXss_NtBN_10punctuatedINtB1I_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsaxs130FOtor_12tokio_macros.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentE7or_elseNCNvXss_NtBN_10punctuatedINtB1I_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXst_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @_RNvXsy_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCscBrinq2mG3I_3syn2ty4TypeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn2ty4TypeE7or_elseNCNvXst_NtBN_10punctuatedINtB1u_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTNtNtCscBrinq2mG3I_3syn2ty4TypeNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsaxs130FOtor_12tokio_macros(ptr align 8 %0) #17
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn2ty4TypeE7or_elseNCNvXst_NtBN_10punctuatedINtB1u_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn2ty4TypeE7or_elseNCNvXst_NtBN_10punctuatedINtB1u_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXst_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @_RNvXsy_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentE7or_elseNCNvXst_NtBN_10punctuatedINtB1I_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTNtNtCscBrinq2mG3I_3syn4path15GenericArgumentNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsaxs130FOtor_12tokio_macros(ptr align 8 %0) #17
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentE7or_elseNCNvXst_NtBN_10punctuatedINtB1I_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn4path15GenericArgumentE7or_elseNCNvXst_NtBN_10punctuatedINtB1I_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal range(i64 0, 79511827903920483) i64 @_RNvXsu_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal range(i64 0, 57646075230342350) i64 @_RNvXsu_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsw_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.c = tail call { ptr, ptr } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTNtNtCscBrinq2mG3I_3syn2ty4TypeNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCsaxs130FOtor_12tokio_macros(ptr align 8 %0) #17, !noalias !34 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !34
  store ptr %i.d, ptr %i.a, align 8, !alias.scope !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.g, align 8, !alias.scope !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.val.i, ptr %i.h, align 8, !alias.scope !34
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_2ty4TypeNtNtB4_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.i = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @6, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsw_NtCscBrinq2mG3I_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.c = tail call { ptr, ptr } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTNtNtCscBrinq2mG3I_3syn4path15GenericArgumentNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCsaxs130FOtor_12tokio_macros(ptr align 8 %0) #17, !noalias !37 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
end_hunk_1
