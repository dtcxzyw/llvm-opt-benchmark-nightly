Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.07?download=true
inline.NumInlined: 615
inline.NumDeleted: 172
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn:bb.a
  %i.b = load i8, ptr %i.a, align 8, !range !26, !alias.scope !469, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !469, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !469, !nonnull !5, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #16, !noalias !469
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b, %bb.c
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
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit unwind label %bb.d, !noalias !472, !inline_history !475

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 248, i64 noundef 8) #16, !noalias !472
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 248, i64 noundef 8) #16, !noalias !472
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !476, !noundef !5 ; 3 uses
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
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body6

.body6:                                           ; preds = %bb.d, %bb.g
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k) #17
          to label %.body unwind label %bb.i, !inline_history !477

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !478, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeArrayEBF_.exit unwind label %bb.h, !noalias !478, !inline_history !481

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 248, i64 noundef 8) #16, !noalias !478, !inline_history !481
  br label %.body

.body:                                            ; preds = %bb.h, %.body6
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body7, %.body6 ], [ %i.n, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.o) #17
          to label %common.resume unwind label %bb.i, !inline_history !477

bb.i:                                             ; preds = %.body, %.body6
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !inline_history !477
  unreachable

common.resume.sink.split:                         ; preds = %bb.ab, %bb.ai, %bb.bj, %bb.ce, %bb.co, %bb.cv
  %.sink = phi ptr [ %i.el, %bb.cv ], [ %i.ec, %bb.co ], [ %i.dl, %bb.ce ], [ %i.cf, %bb.bj ], [ %i.ay, %bb.ai ], [ %i.ao, %bb.ab ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.em, %bb.cv ], [ %i.ed, %bb.co ], [ %i.dm, %bb.ce ], [ %i.cg, %bb.bj ], [ %i.az, %bb.ai ], [ %i.aq, %bb.ab ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 248, i64 noundef 8) #16, !noalias !5
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body84, %.body79, %.body74, %.body66, %.body58, %.body88, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit47, %.body42, %bb.bb, %bb.ay, %.body34, %bb.aq, %.body29, %.body24, %bb.x, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body80, %.body79 ], [ %.pn.i, %.body ], [ %eh.lpad-body59, %.body58 ], [ %.pn6.i, %bb.x ], [ %eh.lpad-body75, %.body74 ], [ %eh.lpad-body25, %.body24 ], [ %eh.lpad-body30, %.body29 ], [ %i.bi, %bb.aq ], [ %eh.lpad-body35, %.body34 ], [ %i.br, %bb.ay ], [ %i.bw, %bb.bb ], [ %eh.lpad-body67, %.body66 ], [ %eh.lpad-body43, %.body42 ], [ %.pn.i3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit47 ], [ %eh.lpad-body89, %.body88 ], [ %eh.lpad-body85, %.body84 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeArrayEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 248, i64 noundef 8) #16, !noalias !478, !inline_history !481
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.q), !inline_history !477
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.j:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body16 unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit18 unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body16

.body16:                                          ; preds = %bb.k, %bb.n
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.u, %bb.n ], [ %i.s, %bb.k ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !54, !alias.scope !482, !noundef !5
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit13, label %bb.o

bb.o:                                             ; preds = %.body16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit13 unwind label %bb.z, !inline_history !485

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit18: ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !54, !alias.scope !486, !noundef !5
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit18
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit unwind label %bb.r, !inline_history !485

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit13: ; preds = %.body16, %bb.o, %bb.r
  %.pn.i1 = phi { ptr, i32 } [ %i.ac, %bb.r ], [ %eh.lpad-body17, %bb.o ], [ %eh.lpad-body17, %.body16 ] ; 2 uses
  %.val9.i = load i64, ptr %0, align 8, !range !489, !alias.scope !490, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i = load ptr, ptr %i.ab, align 8, !alias.scope !490 ; 2 uses
  %1 = icmp eq i64 %.val9.i, 0
  %2 = icmp eq ptr %.val10.i, null
  %or.cond.i8 = select i1 %1, i1 true, i1 %2
  br i1 %or.cond.i8, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit13
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.val10.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10 unwind label %bb.z

bb.r:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit13

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit18, %bb.p
  %.val.i = load i64, ptr %0, align 8, !range !489, !alias.scope !490, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.ad, align 8, !alias.scope !490 ; 2 uses
  %3 = icmp eq i64 %.val.i, 0
  %4 = icmp eq ptr %.val8.i, null
  %or.cond.i = select i1 %3, i1 true, i1 %4
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.val8.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit unwind label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit13, %bb.q, %bb.t
  %.pn2.i = phi { ptr, i32 } [ %i.af, %bb.t ], [ %.pn.i1, %bb.q ], [ %.pn.i1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit13 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #17
          to label %bb.u unwind label %bb.z, !inline_history !493

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag)
          to label %bb.w unwind label %bb.v, !inline_history !493

bb.u:                                             ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10
  %.pn4.i = phi { ptr, i32 } [ %i.ai, %bb.v ], [ %.pn2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ah) #17
          to label %bb.x unwind label %bb.z, !inline_history !493

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeFnPtrEBF_.exit unwind label %bb.y, !inline_history !493

bb.x:                                             ; preds = %bb.y, %bb.u
  %.pn6.i = phi { ptr, i32 } [ %i.al, %bb.y ], [ %.pn4.i, %bb.u ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ak) #17
          to label %common.resume unwind label %bb.z, !inline_history !493

bb.y:                                             ; preds = %bb.w
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.o, %bb.q, %bb.x, %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit10
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !inline_history !493
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeFnPtrEBF_.exit: ; preds = %bb.w
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !494, !noundef !5 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeFnPtrEBF_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ao)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i unwind label %bb.ab, !noalias !497, !inline_history !500

bb.ab:                                            ; preds = %bb.aa
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i: ; preds = %bb.aa
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 248, i64 noundef 8) #16, !noalias !497
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.ac:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %.body24 unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %bb.ad, %bb.ag
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.au, %bb.ag ], [ %i.as, %bb.ad ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.av) #17
          to label %common.resume unwind label %bb.ah, !inline_history !501

bb.ah:                                            ; preds = %.body24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !inline_history !501
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit: ; preds = %bb.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !502, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ay)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit21 unwind label %bb.ai, !noalias !502, !inline_history !505

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit21: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeGroupEBF_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 248, i64 noundef 8) #16, !noalias !502, !inline_history !505
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.aj:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.body29 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty13TypeImplTraitEBF_.exit unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body29

.body29:                                          ; preds = %bb.ak, %bb.an
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.bd, %bb.an ], [ %i.bb, %bb.ak ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.be) #17
          to label %common.resume unwind label %bb.ao, !inline_history !506

bb.ao:                                            ; preds = %.body29
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !inline_history !506
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty13TypeImplTraitEBF_.exit: ; preds = %bb.al
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bg), !inline_history !506
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.ap:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeInferEBF_.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty9TypeInferEBF_.exit: ; preds = %bb.ap
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_.exit

bb.as:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bk)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bl = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.df = load i64, ptr %i.de, align 8, !range !54, !alias.scope !1199, !noalias !1202, !noundef !5
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !1199, !noalias !1202, !nonnull !5, !noundef !5 ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !noalias !1204, !noundef !5 ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = add i64 %i.dj, 1                        ; 2 uses
  store i64 %i.dl, ptr %i.di, align 8, !noalias !1204
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.as, label %_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !prof !966

bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1208
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !alias.scope !1210, !noalias !1211, !noundef !5
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = tail call noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dn), !noalias !1211
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dq = phi i32 [ %i.dp, %bb.an ], [ 0, %bb.am ] ; 3 uses
  store i32 %i.dq, ptr %i.f, align 4, !noalias !1208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1208
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de)
          to label %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i unwind label %bb.ap, !noalias !1211

bb.ap:                                            ; preds = %bb.ao
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = icmp eq i32 %i.dq, 0
  br i1 %i.ds, label %common.resume, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %common.resume unwind label %bb.ar, !noalias !1211

bb.ar:                                            ; preds = %bb.aq
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !1211
  unreachable

_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.ao
  %.sroa.040.0.copyload41 = load i64, ptr %i.e, align 8, !noalias !1199
  %.sroa.542.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.542.0.copyload44 = load ptr, ptr %.sroa.542.0..sroa_idx43, align 8, !noalias !1199
  %.sroa.645.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.645.0.copyload47 = load i64, ptr %.sroa.645.0..sroa_idx46, align 8, !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1208
  br label %_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.as:                                            ; preds = %bb.al
  tail call void @llvm.trap()
  unreachable

_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.al, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
  %.sroa.648.0 = phi i32 [ %i.dq, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ undef, %bb.al ]
  %.sroa.645.0 = phi i64 [ %.sroa.645.0.copyload47, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ undef, %bb.al ]
  %.sroa.542.0 = phi ptr [ %.sroa.542.0.copyload44, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ %i.di, %bb.al ]
  %.sroa.040.0 = phi i64 [ %.sroa.040.0.copyload41, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ -1, %bb.al ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.040.0, ptr %i.du, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.542.0, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.645.0, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.648.0, ptr %.sroa.653.0..sroa_idx, align 8
  store i64 16, ptr %0, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvXs1h_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeTupleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvXs1g_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty15TypeTraitObjectNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvXs1f_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeSliceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.z, %_RNvXs1d_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty7TypePtrNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.u, %_RNvXs1b_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeParenNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.p, %_RNvXs17_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeMacroNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.l, %_RNvXs15_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty13TypeImplTraitNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvXs14_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs12_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeArrayNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE13new_uninit_inBK_()
          to label %.noexc unwind label %bb.b, !inline_history !1215 ; 4 uses

.body:                                            ; preds = %bb.b, %bb.c, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.h unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1212, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1216
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.h)
          to label %bb.e unwind label %bb.c, !inline_history !1219

bb.c:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 248, i64 noundef 8) #16, !noalias !1212
  br label %.body

bb.d:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #17
          to label %.body unwind label %bb.g

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1216
  store ptr %i.e, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.val = load i32, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr4ExprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.l)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %.val, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.q, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.d, %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs13_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeFnPtrNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.10 = alloca [16 x i8], align 4           ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 13 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !54, !noundef !5
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_8generics14BoundLifetimesNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.l = load i32, ptr %i.k, align 8, !range !971, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.val8 = load i32, ptr %i.m, align 4
  %i.n = load i64, ptr %1, align 8, !range !489, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1                 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit, %bb.g, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn.pn.pn, %bb.g ], [ %.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #17
          to label %bb.ae unwind label %bb.ad

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit: ; preds = %bb.k, %bb.l, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ] ; 2 uses
  %i.q = load i64, ptr %i.f, align 8, !range !54, !alias.scope !1220, !noundef !5
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit unwind label %bb.ad, !inline_history !1223

bb.h:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !1224, !noundef !5 ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !alias.scope !1224, !align !4, !noundef !5
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsgbWeKYPjk8w_3syn3litNtB5_6LitStrNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.n unwind label %bb.h

bb.k:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.z, %bb.m ] ; 2 uses
  %i.y = icmp ne ptr %.sroa.5.029, null
  %or.cond.i.not = and i1 %i.y, %i.o
  br i1 %or.cond.i.not, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.5.029)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit unwind label %bb.ad

bb.m:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.d
  %.sroa.7.0 = phi i32 [ undef, %bb.d ], [ %i.v, %bb.i ], [ %i.v, %bb.j ]
  %.sroa.5.029 = phi ptr [ undef, %bb.d ], [ null, %bb.i ], [ %i.x, %bb.j ] ; 3 uses
  %storemerge = phi i64 [ 0, %bb.d ], [ 1, %bb.i ], [ 1, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val9 = load i32, ptr %i.aa, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_2ty8NamedArgNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !54, !noundef !5
  %.not2 = icmp eq i64 %i.ad, -1
  br i1 %.not2, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1232
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ac)
          to label %.noexc13 unwind label %bb.aa

.noexc13:                                         ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.af = load i8, ptr %i.ae, align 8, !range !84, !alias.scope !1230, !noalias !1227, !noundef !5 ; 3 uses
  %.not.i12 = icmp eq i8 %i.af, -1
  br i1 %.not.i12, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.noexc13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.af, 2
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.noexc.i unwind label %bb.t, !noalias !1227 ; 2 uses

.noexc.i:                                         ; preds = %bb.r
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.val.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1233, !noalias !1240
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.al = load i8, ptr %i.ak, align 8, !range !1244, !alias.scope !1233, !noalias !1240, !noundef !5
  %i.am = inttoptr i64 %.val.i.i.i.i to ptr
  %.sroa.0.sroa.5.0.insert.ext.i.i.i = zext nneg i8 %i.al to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %.body unwind label %bb.v, !noalias !1227

bb.u:                                             ; preds = %bb.s, %.noexc.i
  %.sroa.0.sroa.0.0.i.i.i = phi ptr [ %i.ai, %.noexc.i ], [ %i.am, %bb.s ]
  %.sroa.0.sroa.5.0.i.i.i = phi i64 [ %i.aj, %.noexc.i ], [ %.sroa.0.sroa.5.0.insert.ext.i.i.i, %bb.s ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i.i = load i32, ptr %i.ao, align 8, !alias.scope !1245, !noalias !1246
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !1227
  unreachable

bb.w:                                             ; preds = %bb.o
  store i64 -1, ptr %i.d, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !1247, !noalias !1250, !noundef !5 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ar, null
  br i1 %.not.i14, label %_RNvXsY_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty10ReturnTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val.i15 = load i64, ptr %i.as, align 8, !alias.scope !1247, !noalias !1250
  %i.at = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE13new_uninit_inBK_()
          to label %.noexc18 unwind label %bb.ac, !inline_history !1252 ; 3 uses

.noexc18:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1253
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ar)
          to label %.noexc16 unwind label %bb.z, !noalias !1258, !inline_history !1259

bb.z:                                             ; preds = %.noexc18
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef 248, i64 noundef 8) #16, !noalias !1258, !inline_history !1252
  br label %.body19

.noexc16:                                         ; preds = %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.at, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false), !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1253
  br label %_RNvXsY_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty10ReturnTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

.body:                                            ; preds = %bb.aa, %bb.t, %.body19
  %.pn = phi { ptr, i32 } [ %eh.lpad-body20, %.body19 ], [ %i.av, %bb.aa ], [ %i.an, %bb.t ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #17
          to label %bb.k unwind label %bb.ad

bb.aa:                                            ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.u, %.noexc13
  %.sroa.8.sroa.4.0.i = phi i32 [ %.val.i.i, %bb.u ], [ undef, %.noexc13 ]
  %.sroa.5.016.i = phi i64 [ %.sroa.0.sroa.5.0.i.i.i, %bb.u ], [ undef, %.noexc13 ]
  %.sroa.0.015.i = phi ptr [ %.sroa.0.sroa.0.0.i.i.i, %bb.u ], [ undef, %.noexc13 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.10.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false), !alias.scope !1232
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ay = load i32, ptr %i.ax, align 8, !range !971, !alias.scope !1230, !noalias !1227, !noundef !5 ; 2 uses
  %i.az = trunc nuw i32 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 156
  %.val.i = load i32, ptr %i.ba, align 4, !alias.scope !1230, !noalias !1227
  %.sroa.5.0.i = select i1 %i.az, i32 %.val.i, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1232
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ay, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %.sroa.5.0.i, ptr %.sroa.524.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.0.015.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.5.016.i, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 %i.af, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.sroa.8.sroa.4.0.i, ptr %.sroa.927.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.x

bb.ac:                                            ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.z, %bb.ac
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.bb, %bb.ac ], [ %i.au, %bb.z ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #17
          to label %.body unwind label %bb.ad

_RNvXsY_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty10ReturnTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %.noexc16, %bb.x
  %.sroa.4.0 = phi i64 [ undef, %bb.x ], [ %.val.i15, %.noexc16 ]
  %storemerge.i = phi ptr [ null, %bb.x ], [ %i.at, %.noexc16 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.bd = trunc nuw i32 %i.l to i1
  %.sroa.5.0 = select i1 %i.bd, i32 %.val8, i32 undef
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.l, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %.sroa.5.0, ptr %i.bh, align 4
  store i64 %storemerge, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.029, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %.val9, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %storemerge.i, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ad:                                            ; preds = %bb.l, %bb.g, %.body19, %.body, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit
  resume { ptr, i32 } %.pn.pn.pn.pn
}

end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_13TypeReferenceNtNtB9_5parse5Parse5parse:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_9TypeNeverNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs87_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3NotNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_9TypeFnPtrNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.669 = alloca [16 x i8], align 8          ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [304 x i8], align 8               ; 6 uses
  %i.f = alloca [304 x i8], align 8               ; 7 uses
  %.sroa.648 = alloca [24 x i8], align 8          ; 6 uses
  %i.g = alloca [304 x i8], align 8               ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.636 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.533 = alloca [24 x i8], align 8          ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [56 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 34 uses
  %i.t = alloca [24 x i8], align 8                ; 35 uses
  %i.u = alloca [80 x i8], align 8                ; 28 uses
  %i.v = alloca [32 x i8], align 8                ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 -1, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_8generics14BoundLifetimesEEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.r, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #17
          to label %bb.ef unwind label %bb.bp

bb.c:                                             ; preds = %bb.a
  %i.z = load i64, ptr %i.r, align 8, !range !1505, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, -2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  br i1 %i.aa, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.ee

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.h:                                             ; preds = %bb.c
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.579.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.z, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token6UnsafeEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 8 %1)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1506, !noundef !5
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit unwind label %bb.bp, !inline_history !1223

bb.k:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.q, align 8, !range !54, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.687.0.copyload = load i64, ptr %.sroa.687.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.an, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ak, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.am, ptr %.sroa.590.0..sroa_idx, align 4
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.687.0.copyload, ptr %.sroa.691.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.ao = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1509, !noundef !5
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit186, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit186 unwind label %bb.dz, !inline_history !1223

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_2ty3AbiEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1512, !noundef !5
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit188, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit188 unwind label %bb.bp, !inline_history !1223

bb.q:                                             ; preds = %bb.n
  %i.at = load i64, ptr %i.p, align 8, !range !489, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0276.0.copyload = load i64, ptr %i.av, align 8 ; 9 uses
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4277.0.copyload = load ptr, ptr %.sroa.4277.0..sroa_idx, align 8 ; 16 uses
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.5278.0.copyload = load i64, ptr %.sroa.5278.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.au, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0276.0.copyload, ptr %i.aw, align 8
  %.sroa.4280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4277.0.copyload, ptr %.sroa.4280.0..sroa_idx, align 8
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5278.0.copyload, ptr %.sroa.5281.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.ax = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1515, !noundef !5
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit190, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit190 unwind label %bb.du, !inline_history !1223

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2FnEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 8 %1)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = icmp eq i64 %.sroa.0276.0.copyload, 0
  %3 = icmp eq ptr %.sroa.4277.0.copyload, null
  %or.cond.i = select i1 %2, i1 true, i1 %3
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.4277.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit unwind label %bb.bp

bb.w:                                             ; preds = %bb.t
  %i.ba = load i64, ptr %i.o, align 8, !range !54, !noundef !5 ; 2 uses
  %.not125 = icmp eq i64 %i.ba, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  br i1 %.not125, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5100.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.597.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bd, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %.sroa.499.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %4 = icmp eq i64 %.sroa.0276.0.copyload, 0
  %5 = icmp eq ptr %.sroa.4277.0.copyload, null
  %or.cond.i192 = select i1 %4, i1 true, i1 %5
  br i1 %or.cond.i192, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit194, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.4277.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit194 unwind label %bb.dm

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noundef nonnull align 8 %1)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %6 = icmp eq i64 %.sroa.0276.0.copyload, 0
  %7 = icmp eq ptr %.sroa.4277.0.copyload, null
  %or.cond.i195 = select i1 %6, i1 true, i1 %7
  br i1 %or.cond.i195, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit197, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.4277.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit197 unwind label %bb.bp

bb.ac:                                            ; preds = %bb.z
  %i.bf = load i64, ptr %i.n, align 8, !range !489, !noundef !5
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.bg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.by

bb.ae:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.bj, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8, !alias.scope !1518
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1518
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1518
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.val180308 = load ptr, ptr %i.v, align 8, !noundef !5
  %.val181309 = load ptr, ptr %i.bk, align 8, !noundef !5
  %i.bl = icmp eq ptr %.val180308, %.val181309
  br i1 %i.bl, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 248 ; 6 uses
  br label %bb.ai

bb.af:                                            ; preds = %bb.cv, %.thread284, %bb.ah
  %.sroa.076.0 = phi i1 [ false, %bb.cv ], [ true, %bb.ah ], [ true, %.thread284 ] ; 2 uses
  %.pn129 = phi { ptr, i32 } [ %i.cu, %bb.cv ], [ %i.bt, %bb.ah ], [ %.pn.pn, %.thread284 ] ; 2 uses
  %8 = icmp eq i64 %.sroa.0276.0.copyload, 0
  %9 = icmp eq ptr %.sroa.4277.0.copyload, null
  %or.cond.i198 = select i1 %8, i1 true, i1 %9
  br i1 %or.cond.i198, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.4277.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200 unwind label %bb.bp

bb.ah:                                            ; preds = %bb.bm
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.thread284:                                       ; preds = %.loopexit299, %.loopexit.split-lp300, %.loopexit298, %.loopexit.split-lp, %bb.ba, %bb.bu, %bb.bi, %bb.bw
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.bw ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ct, %bb.bu ], [ %i.cl, %bb.bi ], [ %i.ch, %bb.ba ], [ %lpad.loopexit, %.loopexit298 ], [ %lpad.loopexit301, %.loopexit299 ], [ %lpad.loopexit.split-lp302, %.loopexit.split-lp300 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #17
          to label %bb.af unwind label %bb.bp

.loopexit298:                                     ; preds = %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread284

.loopexit.split-lp:                               ; preds = %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread284

bb.ai:                                            ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4callINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.v, ptr noundef nonnull @_RNvMNtCsgbWeKYPjk8w_3syn4attrNtB2_9Attribute11parse_outer)
          to label %bb.aj unwind label %.loopexit298

bb.aj:                                            ; preds = %bb.ai
  %i.bu = load i64, ptr %i.j, align 8, !range !489, !noundef !5
  %i.bv = trunc nuw i64 %i.bu to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.533, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.bv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.533, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  br label %bb.bm

.loopexit299:                                     ; preds = %bb.bj
  %lpad.loopexit301 = landingpad { ptr, i32 }
          cleanup
  br label %.thread284

.loopexit.split-lp300:                            ; preds = %bb.bq, %bb.bf, %bb.bd
  %lpad.loopexit.split-lp302 = landingpad { ptr, i32 }
          cleanup
  br label %.thread284

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.533, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  %.val182 = load ptr, ptr %i.bn, align 8, !align !4, !noundef !5
  %.not.i = icmp eq ptr %.val182, null
  br i1 %.not.i, label %bb.am, label %bb.aw

bb.am:                                            ; preds = %bb.al
  %i.bx = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token9DotDotDotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.v)
          to label %bb.an unwind label %bb.bw

bb.an:                                            ; preds = %bb.am
  br i1 %i.bx, label %bb.bq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_5ident5IdentEB8_(ptr noundef nonnull align 8 %i.v)
          to label %bb.ap unwind label %bb.bw

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.by, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bz = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token10UnderscoreNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.v)
          to label %bb.ar unwind label %bb.bw

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.bz, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.ca = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token5ColonNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.v)
          to label %bb.at unwind label %bb.bw

bb.at:                                            ; preds = %bb.as
  br i1 %i.ca, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.cb = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5peek3INvNtB8_5token9DotDotDotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.v)
          to label %bb.av unwind label %bb.bw

bb.av:                                            ; preds = %bb.au
  br i1 %i.cb, label %bb.bq, label %bb.aw

bb.aw:                                            ; preds = %bb.al, %bb.ar, %bb.at, %bb.av
  %.val183 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !5 ; 2 uses
  %.val184 = load ptr, ptr %i.bn, align 8
  %i.cc = icmp ult i64 %.val183, 29562089861714026
  call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp eq i64 %.val183, 0
  %.not.i201 = icmp eq ptr %.val184, null
  %.sroa.0.0.i = select i1 %i.cd, i1 %.not.i201, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing16parse_fn_ptr_arg(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.f, ptr noundef nonnull align 8 %i.v, i1 noundef zeroext %.sroa.0.0.i)
          to label %bb.ax unwind label %bb.bw

bb.ax:                                            ; preds = %bb.aw
  %i.ce = load i64, ptr %i.f, align 8, !range !948, !noundef !5 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4105.0..sroa_idx, i64 24, i1 false)
  br i1 %i.cf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.648)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.bm unwind label %.loopexit.split-lp

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5106.0..sroa_idx, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648, i64 24, i1 false)
  store i64 %i.ce, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.g, i64 248, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty8NamedArgNtNtB4_5token5CommaE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(304) %i.e)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.bg, %bb.bc, %bb.az
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs) #17
          to label %.thread284 unwind label %bb.bp

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val178 = load ptr, ptr %i.v, align 8, !noundef !5
  %.val179 = load ptr, ptr %i.bk, align 8, !noundef !5
  %i.ci = icmp eq ptr %.val178, %.val179
  br i1 %i.ci, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.v)
          to label %bb.be unwind label %bb.ba

bb.bd:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs)
          to label %bb.bn unwind label %.loopexit.split-lp300

bb.be:                                            ; preds = %bb.bc
  %i.cj = load i64, ptr %i.d, align 8, !range !54, !noundef !5 ; 2 uses
  %.not126 = icmp eq i64 %i.cj, -1
  %.sroa.0107.0.copyload = load i32, ptr %i.br, align 8 ; 2 uses
  br i1 %.not126, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5116.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5113.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.ck, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0107.0.copyload, ptr %.sroa.4115.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs)
          to label %bb.bl unwind label %.loopexit.split-lp300

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty8NamedArgNtNtB4_5token5CommaE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef %.sroa.0107.0.copyload)
          to label %bb.bh unwind label %bb.ba

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.thread284 unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit206 unwind label %.loopexit299

bb.bk:                                            ; preds = %bb.bi
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit206: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val180 = load ptr, ptr %i.v, align 8, !noundef !5
  %.val181 = load ptr, ptr %i.bk, align 8, !noundef !5
  %i.cn = icmp eq ptr %.val180, %.val181
  br i1 %i.cn, label %.loopexit, label %bb.ai

bb.bl:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bs, %bb.bl, %bb.ay, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %bb.bx unwind label %bb.ah

bb.bn:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bv, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

bb.bp:                                            ; preds = %bb.dt, %bb.dl, %bb.cw, %bb.cm, %bb.ci, %bb.ag, %bb.ab, %bb.v, %bb.p, %bb.j, %bb.ef, %.body, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit, %.body247, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit188, %.body242, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit239, %.body235, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit230, %bb.dk, %.thread292, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit221, %bb.cv, %bb.cq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit217, %bb.cf, %bb.ca, %bb.bw, %bb.ba, %.thread284, %bb.b
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bq:                                            ; preds = %bb.av, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke void @_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing21parse_fn_ptr_variadic(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noundef nonnull align 8 %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.br unwind label %.loopexit.split-lp300

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cp = load i64, ptr %i.i, align 8, !range !54, !noundef !5 ; 3 uses
  %i.cq = icmp eq i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.636, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  br i1 %i.cq, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.636, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bm

bb.bt:                                            ; preds = %bb.br
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5103.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.u)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ct = landingpad { ptr, i32 }
          cleanup
  store i64 %i.cp, ptr %i.u, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.636, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  br label %.thread284

bb.bv:                                            ; preds = %bb.bt
  store i64 %i.cp, ptr %i.u, align 8
  %.sroa.643.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.636, i64 24, i1 false)
  %.sroa.7.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx45, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bo

.loopexit:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit206, %bb.ae, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4callNtNtB8_2ty10ReturnTypeEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RNvMsa_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_10ReturnType12without_plus)
          to label %bb.cb unwind label %bb.ca

bb.bw:                                            ; preds = %bb.aw, %bb.am, %bb.au, %bb.as, %bb.aq, %bb.ao
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #17
          to label %.thread284 unwind label %bb.bp

bb.bx:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.ad
  %.sroa.074.0 = phi i8 [ 0, %bb.ad ], [ 1, %bb.bx ] ; 6 uses
  %10 = icmp eq i64 %.sroa.0276.0.copyload, 0
  %11 = icmp eq ptr %.sroa.4277.0.copyload, null
  %or.cond.i207 = select i1 %10, i1 true, i1 %11
  br i1 %or.cond.i207, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit209, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.4277.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit209 unwind label %bb.cx

bb.ca:                                            ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c) #17
          to label %bb.cv unwind label %bb.bp

bb.cb:                                            ; preds = %.loopexit
  %i.cv = load i64, ptr %i.b, align 8, !range !54, !noundef !5 ; 2 uses
  %.not131 = icmp eq i64 %i.cv, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.669, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not131, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4122.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.669, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cv, ptr %i.cx, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c)
          to label %bb.cg unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.669, i64 16, i1 false)
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %.sroa.0276.0.copyload, ptr %0, align 8
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4277.0.copyload, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5278.0.copyload, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.ak, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %i.am, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.bc, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ct, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit237, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit249, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit244, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.cf:                                            ; preds = %bb.cc
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #17
          to label %bb.ch unwind label %bb.bp

bb.cg:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m)
          to label %bb.ck unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cj, %bb.cf
  %.pn132 = phi { ptr, i32 } [ %i.cz, %bb.cj ], [ %i.cy, %bb.cf ] ; 2 uses
  %12 = icmp eq i64 %.sroa.0276.0.copyload, 0
  %13 = icmp eq ptr %.sroa.4277.0.copyload, null
  %or.cond.i210 = select i1 %12, i1 true, i1 %13
  br i1 %or.cond.i210, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit212, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.4277.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit212 unwind label %bb.bp

bb.cj:                                            ; preds = %bb.cg
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ck:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %14 = icmp eq i64 %.sroa.0276.0.copyload, 0
  %15 = icmp eq ptr %.sroa.4277.0.copyload, null
  %or.cond.i213 = select i1 %14, i1 true, i1 %15
  br i1 %or.cond.i213, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit215, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprEEB1e_(ptr nonnull %.sroa.4277.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit215 unwind label %bb.cn

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit212: ; preds = %bb.ch, %bb.ci, %bb.cn
  %.pn134 = phi { ptr, i32 } [ %i.dc, %bb.cn ], [ %.pn132, %bb.ci ], [ %.pn132, %bb.ch ] ; 2 uses
  %i.da = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1521, !noundef !5
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit217, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit212
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit217 unwind label %bb.bp, !inline_history !1223

bb.cn:                                            ; preds = %bb.cl
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit212

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit215: ; preds = %bb.ck, %bb.cl
  %i.dd = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1524, !noundef !5
  %i.de = icmp eq i64 %i.dd, -1
  br i1 %i.de, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit219, label %bb.co

bb.co:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit215
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit219 unwind label %bb.cp, !inline_history !1223

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit217: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit212, %bb.cm, %bb.cp
  %.pn136 = phi { ptr, i32 } [ %i.df, %bb.cp ], [ %.pn134, %bb.cm ], [ %.pn134, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit212 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #17
          to label %bb.cq unwind label %bb.bp

bb.cp:                                            ; preds = %bb.co
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit217

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit219: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit215, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.cs unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit217
  %.pn138 = phi { ptr, i32 } [ %i.dg, %bb.cr ], [ %.pn136, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit217 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v) #17
          to label %bb.cu unwind label %bb.bp

bb.cr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit219
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.di, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ce

bb.cu:                                            ; preds = %bb.ef, %.body, %.body247, %.body242, %.body235, %bb.dk, %bb.df, %bb.cq
  %.pn162.pn = phi { ptr, i32 } [ %.pn162, %.body ], [ %.pn160, %.body247 ], [ %.pn156, %.body242 ], [ %.pn152, %.body235 ], [ %.pn146, %bb.dk ], [ %.pn146, %bb.df ], [ %.pn138, %bb.cq ], [ %i.y, %bb.ef ]
  resume { ptr, i32 } %.pn162.pn

bb.cv:                                            ; preds = %bb.ca
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #17
          to label %bb.af unwind label %bb.bp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200: ; preds = %bb.af, %bb.ag, %bb.cx
  %.sroa.074.1 = phi i8 [ %.sroa.074.0, %bb.cx ], [ 1, %bb.ag ], [ 1, %bb.af ] ; 2 uses
  %.sroa.076.3 = phi i1 [ true, %bb.cx ], [ %.sroa.076.0, %bb.ag ], [ %.sroa.076.0, %bb.af ] ; 2 uses
  %.pn140 = phi { ptr, i32 } [ %i.dj, %bb.cx ], [ %.pn129, %bb.ag ], [ %.pn129, %bb.af ] ; 2 uses
  %i.dh = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1527, !noundef !5
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit221, label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit221 unwind label %bb.bp, !inline_history !1223

bb.cx:                                            ; preds = %bb.bz
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit209: ; preds = %bb.by, %bb.bz
  %i.dk = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1530, !noundef !5
  %i.dl = icmp eq i64 %i.dk, -1
  br i1 %i.dl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit223, label %bb.cy

bb.cy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit209
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit223 unwind label %bb.cz, !inline_history !1223

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit221: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200, %bb.cw, %bb.cz
  %.sroa.074.2 = phi i8 [ %.sroa.074.0, %bb.cz ], [ %.sroa.074.1, %bb.cw ], [ %.sroa.074.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200 ] ; 2 uses
  %.sroa.076.4 = phi i1 [ true, %bb.cz ], [ %.sroa.076.3, %bb.cw ], [ %.sroa.076.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200 ]
  %.pn142 = phi { ptr, i32 } [ %i.dm, %bb.cz ], [ %.pn140, %bb.cw ], [ %.pn140, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit200 ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #17
          to label %bb.dd unwind label %bb.bp

bb.cz:                                            ; preds = %bb.cy
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit221

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit223: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit209, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.db unwind label %bb.da

bb.da:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit223
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread292 unwind label %bb.dc

bb.db:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit223
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit228 unwind label %bb.de

bb.dc:                                            ; preds = %bb.da
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.dd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit221
  br i1 %.sroa.076.4, label %.thread292, label %bb.df

bb.de:                                            ; preds = %bb.db
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.thread292

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit228: ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.u)
          to label %bb.dh unwind label %bb.dg

bb.df:                                            ; preds = %.thread292, %bb.dg, %bb.dd
  %.sroa.074.4 = phi i8 [ %.sroa.074.0, %bb.dg ], [ %.sroa.074.3296, %.thread292 ], [ %.sroa.074.2, %bb.dd ]
  %.pn146 = phi { ptr, i32 } [ %i.dr, %bb.dg ], [ %.pn144297, %.thread292 ], [ %.pn142, %bb.dd ] ; 2 uses
  %i.dq = trunc nuw i8 %.sroa.074.4 to i1
  br i1 %i.dq, label %bb.dk, label %bb.cu

bb.dg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit228
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ds = trunc nuw i8 %.sroa.074.0 to i1
  br i1 %i.ds, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dj, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ct

bb.dj:                                            ; preds = %bb.dh
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
  br label %bb.di

.thread292:                                       ; preds = %bb.da, %bb.de, %bb.dd
  %.pn144297 = phi { ptr, i32 } [ %.pn142, %bb.dd ], [ %i.dp, %bb.de ], [ %i.dn, %bb.da ]
  %.sroa.074.3296 = phi i8 [ %.sroa.074.2, %bb.dd ], [ %.sroa.074.0, %bb.de ], [ %.sroa.074.0, %bb.da ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty13FnPtrVariadicEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.u) #17
          to label %bb.df unwind label %bb.bp

bb.dk:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v) #17
          to label %bb.cu unwind label %bb.bp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit197: ; preds = %bb.aa, %bb.ab, %bb.dm
  %.pn148 = phi { ptr, i32 } [ %i.dv, %bb.dm ], [ %i.be, %bb.ab ], [ %i.be, %bb.aa ] ; 2 uses
  %i.dt = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1533, !noundef !5
  %i.du = icmp eq i64 %i.dt, -1
  br i1 %i.du, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit230, label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit197
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit230 unwind label %bb.bp, !inline_history !1223

bb.dm:                                            ; preds = %bb.y
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit197

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn2ty3AbiEEB11_.exit194: ; preds = %bb.x, %bb.y
  %i.dw = load i64, ptr %i.s, align 8, !range !54, !alias.scope !1536, !noundef !5
  %i.dx = icmp eq i64 %i.dw, -1
  br i1 %i.dx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit232, label %bb.dn

end_hunk_2
