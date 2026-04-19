inline.NumInlined: 367
inline.NumDeleted: 217
begin_hunk_0_@_ZN6google8protobuf8internal15LookUpEnumValueEPKNS1_9EnumEntryEmSt17basic_string_viewIcSt11char_traitsIcEEPi:bb.a
  br i1 %.not13, label %_ZSt11lower_boundIPKN6google8protobuf8internal9EnumEntryES3_PFbRS4_S6_EET_S9_S9_RKT0_T1_.exit, label %_ZSt9__advanceIPKN6google8protobuf8internal9EnumEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN6google8protobuf8internal9EnumEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZN6google8protobuf8internal12_GLOBAL__N_117EnumCompareByNameERKNS1_9EnumEntryES5_.exit
  %.017.i.i = phi i64 [ %.1.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_117EnumCompareByNameERKNS1_9EnumEntryES5_.exit ], [ %1, %bb.a ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_117EnumCompareByNameERKNS1_9EnumEntryES5_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.b = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.01116.i.i, i64 %i.b ; 3 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !7 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.01.0.copyload.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i, 0
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal15LookUpEnumValueEPKNS1_9EnumEntryEmSt17basic_string_viewIcSt11char_traitsIcEEPi:bb.a
  %i.h = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = xor i64 %i.b, -1
  %i.k = add nsw i64 %.017.i.i, %i.j
  %.112.i.i = select i1 %i.h, ptr %i.i, ptr %.01116.i.i ; 2 uses
  %.1.i.i = select i1 %i.h, i64 %i.k, i64 %i.b    ; 2 uses
  %i.l = icmp sgt i64 %.1.i.i, 0
  br i1 %i.l, label %_ZSt9__advanceIPKN6google8protobuf8internal9EnumEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN6google8protobuf8internal9EnumEntryES3_PFbRS4_S6_EET_S9_S9_RKT0_T1_.exit, !llvm.loop !12

_ZSt11lower_boundIPKN6google8protobuf8internal9EnumEntryES3_PFbRS4_S6_EET_S9_S9_RKT0_T1_.exit: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117EnumCompareByNameERKNS1_9EnumEntryES5_.exit, %bb.a
  %.0.lcssa.i.i = phi ptr [ %0, %bb.a ], [ %.112.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_117EnumCompareByNameERKNS1_9EnumEntryES5_.exit ] ; 4 uses
  %.not = icmp eq ptr %.0.lcssa.i.i, %i.a
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread, label %bb.b

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal14LookUpEnumNameEPKNS1_9EnumEntryEPKimi:bb.a
  br i1 %i.c, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit"

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %.thread
  %.05.i.i = phi i64 [ %5, %.thread ], [ %2, %bb.a ] ; 2 uses
  %.0114.i.i = phi ptr [ %4, %.thread ], [ %1, %bb.a ] ; 3 uses
  %i.d = lshr i64 %.05.i.i, 1                     ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.0114.i.i, i64 %i.d ; 2 uses
  %.val14.i.i = load i32, ptr %i.e, align 4, !tbaa !3 ; 2 uses
  %i.f = icmp eq i32 %.val14.i.i, -1
  br i1 %i.f, label %.thread, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryEPKimiE3$_0EclIS9_S8_EEbT_RT0_.exit.i.i"
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal14LookUpEnumNameEPKNS1_9EnumEntryEPKimi:bb.a
  %i.k = icmp slt i32 %.fr, %3                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = xor i64 %i.d, -1
  %i.n = add nsw i64 %.05.i.i, %i.m
  %spec.select = select i1 %i.k, ptr %i.l, ptr %.0114.i.i
  %spec.select23 = select i1 %i.k, i64 %i.n, i64 %i.d
  br label %.thread

.thread:                                          ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryEPKimiE3$_0EclIS9_S8_EEbT_RT0_.exit.i.i", %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %4 = phi ptr [ %.0114.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %spec.select, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryEPKimiE3$_0EclIS9_S8_EEbT_RT0_.exit.i.i" ] ; 2 uses
  %5 = phi i64 [ %i.d, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %spec.select23, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryEPKimiE3$_0EclIS9_S8_EEbT_RT0_.exit.i.i" ] ; 2 uses
  %i.o = icmp sgt i64 %5, 0
  br i1 %i.o, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit", !llvm.loop !17

"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit": ; preds = %.thread, %bb.a
  %.0.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %4, %.thread ] ; 3 uses
  %.not = icmp eq ptr %.0.lcssa.i.i, %i.a
  br i1 %.not, label %bb.d, label %bb.b

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %.not296, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %.lr.ph310

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.b = ptrtoint ptr %.sroa.27.2206.a to i64     ; 5 uses
  %i.c = trunc nuw i8 %.sroa.8.1 to i1
  %i.d = zext i16 %.sroa.0.1 to i32
  %i.e = select i1 %i.c, i32 %i.d, i32 0
  %i.f = shl i32 %.1, 16
  %i.g = or disjoint i32 %i.f, %i.e               ; 5 uses
  %i.h = icmp eq ptr %.sroa.0142.2, %.sroa.20.1
  br i1 %i.h, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %bb.aa

.lr.ph310:                                        ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.0309 = phi ptr [ %i.df, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0162.0308 = phi ptr [ %.sroa.0162.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 15 uses
  %.sroa.13.0307 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.20.0306 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.0142.0305 = phi ptr [ %.sroa.0142.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 18 uses
  %.sroa.16.0304 = phi ptr [ %.sroa.16.2.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 13 uses
  %.sroa.27.0303 = phi ptr [ %.sroa.27.2.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 9 uses
  %.0203302 = phi i32 [ %.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ] ; 9 uses
  %.sroa.0.0301 = phi i16 [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ undef, %bb.a ] ; 8 uses
  %.sroa.8.0300 = phi i8 [ %.sroa.8.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ]
  %.sroa.0186.0299 = phi ptr [ %.sroa.0186.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 16 uses
  %.sroa.27.0204298 = phi ptr [ %.sroa.27.2206.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 13 uses
  %.sroa.17.0297 = phi ptr [ %.sroa.17.2.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 21 uses
  %i.i = load i32, ptr %.0309, align 4, !tbaa !3  ; 8 uses
  %i.j = trunc nuw i8 %.sroa.8.0300 to i1
  br i1 %i.j, label %bb.i, label %bb.b
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %.not46, label %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.sroa.27.0303, %.sroa.16.0304
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.i, ptr %.sroa.27.0303, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.27.0303, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %.sroa.16.0304 to i64
  %i.n = ptrtoint ptr %.sroa.0162.0308 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775804
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
bb.k:                                             ; preds = %bb.i
  %i.ag = sub i32 %i.i, %i.ac                     ; 6 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.27.0204298 to i64   ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.17.0297 to i64      ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = ashr exact i64 %i.ak, 2                 ; 7 uses
  %i.am = shl i64 %i.ak, 3
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = lshr i32 %i.ag, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0297, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = or i32 %i.at, %i.ap
  store i32 %i.au, ptr %i.as, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.m:                                             ; preds = %bb.k
  %i.av = ptrtoint ptr %.sroa.20.0306 to i64
  %i.aw = ptrtoint ptr %.sroa.0142.0305 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 6 uses
  %i.ay = ashr exact i64 %i.ax, 2                 ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bf = sub nuw nsw i64 %i.bc, %i.al            ; 5 uses
  %i.bg = ptrtoint ptr %.sroa.0186.0299 to i64    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.ai
  %i.bi = ashr exact i64 %i.bh, 2                 ; 2 uses
  %i.bj = xor i64 %i.al, 2305843009213693951
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %.not28.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %.sroa.27.0204298, align 4, !tbaa !3
  %i.bl = getelementptr i8, ptr %.sroa.27.0204298, i64 4 ; 3 uses
  %i.bm = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %i.bw, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %.sroa.17.0297, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.q, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.17.0297, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.bx = sub i64 %i.bg, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.17.0297, i64 noundef %i.bx) #17
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %i.ca, label %bb.t, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0297, i64 %i.bc ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.27.0204298, %i.cb
  %spec.select = select i1 %.not.i.i, ptr %.sroa.27.0204298, ptr %i.cb
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.t, %bb.s, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.p
  %.sroa.17.3.a = phi ptr [ %.sroa.17.0297, %bb.s ], [ %.sroa.17.0297, %bb.t ], [ %.sroa.17.0297, %bb.p ], [ %.sroa.17.0297, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.br, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 3 uses
  %.sroa.27.3207.a = phi ptr [ %.sroa.27.0204298, %bb.s ], [ %spec.select, %bb.t ], [ %i.bl, %bb.p ], [ %i.bo, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.by, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ]
  %.sroa.0186.3 = phi ptr [ %.sroa.0186.0299, %bb.s ], [ %.sroa.0186.0299, %bb.t ], [ %.sroa.0186.0299, %bb.p ], [ %.sroa.0186.0299, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bz, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ]
  %.not223294 = icmp eq ptr %.sroa.0142.0305, %.sroa.20.0306
  br i1 %.not223294, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %spec.select222 = phi ptr [ %.sroa.20.0306, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.0142.0305, %.lr.ph ]
  %i.cc = and i32 %i.ag, 31
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = lshr i32 %i.ag, 5
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.3.a, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = or i32 %i.ch, %i.cd
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit225:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = lshr i32 %i.ck, 5
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.3.a, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = or i32 %i.cm, %i.cq
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0129.0295, i64 4 ; 2 uses
  %.not223 = icmp eq ptr %i.cs, %.sroa.20.0306
  br i1 %.not223, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

bb.u:                                             ; preds = %bb.m
  %.not.i63 = icmp eq ptr %.sroa.20.0306, %.sroa.13.0307
  br i1 %.not.i63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.i, ptr %.sroa.20.0306, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.20.0306, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.w:                                             ; preds = %bb.u
end_hunk_12
begin_hunk_13_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.v, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.j, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit
  %.sroa.17.2.a = phi ptr [ %.sroa.17.0297, %bb.j ], [ %.sroa.17.0297, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.17.0297, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.17.0297, %bb.d ], [ %.sroa.17.0297, %bb.l ], [ %.sroa.17.3.a, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.17.0297, %bb.v ], [ %.sroa.17.0297, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.27.2206.a = phi ptr [ %.sroa.27.0204298, %bb.j ], [ %.sroa.27.0204298, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.0204298, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.27.0204298, %bb.d ], [ %.sroa.27.0204298, %bb.l ], [ %.sroa.27.3207.a, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.27.0204298, %bb.v ], [ %.sroa.27.0204298, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.0186.2 = phi ptr [ %.sroa.0186.0299, %bb.j ], [ %.sroa.0186.0299, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0186.0299, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0186.0299, %bb.d ], [ %.sroa.0186.0299, %bb.l ], [ %.sroa.0186.3, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0186.0299, %bb.v ], [ %.sroa.0186.0299, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.8.1 = phi i8 [ 1, %bb.j ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ 1, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ 0, %bb.d ], [ 1, %bb.l ], [ 1, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ 1, %bb.v ], [ 1, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.0.1 = phi i16 [ %.sroa.0.0301, %bb.j ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sink.i, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0.0301, %bb.d ], [ %.sroa.0.0301, %bb.l ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0.0301, %bb.v ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.1 = phi i32 [ %i.af, %bb.j ], [ %.0203302, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ 1, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.0203302, %bb.d ], [ %.0203302, %bb.l ], [ %.0203302, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.0203302, %bb.v ], [ %.0203302, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.27.2.a = phi ptr [ %.sroa.27.0303, %bb.j ], [ %i.z, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.0303, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %i.l, %bb.d ], [ %.sroa.27.0303, %bb.l ], [ %.sroa.27.0303, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.27.0303, %bb.v ], [ %.sroa.27.0303, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 5 uses
  %.sroa.16.2.a = phi ptr [ %.sroa.16.0304, %bb.j ], [ %i.aa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.16.0304, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.16.0304, %bb.d ], [ %.sroa.16.0304, %bb.l ], [ %.sroa.16.0304, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.16.0304, %bb.v ], [ %.sroa.16.0304, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.0142.2 = phi ptr [ %.sroa.0142.0305, %bb.j ], [ %.sroa.0142.0305, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0142.0305, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0142.0305, %bb.d ], [ %.sroa.0142.0305, %bb.l ], [ %.sroa.0142.0305, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0142.0305, %bb.v ], [ %i.da, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 10 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.0306, %bb.j ], [ %.sroa.20.0306, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.20.0306, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.20.0306, %bb.d ], [ %.sroa.20.0306, %bb.l ], [ %spec.select222, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.ct, %bb.v ], [ %i.dd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 5 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0307, %bb.j ], [ %.sroa.13.0307, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.0307, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.13.0307, %bb.d ], [ %.sroa.13.0307, %bb.l ], [ %.sroa.13.0307, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.13.0307, %bb.v ], [ %i.de, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.0162.1 = phi ptr [ %.sroa.0162.0308, %bb.j ], [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0162.0308, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0162.0308, %bb.d ], [ %.sroa.0162.0308, %bb.l ], [ %.sroa.0162.0308, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0162.0308, %bb.v ], [ %.sroa.0162.0308, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0309, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph310

bb.aa:                                            ; preds = %._crit_edge
  %i.dg = icmp eq ptr %.sroa.0162.1, %.sroa.27.2.a
  br i1 %i.dg, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = ptrtoint ptr %.sroa.27.2.a to i64       ; 2 uses
  %i.di = ptrtoint ptr %.sroa.0162.1 to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = ptrtoint ptr %.sroa.20.1 to i64         ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.0142.2 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2
end_hunk_13
begin_hunk_14_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store i32 %.sink.i.i, ptr %.020.i.i, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 4 ; 4 uses
  %i.eb = icmp ne ptr %.sroa.014.1.i.i, %.sroa.27.2.a
  %i.ec = icmp ne ptr %.sroa.010.1.i.i, %.sroa.20.1
  %or.cond.i.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !27

end_hunk_14
begin_hunk_15_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a

_ZNSt6vectorIiSaIiEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.aj, %bb.ai, %bb.ah, %bb.aa, %._crit_edge
  %.0203.lcssa383 = phi i32 [ %i.g, %bb.aa ], [ %i.g, %._crit_edge ], [ %i.g, %bb.ah ], [ %i.g, %bb.ai ], [ %i.g, %bb.aj ], [ 0, %bb.a ]
  %.sroa.0186.0.lcssa381 = phi ptr [ %.sroa.0186.2, %bb.aa ], [ %.sroa.0186.2, %._crit_edge ], [ %.sroa.0186.2, %bb.ah ], [ %.sroa.0186.2, %bb.ai ], [ %.sroa.0186.2, %bb.aj ], [ null, %bb.a ] ; 3 uses
  %.sroa.17.0.lcssa380 = phi i64 [ %i.b, %bb.aa ], [ %i.b, %._crit_edge ], [ %i.b, %bb.ah ], [ %i.b, %bb.ai ], [ %i.b, %bb.aj ], [ 0, %bb.a ]
  %.sroa.0186.0.lcssa378 = phi ptr [ %.sroa.17.2.a, %bb.aa ], [ %.sroa.17.2.a, %._crit_edge ], [ %.sroa.17.2.a, %bb.ah ], [ %.sroa.17.2.a, %bb.ai ], [ %.sroa.17.2.a, %bb.aj ], [ null, %bb.a ] ; 7 uses
  %.sroa.27.3.a = phi ptr [ %.sroa.16.2.a, %bb.aa ], [ null, %._crit_edge ], [ %.sroa.16.2.a, %bb.ah ], [ %.sroa.16.2.a, %bb.ai ], [ %.sroa.16.2.a, %bb.aj ], [ null, %bb.a ] ; 3 uses
  %.sroa.0142.3 = phi ptr [ null, %bb.aa ], [ %.sroa.0142.2, %._crit_edge ], [ %.sroa.0142.2, %bb.ah ], [ %.sroa.0142.2, %bb.ai ], [ %.sroa.0142.2, %bb.aj ], [ null, %bb.a ] ; 5 uses
  %.sroa.20.2 = phi ptr [ null, %bb.aa ], [ %.sroa.13.1, %._crit_edge ], [ %.sroa.13.1, %bb.ah ], [ %.sroa.13.1, %bb.ai ], [ %.sroa.13.1, %bb.aj ], [ null, %bb.a ] ; 3 uses
  %.sroa.0108.0 = phi ptr [ %.sroa.0142.2, %bb.aa ], [ %.sroa.0162.1, %._crit_edge ], [ %.sroa.0108.2, %bb.ah ], [ %.sroa.0108.2, %bb.ai ], [ %.sroa.0108.2, %bb.aj ], [ null, %bb.a ] ; 6 uses
  %.sroa.18.0 = phi ptr [ %.sroa.20.1, %bb.aa ], [ %.sroa.27.2.a, %._crit_edge ], [ %.sroa.18.1, %bb.ah ], [ %.sroa.18.1, %bb.ai ], [ %.sroa.18.1, %bb.aj ], [ null, %bb.a ]
  %.sroa.29.0 = phi ptr [ %.sroa.13.1, %bb.aa ], [ %.sroa.16.2.a, %._crit_edge ], [ %.sroa.18.1, %bb.ah ], [ %.sroa.18.1, %bb.ai ], [ %.sroa.18.1, %bb.aj ], [ null, %bb.a ] ; 2 uses
  %.sroa.0162.2 = phi ptr [ %.sroa.0162.1, %bb.aa ], [ null, %._crit_edge ], [ %.sroa.0162.1, %bb.ah ], [ %.sroa.0162.1, %bb.ai ], [ %.sroa.0162.1, %bb.aj ], [ null, %bb.a ] ; 5 uses
  %i.ep = ptrtoint ptr %.sroa.0186.0.lcssa378 to i64 ; 2 uses
  %i.eq = sub i64 %.sroa.17.0.lcssa380, %i.ep     ; 5 uses
  %i.er = ashr exact i64 %i.eq, 2                 ; 2 uses
  %i.es = add nsw i64 %i.er, 2
  %i.et = ptrtoint ptr %.sroa.18.0 to i64
end_hunk_15
begin_hunk_16_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %i.fp, label %bb.am, label %bb.an, !prof !25

bb.am:                                            ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr align 4 %.sroa.0186.0.lcssa378, i64 %i.eq, i1 false)
  br label %bb.aq

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
end_hunk_16
begin_hunk_17_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %i.fq, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fr = load i32, ptr %.sroa.0186.0.lcssa378, align 4, !tbaa !3
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !3
  br label %bb.aq

end_hunk_17
begin_hunk_18_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ar, %bb.as
  %.not.i.i.i81 = icmp eq ptr %.sroa.0186.0.lcssa378, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ga = ptrtoint ptr %.sroa.0186.0.lcssa381 to i64
  %i.gb = sub i64 %i.ga, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0.lcssa378, i64 noundef %i.gb) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.at
end_hunk_18
begin_hunk_19_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIiSaIiEED2Ev.exit83, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.gc = ptrtoint ptr %.sroa.20.2 to i64
  %i.gd = ptrtoint ptr %.sroa.0142.3 to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0142.3, i64 noundef %i.ge) #17
end_hunk_19
begin_hunk_20_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIiSaIiEED2Ev.exit85, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit83
  %i.gf = ptrtoint ptr %.sroa.27.3.a to i64
  %i.gg = ptrtoint ptr %.sroa.0162.2 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.2, i64 noundef %i.gh) #17
end_hunk_20
begin_hunk_21_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

_ZNSt6vectorIiSaIiEED2Ev.exit89:                  ; preds = %.loopexit225, %.loopexit.split-lp226, %.loopexit, %.loopexit.split-lp, %bb.ax, %bb.aw, %.thread
  %.sroa.27.0204286 = phi ptr [ %.sroa.17.2.a, %.thread ], [ %.sroa.0186.0.lcssa378, %bb.ax ], [ %.sroa.0186.0.lcssa378, %bb.aw ], [ %.sroa.17.0297, %.loopexit.split-lp ], [ %.sroa.17.0297, %.loopexit ], [ %.sroa.17.0297, %.loopexit225 ], [ %.sroa.17.0297, %.loopexit.split-lp226 ] ; 3 uses
  %.sroa.0186.0278 = phi ptr [ %.sroa.0186.2, %.thread ], [ %.sroa.0186.0.lcssa381, %bb.ax ], [ %.sroa.0186.0.lcssa381, %bb.aw ], [ %.sroa.0186.0299, %.loopexit.split-lp ], [ %.sroa.0186.0299, %.loopexit ], [ %.sroa.0186.0299, %.loopexit225 ], [ %.sroa.0186.0299, %.loopexit.split-lp226 ]
  %.sroa.27.5.a = phi ptr [ %.sroa.16.2.a, %.thread ], [ %.sroa.27.3.a, %bb.ax ], [ %.sroa.27.3.a, %bb.aw ], [ %.sroa.16.0304, %.loopexit.split-lp ], [ %.sroa.16.0304, %.loopexit ], [ %.sroa.16.0304, %.loopexit225 ], [ %.sroa.16.0304, %.loopexit.split-lp226 ]
  %.sroa.0142.5 = phi ptr [ %.sroa.0142.2, %.thread ], [ %.sroa.0142.3, %bb.ax ], [ %.sroa.0142.3, %bb.aw ], [ %.sroa.0142.0305, %.loopexit.split-lp ], [ %.sroa.0142.0305, %.loopexit ], [ %.sroa.0142.0305, %.loopexit225 ], [ %.sroa.0142.0305, %.loopexit.split-lp226 ] ; 3 uses
  %.sroa.20.4 = phi ptr [ %.sroa.13.1, %.thread ], [ %.sroa.20.2, %bb.ax ], [ %.sroa.20.2, %bb.aw ], [ %.sroa.13.0307, %.loopexit.split-lp ], [ %.sroa.13.0307, %.loopexit ], [ %.sroa.13.0307, %.loopexit225 ], [ %.sroa.13.0307, %.loopexit.split-lp226 ]
  %.sroa.0162.4 = phi ptr [ %.sroa.0162.1, %.thread ], [ %.sroa.0162.2, %bb.ax ], [ %.sroa.0162.2, %bb.aw ], [ %.sroa.0162.0308, %.loopexit.split-lp ], [ %.sroa.0162.0308, %.loopexit ], [ %.sroa.0162.0308, %.loopexit225 ], [ %.sroa.0162.0308, %.loopexit.split-lp226 ] ; 3 uses
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %.thread ], [ %.pn.pn, %bb.ax ], [ %.pn.pn, %bb.aw ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit227, %.loopexit225 ], [ %lpad.loopexit.split-lp228, %.loopexit.split-lp226 ]
  %.not.i.i.i90 = icmp eq ptr %.sroa.27.0204286, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIjSaIjEED2Ev.exit91, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit89
  %i.go = ptrtoint ptr %.sroa.0186.0278 to i64
  %i.gp = ptrtoint ptr %.sroa.27.0204286 to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.27.0204286, i64 noundef %i.gq) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit91

_ZNSt6vectorIjSaIjEED2Ev.exit91:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit89, %bb.ay
end_hunk_21
begin_hunk_22_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIiSaIiEED2Ev.exit93, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit91
  %i.gr = ptrtoint ptr %.sroa.20.4 to i64
  %i.gs = ptrtoint ptr %.sroa.0142.5 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0142.5, i64 noundef %i.gt) #17
end_hunk_22
begin_hunk_23_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIiSaIiEED2Ev.exit95, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit93
  %i.gu = ptrtoint ptr %.sroa.27.5.a to i64
  %i.gv = ptrtoint ptr %.sroa.0162.4 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.4, i64 noundef %i.gw) #17
end_hunk_23
