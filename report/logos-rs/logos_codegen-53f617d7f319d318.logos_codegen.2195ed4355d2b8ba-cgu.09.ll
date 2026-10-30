Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.09?download=true
inline.NumInlined: 75
inline.NumDeleted: 10
begin_hunk_0_@_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_pathNvB2_16replace_lifetimeEB6_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.backedge11

.backedge11:                                      ; preds = %.backedge11.backedge, %bb.a
  %i.j = invoke align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path11PathSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c)
          to label %bb.d unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.s, %bb.k, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.k, %bb.c ], [ %i.ag, %bb.s ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path11PathSegmentEEBG_(ptr nonnull align 8 %i.c) #16
          to label %bb.y unwind label %bb.p

bb.c:                                             ; preds = %bb.x, %bb.v, %bb.n, %bb.i, %bb.h, %.backedge11
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.backedge11
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8              ; 2 uses
  %i.m = xor i64 %i.l, -9223372036854775808
  %i.n = icmp slt i64 %i.l, 0
  %i.o = select i1 %i.n, i64 %i.m, i64 2
  switch i64 %i.o, label %bb.g [
    i64 0, label %.backedge11.backedge
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

.backedge11.backedge:                             ; preds = %bb.e, %bb.n, %bb.w, %bb.x
  br label %.backedge11

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path11PathSegmentEEBG_(ptr nonnull align 8 %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = invoke { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.p)
          to label %bb.j unwind label %bb.c       ; 2 uses

bb.i:                                             ; preds = %bb.e
  %i.r = invoke { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.j)
          to label %bb.q unwind label %bb.c       ; 2 uses

bb.j:                                             ; preds = %bb.h
  %i.s = extractvalue { ptr, ptr } %i.q, 0
  %i.t = extractvalue { ptr, ptr } %i.q, 1
  store ptr %i.s, ptr %i.b, align 8
  store ptr %i.t, ptr %i.i, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.j
  %i.u = invoke align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b)
          to label %bb.l unwind label %bb.k       ; 4 uses

bb.k:                                             ; preds = %.invoke, %.backedge
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b) #16
          to label %bb.b unwind label %bb.p

bb.l:                                             ; preds = %.backedge
  %.not9 = icmp eq ptr %i.u, null
  br i1 %.not9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8              ; 2 uses
  %i.x = add i64 %i.w, -17
  %i.y = icmp ugt i64 %i.w, 16
  %i.z = select i1 %i.y, i64 %i.x, i64 3
  switch i64 %i.z, label %.backedge.backedge [
    i64 1, label %bb.o
    i64 3, label %.invoke
  ]

bb.n:                                             ; preds = %bb.l
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b)
          to label %.backedge11.backedge unwind label %bb.c

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %.invoke

.invoke:                                          ; preds = %bb.m, %bb.o
  %i.ab = phi ptr [ %i.aa, %bb.o ], [ %i.u, %bb.m ]
  invoke fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNvB2_16replace_lifetimeEB6_(ptr nonnull align 8 %i.ab, ptr %1)
          to label %.backedge.backedge unwind label %bb.k

.backedge.backedge:                               ; preds = %.invoke, %bb.m
  br label %.backedge

bb.p:                                             ; preds = %bb.s, %bb.k, %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.q:                                             ; preds = %bb.i
  %i.ad = extractvalue { ptr, ptr } %i.r, 0
  %i.ae = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.ad, ptr %i.a, align 8
  store ptr %i.ae, ptr %i.h, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %i.af = invoke align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_2ty4TypeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_2ty4TypeEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #16
          to label %bb.b unwind label %bb.p

bb.t:                                             ; preds = %bb.r
  %.not7 = icmp eq ptr %i.af, null
  br i1 %.not7, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNvB2_16replace_lifetimeEB6_(ptr nonnull align 8 %i.af, ptr %1)
          to label %bb.r unwind label %bb.s

bb.v:                                             ; preds = %bb.t
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_2ty4TypeEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
          to label %bb.w unwind label %bb.c

bb.w:                                             ; preds = %bb.v
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not8 = icmp eq ptr %i.ai, null
  br i1 %.not8, label %.backedge11.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNvB2_16replace_lifetimeEB6_(ptr nonnull align 8 %i.ai, ptr %1)
          to label %.backedge11.backedge unwind label %bb.c

bb.y:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [224 x i8], align 8               ; 5 uses
  %i.c = alloca [224 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp eq i64 %i.e, 10
  br i1 %i.f, label %bb.b, label %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = tail call zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCshx33xqnyVJN_3syn4path5QSelfE7is_noneBL_(ptr nonnull align 8 %i.g) #18
  br i1 %i.h, label %bb.c, label %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call { ptr, ptr } @_RNvXsh_NtCsexYYUdYSQU6_5alloc3vecRINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtCskKLDkoKarTP_4core6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEENtNtNtNtB1l_4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.k), !noalias !7 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  store ptr %i.m, ptr %i.a, align 8, !noalias !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.o, align 8, !noalias !7
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtBa_6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #18, !noalias !7 ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call zeroext i1 @_RINvMs_NtCshx33xqnyVJN_3syn4pathNtB5_4Path8is_identNtCsgSMwPvzVUxY_11proc_macro25IdentECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.p), !noalias !7
  br i1 %i.q, label %_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find.exit.i, label %bb.d

_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find.exit.thread.i: ; preds = %bb.d
  store i64 -1, ptr %i.c, align 8, !alias.scope !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit

_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find.exit.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeENtNtB7_5clone5Clone5cloneBO_(ptr nonnull sret([224 x i8]) align 8 %i.c, ptr nonnull align 8 %i.r) #18
  %.pr.i = load i64, ptr %i.c, align 8
  %2 = icmp eq i64 %.pr.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %2, label %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn2ty4TypeEBF_(ptr nonnull align 8 %0)
          to label %bb.h unwind label %bb.g

common.resume:                                    ; preds = %bb.u, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.ay, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.b, i64 224, i1 false)
  br label %common.resume

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.b, i64 224, i1 false)
  br label %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit

_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit: ; preds = %bb.a, %bb.b, %_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find.exit.thread.i, %_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find.exit.i, %bb.h
  call void @_RNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime(ptr nonnull align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = load i64, ptr %0, align 8                ; 2 uses
  %i.u = add i64 %i.t, -2
  %i.v = icmp ugt i64 %i.t, 1
  %i.w = select i1 %i.v, i64 %i.u, i64 1
  switch i64 %i.w, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 7, label %bb.m
    i64 8, label %bb.n
    i64 9, label %bb.o
    i64 10, label %bb.p
    i64 11, label %bb.q
    i64 12, label %bb.r
    i64 13, label %bb.s
  ]

bb.i:                                             ; preds = %bb.y, %bb.x, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  ret void

bb.j:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load ptr, ptr %i.x, align 8
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr align 8 %i.y, ptr align 8 %1)
  br label %bb.i

bb.k:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = call { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.z) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  store ptr %i.ab, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  br label %bb.t

bb.l:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr align 8 %i.af, ptr align 8 %1)
  br label %bb.i

bb.m:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr align 8 %i.ah, ptr align 8 %1)
  br label %bb.i

bb.n:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_pathNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr nonnull align 8 %i.ai, ptr align 8 %1)
  br label %bb.i

bb.o:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr align 8 %i.ak, ptr align 8 %1)
  br label %bb.i

bb.p:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr align 8 %i.am, ptr align 8 %1)
  br label %bb.i

bb.q:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr align 8 %i.ao, ptr align 8 %1)
  br label %bb.i

bb.r:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = call { ptr, ptr } @_RNvMNtCshx33xqnyVJN_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.ap) ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  call void @_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_8generics14TypeParamBoundENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB2s_NtB2s_6Parser8get_type0E0EB2u_(ptr %i.ar, ptr align 8 %i.as, ptr align 8 %1) #18
  br label %bb.i

bb.s:                                             ; preds = %_RNCNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6Parser8get_type0B6_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = call { ptr, ptr } @_RNvMNtCshx33xqnyVJN_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.at) ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  call void @_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_2ty4TypeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB2b_NtB2b_6Parser8get_type0Es_0EB2d_(ptr %i.av, ptr align 8 %i.aw, ptr align 8 %1) #18
  br label %bb.i

bb.t:                                             ; preds = %bb.w, %bb.k
  %i.ax = invoke align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_2ty9BareFnArgENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.d)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.w, %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_2ty9BareFnArgEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.d) #16
          to label %common.resume unwind label %bb.z

bb.v:                                             ; preds = %bb.t
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr nonnull align 8 %i.ax, ptr align 8 %1)
          to label %bb.t unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_2ty9BareFnArgEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.d)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not3 = icmp eq ptr %i.ba, null
  br i1 %.not3, label %bb.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNCNvMB4_NtB4_6Parser8get_type0EB6_(ptr nonnull align 8 %i.ba, ptr align 8 %1)
  br label %bb.i

bb.z:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNvB2_16replace_lifetimeEB6_(ptr align 8 %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 8 uses
  tail call void @_RNvYNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimeINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTQNtNtCshx33xqnyVJN_3syn2ty4TypeEE8call_mutB8_(ptr %1, ptr align 8 %.tr) #18
  %i.b = load i64, ptr %.tr, align 8              ; 2 uses
  %i.c = add i64 %i.b, -2
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %.loopexit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %tailrecurse.backedge
    i64 7, label %tailrecurse.backedge
    i64 8, label %bb.d
    i64 9, label %bb.e
    i64 10, label %bb.f
    i64 11, label %tailrecurse.backedge
    i64 12, label %bb.g
    i64 13, label %bb.h
  ]

.loopexit:                                        ; preds = %tailrecurse, %bb.n, %bb.m, %bb.h, %bb.g, %bb.d
  ret void

bb.b:                                             ; preds = %tailrecurse
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %bb.b, %bb.e, %bb.f
  %.sink = phi i64 [ 184, %bb.b ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 24, %bb.e ], [ 48, %bb.f ], [ 8, %tailrecurse ]
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.f, align 8
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.h = tail call { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.g) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.i

bb.d:                                             ; preds = %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_pathNvB2_16replace_lifetimeEB6_(ptr nonnull align 8 %i.l, ptr %1)
  br label %.loopexit

end_hunk_0
begin_hunk_1_@_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser13parse_generic:bb.a

bb.l:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #16
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RNvXs0_NtCs36YJ3mR2EUy_5quote7spannedNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtB5_7Spanned6___spanCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = invoke i32 @_RNvNtCs36YJ3mR2EUy_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
          to label %bb.z unwind label %bb.y

bb.n:                                             ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit, %bb.u, %_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams17explicit_lifetime.exit
  ret void

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshx33xqnyVJN_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ae) #16
          to label %bb.w unwind label %bb.v

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshx33xqnyVJN_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.af)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr nonnull align 8 %i.ah) #16
          to label %bb.s unwind label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr nonnull align 8 %i.ai)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.t ], [ %i.ag, %bb.q ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEB11_(ptr nonnull align 8 %i.h) #16
          to label %common.resume unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEB11_(ptr nonnull align 8 %i.h)
  br label %bb.n

bb.v:                                             ; preds = %.body, %bb.x, %bb.w, %bb.s, %bb.q, %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr nonnull align 8 %i.al) #16
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEB11_(ptr nonnull align 8 %i.h) #16
          to label %common.resume unwind label %bb.v

bb.y:                                             ; preds = %bb.z, %_RNvXs0_NtCs36YJ3mR2EUy_5quote7spannedNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtB5_7Spanned6___spanCs2SM5xCHwwDm_13logos_codegen.exit.i, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.y ], [ %i.aa, %bb.l ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn8generics10ConstParamEBF_(ptr nonnull align 8 %i.g) #16
          to label %common.resume unwind label %bb.v

bb.z:                                             ; preds = %_RNvXs0_NtCs36YJ3mR2EUy_5quote7spannedNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtB5_7Spanned6___spanCs2SM5xCHwwDm_13logos_codegen.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %0, ptr nonnull @1, i64 37, i32 %i.ac)
          to label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit unwind label %bb.y ; 0 uses

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit: ; preds = %bb.z
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn8generics10ConstParamEBF_(ptr nonnull align 8 %i.g)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser13parse_literal(ptr align 8 %0, ptr nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 8)
  switch i64 %i.c, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

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
  br i1 %.sroa.030.3101, label %.thread114, label %.thread

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
  %i.ai = load i32, ptr %i.h, align 8
  switch i32 %i.ai, label %bb.aa [
    i32 -1, label %bb.w
    i32 0, label %bb.z
  ]

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

bb.z:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  invoke void @_RNvMsn_CsgSMwPvzVUxY_11proc_macro2NtB5_5Group6stream(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.g)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.v
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
  %i.as = phi i1 [ false, %.thread102 ], [ true, %bb.ad ], [ true, %bb.ah ] ; 2 uses
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
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.as, label %.thread114, label %.thread

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  br i1 %i.as, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.t)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.au, %bb.j, %bb.ai
  ret void

bb.al:                                            ; preds = %bb.ah
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.i) #16
          to label %bb.ao unwind label %bb.k

bb.am:                                            ; preds = %bb.x
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.h) #16
          to label %bb.ao unwind label %bb.k

bb.an:                                            ; preds = %bb.q
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y) #16
          to label %bb.ao unwind label %bb.k

bb.ao:                                            ; preds = %bb.u, %bb.x, %bb.al, %bb.am, %bb.an, %bb.q, %bb.q, %bb.af
  %.pn46103 = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.au, %bb.al ], [ %i.ar, %bb.af ], [ %.pn, %bb.x ], [ %.pn, %bb.am ], [ %i.ah, %bb.u ], [ %i.ae, %bb.q ], [ %i.ae, %bb.an ] ; 2 uses
  %.sroa.030.3101 = phi i1 [ true, %bb.q ], [ true, %bb.al ], [ false, %bb.af ], [ true, %bb.x ], [ true, %bb.am ], [ true, %bb.u ], [ true, %bb.q ], [ true, %bb.an ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.k) #16
          to label %bb.c unwind label %bb.k

bb.ap:                                            ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.j) #16
          to label %bb.ax unwind label %bb.k

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit: ; preds = %bb.o
  store i64 -3, ptr %0, align 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.j)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ax = load i32, ptr %i.y, align 8
  switch i32 %i.ax, label %bb.av [
    i32 -1, label %.thread114
    i32 1, label %bb.aw
  ]

bb.ar:                                            ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit
  %i.ay = load i32, ptr %i.y, align 8
  switch i32 %i.ay, label %bb.as [
    i32 -1, label %bb.au
    i32 1, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y)
          to label %bb.au unwind label %.thread87

bb.at:                                            ; preds = %bb.ar
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %.invoke

.invoke:                                          ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit60, %bb.at
  %i.ba = phi ptr [ %i.az, %bb.at ], [ %i.k, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit60 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ba)
          to label %bb.au unwind label %.thread87

bb.au:                                            ; preds = %.invoke, %bb.ar, %bb.as
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.t)
  br label %bb.ak

bb.av:                                            ; preds = %bb.aq
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y) #16
          to label %.thread114 unwind label %bb.k

bb.aw:                                            ; preds = %bb.aq
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.bb) #16
          to label %.thread114 unwind label %bb.k

bb.ax:                                            ; preds = %bb.ap
  %i.bc = load i32, ptr %i.y, align 8
  switch i32 %i.bc, label %bb.ay [
    i32 -1, label %.thread114
    i32 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y) #16
          to label %.thread114 unwind label %bb.k

bb.az:                                            ; preds = %bb.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.bd) #16
          to label %.thread114 unwind label %bb.k

bb.ba:                                            ; preds = %bb.l, %bb.m
  %lpad.thr_comm.split-lp86 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.n) #16
          to label %.thread114 unwind label %bb.k

.thread114:                                       ; preds = %.split, %bb.ay, %bb.az, %bb.aq, %bb.av, %bb.aw, %bb.ax, %.thread87, %bb.ba, %bb.c
  %.pn5272 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp86, %bb.ba ], [ %.pn46103, %bb.c ], [ %i.av, %bb.ay ], [ %i.av, %bb.az ], [ %i.aw, %bb.aq ], [ %i.aw, %bb.av ], [ %i.aw, %bb.aw ], [ %i.av, %bb.ax ], [ %lpad.thr_comm85, %.thread87 ], [ %i.at, %.split ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.t) #16
          to label %.thread unwind label %bb.k

.thread:                                          ; preds = %.split, %bb.i, %bb.c, %.thread114, %bb.bb
  %.pn5463 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %lpad.thr_comm.split-lp, %bb.bb ], [ %.pn46103, %bb.c ], [ %.pn5272, %.thread114 ], [ %i.at, %.split ]
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

bb.f:                                             ; preds = %.backedge266
  %i.dm = load i64, ptr %i.ce, align 8            ; 3 uses
  %.not56 = icmp eq i64 %i.dm, -2
  br i1 %.not56, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dn = add i64 %i.dm, 9223372036854775805      ; 2 uses
  %i.do = icmp ugt i64 %i.dn, 2
  %i.dp = icmp eq i64 %i.dn, 1
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested15AttributeParserEBH_(ptr nonnull align 8 %i.cf)
  br label %bb.b

.loopexit:                                        ; preds = %bb.eg
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  store i64 %i.dm, ptr %i.cc, align 8
  %i.dr = invoke i32 @_RNvMst_CsgSMwPvzVUxY_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.cd)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, i64 32, i1 false)
  %i.ds = invoke i32 @_RNvXNtCshx33xqnyVJN_3syn7spannedNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB2_7Spanned4spanCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.cb)
          to label %bb.gf unwind label %bb.ge

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested11NestedValueEBH_(ptr nonnull align 8 %i.cc) #16
          to label %bb.gd unwind label %bb.bf

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCsgSMwPvzVUxY_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.ca, ptr nonnull align 8 %i.cd)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.du = invoke { ptr, i64 } @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6as_strCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.ca)
          to label %bb.o unwind label %bb.n       ; 2 uses

.thread:                                          ; preds = %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp, %bb.fa, %bb.el, %.critedge, %bb.ds, %.thread195, %bb.de, %bb.dk, %bb.ck, %bb.bj, %bb.ba, %bb.fm, %bb.fk, %bb.dv, %bb.dl, %bb.cn, %bb.cf, %.thread146, %bb.bg, %bb.n
  %.sroa.040.0 = phi i1 [ false, %bb.fm ], [ true, %bb.n ], [ false, %bb.dv ], [ false, %.thread195 ], [ true, %bb.fk ], [ false, %bb.ds ], [ false, %bb.dl ], [ true, %.critedge ], [ false, %bb.cn ], [ true, %bb.el ], [ true, %bb.cf ], [ false, %bb.de ], [ true, %.thread146 ], [ true, %bb.bj ], [ false, %bb.bg ], [ true, %bb.fa ], [ false, %bb.ba ], [ false, %bb.ck ], [ false, %bb.dk ], [ true, %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.038.0 = phi i1 [ true, %bb.fm ], [ true, %bb.n ], [ true, %bb.dv ], [ true, %.thread195 ], [ false, %bb.fk ], [ true, %bb.ds ], [ true, %bb.dl ], [ false, %.critedge ], [ true, %bb.cn ], [ false, %bb.el ], [ false, %bb.cf ], [ true, %bb.de ], [ true, %.thread146 ], [ true, %bb.bj ], [ true, %bb.bg ], [ false, %bb.fa ], [ true, %bb.ba ], [ true, %bb.ck ], [ true, %bb.dk ], [ false, %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.036.0 = phi i1 [ true, %bb.fm ], [ %.sroa.036.1, %bb.n ], [ true, %bb.dv ], [ true, %.thread195 ], [ true, %bb.fk ], [ true, %bb.ds ], [ true, %bb.dl ], [ true, %.critedge ], [ true, %bb.cn ], [ true, %bb.el ], [ true, %bb.cf ], [ true, %bb.de ], [ true, %.thread146 ], [ true, %bb.bj ], [ true, %bb.bg ], [ true, %bb.fa ], [ true, %bb.ba ], [ true, %bb.ck ], [ true, %bb.dk ], [ true, %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.031.0 = phi i1 [ true, %bb.fm ], [ %.sroa.031.1, %bb.n ], [ true, %bb.dv ], [ true, %.thread195 ], [ true, %bb.fk ], [ true, %bb.ds ], [ true, %bb.dl ], [ true, %.critedge ], [ true, %bb.cn ], [ true, %bb.el ], [ true, %bb.cf ], [ true, %bb.de ], [ false, %.thread146 ], [ false, %bb.bj ], [ true, %bb.bg ], [ true, %bb.fa ], [ true, %bb.ba ], [ true, %bb.ck ], [ true, %bb.dk ], [ true, %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp ]
  %.pn96 = phi { ptr, i32 } [ %i.ix, %bb.fm ], [ %i.dx, %bb.n ], [ %lpad.thr_comm.split-lp194, %bb.dv ], [ %lpad.thr_comm193, %.thread195 ], [ %lpad.thr_comm.split-lp205, %bb.fk ], [ %i.hs, %bb.ds ], [ %lpad.thr_comm.split-lp184, %bb.dl ], [ %.pn89, %.critedge ], [ %lpad.thr_comm.split-lp173, %bb.cn ], [ %i.ig, %bb.el ], [ %lpad.thr_comm.split-lp163, %bb.cf ], [ %.pn73, %bb.de ], [ %.pn63149, %.thread146 ], [ %lpad.thr_comm.split-lp153, %bb.bj ], [ %lpad.thr_comm.split-lp, %bb.bg ], [ %.pn83.pn216, %bb.fa ], [ %i.fs, %bb.ba ], [ %i.gp, %bb.ck ], [ %.pn73, %bb.dk ], [ %lpad.loopexit.split-lp375, %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp ] ; 6 uses
  %i.dv = load i64, ptr %i.cc, align 8
  %i.dw = xor i64 %i.dv, -9223372036854775808
  switch i64 %i.dw, label %bb.fx [
    i64 0, label %bb.fy
    i64 1, label %bb.fz
    i64 2, label %bb.ga
  ]

bb.n:                                             ; preds = %.invoke, %bb.ar, %bb.bz, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bh, %bb.aq, %bb.ap, %bb.an, %bb.ak, %bb.ah, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.o, %bb.m
  %.sroa.036.1 = phi i1 [ true, %.invoke ], [ true, %bb.o ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.w ], [ false, %bb.bz ], [ false, %bb.by ], [ false, %bb.bw ], [ false, %bb.bu ], [ true, %bb.ah ], [ true, %bb.bs ], [ true, %bb.z ], [ true, %bb.bh ], [ true, %bb.ac ], [ true, %bb.af ], [ true, %bb.ar ], [ true, %bb.m ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.an ], [ true, %bb.ak ]
  %.sroa.031.1 = phi i1 [ true, %.invoke ], [ true, %bb.o ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.w ], [ true, %bb.bz ], [ true, %bb.by ], [ true, %bb.bw ], [ true, %bb.bu ], [ true, %bb.ah ], [ false, %bb.bs ], [ true, %bb.z ], [ false, %bb.bh ], [ true, %bb.ac ], [ true, %bb.af ], [ true, %bb.ar ], [ true, %bb.m ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.an ], [ true, %bb.ak ]
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.dy = extractvalue { ptr, i64 } %i.du, 0      ; 10 uses
  %i.dz = extractvalue { ptr, i64 } %i.du, 1      ; 10 uses
  %i.ea = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @9, i64 5)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  br i1 %i.ea, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eb = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @10, i64 5)
          to label %bb.s unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.ec = load i64, ptr %i.cc, align 8
  %i.ed = icmp eq i64 %i.ec, -9223372036854775808
  br i1 %i.ed, label %bb.fl, label %.invoke

bb.s:                                             ; preds = %bb.q
  br i1 %i.eb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @11, i64 10)
          to label %bb.v unwind label %bb.n

bb.u:                                             ; preds = %bb.s
  %i.ef = load i64, ptr %i.cc, align 8
  %i.eg = xor i64 %i.ef, -9223372036854775808
  %i.eh = call i64 @llvm.umin.i64(i64 %i.eg, i64 3)
  switch i64 %i.eh, label %.invoke [
    i64 0, label %bb.dm
    i64 2, label %bb.dn
  ]

bb.v:                                             ; preds = %bb.t
  br i1 %i.ee, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @12, i64 6)
          to label %bb.y unwind label %bb.n

bb.x:                                             ; preds = %bb.v
  %i.ej = load i64, ptr %i.cc, align 8
  %i.ek = icmp eq i64 %i.ej, -9223372036854775808
  br i1 %i.ek, label %bb.co, label %.invoke

bb.y:                                             ; preds = %bb.w
  br i1 %i.ei, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @13, i64 4)
          to label %bb.ab unwind label %bb.n

bb.aa:                                            ; preds = %bb.y
  %i.em = load i64, ptr %i.cc, align 8
  %i.en = icmp eq i64 %i.em, -9223372036854775808
  br i1 %i.en, label %bb.cg, label %.invoke

bb.ab:                                            ; preds = %bb.z
  br i1 %i.el, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @14, i64 6)
          to label %bb.ae unwind label %bb.n

bb.ad:                                            ; preds = %bb.ab
  %i.ep = load i64, ptr %i.cc, align 8
  %i.eq = xor i64 %i.ep, -9223372036854775808
  %i.er = call i64 @llvm.umin.i64(i64 %i.eq, i64 3)
  switch i64 %i.er, label %.invoke [
    i64 1, label %bb.bu
    i64 2, label %bb.bv
  ]

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.eo, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @15, i64 10)
          to label %bb.ag unwind label %bb.n

bb.ag:                                            ; preds = %bb.af
  br i1 %i.es, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @16, i64 4)
          to label %bb.aj unwind label %bb.n

bb.ai:                                            ; preds = %bb.ag
  %i.eu = load i64, ptr %i.cc, align 8
  %i.ev = icmp sgt i64 %i.eu, -9223372036854775806
  br i1 %i.ev, label %bb.bi, label %.invoke

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.et, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.dy, i64 %i.dz, ptr nonnull @17, i64 4)
          to label %bb.am unwind label %bb.n

bb.al:                                            ; preds = %bb.aj
  %i.ex = load i64, ptr %i.cc, align 8
  %i.ey = icmp sgt i64 %i.ex, -9223372036854775806
  br i1 %i.ey, label %bb.bh, label %.invoke

bb.am:                                            ; preds = %bb.ak
  br i1 %i.ew, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.dy, ptr %i.u, align 8, !captures !4
  store i64 %i.dz, ptr %i.co, align 8
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs8UJyeeIGyGC_12regex_syntax(ptr nonnull sret([16 x i8]) align 8 %i.r, ptr nonnull align 8 %i.u)
          to label %bb.ap unwind label %bb.n

bb.ao:                                            ; preds = %bb.am
  %i.ez = load i64, ptr %i.cc, align 8
  %i.fa = icmp eq i64 %i.ez, -9223372036854775808
  br i1 %i.fa, label %bb.as, label %.invoke

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.fb = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj27_Kj1_ECsaKDqXqZWSq0_14regex_automata(ptr nonnull @18, ptr nonnull align 8 %i.s)
          to label %bb.aq unwind label %bb.n      ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.fc = extractvalue { ptr, ptr } %i.fb, 0
  %i.fd = extractvalue { ptr, ptr } %i.fb, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.t, ptr %i.fc, ptr %i.fd)
          to label %bb.ar unwind label %bb.n

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.fe = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr align 8 %0, ptr nonnull align 8 %i.e, i32 %i.dr)
          to label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit unwind label %bb.n ; 0 uses

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit: ; preds = %.invoke, %bb.bm, %bb.ce, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit, %bb.ej, %bb.en, %bb.dq, %bb.du, %bb.dj, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit112, %bb.ci, %bb.cm, %bb.cd, %bb.bs, %bb.ax, %bb.be, %bb.az, %bb.bz, %bb.bh, %bb.fn, %bb.bx
  %.sroa.040.1 = phi i1 [ false, %bb.fn ], [ true, %bb.en ], [ false, %bb.du ], [ true, %bb.bm ], [ false, %bb.dq ], [ false, %bb.ci ], [ false, %bb.dj ], [ true, %bb.cd ], [ true, %bb.ce ], [ false, %bb.cm ], [ true, %bb.bz ], [ true, %bb.bx ], [ true, %.invoke ], [ true, %bb.ej ], [ false, %bb.ax ], [ false, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit112 ], [ true, %bb.bh ], [ true, %bb.bs ], [ true, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit ], [ false, %bb.be ], [ false, %bb.az ]
  %.sroa.038.1 = phi i1 [ true, %bb.fn ], [ false, %bb.en ], [ true, %bb.du ], [ true, %bb.bm ], [ true, %bb.dq ], [ true, %bb.ci ], [ true, %bb.dj ], [ false, %bb.cd ], [ false, %bb.ce ], [ true, %bb.cm ], [ true, %bb.bz ], [ true, %bb.bx ], [ true, %.invoke ], [ false, %bb.ej ], [ true, %bb.ax ], [ true, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit112 ], [ true, %bb.bh ], [ true, %bb.bs ], [ true, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit ], [ true, %bb.be ], [ true, %bb.az ]
  %.sroa.036.2 = phi i1 [ true, %bb.fn ], [ true, %bb.en ], [ true, %bb.du ], [ true, %bb.bm ], [ true, %bb.dq ], [ true, %bb.ci ], [ true, %bb.dj ], [ true, %bb.cd ], [ true, %bb.ce ], [ true, %bb.cm ], [ false, %bb.bz ], [ false, %bb.bx ], [ true, %.invoke ], [ true, %bb.ej ], [ true, %bb.ax ], [ true, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit112 ], [ true, %bb.bh ], [ true, %bb.bs ], [ true, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit ], [ true, %bb.be ], [ true, %bb.az ]
  %.sroa.031.2 = phi i1 [ true, %bb.fn ], [ true, %bb.en ], [ true, %bb.du ], [ false, %bb.bm ], [ true, %bb.dq ], [ true, %bb.ci ], [ true, %bb.dj ], [ true, %bb.cd ], [ true, %bb.ce ], [ true, %bb.cm ], [ true, %bb.bz ], [ true, %bb.bx ], [ true, %.invoke ], [ true, %bb.ej ], [ true, %bb.ax ], [ true, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit112 ], [ false, %bb.bh ], [ false, %bb.bs ], [ true, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit ], [ true, %bb.be ], [ true, %bb.az ]
  %i.ff = load i64, ptr %i.cc, align 8
  %i.fg = xor i64 %i.ff, -9223372036854775808
  switch i64 %i.fg, label %bb.fr [
    i64 0, label %bb.fo
    i64 1, label %bb.fp
    i64 2, label %bb.fq
  ]

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.sroa.2.0..sroa_idx, i64 32, i1 false)
  %i.fh = invoke i32 @_RNvXNtCshx33xqnyVJN_3syn7spannedNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB2_7Spanned4spanCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.ac)
          to label %bb.at unwind label %bb.bg     ; 2 uses

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  invoke void @_RINvCshx33xqnyVJN_3syn6parse2NtNtB2_3lit7LitBoolECs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.aa)
          to label %bb.au unwind label %.thread195

bb.au:                                            ; preds = %bb.at
  %i.fi = load i64, ptr %i.ab, align 8
  %.not57 = icmp eq i64 %i.fi, -1
  br i1 %.not57, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCshx33xqnyVJN_3syn5error5ErrorECs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 8 %i.v, ptr nonnull align 8 %i.y)
          to label %bb.bb unwind label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.fj = load i32, ptr %i.cp, align 8
  %i.fk = load i8, ptr %i.cq, align 4
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = invoke { i32, i8 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCshx33xqnyVJN_3syn3lit7LitBoolE7replaceCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.cr, i32 %i.fj, i1 zeroext %i.fl)
          to label %bb.ax unwind label %.thread195 ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.fn = extractvalue { i32, i8 } %i.fm, 1       ; 2 uses
  %.not58 = icmp eq i8 %i.fn, 2
  br i1 %.not58, label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit, label %bb.ay

end_hunk_1
begin_hunk_2_@_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser8get_type:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBz_5token4PlusE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_7IterMutTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBW_5token4PlusEE3newCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) #18
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams3set(ptr align 8 %0, ptr nonnull align 8 %1, ptr nofree nonnull readonly align 8 captures(none) %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  %i.k = alloca [224 x i8], align 8               ; 4 uses
  %i.l = alloca [224 x i8], align 8               ; 2 uses
  %i.m = alloca [224 x i8], align 8               ; 3 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [224 x i8], align 8               ; 4 uses
  %i.r = alloca [224 x i8], align 8               ; 4 uses
  %i.s = alloca [224 x i8], align 8               ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke void @_RINvCshx33xqnyVJN_3syn6parse2NtNtB2_2ty4TypeECs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([224 x i8]) align 8 %i.r, ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %bb.f

.thread19:                                        ; preds = %bb.u, %bb.f, %bb.ad, %.thread, %bb.e
  %.pn14 = phi { ptr, i32 } [ %.pn, %bb.u ], [ %.pn12, %bb.ad ], [ %.pn1018, %.thread ], [ %lpad.thr_comm.split-lp, %bb.f ], [ %i.w, %bb.e ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %1) #16
          to label %bb.aj unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.r, align 8
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCshx33xqnyVJN_3syn5error5ErrorNtB5_8ToString9to_stringBC_(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.p)
          to label %bb.ae unwind label %bb.af

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.q, ptr noundef nonnull align 8 dereferenceable(224) %i.r, i64 224, i1 false)
  invoke fastcc void @_RINvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params13traverse_typeNvB2_16replace_lifetimeEB6_(ptr nonnull align 8 %i.q, ptr nonnull %i.a)
          to label %_RNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params17replace_lifetimes.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.q) #16
          to label %.thread19 unwind label %bb.r

_RNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params17replace_lifetimes.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.s, ptr noundef nonnull align 8 dereferenceable(224) %i.q, i64 224, i1 false)
  %i.x = invoke { ptr, i64 } @_RNvXs9_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtCskKLDkoKarTP_4core6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEENtNtNtB1k_3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0)
          to label %bb.g unwind label %bb.o       ; 2 uses

bb.f:                                             ; preds = %.invoke, %bb.a, %bb.ah, %bb.j
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread19

bb.g:                                             ; preds = %_RNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params17replace_lifetimes.exit
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  %i.aa = invoke { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtB4_6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.y, i64 %i.z)
          to label %bb.h unwind label %bb.o       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  store ptr %i.ab, ptr %i.n, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = invoke align 8 ptr @_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtBb_6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB3b_10TypeParams3set0EB3f_(ptr nonnull align 8 %i.n, ptr nonnull align 8 %1)
          to label %bb.i unwind label %bb.o       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.l, ptr noundef nonnull align 8 dereferenceable(224) %i.s, i64 224, i1 false)
  invoke void @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeE7replaceCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([224 x i8]) align 8 %i.m, ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.l)
          to label %bb.s unwind label %bb.f

bb.k:                                             ; preds = %bb.i
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtCsgSMwPvzVUxY_11proc_macro25IdentECshx33xqnyVJN_3syn(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.ag = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj24_Kj1_ECs2SM5xCHwwDm_13logos_codegen(ptr nonnull @41, ptr nonnull align 8 %i.d)
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %i.ah, ptr %i.ai)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aj = invoke i32 @_RNvMst_CsgSMwPvzVUxY_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %1)
          to label %bb.p unwind label %bb.q

bb.o:                                             ; preds = %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %_RNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params17replace_lifetimes.exit, %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.al = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr align 8 %3, ptr nonnull align 8 %i.f, i32 %i.aj)
          to label %.invoke unwind label %bb.o    ; 0 uses

bb.q:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.f) #16
          to label %.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.ai, %bb.ad, %.thread, %bb.ac, %bb.u, %bb.q, %bb.e, %.thread19
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.s:                                             ; preds = %bb.j
  %i.ao = load i64, ptr %i.m, align 8
  %.not8 = icmp eq i64 %i.ao, -1
  br i1 %.not8, label %.thread29, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.k, ptr noundef nonnull align 8 dereferenceable(224) %i.m, i64 224, i1 false)
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtCsgSMwPvzVUxY_11proc_macro25IdentECshx33xqnyVJN_3syn(ptr nonnull sret([16 x i8]) align 8 %i.g, ptr nonnull align 8 %1)
          to label %bb.v unwind label %bb.y

bb.u:                                             ; preds = %bb.y, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.at, %bb.y ], [ %i.ax, %bb.ac ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.k) #16
          to label %.thread19 unwind label %bb.r

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.ap = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj29_Kj1_ECsaKDqXqZWSq0_14regex_automata(ptr nonnull @42, ptr nonnull align 8 %i.h)
          to label %bb.w unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %i.ar = extractvalue { ptr, ptr } %i.ap, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr %i.aq, ptr %i.ar)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.as = invoke i32 @_RNvMst_CsgSMwPvzVUxY_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %1)
          to label %bb.z unwind label %bb.ac

bb.y:                                             ; preds = %bb.t, %bb.v, %bb.w, %bb.aa, %bb.ab, %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.z:                                             ; preds = %bb.x
  %i.au = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr align 8 %3, ptr nonnull align 8 %i.j, i32 %i.as)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.av = invoke i32 @_RNvXNtCshx33xqnyVJN_3syn7spannedNtNtB4_2ty4TypeNtB2_7Spanned4spanB4_(ptr nonnull align 8 %i.k)
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.aw = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %i.au, ptr nonnull @43, i64 24, i32 %i.av)
          to label %.invoke unwind label %bb.y    ; 0 uses

bb.ac:                                            ; preds = %bb.x
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.j) #16
          to label %bb.u unwind label %bb.r

.invoke:                                          ; preds = %bb.p, %bb.ab
  %i.ay = phi ptr [ %i.k, %bb.ab ], [ %i.s, %bb.p ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.ay)
          to label %.thread29 unwind label %bb.f

.thread29:                                        ; preds = %bb.s, %.invoke, %bb.ah
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %1)
  ret void

.thread:                                          ; preds = %bb.q, %bb.o
  %.pn1018 = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.am, %bb.q ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.s) #16
          to label %.thread19 unwind label %bb.r

bb.ad:                                            ; preds = %bb.af, %bb.ai
  %.pn12 = phi { ptr, i32 } [ %i.bc, %bb.ai ], [ %i.ba, %bb.af ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.p) #16
          to label %.thread19 unwind label %bb.r

bb.ae:                                            ; preds = %bb.c
  %i.az = invoke i32 @_RNvMNtCshx33xqnyVJN_3syn5errorNtB2_5Error4span(ptr nonnull align 8 %i.p)
          to label %bb.ag unwind label %bb.ai

bb.af:                                            ; preds = %bb.c, %bb.ag
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  %i.bb = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr align 8 %3, ptr nonnull align 8 %i.o, i32 %i.az)
          to label %bb.ah unwind label %bb.af     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.p)
          to label %.thread29 unwind label %bb.f

bb.ai:                                            ; preds = %bb.ae
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.o) #16
          to label %bb.ad unwind label %bb.r

bb.aj:                                            ; preds = %.thread19
  resume { ptr, i32 } %.pn14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser12ignore_flagsNtB2_11IgnoreFlags11parse_group(ptr nofree writeonly captures(none) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [16 x i8], align 8                ; 2 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 3 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 13 uses
  %i.t = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke void @_RNvXs0_NtCsgSMwPvzVUxY_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull sret([40 x i8]) align 8 %i.t, ptr nonnull align 8 %i.j)
          to label %.preheader unwind label %bb.z

.preheader:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  invoke void @_RNvXNtCsgSMwPvzVUxY_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.t)
          to label %bb.b unwind label %.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.preheader
  %i.w = load i32, ptr %i.s, align 8
  %cond = icmp eq i32 %i.w, 1
  br i1 %cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCsgSMwPvzVUxY_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.i)
          to label %bb.d unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.x = invoke { ptr, i64 } @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6as_strCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.h)
          to label %bb.e unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 3 uses
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 3 uses
  %i.aa = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.y, i64 %i.z, ptr nonnull @47, i64 4)
          to label %bb.f unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.e
  br i1 %i.aa, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = invoke zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr %i.y, i64 %i.z, ptr nonnull @48, i64 10)
          to label %bb.h unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.y, ptr %i.g, align 8, !captures !4
  store i64 %i.z, ptr %i.v, align 8
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs8UJyeeIGyGC_12regex_syntax(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
          to label %bb.j unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.ac = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj29_Kj1_ECsaKDqXqZWSq0_14regex_automata(ptr nonnull @49, ptr nonnull align 8 %i.d)
          to label %bb.k unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %i.ad, ptr %i.ae)
          to label %bb.l unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.af = invoke i32 @_RNvMst_CsgSMwPvzVUxY_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.i)
          to label %bb.m unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ag = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr align 8 %3, ptr nonnull align 8 %i.b, i32 %i.af)
          to label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit.i.peel unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit.i.peel: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit.i.peel

bb.n:                                             ; preds = %bb.h
  %i.ah = invoke i32 @_RNvMst_CsgSMwPvzVUxY_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.i)
          to label %bb.o unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.ai = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %3, ptr nonnull @50, i64 44, i32 %i.ah)
          to label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit.i.peel unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.f
  store i8 1, ptr %0, align 1
  br label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit.i.peel

_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit.i.peel: ; preds = %bb.p, %bb.o, %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_.exit.i.peel
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.h)
          to label %bb.q unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit.i.peel
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.i)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.aa, label %bb.s, label %_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = load i32, ptr %i.s, align 8
  switch i32 %i.aj, label %bb.t [
    i32 -1, label %bb.u
    i32 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.s)
          to label %bb.u unwind label %.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.s
  invoke void @_RNvXNtCsgSMwPvzVUxY_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.t)
          to label %bb.v unwind label %.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.ak = load i32, ptr %i.r, align 8
  %.not18.peel = icmp eq i32 %i.ak, -1
  br i1 %.not18.peel, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = invoke zeroext i1 @_RNvNtCs2SM5xCHwwDm_13logos_codegen4util8is_punct(ptr nonnull align 8 %i.r, i32 44)
          to label %bb.x unwind label %.loopexit.split-lp84.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  br i1 %i.al, label %.invoke, label %.loopexit88

.invoke:                                          ; preds = %bb.x, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.q)
          to label %.peel.next unwind label %.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.thread24, %bb.z
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %.thread24 ], [ %i.am, %bb.z ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr align 8 %1) #16
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1A_5StateEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_:bb.a
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRAbj100_RjEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter6ChunksTRAbj100_RjEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((8, 16)) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs17_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_6ChunksTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1) #18 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.36.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5LinesENtNtNtB8_6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested15AttributeParserENtNtNtB8_6traits8iterator8Iterator4nextB1d_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((8, 16)) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 3 uses
  call void @_RNvXs0_NtNtCs2SM5xCHwwDm_13logos_codegen6parser6nestedNtB5_15AttributeParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([80 x i8]) align 8 %i.a, ptr align 8 %1)
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8
  store i64 %i.d, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtCshx33xqnyVJN_3syn5parseNvYNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.l = call { ptr, i64 } @_RNvMNtCshx33xqnyVJN_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr %i.m, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.n, ptr %i.o, align 8
  invoke void @_RNvNtCshx33xqnyVJN_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn, %bb.e ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #16
          to label %bb.v unwind label %bb.u

bb.c:                                             ; preds = %.invoke, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn11parse_quote10ParseQuote5parseINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtBP_5parse11ParseBufferEE9call_onceCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.u, %bb.k ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #16
          to label %bb.b unwind label %bb.u

bb.f:                                             ; preds = %.invoke10, %bb.i, %bb.g, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.h, align 8
  %i.s = icmp eq i64 %i.r, -2
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @57)
          to label %.invoke unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvMs9_NtCshx33xqnyVJN_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.i) #16
          to label %bb.e unwind label %bb.u

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCshx33xqnyVJN_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @56)
          to label %.invoke10 unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.w = invoke { ptr, ptr } @_RNvMs9_NtCshx33xqnyVJN_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = invoke { i32, i8 } @_RNvNtCshx33xqnyVJN_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.x, ptr %i.y)
          to label %bb.q unwind label %bb.k       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.aa = extractvalue { i32, i8 } %i.z, 1        ; 2 uses
  %.not6.not = icmp eq i8 %i.aa, -1               ; 2 uses
  br i1 %.not6.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = extractvalue { i32, i8 } %i.z, 0
  invoke void @_RNvNtCshx33xqnyVJN_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ab, i8 %i.aa)
          to label %bb.s unwind label %bb.k

.thread:                                          ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %2

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %2

2:                                                ; preds = %bb.s, %.thread
  br i1 %.not6.not, label %.invoke, label %.invoke10

bb.t:                                             ; preds = %.invoke
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  ret void

.invoke10:                                        ; preds = %bb.n, %2
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.f

.invoke:                                          ; preds = %.invoke10, %bb.i, %2
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.c

bb.u:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.v:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @_RNvXsh_NtNtCskKLDkoKarTP_4core3ops5arithRhINtB5_3AddhE3addCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly captures(none) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = add i8 %i.a, %1
  ret i8 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8
  invoke void @_RNvXs7_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs36YJ3mR2EUy_5quote9to_tokensRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtB2_8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c

_RNvXNtCs36YJ3mR2EUy_5quote9to_tokensRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtB2_8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens17into_token_streamCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXs7_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8
  invoke void @_RNvXs3_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs36YJ3mR2EUy_5quote9to_tokensRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtB2_8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c

_RNvXNtCs36YJ3mR2EUy_5quote9to_tokensRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtB2_8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens17into_token_streamCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXs3_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr align 8, ptr align 8, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8, ptr, i64, i32) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #9

; Function Attrs: inlinehint noreturn nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13panic_displayNtNtCshx33xqnyVJN_3syn5error5ErrorECs2SM5xCHwwDm_13logos_codegen(ptr align 8, ptr align 8) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5error5ErrorEBF_(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path11PathSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path11PathSegmentEEBG_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_2ty4TypeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_2ty4TypeEECs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtCshx33xqnyVJN_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_2ty9BareFnArgENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_2ty9BareFnArgEECs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_3
