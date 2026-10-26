Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.05?download=true
inline.NumInlined: 722
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs1_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2Y_9RunResultNtNtB2Y_15ttx_diff_runner10DiffOutputNtB3X_9DiffErrorEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2U_EINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNCINvB2Y_7run_allB3V_B4w_NtB3X_10TtxContextNvB3X_12run_ttx_diffE00EEs_0E0B1P_E11into_resultB2Y_:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1124, !noundef !6
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCsimRn6g4KI1Q_5rayon3vecINtB5_13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.2.0.copyload, ptr %0, align 8, !alias.scope !1125
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.8..sroa_idx, align 8, !alias.scope !1125
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.8..sroa_idx, align 8, !alias.scope !1125
  %i.f = load ptr, ptr %1, align 8, !alias.scope !1126, !noundef !6
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXsa_NtCsimRn6g4KI1Q_5rayon3vecINtB5_13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit3: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1Z_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEs_0E0uE10run_inlineB5j_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.sroa.5.0.copyload = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.3.sroa.4.0.copyload = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.sroa.2.0.copyload = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.3.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.a = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !1135, !noundef !6
  %i.b = load i64, ptr %.sroa.3.sroa.0.0.copyload, align 8, !noalias !1135, !noundef !6
  %i.c = sub i64 %i.a, %i.b
  %i.d = load i64, ptr %.sroa.3.sroa.2.0.copyload, align 8, !noalias !1135, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !1135, !noundef !6
  invoke void @_RINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB6_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEB3o_(i64 noundef %i.c, i1 noundef zeroext %1, i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.sroa.3.0.copyload, i64 noundef %.sroa.3.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.3.sroa.5.0.copyload)
          to label %_RNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_buNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB18_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEs_0E0B4s_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #24
          to label %common.resume unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  unreachable

_RNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_buNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB18_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEs_0E0B4s_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.j = load i64, ptr %i.i, align 8, !range !8, !alias.scope !1138, !noundef !6
  %switch.i.i = icmp samesign ult i64 %i.j, 2
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_buNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB18_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEs_0E0B4s_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1138 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1138, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.m = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !1138 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j, !noalias !1138

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !6, !noalias !1138 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !11, !invariant.load !6, !noalias !1138
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #26, !noalias !1138
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !6, !noalias !1138 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !11, !invariant.load !6, !noalias !1138
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #26, !noalias !1138
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_buNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB18_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEs_0E0B4s_.exit, %bb.h, %bb.i
  ret void

bb.l:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1Z_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEs_0E0uE11into_resultB5j_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  switch i64 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i64 0, label %bb.b
    i64 1, label %_RNvMs7_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_9JobResultuE17into_return_valueCs1hTjP0dFAwJ_12fontc_crater.exit
    i64 2, label %bb.c
  ], !prof !19

default.unreachable1.i:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #30, !noalias !1141
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvNtCsaM4fumF1j8I_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.3.0.copyload) #28, !noalias !1141
  unreachable

_RNvMs7_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_9JobResultuE17into_return_valueCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [176 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [176 x i8], align 8               ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 19 uses
  %i.m = alloca [24 x i8], align 8                ; 16 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 12)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.b

.body52:                                          ; preds = %bb.an, %.body.thread, %bb.c
  %.sroa.021.0 = phi i1 [ %.sroa.021.4.ph, %bb.c ], [ %.sroa.021.296, %.body.thread ], [ %5, %bb.an ]
  %.pn43 = phi { ptr, i32 } [ %.pn.ph, %bb.c ], [ %.pn4197, %.body.thread ], [ %i.ca, %bb.an ] ; 2 uses
  br i1 %.sroa.021.0, label %.body52.thread140, label %common.resume

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i51, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body52.thread140

.split:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i86
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %5, label %.body52.thread140, label %common.resume

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 21)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit47 unwind label %.body.thread106

bb.c:                                             ; preds = %bb.at
  br i1 %.sroa.020.2.ph, label %.body.thread, label %.body52

.body.thread106:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i63, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i, %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit
  %.sroa.021.3.ph = phi i1 [ true, %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i ], [ %5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i63 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit47: ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !noalias !1160, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i.i = load i64, ptr %i.q, align 8, !noalias !1160, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1161
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit47
  %i.r = load i64, ptr %i.e, align 8, !range !8, !noalias !1161, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i.i, label %bb.d, label %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i

bb.d:                                             ; preds = %.noexc.2, %.noexc.1, %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1161, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1162
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.e
    i64 0, label %bb.g
    i64 1, label %bb.f
  ], !prof !12

default.unreachable:                              ; preds = %bb.l, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ult ptr %i.t, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !1163, !noalias !1162
  store i8 3, ptr %i.d, align 8, !alias.scope !1163, !noalias !1162
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp

_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i.1 = load ptr, ptr %i.ab, align 8, !noalias !1160, !nonnull !6, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val1.i.i.1 = load i64, ptr %i.ac, align 8, !noalias !1160, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1161
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.1, i64 noundef %.val1.i.i.1)
          to label %.noexc.1 unwind label %.loopexit.split-lp

.noexc.1:                                         ; preds = %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i
  %i.ad = load i64, ptr %i.e, align 8, !range !8, !noalias !1161, !noundef !6
  %.not.i.i.i.1 = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.1, label %bb.d, label %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.1

_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.1: ; preds = %.noexc.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1161
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i.2 = load ptr, ptr %i.ae, align 8, !noalias !1160, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i.2 = load i64, ptr %i.af, align 8, !noalias !1160, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1161
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.2, i64 noundef %.val1.i.i.2)
          to label %.noexc.2 unwind label %.loopexit.split-lp

.noexc.2:                                         ; preds = %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.1
  %i.ag = load i64, ptr %i.e, align 8, !range !8, !noalias !1161, !noundef !6
  %.not.i.i.i.2 = icmp eq i64 %i.ag, 2
  br i1 %.not.i.i.i.2, label %bb.d, label %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.2

_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.2: ; preds = %.noexc.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1164
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %.noexc56 unwind label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit47, %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i, %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.1, %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.2, %bb.n, %bb.o, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1162
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ah, align 1
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %.body.thread106

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i51 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body52.thread140 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i51: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.af unwind label %bb.b

.noexc56:                                         ; preds = %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs5Xr050g3D4S_3std4path7PathBufEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator3all5checkB1X_NCNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci13results_cache16copy_cache_files0E0INtNtNtBe_3ops12control_flow11ControlFlowuEE0B3R_.exit.i.2
  %i.am = load i64, ptr %i.c, align 8, !range !8, !noalias !1164, !noundef !6
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.l:                                             ; preds = %.noexc56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1164, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1165
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %bb.m
    i64 0, label %bb.o
    i64 1, label %bb.n
  ], !prof !12

bb.m:                                             ; preds = %bb.l
  %i.as = icmp ult ptr %i.ap, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.aq, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 %i.au)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.ap, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !1166, !noalias !1165
  store i8 3, ptr %i.b, align 8, !alias.scope !1166, !noalias !1165
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.o unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1164
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1167
  store i32 511, ptr %i.a, align 4, !noalias !1167
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 1, ptr %i.ax, align 4, !noalias !1167
  %i.ay = invoke noundef ptr @_RNvMsD_NtCs5Xr050g3D4S_3std2fsNtB5_10DirBuilder7__create(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.q unwind label %.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 12)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit61 unwind label %bb.as

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1167
  %.not39 = icmp eq ptr %i.ay, null
  br i1 %.not39, label %bb.p, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.w
  %.sink = phi ptr [ %i.bg, %bb.w ], [ %i.ay, %bb.q ]
  %5 = phi i1 [ false, %bb.w ], [ true, %bb.q ]   ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.az, align 8
  store i8 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i63 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i63: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit69 unwind label %.body.thread106

bb.u:                                             ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit61
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit61: ; preds = %bb.p
  %i.bd = invoke fastcc { i64, ptr } @_RINvNtCs5Xr050g3D4S_3std2fs4copyNtNtB4_4path7PathBufBu_ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.v:                                             ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit61
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bg = extractvalue { i64, ptr } %i.bd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  br label %bb.r

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 12)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit71 unwind label %bb.am

bb.y:                                             ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit71
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit71: ; preds = %bb.x
  %i.bi = invoke fastcc { i64, ptr } @_RINvNtCs5Xr050g3D4S_3std2fs4copyNtNtB4_4path7PathBufBu_ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.z unwind label %bb.y       ; 2 uses

bb.z:                                             ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit71
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bl = extractvalue { i64, ptr } %i.bi, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  store i8 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i73 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i73: ; preds = %bb.aa
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %.thread135

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 21)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit81 unwind label %bb.aj

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit81: ; preds = %bb.ad
  %i.bp = call fastcc { i64, ptr } @_RINvNtCs5Xr050g3D4S_3std2fs4copyNtNtB4_4path7PathBufBu_ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f) ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit55.thread

bb.ae:                                            ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit81
  %i.bs = extractvalue { i64, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8
  store i8 1, ptr %0, align 8
  br label %.thread135

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit55.thread: ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater.exit81
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bu, align 1
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ai

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit84 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.split, %.body52, %.body52.thread140, %bb.ab, %bb.aj, %bb.aq, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.aq ], [ %i.bv, %bb.ag ], [ %.pn43, %.body52 ], [ %.pn43143, %.body52.thread140 ], [ %i.bx, %bb.aj ], [ %i.bn, %bb.ab ], [ %lpad.thr_comm.split-lp, %.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit84: ; preds = %bb.af
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit84, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit55.thread, %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit94, %.thread135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread135:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i73, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ai

bb.aj:                                            ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #24
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %.body52.thread140, %.body.thread, %bb.at, %bb.as, %bb.am, %bb.aj
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %5, label %bb.ap, label %bb.ai

bb.am:                                            ; preds = %bb.x
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #24
          to label %bb.at unwind label %bb.ak

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit69: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i86 unwind label %bb.an

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit69
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body52 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i86: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit69
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.al unwind label %.split

bb.ap:                                            ; preds = %bb.al
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit94 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit94: ; preds = %bb.ap
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.ai

bb.as:                                            ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #24
          to label %bb.at unwind label %bb.ak

bb.at:                                            ; preds = %.loopexit.split-lp, %bb.am, %bb.as, %bb.u, %bb.y
  %.sroa.021.4.ph = phi i1 [ false, %bb.am ], [ false, %bb.y ], [ false, %bb.u ], [ false, %bb.as ], [ true, %.loopexit.split-lp ] ; 2 uses
  %.sroa.020.2.ph = phi i1 [ false, %bb.am ], [ false, %bb.y ], [ true, %bb.u ], [ true, %bb.as ], [ true, %.loopexit.split-lp ]
  %.pn.ph = phi { ptr, i32 } [ %i.bz, %bb.am ], [ %i.bh, %bb.y ], [ %i.bc, %bb.u ], [ %i.ce, %bb.as ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #24
          to label %bb.c unwind label %bb.ak

.body.thread:                                     ; preds = %bb.s, %bb.h, %.body.thread106, %bb.c
  %.pn4197 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread106 ], [ %.pn.ph, %bb.c ], [ %i.ai, %bb.h ], [ %i.ba, %bb.s ]
  %.sroa.021.296 = phi i1 [ %.sroa.021.3.ph, %.body.thread106 ], [ %.sroa.021.4.ph, %bb.c ], [ true, %bb.h ], [ %5, %bb.s ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %.body52 unwind label %bb.ak

.body52.thread140:                                ; preds = %bb.b, %.split, %bb.j, %.body52
  %.pn43143 = phi { ptr, i32 } [ %.pn43, %.body52 ], [ %i.ak, %bb.j ], [ %lpad.thr_comm.split-lp, %.split ], [ %i.o, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #24
          to label %common.resume unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCs5Xr050g3D4S_3std4path7PathBufINtB2_10EquivalentBq_E10equivalentCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.5.i.i = alloca [39 x i8], align 1        ; 4 uses
  %.sroa.518.i.i = alloca [39 x i8], align 1      ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1171, !noundef !6 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1172, !noundef !6 ; 2 uses
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1171
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.o = load i8, ptr %i.n, align 8, !range !1173, !alias.scope !1171, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.q = load i8, ptr %i.p, align 8, !range !1173, !alias.scope !1172, !noundef !6
  %i.r = icmp eq i8 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.t = load i8, ptr %i.s, align 1, !range !1173, !alias.scope !1171
  %i.u = icmp eq i8 %i.t, 2
  %or.cond.i.i = select i1 %i.r, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.w = load i8, ptr %i.v, align 1, !range !1173, !alias.scope !1172
  %i.x = icmp eq i8 %i.w, 2
  %or.cond7.i.i = select i1 %or.cond.i.i, i1 %i.x, i1 false
  %.pre27.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1171 ; 3 uses
  br i1 %or.cond7.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %._crit_edge.i.i
  %i.y = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %.pre27.i.i, %bb.d ], [ %.pre27.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1174
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !1175, !alias.scope !1171, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.c, align 8, !alias.scope !1172, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %.pre27.i.i, ptr nonnull %i.ab, i64 %i.j), !noalias !1174
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %_RNvXsW_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i, i64 39, i1 false), !noalias !1172
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.ae = load i8, ptr %i.ad, align 2, !range !14, !alias.scope !1171, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !range !1173, !alias.scope !1171, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.ai = load i8, ptr %i.ah, align 1, !range !1173, !alias.scope !1171, !noundef !6
  store ptr %i.y, ptr %i.b, align 8, !noalias !1174
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.aa, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i, i64 39, i1 false), !noalias !1174
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 %i.ag, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store i8 %i.ai, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !noalias !1174
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i8 %i.ae, ptr %.sroa.8.0..sroa_idx.i.i, align 2, !noalias !1174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1174
  %i.aj = load ptr, ptr %i.c, align 8, !alias.scope !1172, !nonnull !6, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !1175, !alias.scope !1172, !noundef !6 ; 2 uses
  %.not26.i.i = icmp eq i8 %i.al, -1
  br i1 %.not26.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i, i64 39, i1 false), !noalias !1171
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.an = load i8, ptr %i.am, align 2, !range !14, !alias.scope !1172, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !range !1173, !alias.scope !1172, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.ar = load i8, ptr %i.aq, align 1, !range !1173, !alias.scope !1172, !noundef !6
  store ptr %i.aj, ptr %i.a, align 8, !noalias !1174
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.al, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, i64 39, i1 false), !noalias !1174
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %i.ap, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.713.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 %i.ar, ptr %.sroa.713.0..sroa_idx.i.i, align 1, !noalias !1174
  %.sroa.814.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i8 %i.an, ptr %.sroa.814.0..sroa_idx.i.i, align 2, !noalias !1174
  %i.as = call noundef zeroext i1 @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !1174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1174
  br label %_RNvXsW_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

_RNvXsW_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.d, %bb.h
  %.sroa.0.0.i.i = phi i1 [ %i.as, %bb.h ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1180
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit.i
    i64 1, label %bb.e
  ], !prof !12

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !1181, !noalias !1180
  store i8 3, ptr %i.a, align 8, !alias.scope !1181, !noalias !1180
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1180
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
end_hunk_0
