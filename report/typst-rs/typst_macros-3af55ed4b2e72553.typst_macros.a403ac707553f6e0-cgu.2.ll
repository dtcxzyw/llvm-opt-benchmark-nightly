Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.2?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
begin_hunk_0_@_RNvNtCse52LceO7DeS_12typst_macros4util24determine_name_and_title:bb.a
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

end_hunk_0
begin_hunk_1_@_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCse52LceO7DeS_12typst_macros:bb.a
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
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.s, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i32 %0, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.k, -32
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.e, ptr %i.w, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.e, ptr %i.z, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.d, %bb.g
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvNvNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw8do_panic7runtimeCse52LceO7DeS_12typst_macros(i32 %0, i64 range(i64 1, 5) %1, i64 range(i64 0, 4) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.d, align 4
  store i64 %1, ptr %i.c, align 8
  store i64 %2, ptr %i.b, align 8
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.22.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsw_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.26.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.210.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @81, ptr nonnull %i.a, ptr nonnull align 8 @80) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsjMPGGl8VONr_3syn2ty4TypeENtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXs1_NtCs5KiAP23wTyQ_5quote9to_tokensINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsjMPGGl8VONr_3syn2ty4TypeENtB5_8ToTokens9to_tokensB1e_(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtCscVvfRCjUNk2_11proc_macro211TokenStreamNtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXsu_NtCs5KiAP23wTyQ_5quote9to_tokensNtCscVvfRCjUNk2_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtCscVvfRCjUNk2_11proc_macro25IdentNtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXsq_NtCs5KiAP23wTyQ_5quote9to_tokensNtCscVvfRCjUNk2_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCse52LceO7DeS_12typst_macros4utilINtB2_5ArrayNtNtCsjMPGGl8VONr_3syn3lit6LitStrENtNtBR_5parse5Parse5parseB4_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 3 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  call void @_RNvNtCsjMPGGl8VONr_3syn5group14parse_brackets(ptr nonnull sret([56 x i8]) align 8 %i.h, ptr align 8 %1)
  %i.j = load i64, ptr %i.h, align 8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.k, label %.thread17, label %bb.b

.thread14:                                        ; preds = %bb.q, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread17:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrE3newCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.g)
          to label %.preheader unwind label %.thread14

.preheader:                                       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader
  %i.o = invoke zeroext i1 @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.i)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvMs9_NtCsjMPGGl8VONr_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_3lit6LitStrEB8_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.i)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i)
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsjMPGGl8VONr_3syn3lit6LitStrNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.p, %bb.i
  %i.r = phi ptr [ %i.a, %bb.i ], [ %i.b, %bb.p ]
  %i.s = phi ptr [ @83, %bb.i ], [ @82, %bb.p ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCse52LceO7DeS_12typst_macros4util5ArrayNtNtCsjMPGGl8VONr_3syn3lit6LitStrENtNtB1w_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB20_EE13from_residualBP_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.s)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.n, align 8
  invoke void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrE4pushCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.g, ptr align 8 %i.t)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.e, %bb.g, %bb.n, %bb.m, %bb.k, %bb.j, %.invoke
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.g) #25
          to label %.thread unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.u = invoke zeroext i1 @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.i)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  br i1 %i.u, label %.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvMs9_NtCsjMPGGl8VONr_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.i)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsjMPGGl8VONr_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.v = load i64, ptr %i.d, align 8
  %.not6 = icmp eq i64 %i.v, -1
  br i1 %.not6, label %.backedge, label %bb.p

.backedge:                                        ; preds = %bb.o, %bb.l
  br label %bb.c

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.invoke

bb.q:                                             ; preds = %.invoke
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.g)
          to label %bb.t unwind label %.thread14

bb.r:                                             ; preds = %.thread, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %.thread17, %bb.t, %bb.f
  ret void

bb.t:                                             ; preds = %bb.q
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i)
  br label %bb.s

bb.u:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn813

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread14
  %.pn813 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread14 ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i) #25
          to label %bb.u unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtCscVvfRCjUNk2_11proc_macro25IdentNtNtBc_5alloc6GlobalEB12_4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCscVvfRCjUNk2_11proc_macro25IdentEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsjMPGGl8VONr_3syn3lit6LitStrNtNtBc_5alloc6GlobalEB12_4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCsjMPGGl8VONr_3syn3lit6LitStrEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaENtNtBc_5alloc6GlobalEB12_4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCse52LceO7DeS_12typst_macros4utilNtB5_15BlockWithReturnNtNtCsjMPGGl8VONr_3syn5parse5Parse5parse(ptr sret([376 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [376 x i8], align 8               ; 3 uses
  %i.c = alloca [352 x i8], align 8               ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMNtNtCsjMPGGl8VONr_3syn4stmt7parsingNtB4_5Block12parse_within(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr align 8 %1)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e) #23
  %i.h = load i64, ptr %i.f, align 8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCse52LceO7DeS_12typst_macros4util15BlockWithReturnNtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1C_EE13from_residualBO_(ptr sret([376 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @85) #23
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtE3popCse52LceO7DeS_12typst_macros(ptr nonnull sret([352 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtEEB1c_(ptr nonnull align 8 %i.g) #25
          to label %bb.k unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.c, i64 352, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %i.b, i64 376, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvMs9_NtCsjMPGGl8VONr_3syn5parseNtB6_11ParseBuffer5errorReEB8_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr align 8 %1, ptr nonnull @84, i64 32)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.i, %bb.f, %bb.b
  ret void

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtEEB1c_(ptr nonnull align 8 %i.g)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.k:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvXs0_NtCsjMPGGl8VONr_3syn5tokenNtNtNtCse52LceO7DeS_12typst_macros4util2kw10contextualNtB5_5Token4peekBB_(ptr %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCsjMPGGl8VONr_3syn6bufferNtB4_6Cursor5ident(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr %0, ptr %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8
  %.not.i = icmp eq i8 %i.d, -1
  br i1 %.not.i, label %_RNvXs_NvNtNtCse52LceO7DeS_12typst_macros4util2kws2_1__NtB6_10contextualNtNtNtCsjMPGGl8VONr_3syn5token7private11CustomToken4peek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.e = invoke zeroext i1 @_RNvXsv_CscVvfRCjUNk2_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCsjMPGGl8VONr_3syn(ptr nonnull align 8 %i.a, ptr nonnull align 8 @27)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.a) #25
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.a)
  br label %_RNvXs_NvNtNtCse52LceO7DeS_12typst_macros4util2kws2_1__NtB6_10contextualNtNtNtCsjMPGGl8VONr_3syn5token7private11CustomToken4peek.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs_NvNtNtCse52LceO7DeS_12typst_macros4util2kws2_1__NtB6_10contextualNtNtNtCsjMPGGl8VONr_3syn5token7private11CustomToken4peek.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.e, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvXs0_NtCsjMPGGl8VONr_3syn5tokenNtNtNtCse52LceO7DeS_12typst_macros4util2kw11constructorNtB5_5Token4peekBB_(ptr %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCsjMPGGl8VONr_3syn6bufferNtB4_6Cursor5ident(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr %0, ptr %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8
  %.not.i = icmp eq i8 %i.d, -1
  br i1 %.not.i, label %_RNvXs_NvNtNtCse52LceO7DeS_12typst_macros4util2kws4_1__NtB6_11constructorNtNtNtCsjMPGGl8VONr_3syn5token7private11CustomToken4peek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.e = invoke zeroext i1 @_RNvXsv_CscVvfRCjUNk2_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCsjMPGGl8VONr_3syn(ptr nonnull align 8 %i.a, ptr nonnull align 8 @33)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.a) #25
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.a)
  br label %_RNvXs_NvNtNtCse52LceO7DeS_12typst_macros4util2kws4_1__NtB6_11constructorNtNtNtCsjMPGGl8VONr_3syn5token7private11CustomToken4peek.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
end_hunk_1
