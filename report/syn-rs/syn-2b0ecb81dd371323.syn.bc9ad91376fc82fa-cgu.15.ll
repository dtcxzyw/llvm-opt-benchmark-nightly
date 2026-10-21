Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.15?download=true
inline.NumInlined: 554
inline.NumDeleted: 211
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics9TypeParamEBF_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #18
          to label %.body4 unwind label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = load i8, ptr %i.h, align 8, !range !7, !alias.scope !1025, !noundef !6
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !1025, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1025, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #16, !noalias !1025
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body12 unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEEB1d_.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %bb.g, %bb.j
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.n, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.q) #18
          to label %.body4 unwind label %bb.m, !inline_history !1026

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEEB1d_.exit: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1027, !align !5, !noundef !6 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEEB1d_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundEBF_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundEEB1e_.exit.i unwind label %bb.l, !noalias !1028, !inline_history !1029

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #16, !noalias !1028
  br label %.body4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundEEB1e_.exit.i: ; preds = %bb.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #16, !noalias !1028
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_.exit

bb.m:                                             ; preds = %.body12
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !inline_history !1026
  unreachable

.body4:                                           ; preds = %.body12, %bb.l, %.body
  %.pn2 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body13, %.body12 ], [ %i.u, %bb.l ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !21, !alias.scope !1030, !noundef !6
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_.exit, label %bb.n

bb.n:                                             ; preds = %.body4
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_.exit unwind label %bb.p, !inline_history !1020

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEEB1d_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundEEB1e_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !21, !alias.scope !1031, !noundef !6
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_.exit6, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_.exit
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.z), !inline_history !1020
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_.exit6: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_.exit, %bb.o
  ret void

bb.p:                                             ; preds = %bb.n, %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_.exit: ; preds = %.body4, %bb.n
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !7, !alias.scope !1038, !noundef !6
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1038, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !1038, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #16, !noalias !1038
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecReEECsgbWeKYPjk8w_3syn.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecReEECsgbWeKYPjk8w_3syn.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtCs6et67aoV1xO_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB17_7sources4once4OnceB1T_EECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1066, !nonnull !6, !noundef !6 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !1066, !noundef !6
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !1066, !noundef !6
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.m, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.l = invoke { i64, i64 } @_RNvNtCs4wP2HXfJTCR_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %.body.thread19

.noexc:                                           ; preds = %bb.c
  %i.m = invoke { i64, i64 } @_RNvNtCs4wP2HXfJTCR_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24)
          to label %.noexc2 unwind label %.body.thread19 ; 2 uses

.noexc2:                                          ; preds = %.noexc
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc2
  %i.q = inttoptr i64 %i.n to ptr
  br label %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i.i

bb.e:                                             ; preds = %.noexc2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1069
  %i.r = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.n) #16, !noalias !1069
  br label %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i.i

_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 8 uses
  %i.s = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i, null
  br i1 %i.s, label %.invoke, label %_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsgbWeKYPjk8w_3syn.exit.i.i

_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsgbWeKYPjk8w_3syn.exit.i.i: ; preds = %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 8, !noalias !1069
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !1069
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !alias.scope !1068, !noalias !1067
  store i64 8, ptr %i.c, align 8, !alias.scope !1068, !noalias !1067
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 24, ptr %i.v, align 8, !alias.scope !1068, !noalias !1067
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.w, align 8, !alias.scope !1068, !noalias !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1070
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %_RNvMsd_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit.i unwind label %bb.f, !noalias !1066

bb.f:                                             ; preds = %_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsgbWeKYPjk8w_3syn.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc14UniqueRcUninitINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBG_5alloc6GlobalEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #18
          to label %.body.thread unwind label %bb.g, !noalias !1066

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1066
  unreachable

_RNvMsd_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsgbWeKYPjk8w_3syn.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1067
  %i.aa = load i64, ptr %i.e, align 8, !noalias !1072, !noundef !6
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8, !noalias !1072
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %.sink.split.i

bb.h:                                             ; preds = %_RNvMsd_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit.i
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %.sink.split.i unwind label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.ad = invoke { i64, i64 } @_RNvNtCs4wP2HXfJTCR_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24)
          to label %.noexc4 unwind label %.body.thread19

.noexc4:                                          ; preds = %bb.i
  %i.ae = invoke { i64, i64 } @_RNvNtCs4wP2HXfJTCR_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24)
          to label %.noexc5 unwind label %.body.thread19 ; 2 uses

.noexc5:                                          ; preds = %.noexc4
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc5
  %i.ai = inttoptr i64 %i.af to ptr
  br label %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i

bb.k:                                             ; preds = %.noexc5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1073
  %i.aj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.af) #16, !noalias !1073
  br label %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i

_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.aj, %bb.k ] ; 5 uses
  %i.ak = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %i.ak, label %.invoke, label %_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsgbWeKYPjk8w_3syn.exit.i

.invoke:                                          ; preds = %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i, %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i.i
  %.sink23 = phi { i64, i64 } [ %i.l, %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i.i ], [ %i.ad, %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i ] ; 2 uses
  %i.al = extractvalue { i64, i64 } %.sink23, 1
  %i.am = extractvalue { i64, i64 } %.sink23, 0
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef %i.am, i64 noundef %i.al) #22
          to label %.cont unwind label %.body.thread19

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsgbWeKYPjk8w_3syn.exit.i: ; preds = %_RNCNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsgbWeKYPjk8w_3syn.exit.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !noalias !1073
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.an, align 8, !noalias !1073
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !1066
  %i.aq = load <2 x i64>, ptr %i.e, align 8, !noalias !1066
  %i.ar = add <2 x i64> %i.aq, splat (i64 -1)
  store <2 x i64> %i.ar, ptr %i.e, align 8, !noalias !1066
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsgbWeKYPjk8w_3syn.exit.i, %bb.h, %_RNvMsd_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit.i
  %.sroa.0.0.i.i.i.i.i.i.sink.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMs1O_NtCs4wP2HXfJTCR_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMsd_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i.sink.i, ptr %0, align 8, !alias.scope !1066
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !1066
  br label %.body.thread

.body.thread19:                                   ; preds = %.invoke, %.noexc4, %bb.c, %.noexc, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.m:                                             ; preds = %bb.b, %.sink.split.i
  %i.at = phi ptr [ %i.e, %bb.b ], [ %.sroa.0.0.i.i.i.i.i.i.sink.i, %.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %.sroa.02.0.copyload38.i.i = load i32, ptr %i.d, align 8, !alias.scope !1076 ; 2 uses
  store i32 -1, ptr %i.d, align 8, !alias.scope !1077
  %.not9.i.i = icmp eq i32 %.sroa.02.0.copyload38.i.i, -1
  br i1 %.not9.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.i, label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #18
          to label %.body.thread15 unwind label %bb.p, !noalias !1078

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1079
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.47.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %i.aw, i64 28, i1 false)
  store i32 %.sroa.02.0.copyload38.i.i, ptr %i.a, align 8, !noalias !1080
  invoke void @_RNvNtCs6et67aoV1xO_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.loopexit.i unwind label %bb.n, !noalias !1080

bb.p:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1078
  unreachable

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.loopexit.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1079
  store i32 -1, ptr %i.d, align 8, !alias.scope !1077
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.i: ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.loopexit.i, %bb.m
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body.thread15:                                   ; preds = %bb.n, %.body.thread
  %eh.lpad-body13 = phi { ptr, i32 } [ %eh.lpad-body14, %.body.thread ], [ %i.au, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body13

.body.thread:                                     ; preds = %bb.l, %bb.f, %.body.thread19
  %eh.lpad-body14 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread19 ], [ %i.as, %bb.l ], [ %i.x, %bb.f ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #18
          to label %.body.thread15 unwind label %bb.q

bb.q:                                             ; preds = %.body.thread
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext23rightmost_subexpression(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !19, !alias.scope !1087, !noundef !6 ; 2 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775777
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775800
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1087, !nonnull !6, !noundef !6
  %i.g = tail call noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f), !noalias !1087
  br i1 %i.g, label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence.exit, label %bb.b

_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i.i = phi i8 [ %i.a, %bb.b ], [ 0, %bb.d ]
  %i.h = insertvalue { i8, i1 } poison, i8 %.sroa.0.0.i.i, 0
  %i.i = insertvalue { i8, i1 } %i.h, i1 %0, 1
  ret { i8, i1 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext31leftmost_subexpression_with_dot(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  %i.b = insertvalue { i8, i1 } poison, i8 %i.a, 0
  %i.c = insertvalue { i8, i1 } %i.b, i1 false, 1
  ret { i8, i1 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 16) i8 @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext10precedence.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !19, !alias.scope !1090, !noundef !6 ; 2 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775777
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775800
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1090, !nonnull !6, !noundef !6
  %i.g = tail call noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f), !noalias !1090
  br i1 %i.g, label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext10precedence.exit, label %bb.b

_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext10precedence.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi i8 [ %i.a, %bb.b ], [ 0, %bb.d ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext36leftmost_subexpression_with_operator(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext33leftmost_subexpression_precedence.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !19, !alias.scope !1097, !noundef !6 ; 2 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775777
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775800
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1097, !nonnull !6, !noundef !6
  %i.g = tail call noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f), !noalias !1097
  br i1 %i.g, label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext33leftmost_subexpression_precedence.exit, label %bb.b

_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext33leftmost_subexpression_precedence.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i.i = phi i8 [ %i.a, %bb.b ], [ 0, %bb.d ]
  %i.h = insertvalue { i8, i1 } poison, i8 %.sroa.0.0.i.i, 0
  %i.i = insertvalue { i8, i1 } %i.h, i1 %2, 1
  ret { i8, i1 } %i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !7, !alias.scope !1107, !noundef !6
  %switch.i.i = icmp samesign ult i8 %i.c, 2
  br i1 %switch.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1110, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !1110, !noundef !6
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !1110
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit unwind label %bb.d, !inline_history !1106

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(248) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 248) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(304) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 304, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 304) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn3lit10LitIntReprE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

end_hunk_0
