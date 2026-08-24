Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/minimap?download=true
inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7Minimap9addMarkerEPN5scene10ISceneNodeE:bb.a
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !244
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.at, ptr %i.e, align 8, !tbaa !248
  br label %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %.noexc
  ret ptr %i.a

_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EED2Ev.exit5: ; preds = %_ZNKSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #30
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7Minimap12removeMarkerEPP13MinimapMarker(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !245    ; 7 uses
  store ptr null, ptr %1, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !535  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !535  ; 6 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = ashr i64 %i.h, 5                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.k = and i64 %i.h, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.c, i64 %i.k ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.058.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.s, %bb.f ] ; 9 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i, align 8, !tbaa !245
  %i.l = icmp eq ptr %.val1.i.i.i.i, %i.a
  br i1 %i.l, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %.val1.i22.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !245
  %i.n = icmp eq ptr %.val1.i22.i.i.i, %i.a
  br i1 %i.n, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %.val1.i23.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !245
  %i.p = icmp eq ptr %.val1.i23.i.i.i, %i.a
  br i1 %i.p, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit25", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %.val1.i24.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !245
  %i.r = icmp eq ptr %.val1.i24.i.i.i, %i.a
  br i1 %i.r, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit27", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32
  %i.t = add nsw i64 %.058.i.i.i, -1
  %i.u = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.u, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !563

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre66.i.i.i = sub i64 %i.f, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi67.i.i.i = phi i64 [ %.pre66.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.h, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.v = ashr exact i64 %.pre-phi67.i.i.i, 3
  switch i64 %i.v, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge64.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8, !tbaa !245
  %i.w = icmp eq ptr %.val1.i25.i.i.i, %i.a
  br i1 %i.w, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %bb.h, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.x, %bb.h ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i, align 8, !tbaa !245
  %i.y = icmp eq ptr %.val1.i26.i.i.i, %i.a
  br i1 %i.y, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit", label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge64.i.i.i

._crit_edge._crit_edge64.i.i.i:                   ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.z, %bb.i ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.038.2.i.i.i, align 8, !tbaa !245
  %i.aa = icmp eq ptr %.val1.i27.i.i.i, %i.a
  %spec.select.i.i.i = select i1 %i.aa, ptr %.sroa.038.2.i.i.i, ptr %i.e
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit25": ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit27": ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit": ; preds = %bb.b, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit25", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit27", %._crit_edge.i.i.i, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge64.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge64.i.i.i ], [ %i.e, %._crit_edge.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.g ], [ %i.ad, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit27" ], [ %i.ac, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit25" ], [ %i.ab, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i, %bb.b ]
  %i.ae = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.af = sub i64 %i.ae, %i.g
  %i.ag = getelementptr inbounds i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit"
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.f, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.aq, %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.ag, %bb.j ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.ah, %bb.j ] ; 3 uses
  %i.am = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !245
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !245
  %i.an = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !245 ; 2 uses
  store ptr %i.am, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !245
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteI13MinimapMarkerEclEPS0_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteI13MinimapMarkerEclEPS0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 8) #30
  br label %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteI13MinimapMarkerEclEPS0_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.aq = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, !llvm.loop !564

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !244
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, %bb.j, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit"
  %i.as = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i ], [ %i.e, %bb.j ], [ %i.e, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEEZN7Minimap12removeMarkerEPPS3_E3$_0ET_SG_SG_T0_.exit" ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  store ptr %i.at, ptr %i.d, align 8, !tbaa !244
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, label %_ZNKSt14default_deleteI13MinimapMarkerEclEPS0_.exit.i.i.i

_ZNKSt14default_deleteI13MinimapMarkerEclEPS0_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 8) #30
  br label %_ZNSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

_ZNSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI13MinimapMarkerSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, %_ZNKSt14default_deleteI13MinimapMarkerEclEPS0_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15MinimapMapblock15getMinimapNodesEP16VoxelManipulatorPK14NodeDefManagerRKN4core8vector3dIsEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(2048) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.VoxelArea, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv.a = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.a, %bb.c ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.p = trunc nuw nsw i64 %indvars.iv.a to i16
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.n
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next.a, 16
  br i1 %exitcond56.not, label %bb.b, label %.preheader, !llvm.loop !565

bb.d:                                             ; preds = %.preheader, %bb.n
  %indvars.iv50 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next51, %bb.n ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv50, 7
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.r = trunc nuw nsw i64 %indvars.iv50 to i16
  br label %bb.f

bb.e:                                             ; preds = %bb.l
  %i.s = trunc nuw i8 %.1 to i1
  br i1 %i.s, label %bb.n, label %bb.m

bb.f:                                             ; preds = %bb.d, %bb.l
  %.047 = phi i16 [ 15, %bb.d ], [ %i.bs, %bb.l ] ; 4 uses
  %.02546 = phi i8 [ 0, %bb.d ], [ %.1, %bb.l ]   ; 2 uses
  %.02645 = phi i16 [ 0, %bb.d ], [ %.127, %bb.l ] ; 2 uses
  %i.t = load i16, ptr %3, align 2, !tbaa !54
  %i.u = add i16 %i.t, %i.p                       ; 2 uses
  %i.v = load i16, ptr %i.a, align 2, !tbaa !55
  %i.w = add i16 %i.v, %.047                      ; 2 uses
  %i.x = load i16, ptr %i.b, align 2, !tbaa !56
  %i.y = add i16 %i.x, %i.r                       ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.y to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.w to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.u to i48
  %i.z = or disjoint i48 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.z, %.sroa.3.0.insert.shift.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i48 %.sroa.0.0.insert.insert.i, ptr %4, align 8
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.c, align 2
  %i.aa = sext i16 %i.y to i32
  store i32 1, ptr %i.d, align 4, !tbaa !238
  store i32 1, ptr %i.e, align 8, !tbaa !238
  store i32 1, ptr %i.f, align 4, !tbaa !238
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.ab = load i16, ptr %i.h, align 4, !tbaa !566
  %i.ac = sext i16 %i.ab to i32
  %i.ad = sub nsw i32 %i.aa, %i.ac
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !569
  %i.af = mul nsw i32 %i.ad, %i.ae
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !570
  %i.ah = sext i16 %i.w to i32
  %i.ai = load i16, ptr %i.k, align 2, !tbaa !571
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add i32 %i.af, %i.ah
  %i.al = sub i32 %i.ak, %i.aj
  %i.am = mul i32 %i.al, %i.ag
  %i.an = sext i16 %i.u to i32
  %i.ao = load i16, ptr %i.g, align 4, !tbaa !572
  %i.ap = sext i16 %i.ao to i32
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = add nsw i32 %i.aq, %i.am
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !573
  %i.at = sext i32 %i.ar to i64                   ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !183
  %i.aw = and i8 %i.av, 1
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %bb.g, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !576
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.at
  %i.az = load i32, ptr %i.ay, align 4
  br label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.insert.insert.i33 = phi i32 [ %i.az, %bb.g ], [ 127, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.sroa.036.0.extract.trunc.mask = and i32 %.sroa.0.0.insert.insert.i33, 65535
  %i.ba = zext nneg i32 %.sroa.036.0.extract.trunc.mask to i64 ; 2 uses
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !266
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !269 ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 2080
  %i.bh = icmp ugt i64 %i.bg, %i.ba
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %i.bi = getelementptr inbounds nuw [2080 x i8], ptr %i.bc, i64 %i.ba ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !184
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.i, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.i:                                             ; preds = %bb.h, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.h, %bb.i
  %i.bn = phi ptr [ %i.bm, %bb.i ], [ %i.bi, %bb.h ]
  %i.bo = trunc nuw i8 %.02546 to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 98
  %i.bq = load i8, ptr %i.bp, align 2
  %.not = icmp eq i8 %i.bq, 1                     ; 2 uses
  %or.cond = select i1 %i.bo, i1 true, i1 %.not
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  store i16 %.047, ptr %i.q, align 4, !tbaa !107
  store i32 %.sroa.0.0.insert.insert.i33, ptr %gep, align 4
  br label %bb.l

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.br = zext i1 %.not to i16
  %spec.select = add i16 %.02645, %i.br
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.127 = phi i16 [ %.02645, %bb.j ], [ %spec.select, %bb.k ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.j ], [ %.02546, %bb.k ]   ; 2 uses
  %i.bs = add nsw i16 %.047, -1
  %.not57 = icmp eq i16 %.047, 0
  br i1 %.not57, label %bb.e, label %bb.f, !llvm.loop !577

bb.m:                                             ; preds = %bb.e
  store i32 126, ptr %gep, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %gep, i64 6
  store i16 %.127, ptr %i.bt, align 2, !tbaa !104
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, 16
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !578
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZN12UpdateThread3runEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.d = load atomic i8, ptr %i.b seq_cst, align 1, !range !99, !noundef !100
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.c, %bb.d
  %i.f = invoke noundef zeroext i1 @_ZN9Semaphore4waitEj(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 0)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %.preheader
  br i1 %i.f, label %.preheader, label %bb.o, !llvm.loop !579

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.c, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.g = extractvalue { ptr, i32 } %lpad.phi, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  invoke void @_Z18debug_describe_excB5cxx11RKSt9exception(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.g, %bb.h
  %i.l = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !580, !nonnull !100, !align !593 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc unwind label %bb.r, !inline_history !594

.noexc:                                           ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.p, i64 976, i64 984
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.18, ptr %i.a, align 8, !tbaa !595
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
