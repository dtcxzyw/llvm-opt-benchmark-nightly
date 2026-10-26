Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.2?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
begin_hunk_0_@_RNvNtCse52LceO7DeS_12typst_macros4util13documentation:bb.a
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn3lit3LitEBF_(ptr nonnull align 8 %i.c) #25
          to label %bb.am unwind label %bb.v

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.pn16 = phi { ptr, i64 } [ %i.bf, %bb.af ], [ %i.bg, %bb.ag ] ; 2 uses
  %.sroa.02.0 = extractvalue { ptr, i64 } %.pn16, 0 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.02.0, null
  br i1 %.not7, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.5.2 = extractvalue { ptr, i64 } %.pn16, 1
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_strCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.g, ptr nonnull %.sroa.02.0, i64 %.sroa.5.2)
          to label %bb.ak unwind label %bb.ah

.thread:                                          ; preds = %bb.ae, %bb.ai
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn3lit3LitEBF_(ptr nonnull align 8 %i.c)
          to label %bb.ad unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.g, i32 10)
          to label %bb.al unwind label %bb.ah

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn3lit3LitEBF_(ptr nonnull align 8 %i.c)
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %bb.an, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.an ], [ %i.bh, %bb.ah ] ; 2 uses
  %i.bi = load i64, ptr %i.d, align 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.body, label %bb.ap

bb.an:                                            ; preds = %bb.al, %.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  %i.bl = load i64, ptr %i.d, align 8
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %.invoke, label %.backedge.backedge

.invoke:                                          ; preds = %bb.ad, %bb.ac, %bb.ao
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsjMPGGl8VONr_3syn3lit3LitNtNtB11_5error5ErrorEEB11_(ptr nonnull align 8 %i.d)
          to label %.backedge.backedge unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.backedge.backedge:                               ; preds = %.invoke, %bb.l, %bb.d, %bb.j, %bb.u, %bb.x, %bb.ad, %bb.ao, %bb.k
  br label %.backedge

bb.ap:                                            ; preds = %bb.am
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsjMPGGl8VONr_3syn3lit3LitNtNtB11_5error5ErrorEEB11_(ptr nonnull align 8 %i.d) #25
          to label %.body unwind label %bb.v

bb.aq:                                            ; preds = %.body
  resume { ptr, i32 } %.pn9
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCse52LceO7DeS_12typst_macros4util14validate_attrs(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = tail call { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSNtNtCsjMPGGl8VONr_3syn4attr9AttributeNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8 %1, i64 %2) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  store ptr %i.m, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = call align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.k) #23 ; 2 uses
  %.not4 = icmp eq ptr %i.p, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.q = phi ptr [ %i.t, %.backedge ], [ %i.p, %bb.a ] ; 3 uses
  %i.r = call align 8 ptr @_RNvMNtCsjMPGGl8VONr_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.q)
  %i.s = call zeroext i1 @_RINvMs_NtCsjMPGGl8VONr_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.r, ptr nonnull @64, i64 3)
  br i1 %i.s, label %.backedge, label %bb.c

.backedge:                                        ; preds = %.lr.ph, %bb.c
  %i.t = call align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.k) #23 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph
  %i.u = call align 8 ptr @_RNvMNtCsjMPGGl8VONr_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.q)
  %i.v = call zeroext i1 @_RINvMs_NtCsjMPGGl8VONr_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.u, ptr nonnull @66, i64 6)
  br i1 %i.v, label %.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call align 8 ptr @_RNvMNtCsjMPGGl8VONr_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.q)
  %i.x = call align 8 ptr @_RNvMs_NtCsjMPGGl8VONr_3syn4pathNtB4_4Path9get_ident(ptr align 8 %i.w) ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRNtCscVvfRCjUNk2_11proc_macro25IdentE6unwrapCse52LceO7DeS_12typst_macros.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @67) #22
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRNtCscVvfRCjUNk2_11proc_macro25IdentE6unwrapCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.d
  store ptr %i.x, ptr %i.j, align 8
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayRNtCscVvfRCjUNk2_11proc_macro25IdentEB11_(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.j) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.y = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj1b_Kj1_ECsjMPGGl8VONr_3syn(ptr nonnull @68, ptr nonnull align 8 %i.d) #23 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  call void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %i.z, ptr %i.aa) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs1xwejQucwHj_5alloc6string6StringECscVvfRCjUNk2_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRNtCscVvfRCjUNk2_11proc_macro25IdentE6unwrapCse52LceO7DeS_12typst_macros.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.f) #25
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRNtCscVvfRCjUNk2_11proc_macro25IdentE6unwrapCse52LceO7DeS_12typst_macros.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ac = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKja_Kj1_ECse52LceO7DeS_12typst_macros(ptr nonnull @15, ptr nonnull align 8 %i.b)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr %i.ad, ptr %i.ae)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RINvMNtCsjMPGGl8VONr_3syn5errorNtB3_5Error11new_spannedRRNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCs1xwejQucwHj_5alloc6string6StringECse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.b

bb.j:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCse52LceO7DeS_12typst_macros4util24determine_name_and_title(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [16 x i8], align 8                ; 2 uses
  %i.r = alloca [16 x i8], align 8                ; 2 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  %i.y = alloca [8 x i8], align 8                 ; 2 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.ac, align 8
  %i.ad = invoke ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionFG_RL0_eERL0_eE9unwrap_orCse52LceO7DeS_12typst_macros(ptr %4, ptr nonnull @_RNvYNCNvNtCse52LceO7DeS_12typst_macros4util24determine_name_and_title0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceB8_)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.q
  br i1 %.sroa.04.1, label %.thread, label %.thread41

bb.c:                                             ; preds = %bb.at, %bb.aj, %bb.d, %bb.a
  %.sroa.0.1 = phi i1 [ true, %bb.at ], [ false, %bb.aj ], [ true, %bb.d ], [ true, %bb.a ]
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCscVvfRCjUNk2_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.z, ptr align 8 %3)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.af = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.z)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.z) #25
          to label %.thread unwind label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.ah = extractvalue { ptr, i64 } %i.af, 0
  %i.ai = extractvalue { ptr, i64 } %i.af, 1
  %i.aj = invoke { ptr, i64 } %i.ad(ptr %i.ah, i64 %i.ai)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  invoke void @_RNvXNtCscIE41xXMWxr_4heck5kebabeNtB2_11ToKebabCase13to_kebab_case(ptr nonnull sret([24 x i8]) align 8 %i.aa, ptr %i.ak, i64 %i.al)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.z)
          to label %bb.k unwind label %.thread26

.thread26:                                        ; preds = %bb.as, %bb.i, %bb.ar, %bb.k, %bb.am, %bb.o, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread20

bb.j:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.am = invoke align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6as_refCse52LceO7DeS_12typst_macros(ptr align 8 %1)
          to label %bb.l unwind label %.thread26

bb.l:                                             ; preds = %bb.k
  store ptr %i.am, ptr %i.y, align 8
  store ptr %i.aa, ptr %i.x, align 8
  %i.an = invoke zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x)
          to label %bb.m unwind label %.thread26  ; 3 uses

bb.m:                                             ; preds = %bb.l
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE9unwrap_orCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.p unwind label %bb.j

bb.o:                                             ; preds = %bb.m
  %i.ao = invoke { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCse52LceO7DeS_12typst_macros(ptr nonnull @70, i64 32)
          to label %bb.am unwind label %.thread26 ; 2 uses

bb.p:                                             ; preds = %bb.n
  %i.ap = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.ab)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %bb.u, %.thread29, %bb.r
  %.pn7 = phi { ptr, i32 } [ %i.aq, %bb.r ], [ %.pn32, %.thread29 ], [ %lpad.thr_comm.split-lp37, %bb.u ] ; 2 uses
  %.sroa.04.1 = phi i1 [ true, %bb.r ], [ true, %.thread29 ], [ false, %bb.u ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.ab) #25
          to label %bb.b unwind label %bb.al

bb.r:                                             ; preds = %bb.ai, %bb.s, %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.ar = extractvalue { ptr, i64 } %i.ap, 0
  %i.as = extractvalue { ptr, i64 } %i.ap, 1
  invoke void @_RNvXNtCscIE41xXMWxr_4heck5titleeNtB2_11ToTitleCase13to_title_case(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr %i.ar, i64 %i.as)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.at = invoke align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6as_refCse52LceO7DeS_12typst_macros(ptr align 8 %2)
          to label %bb.v unwind label %.thread38

.thread38:                                        ; preds = %bb.ah, %bb.t, %bb.ag, %bb.v, %bb.ab, %bb.y
  %lpad.thr_comm36 = landingpad { ptr, i32 }
          cleanup
  br label %.thread29

bb.u:                                             ; preds = %bb.x
  %lpad.thr_comm.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.v:                                             ; preds = %bb.t
  store ptr %i.at, ptr %i.l, align 8
  store ptr %i.m, ptr %i.k, align 8
  %i.au = invoke zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.w unwind label %.thread38

bb.w:                                             ; preds = %bb.v
  br i1 %i.au, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE9unwrap_orCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.z unwind label %bb.u

bb.y:                                             ; preds = %bb.w
  %i.av = invoke { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCse52LceO7DeS_12typst_macros(ptr nonnull @69, i64 33)
          to label %bb.ab unwind label %.thread38 ; 2 uses

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ax, %bb.aw, %bb.z
  ret void

bb.ab:                                            ; preds = %bb.y
  %i.ax = extractvalue { ptr, ptr } %i.av, 0
  %i.ay = extractvalue { ptr, ptr } %i.av, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.ax, ptr %i.ay)
          to label %bb.ac unwind label %.thread38

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs1xwejQucwHj_5alloc6string6StringECscVvfRCjUNk2_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull align 8 %i.g)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.g) #25
          to label %.thread29 unwind label %bb.al

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.ba = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKja_Kj1_ECse52LceO7DeS_12typst_macros(ptr nonnull @15, ptr nonnull align 8 %i.e)
          to label %bb.af unwind label %bb.ad     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %i.bb, ptr %i.bc)
          to label %bb.ag unwind label %bb.ad

bb.ag:                                            ; preds = %bb.af
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.g)
          to label %bb.ah unwind label %.thread38

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RINvMNtCsjMPGGl8VONr_3syn5errorNtB3_5Error11new_spannedRRNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCs1xwejQucwHj_5alloc6string6StringECse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.i)
          to label %bb.ai unwind label %.thread38

bb.ai:                                            ; preds = %bb.ah
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.m)
          to label %bb.aj unwind label %bb.r

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.ab)
          to label %bb.ak unwind label %bb.c

bb.ak:                                            ; preds = %bb.at, %bb.aj
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsjMPGGl8VONr_3syn(ptr align 8 %2)
          to label %bb.aw unwind label %bb.av

bb.al:                                            ; preds = %bb.ay, %.thread, %.thread20, %bb.ao, %.thread29, %bb.ad, %bb.q, %bb.f
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread29:                                        ; preds = %bb.ad, %.thread38
  %.pn32 = phi { ptr, i32 } [ %lpad.thr_comm36, %.thread38 ], [ %i.az, %bb.ad ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.m) #25
          to label %bb.q unwind label %bb.al

bb.am:                                            ; preds = %bb.o
  %i.bf = extractvalue { ptr, ptr } %i.ao, 0
  %i.bg = extractvalue { ptr, ptr } %i.ao, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.s, ptr %i.bf, ptr %i.bg)
          to label %bb.an unwind label %.thread26

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs1xwejQucwHj_5alloc6string6StringECscVvfRCjUNk2_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.q, ptr nonnull align 8 %i.t)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.t) #25
          to label %.thread20 unwind label %bb.al

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.bi = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKja_Kj1_ECse52LceO7DeS_12typst_macros(ptr nonnull @15, ptr nonnull align 8 %i.r)
          to label %bb.aq unwind label %bb.ao     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.u, ptr %i.bj, ptr %i.bk)
          to label %bb.ar unwind label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.t)
          to label %bb.as unwind label %.thread26

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  invoke void @_RINvMNtCsjMPGGl8VONr_3syn5errorNtB3_5Error11new_spannedRRNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCs1xwejQucwHj_5alloc6string6StringECse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.v)
          to label %bb.at unwind label %.thread26

bb.at:                                            ; preds = %bb.as
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.aa)
          to label %bb.ak unwind label %bb.c

bb.au:                                            ; preds = %.thread
  br i1 %.sroa.0.019, label %bb.ay, label %.thread41

bb.av:                                            ; preds = %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.an, label %bb.ay, label %.thread41

bb.aw:                                            ; preds = %bb.ak
  br i1 %i.an, label %bb.ax, label %bb.aa

bb.ax:                                            ; preds = %bb.aw
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsjMPGGl8VONr_3syn(ptr align 8 %1)
  br label %bb.aa

.thread20:                                        ; preds = %bb.ao, %.thread26
  %.pn923 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread26 ], [ %i.bh, %bb.ao ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.aa) #25
          to label %.thread unwind label %bb.al

.thread:                                          ; preds = %bb.j, %bb.f, %.thread20, %bb.c, %bb.b
  %.sroa.0.019 = phi i1 [ false, %bb.b ], [ true, %bb.f ], [ false, %bb.j ], [ true, %.thread20 ], [ %.sroa.0.1, %bb.c ]
  %.pn1118 = phi { ptr, i32 } [ %.pn7, %bb.b ], [ %i.ag, %bb.f ], [ %lpad.thr_comm.split-lp, %bb.j ], [ %.pn923, %.thread20 ], [ %i.ae, %bb.c ] ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsjMPGGl8VONr_3syn(ptr align 8 %2) #25
          to label %bb.au unwind label %bb.al

.thread41:                                        ; preds = %bb.av, %bb.b, %bb.ay, %bb.au
  %.pn1344 = phi { ptr, i32 } [ %.pn1118, %bb.au ], [ %.pn1345, %bb.ay ], [ %.pn7, %bb.b ], [ %i.bm, %bb.av ]
  resume { ptr, i32 } %.pn1344

bb.ay:                                            ; preds = %bb.av, %bb.au
  %.pn1345 = phi { ptr, i32 } [ %i.bm, %bb.av ], [ %.pn1118, %bb.au ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsjMPGGl8VONr_3syn(ptr align 8 %1) #25
          to label %.thread41 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvNtCse52LceO7DeS_12typst_macros4util8has_attr(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [256 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBJ_(ptr align 8 %0) #23, !noalias !26 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCsjMPGGl8VONr_3syn4attr9Attribute4iterBy_(ptr align 8 %i.d, i64 %i.e) #23, !noalias !26 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %i.a, align 8, !noalias !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !26
  %i.j = call { i64, i64 } @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCse52LceO7DeS_12typst_macros4util9take_attr0EB2m_(ptr nonnull align 8 %i.a, ptr %1, i64 %2) #23, !noalias !26 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3mapNtNtCsjMPGGl8VONr_3syn4attr9AttributeNCNvNtCse52LceO7DeS_12typst_macros4util9take_attrs_0EB1v_(ptr nonnull sret([256 x i8]) align 8 %i.b, i64 %i.k, i64 %i.l, ptr align 8 %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = invoke zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsjMPGGl8VONr_3syn4attr9AttributeE7is_someCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjMPGGl8VONr_3syn4attr9AttributeEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.b) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjMPGGl8VONr_3syn4attr9AttributeEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.b)
  ret i1 %i.m

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCse52LceO7DeS_12typst_macros4util8oneliner(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [128 x i8], align 8               ; 2 uses
  call void @_RINvMNtCs3oUPovFnLWP_4core3stre5splitReECse52LceO7DeS_12typst_macros(ptr nonnull sret([128 x i8]) align 8 %i.f, ptr %1, i64 %2, ptr nonnull @71, i64 2) #23
  %i.g = call { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.f) #23 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = call { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE17unwrap_or_defaultCse52LceO7DeS_12typst_macros(ptr %i.h, i64 %i.i) #23 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %i.m = call i64 @_RNvMNtCs3oUPovFnLWP_4core3stre3lenCse52LceO7DeS_12typst_macros(ptr %i.k, i64 %i.l) #23
  call void @_RNvMNtCs3oUPovFnLWP_4core3stre12char_indicesCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.k, i64 %i.l) #23
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectNtNtNtB8_3str4iter11CharIndicesNtB2_12IntoIterator9into_iterCscVvfRCjUNk2_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.sroa.03.0.ph = phi i1 [ false, %bb.a ], [ %.sroa.03.0.ph.be, %.outer.backedge ]
  %.sroa.0.0.ph = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.ph.be, %.outer.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.ph, %.outer ], [ %i.u, %.backedge ] ; 6 uses
  %i.n = call { i64, i32 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.c) #23 ; 2 uses
  %i.o = extractvalue { i64, i32 } %i.n, 1        ; 4 uses
  switch i32 %i.o, label %.loopexit [
    i32 -1, label %.loopexit16
    i32 40, label %bb.c
    i32 91, label %bb.c
    i32 123, label %bb.c
    i32 41, label %.backedge
    i32 93, label %.backedge
    i32 125, label %.backedge
    i32 46, label %bb.d
  ]

.loopexit16:                                      ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread, %bb.b
  %.sroa.04.0 = phi i64 [ %i.m, %bb.b ], [ %i.t, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread ]
  %i.p = call { ptr, i64 } @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCscVvfRCjUNk2_11proc_macro2(ptr %1, i64 %2, i64 %.sroa.04.0, ptr nonnull align 8 @74) #23 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  call void @_RNvXsK_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.q, i64 %i.r) #23
  %i.s = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.a)
          to label %bb.i unwind label %bb.h       ; 2 uses

.loopexit:                                        ; preds = %bb.b, %bb.d
  %i.t = extractvalue { i64, i32 } %i.n, 0        ; 2 uses
  br i1 %.sroa.03.0.ph, label %bb.e, label %.outer.backedge

.outer.backedge:                                  ; preds = %.loopexit, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread, %bb.f, %bb.d
  %.sroa.03.0.ph.be = phi i1 [ true, %bb.d ], [ false, %bb.f ], [ false, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread ], [ false, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit ], [ false, %.loopexit ]
  %.sroa.0.0.ph.be = phi i32 [ 0, %bb.d ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread ], [ %.sroa.0.0, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit ], [ %.sroa.0.0, %.loopexit ]
  br label %.outer

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %.backedge

.backedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %bb.b ]
  %i.u = add i32 %.sroa.0.0, %.sink
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %.sroa.0.0, 0
  br i1 %i.v, label %.outer.backedge, label %.loopexit

bb.e:                                             ; preds = %.loopexit
  switch i32 %i.o, label %bb.f [
    i32 32, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread
    i32 13, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread
    i32 12, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread
    i32 11, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread
    i32 10, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread
    i32 9, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ult i32 %i.o, 133
  br i1 %i.w, label %.outer.backedge, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit

_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.f
  %i.x = call zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookupCse52LceO7DeS_12typst_macros(i32 %i.o) #23
  br i1 %i.x, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread, label %.outer.backedge

_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit.thread: ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCse52LceO7DeS_12typst_macros.exit
  %i.y = call { ptr, i64 } @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCscVvfRCjUNk2_11proc_macro2(ptr %1, i64 %2, i64 %i.t, ptr nonnull align 8 @72) #23 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre9ends_withReECse52LceO7DeS_12typst_macros(ptr %i.z, i64 %i.aa, ptr nonnull @73, i64 4)
  br i1 %i.ab, label %.outer.backedge, label %.loopexit16

bb.g:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.ag, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.a) #25
          to label %bb.p unwind label %bb.o

bb.h:                                             ; preds = %bb.m, %bb.i, %.loopexit16
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %.loopexit16
  %i.ad = extractvalue { ptr, i64 } %i.s, 0
  %i.ae = extractvalue { ptr, i64 } %i.s, 1
  invoke void @_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.ad, i64 %i.ae, ptr nonnull @76, i64 2, ptr nonnull @75, i64 1)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.af = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.b)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.b) #25
          to label %bb.g unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ah = extractvalue { ptr, i64 } %i.af, 0
  %i.ai = extractvalue { ptr, i64 } %i.af, 1
  invoke void @_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECse52LceO7DeS_12typst_macros(ptr sret([24 x i8]) align 8 %0, ptr %i.ah, i64 %i.ai, ptr nonnull @77, i64 1, ptr nonnull @75, i64 1)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.b)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.a)
  ret void

bb.o:                                             ; preds = %bb.k, %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.p:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCse52LceO7DeS_12typst_macros(i32 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %.thread, label %bb.b

end_hunk_0
