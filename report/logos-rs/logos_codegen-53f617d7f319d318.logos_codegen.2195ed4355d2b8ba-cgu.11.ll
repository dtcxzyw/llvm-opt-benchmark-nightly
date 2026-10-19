Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.11?download=true
inline.NumInlined: 257
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCINvXsa_NtCsgSMwPvzVUxY_11proc_macro28fallbackNtB8_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtBa_9TokenTreeE6extendNtNtBa_12token_stream8IntoIterE0Cs2SM5xCHwwDm_13logos_codegen:bb.a
bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB8_9Generator15impl_fork_matchs_00Ba_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.b, align 1
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private12push_and_and(ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #18
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @2, i64 4)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private7push_ne(ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsc_NtCs36YJ3mR2EUy_5quote9to_tokenshNtB5_8ToTokens9to_tokens(ptr nonnull %i.b, ptr nonnull align 8 %i.a)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB13_9ByteClassNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0B15_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsv_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_5StateNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_(ptr align 8 %1, ptr align 8 %i.a) #17
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB14_5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0B16_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB7_9PartialEq2eqBH_(ptr align 8 %1, ptr align 8 %i.a) #17
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB6_9Generator15impl_fork_match0B8_(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs5_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_11Comparisons9count_ops(ptr align 8 %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB6_9Generator15impl_fork_matchs_0B8_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 2 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 3 uses
  %i.r = alloca [3 x i8], align 1                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.r, ptr noundef nonnull align 8 dereferenceable(3) %i.s, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.t = invoke ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE5startCsaKDqXqZWSq0_14regex_automata(ptr nonnull %i.r)
          to label %bb.c unwind label %.split.thread

bb.b:                                             ; preds = %bb.e
  br i1 %.sroa.02.2, label %bb.az, label %bb.ay

.split.thread:                                    ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.u = load i8, ptr %i.t, align 1
  invoke void @_RNvNtCs2SM5xCHwwDm_13logos_codegen9generator14byte_to_tokens(ptr nonnull sret([32 x i8]) align 8 %i.p, i8 %i.u)
          to label %bb.d unwind label %.split.thread

bb.d:                                             ; preds = %bb.c
  %i.v = invoke ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE3endCsaKDqXqZWSq0_14regex_automata(ptr nonnull %i.r)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.body, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %.pn9, %.body ] ; 2 uses
  %.sroa.02.2 = phi i1 [ %.sroa.02.3, %bb.f ], [ false, %.body ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.p) #18
          to label %bb.b unwind label %bb.ao

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs2SM5xCHwwDm_13logos_codegen.exit, %bb.g, %bb.d
  %.sroa.02.3 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs2SM5xCHwwDm_13logos_codegen.exit ], [ true, %bb.g ], [ true, %bb.d ]
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.v, align 1
  invoke void @_RNvNtCs2SM5xCHwwDm_13logos_codegen9generator14byte_to_tokens(ptr nonnull sret([32 x i8]) align 8 %i.o, i8 %i.x)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  invoke void @_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs8UJyeeIGyGC_12regex_syntax(ptr nonnull sret([32 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.j unwind label %bb.i

.body:                                            ; preds = %bb.al, %bb.i, %bb.m
  %.pn9 = phi { ptr, i32 } [ %.pn6.pn, %bb.m ], [ %i.y, %bb.i ], [ %i.aj, %bb.al ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.o) #18
          to label %bb.e unwind label %bb.ao

bb.i:                                             ; preds = %bb.am, %bb.k, %bb.j, %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.h
  invoke void @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNCNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB2H_9Generator15impl_fork_matchs_00EB2J_(ptr nonnull sret([32 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterhENCNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB1Q_9Generator15impl_fork_matchs_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEEB1S_(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.z = invoke i64 @_RNvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehENtNtNtNtB9_4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.r)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.aq, %bb.s, %bb.n
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %bb.aq ], [ %i.aa, %bb.n ], [ %.pn.pn, %bb.s ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.n) #18
          to label %.body unwind label %bb.ao

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
          to label %bb.r unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.j)
          to label %bb.ap unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.v, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.ac, %bb.t ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.g) #18
          to label %bb.m unwind label %bb.ao

bb.t:                                             ; preds = %bb.aj, %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_ident(ptr nonnull align 8 %i.e, ptr nonnull @3, i64 7)
          to label %bb.w unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %.loopexit.split-lp, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.e) #18
          to label %bb.s unwind label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.ai, %_RNvXs4_NtCs36YJ3mR2EUy_5quote9___privateINtB5_9RepInterpRNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit, %bb.ag, %bb.af, %bb.ae, %bb.x, %bb.w, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private9push_bang(ptr nonnull align 8 %i.e)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @2, i64 4)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.c) #18
          to label %bb.v unwind label %bb.ao

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_comma(ptr nonnull align 8 %i.c)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXst_NtCs36YJ3mR2EUy_5quote9to_tokensNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.c)
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private15push_dot_dot_eq(ptr nonnull align 8 %i.c)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXst_NtCs36YJ3mR2EUy_5quote9to_tokensNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.c)
          to label %bb.ae unwind label %bb.z

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_group(ptr nonnull align 8 %i.e, i8 0, ptr nonnull align 8 %i.d)
          to label %bb.af unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.ae = invoke { ptr, ptr } @_RNvXs4_NtNtCs36YJ3mR2EUy_5quote9___private3extINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtB5_16RepAsIteratorExt15quote_into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.n)
          to label %bb.ag unwind label %.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1
  store ptr %i.af, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  invoke void @_RNvXs0_NtCs36YJ3mR2EUy_5quote9___privateNtB5_29ThereIsNoIteratorInRepetitionINtNtNtCskKLDkoKarTP_4core3ops3bit5BitOrNtB5_11HasIteratorE5bitor()
          to label %_RNvXs4_NtCs36YJ3mR2EUy_5quote9___privateINtB5_9RepInterpRNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit unwind label %.loopexit.split-lp

_RNvXs4_NtCs36YJ3mR2EUy_5quote9___privateINtB5_9RepInterpRNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.ag, %bb.ai
  %i.ai = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b)
          to label %bb.ah unwind label %.loopexit.split-lp ; 2 uses

bb.ah:                                            ; preds = %_RNvXs4_NtCs36YJ3mR2EUy_5quote9___privateINtB5_9RepInterpRNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ai, ptr %i.a, align 8
  invoke void @_RNvXNtCs36YJ3mR2EUy_5quote9to_tokensRNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB2_8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.e)
          to label %_RNvXs4_NtCs36YJ3mR2EUy_5quote9___privateINtB5_9RepInterpRNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs2SM5xCHwwDm_13logos_codegen.exit unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_group(ptr nonnull align 8 %i.g, i8 0, ptr nonnull align 8 %i.f)
          to label %bb.ak unwind label %bb.t

bb.ak:                                            ; preds = %bb.aj, %bb.aw
  %.sink = phi ptr [ %i.j, %bb.aw ], [ %i.g, %bb.aj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.n)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.n)
          to label %.body unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs2SM5xCHwwDm_13logos_codegen.exit unwind label %bb.i

bb.an:                                            ; preds = %bb.al
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ao:                                            ; preds = %bb.az, %bb.at, %bb.aq, %bb.z, %bb.v, %bb.s, %bb.m, %.body, %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ap:                                            ; preds = %bb.q
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.h)
          to label %bb.as unwind label %bb.ar

bb.aq:                                            ; preds = %bb.at, %bb.ar
  %.pn6 = phi { ptr, i32 } [ %i.am, %bb.ar ], [ %i.an, %bb.at ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.j) #18
          to label %bb.m unwind label %bb.ao

bb.ar:                                            ; preds = %bb.aw, %bb.ap
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_ident(ptr nonnull align 8 %i.h, ptr nonnull @2, i64 4)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.au, %bb.as
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.h) #18
          to label %bb.aq unwind label %bb.ao

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_eq_eq(ptr nonnull align 8 %i.h)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXst_NtCs36YJ3mR2EUy_5quote9to_tokensNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.h)
          to label %bb.aw unwind label %bb.at

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_group(ptr nonnull align 8 %i.j, i8 0, ptr nonnull align 8 %i.i)
          to label %bb.ak unwind label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.am
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.o)
          to label %bb.ax unwind label %bb.f

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs2SM5xCHwwDm_13logos_codegen.exit
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.p)
  ret void

bb.ay:                                            ; preds = %bb.az, %bb.b
  %.pn1315 = phi { ptr, i32 } [ %.pn11, %bb.b ], [ %.pn1316, %bb.az ]
  resume { ptr, i32 } %.pn1315

bb.az:                                            ; preds = %.split.thread, %bb.b
  %.pn1316 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn11, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.q) #18
          to label %bb.ay unwind label %bb.ao
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB6_9Generator15impl_fork_table0B8_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = trunc nuw i64 %2 to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8
  call void @_RNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2_9Generator11state_value(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr align 8 %i.g, i64 %3)
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @4, i64 4)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #18
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %bb.e
  ret void

bb.g:                                             ; preds = %bb.p, %bb.l, %bb.i, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %bb.i, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.i ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %.pn.pn.pn

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.j, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.e) #18
          to label %bb.h unwind label %bb.g

bb.j:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.b
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_ident(ptr nonnull align 8 %i.d, ptr nonnull @5, i64 4)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.p, %bb.m
  %.pn = phi { ptr, i32 } [ %i.k, %bb.m ], [ %i.l, %bb.p ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.d) #18
          to label %bb.i unwind label %bb.g

bb.m:                                             ; preds = %bb.q, %bb.n, %bb.k
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXst_NtCs36YJ3mR2EUy_5quote9to_tokensNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.b)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.b) #18
          to label %bb.l unwind label %bb.g

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_group(ptr nonnull align 8 %i.d, i8 0, ptr nonnull align 8 %i.c)
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.e)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull align 8 ptr @_RNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB6_9Generator15impl_fork_tables0_0B8_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call align 8 ptr @_RNvXs8_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCseDt6h2fhMKJ_3fnv9FnvHasherEEINtNtNtB2t_3ops5index5IndexRB12_E5indexB16_(ptr align 8 %i.a, ptr align 8 %1, ptr nonnull align 8 @7) #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMNtNtCs2SM5xCHwwDm_13logos_codegen9generator4forkNtB6_9Generator15impl_fork_tables1_0B8_(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call void @_RNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2_9Generator16state_transition(ptr sret([32 x i8]) align 8 %0, ptr align 8 %i.a, i64 %2)
  ret void
}

end_hunk_0
