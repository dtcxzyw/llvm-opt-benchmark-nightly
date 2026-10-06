Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/min_enclosing_convex_polygon?download=true
inline.NumInlined: 1463
inline.NumDeleted: 622
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN25minEnclosingConvexPolygon6Chains10findKSidesEiii:bb.a
  br i1 %.not.i.i.i.i80, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_T0_.exit.i.i.i", label %bb.x, !llvm.loop !221

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_T0_.exit.i.i.i": ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 128 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ee, %i.do
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEEZNS2_6Chains10findKSidesEiiiE3$_0EvT_SB_T0_.exit", label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i15.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ei, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i15.i.i.i" ], [ %i.ee, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_T0_.exit.i.i.i" ] ; 5 uses
  %i.ef = load i64, ptr %.sroa.0.07.i.i.i.i, align 4 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i13.i.i.i = trunc i64 %i.ef to i32 ; 3 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i8.i.i14.i.i.i = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !76
  %i.eg = icmp sgt i32 %.val2.i8.i.i14.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.eg, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i15.i.i.i"

.lr.ph.i.i21.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i21.i.i.i
  %.sroa.0.010.i.i22.i.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 4 uses
  %.sroa.04.09.i.i23.i.i.i = phi ptr [ %.sroa.0.010.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.04.09.i.i23.i.i.i, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.0.010.i.i22.i.i.i, i64 5, i1 false), !tbaa.struct !146
  %.sroa.0.0.i.i24.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i22.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i25.i.i.i = load i32, ptr %.sroa.0.0.i.i24.i.i.i, align 4, !tbaa !76
  %i.eh = icmp sgt i32 %.val2.i.i.i25.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.eh, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i15.i.i.i", !llvm.loop !220

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i15.i.i.i": ; preds = %.lr.ph.i.i21.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.010.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i.i17.i.i.i = lshr i64 %i.ef, 32
  store i32 %.sroa.03.0.extract.trunc.i.i13.i.i.i, ptr %.sroa.04.0.lcssa.i.i16.i.i.i, align 4, !tbaa !119
  %.sroa.5.0..sroa_idx.i.i18.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i, i64 4
  %.sroa.5.sroa.0.0.extract.trunc.i.i19.i.i.i = trunc i64 %.sroa.5.0.extract.shift.i.i17.i.i.i to i8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i19.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i18.i.i.i, align 4, !tbaa !105
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i20.i.i.i = icmp eq ptr %i.ei, %i.do
  br i1 %.not.i20.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEEZNS2_6Chains10findKSidesEiiiE3$_0EvT_SB_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !222

.preheader.i26.i.i.i:                             ; preds = %bb.w
  %.sroa.08.017.i27.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.not18.i28.i.i.i = icmp eq ptr %.sroa.08.017.i27.i.i.i, %i.do
  br i1 %.not18.i28.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEEZNS2_6Chains10findKSidesEiiiE3$_0EvT_SB_T0_.exit", label %.lr.ph.i29.i.i.i

.lr.ph.i29.i.i.i:                                 ; preds = %.preheader.i26.i.i.i
  %.val1.i.pre22.i30.i.i.i = load i32, ptr %i.dn, align 4, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aj, %.lr.ph.i29.i.i.i
  %.val1.i.i31.i.i.i = phi i32 [ %.val1.i.pre22.i30.i.i.i, %.lr.ph.i29.i.i.i ], [ %.val1.i24.i43.i.i.i, %bb.aj ]
  %.sroa.08.020.i32.i.i.i = phi ptr [ %.sroa.08.017.i27.i.i.i, %.lr.ph.i29.i.i.i ], [ %.sroa.08.0.i44.i.i.i, %bb.aj ] ; 7 uses
  %.pn19.i33.i.i.i = phi ptr [ %i.dn, %.lr.ph.i29.i.i.i ], [ %.sroa.08.020.i32.i.i.i, %bb.aj ] ; 4 uses
  %.val.i.i34.i.i.i = load i32, ptr %.sroa.08.020.i32.i.i.i, align 4, !tbaa !76
  %i.ej = icmp slt i32 %.val.i.i34.i.i.i, %.val1.i.i31.i.i.i
  %i.ek = load i64, ptr %.sroa.08.020.i32.i.i.i, align 4 ; 4 uses
  br i1 %i.ej, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.el = ptrtoint ptr %.sroa.08.020.i32.i.i.i to i64
  %i.em = sub i64 %i.el, %i.dq                    ; 3 uses
  %i.en = ashr exact i64 %i.em, 3                 ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 1
  br i1 %i.eo, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i, i64 16
  %i.eq = sub nsw i64 0, %i.en
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.er, ptr noundef nonnull align 4 dereferenceable(1) %i.dn, i64 %i.em, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i51.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.es = icmp eq i64 %i.em, 8
  br i1 %i.es, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i51.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %.pn19.i33.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.et, ptr noundef nonnull align 4 dereferenceable(5) %i.dn, i64 5, i1 false), !tbaa.struct !146
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i51.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i51.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.0.0.extract.trunc.i52.i.i.i = trunc i64 %i.ek to i40
  store i40 %.sroa.0.0.extract.trunc.i52.i.i.i, ptr %i.dn, align 4
  %i.eu = trunc i64 %i.ek to i32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %.sroa.03.0.extract.trunc.i.i35.i.i.i = trunc i64 %i.ek to i32 ; 3 uses
  %.val2.i8.i.i36.i.i.i = load i32, ptr %.pn19.i33.i.i.i, align 4, !tbaa !76
  %i.ev = icmp sgt i32 %.val2.i8.i.i36.i.i.i, %.sroa.03.0.extract.trunc.i.i35.i.i.i
  br i1 %i.ev, label %.lr.ph.i.i46.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i37.i.i.i"

.lr.ph.i.i46.i.i.i:                               ; preds = %bb.ai, %.lr.ph.i.i46.i.i.i
  %.sroa.0.010.i.i47.i.i.i = phi ptr [ %.sroa.0.0.i.i49.i.i.i, %.lr.ph.i.i46.i.i.i ], [ %.pn19.i33.i.i.i, %bb.ai ] ; 4 uses
  %.sroa.04.09.i.i48.i.i.i = phi ptr [ %.sroa.0.010.i.i47.i.i.i, %.lr.ph.i.i46.i.i.i ], [ %.sroa.08.020.i32.i.i.i, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.04.09.i.i48.i.i.i, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.0.010.i.i47.i.i.i, i64 5, i1 false), !tbaa.struct !146
  %.sroa.0.0.i.i49.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i47.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i50.i.i.i = load i32, ptr %.sroa.0.0.i.i49.i.i.i, align 4, !tbaa !76
  %i.ew = icmp sgt i32 %.val2.i.i.i50.i.i.i, %.sroa.03.0.extract.trunc.i.i35.i.i.i
  br i1 %i.ew, label %.lr.ph.i.i46.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i37.i.i.i", !llvm.loop !220

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i37.i.i.i": ; preds = %.lr.ph.i.i46.i.i.i, %bb.ai
  %.sroa.04.0.lcssa.i.i38.i.i.i = phi ptr [ %.sroa.08.020.i32.i.i.i, %bb.ai ], [ %.sroa.0.010.i.i47.i.i.i, %.lr.ph.i.i46.i.i.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i.i39.i.i.i = lshr i64 %i.ek, 32
  store i32 %.sroa.03.0.extract.trunc.i.i35.i.i.i, ptr %.sroa.04.0.lcssa.i.i38.i.i.i, align 4, !tbaa !119
  %.sroa.5.0..sroa_idx.i.i40.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i38.i.i.i, i64 4
  %.sroa.5.sroa.0.0.extract.trunc.i.i41.i.i.i = trunc i64 %.sroa.5.0.extract.shift.i.i39.i.i.i to i8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i41.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i40.i.i.i, align 4, !tbaa !105
  %.val1.i.pre.i42.i.i.i = load i32, ptr %i.dn, align 4, !tbaa !76
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i37.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i51.i.i.i
  %.val1.i24.i43.i.i.i = phi i32 [ %i.eu, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i51.i.i.i ], [ %.val1.i.pre.i42.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i37.i.i.i" ]
  %.sroa.08.0.i44.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i32.i.i.i, i64 8 ; 2 uses
  %.not.i45.i.i.i = icmp eq ptr %.sroa.08.0.i44.i.i.i, %i.do
  br i1 %.not.i45.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEEZNS2_6Chains10findKSidesEiiiE3$_0EvT_SB_T0_.exit", label %bb.ad, !llvm.loop !221

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEEZNS2_6Chains10findKSidesEiiiE3$_0EvT_SB_T0_.exit": ; preds = %bb.aj, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_.exit.i15.i.i.i", %.preheader.i26.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_T0_.exit.i.i.i", %bb.v
  %i.ex = load ptr, ptr %5, align 8, !tbaa !141   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEEZNS2_6Chains10findKSidesEiiiE3$_0EvT_SB_T0_.exit"
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !142
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #30
  br label %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit

_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit: ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEEZNS2_6Chains10findKSidesEiiiE3$_0EvT_SB_T0_.exit", %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.al:                                            ; preds = %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EE9push_backEOS1_.exit60
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit82

bb.am:                                            ; preds = %bb.u
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %5, align 8, !tbaa !141   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit82, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !142
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #30
  br label %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit82

_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit82: ; preds = %bb.an, %bb.am, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.fe, %bb.am ], [ %i.fe, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit82, %bb.t, %bb.o, %bb.n, %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit82 ], [ %i.cg, %bb.o ], [ %i.dc, %bb.t ], [ %i.cf, %bb.n ], [ %i.ce, %bb.m ], [ %i.cd, %bb.l ]
  %i.fl = load ptr, ptr %0, align 8, !tbaa !141   ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit84, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !142
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit84

_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EED2Ev.exit84: ; preds = %bb.ao, %bb.ap
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN25minEnclosingConvexPolygon6Chains13findKVerticesERSt6vectorINS_4SideESaIS2_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.35", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = load ptr, ptr %2, align 8, !tbaa !141
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %sext = shl i64 %i.f, 29                        ; 3 uses
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #28
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.k = ashr exact i64 %sext, 29                 ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #29 ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !20
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.l, i64 %i.k
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %i.n = phi ptr [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 7 uses
  %.sink.i = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  store ptr %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink.i, ptr %i.p, align 8, !tbaa !57
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.o, align 8, !tbaa !29
  %i.q = icmp sgt i32 %i.h, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.r = add nsw i32 %i.h, -1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = and i64 %i.g, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u      ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !141    ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !77, !range !103, !noundef !55
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %.not, i64 0, i64 %indvars.iv.next
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !77, !range !103, !noundef !55
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.w, align 4, !tbaa !76  ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !76
  %i.ah = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZN25minEnclosingConvexPolygon18FlushIntersections13lineIntersectEii(ptr noundef nonnull align 8 dereferenceable(56) %i.t, i32 noundef %i.af, i32 noundef %i.ag)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !20
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !20
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  %i.al = sext i32 %i.af to i64
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al
  %i.ao = trunc i64 %indvars.iv to i32
  %i.ap = add i32 %i.ao, 2
  %i.aq = urem i32 %i.ap, %i.h
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !76
  %i.au = sext i32 %i.at to i64
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !20
  store i64 %i.ay, ptr %i.ax, align 4, !tbaa !20
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.i, label %.thread50

bb.i:                                             ; preds = %bb.h
  %i.az = trunc nuw nsw i64 %indvars.iv to i32
  %i.ba = add i32 %i.r, %i.az
  %i.bb = srem i32 %i.ba, %i.h
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !76
  %i.bf = sext i32 %i.be to i64
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i32, ptr %i.ab, align 4, !tbaa !76
  %i.bj = sext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !20
  store i64 %i.bo, ptr %i.bn, align 4, !tbaa !20
  br label %bb.n

.thread50:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.thread50
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN25minEnclosingConvexPolygon6Chains13findKVerticesERSt6vectorINS_4SideESaIS2_EE, ptr noundef nonnull @.str.1, i32 noundef 960) #28
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %.thread50
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !116   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !117
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.l ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.o

bb.n:                                             ; preds = %bb.g, %bb.i, %bb.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !231

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn46 = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = ptrtoint ptr %.sink.i to i64
  %i.bx = ptrtoint ptr %i.n to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.by) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

._crit_edge:                                      ; preds = %bb.n, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  ret void

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.p, %bb.o
  resume { ptr, i32 } %.pn46
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN2cv25minEnclosingConvexPolygonERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.minEnclosingConvexPolygon::Chains", align 8 ; 13 uses
  %4 = alloca %"class.std::set", align 8          ; 9 uses
  %5 = alloca %"struct.minEnclosingConvexPolygon::Kgon", align 16 ; 13 uses
  %6 = alloca %"class.std::vector.44", align 16   ; 6 uses
  %7 = alloca %"class.std::vector", align 16      ; 6 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.35", align 1 ; 3 uses
  %12 = alloca %"class.std::vector", align 8      ; 15 uses
  %13 = alloca %"class.std::vector", align 8      ; 14 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !242
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111, !noalias !242
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.f = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %.not = icmp slt i32 %i.e, %2
  %or.cond = or i1 %.not, %i.f
  br i1 %or.cond, label %bb.f, label %bb.k

end_hunk_0
