Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.2?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
begin_hunk_0_@_RNvNtCse52LceO7DeS_12typst_macros4util24determine_name_and_title:bb.a
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
  %.sroa.0.4 = phi i8 [ 0, %bb.aj ], [ 1, %bb.at ] ; 2 uses
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

bb.au:                                            ; preds = %.thread, %bb.av
  %.pn13 = phi { ptr, i32 } [ %i.bn, %bb.av ], [ %.pn1118, %.thread ] ; 2 uses
  %.sroa.0.5 = phi i8 [ %.sroa.0.4, %bb.av ], [ %.sroa.0.019, %.thread ]
  %i.bm = trunc nuw i8 %.sroa.0.5 to i1
  br i1 %i.bm, label %bb.ay, label %.thread41

bb.av:                                            ; preds = %bb.ak
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aw:                                            ; preds = %bb.ak
  %i.bo = trunc nuw i8 %.sroa.0.4 to i1
  br i1 %i.bo, label %bb.ax, label %bb.aa

bb.ax:                                            ; preds = %bb.aw
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsjMPGGl8VONr_3syn(ptr align 8 %1)
  br label %bb.aa

.thread20:                                        ; preds = %bb.ao, %.thread26
  %.pn923 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread26 ], [ %i.bh, %bb.ao ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.aa) #25
          to label %.thread unwind label %bb.al

.thread:                                          ; preds = %bb.j, %bb.f, %.thread20, %bb.c, %bb.b
  %.sroa.0.019 = phi i8 [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.j ], [ 1, %.thread20 ], [ %.sroa.0.1, %bb.c ]
  %.pn1118 = phi { ptr, i32 } [ %.pn7, %bb.b ], [ %i.ag, %bb.f ], [ %lpad.thr_comm.split-lp, %bb.j ], [ %.pn923, %.thread20 ], [ %i.ae, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsjMPGGl8VONr_3syn(ptr align 8 %2) #25
          to label %bb.au unwind label %bb.al

.thread41:                                        ; preds = %bb.b, %bb.ay, %bb.au
  %.pn1344 = phi { ptr, i32 } [ %.pn13, %bb.au ], [ %.pn13, %bb.ay ], [ %.pn7, %bb.b ]
  resume { ptr, i32 } %.pn1344

bb.ay:                                            ; preds = %bb.au
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
  %.sroa.0.0.ph = phi i32 [ 0, %bb.a ], [ %.sroa.0.0, %.outer.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.ph, %.outer ], [ %i.u, %.backedge ] ; 3 uses
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

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048                    ; 2 uses
  %i.c = icmp ult i32 %0, 65536                   ; 2 uses
  %. = select i1 %i.c, i64 3, i64 4
  %.sroa.0.0 = select i1 %i.b, i64 2, i64 %.      ; 2 uses
  %i.d = icmp ult i64 %2, %.sroa.0.0
  br i1 %i.d, label %bb.h, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.h, label %.thread7

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i32 %0 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %0, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %0, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %0, 18
  %i.r = trunc i32 %i.q to i8
  %i.s = or i8 %i.r, -16
  br i1 %i.b, label %bb.d, label %bb.e

.thread7:                                         ; preds = %.thread
  %i.t = trunc nuw nsw i32 %0 to i8
  store i8 %i.t, ptr %1, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCse52LceO7DeS_12typst_macros.exit

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i8 %i.j, -64
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %i.v, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCse52LceO7DeS_12typst_macros.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.n, -32
  store i8 %i.w, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.l, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.h, ptr %i.y, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCse52LceO7DeS_12typst_macros.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.s, ptr %1, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.p, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.h, ptr %i.ab, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCse52LceO7DeS_12typst_macros.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCse52LceO7DeS_12typst_macros.exit: ; preds = %.thread7, %bb.d, %bb.f, %bb.g
  %.sroa.0.059 = phi i64 [ 1, %.thread7 ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ac = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %.sroa.0.059, 1
  ret { ptr, i64 } %i.ad

bb.h:                                             ; preds = %.thread, %bb.b
  %.sroa.0.06 = phi i64 [ 1, %.thread ], [ %.sroa.0.0, %bb.b ]
  tail call fastcc void @_RNvNvNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw8do_panic7runtimeCse52LceO7DeS_12typst_macros(i32 %0, i64 %.sroa.0.06, i64 %2) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCse52LceO7DeS_12typst_macros(i32 %0, ptr nofree writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  %i.c = trunc i32 %0 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %0, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %0, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %0, 18
  %i.o = trunc i32 %i.n to i8
  %i.p = or i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %0 to i8
  store i8 %i.q, ptr %1, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
end_hunk_0
