Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.0?download=true
inline.NumInlined: 49
inline.NumDeleted: 27
begin_hunk_0_@_RNvNtCse52LceO7DeS_12typst_macros4elem17create_field_impl:bb.a
          to label %bb.og unwind label %bb.ng

bb.og:                                            ; preds = %bb.of
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private11push_colon2(ptr nonnull align 8 %i.ad)
          to label %bb.oh unwind label %bb.ng

bb.oh:                                            ; preds = %bb.og
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @2, i64 3)
          to label %bb.oi unwind label %bb.ng

bb.oi:                                            ; preds = %bb.oh
  invoke void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ab)
          to label %bb.oj unwind label %bb.ng

bb.oj:                                            ; preds = %bb.oi
  invoke void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtNtCs1xwejQucwHj_5alloc6string6StringNtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.ab)
          to label %bb.ol unwind label %bb.ok

bb.ok:                                            ; preds = %bb.or, %bb.oq, %bb.op, %bb.oo, %bb.on, %bb.om, %bb.ol, %bb.oj
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.ab) #12
          to label %bb.nf unwind label %bb.ak

bb.ol:                                            ; preds = %bb.oj
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_comma(ptr nonnull align 8 %i.ab)
          to label %bb.om unwind label %bb.ok

bb.om:                                            ; preds = %bb.ol
  invoke void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtNtCs1xwejQucwHj_5alloc6string6StringNtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.ab)
          to label %bb.on unwind label %bb.ok

bb.on:                                            ; preds = %bb.om
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_comma(ptr nonnull align 8 %i.ab)
          to label %bb.oo unwind label %bb.ok

bb.oo:                                            ; preds = %bb.on
  invoke void @_RNvXsu_NtCs5KiAP23wTyQ_5quote9to_tokensNtCscVvfRCjUNk2_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.ab)
          to label %bb.op unwind label %bb.ok

bb.op:                                            ; preds = %bb.oo
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_comma(ptr nonnull align 8 %i.ab)
          to label %bb.oq unwind label %bb.ok

bb.oq:                                            ; preds = %bb.op
  invoke void @_RNvXsu_NtCs5KiAP23wTyQ_5quote9to_tokensNtCscVvfRCjUNk2_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.ab)
          to label %bb.or unwind label %bb.ok

bb.or:                                            ; preds = %bb.oq
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_comma(ptr nonnull align 8 %i.ab)
          to label %bb.os unwind label %bb.ok

bb.os:                                            ; preds = %bb.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_group(ptr nonnull align 8 %i.ad, i8 0, ptr nonnull align 8 %i.ac)
          to label %bb.ot unwind label %bb.ng

bb.ot:                                            ; preds = %bb.os
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private9push_semi(ptr nonnull align 8 %i.ad)
          to label %bb.ou unwind label %bb.ng

bb.ou:                                            ; preds = %bb.ot
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_group(ptr nonnull align 8 %i.af, i8 1, ptr nonnull align 8 %i.ae)
          to label %.sink.split unwind label %bb.mu

bb.ov:                                            ; preds = %bb.hz
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.ao)
          to label %bb.ow unwind label %bb.c

bb.ow:                                            ; preds = %bb.ov
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.at)
  ret void

bb.ox:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn32
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCse52LceO7DeS_12typst_macros4elem19create_field_parser(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %.not = icmp eq i64 %i.u, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %i.t, ptr %i.s, align 8
  call void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.q)
  %i.w = invoke { ptr, ptr } @_RNvXs4_NtNtCs5KiAP23wTyQ_5quote9___private3extINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtENtB5_16RepAsIteratorExt15quote_into_iterCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.v)
          to label %bb.d unwind label %.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr %i.x, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 906
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.s, label %bb.r

.loopexit.loopexit:                               ; preds = %bb.q, %bb.p, %.preheader
  %lpad.loopexit13 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %.preheader.preheader, %bb.g
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.b, %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit13, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp14, %.loopexit.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.q) #12
          to label %bb.o unwind label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.ab = extractvalue { ptr, ptr } %i.w, 0
  %i.ac = extractvalue { ptr, ptr } %i.w, 1
  store ptr %i.ab, ptr %i.p, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  invoke void @_RNvXs0_NtCs5KiAP23wTyQ_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCs3oUPovFnLWP_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvYINtNtCs5KiAP23wTyQ_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBQ_E5checkCse52LceO7DeS_12typst_macros()
          to label %.preheader.preheader unwind label %.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.e
  %i.ae = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsjMPGGl8VONr_3syn4stmt4StmtENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.p)
          to label %bb.f unwind label %.loopexit.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %.preheader.preheader
  %.not7.peel = icmp eq ptr %i.ae, null
  br i1 %.not7.peel, label %.loopexit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ae, ptr %i.o, align 8
  invoke void @_RNvXs5_NtCs5KiAP23wTyQ_5quote9___privateINtB5_9RepInterpRNtNtCsjMPGGl8VONr_3syn4stmt4StmtENtNtB7_9to_tokens8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.q)
          to label %.preheader unwind label %.loopexit.loopexit.split-lp

.preheader:                                       ; preds = %bb.g, %bb.q
  %i.af = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsjMPGGl8VONr_3syn4stmt4StmtENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.p)
          to label %bb.h unwind label %.loopexit.loopexit ; 2 uses

bb.h:                                             ; preds = %.preheader
  %.not7 = icmp eq ptr %i.af, null
  br i1 %.not7, label %.loopexit16, label %bb.p

.loopexit16:                                      ; preds = %bb.h, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  invoke void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.n)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn8 = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.j ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.r) #12
          to label %bb.o unwind label %bb.n

bb.j:                                             ; preds = %.loopexit16
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.loopexit16
  invoke void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtNtCsjMPGGl8VONr_3syn4stmt4StmtNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.n)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.n) #12
          to label %bb.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.ag
  %.sink.a = phi ptr [ %i.l, %bb.ag ], [ %i.n, %bb.k ]
  %.sink19 = phi ptr [ %i.a, %bb.ag ], [ %i.r, %bb.k ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sink.a, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink19, i64 32, i1 false)
  ret void

bb.n:                                             ; preds = %bb.bc, %bb.aw, %bb.at, %bb.an, %bb.ah, %bb.ad, %bb.x, %bb.l, %bb.i, %.loopexit
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.o:                                             ; preds = %bb.bc, %bb.aw, %bb.an, %bb.ah, %bb.x, %bb.i, %.loopexit
  %.pn10 = phi { ptr, i32 } [ %lpad.phi, %.loopexit ], [ %.pn8, %bb.i ], [ %i.av, %bb.bc ], [ %i.au, %bb.aw ], [ %.pn5, %bb.an ], [ %i.ar, %bb.ah ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn10

bb.p:                                             ; preds = %bb.h
  store ptr %i.af, ptr %i.o, align 8
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private9push_semi(ptr nonnull align 8 %i.q)
          to label %bb.q unwind label %.loopexit.loopexit

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs5_NtCs5KiAP23wTyQ_5quote9___privateINtB5_9RepInterpRNtNtCsjMPGGl8VONr_3syn4stmt4StmtENtNtB7_9to_tokens8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.q)
          to label %.preheader unwind label %.loopexit.loopexit, !llvm.loop !16

bb.r:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 905
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.c
  call void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.k)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @90, i64 4)
          to label %bb.ax unwind label %bb.aw

bb.t:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  call void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.i)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.i, ptr nonnull @90, i64 4)
          to label %bb.ap unwind label %bb.ao

bb.v:                                             ; preds = %bb.t
  call void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.d, ptr nonnull @90, i64 4)
          to label %bb.z unwind label %bb.y

bb.w:                                             ; preds = %bb.t
  call void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.f, ptr nonnull @90, i64 4)
          to label %bb.ai unwind label %bb.ah

bb.x:                                             ; preds = %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.y ], [ %i.aq, %bb.ad ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.d) #12
          to label %bb.o unwind label %bb.n

bb.y:                                             ; preds = %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.z, %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private8push_dot(ptr nonnull align 8 %i.d)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.d, ptr nonnull @121, i64 5)
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.ac unwind label %bb.y

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtNtCs1xwejQucwHj_5alloc6string6StringNtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.b)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.b) #12
          to label %bb.x unwind label %bb.n

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_group(ptr nonnull align 8 %i.d, i8 0, ptr nonnull align 8 %i.c)
          to label %bb.af unwind label %bb.y

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private13push_question(ptr nonnull align 8 %i.d)
          to label %bb.ag unwind label %bb.y

bb.ag:                                            ; preds = %bb.af, %bb.bb, %bb.av, %bb.am
  %.sink20 = phi ptr [ %i.i, %bb.av ], [ %i.f, %bb.am ], [ %i.k, %bb.bb ], [ %i.d, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.sink20, i64 32, i1 false)
  invoke void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.m unwind label %bb.bc

bb.ah:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.f) #12
          to label %bb.o unwind label %bb.n

bb.ai:                                            ; preds = %bb.w
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private8push_dot(ptr nonnull align 8 %i.f)
          to label %bb.aj unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.f, ptr nonnull @122, i64 4)
          to label %bb.ak unwind label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
          to label %bb.al unwind label %bb.ah

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_group(ptr nonnull align 8 %i.f, i8 0, ptr nonnull align 8 %i.e)
          to label %bb.am unwind label %bb.ah

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private13push_question(ptr nonnull align 8 %i.f)
          to label %bb.ag unwind label %bb.ah

bb.an:                                            ; preds = %bb.at, %bb.ao
  %.pn5 = phi { ptr, i32 } [ %i.as, %bb.ao ], [ %i.at, %bb.at ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.i) #12
          to label %bb.o unwind label %bb.n

bb.ao:                                            ; preds = %bb.av, %bb.au, %bb.ar, %bb.aq, %bb.ap, %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.u
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private8push_dot(ptr nonnull align 8 %i.i)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.i, ptr nonnull @123, i64 6)
          to label %bb.ar unwind label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
          to label %bb.as unwind label %bb.ao

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtNtCs1xwejQucwHj_5alloc6string6StringNtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.g)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.g) #12
          to label %bb.an unwind label %bb.n

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_group(ptr nonnull align 8 %i.i, i8 0, ptr nonnull align 8 %i.h)
          to label %bb.av unwind label %bb.ao

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private13push_question(ptr nonnull align 8 %i.i)
          to label %bb.ag unwind label %bb.ao

bb.aw:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.k) #12
          to label %bb.o unwind label %bb.n

bb.ax:                                            ; preds = %bb.s
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private8push_dot(ptr nonnull align 8 %i.k)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @124, i64 3)
          to label %bb.az unwind label %bb.aw

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.j)
          to label %bb.ba unwind label %bb.aw

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private10push_group(ptr nonnull align 8 %i.k, i8 0, ptr nonnull align 8 %i.j)
          to label %bb.bb unwind label %bb.aw

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs5KiAP23wTyQ_5quote9___private13push_question(ptr nonnull align 8 %i.k)
          to label %bb.ag unwind label %bb.aw

bb.bc:                                            ; preds = %bb.ag
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr nonnull align 8 %i.l) #12
          to label %bb.o unwind label %bb.n
}

end_hunk_0
