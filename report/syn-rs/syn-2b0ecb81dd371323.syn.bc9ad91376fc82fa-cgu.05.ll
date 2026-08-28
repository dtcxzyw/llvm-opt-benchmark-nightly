Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.05?download=true
inline.NumInlined: 515
inline.NumDeleted: 183
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8lifetime8LifetimeNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEEB1d_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !align !4, !noundef !5
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEEB1A_(ptr %.val1) #16
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEEB1d_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !align !4, !noundef !5 ; 5 uses
  %i.f = icmp eq ptr %.val, null
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEEB1A_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEEB1d_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !26, !alias.scope !407, !noundef !5
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB1e_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !407, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB1e_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !407, !nonnull !5, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #15, !noalias !407
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB1e_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB1e_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #15
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEEB1A_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEEB1A_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEEB1d_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB1e_.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated4IterNtNtBG_4path11PathSegmentEEBG_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !408, !invariant.load !5
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !409, !invariant.load !5 ; 3 uses
  %i.e = add nsw i64 %i.d, -1                     ; 3 uses
  %i.f = add nuw i64 %i.e, %i.b
  %i.g = sub nsw i64 0, %i.d                      ; 3 uses
  %i.h = and i64 %i.f, %i.g
  %i.i = add nuw i64 %i.h, %i.e
  %i.j = and i64 %i.i, %i.g
  %i.k = add nuw i64 %i.j, %i.e
  %i.l = and i64 %i.k, %i.g                       ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtCsgbWeKYPjk8w_3syn5drops6NoDropDINtNtB1f_10punctuated9IterTraitNtNtB1f_4path11PathSegmentEp4ItemRB2g_EL_EEEB1f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.d) #15
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtCsgbWeKYPjk8w_3syn5drops6NoDropDINtNtB1f_10punctuated9IterTraitNtNtB1f_4path11PathSegmentEp4ItemRB2g_EL_EEEB1f_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtCsgbWeKYPjk8w_3syn5drops6NoDropDINtNtB1f_10punctuated9IterTraitNtNtB1f_4path11PathSegmentEp4ItemRB2g_EL_EEEB1f_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro211TokenStreamECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !73, !alias.scope !410, !noundef !5
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !413, !noundef !5
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro11TokenStreamECsgbWeKYPjk8w_3syn.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro11TokenStreamECsgbWeKYPjk8w_3syn.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %common.resume.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro11TokenStreamECsgbWeKYPjk8w_3syn.exit.i.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp19DeferredTokenStreamECsgbWeKYPjk8w_3syn.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro11TokenStreamECsgbWeKYPjk8w_3syn.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp19DeferredTokenStreamECsgbWeKYPjk8w_3syn.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro11TokenStreamECsgbWeKYPjk8w_3syn.exit.i.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp11TokenStreamECsgbWeKYPjk8w_3syn.exit

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !429, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !432, !noundef !5
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !432
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %common.resume.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #19
          to label %common.resume.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !442, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !443, !noundef !5
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !443
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp11TokenStreamECsgbWeKYPjk8w_3syn.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp11TokenStreamECsgbWeKYPjk8w_3syn.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp11TokenStreamECsgbWeKYPjk8w_3syn.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp19DeferredTokenStreamECsgbWeKYPjk8w_3syn.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !444, !alias.scope !445, !noundef !5
  %1 = trunc nuw i32 %i.a to i1
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !448, !noundef !5
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5GroupECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5GroupECsgbWeKYPjk8w_3syn.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !464, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !469, !noundef !5
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !469
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #19
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn.exit.i.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.k = load ptr, ptr %i.e, align 8, !alias.scope !479, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !480, !noundef !5
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !480
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5GroupECsgbWeKYPjk8w_3syn.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5GroupECsgbWeKYPjk8w_3syn.exit

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn.exit.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5GroupECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.b, %bb.c, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !26, !alias.scope !481, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !481, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !481, !nonnull !5, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #15, !noalias !481
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !484, !noundef !5
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.f
    i32 1, label %bb.o
    i32 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit
    i32 3, label %bb.b
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !73, !alias.scope !485, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.m, %bb.k ], [ %i.m, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !444, !alias.scope !490, !noundef !5
  %1 = trunc nuw i32 %i.h to i1
  br i1 %1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !495, !noundef !5
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit

bb.i:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !511, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !516, !noundef !5
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !noalias !516
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #19
          to label %common.resume unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.r = load ptr, ptr %i.l, align 8, !alias.scope !526, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !527, !noundef !5
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !noalias !527
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit

bb.n:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !26, !alias.scope !534, !noundef !5
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.aa, align 8, !alias.scope !534, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !534, !nonnull !5, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #15, !noalias !534
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.h, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsgbWeKYPjk8w_3syn.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit unwind label %bb.d, !noalias !535, !inline_history !538

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 248, i64 noundef 8) #15, !noalias !535
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 248, i64 noundef 8) #15, !noalias !535
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !539, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.j
    i64 2, label %bb.ac
    i64 3, label %bb.aj
    i64 4, label %bb.ap
    i64 5, label %bb.as
    i64 6, label %bb.ba
    i64 7, label %bb.bd
    i64 8, label %bb.bk
    i64 9, label %bb.by
    i64 10, label %bb.cf
    i64 11, label %bb.cp
    i64 12, label %bb.cw
    i64 13, label %bb.dc
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro211TokenStreamECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.g)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.g)
          to label %.body6 unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body6

.body6:                                           ; preds = %bb.d, %bb.g
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k) #16
          to label %.body unwind label %bb.i, !inline_history !540

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !541, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeArrayEBF_.exit unwind label %bb.h, !noalias !541, !inline_history !544

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 248, i64 noundef 8) #15, !noalias !541, !inline_history !544
  br label %.body

.body:                                            ; preds = %bb.h, %.body6
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body7, %.body6 ], [ %i.n, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.o) #16
          to label %common.resume unwind label %bb.i, !inline_history !540

bb.i:                                             ; preds = %.body, %.body6
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !inline_history !540
  unreachable

common.resume.sink.split:                         ; preds = %bb.ab, %bb.ai, %bb.bj, %bb.ce, %bb.co, %bb.cv
  %.sink = phi ptr [ %i.eh, %bb.cv ], [ %i.dy, %bb.co ], [ %i.dh, %bb.ce ], [ %i.cb, %bb.bj ], [ %i.au, %bb.ai ], [ %i.ak, %bb.ab ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ei, %bb.cv ], [ %i.dz, %bb.co ], [ %i.di, %bb.ce ], [ %i.cc, %bb.bj ], [ %i.av, %bb.ai ], [ %i.am, %bb.ab ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 248, i64 noundef 8) #15, !noalias !5
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body81, %.body76, %.body71, %.body63, %.body55, %.body85, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit44, %.body39, %bb.bb, %bb.ay, %.body31, %bb.aq, %.body26, %.body21, %bb.x, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body77, %.body76 ], [ %.pn.i, %.body ], [ %eh.lpad-body56, %.body55 ], [ %.pn6.i, %bb.x ], [ %eh.lpad-body72, %.body71 ], [ %eh.lpad-body22, %.body21 ], [ %eh.lpad-body27, %.body26 ], [ %i.be, %bb.aq ], [ %eh.lpad-body32, %.body31 ], [ %i.bn, %bb.ay ], [ %i.bs, %bb.bb ], [ %eh.lpad-body64, %.body63 ], [ %eh.lpad-body40, %.body39 ], [ %.pn.i3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit44 ], [ %eh.lpad-body86, %.body85 ], [ %eh.lpad-body82, %.body81 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeArrayEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 248, i64 noundef 8) #15, !noalias !541, !inline_history !544
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.q), !inline_history !540
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.j:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body13 unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit15 unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body13

.body13:                                          ; preds = %bb.k, %bb.n
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.u, %bb.n ], [ %i.s, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v) #16
          to label %bb.o unwind label %bb.z, !inline_history !545

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit15: ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w)
          to label %bb.r unwind label %bb.q, !inline_history !545

bb.o:                                             ; preds = %bb.q, %.body13
  %.pn.i1 = phi { ptr, i32 } [ %i.y, %bb.q ], [ %eh.lpad-body14, %.body13 ] ; 2 uses
  %.val9.i = load i64, ptr %0, align 8, !range !546, !alias.scope !547, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !547 ; 2 uses
  %1 = trunc nuw i64 %.val9.i to i1
  %2 = icmp ne ptr %.val10.i, null
  %or.cond.i8 = select i1 %1, i1 %2, i1 false
  br i1 %or.cond.i8, label %bb.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.val10.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10 unwind label %bb.z

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit15
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit15
  %.val.i = load i64, ptr %0, align 8, !range !546, !alias.scope !547, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.z, align 8, !alias.scope !547 ; 2 uses
  %3 = trunc nuw i64 %.val.i to i1
  %4 = icmp ne ptr %.val8.i, null
  %or.cond.i = select i1 %3, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.val8.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit unwind label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10: ; preds = %bb.o, %bb.p, %bb.t
  %.pn2.i = phi { ptr, i32 } [ %i.ab, %bb.t ], [ %.pn.i1, %bb.p ], [ %.pn.i1, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #16
          to label %bb.u unwind label %bb.z, !inline_history !545

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit: ; preds = %bb.r, %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac)
          to label %bb.w unwind label %bb.v, !inline_history !545

bb.u:                                             ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10
  %.pn4.i = phi { ptr, i32 } [ %i.ae, %bb.v ], [ %.pn2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ad) #16
          to label %bb.x unwind label %bb.z, !inline_history !545

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.af)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeFnPtrEBF_.exit unwind label %bb.y, !inline_history !545

bb.x:                                             ; preds = %bb.y, %bb.u
  %.pn6.i = phi { ptr, i32 } [ %i.ah, %bb.y ], [ %.pn4.i, %bb.u ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ag) #16
          to label %common.resume unwind label %bb.z, !inline_history !545

bb.y:                                             ; preds = %bb.w
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.p, %bb.x, %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10, %.body13
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !inline_history !545
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeFnPtrEBF_.exit: ; preds = %bb.w
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !550, !noundef !5 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeFnPtrEBF_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i unwind label %bb.ab, !noalias !553, !inline_history !556

bb.ab:                                            ; preds = %bb.aa
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i: ; preds = %bb.aa
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 248, i64 noundef 8) #15, !noalias !553
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.ac:                                            ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %.body21 unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.ad, %bb.ag
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.aq, %bb.ag ], [ %i.ao, %bb.ad ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ar) #16
          to label %common.resume unwind label %bb.ah, !inline_history !557

bb.ah:                                            ; preds = %.body21
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !inline_history !557
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit: ; preds = %bb.ae
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !558, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit18 unwind label %bb.ai, !noalias !558, !inline_history !561

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit18: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef 248, i64 noundef 8) #15, !noalias !558, !inline_history !561
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.aj:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %.body26 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty13TypeImplTraitEBF_.exit unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body26

.body26:                                          ; preds = %bb.ak, %bb.an
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.az, %bb.an ], [ %i.ax, %bb.ak ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba) #16
          to label %common.resume unwind label %bb.ao, !inline_history !562

bb.ao:                                            ; preds = %.body26
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !inline_history !562
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty13TypeImplTraitEBF_.exit: ; preds = %bb.al
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bc), !inline_history !562
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.ap:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeInferEBF_.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeInferEBF_.exit: ; preds = %bb.ap
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.as:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bg)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bh = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path15parse_mod_style:bb.a
  %i.y = load ptr, ptr %i.n, align 8, !noundef !5
  %i.z = invoke noundef zeroext i1 @_RNvXs4Q_NtCsgbWeKYPjk8w_3syn5tokenNtB6_9SelfValueNtB6_5Token4peek(ptr noundef %i.x, ptr noundef %i.y)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  br i1 %i.z, label %bb.g, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %1, align 8, !noundef !5
  %i.ab = load ptr, ptr %i.n, align 8, !noundef !5
  %i.ac = invoke noundef zeroext i1 @_RNvXs4J_NtCsgbWeKYPjk8w_3syn5tokenNtB6_8SelfTypeNtB6_5Token4peek(ptr noundef %i.aa, ptr noundef %i.ab)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  br i1 %i.ac, label %bb.g, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %1, align 8, !noundef !5
  %i.ae = load ptr, ptr %i.n, align 8, !noundef !5
  %i.af = invoke noundef zeroext i1 @_RNvXs1G_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5CrateNtB6_5Token4peek(ptr noundef %i.ad, ptr noundef %i.ae)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  br i1 %i.af, label %bb.g, label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.ag = load i64, ptr %.sroa.529.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 96076792050570582
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0                    ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8, !align !4
  %.not49 = icmp eq ptr %i.aj, null               ; 2 uses
  %or.cond = select i1 %i.ai, i1 %.not49, i1 false
  br i1 %or.cond, label %bb.v, label %bb.u

_RNvXNtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25IdentNtB2_8IdentExt9parse_any.exit: ; preds = %bb.g
  %i.ak = load i64, ptr %i.f, align 8, !range !546, !noundef !5
  %i.al = trunc nuw i64 %i.ak to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXNtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25IdentNtB2_8IdentExt9parse_any.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57)
  br label %bb.ag

bb.q:                                             ; preds = %_RNvXNtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25IdentNtB2_8IdentExt9parse_any.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57)
  store i64 -9223372036854775808, ptr %i.e, align 8
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.an = load ptr, ptr %1, align 8, !noundef !5
  %i.ao = load ptr, ptr %i.n, align 8, !noundef !5
  %i.ap = invoke noundef zeroext i1 @_RNvXs8p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_7PathSepNtB6_5Token4peek(ptr noundef %i.an, ptr noundef %i.ao)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  br i1 %i.ap, label %bb.t, label %bb.o

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs8o_NtCsgbWeKYPjk8w_3syn5tokenNtB6_7PathSepNtNtB8_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %1)
          to label %bb.ah unwind label %.loopexit

bb.u:                                             ; preds = %bb.o
  %.not49.not = xor i1 %.not49, true
  %brmerge = or i1 %i.ai, %.not49.not
  br i1 %brmerge, label %bb.ac, label %bb.ad

bb.v:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXNtNtB8_5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtB6_5Parse5parse0B1j_EB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %1)
          to label %_RNvXNtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB6_5parse5Parse5parse.exit unwind label %.loopexit.split-lp

_RNvXNtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB6_5parse5Parse5parse.exit: ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.aq = load i64, ptr %i.c, align 8, !range !546, !alias.scope !921, !noalias !924, !noundef !5
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.ab, label %bb.w, !prof !926

bb.w:                                             ; preds = %_RNvXNtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB6_5parse5Parse5parse.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !927
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !924
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %bb.aa unwind label %bb.x, !noalias !927

bb.x:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.av = load i8, ptr %i.au, align 8, !range !26, !alias.scope !934, !noalias !927, !noundef !5
  %i.aw = icmp eq i8 %i.av, 2
  br i1 %i.aw, label %.body, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !934, !noalias !927, !noundef !5 ; 2 uses
  %i.ay = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ay, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !934, !noalias !927, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #15, !noalias !935
  br label %.body

bb.aa:                                            ; preds = %bb.w
  unreachable

bb.ab:                                            ; preds = %_RNvXNtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB6_5parse5Parse5parse.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.ag

bb.ac:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !noundef !5
  %i.be = load ptr, ptr %1, align 8, !noundef !5
  %i.bf = load ptr, ptr %i.n, align 8, !noundef !5
  invoke void @_RINvNtCsgbWeKYPjk8w_3syn5error6new_atReEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.bd, ptr noundef %i.be, ptr noundef %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 32)
          to label %bb.af unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.b, %bb.ag, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.af:                                            ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.p, %bb.ai, %bb.ab, %bb.af
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.t
  %i.bh = load i64, ptr %i.d, align 8, !range !73, !noundef !5 ; 2 uses
  %.not51 = icmp eq i64 %i.bh, -1
  %.sroa.035.0.copyload = load i64, ptr %i.q, align 8 ; 2 uses
  br i1 %.not51, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.541.0.copyload = load i64, ptr %.sroa.541.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bi, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.035.0.copyload, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.541.0.copyload, ptr %.sroa.544.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ag

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.sroa.035.0.copyload)
          to label %bb.d unwind label %.loopexit

bb.ak:                                            ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.al:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn4pathNtB4_4Path13require_ident(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !range !444, !alias.scope !936, !noundef !5
  %2 = trunc nuw i32 %i.b to i1
  br i1 %2, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !936, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 96076792050570582
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !936, !align !4, !noundef !5 ; 3 uses
  %.not2.i = icmp ne ptr %i.g, null               ; 2 uses
  %..i = zext i1 %.not2.i to i64
  %i.h = add nuw nsw i64 %i.d, %..i
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  br i1 %.not2.i, label %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not16.i.i = icmp eq i64 %i.d, 0
  br i1 %.not16.i.i, label %bb.e, label %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !942
  unreachable

_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.g, align 8, !range !30, !noalias !936, !noundef !5
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %bb.f, label %bb.g

_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !942, !noalias !943, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !30, !noalias !936, !noundef !5
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread.i, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i
  %.sroa.0.0.i6.i = phi ptr [ %i.g, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i ], [ %i.m, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.g:                                             ; preds = %bb.a, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i, %bb.b, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread.i
  %i.r = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE5firstB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !945 ; 3 uses
  %.not.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i2, label %bb.i, label %bb.h, !prof !948

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load i8, ptr %i.s, align 8, !range !26, !noalias !945, !noundef !5
  %.not6.i = icmp eq i8 %i.t, 2
  br i1 %.not6.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !945
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.v = load i32, ptr %i.u, align 4, !range !949, !noalias !945, !noundef !5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.04.0.i = phi i32 [ %i.v, %bb.j ], [ 0, %bb.h ]
  %i.w = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !945 ; 3 uses
  %.not7.i = icmp eq ptr %i.w, null
  br i1 %.not7.i, label %bb.m, label %bb.l, !prof !948

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load i8, ptr %i.x, align 8, !range !26, !noalias !945, !noundef !5
  %.not8.i = icmp eq i8 %i.y, 2
  br i1 %.not8.i, label %bb.n, label %_RNCNvMs_NtCsgbWeKYPjk8w_3syn4pathNtB6_4Path13require_ident0B8_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !945
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !range !949, !noalias !945, !noundef !5
  br label %_RNCNvMs_NtCsgbWeKYPjk8w_3syn4pathNtB6_4Path13require_ident0B8_.exit

_RNCNvMs_NtCsgbWeKYPjk8w_3syn4pathNtB6_4Path13require_ident0B8_.exit: ; preds = %bb.l, %bb.n
  %.sroa.05.0.i = phi i32 [ %i.aa, %bb.n ], [ 0, %bb.l ]
  tail call void @_RINvNtCsgbWeKYPjk8w_3syn5error4new2ReEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %.sroa.04.0.i, i32 noundef %.sroa.05.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38)
  br label %bb.o

bb.o:                                             ; preds = %_RNCNvMs_NtCsgbWeKYPjk8w_3syn4pathNtB6_4Path13require_ident0B8_.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtCsgbWeKYPjk8w_3syn4pathNtB4_4Path9get_ident(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !range !444, !noundef !5
  %1 = trunc nuw i32 %i.b to i1
  br i1 %1, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 96076792050570582
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !align !4, !noundef !5 ; 3 uses
  %.not2 = icmp ne ptr %i.g, null                 ; 2 uses
  %. = zext i1 %.not2 to i64
  %i.h = add nuw nsw i64 %i.d, %.
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  br i1 %.not2, label %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not16.i = icmp eq i64 %i.d, 0
  br i1 %.not16.i, label %bb.e, label %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !950
  unreachable

_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit: ; preds = %bb.c
  %i.j = load i64, ptr %i.g, align 8, !range !30, !noundef !5
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit8, label %bb.g

_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !950, !noalias !953, !nonnull !5, !noundef !5
  %i.n = load i64, ptr %i.m, align 8, !range !30, !noundef !5
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !955, !noalias !958, !nonnull !5, !noundef !5
  br label %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit8

_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit8: ; preds = %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, %bb.f
  %.sroa.0.0.i6 = phi ptr [ %i.q, %bb.f ], [ %i.g, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6, i64 64
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, %bb.a, %bb.b, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit8
  %.sroa.0.0 = phi ptr [ %i.r, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit8 ], [ null, %bb.a ], [ null, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit ], [ null, %bb.b ], [ null, %_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsgbWeKYPjk8w_3syn8verbatim7between(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = tail call noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn6buffer11same_buffer(ptr noundef %3, ptr noundef %4, ptr noundef %1, ptr noundef %2)
  br i1 %i.f, label %bb.c, label %bb.b, !prof !926

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMCs6et67aoV1xO_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e)
  %.not17 = icmp eq ptr %1, %3
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %.backedge, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.019 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 2 uses
  %.sroa.7.018 = phi ptr [ %2, %.lr.ph ], [ %.sroa.7.0.be, %.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor10token_tree(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef %.sroa.0.019, ptr noundef %.sroa.7.018)
          to label %bb.f unwind label %.loopexit

bb.e:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.s
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.l ], [ %lpad.phi16, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro211TokenStreamECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #16
          to label %bb.u unwind label %bb.t

.loopexit:                                        ; preds = %bb.d, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.f:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.c, align 8, !range !960, !noundef !5
  %.not8 = icmp eq i32 %i.l, -1
  br i1 %.not8, label %bb.h, label %bb.g, !prof !948

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.m = load ptr, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %i.n = load ptr, ptr %i.h, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = icmp ult ptr %3, %i.m
  br i1 %i.o, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.q, %bb.p, %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5group(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef %.sroa.0.019, ptr noundef %.sroa.7.018, i8 noundef 3)
          to label %bb.n unwind label %.loopexit12

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RINvXs7_NtCs6et67aoV1xO_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !961
  br label %.backedge

.backedge:                                        ; preds = %bb.r, %bb.m
  %.sroa.7.0.be = phi ptr [ %i.n, %bb.m ], [ %i.t, %bb.r ]
  %.sroa.0.0.be = phi ptr [ %i.m, %bb.m ], [ %i.u, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %.sroa.0.0.be, %3
  br i1 %.not, label %._crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.j
  %i.p = load i64, ptr %i.b, align 8, !range !546, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.o, label %bb.p, !prof !926

bb.o:                                             ; preds = %bb.n
  %i.r = load ptr, ptr %i.k, align 8, !noundef !5
  %i.s = icmp eq ptr %i.m, %i.r
  br i1 %i.s, label %bb.r, label %bb.q, !prof !926

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 99 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
          to label %bb.i unwind label %.loopexit.split-lp13

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
          to label %bb.i unwind label %.loopexit.split-lp13

bb.r:                                             ; preds = %bb.o
  %i.t = load ptr, ptr %i.j, align 8, !noundef !5
  %i.u = load ptr, ptr %i.i, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %.backedge unwind label %.loopexit

.loopexit12:                                      ; preds = %bb.j
  %lpad.loopexit14 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp13:                             ; preds = %bb.p, %bb.q
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp13, %.loopexit12
  %lpad.phi16 = phi { ptr, i32 } [ %lpad.loopexit14, %.loopexit12 ], [ %lpad.loopexit.split-lp15, %.loopexit.split-lp13 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #16
          to label %bb.e unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_29ParenthesizedGenericArgumentsNtNtB9_5parse5Parse5parse:bb.a

bb.af:                                            ; preds = %bb.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1141, !noundef !5 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit23, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bj = load i64, ptr %i.bh, align 8, !noalias !1142, !noundef !5
  %i.bk = add i64 %i.bj, -1                       ; 2 uses
  store i64 %i.bk, ptr %i.bh, align 8, !noalias !1142
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit23

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit23

bb.ai:                                            ; preds = %bb.ae
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit23: ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit23, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.z

bb.ak:                                            ; preds = %bb.al, %bb.aa, %bb.o, %bb.d
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.al:                                            ; preds = %bb.o
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #16
          to label %common.resume unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_13PathArgumentsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing20print_path_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25PunctNtB5_8PunctExt11new_spanned(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef range(i32 0, 1114112) %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsu_Cs6et67aoV1xO_11proc_macro2NtB5_5Punct3new(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.a, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsgbWeKYPjk8w_3syn5identNtCs6et67aoV1xO_11proc_macro25IdentINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB7_5token6ExternE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 6, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_11PathSegmentNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs4_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_11PathSegment12parse_helper(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_15GenericArgumentNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !187, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 20
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -17
  %i.d = icmp samesign ugt i64 %i.a, 16
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.h
    i64 5, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn8lifetime8printingNtB4_8LifetimeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn8generics8printing20print_const_argument(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !73, !alias.scope !1147, !noalias !1150, !noundef !5
  %.not.i = icmp eq i64 %i.k, -1
  br i1 %.not.i, label %_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_9AssocTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, i8 noundef 2)
  br label %_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_9AssocTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_9AssocTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.o = load i64, ptr %i.m, align 8, !range !73, !alias.scope !1152, !noalias !1155, !noundef !5
  %.not.i1 = icmp eq i64 %i.o, -1
  br i1 %.not.i1, label %_RNvXs6_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10AssocConstNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.m, i8 noundef 2)
  br label %_RNvXs6_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10AssocConstNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXs6_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10AssocConstNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.h, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn8generics8printing20print_const_argument(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !73, !alias.scope !1157, !noalias !1160, !noundef !5
  %.not.i2 = icmp eq i64 %i.u, -1
  br i1 %.not.i2, label %_RNvXs7_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10ConstraintNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, i8 noundef 2)
  br label %_RNvXs7_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10ConstraintNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXs7_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10ConstraintNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.j, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXs6X_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ColonNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs7_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10ConstraintNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, %_RNvXs6_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10AssocConstNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, %_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_9AssocTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_30AngleBracketedGenericArgumentsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsgbWeKYPjk8w_3syn4spanNtCs6et67aoV1xO_11proc_macro24SpanINtB5_9IntoSpansNtNtBw_5extra9DelimSpanE10into_spans(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs6et67aoV1xO_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
  call void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !range !444, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !range !949
  %i.i = load i32, ptr %i.f, align 4, !range !949
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !range !949
  %.sroa.6.0 = select i1 %i.e, i32 undef, i32 %i.k
  %.sroa.5.0 = select i1 %i.e, i32 undef, i32 %i.i
  %.sroa.0.0 = select i1 %i.e, i32 0, i32 %i.h
  store i32 %.sroa.0.0, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !1162, !noundef !5
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !1182, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !1187, !noundef !5
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !1187
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #19
          to label %common.resume unwind label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !1197, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !1198, !noundef !5
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !1198
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.d, %bb.e, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_9AssocTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !73, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i8 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10AssocConstNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = load i64, ptr %0, align 8, !range !73, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i8 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn8generics8printing20print_const_argument(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10ConstraintNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !73, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i8 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvXs6X_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ColonNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_29ParenthesizedGenericArgumentsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing37print_parenthesized_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path10ConstraintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i8, ptr %i.e, align 8, !range !26, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.f, 2                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !1199, !noalias !1202
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i8, ptr %i.j, align 8, !range !976, !alias.scope !1199, !noalias !1202, !noundef !5
  %i.l = inttoptr i64 %.val.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.02.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !73, !noundef !5
  %.not16 = icmp eq i64 %i.n, -1
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load i32, ptr %i.o, align 8, !range !444, !alias.scope !1207, !noalias !1204, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.val.i18 = load i64, ptr %i.q, align 4, !alias.scope !1207, !noalias !1204
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.val10.i = load i32, ptr %i.r, align 4, !alias.scope !1207, !noalias !1204
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.c, align 8
  br label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit: ; preds = %bb.j, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.z, %bb.k ], [ %i.z, %bb.j ]
  %i.s = icmp eq i64 %.sroa.02.sroa.5.0, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.s
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.02.sroa.5.0, i64 noundef 1) #15, !noalias !1209
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
end_hunk_2
begin_hunk_3_@_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char:bb.a
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1241
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1244
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1247, !noalias !1244, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1247, !noalias !1244, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1247, !noalias !1244
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1247, !noalias !1244
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsgbWeKYPjk8w_3syn5identNtCs6et67aoV1xO_11proc_macro25IdentINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5token9SelfValueE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB8_4path30AngleBracketedGenericArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !range !444, !noundef !5 ; 2 uses
  %i.c = trunc nuw i32 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i64, ptr %i.d, align 4
  %.sroa.5.0 = select i1 %i.c, i64 %.val, i64 undef
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val10 = load i32, ptr %i.e, align 4
  tail call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11 = load i32, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.val10, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.val11, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB6_15GenericArgumentNtNtB8_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 8 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.594 = alloca [104 x i8], align 8         ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.676 = alloca [24 x i8], align 8          ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.11 = alloca [7 x i8], align 1            ; 5 uses
  %.sroa.071.sroa.0 = alloca [88 x i8], align 8   ; 3 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [88 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.646 = alloca [24 x i8], align 8          ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8218 = alloca [7 x i8], align 1          ; 3 uses
  %i.k = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.632 = alloca [24 x i8], align 8          ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 8 uses
  %i.n = alloca [88 x i8], align 8                ; 5 uses
  %i.o = alloca [88 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [104 x i8], align 8               ; 9 uses
  %i.r = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.64 = alloca [24 x i8], align 8           ; 6 uses
  %i.s = alloca [248 x i8], align 8               ; 20 uses
  %i.t = alloca [168 x i8], align 8               ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 6 uses
  %i.v = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_8lifetime8LifetimeEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.w = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_3lit3LitEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.w, label %bb.j, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token4PlusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.x, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMNtCsgbWeKYPjk8w_3syn8lifetimeNtB2_8Lifetime9parse_any(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noundef nonnull align 8 %1)
  %i.y = load i64, ptr %i.u, align 8, !range !546, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i64 [ -1, %bb.e ], [ 17, %bb.f ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.h

bb.h:                                             ; preds = %bb.dl, %bb.dd, %bb.n, %bb.g
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ac = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing14const_argument(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.t, ptr noundef nonnull align 8 %1)
  %i.ad = load i64, ptr %i.t, align 8, !range !868, !noundef !5
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.dj, label %bb.dk

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.r, ptr noundef nonnull align 8 %1)
  %i.ag = load i64, ptr %i.r, align 8, !range !893, !noundef !5 ; 4 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  br label %bb.dd

bb.m:                                             ; preds = %bb.k
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5110.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64, i64 24, i1 false)
  store i64 %i.ag, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  %i.ak = icmp ne i64 %i.ag, 3
  call void @llvm.assume(i1 %i.ak)
  %2 = icmp ne i64 %i.ag, 10
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.am = load i32, ptr %i.al, align 8, !range !571
  %.not = icmp ne i32 %i.am, 2
  %or.cond = select i1 %2, i1 true, i1 %.not
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !range !444
  %3 = trunc nuw i32 %i.ao to i1
  %or.cond270 = select i1 %or.cond, i1 true, i1 %3
  br i1 %or.cond270, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.r, %bb.p, %bb.cz, %bb.m
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.499.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %i.s, i64 248, i1 false)
  store i64 18, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.h

bb.o:                                             ; preds = %bb.q, %bb.db
  %.sroa.0104.1 = phi i1 [ false, %bb.db ], [ true, %bb.q ]
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pr = load i64, ptr %i.s, align 8              ; 2 uses
  %i.aq = icmp ne i64 %.pr, 3
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %.pr, 10
  br i1 %i.ar, label %bb.dg, label %bb.dh

.thread252:                                       ; preds = %bb.df
  %i.as = load i64, ptr %i.s, align 8, !range !539, !noundef !5 ; 2 uses
  %i.at = icmp ne i64 %i.as, 3
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.as, 10
  br i1 %i.au, label %.thread259, label %bb.dh

bb.p:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.val = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val171 = load ptr, ptr %i.aw, align 8, !align !4, !noundef !5
  %i.ax = icmp ult i64 %.val, 96076792050570582
  call void @llvm.assume(i1 %i.ax)
  %.not.i = icmp ne ptr %.val171, null
  %..i = zext i1 %.not.i to i64
  %i.ay = add nuw nsw i64 %.val, %..i
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.ba = invoke fastcc noundef nonnull align 8 ptr @_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.59.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr %i.ba, align 8, !range !30, !noundef !5
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.n, label %bb.t

bb.s:                                             ; preds = %bb.br, %bb.ab
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.48.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token2EqEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %1)
          to label %bb.v unwind label %bb.u

.thread265:                                       ; preds = %bb.da
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store i64 10, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.594, i64 104, i1 false)
  br label %bb.di

bb.u:                                             ; preds = %.invoke, %bb.cx, %bb.bo, %bb.bf, %bb.z, %bb.y, %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.v:                                             ; preds = %bb.t
  %i.bf = load i64, ptr %i.p, align 8, !range !73, !noundef !5 ; 2 uses
  %.not153.a = icmp eq i64 %i.bf, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0111.0.copyload = load i64, ptr %i.bg, align 8 ; 3 uses
  br i1 %.not153.a, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5117.0.copyload = load i64, ptr %.sroa.5117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bf, ptr %i.bh, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0111.0.copyload, ptr %.sroa.4119.0..sroa_idx, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5117.0.copyload, ptr %.sroa.5120.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.db

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.2.0.extract.shift = lshr i64 %.sroa.0111.0.copyload, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.bi = trunc i64 %.sroa.0111.0.copyload to i1
  br i1 %i.bi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3popB4_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %bb.aa unwind label %bb.u

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token5ColonEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %1)
          to label %bb.bl unwind label %bb.u

bb.aa:                                            ; preds = %bb.y
  %i.bk = load i64, ptr %i.n, align 8, !range !917, !noundef !5
  %.not162 = icmp eq i64 %i.bk, -1
  br i1 %.not162, label %.invoke, label %bb.ab, !prof !948

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.0.0.copyload = load ptr, ptr %i.bl, align 8 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 12 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %.sroa.8218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8218, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8218.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bm = load i64, ptr %i.o, align 8, !range !30, !noundef !5 ; 2 uses
  %i.bn = xor i64 %i.bm, -9223372036854775808
  %i.bo = icmp slt i64 %i.bm, 0
  %i.bp = select i1 %i.bo, i64 %i.bn, i64 2
  switch i64 %i.bp, label %bb.s [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ], !prof !1251

bb.ac:                                            ; preds = %bb.bu, %bb.af
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i64 -1, ptr %i.m, align 8
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 56, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #20
          to label %bb.ac unwind label %bb.bi

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.br = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_3lit3LitEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ah unwind label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.br, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bs = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ak unwind label %bb.bg

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing14const_argument(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.k, ptr noundef nonnull align 8 %1)
          to label %bb.ax unwind label %bb.av

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.bs, label %bb.aj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.646)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.i, ptr noundef nonnull align 8 %1)
          to label %bb.ao unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load i64, ptr %i.j, align 8, !range !73, !alias.scope !1252, !noundef !5
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit unwind label %bb.au, !inline_history !1032

bb.ao:                                            ; preds = %bb.al
  %i.bw = load i64, ptr %i.i, align 8, !range !893, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  br i1 %i.bx, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
end_hunk_3
