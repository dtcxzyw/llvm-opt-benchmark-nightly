Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/warpfield?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2014
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EEaSERKS6_:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33

bb.ae:                                            ; preds = %bb.ac
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i34 = phi i32 [ %i.cs, %bb.ad ], [ %i.dc, %bb.ae ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i.i34, 1
  br i1 %i.dd, label %bb.af, label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i35, !prof !125

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #35
  br label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i35

_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i35: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33, %bb.ab, %.lr.ph.i.i30
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.de, %i.ck
  br i1 %.not.i.i36, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit, label %.lr.ph.i.i30, !llvm.loop !644

bb.ag:                                            ; preds = %bb.o
  %i.df = ashr exact i64 %i.be, 4                 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i38, label %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i38:                               ; preds = %bb.ag, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51
  %.012.i.i.i.i.i39 = phi i64 [ %i.ej, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51 ], [ %i.df, %bb.ag ] ; 2 uses
  %.0811.i.i.i.i.i40 = phi ptr [ %i.ei, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51 ], [ %i.j, %bb.ag ] ; 3 uses
  %.0910.i.i.i.i.i41 = phi ptr [ %i.eh, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51 ], [ %i.c, %bb.ag ] ; 3 uses
  %i.dh = load ptr, ptr %.0910.i.i.i.i.i41, align 8, !tbaa !139
  store ptr %i.dh, ptr %.0811.i.i.i.i.i40, align 8, !tbaa !139
  %i.di = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !118 ; 4 uses
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i42 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i.i.i.i.i.i.i.i42, label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i38
  %.not7.i.i.i.i.i.i.i.i.i43 = icmp eq ptr %i.dk, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i43, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i44 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i44, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !124
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !124
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i45

bb.ak:                                            ; preds = %bb.ai
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i52 = load ptr, ptr %i.di, align 8, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i45

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i45: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.dr = phi ptr [ %i.dl, %bb.ah ], [ %i.dl, %bb.aj ], [ %.pr.pre.i.i.i.i.i.i.i.i.i52, %bb.ak ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.dr, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i46, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i50, label %bb.al

bb.al:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i45
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ds, align 8, !tbaa !120
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !121
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !123
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #35, !inline_history !645
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !123
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #35, !inline_history !645
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i50

bb.an:                                            ; preds = %bb.al
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i9.i.i.i.i.i.i.i.i.i47 = icmp eq i8 %i.ed, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i47, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i48

bb.ap:                                            ; preds = %bb.an
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i48: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i.i49 = phi i32 [ %i.dv, %bb.ao ], [ %i.ef, %bb.ap ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i49, 1
  br i1 %i.eg, label %bb.aq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i50, !prof !125

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i48
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i50

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i50: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i48, %bb.am, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i45
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !118
  br label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51

_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i50, %.lr.ph.i.i.i.i.i38
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 16
  %i.ej = add nsw i64 %.012.i.i.i.i.i39, -1
  %i.ek = icmp sgt i64 %.012.i.i.i.i.i39, 1
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i38, label %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit.loopexit, !llvm.loop !15

_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit.loopexit: ; preds = %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i51
  %.pre57 = load ptr, ptr %1, align 8, !tbaa !131
  %.pre58 = load ptr, ptr %i.bb, align 8, !tbaa !132 ; 2 uses
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !131
  %.pre60 = load ptr, ptr %i.a, align 8, !tbaa !132
  %.pre61 = ptrtoint ptr %.pre58 to i64
  %.pre62 = ptrtoint ptr %.pre59 to i64
  %.pre64 = sub i64 %.pre61, %.pre62
  br label %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit: ; preds = %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit.loopexit, %bb.ag
  %.pre-phi65 = phi i64 [ %.pre64, %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.be, %bb.ag ]
  %i.el = phi ptr [ %.pre60, %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.b, %bb.ag ] ; 2 uses
  %i.em = phi ptr [ %.pre58, %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.bc, %bb.ag ]
  %i.en = phi ptr [ %.pre57, %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.c, %bb.ag ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.pre-phi65 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.eo, %i.el
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ey, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.em, %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ex, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.eo, %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !118 ; 2 uses
  %i.er = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !134
  store <2 x ptr> %i.er, ptr %.011.i.i.i.i, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i53, label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i54 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i54, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !124
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !124
  br label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ew = atomicrmw volatile add ptr %i.es, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ex, %i.el
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !646

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i35, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES5_ET0_T_S7_S6_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.ez = load ptr, ptr %0, align 8, !tbaa !131
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.f
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !132
  br label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden { <2 x float>, float } @_ZNK2cv6dynafu9WarpField9applyWarpENS_7Point3_IfEESt5arrayIiLm10EEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, <2 x float> %1, float %2, ptr nofree noundef readonly byval(%"struct.std::array") align 8 captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv6dynafu9WarpField9applyWarpENS_7Point3_IfEESt5arrayIiLm10EEibE25__cv_trace_location_fn292)
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %4 to i64
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.g = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %8 = insertelement <3 x float> %7, float %2, i64 2
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.h = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.cu, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.cv, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.j = extractelement <2 x float> %i.h, i64 1   ; 2 uses
  %i.k = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fdiv <2 x float> %i.i, %i.k
  %i.m = extractelement <2 x float> %i.h, i64 0
  %i.n = fdiv float %i.m, %i.j
  %i.o = fcmp oeq float %i.j, 0.000000e+00        ; 2 uses
  %.sroa.4.0 = select i1 %i.o, float %2, float %i.n
  %.sroa.041.0 = select i1 %i.o, <2 x float> %1, <2 x float> %i.l
  br label %bb.s

bb.c:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.p = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.cu, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.q = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.cv, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !124
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !139  ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !118  ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !124
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !124
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %9 = load <3 x float>, ptr %i.w, align 4, !tbaa !145
  %i.af = load <2 x float>, ptr %i.w, align 4, !tbaa !145 ; 3 uses
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !200 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.af, %1
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop152 = fsub <2 x float> %i.af, %1 ; 2 uses
  %i.ai = fsub float %i.ag, %2                    ; 2 uses
  %foldExtExtBinop154 = fmul <2 x float> %foldExtExtBinop152, %foldExtExtBinop152
  %10 = extractelement <2 x float> %foldExtExtBinop154, i64 1
  %i.aj = call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %10)
  %i.ak = call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.aj)
  %i.al = fneg float %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !186
  %i.ao = fmul float %i.an, 2.000000e+00
  %i.ap = fdiv float %i.al, %i.ao
  %i.aq = call noundef float @expf(float noundef %i.ap) #35 ; 4 uses
  %i.ar = fpext float %i.aq to double
  %i.as = fcmp olt double %i.ar, 1.000000e-02
  br i1 %i.as, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ax = load <2 x float>, ptr %i.at, align 4, !tbaa !145, !noalias !654 ; 3 uses
  %i.ay = load <2 x float>, ptr %i.av, align 4, !tbaa !145, !noalias !654 ; 3 uses
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !145, !noalias !654 ; 3 uses
  %i.ba = load <2 x float>, ptr %i.aw, align 4, !tbaa !145, !noalias !654 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !145, !noalias !654 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.be = load float, ptr %i.bd, align 4, !tbaa !145, !noalias !654 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !145, !noalias !654 ; 2 uses
  br i1 %5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.g, <2 x float> zeroinitializer)
  %i.bj = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.f, <2 x float> %i.bi)
  %i.bl = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.e, <2 x float> %i.bk)
  %i.bn = call float @llvm.fmuladd.f32(float %i.bc, float %.sroa.0.0.vec.extract.i, float 0.000000e+00)
  %i.bo = call float @llvm.fmuladd.f32(float %i.be, float %.sroa.0.4.vec.extract.i, float %i.bn)
  %i.bp = call float @llvm.fmuladd.f32(float %i.bg, float %2, float %i.bo)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %11 = fsub <3 x float> %8, %9                   ; 6 uses
  %i.bq = extractelement <3 x float> %11, i64 0
  %12 = call float @llvm.fmuladd.f32(float %i.bc, float %i.bq, float 0.000000e+00)
  %13 = extractelement <3 x float> %11, i64 1
  %i.br = call float @llvm.fmuladd.f32(float %i.be, float %13, float %12)
  %14 = extractelement <3 x float> %11, i64 2
  %i.bs = call float @llvm.fmuladd.f32(float %i.bg, float %14, float %i.br)
  %i.bt = fadd float %i.ag, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !145, !noalias !655
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !145, !noalias !655
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.bz = load float, ptr %i.by, align 4, !tbaa !145, !noalias !655
  %i.ca = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.cb = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cb, <2 x float> zeroinitializer)
  %i.cd = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %15 = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %15, <2 x float> %i.cc)
  %i.cf = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %16 = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %16, <2 x float> %i.ce)
  %i.ch = fadd <2 x float> %i.af, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.bx, i64 1
  %i.ck = fadd <2 x float> %i.cj, %i.ch
  %i.cl = fadd float %i.bz, %i.bt
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.13.0 = phi float [ %i.bp, %bb.i ], [ %i.cl, %bb.j ]
  %.sroa.077.0 = phi <2 x float> [ %i.bm, %bb.i ], [ %i.ck, %bb.j ]
  %i.cm = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cn, %.sroa.077.0
  %i.cp = fmul float %i.aq, %.sroa.13.0
  %i.cq = fadd <2 x float> %i.co, %i.q
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.aq, i64 1
  %i.ct = fadd <2 x float> %i.p, %i.cs
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %i.cu = phi <2 x float> [ %i.p, %bb.g ], [ %i.ct, %bb.k ] ; 2 uses
  %i.cv = phi <2 x float> [ %i.q, %bb.g ], [ %i.cq, %bb.k ] ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cw, align 8, !tbaa !120
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !121
  %i.db = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #35, !inline_history !14
  %i.de = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #35, !inline_history !14
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.cz, %bb.p ], [ %i.dj, %bb.q ]
  %i.dk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dk, label %bb.r, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #35
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !653

bb.s:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.041.1 = phi <2 x float> [ %.sroa.041.0, %._crit_edge ], [ %1, %bb.a ]
  %.sroa.4.1 = phi float [ %.sroa.4.0, %._crit_edge ], [ %2, %bb.a ]
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !205
  %.not.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #37
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.041.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.4.1, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv6dynafu9WarpField8setAllRTENS_7Affine3IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr nofree noundef readonly byval(%"class.cv::Affine3") align 8 captures(none) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.04.08 = phi ptr [ %i.ac, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !139 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !124
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !124
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit:    ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !207
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !207
  %i.o = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.h, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !121
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #35, !inline_history !14
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #35, !inline_history !14
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aa = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.j, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #35
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #35 ; 0 uses
  tail call void @_ZSt9terminatev() #37
  unreachable
end_hunk_0
