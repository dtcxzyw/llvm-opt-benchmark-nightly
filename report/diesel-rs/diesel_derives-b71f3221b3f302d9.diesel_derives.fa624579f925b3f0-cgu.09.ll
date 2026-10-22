Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.09?download=true
inline.NumInlined: 1352
inline.NumDeleted: 522
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !594, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !595, !noundef !16
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !595
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %common.resume.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsf5uYjtxkodL_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %common.resume.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !599, !nonnull !16, !noundef !16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !600, !noundef !16
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !600
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsf5uYjtxkodL_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp19DeferredTokenStreamECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !22, !alias.scope !603, !noundef !16
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp5IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !603, !noundef !16 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp5IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !603, !nonnull !16, !noundef !16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #22, !noalias !603
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp5IdentECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp5IdentECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn11restriction10VisibilityECsluMP4ekZjHw_14diesel_derives(i32 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ne i32 %.0.val, 3
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ult i32 %.0.val, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path4PathECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(48) %.8.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn11restriction13VisRestrictedECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 48, i64 noundef 8) #22
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn11restriction13VisRestrictedECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 48, i64 noundef 8) #22
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn11restriction13VisRestrictedECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !16  ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.d, !noalias !606, !inline_history !18

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #22, !noalias !606, !inline_history !18
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #22, !noalias !606, !inline_history !18
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !16 ; 4 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.s
    i64 3, label %bb.u
    i64 4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit
    i64 5, label %bb.v
    i64 6, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit
    i64 7, label %bb.ad
    i64 8, label %bb.af
    i64 9, label %bb.ai
    i64 10, label %bb.ak
    i64 11, label %bb.ap
    i64 12, label %bb.ar
    i64 13, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !657, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty9TypeArrayECsluMP4ekZjHw_14diesel_derives.exit unwind label %.body, !noalias !657, !inline_history !609

.body:                                            ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #22, !noalias !657, !inline_history !609
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4expr4ExprECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g) #24
          to label %common.resume unwind label %bb.d, !inline_history !610

bb.d:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !inline_history !610
  unreachable

common.resume.sink.split:                         ; preds = %bb.r, %bb.t, %bb.ae, %bb.aj, %bb.ao, %bb.aq
  %.sink = phi ptr [ %i.bs, %bb.aq ], [ %i.bp, %bb.ao ], [ %i.bf, %bb.aj ], [ %i.au, %bb.ae ], [ %i.af, %bb.t ], [ %i.ab, %bb.r ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bt, %bb.aq ], [ %i.bq, %bb.ao ], [ %i.bg, %bb.aj ], [ %i.av, %bb.ae ], [ %i.ag, %bb.t ], [ %i.ad, %bb.r ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 224, i64 noundef 8) #22, !noalias !16
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body27, %.body.i, %bb.n, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn4.i, %bb.n ], [ %i.j, %.body ], [ %i.bc, %.body27 ], [ %eh.lpad-body.i, %.body.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty9TypeArrayECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #22, !noalias !657, !inline_history !609
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4expr4ExprECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g), !inline_history !610
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !25, !alias.scope !658, !noundef !16
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit_crit_edge unwind label %bb.g, !inline_history !613

._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit_crit_edge: ; preds = %bb.f
  %.val.i.pre = load i64, ptr %0, align 8, !range !33, !alias.scope !659
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %0, align 8, !range !33, !alias.scope !659, !noundef !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.p, align 8, !alias.scope !659 ; 2 uses
  %1 = icmp eq i64 %.val7.i, 0
  %2 = icmp eq ptr %.val8.i, null
  %or.cond.i2 = select i1 %1, i1 true, i1 %2
  br i1 %or.cond.i2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %.val8.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit4 unwind label %bb.p

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit_crit_edge, %bb.e
  %.val.i = phi i64 [ %.val.i.pre, %._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit_crit_edge ], [ %i.a, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.q, align 8, !alias.scope !659 ; 2 uses
  %3 = icmp eq i64 %.val.i, 0
  %4 = icmp eq ptr %.val6.i, null
  %or.cond.i = select i1 %3, i1 true, i1 %4
  br i1 %or.cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %.val6.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit4: ; preds = %bb.g, %bb.h, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_2ty9BareFnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.r) #24
          to label %bb.k unwind label %bb.p, !inline_history !616

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesEECsluMP4ekZjHw_14diesel_derives.exit, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_2ty9BareFnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.t)
          to label %bb.m unwind label %bb.l, !inline_history !616

bb.k:                                             ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit4
  %.pn2.i = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit4 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(80) %i.u) #24
          to label %bb.n unwind label %bb.p, !inline_history !616

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(80) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10TypeBareFnECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.o, !inline_history !616

bb.n:                                             ; preds = %bb.o, %bb.k
  %.pn4.i = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn2.i, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16) %i.x) #24
          to label %common.resume unwind label %bb.p, !inline_history !616

bb.o:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.h, %bb.n, %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit4
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !inline_history !616
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10TypeBareFnECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !660, !noundef !16 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10TypeBareFnECsluMP4ekZjHw_14diesel_derives.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.ab)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.r, !noalias !661, !inline_history !621

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 224, i64 noundef 8) #22, !noalias !661, !inline_history !621
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

bb.s:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !662, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.af)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit8 unwind label %bb.t, !noalias !662, !inline_history !624

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit8: ; preds = %bb.s
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 224, i64 noundef 8) #22, !noalias !662, !inline_history !624
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

bb.u:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ah), !inline_history !625
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10TypeBareFnECsluMP4ekZjHw_14diesel_derives.exit, %bb.as, %bb.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit21, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit18, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit15, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty8TypePathECsluMP4ekZjHw_14diesel_derives.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit11, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3mac5MacroECsluMP4ekZjHw_14diesel_derives.exit, %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit8, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty9TypeArrayECsluMP4ekZjHw_14diesel_derives.exit, %bb.b, %bb.a, %bb.a
  ret void

bb.v:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %.body23 unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i.i unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.w, %bb.z
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.al, %bb.z ], [ %i.aj, %bb.w ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(8) %i.am) #24
          to label %.body.i unwind label %bb.aa, !inline_history !626

bb.aa:                                            ; preds = %.body23
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !inline_history !626
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i.i: ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(8) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3mac5MacroECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.ab, !inline_history !627

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body23, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.ab ], [ %eh.lpad-body24, %.body23 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.aq) #24
          to label %common.resume unwind label %bb.ac, !inline_history !628

bb.ac:                                            ; preds = %.body.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !inline_history !628
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3mac5MacroECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.as), !inline_history !628
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

bb.ad:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !663, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.au)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit11 unwind label %bb.ae, !noalias !663, !inline_history !631

bb.ae:                                            ; preds = %bb.ad
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit11: ; preds = %bb.ad
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef 224, i64 noundef 8) #22, !noalias !663, !inline_history !631
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

bb.af:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !range !34, !alias.scope !664, !noundef !16
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty8TypePathECsluMP4ekZjHw_14diesel_derives.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !665, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.bb)
          to label %.noexc12 unwind label %.body27, !noalias !665, !inline_history !636

.body27:                                          ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 224, i64 noundef 8) #22, !noalias !665, !inline_history !636
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path4PathECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aw) #24
          to label %common.resume unwind label %bb.ah, !inline_history !637

end_hunk_0
begin_hunk_1_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4expr9ExprConstECsluMP4ekZjHw_14diesel_derives:bb.a
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UseTreeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !20, !noundef !16
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.k
    i32 1, label %bb.o
    i32 2, label %bb.r
    i32 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.d unwind label %bb.c, !inline_history !1137

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBR_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body.i unwind label %bb.e, !inline_history !1137

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBR_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.f, !inline_history !1137

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !inline_history !1137
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1171, !align !17, !noundef !16 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.c, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1172, !align !17, !noundef !16
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %common.resume, label %bb.g

bb.g:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item7UseTreeEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %common.resume unwind label %bb.j, !inline_history !1144

common.resume.sink.split:                         ; preds = %bb.i, %bb.n
  %.sink = phi ptr [ %i.u, %bb.n ], [ %i.f, %bb.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.l, %bb.i ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 64, i64 noundef 8) #22, !noalias !16
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.g ], [ %eh.lpad-body.i, %.body.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UseTreeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item7UseTreeEECsluMP4ekZjHw_14diesel_derives.exit5 unwind label %bb.i, !noalias !1173, !inline_history !1147

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item7UseTreeEECsluMP4ekZjHw_14diesel_derives.exit5: ; preds = %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 64, i64 noundef 8) #22, !noalias !1173, !inline_history !1147
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.j:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !inline_history !1137
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !22, !alias.scope !1176, !noundef !16
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UsePathECsluMP4ekZjHw_14diesel_derives.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.r, align 8, !alias.scope !1176, !noundef !16 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UsePathECsluMP4ekZjHw_14diesel_derives.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1176, !nonnull !16, !noundef !16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !1176
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UsePathECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UsePathECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.m, %bb.l, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1177, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UseTreeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(64) %i.u)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item7UseTreeEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.n, !noalias !1177, !inline_history !1154

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UsePathECsluMP4ekZjHw_14diesel_derives.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item7UseTreeEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item7UsePathECsluMP4ekZjHw_14diesel_derives.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 64, i64 noundef 8) #22, !noalias !1177, !inline_history !1154
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !22, !alias.scope !1181, !noundef !16
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !1181, !noundef !16 ; 2 uses
  %i.ab = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !1181, !nonnull !16, !noundef !16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #22, !noalias !1181
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.r:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !range !22, !alias.scope !1185, !noundef !16
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i1 = load i64, ptr %i.ag, align 8, !alias.scope !1185, !noundef !16 ; 2 uses
  %i.ah = icmp eq i64 %.val1.i.i.i1, 0
  br i1 %i.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i2 = load ptr, ptr %i.ac, align 8, !alias.scope !1185, !nonnull !16, !noundef !16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i2, i64 noundef range(i64 1, 0) %.val1.i.i.i1, i64 noundef 1) #22, !noalias !1185
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i8, ptr %i.aj, align 8, !range !22, !alias.scope !1188, !noundef !16
  %i.al = icmp eq i8 %i.ak, 2
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i1.i = load i64, ptr %i.am, align 8, !alias.scope !1188, !noundef !16 ; 2 uses
  %i.an = icmp eq i64 %.val1.i.i1.i, 0
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val.i.i2.i = load ptr, ptr %i.ai, align 8, !alias.scope !1188, !nonnull !16, !noundef !16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i2.i, i64 noundef range(i64 1, 0) %.val1.i.i1.i, i64 noundef 1) #22, !noalias !1188
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item7UseTreeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.v, %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.q, %bb.p, %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item7UseTreeEECsluMP4ekZjHw_14diesel_derives.exit5, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item7UseTreeEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item9SignatureECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8            ; 2 uses
  %1 = icmp eq i64 %.val, 0
  %2 = icmp eq ptr %.val8, null
  %or.cond.i = select i1 %1, i1 true, i1 %2
  br i1 %or.cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %.val8)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(88) %i.d) #24
          to label %.body unwind label %bb.u

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load i8, ptr %i.f, align 8, !range !22, !alias.scope !1201, !noundef !16
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i = load i64, ptr %i.i, align 8, !alias.scope !1201, !noundef !16 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1201, !nonnull !16, !noundef !16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !1201
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.e, %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics11WhereClauseEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(40) %i.m) #24
          to label %.body unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics11WhereClauseEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.c
  %.pn2 = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.q, %bb.i ], [ %i.l, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.p) #24
          to label %.body11 unwind label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBR_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.body.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBR_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.s, %bb.j ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !1202, !align !17, !noundef !16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item5FnArgEEECsluMP4ekZjHw_14diesel_derives(ptr %.val1.i) #24
          to label %.body11 unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !1202, !align !17, !noundef !16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4item5FnArgEEECsluMP4ekZjHw_14diesel_derives(ptr %.val.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.o

bb.n:                                             ; preds = %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

.body11:                                          ; preds = %bb.o, %.body.i, %.body
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body ], [ %i.z, %bb.o ], [ %eh.lpad-body.i, %.body.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(64) %i.y) #24
          to label %bb.p unwind label %bb.u

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body11

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB1d_5token5CommaEEECsluMP4ekZjHw_14diesel_derives.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(64) %i.aa)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.q, %.body11
  %.pn6 = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %.pn4, %.body11 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16) %i.ab) #24
          to label %common.resume unwind label %bb.u

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1203, !noundef !16 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.ae) #25
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.t, !noalias !1204, !inline_history !1205

common.resume:                                    ; preds = %bb.p, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.t ], [ %.pn6, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 224, i64 noundef 8) #22, !noalias !1204, !inline_history !1205
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.s
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 224, i64 noundef 8) #22, !noalias !1204, !inline_history !1205
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void

bb.u:                                             ; preds = %bb.p, %.body11, %.body, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path13PathArgumentsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !16 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives.exit
    i64 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path29ParenthesizedGenericArgumentsECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.c, !inline_history !1211

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16) %i.f) #24
          to label %common.resume unwind label %bb.d, !inline_history !1211

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtNtCshMFl0SviwmK_3syn3gen4fold14fold_pat_parenINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBQ_17derive_belongs_to0EEBS_:bb.a
  %i.b = alloca [184 x i8], align 8               ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold15fold_attributesB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !align !17, !noundef !16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(184) %i.f, i64 184, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold8fold_patB7_(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.j, %bb.f ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.k unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1729
  %i.h = call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 40, 225) 184, i64 noundef 8) #22, !noalias !1729 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.h, !prof !40

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3pat3PatECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #24
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.h, ptr noundef nonnull align 8 dereferenceable(184) %i.b, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.n, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 184, i64 noundef 8) #22
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !16, !noundef !16 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3pat3PatECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(184) %i.r) #24
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %.body, %bb.j
  %.val = phi ptr [ %i.r, %bb.j ], [ %i.f, %.body ]
  %.pn6 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %eh.lpad-body, %.body ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 184, i64 noundef 8) #22
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold14fold_pat_sliceINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBQ_17derive_belongs_to0EEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold15fold_attributesB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RINvNtCshMFl0SviwmK_3syn10punctuated4foldNtNtB4_3pat3PatNtNtB4_5token5CommaINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1e_17derive_belongs_to0ENvYB1b_NtNtNtB4_3gen4fold4Fold8fold_patEB1g_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn5

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_3pat3PatNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.l) #24
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold14fold_pat_tupleINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBQ_17derive_belongs_to0EEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold15fold_attributesB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RINvNtCshMFl0SviwmK_3syn10punctuated4foldNtNtB4_3pat3PatNtNtB4_5token5CommaINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1e_17derive_belongs_to0ENvYB1b_NtNtNtB4_3gen4fold4Fold8fold_patEB1g_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn5

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_3pat3PatNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.l) #24
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBQ_17derive_belongs_to0EEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(288) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [12 x i8], align 4                ; 2 uses
  %i.h = alloca [88 x i8], align 8                ; 2 uses
  %i.i = alloca [88 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.m = load <4 x i32>, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.o = load <2 x i32>, ptr %i.n, align 8
  %.sroa.014.0.copyload = load i64, ptr %2, align 8
  %i.p = trunc nuw i64 %.sroa.014.0.copyload to i1 ; 2 uses
  br i1 %i.p, label %bb.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1X_17derive_belongs_to0EE0EB1Z_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.315.0.copyload = load i32, ptr %.sroa.315.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.q = invoke { ptr, i32 } @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold8fold_abiB7_(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef align 8 %.sroa.2.0.copyload, i32 noundef %.sroa.315.0.copyload)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = extractvalue { ptr, i32 } %i.q, 1
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1X_17derive_belongs_to0EE0EB1Z_.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1X_17derive_belongs_to0EE0EB1Z_.exit: ; preds = %.noexc, %bb.a
  %.sroa.3.0 = phi ptr [ %i.r, %.noexc ], [ undef, %bb.a ] ; 3 uses
  %.sroa.5.0 = phi i32 [ %i.s, %.noexc ], [ undef, %bb.a ]
  %storemerge.i = phi i64 [ 1, %.noexc ], [ 0, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.u = load i32, ptr %i.t, align 8, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold10fold_identB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.e unwind label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %.pn.pn.pn, %bb.f ], [ %.pn.pn.pn, %bb.g ], [ %.pn.pn.pn, %bb.h ] ; 2 uses
  %.sroa.03.1 = phi i1 [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %.sroa.02.1 = phi i1 [ true, %bb.d ], [ %.sroa.02.2, %bb.f ], [ %.sroa.02.2, %bb.g ], [ %.sroa.02.2, %bb.h ] ; 2 uses
  %.sroa.01.1 = phi i1 [ true, %bb.d ], [ %.sroa.01.2, %bb.f ], [ %.sroa.01.2, %bb.g ], [ %.sroa.01.2, %bb.h ] ; 2 uses
  %.sroa.0.1 = phi i1 [ true, %bb.d ], [ %.sroa.0.2, %bb.f ], [ %.sroa.0.2, %bb.g ], [ %.sroa.0.2, %bb.h ] ; 2 uses
  %i.w = icmp ne ptr %.sroa.3.0, null
  %or.cond.i.not = select i1 %i.p, i1 %i.w, i1 false
  br i1 %or.cond.i.not, label %bb.c, label %.noexc12

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %.sroa.3.0)
          to label %.noexc12 unwind label %bb.t

bb.d:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1X_17derive_belongs_to0EE0EB1Z_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1X_17derive_belongs_to0EE0EB1Z_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold13fold_genericsB7_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.h)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.k, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.ae, %bb.i ] ; 3 uses
  %.sroa.02.2 = phi i1 [ false, %bb.k ], [ true, %bb.i ] ; 3 uses
  %.sroa.01.2 = phi i1 [ %.sroa.01.3, %bb.k ], [ true, %bb.i ] ; 3 uses
  %.sroa.0.2 = phi i1 [ %.sroa.0.3, %bb.k ], [ true, %bb.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !22, !alias.scope !1744, !noundef !16
  %i.ab = icmp eq i8 %i.aa, 2
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1744, !noundef !16 ; 2 uses
  %i.ad = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1744, !nonnull !16, !noundef !16
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !1744
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.j:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  invoke void @_RINvNtCshMFl0SviwmK_3syn10punctuated4foldNtNtB4_4item5FnArgNtNtB4_5token5CommaINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1h_17derive_belongs_to0ENvYB1e_NtNtNtB4_3gen4fold4Fold11fold_fn_argEB1j_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ah, %bb.l ]
  %.sroa.01.3 = phi i1 [ false, %bb.p ], [ true, %bb.l ]
  %.sroa.0.3 = phi i1 [ %.sroa.0.4, %bb.p ], [ true, %bb.l ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(88) %i.i) #24
          to label %bb.f unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.sroa.016.0.copyload = load i64, ptr %i.ai, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %.not.i = icmp eq i64 %.sroa.016.0.copyload, -1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1746
  store i64 %.sroa.016.0.copyload, ptr %i.a, align 8, !noalias !1747
  %.sroa.318.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.318.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.318.0..sroa_idx, i64 56, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold13fold_variadicB7_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %.noexc13 unwind label %bb.q

.noexc13:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1746
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB24_17derive_belongs_to0EEs_0EB26_.exit

bb.o:                                             ; preds = %bb.m
  store i64 -1, ptr %i.d, align 8, !alias.scope !1745
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB24_17derive_belongs_to0EEs_0EB26_.exit

bb.p:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.aj, %bb.q ]
  %.sroa.0.4 = phi i1 [ false, %bb.r ], [ true, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.f) #24
          to label %bb.k unwind label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB24_17derive_belongs_to0EEs_0EB26_.exit: ; preds = %bb.o, %.noexc13
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold16fold_return_typeB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB24_17derive_belongs_to0EEs_0EB26_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(64) %i.d) #24
          to label %bb.p unwind label %bb.t

bb.s:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicE3mapBI_NCINvNtNtBM_3gen4fold14fold_signatureINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB24_17derive_belongs_to0EEs_0EB26_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %i.m, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i32> %i.o, ptr %i.an, align 8
  store i64 %storemerge.i, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.u, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void

bb.t:                                             ; preds = %bb.c, %bb.ab, %bb.z, %bb.x, %.noexc12.thread, %bb.r, %bb.p, %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

.noexc12:                                         ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit
  br i1 %.sroa.03.1, label %.noexc12.thread, label %bb.v

bb.u:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 232
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.ax) #24
  br label %.noexc12.thread

bb.v:                                             ; preds = %.noexc12.thread, %.noexc12
  %.pn.pn.pn.pn.pn2647 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn2648, %.noexc12.thread ], [ %.pn.pn.pn.pn, %.noexc12 ]
  %.sroa.02.03045 = phi i1 [ %.sroa.02.03046, %.noexc12.thread ], [ %.sroa.02.1, %.noexc12 ]
  %.sroa.01.03243 = phi i1 [ %.sroa.01.03244, %.noexc12.thread ], [ %.sroa.01.1, %.noexc12 ]
  %.sroa.0.03441 = phi i1 [ %.sroa.0.03442, %.noexc12.thread ], [ %.sroa.0.1, %.noexc12 ]
  br i1 %.sroa.02.03045, label %bb.x, label %bb.w

.noexc12.thread:                                  ; preds = %bb.u, %.noexc12
  %.pn.pn.pn.pn.pn2648 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.noexc12 ], [ %i.aw, %bb.u ]
  %.sroa.02.03046 = phi i1 [ %.sroa.02.1, %.noexc12 ], [ true, %bb.u ]
  %.sroa.01.03244 = phi i1 [ %.sroa.01.1, %.noexc12 ], [ true, %bb.u ]
  %.sroa.0.03442 = phi i1 [ %.sroa.0.1, %.noexc12 ], [ true, %bb.u ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(88) %i.ay) #24
          to label %bb.v unwind label %bb.t

bb.w:                                             ; preds = %bb.x, %bb.v
  br i1 %.sroa.01.03243, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.az) #24
          to label %bb.w unwind label %bb.t

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %.sroa.0.03441, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn4item8VariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(64) %i.ba) #24
          to label %bb.y unwind label %bb.t

bb.aa:                                            ; preds = %bb.ab, %bb.y
  resume { ptr, i32 } %.pn.pn.pn.pn.pn2647

bb.ab:                                            ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 256
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16) %i.bb) #24
          to label %bb.aa unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold14fold_type_pathINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBQ_17derive_belongs_to0EEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvNtNtCshMFl0SviwmK_3syn3gen4fold17fold_impl_item_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBT_17derive_belongs_to0EEBV_:bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 360
  %.val = load i32, ptr %i.x, align 8, !range !20, !noundef !16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.val7 = load ptr, ptr %i.y, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn11restriction10VisibilityECsluMP4ekZjHw_14diesel_derives(i32 %.val, ptr %.val7) #24
          to label %.thread20 unwind label %bb.k

bb.n:                                             ; preds = %.thread20, %bb.l
  %.pn.pn.pn1426 = phi { ptr, i32 } [ %.pn.pn.pn1427, %.thread20 ], [ %.pn.pn, %bb.l ]
  %.sroa.0.01824 = phi i1 [ %.sroa.0.01825, %.thread20 ], [ %.sroa.0.1, %bb.l ]
  br i1 %.sroa.0.01824, label %bb.p, label %bb.o

.thread20:                                        ; preds = %bb.m, %bb.l
  %.pn.pn.pn1427 = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.w, %bb.m ]
  %.sroa.0.01825 = phi i1 [ %.sroa.0.1, %bb.l ], [ true, %bb.m ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item9SignatureECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(288) %2) #24
          to label %bb.n unwind label %bb.k

bb.o:                                             ; preds = %bb.p, %bb.n
  resume { ptr, i32 } %.pn.pn.pn1426

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 312
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4stmt5BlockECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(40) %i.z) #24
          to label %bb.o unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold17fold_lit_byte_strINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBT_17derive_belongs_to0EEBV_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = invoke noundef i32 @_RNvMs_NtCshMFl0SviwmK_3syn3litNtB4_10LitByteStr4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef i32 @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold9fold_spanB7_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.a, align 8
  invoke void @_RNvMs_NtCshMFl0SviwmK_3syn3litNtB4_10LitByteStr8set_span(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.d)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val3 = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %.val3)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3lit10LitByteStrECsluMP4ekZjHw_14diesel_derives.exit4 unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !16, !align !17, !noundef !16
  ret ptr %i.f

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3lit10LitByteStrECsluMP4ekZjHw_14diesel_derives.exit4: ; preds = %bb.g, %bb.d
  %.pn7 = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %.pn7

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3lit10LitByteStrECsluMP4ekZjHw_14diesel_derives.exit4 unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold17fold_path_segmentINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBT_17derive_belongs_to0EEBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold10fold_identB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold19fold_path_argumentsB7_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !22, !alias.scope !2312, !noundef !16
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i = load i64, ptr %i.j, align 8, !alias.scope !2312, !noundef !16 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i, 0
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2312, !nonnull !16, !noundef !16
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !2312
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  ret void

bb.g:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.i
  %.pn5 = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path13PathArgumentsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(64) %2) #24
          to label %bb.h unwind label %bb.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold17fold_range_limitsINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBT_17derive_belongs_to0EEBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 12)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !range !42, !noundef !16
  %i.b = trunc nuw i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBT_17derive_belongs_to0EEBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 3 uses
  %i.h = alloca [12 x i8], align 4                ; 2 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2332
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !2333
  %.sroa.3.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, i64 40, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold20fold_bound_lifetimesB7_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2332
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.i, align 8, !alias.scope !2331
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.l = load <2 x i32>, ptr %i.k, align 8
  %.sroa.024.0.copyload = load i64, ptr %2, align 8
  %i.m = trunc nuw i64 %.sroa.024.0.copyload to i1 ; 2 uses
  br i1 %i.m, label %bb.d, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB20_17derive_belongs_to0EEs_0EB22_.exit

bb.d:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.325.0.copyload = load i32, ptr %.sroa.325.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.n = invoke { ptr, i32 } @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold8fold_abiB7_(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef align 8 %.sroa.2.0.copyload, i32 noundef %.sroa.325.0.copyload)
          to label %.noexc12 unwind label %bb.f   ; 2 uses

.noexc12:                                         ; preds = %bb.d
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = extractvalue { ptr, i32 } %i.n, 1
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB20_17derive_belongs_to0EEs_0EB22_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn.pn, %bb.h ], [ %.pn.pn, %bb.g ] ; 2 uses
  %.sroa.02.1 = phi i1 [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %.sroa.01.1 = phi i1 [ true, %bb.f ], [ %.sroa.01.2, %bb.h ], [ %.sroa.01.2, %bb.g ] ; 2 uses
  %.sroa.0.1 = phi i1 [ true, %bb.f ], [ %.sroa.0.2, %bb.h ], [ %.sroa.0.2, %bb.g ] ; 2 uses
  %i.q = load i64, ptr %i.i, align 8, !range !25, !alias.scope !2334, !noundef !16
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %.noexc13, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %.noexc13 unwind label %bb.q, !inline_history !1

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB20_17derive_belongs_to0EEs_0EB22_.exit: ; preds = %.noexc12, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit
  %.sroa.323.0 = phi ptr [ %i.o, %.noexc12 ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit ] ; 3 uses
  %.sroa.5.0 = phi i32 [ %i.p, %.noexc12 ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit ]
  %storemerge.i = phi i64 [ 1, %.noexc12 ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8generics14BoundLifetimesE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2i_17derive_belongs_to0EE0EB2k_.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.u = load i32, ptr %i.t, align 8, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  invoke void @_RINvNtCshMFl0SviwmK_3syn10punctuated4foldNtNtB4_2ty9BareFnArgNtNtB4_5token5CommaINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1j_17derive_belongs_to0ENvYB1g_NtNtNtB4_3gen4fold4Fold16fold_bare_fn_argEB1l_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.m, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.y, %bb.i ] ; 2 uses
  %.sroa.01.2 = phi i1 [ false, %bb.m ], [ true, %bb.i ] ; 2 uses
  %.sroa.0.2 = phi i1 [ %.sroa.0.3, %bb.m ], [ true, %bb.i ] ; 2 uses
  %i.x = icmp ne ptr %.sroa.323.0, null
  %or.cond.i.not = select i1 %i.m, i1 %i.x, i1 false
  br i1 %or.cond.i.not, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %.sroa.323.0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.q

bb.i:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB20_17derive_belongs_to0EEs_0EB22_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB20_17derive_belongs_to0EEs_0EB22_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.026.0.copyload = load i64, ptr %i.z, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  %.not.i15 = icmp eq i64 %.sroa.026.0.copyload, -1
  br i1 %.not.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2336
  store i64 %.sroa.026.0.copyload, ptr %i.a, align 8, !noalias !2337
  %.sroa.328.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.328.0..sroa_idx29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.328.0..sroa_idx, i64 72, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold18fold_bare_variadicB7_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2336
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2a_17derive_belongs_to0EEs0_0EB2c_.exit

bb.l:                                             ; preds = %bb.j
  store i64 -1, ptr %i.e, align 8, !alias.scope !2335
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2a_17derive_belongs_to0EEs0_0EB2c_.exit

bb.m:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %i.aa, %bb.n ]
  %.sroa.0.3 = phi i1 [ false, %bb.o ], [ true, %bb.n ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_2ty9BareFnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.g) #24
          to label %bb.g unwind label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2a_17derive_belongs_to0EEs0_0EB2c_.exit: ; preds = %bb.l, %.noexc16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold16fold_return_typeB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.c)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2a_17derive_belongs_to0EEs0_0EB2c_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(80) %i.e) #24
          to label %bb.m unwind label %bb.q

bb.p:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicE3mapBI_NCINvNtNtBM_3gen4fold17fold_type_bare_fnINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2a_17derive_belongs_to0EEs0_0EB2c_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x i32> %i.l, ptr %i.ae, align 8
  store i64 %storemerge.i, ptr %0, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.323.0, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.u, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  ret void

bb.q:                                             ; preds = %bb.s, %bb.h, %bb.e, %bb.x, %bb.v, %.noexc13.thread, %bb.o, %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

.noexc13:                                         ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty3AbiEECsluMP4ekZjHw_14diesel_derives.exit
  br i1 %.sroa.02.1, label %.noexc13.thread, label %bb.t

bb.r:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %2, align 8, !range !33, !noundef !16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val9 = load ptr, ptr %i.am, align 8           ; 2 uses
  %3 = icmp eq i64 %.val, 0
  %4 = icmp eq ptr %.val9, null
  %or.cond.i17 = select i1 %3, i1 true, i1 %4
  br i1 %or.cond.i17, label %.noexc13.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3lit7LitReprEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %.val9)
          to label %.noexc13.thread unwind label %bb.q

bb.t:                                             ; preds = %.noexc13.thread, %.noexc13
  %.pn.pn.pn.pn3551 = phi { ptr, i32 } [ %.pn.pn.pn.pn3552, %.noexc13.thread ], [ %.pn.pn.pn, %.noexc13 ]
  %.sroa.01.03949 = phi i1 [ %.sroa.01.03950, %.noexc13.thread ], [ %.sroa.01.1, %.noexc13 ]
  %.sroa.0.04147 = phi i1 [ %.sroa.0.04148, %.noexc13.thread ], [ %.sroa.0.1, %.noexc13 ]
  br i1 %.sroa.01.03949, label %bb.v, label %bb.u

.noexc13.thread:                                  ; preds = %bb.s, %bb.r, %.noexc13
  %.pn.pn.pn.pn3552 = phi { ptr, i32 } [ %.pn.pn.pn, %.noexc13 ], [ %i.al, %bb.r ], [ %i.al, %bb.s ]
  %.sroa.01.03950 = phi i1 [ %.sroa.01.1, %.noexc13 ], [ true, %bb.r ], [ true, %bb.s ]
  %.sroa.0.04148 = phi i1 [ %.sroa.0.1, %.noexc13 ], [ true, %bb.r ], [ true, %bb.s ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_2ty9BareFnArgNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.an) #24
          to label %bb.t unwind label %bb.q

bb.u:                                             ; preds = %bb.v, %bb.t
  br i1 %.sroa.0.04147, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn2ty12BareVariadicEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(80) %i.ao) #24
          to label %bb.u unwind label %bb.q

bb.w:                                             ; preds = %bb.x, %bb.u
  resume { ptr, i32 } %.pn.pn.pn.pn3551

bb.x:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 192
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16) %i.ap) #24
          to label %bb.w unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold17fold_where_clauseINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBT_17derive_belongs_to0EEBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 8, !noundef !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RINvNtCshMFl0SviwmK_3syn10punctuated4foldNtNtB4_8generics14WherePredicateNtNtB4_5token5CommaINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB1v_17derive_belongs_to0ENvYB1s_NtNtNtB4_3gen4fold4Fold20fold_where_predicateEB1x_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.c, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold18fold_bare_variadicINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBU_17derive_belongs_to0EEBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.3 = alloca [15 x i8], align 1            ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold15fold_attributesB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.29.0.copyload = load i8, ptr %.sroa.29.0..sroa_idx, align 8 ; 2 uses
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.314.0.copyload = load i32, ptr %.sroa.314.0..sroa_idx, align 8
  %.not.i = icmp eq i8 %.sroa.29.0.copyload, -1
  br i1 %.not.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionTNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5token5ColonEE3mapBI_NCINvNtNtB1m_3gen4fold18fold_bare_variadicINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2I_17derive_belongs_to0EE0EB2K_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2345
  call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.29.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.29.0.copyload, ptr %.sroa.29.0..sroa_idx10, align 8, !noalias !2347
  %.sroa.312.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.312.0..sroa_idx13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.312.0..sroa_idx, i64 7, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold10fold_identB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.314.0.copyload, ptr %i.f, align 8, !alias.scope !2346, !noalias !2345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !2348
  %.sroa.2.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0.copyload6 = load i8, ptr %.sroa.2.0..sroa_idx5, align 8, !noalias !2348
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx7, i64 15, i1 false), !noalias !2348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2345
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionTNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5token5ColonEE3mapBI_NCINvNtNtB1m_3gen4fold18fold_bare_variadicINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2I_17derive_belongs_to0EE0EB2K_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.f unwind label %bb.e

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionTNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5token5ColonEE3mapBI_NCINvNtNtB1m_3gen4fold18fold_bare_variadicINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2I_17derive_belongs_to0EE0EB2K_.exit: ; preds = %.noexc, %bb.b
  %.sroa.2.0 = phi i8 [ %.sroa.2.0.copyload6, %.noexc ], [ -1, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.2.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3, i64 15, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.copyload, ptr %i.l, align 8
  ret void

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  %.pn17 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5token5ColonEEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.o) #24
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshMFl0SviwmK_3syn3gen4fold18fold_expr_continueINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvBU_17derive_belongs_to0EEBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvYINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB5_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold15fold_attributesB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = load i32, ptr %i.e, align 8, !noundef !16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  %.not.i = icmp eq i8 %.sroa.2.0.copyload, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.2.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx3, align 8, !noalias !2359
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx5, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx, i64 15, i1 false)
  invoke void @_RNvXs_NtCsluMP4ekZjHw_14diesel_derives12associationsINtB4_20ReplacePathLifetimesNCNvB4_17derive_belongs_to0ENtNtNtCshMFl0SviwmK_3syn3gen4fold4Fold13fold_lifetimeB6_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2358
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeE3mapBI_NCINvNtNtBM_3gen4fold18fold_expr_continueINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2c_17derive_belongs_to0EE0EB2e_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 -1, ptr %i.h, align 8, !alias.scope !2357
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeE3mapBI_NCINvNtNtBM_3gen4fold18fold_expr_continueINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2c_17derive_belongs_to0EE0EB2e_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.g unwind label %bb.f

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeE3mapBI_NCINvNtNtBM_3gen4fold18fold_expr_continueINtNtCsluMP4ekZjHw_14diesel_derives12associations20ReplacePathLifetimesNCNvB2c_17derive_belongs_to0EE0EB2e_.exit: ; preds = %bb.d, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.f, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.e
end_hunk_3
