Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.7?download=true
inline.NumInlined: 127
inline.NumDeleted: 95
begin_hunk_0_@_RNvXs8_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_10PunctuatedNtCscVvfRCjUNk2_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCse52LceO7DeS_12typst_macros:bb.a
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.s = extractvalue { i64, ptr } %i.q, 0
  %i.t = extractvalue { i64, ptr } %i.q, 1
  store i64 %i.s, ptr %i.l, align 8, !alias.scope !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 8 uses
  store i64 0, ptr %i.v, align 8, !alias.scope !62
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0.copyload = load i64, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  store ptr %.sroa.2.0.copyload, ptr %i.j, align 8, !alias.scope !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.x, align 8, !alias.scope !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.y, align 8, !alias.scope !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.w, ptr %i.z, align 8, !alias.scope !63
  invoke void @_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3mapBS_NCNvXs8_NtB1v_10punctuatedINtB3b_10PunctuatedBS_B1r_ENtNtB25_7collect12IntoIterator9into_iter0ECse52LceO7DeS_12typst_macros(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB2E_10punctuatedINtB3i_10PunctuatedB21_B2A_ENtB2_12IntoIterator9into_iter0EB42_9into_iterCse52LceO7DeS_12typst_macros(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.k) #22
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB2o_10punctuatedINtB32_10PunctuatedB1L_B2k_ENtNtNtB9_6traits7collect12IntoIterator9into_iter0ENtNtB3Q_8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.h)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = load i64, ptr %i.v, align 8             ; 3 uses
  %i.ag = load i64, ptr %i.l, align 8
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = icmp ugt i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.h, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTBT_NtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB3b_10punctuatedINtB3P_10PunctuatedBT_B37_ENtNtNtB1V_6traits7collect12IntoIterator9into_iter0EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.l, i64 %i.af, i64 %i.ae, i64 8, i64 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i unwind label %bb.k

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i: ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %i.v, align 8
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTBT_NtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB3b_10punctuatedINtB3P_10PunctuatedBT_B37_ENtNtNtB1V_6traits7collect12IntoIterator9into_iter0EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #25
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h, %.noexc
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB2B_10punctuatedINtB3f_10PunctuatedB1Y_B2x_ENtNtNtBI_6traits7collect12IntoIterator9into_iter0EECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.h) #23
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTBT_NtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB3b_10punctuatedINtB3P_10PunctuatedBT_B37_ENtNtNtB1V_6traits7collect12IntoIterator9into_iter0EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i, %bb.g
  %i.ak = phi i64 [ %.pre.i.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i ], [ %i.af, %bb.g ]
  %i.al = load ptr, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.al, ptr %i.am, align 8
  store ptr %i.v, ptr %i.e, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ak, ptr %i.an, align 8
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB2j_10punctuatedINtB2X_10PunctuatedB1G_B2f_ENtNtNtBa_6traits7collect12IntoIterator9into_iter0ENtNtB3L_8iterator8Iterator8for_eachNCINvMsk_BW_INtBW_3VecB1G_E14extend_trustedB3_E0ECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.c

bb.m:                                             ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTBT_NtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB3b_10punctuatedINtB3P_10PunctuatedBT_B37_ENtNtNtB1V_6traits7collect12IntoIterator9into_iter0EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ao = load ptr, ptr %i.n, align 8
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtCscVvfRCjUNk2_11proc_macro25IdentEE3mapB1h_NCNvXs8_NtCsjMPGGl8VONr_3syn10punctuatedINtB28_10PunctuatedB1h_NtNtB2a_5token5CommaENtNtNtNtB5_4iter6traits7collect12IntoIterator9into_iters_0ECse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr align 8 %i.ao)
          to label %bb.n unwind label %bb.c

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtCscVvfRCjUNk2_11proc_macro25IdentENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.i) #22
          to label %.noexc9 unwind label %bb.c

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsy_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterNtCscVvfRCjUNk2_11proc_macro25IdentENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %.noexc9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = load i64, ptr %i.v, align 8             ; 3 uses
  %i.av = load i64, ptr %i.l, align 8
  %i.aw = sub i64 %i.av, %i.au
  %i.ax = icmp ugt i64 %i.at, %i.aw
  br i1 %i.ax, label %bb.q, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtCs3oUPovFnLWP_4core6option8IntoIterBT_EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.l, i64 %i.au, i64 %i.at, i64 8, i64 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i7 unwind label %bb.t

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i7: ; preds = %bb.q
  %.pre.i.i.i8 = load i64, ptr %i.v, align 8
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtCs3oUPovFnLWP_4core6option8IntoIterBT_EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i

bb.r:                                             ; preds = %bb.o
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #25
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %.noexc9
  %lpad.thr_comm.i.i.i6 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCscVvfRCjUNk2_11proc_macro25IdentEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.d) #23
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtCs3oUPovFnLWP_4core6option8IntoIterBT_EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i7, %bb.p
  %i.az = phi i64 [ %.pre.i.i.i8, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro25IdentE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i7 ], [ %i.au, %bb.p ]
  %i.ba = load ptr, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ba, ptr %i.bb, align 8
  store ptr %i.v, ptr %i.a, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.az, ptr %i.bc, align 8
  invoke void @_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtCscVvfRCjUNk2_11proc_macro25IdentENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2e_3VecBH_E14extend_trustedB3_E0ECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.v unwind label %bb.c

bb.v:                                             ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCscVvfRCjUNk2_11proc_macro25IdentEINtB4_10SpecExtendBT_INtNtCs3oUPovFnLWP_4core6option8IntoIterBT_EE11spec_extendCse52LceO7DeS_12typst_macros.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.023.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.224.0.copyload = load ptr, ptr %i.u, align 8 ; 3 uses
  %.sroa.325.0.copyload = load i64, ptr %i.v, align 8
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.224.0.copyload, i64 %.sroa.325.0.copyload
  store ptr %.sroa.224.0.copyload, ptr %0, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.224.0.copyload, ptr %.sroa.221.0..sroa_idx, align 8
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.023.0.copyload, ptr %.sroa.322.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx, align 8
  ret void

.body:                                            ; preds = %bb.t, %bb.k, %bb.c
  %.sroa.01.1.lpad-body = phi i1 [ true, %bb.k ], [ %.sroa.01.1, %bb.c ], [ false, %bb.t ]
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %bb.k ], [ %i.r, %bb.c ], [ %lpad.thr_comm.i.i.i6, %bb.t ] ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCscVvfRCjUNk2_11proc_macro25IdentEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.l) #23
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %.thread31, %bb.y, %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.x:                                             ; preds = %.body
  br i1 %.sroa.01.1.lpad-body, label %.thread31, label %bb.z

bb.y:                                             ; preds = %bb.b, %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %1) #23
          to label %.thread31 unwind label %bb.w

bb.z:                                             ; preds = %.thread31, %bb.x
  %.pn2934 = phi { ptr, i32 } [ %.pn2935, %.thread31 ], [ %eh.lpad-body, %bb.x ]
  resume { ptr, i32 } %.pn2934

.thread31:                                        ; preds = %bb.y, %bb.x
  %.pn2935 = phi { ptr, i32 } [ %eh.lpad-body, %bb.x ], [ %i.bf, %bb.y ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtCscVvfRCjUNk2_11proc_macro25IdentEEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.n) #23
          to label %bb.z unwind label %bb.w
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs9_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mutBJ_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs9_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mutCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs9_NtCsjMPGGl8VONr_3syn10punctuatedRINtB5_10PunctuatedNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCse52LceO7DeS_12typst_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCsjMPGGl8VONr_3syn4data7VariantNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBK_(ptr align 8 %0) #22 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtCsjMPGGl8VONr_3syn4data7VariantNtNtBz_5token5CommaE4iterBz_(ptr align 8 %i.d, i64 %i.e) #22 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsjMPGGl8VONr_3syn4data7VariantEE6as_refB1k_(ptr nonnull align 8 %i.i) #22
  %i.k = tail call align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsjMPGGl8VONr_3syn4data7VariantEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refEB1m_(ptr align 8 %i.j) #22
  %i.l = tail call align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCsjMPGGl8VONr_3syn4data7VariantENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr align 8 %i.k) #22
  store ptr %i.g, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.n, align 8
  call void @_RNvMNtCsjMPGGl8VONr_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data7VariantNtNtB4_5token5CommaEE3newCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.o = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCse52LceO7DeS_12typst_macros(i64 8, i64 24) #22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @18, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs9_NtCsjMPGGl8VONr_3syn10punctuatedRINtB5_10PunctuatedNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCse52LceO7DeS_12typst_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCsjMPGGl8VONr_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterB4_(ptr align 8 %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs9_NtCsjMPGGl8VONr_3syn10punctuatedRINtB5_10PunctuatedNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBY_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8
  %i.e = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtCsjMPGGl8VONr_3syn5token5CommaE4iterBz_(ptr align 8 %.val.i, i64 %.val1.i) #22 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCse52LceO7DeS_12typst_macros4cast4CastEE6as_refB1k_(ptr nonnull align 8 %i.h) #22
  %i.j = tail call align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCse52LceO7DeS_12typst_macros4cast4CastEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refEB1m_(ptr align 8 %i.i) #22
  %i.k = tail call align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCse52LceO7DeS_12typst_macros4cast4CastENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr align 8 %i.j) #22
  store ptr %i.f, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.m, align 8
  call void @_RNvMNtCsjMPGGl8VONr_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB4_5token5CommaEE3newB1g_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.n = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCse52LceO7DeS_12typst_macros(i64 8, i64 24) #22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.o = insertvalue { ptr, ptr } poison, ptr %i.n, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr @21, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsA_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCse52LceO7DeS_12typst_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.c = tail call { ptr, ptr } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTNtNtCsjMPGGl8VONr_3syn4attr13MetaNameValueNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr align 8 %0) #22, !noalias !66 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsjMPGGl8VONr_3syn4attr13MetaNameValueENtNtB7_5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.f) #22, !noalias !66
  store ptr %i.d, ptr %i.a, align 8, !alias.scope !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8, !alias.scope !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8, !alias.scope !66
  call void @_RNvMNtCsjMPGGl8VONr_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4attr13MetaNameValueNtNtB4_5token5CommaEE3newCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.j = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCse52LceO7DeS_12typst_macros(i64 8, i64 24) #22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @15, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsA_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCse52LceO7DeS_12typst_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.c = tail call { ptr, ptr } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTNtNtCsjMPGGl8VONr_3syn4data7VariantNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr align 8 %0) #22, !noalias !69 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsjMPGGl8VONr_3syn4data7VariantENtNtB7_5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.f) #22, !noalias !69
  store ptr %i.d, ptr %i.a, align 8, !alias.scope !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8, !alias.scope !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8, !alias.scope !69
  call void @_RNvMNtCsjMPGGl8VONr_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data7VariantNtNtB4_5token5CommaEE3newCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.j = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCse52LceO7DeS_12typst_macros(i64 8, i64 24) #22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @18, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsA_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxBY_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.c = tail call { ptr, ptr } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtCsjMPGGl8VONr_3syn5token5CommaEENtNtB9_5clone5Clone5cloneBT_(ptr align 8 %0) #22, !noalias !72 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCse52LceO7DeS_12typst_macros4cast4CastENtNtB7_5clone5Clone5cloneBR_(ptr nonnull align 8 %i.f) #22, !noalias !72
  store ptr %i.d, ptr %i.a, align 8, !alias.scope !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8, !alias.scope !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8, !alias.scope !72
  call void @_RNvMNtCsjMPGGl8VONr_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB4_5token5CommaEE3newB1g_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.j = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCse52LceO7DeS_12typst_macros(i64 8, i64 24) #22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @21, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0ENtNtNtB9_6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 8 %1) #22
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCse52LceO7DeS_12typst_macros:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamEINtNtNtBa_5slice4iter4IterB1j_EENtNtNtB8_6traits8iterator8Iterator4nextB1n_(ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamERB1o_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1s_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call align 8 ptr @_RNvYNvYINtNtCs3oUPovFnLWP_4core6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextINtNtNtBa_3ops8function6FnOnceTQB5_EE9call_onceBJ_(ptr nonnull align 8 %i.c) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamERB1o_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1s_.exit

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamERB1o_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1s_.exit

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamERB1o_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1s_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = tail call align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCse52LceO7DeS_12typst_macros4func5ParamE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1G_5ChainINtB3_4IterBJ_EINtNtNtB5_5slice4iter4IterBJ_EENtNtNtB1K_6traits8iterator8Iterator4next0EBN_(ptr align 8 %.sroa.0.0.i, ptr nonnull align 8 %i.e) #22
  ret ptr %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCse52LceO7DeS_12typst_macros4elem5FieldEENtNtNtB8_6traits8iterator8Iterator4nextB1E_(ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_7IterMutNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBW_(ptr align 8 %0) #22 ; 2 uses
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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsg_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.35.0.copyload = load i64, ptr %.sroa.35.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %.sroa.24.0.copyload, i64 %.sroa.35.0.copyload
  store ptr %.sroa.24.0.copyload, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0.copyload, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.24.0.copyload, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4func5ParamENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [480 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjMPGGl8VONr_3syn5parseNvMNtB7_10punctuatedINtBy_10PunctuatedNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaE24parse_separated_nonemptyNtB5_6Parser14___parse_scopedCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8 %0, i32 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.k = alloca [16 x i8], align 8                ; 2 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.n = call { ptr, i64 } @_RNvMNtCsjMPGGl8VONr_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = invoke { ptr, ptr } @_RNvMNtCsjMPGGl8VONr_3syn6bufferNtB2_11TokenBuffer5begin(ptr nonnull align 8 %i.m)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn, %bb.h ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.m) #23
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %.invoke, %bb.f, %bb.e, %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.t = extractvalue { ptr, ptr } %i.r, 0
  %i.u = extractvalue { ptr, ptr } %i.r, 1
  store i8 0, ptr %i.k, align 8
  invoke void @_RNvMs7_NtCs3oUPovFnLWP_4core4cellINtB5_4CellNtNtCsjMPGGl8VONr_3syn5parse10UnexpectedE3newBK_(ptr nonnull sret([16 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.v = invoke ptr @_RNvMs7_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCsjMPGGl8VONr_3syn5parse10UnexpectedEE3newB1f_(ptr nonnull align 8 %i.l)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsjMPGGl8VONr_3syn5parse16new_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, i32 %1, ptr %i.t, ptr %i.u, ptr %i.v)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvYNvMNtCsjMPGGl8VONr_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaE24parse_separated_nonemptyINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB7_5parse11ParseBufferEE9call_onceCse52LceO7DeS_12typst_macros(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.aa, %bb.n ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #23
          to label %bb.b unwind label %bb.x

bb.i:                                             ; preds = %.invoke10, %bb.l, %bb.j, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsjMPGGl8VONr_3syn10punctuated10PunctuatedNtNtBP_4attr13MetaNameValueNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCse52LceO7DeS_12typst_macros(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %i.h, align 8
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsjMPGGl8VONr_3syn10punctuated10PunctuatedNtNtBP_4attr13MetaNameValueNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2g_EE13from_residualCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @26)
          to label %.invoke unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.u, %bb.s, %bb.r, %bb.q, %bb.o, %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjMPGGl8VONr_3syn10punctuated10PunctuatedNtNtBG_4attr13MetaNameValueNtNtBG_5token5CommaEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.i) #23
          to label %bb.h unwind label %bb.x

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCsjMPGGl8VONr_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ab = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsjMPGGl8VONr_3syn10punctuated10PunctuatedNtNtBP_4attr13MetaNameValueNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2g_EE13from_residualCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @25)
          to label %.invoke10 unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.ac = invoke { ptr, ptr } @_RNvMs9_NtCsjMPGGl8VONr_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.s unwind label %bb.n       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  %i.af = invoke { i32, i8 } @_RNvNtCsjMPGGl8VONr_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.ad, ptr %i.ae)
          to label %bb.t unwind label %bb.n       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ag = extractvalue { i32, i8 } %i.af, 1       ; 2 uses
  %.not6.not = icmp eq i8 %i.ag, -1
  br i1 %.not6.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = extractvalue { i32, i8 } %i.af, 0
  invoke void @_RNvNtCsjMPGGl8VONr_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ah, i8 %i.ag)
          to label %bb.v unwind label %bb.n

.thread:                                          ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %.invoke

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %.invoke10

bb.w:                                             ; preds = %.invoke
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.m)
  ret void

.invoke10:                                        ; preds = %bb.q, %bb.v
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjMPGGl8VONr_3syn10punctuated10PunctuatedNtNtBG_4attr13MetaNameValueNtNtBG_5token5CommaEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.i

.invoke:                                          ; preds = %.invoke10, %bb.l, %.thread
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.w unwind label %bb.c

bb.x:                                             ; preds = %bb.n, %bb.h, %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.y:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXsi_NtCs1xwejQucwHj_5alloc3vecQINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [592 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCscVvfRCjUNk2_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCscVvfRCjUNk2_11proc_macro211TokenStreamECse52LceO7DeS_12typst_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCscVvfRCjUNk2_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCscVvfRCjUNk2_11proc_macro25IdentECse52LceO7DeS_12typst_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECse52LceO7DeS_12typst_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4cast7VariantENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCse52LceO7DeS_12typst_macros4cast7VariantEBG_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCse52LceO7DeS_12typst_macros4elem5FieldEBG_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4func5ParamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCse52LceO7DeS_12typst_macros4func5ParamEBG_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsjMPGGl8VONr_3syn3lit6LitStrECse52LceO7DeS_12typst_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnECse52LceO7DeS_12typst_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEECse52LceO7DeS_12typst_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtCsjMPGGl8VONr_3syn5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtCsjMPGGl8VONr_3syn5token5CommaEEBH_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCsjMPGGl8VONr_3syn4attr13MetaNameValueNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsjMPGGl8VONr_3syn4attr13MetaNameValueNtNtBH_5token5CommaEECse52LceO7DeS_12typst_macros(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %.val2 = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val3 = load ptr, ptr %i.a, align 8
  %i.b = tail call { ptr, ptr } @_RNvXs_NtCsjMPGGl8VONr_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB6_(ptr %.val2, ptr align 8 %.val3) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  %i.g = tail call i64 %i.f(ptr %i.c) #22, !inline_history !73
  %.val = load ptr, ptr %1, align 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.h = tail call { ptr, ptr } @_RNvXs_NtCsjMPGGl8VONr_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB6_(ptr %.val, ptr align 8 %.val1) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !4, !nonnull !4
  %i.m = tail call i64 %i.l(ptr %i.i) #22, !inline_history !73
  store i64 %i.g, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RNvXst_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_4IterNtNtB7_4data7VariantENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCsjMPGGl8VONr_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated9IterTraitNtNtB7_4data7VariantEp4ItemRB1d_EL_ENtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mutCse52LceO7DeS_12typst_macros(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #22
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RNvXst_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_4IterNtNtCse52LceO7DeS_12typst_macros4cast4CastENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBQ_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCsjMPGGl8VONr_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated9IterTraitNtNtCse52LceO7DeS_12typst_macros4cast4CastEp4ItemRB1d_EL_ENtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mutB1h_(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
end_hunk_1
