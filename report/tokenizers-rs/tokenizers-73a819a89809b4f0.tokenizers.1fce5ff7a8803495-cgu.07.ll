Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.07?download=true
inline.NumInlined: 820
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders9wordpiece7cleanup:bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit57 unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit57: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i54
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit60 unwind label %bb.an

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit57
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body55, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.an ], [ %.pn16, %.body55 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit60: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit57
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ap:                                            ; preds = %bb.t, %.body, %.body20, %.body25, %.body30, %.body35, %.body40, %.body45, %.body50, %.body55
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = or i64 %4, %3
  %or.cond = icmp eq i64 %i.a, 0                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %.not.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i
  %.sroa.7.0 = phi i64 [ %.sroa.7.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %.sroa.028.0 = phi i1 [ %.sroa.028.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ %or.cond, %bb.a ] ; 3 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i1 [ %.sroa.0.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ %or.cond, %bb.a ] ; 3 uses
  %i.c = phi i64 [ %.pre-phi, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi i64 [ %i.as, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ 0, %bb.a ] ; 6 uses
  %i.e = phi ptr [ %i.ao, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ %1, %bb.a ] ; 6 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.h = load i8, ptr %i.e, align 1, !noalias !1237, !noundef !3 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.b, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.b
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !noalias !1237, !noundef !3
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i
  %i.u = icmp ne ptr %i.m, %i.b
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 3 uses
  %i.w = load i8, ptr %i.m, align 1, !noalias !1237, !noundef !3
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i
  %i.ae = icmp ne ptr %i.v, %i.b
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ag = load i8, ptr %i.v, align 1, !noalias !1237, !noundef !3
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i
  %i.ao = phi ptr [ %i.v, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ac, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i ], [ %i.an, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i ], [ %i.t, %bb.b ] ; 4 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.d, %i.f
  %i.as = add i64 %i.ar, %i.aq
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.d, %4
  br i1 %.not.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.d, %3
  br i1 %.not.i.i.i.i.i.i.i.i, label %._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge, label %bb.e

._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge: ; preds = %bb.d
  %.pre = add i64 %i.c, 1
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.at = icmp eq i64 %i.d, %3                    ; 2 uses
  %spec.select = select i1 %i.at, i64 %i.c, i64 %.sroa.7.0
  %spec.select33 = select i1 %i.at, i1 true, i1 %.sroa.028.0
  %i.au = icmp eq i64 %i.d, %4                    ; 2 uses
  %.sroa.8.1 = select i1 %i.au, i64 %i.c, i64 %.sroa.8.0
  %i.av = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 128
  br i1 %i.av, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 2048
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i.i.i = select i1 %i.ax, i64 3, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ %..i.i.i.i.i.i.i.i.i.i, %bb.g ], [ 1, %bb.e ]
  %i.ay = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.d
  %i.az = icmp eq i64 %i.ay, %4                   ; 2 uses
  %i.ba = add i64 %i.c, 1                         ; 2 uses
  %spec.select34 = select i1 %i.az, i64 %i.ba, i64 %.sroa.8.1
  %i.bb = or i1 %i.au, %i.az
  %spec.select35 = select i1 %i.bb, i1 true, i1 %.sroa.0.0
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i: ; preds = %._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge, %bb.h
  %.pre-phi = phi i64 [ %.pre, %._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge ], [ %i.ba, %bb.h ]
  %.sroa.7.2 = phi i64 [ %.sroa.7.0, %._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge ], [ %spec.select, %bb.h ] ; 2 uses
  %.sroa.028.2 = phi i1 [ %.sroa.028.0, %._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge ], [ %spec.select33, %bb.h ] ; 2 uses
  %.sroa.8.2 = phi i64 [ %.sroa.8.0, %._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge ], [ %spec.select34, %bb.h ] ; 2 uses
  %.sroa.0.2 = phi i1 [ %.sroa.0.0, %._RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i_crit_edge ], [ %spec.select35, %bb.h ] ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not19.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit.loopexit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit.loopexit: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i, %bb.c
  %.sroa.7.3.ph = phi i64 [ %.sroa.7.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ %.sroa.7.0, %bb.c ]
  %.sroa.028.3.ph = phi i1 [ %.sroa.028.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ %.sroa.028.0, %bb.c ]
  %.sroa.8.3.ph = phi i64 [ %.sroa.8.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ %.sroa.8.0, %bb.c ]
  %.sroa.0.3.ph = phi i1 [ %.sroa.0.2, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateTjcEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3F_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2P_NCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0NCINvMB2S_B2P_10wrap_mut_2uB4z_NCINvNtBb_6filter11filter_foldB4z_uNCB4N_s_0NCINvNvB1e_8for_each4callB4z_NCB4N_s0_0E0E0E0E0E0B4T_.exit.i.i.i.i ], [ %.sroa.0.0, %bb.c ]
  %i.bc = select i1 %.sroa.028.3.ph, i1 %.sroa.0.3.ph, i1 false
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit: ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit.loopexit, %bb.a
  %.sroa.7.3 = phi i64 [ 0, %bb.a ], [ %.sroa.7.3.ph, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit.loopexit ]
  %.sroa.028.3 = phi i1 [ %or.cond, %bb.a ], [ %i.bc, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit.loopexit ]
  %.sroa.8.3 = phi i64 [ 0, %bb.a ], [ %.sroa.8.3.ph, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit.loopexit ]
  br i1 %.sroa.028.3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.3, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.3, ptr %i.be, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit, %bb.i
  %.sink = phi i64 [ 1, %bb.i ], [ 0, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjTjcEEuNCB2b_s_0NCINvNvB3k_8for_each4callB4s_NCB2b_s0_0E0E0EB2h_.exit ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = or i64 %4, %3
  %or.cond = icmp eq i64 %i.a, 0
  %i.b = icmp eq i64 %3, %4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 25 uses
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit, %bb.b
  %.sroa.1866.0 = phi i64 [ 0, %bb.b ], [ %i.eh, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit ] ; 5 uses
  %.sroa.063.0 = phi ptr [ %1, %bb.b ], [ %.sroa.063.4, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit ] ; 7 uses
  %i.d = xor i64 %3, -1
  %.sroa.01.0.i.i.i106 = add i64 %4, %i.d         ; 2 uses
  %i.e = icmp eq ptr %.sroa.063.0, %i.c
  br i1 %i.e, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = ptrtoint ptr %.sroa.063.0 to i64         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 1 ; 4 uses
  %i.h = load i8, ptr %.sroa.063.0, align 1, !noalias !1254, !noundef !3 ; 4 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %.thread161, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel: ; preds = %.lr.ph.preheader
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !noalias !1254, !noundef !3
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel
  %i.t = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.m, align 1, !noalias !1254, !noundef !3
  %i.w = shl nuw nsw i32 %i.q, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.k, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel
  %i.ad = icmp ne ptr %i.u, %i.c
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !1254, !noundef !3
  %i.ag = shl nuw nsw i32 %i.k, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.d

.thread161:                                       ; preds = %.lr.ph.preheader
  %i.an = ptrtoint ptr %i.g to i64
  %i.ao = sub i64 %.sroa.1866.0, %i.f
  %i.ap = add i64 %i.ao, %i.an
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel
  %i.aq = phi ptr [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel ], [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i.peel = phi i32 [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel ], [ %i.r, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %.sroa.1866.0, %i.f
  %i.au = add i64 %i.at, %i.as                    ; 3 uses
  %i.av = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 128
  br i1 %i.av, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 2048
  br i1 %i.aw, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 65536
  %..i.i.i.i.i.peel = select i1 %i.ax, i64 3, i64 4
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel: ; preds = %.thread161, %bb.f, %bb.e, %bb.d
  %i.ay = phi i64 [ %i.au, %bb.e ], [ %i.au, %bb.f ], [ %i.au, %bb.d ], [ %i.ap, %.thread161 ]
  %i.az = phi ptr [ %i.aq, %bb.e ], [ %i.aq, %bb.f ], [ %i.aq, %bb.d ], [ %i.g, %.thread161 ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.peel = phi i64 [ 2, %bb.e ], [ %..i.i.i.i.i.peel, %bb.f ], [ 1, %bb.d ], [ 1, %.thread161 ]
  %i.ba = add i64 %.sroa.0.0.i.i.i.i.i.peel, %.sroa.1866.0
  %i.bb = icmp eq i64 %.sroa.01.0.i.i.i106, 0
  %i.bc = icmp eq ptr %i.az, %i.c
  %or.cond182 = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond182, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i
  %.sroa.01.0.i.i.i110.in = phi i64 [ %.sroa.01.0.i.i.i110, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i ], [ %.sroa.01.0.i.i.i106, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ]
  %i.bd = phi ptr [ %i.cz, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i ], [ %i.az, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ] ; 6 uses
  %i.be = phi i64 [ %i.cy, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i ], [ %i.ay, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ] ; 3 uses
  %.sroa.01.0.i.i.i110 = add i64 %.sroa.01.0.i.i.i110.in, -1 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  %i.bh = load i8, ptr %i.bd, align 1, !noalias !1254, !noundef !3 ; 4 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.thread165, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i: ; preds = %.lr.ph
  %i.bj = and i8 %i.bh, 31
  %i.bk = zext nneg i8 %i.bj to i32               ; 3 uses
  %i.bl = icmp ne ptr %i.bg, %i.c
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 3 uses
  %i.bn = load i8, ptr %i.bg, align 1, !noalias !1254, !noundef !3
  %i.bo = shl nuw nsw i32 %i.bk, 6
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i32               ; 2 uses
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = icmp samesign ugt i8 %i.bh, -33
  br i1 %i.bs, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i, label %bb.g

.thread165:                                       ; preds = %.lr.ph
  %i.bt = ptrtoint ptr %i.bg to i64
  %i.bu = sub i64 %i.be, %i.bf
  %i.bv = add i64 %i.bu, %i.bt
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i
  %i.bw = icmp ne ptr %i.bm, %i.c
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 3 ; 3 uses
  %i.by = load i8, ptr %i.bm, align 1, !noalias !1254, !noundef !3
  %i.bz = shl nuw nsw i32 %i.bq, 6
  %i.ca = and i8 %i.by, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb            ; 2 uses
  %i.cd = shl nuw nsw i32 %i.bk, 12
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %i.cf = icmp samesign ugt i8 %i.bh, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i
  %i.cg = icmp ne ptr %i.bx, %i.c
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.ci = load i8, ptr %i.bx, align 1, !noalias !1254, !noundef !3
  %i.cj = shl nuw nsw i32 %i.bk, 18
  %i.ck = and i32 %i.cj, 1835008
  %i.cl = shl nuw nsw i32 %i.cc, 6
  %i.cm = and i8 %i.ci, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.ck
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i
  %i.cq = phi ptr [ %i.bx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i ], [ %i.ch, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ce, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i ], [ %i.cp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i ] ; 4 uses
  %i.cr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.be, %i.bf
  %i.cu = add i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 128
  br i1 %i.cv, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 2048
  br i1 %i.cw, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 65536
  %..i.i.i.i.i = select i1 %i.cx, i64 3, i64 4
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i: ; preds = %.thread165, %bb.i, %bb.h, %bb.g
  %i.cy = phi i64 [ %i.cu, %bb.h ], [ %i.cu, %bb.i ], [ %i.cu, %bb.g ], [ %i.bv, %.thread165 ]
  %i.cz = phi ptr [ %i.cq, %bb.h ], [ %i.cq, %bb.i ], [ %i.cq, %bb.g ], [ %i.bg, %.thread165 ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 2, %bb.h ], [ %..i.i.i.i.i, %bb.i ], [ 1, %bb.g ], [ 1, %.thread165 ]
  %i.da = icmp eq i64 %.sroa.01.0.i.i.i110, 0
  %i.db = icmp eq ptr %i.cz, %i.c
  %or.cond173 = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond173, label %.thread.loopexit172, label %.lr.ph, !llvm.loop !1271

bb.j:                                             ; preds = %bb.b
  %i.dc = add i64 %3, -1                          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %.preheader96

..loopexit_crit_edge.i:                           ; preds = %bb.j
  %.pre5.i = ptrtoint ptr %1 to i64
  br label %.loopexit.i

.preheader96:                                     ; preds = %bb.j, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i
  %i.dd = phi i64 [ %i.ds, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ 0, %bb.j ]
  %i.de = phi ptr [ %i.dp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ %1, %bb.j ] ; 6 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.dt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ %i.dc, %bb.j ]
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = icmp eq ptr %i.de, %i.c
  br i1 %i.dg, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.de, align 1, !noalias !1273, !noundef !3 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i: ; preds = %bb.k
  %i.dk = icmp ne ptr %i.dh, %i.c
  tail call void @llvm.assume(i1 %i.dk), !noalias !1286
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dm = icmp samesign ugt i8 %i.di, -33
  br i1 %i.dm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i
  %i.dn = icmp ne ptr %i.dl, %i.c
  tail call void @llvm.assume(i1 %i.dn), !noalias !1286
  %i.do = icmp samesign ugt i8 %i.di, -17
  %spec.select.v = select i1 %i.do, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %i.de, i64 %spec.select.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i, %bb.k, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i
  %i.dp = phi ptr [ %spec.select, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i ], [ %i.dh, %bb.k ], [ %i.dl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i ] ; 3 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dr = sub i64 %i.dq, %i.df
  %i.ds = add i64 %i.dr, %i.dd                    ; 2 uses
  %i.dt = add i64 %.sroa.01.0.i.i.i.i, -1         ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.loopexit.i, label %.preheader96

.loopexit.i:                                      ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i, %..loopexit_crit_edge.i
  %.sroa.1866.2 = phi i64 [ 0, %..loopexit_crit_edge.i ], [ %i.ds, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ]
  %.pre-phi.i = phi i64 [ %.pre5.i, %..loopexit_crit_edge.i ], [ %i.dq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ]
  %i.dv = phi ptr [ %1, %..loopexit_crit_edge.i ], [ %i.dp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ] ; 5 uses
  %i.dw = icmp eq ptr %i.dv, %i.c
  br i1 %i.dw, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.dy = load i8, ptr %i.dv, align 1, !noalias !1287, !noundef !3 ; 3 uses
  %i.dz = icmp sgt i8 %i.dy, -1
  br i1 %i.dz, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i: ; preds = %bb.l
  %i.ea = icmp ne ptr %i.dx, %i.c
  tail call void @llvm.assume(i1 %i.ea), !noalias !1286
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  %i.ec = icmp samesign ugt i8 %i.dy, -33
  br i1 %i.ec, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %i.ed = icmp ne ptr %i.eb, %i.c
  tail call void @llvm.assume(i1 %i.ed), !noalias !1286
  %i.ee = icmp samesign ugt i8 %i.dy, -17
  %spec.select191.v.a = select i1 %i.ee, i64 4, i64 3
  %spec.select191.a = getelementptr inbounds nuw i8, ptr %i.dv, i64 %spec.select191.v.a
  br label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, %bb.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %.sroa.063.4 = phi ptr [ %i.eb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.dx, %bb.l ], [ %spec.select191.a, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.063.4 to i64
  %i.eg = sub i64 %.sroa.1866.2, %.pre-phi.i
  %i.eh = add i64 %i.eg, %i.ef
  br label %bb.c

bb.m:                                             ; preds = %bb.a
  %.not.i.i25 = icmp eq i64 %4, 0
  br i1 %.not.i.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56, %bb.m
  %.sroa.18.0 = phi i64 [ 0, %bb.m ], [ %i.fy, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56 ] ; 8 uses
  %.sroa.059.0 = phi ptr [ %1, %bb.m ], [ %.sroa.059.4, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56 ] ; 5 uses
  %i.ei = icmp eq ptr %.sroa.059.0, %i.c
  br i1 %i.ei, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.n
  %i.ej = load i8, ptr %.sroa.059.0, align 1, !noalias !1292, !noundef !3 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31: ; preds = %.lr.ph119
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 1
  %i.em = icmp ne ptr %i.el, %i.c
  tail call void @llvm.assume(i1 %i.em)
  %i.en = icmp samesign ugt i8 %i.ej, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33, label %.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 2
  %i.ep = icmp ne ptr %i.eo, %i.c
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i8 %i.ej, -17
  br i1 %i.eq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34, label %.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 3
  %i.es = icmp ne ptr %i.er, %i.c
  tail call void @llvm.assume(i1 %i.es)
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.et = add i64 %4, -1                          ; 2 uses
  %.not.i.i.i35 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i35, label %..loopexit_crit_edge.i51, label %.preheader

..loopexit_crit_edge.i51:                         ; preds = %bb.o
  %.pre5.i55 = ptrtoint ptr %1 to i64
  br label %.loopexit.i41

.preheader:                                       ; preds = %bb.o, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50
  %i.eu = phi i64 [ %i.fj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ 0, %bb.o ]
  %i.ev = phi ptr [ %i.fg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ %1, %bb.o ] ; 6 uses
  %.sroa.01.0.i.i.i.i38 = phi i64 [ %i.fk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ %i.et, %bb.o ]
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = icmp eq ptr %i.ev, %i.c
  br i1 %i.ex, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  %i.ez = load i8, ptr %i.ev, align 1, !noalias !1309, !noundef !3 ; 3 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39: ; preds = %bb.p
  %i.fb = icmp ne ptr %i.ey, %i.c
  tail call void @llvm.assume(i1 %i.fb), !noalias !1322
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 2 ; 2 uses
  %i.fd = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39
  %i.fe = icmp ne ptr %i.fc, %i.c
  tail call void @llvm.assume(i1 %i.fe), !noalias !1322
  %i.ff = icmp samesign ugt i8 %i.ez, -17
  %spec.select192.v = select i1 %i.ff, i64 4, i64 3
  %spec.select192 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %spec.select192.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49, %bb.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39
  %i.fg = phi ptr [ %spec.select192, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49 ], [ %i.ey, %bb.p ], [ %i.fc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39 ] ; 3 uses
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fi = sub i64 %i.fh, %i.ew
  %i.fj = add i64 %i.fi, %i.eu                    ; 2 uses
  %i.fk = add i64 %.sroa.01.0.i.i.i.i38, -1       ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.loopexit.i41, label %.preheader

.loopexit.i41:                                    ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50, %..loopexit_crit_edge.i51
  %.sroa.18.2 = phi i64 [ 0, %..loopexit_crit_edge.i51 ], [ %i.fj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ]
  %.pre-phi.i42 = phi i64 [ %.pre5.i55, %..loopexit_crit_edge.i51 ], [ %i.fh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ]
  %i.fm = phi ptr [ %1, %..loopexit_crit_edge.i51 ], [ %i.fg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ] ; 5 uses
  %i.fn = icmp eq ptr %i.fm, %i.c
  br i1 %i.fn, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit.i41
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  %i.fp = load i8, ptr %i.fm, align 1, !noalias !1323, !noundef !3 ; 3 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43: ; preds = %bb.q
  %i.fr = icmp ne ptr %i.fo, %i.c
  tail call void @llvm.assume(i1 %i.fr), !noalias !1322
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 2 uses
  %i.ft = icmp samesign ugt i8 %i.fp, -33
  br i1 %i.ft, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43
  %i.fu = icmp ne ptr %i.fs, %i.c
  tail call void @llvm.assume(i1 %i.fu), !noalias !1322
  %i.fv = icmp samesign ugt i8 %i.fp, -17
  %spec.select193.v = select i1 %i.fv, i64 4, i64 3
  %spec.select193 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %spec.select193.v
  br label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47, %bb.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43
  %.sroa.059.4 = phi ptr [ %i.fs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43 ], [ %i.fo, %bb.q ], [ %spec.select193, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47 ] ; 2 uses
  %i.fw = ptrtoint ptr %.sroa.059.4 to i64
  %i.fx = sub i64 %.sroa.18.2, %.pre-phi.i42
  %i.fy = add i64 %i.fx, %i.fw
  br label %bb.n

_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit: ; preds = %.preheader96, %.preheader, %bb.c, %bb.n, %.loopexit.i41, %.loopexit.i
  br i1 %or.cond, label %.thread, label %bb.r

.thread.loopexit172:                              ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i
  %i.fz = add i64 %.sroa.0.0.i.i.i.i.i, %i.be
  br label %.thread

.thread:                                          ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34, %.lr.ph119, %.thread.loopexit172, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit
  %.sroa.8.08592 = phi i64 [ %i.fz, %.thread.loopexit172 ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ], [ %i.ba, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ], [ %.sroa.18.0, %.lr.ph119 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31 ]
  %.sroa.9.08791 = phi i64 [ %.sroa.1866.0, %.thread.loopexit172 ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ], [ %.sroa.1866.0, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ], [ %.sroa.18.0, %.lr.ph119 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.08791, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.08592, ptr %i.gb, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, %.thread
  %.sink = phi i64 [ 1, %.thread ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB6_9tokenizer10Normalizer9normalize(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 44 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.h = load i64, ptr %i.b, align 8, !range !29, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !84, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !80, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = icmp ule i64 %i.g, %i.p
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.p, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 4 uses
  store i64 %i.g, ptr %i.x, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 9 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  store i64 %i.g, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 0, ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i8 2, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 77 ; 5 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 78 ; 8 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 79 ; 5 uses
  store <4 x i8> <i8 1, i8 0, i8 4, i8 -1>, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 10 uses
  store i8 -1, ptr %.sroa.16.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 0, ptr %i.y, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 0, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store i64 %i.g, ptr %.sroa.912.0..sroa_idx, align 8
  %.sroa.1013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 %i.g, ptr %.sroa.1013.0..sroa_idx, align 8
  %.sroa.1114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i32 0, ptr %.sroa.1114.0..sroa_idx, align 8
  %.sroa.1114.sroa.4.0..sroa.1114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  store i32 0, ptr %.sroa.1114.sroa.4.0..sroa.1114.0..sroa_idx.sroa_idx, align 4
  %.sroa.1114.sroa.5.0..sroa.1114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i8 2, ptr %.sroa.1114.sroa.5.0..sroa.1114.0..sroa_idx.sroa_idx, align 8
  %.sroa.1215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  store <4 x i8> <i8 1, i8 0, i8 4, i8 -1>, ptr %.sroa.1215.0..sroa_idx, align 4
  %.sroa.1619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i8 -1, ptr %.sroa.1619.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.z = icmp eq i64 %i.g, 0
  br i1 %i.z, label %_RINvYNtNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme9GraphemesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB2B_9tokenizer10Normalizer9normalize0E0EB2B_.exit.thread, label %.lr.ph.i

_RINvYNtNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme9GraphemesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB2B_9tokenizer10Normalizer9normalize0E0EB2B_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ds

.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  %i.ac = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !1331, !noalias !1336, !noundef !3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.invoke542, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ae = load i64, ptr %i.x, align 8, !alias.scope !1340, !noalias !1341, !noundef !3
  %i.af = load ptr, ptr %i.w, align 8, !alias.scope !1340, !noalias !1341, !nonnull !3, !noundef !3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.ag = phi i64 [ %i.ae, %.lr.ph ], [ %i.ww, %.backedge ] ; 34 uses
  %i.ah = phi ptr [ %i.af, %.lr.ph ], [ %i.wv, %.backedge ] ; 38 uses
  %i.ai = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge ] ; 23 uses
  %.sroa.0.0636 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.aj = icmp eq i64 %i.ai, 0                    ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp ult i64 %i.ai, %i.ag
  br i1 %.not.i.i.i.i, label %bb.f, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.e
  %i.ak = icmp eq i64 %i.ai, %i.ag
  br i1 %i.ak, label %bb.g, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1348, !noalias !1351, !noundef !3
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.g, label %.invoke

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag ; 5 uses
  %i.aq = icmp samesign eq i64 %i.ai, %i.ag
  br i1 %i.aq, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread59.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ao, align 1, !alias.scope !1346, !noalias !1352, !noundef !3 ; 5 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i: ; preds = %bb.h
  %i.au = and i8 %i.as, 31
  %i.av = zext nneg i8 %i.au to i32               ; 3 uses
  %i.aw = add nuw nsw i64 %i.ai, 1
  %i.ax = icmp samesign ne i64 %i.aw, %i.ag
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ar, align 1, !alias.scope !1346, !noalias !1352, !noundef !3
  %i.ba = shl nuw nsw i32 %i.av, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %i.as, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = zext nneg i8 %i.as to i32
  br label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i
  %i.bg = add nuw nsw i64 %i.ai, 2
  %i.bh = icmp samesign ne i64 %i.bg, %i.ag
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 3 ; 2 uses
  %i.bj = load i8, ptr %i.ay, align 1, !alias.scope !1346, !noalias !1352, !noundef !3
  %i.bk = shl nuw nsw i32 %i.bc, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm            ; 2 uses
  %i.bo = shl nuw nsw i32 %i.av, 12
  %i.bp = or disjoint i32 %i.bn, %i.bo
  %i.bq = icmp samesign ugt i8 %i.as, -17
  br i1 %i.bq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i, label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i
  %i.br = add nuw nsw i64 %i.ai, 3
  %i.bs = icmp samesign ne i64 %i.br, %i.ag
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bu = load i8, ptr %i.bi, align 1, !alias.scope !1346, !noalias !1352, !noundef !3
  %i.bv = shl nuw nsw i32 %i.av, 18
  %i.bw = and i32 %i.bv, 1835008
  %i.bx = shl nuw nsw i32 %i.bn, 6
  %i.by = and i8 %i.bu, 63
end_hunk_0
