Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtB8_4auto5SmartNtNtNtBa_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf:bb.a
  %i.ax = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i, i64 -96
  %i.ay = load ptr, ptr %i.ax, align 16, !alias.scope !3424, !noalias !3417, !nonnull !10, !align !21, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !10, !noalias !3425, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3425
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !10, !noalias !3425, !nonnull !10
  invoke void %i.bc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.aw) #40
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3421, !inline_history !3405

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.n
  %i.bd = load i128, ptr %i.b, align 16, !noalias !3425, !noundef !10
  %i.be = icmp eq i128 %i.bd, -73957246177722277619549272273801995617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3425
  br i1 %i.be, label %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtB8_4auto5SmartNtNtNtBa_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, !prof !16

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %2, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap) #39
          to label %.noexc4.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3426

.noexc4.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.o
  unreachable

_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtB8_4auto5SmartNtNtNtBa_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.aw) #40
          to label %_RNCINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB8_10StyleChain10get_foldedINtNtBa_4auto5SmartNtNtNtBc_9visualize6stroke6StrokeEE0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3421

_RNCINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB8_10StyleChain10get_foldedINtNtBa_4auto5SmartNtNtNtBc_9visualize6stroke6StrokeEE0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtB8_4auto5SmartNtNtNtBa_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3421
  store i64 %.sroa.05.0, ptr %i.a, align 8, !noalias !3416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.911.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.911, i64 104, i1 false), !noalias !3416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ag, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !3421
  invoke fastcc void @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtB7_6styles4Fold4foldCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.ag)
          to label %.noexc17 unwind label %.body.thread24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %_RNCINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB8_10StyleChain10get_foldedINtNtBa_4auto5SmartNtNtNtBc_9visualize6stroke6StrokeEE0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3421
  %.sroa.05.0.copyload7.pre = load i64, ptr %i.e, align 8, !noalias !3416
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtB1Z_4auto5SmartNtNtNtB21_9visualize6stroke6StrokeENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB46_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB46_s0_0NCIB5z_B5X_B3b_B3b_NCINvB48_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtB8_4auto5SmartNtNtNtBa_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(112) %i.d) #44
          to label %.body.thread unwind label %bb.p, !noalias !3426

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !3426
  unreachable

bb.q:                                             ; preds = %.loopexit.i.i.i.i.i.i
  store i64 %.sroa.05.0, ptr %i.e, align 8, !noalias !3416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.911.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.911, i64 104, i1 false), !noalias !3416
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtB1Z_4auto5SmartNtNtNtB21_9visualize6stroke6StrokeENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB46_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB46_s0_0NCIB5z_B5X_B3b_B3b_NCINvB48_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtB1Z_4auto5SmartNtNtNtB21_9visualize6stroke6StrokeENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB46_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB46_s0_0NCIB5z_B5X_B3b_B3b_NCINvB48_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.q, %.noexc17, %_RNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB7_10StyleChain10propertiess_0Cs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i.i.i.i.i
  %.sroa.05.0.copyload7 = phi i64 [ %.sroa.05.0, %bb.q ], [ %.sroa.05.0.copyload7.pre, %.noexc17 ], [ %.sroa.05.0, %_RNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB7_10StyleChain10propertiess_0Cs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.911, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.911.0..sroa_idx12, i64 104, i1 false), !noalias !3416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3416
  br label %bb.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtB1P_4auto5SmartNtNtNtB1R_9visualize6stroke6StrokeEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs8jFhWeO2DFb_9typst_pdf.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3406
  br label %bb.s

.body.thread24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB8_10StyleChain10get_foldedINtNtBa_4auto5SmartNtNtNtBc_9visualize6stroke6StrokeEE0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedINtNtB1U_4auto5SmartNtNtNtB1W_9visualize6stroke6StrokeEE0ENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtB1P_4auto5SmartNtNtNtB1R_9visualize6stroke6StrokeEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.911, i64 104, i1 false), !noalias !3427
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.911)
  %.not = icmp eq i64 %.sroa.05.0, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtB1P_4auto5SmartNtNtNtB1R_9visualize6stroke6StrokeEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.05.0, ptr %i.h, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, i64 104, i1 false)
  call fastcc void @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtB7_6styles4Fold4foldCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.t

bb.s:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtB1P_4auto5SmartNtNtNtB1R_9visualize6stroke6StrokeEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs8jFhWeO2DFb_9typst_pdf.exit.thread, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtB1P_4auto5SmartNtNtNtB1R_9visualize6stroke6StrokeEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %3, i64 112, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  ret void

bb.u:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body23

.body.thread:                                     ; preds = %.body.thread24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body23 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp15, %.body.thread24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(112) %3) #44
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.body.thread
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_4math8equation12EquationElemKh4_ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = tail call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 4) ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3434)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3434, !noalias !3435, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3434, !noalias !3435, !nonnull !10, !align !21, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !10, !noalias !3436, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3437
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !10, !noalias !3436, !nonnull !10
  call void %i.i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.c) #40, !noalias !3436, !inline_history !0
  %i.j = load i128, ptr %i.a, align 16, !noalias !3437, !noundef !10
  %i.k = icmp eq i128 %i.j, 124621761046433884973416990177579333221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3437
  br i1 %i.k, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 1, 11) 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #39, !noalias !3435
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs9_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK, i64 24) acquire, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB2_11get_or_initFEBT_E0zECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull align 8 @_RNvNCNvXs9_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK)
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ @_RNvNCNvXs9_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK, %bb.d ], [ @_RNvNCNvXs9_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_9visualize5image9ImageElemKh4_ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = tail call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library9visualize5image1__NtB9_9ImageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 4) ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3444, !noalias !3445, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3444, !noalias !3445, !nonnull !10, !align !21, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !10, !noalias !3446, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3447
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !10, !noalias !3446, !nonnull !10
  call void %i.i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.c) #40, !noalias !3446, !inline_history !0
  %i.j = load i128, ptr %i.a, align 16, !noalias !3447, !noundef !10
  %i.k = icmp eq i128 %i.j, 124621761046433884973416990177579333221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3447
  br i1 %i.k, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library9visualize5image1__NtB9_9ImageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 1, 11) 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #39, !noalias !3445
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs8_NvNtNtCsdaEETE4DqmE_13typst_library9visualize5image1__NtBb_9ImageElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK, i64 24) acquire, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB2_11get_or_initFEBT_E0zECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull align 8 @_RNvNCNvXs8_NvNtNtCsdaEETE4DqmE_13typst_library9visualize5image1__NtBb_9ImageElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK)
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ @_RNvNCNvXs8_NvNtNtCsdaEETE4DqmE_13typst_library9visualize5image1__NtBb_9ImageElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK, %bb.d ], [ @_RNvNCNvXs8_NvNtNtCsdaEETE4DqmE_13typst_library9visualize5image1__NtBb_9ImageElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMst_NtCsltn4C36Q1Af_10pdf_writer6objectNtB6_3Obj9primitivefECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0, float noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 9 uses
  %i.b = alloca [24 x i8], align 1                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10 ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 13 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 14 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !noundef !10
  switch i8 %i.j, label %bb.c [
    i8 40, label %bb.d
    i8 41, label %bb.d
    i8 60, label %bb.d
    i8 62, label %bb.d
    i8 91, label %bb.d
    i8 93, label %bb.d
    i8 47, label %bb.d
    i8 37, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.l = load i8, ptr %i.k, align 1, !range !11, !noundef !10
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit, %bb.c
  %i.n = phi i64 [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.dg, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit ], [ %i.e, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  %i.o = tail call i32 @llvm.fptosi.sat.i32.f32(float %1) ; 4 uses
  %i.p = sitofp i32 %i.o to float
  %i.q = fcmp oeq float %1, %i.p
  br i1 %i.q, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !alias.scope !3481, !noundef !10
  %i.t = tail call float @llvm.fabs.f32(float %1) ; 4 uses
  %i.u = tail call nsz float @llvm.maximumnum.f32(float %i.s, float %i.t)
  store float %i.u, ptr %i.r, align 4, !alias.scope !3481
  %i.v = fcmp oeq float %1, 0.000000e+00
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = fcmp ogt float %i.t, f0x358637BD
  %i.x = fcmp olt float %i.t, f0x5368D4A5
  %or.cond.i.i.i = and i1 %i.w, %i.x
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3481
  %i.y = fcmp ueq float %i.t, +inf
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call noundef i64 @_RNvNtCseqBJZIMdYtm_3ryu6pretty8format32(float noundef %1, ptr noundef nonnull dereferenceable(24) %i.b), !noalias !3481
  br label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatfECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aa = bitcast float %1 to i32                 ; 3 uses
  %i.ab = and i32 %i.aa, 8388607
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = icmp slt i32 %i.aa, 0
  %.1.i.i.i.i.i = select i1 %i.ad, ptr @549, ptr @548
  %i.ae = and i32 %i.aa, -2139095041
  %i.af = icmp eq i32 %i.ae, -2147483648
  %.sroa.4.0.i.i.i.i.i = select i1 %i.af, i64 4, i64 3
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ac, ptr %.1.i.i.i.i.i, ptr @550
  br label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatfECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatfECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.i ], [ %i.b, %bb.h ] ; 2 uses
  %.sroa.4.0.i.pn.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i, %bb.i ], [ %i.z, %bb.h ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3482)
  %i.ag = load i64, ptr %i.c, align 8, !range !17, !alias.scope !3483, !noundef !10
  %i.ah = sub i64 %i.ag, %i.n
  %i.ai = icmp ugt i64 %.sroa.4.0.i.pn.i.i.i.i, %i.ah
  br i1 %i.ai, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i: ; preds = %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatfECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.n, i64 noundef %.sroa.4.0.i.pn.i.i.i.i, i64 noundef 1, i64 noundef 1)
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !3484, !noundef !10 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  br label %bb.j

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatfECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  %i.al = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.al)
  %.not.i.i.i.i = icmp eq i64 %.sroa.4.0.i.pn.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i
  %i.am = phi i64 [ %i.aj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i.i.i ], [ %i.n, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !3484, !nonnull !10, !noundef !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i, i64 %.sroa.4.0.i.pn.i.i.i.i, i1 false), !noalias !3484
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i
  %i.aq = phi i64 [ %i.am, %bb.j ], [ %i.n, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  %i.ar = add i64 %i.aq, %.sroa.4.0.i.pn.i.i.i.i
  store i64 %i.ar, ptr %i.d, align 8, !alias.scope !3484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3481
  br label %_RNvXs4_NtCsltn4C36Q1Af_10pdf_writer6objectfNtNtB5_6sealed6Sealed5write.exit

bb.k:                                             ; preds = %bb.f
  tail call void @_RNvNvMNtCsltn4C36Q1Af_10pdf_writer3bufNtB4_3Buf12push_decimal13write_extreme(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, float noundef %1) #38
  br label %_RNvXs4_NtCsltn4C36Q1Af_10pdf_writer6objectfNtNtB5_6sealed6Sealed5write.exit

bb.l:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @_RNvMs2_NtCsltn4C36Q1Af_10pdf_writer3bufNtB5_6Limits12register_int(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.as, i32 noundef %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3487)
  %i.at = icmp sgt i32 %i.o, -1
  %.sroa.0.0.i.i1.i.i = tail call i32 @llvm.abs.i32(i32 %i.o, i1 false) ; 3 uses
  %i.au = icmp ugt i32 %.sroa.0.0.i.i1.i.i, 9999
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.sroa.09.0.lcssa.i.i.i.i = phi i64 [ 11, %bb.l ], [ %2, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.i.i1.i.i, %bb.l ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.av = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i, 99
  br i1 %i.av, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.sroa.0.129.i.i.i.i = phi i32 [ %i.ax, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i1.i.i, %bb.l ] ; 3 uses
  %.sroa.09.028.i.i.i.i = phi i64 [ %2, %.lr.ph.i.i.i.i ], [ 11, %bb.l ] ; 2 uses
  %i.aw = urem i32 %.sroa.0.129.i.i.i.i, 10000
  %i.ax = udiv i32 %.sroa.0.129.i.i.i.i, 10000    ; 2 uses
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i32 %i.aw to i16 ; 2 uses
  %i.ay = udiv i16 %.lhs.trunc.i.i.i.i, 100
  %i.az = shl nuw nsw i16 %i.ay, 1
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = urem i16 %.lhs.trunc.i.i.i.i, 100
  %i.bc = shl nuw nsw i16 %i.bb, 1
  %i.bd = zext nneg i16 %i.bc to i64
  %2 = add i64 %.sroa.09.028.i.i.i.i, -4          ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr @602, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.bg = load i16, ptr %i.be, align 1, !noalias !3488
  store i16 %i.bg, ptr %i.bf, align 1, !alias.scope !3487, !noalias !3486
  %3 = getelementptr inbounds nuw i8, ptr @602, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %i.bj = load i16, ptr %3, align 1, !noalias !3488
  store i16 %i.bj, ptr %i.bi, align 1, !alias.scope !3487, !noalias !3486
  %i.bk = icmp ugt i32 %.sroa.0.129.i.i.i.i, 99999999
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %.lhs.trunc24.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i to i16 ; 2 uses
  %i.bl = urem i16 %.lhs.trunc24.i.i.i.i, 100
  %i.bm = shl nuw nsw i16 %i.bl, 1
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = udiv i16 %.lhs.trunc24.i.i.i.i, 100
  %.zext27.i.i.i.i = zext nneg i16 %i.bo to i32
  %i.bp = add i64 %.sroa.09.0.lcssa.i.i.i.i, -2   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr @602, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.bs = load i16, ptr %i.bq, align 1, !noalias !3488
  store i16 %i.bs, ptr %i.br, align 1, !alias.scope !3487, !noalias !3486
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.sroa.09.1.i.i.i.i = phi i64 [ %i.bp, %bb.m ], [ %.sroa.09.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i = phi i32 [ %.zext27.i.i.i.i, %bb.m ], [ %.sroa.0.1.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bt = icmp samesign ult i32 %.sroa.0.2.i.i.i.i, 10
  br i1 %i.bt, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = shl nuw nsw i32 %.sroa.0.2.i.i.i.i, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = add i64 %.sroa.09.1.i.i.i.i, -2         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr @602, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.bz = load i16, ptr %i.bx, align 1, !noalias !3488
  store i16 %i.bz, ptr %i.by, align 1, !alias.scope !3487, !noalias !3486
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ca = add i64 %.sroa.09.1.i.i.i.i, -1         ; 2 uses
  %i.cb = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cd = or disjoint i8 %i.cb, 48
  store i8 %i.cd, ptr %i.cc, align 1, !alias.scope !3487, !noalias !3486
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.09.2.i.i.i.i = phi i64 [ %i.ca, %bb.p ], [ %i.bw, %bb.o ] ; 2 uses
  br i1 %i.at, label %_RNvXsb_CsTiqMWAe8o4_4itoalNtNtB5_7private6Sealed5write.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = add i64 %.sroa.09.2.i.i.i.i, -1         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  store i8 45, ptr %i.cf, align 1, !alias.scope !3487, !noalias !3486
  br label %_RNvXsb_CsTiqMWAe8o4_4itoalNtNtB5_7private6Sealed5write.exit.i.i.i

_RNvXsb_CsTiqMWAe8o4_4itoalNtNtB5_7private6Sealed5write.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.09.3.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i, %bb.q ], [ %i.ce, %bb.r ] ; 3 uses
  %i.cg = sub i64 11, %.sroa.09.3.i.i.i.i         ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i
  %i.ci = icmp ult i64 %i.cg, 12
  tail call void @llvm.assume(i1 %i.ci)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  %i.cj = load i64, ptr %i.d, align 8, !alias.scope !3490, !noundef !10 ; 5 uses
  %i.ck = load i64, ptr %i.c, align 8, !range !17, !alias.scope !3490, !noundef !10
  %i.cl = sub i64 %i.ck, %i.cj
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i5.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i2.i.i, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i5.i.i: ; preds = %_RNvXsb_CsTiqMWAe8o4_4itoalNtNtB5_7private6Sealed5write.exit.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.cj, i64 noundef %i.cg, i64 noundef 1, i64 noundef 1)
  %i.cn = load i64, ptr %i.d, align 8, !alias.scope !3491, !noundef !10 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1
  tail call void @llvm.assume(i1 %i.co)
  br label %bb.s

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i2.i.i: ; preds = %_RNvXsb_CsTiqMWAe8o4_4itoalNtNtB5_7private6Sealed5write.exit.i.i.i
  %i.cp = icmp sgt i64 %i.cj, -1
  tail call void @llvm.assume(i1 %i.cp)
  %.not.i.i3.i.i = icmp eq i64 %.sroa.09.3.i.i.i.i, 11
  br i1 %.not.i.i3.i.i, label %_RNvMNtCsltn4C36Q1Af_10pdf_writer3bufNtB2_3Buf8push_int.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i2.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i5.i.i
  %i.cq = phi i64 [ %i.cn, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i5.i.i ], [ %i.cj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i2.i.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !3491, !nonnull !10, !noundef !10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull readonly align 1 %i.ch, i64 %i.cg, i1 false), !noalias !3489
  br label %_RNvMNtCsltn4C36Q1Af_10pdf_writer3bufNtB2_3Buf8push_int.exit.i.i

_RNvMNtCsltn4C36Q1Af_10pdf_writer3bufNtB2_3Buf8push_int.exit.i.i: ; preds = %bb.s, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i2.i.i
  %i.cu = phi i64 [ %i.cq, %bb.s ], [ %i.cj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i2.i.i ]
  %i.cv = add nuw i64 %i.cu, %i.cg
  store i64 %i.cv, ptr %i.d, align 8, !alias.scope !3491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3486
  br label %_RNvXs4_NtCsltn4C36Q1Af_10pdf_writer6objectfNtNtB5_6sealed6Sealed5write.exit

_RNvXs4_NtCsltn4C36Q1Af_10pdf_writer6objectfNtNtB5_6sealed6Sealed5write.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, %bb.k, %_RNvMNtCsltn4C36Q1Af_10pdf_writer3bufNtB2_3Buf8push_int.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cx = load i8, ptr %i.cw, align 1, !range !11, !noundef !10
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3492)
  %i.cz = load i64, ptr %i.c, align 8, !range !17, !alias.scope !3493, !noundef !10
  %i.da = icmp eq i64 %i.cz, %i.e
  br i1 %i.da, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i: ; preds = %bb.t
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.e, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  %i.db = load i64, ptr %i.d, align 8, !alias.scope !3492, !noundef !10
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.t, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  %.sink18 = phi i64 [ %i.db, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i ], [ %i.e, %bb.t ] ; 3 uses
  %i.dc = icmp sgt i64 %.sink18, -1
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !3492, !nonnull !10, !noundef !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sink18
  store i8 32, ptr %i.df, align 1, !noalias !3492
  %i.dg = add nuw i64 %.sink18, 1                 ; 2 uses
  store i64 %i.dg, ptr %i.d, align 8, !alias.scope !3492
  br label %bb.d

bb.u:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit7, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit10, %_RNvXs4_NtCsltn4C36Q1Af_10pdf_writer6objectfNtNtB5_6sealed6Sealed5write.exit
  ret void

bb.v:                                             ; preds = %_RNvXs4_NtCsltn4C36Q1Af_10pdf_writer6objectfNtNtB5_6sealed6Sealed5write.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3494)
  %i.dh = load i64, ptr %i.d, align 8, !alias.scope !3495, !noundef !10 ; 3 uses
  %i.di = load i64, ptr %i.c, align 8, !range !17, !alias.scope !3495, !noundef !10
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = icmp ult i64 %i.dj, 8
  br i1 %i.dk, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i6, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit7, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i6: ; preds = %bb.v
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.dh, i64 noundef 8, i64 noundef 1, i64 noundef 1)
  %i.dl = load i64, ptr %i.d, align 8, !alias.scope !3494, !noundef !10
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit7

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit7: ; preds = %bb.v, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i6
  %.sink19 = phi i64 [ %i.dl, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i6 ], [ %i.dh, %bb.v ] ; 3 uses
  %i.dm = icmp sgt i64 %.sink19, -1
  call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !3494, !nonnull !10, !noundef !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sink19
  store i64 750520518476457226, ptr %i.dp, align 1, !noalias !3494
  %i.dq = add nuw i64 %.sink19, 8                 ; 4 uses
  store i64 %i.dq, ptr %i.d, align 8, !alias.scope !3494
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ds = load i8, ptr %i.dr, align 2, !range !11, !noundef !10
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.w, label %bb.u

bb.w:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !3496)
  %i.du = load i64, ptr %i.c, align 8, !range !17, !alias.scope !3497, !noundef !10
  %i.dv = icmp eq i64 %i.du, %i.dq
  br i1 %i.dv, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i9, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit10, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i9: ; preds = %bb.w
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.dq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  %i.dw = load i64, ptr %i.d, align 8, !alias.scope !3496, !noundef !10
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit10

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8jFhWeO2DFb_9typst_pdf.exit10: ; preds = %bb.w, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i9
  %.sink20 = phi i64 [ %i.dw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i9 ], [ %i.dq, %bb.w ] ; 3 uses
  %i.dx = icmp sgt i64 %.sink20, -1
  call void @llvm.assume(i1 %i.dx)
  %i.dy = load ptr, ptr %i.dn, align 8, !alias.scope !3496, !nonnull !10, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sink20
  store i8 10, ptr %i.dz, align 1, !noalias !3496
  %i.ea = add nuw i64 %.sink20, 1
  store i64 %i.ea, ptr %i.d, align 8, !alias.scope !3496
  br label %bb.u
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorj2_ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  %i.a = load i32, ptr %0, align 8, !range !14, !alias.scope !3532, !noundef !10
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3536, !nonnull !10, !noundef !10
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !3537
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %.lr.ph.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3538)
end_hunk_0
