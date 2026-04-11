inline.NumInlined: 260
inline.NumDeleted: 143
begin_hunk_0_@_ZN4geos9operation7overlay4snap17LineStringSnapper17findSnapForVertexERKNS_4geom10CoordinateERKSt6vectorIPS6_SaIS9_EE:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !37
  %3 = load <2 x double>, ptr %1, align 8         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.028 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.0.1, %bb.c ]
  %.01527 = phi double [ %i.e, %.lr.ph ], [ %.116, %bb.c ] ; 2 uses
  %.sroa.0.02126 = phi ptr [ %i.c, %.lr.ph ], [ %i.h, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.02126, align 8, !tbaa !15
  %4 = load <2 x double>, ptr %i.f, align 8       ; 2 uses
  %5 = fcmp oeq <2 x double> %4, %3               ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %.0.i = select i1 %6, i1 %7, i1 false
  br i1 %.0.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %8 = fsub <2 x double> %4, %3                   ; 2 uses
  %9 = fmul <2 x double> %8, %8                   ; 2 uses
  %shift = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %9, %shift
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %10) ; 2 uses
  %i.g = fcmp olt double %sqrt.i, %.01527         ; 2 uses
  %.116 = select i1 %i.g, double %sqrt.i, double %.01527
  %.sroa.0.1 = select i1 %i.g, ptr %.sroa.0.02126, ptr %.sroa.0.028 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02126, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.b
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !45

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %spec.select = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.sroa.0.1, %bb.c ]
end_hunk_0
begin_hunk_1_@_ZN4geos9operation7overlay4snap17LineStringSnapper17findSegmentToSnapERKNS_4geom10CoordinateESt14_List_iteratorIS5_ES9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %4, i8 0, i64 16, i1 false)
  store double 0x7FF8000000000000, ptr %i.a, align 16, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  store double 0x7FF8000000000000, ptr %i.c, align 8, !tbaa !46
  %.not33 = icmp eq ptr %2, %3
  br i1 %.not33, label %select.unfold, label %.lr.ph

end_hunk_1
begin_hunk_2_@_ZN4geos9operation7overlay4snap17LineStringSnapper17findSegmentToSnapERKNS_4geom10CoordinateESt14_List_iteratorIS5_ES9_:bb.a
  br i1 %.0.i19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = load i8, ptr %i.f, align 8, !tbaa !48, !range !36, !noundef !13
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %select.unfold25, label %select.unfold

end_hunk_2
begin_hunk_3_@_ZN4geos9operation7overlay4snap17LineStringSnapper17findSegmentToSnapERKNS_4geom10CoordinateESt14_List_iteratorIS5_ES9_:bb.a
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.037, %bb.e ], [ %.sroa.0.037, %bb.f ], [ %.sroa.022.034, %bb.g ], [ %.sroa.0.037, %bb.d ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.022.034, align 8, !tbaa !20 ; 2 uses
  %.not = icmp eq ptr %i.an, %3
  br i1 %.not, label %select.unfold, label %bb.b, !llvm.loop !49

select.unfold:                                    ; preds = %select.unfold25, %bb.d, %bb.g, %bb.a
  %.sroa.013.3 = phi ptr [ %3, %bb.a ], [ %3, %bb.d ], [ %.sroa.022.034, %bb.g ], [ %.sroa.0.2.ph, %select.unfold25 ]
end_hunk_3
begin_hunk_4_@_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev:bb.a
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit, label %bb.c

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  br i1 %.not13.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %.preheader.i
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.c = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !20 ; 2 uses
  %i.d = add nuw nsw i64 %.015.i, 1               ; 3 uses
  %.not.i = icmp eq ptr %i.c, %2
  br i1 %.not.i, label %_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !52

_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = load ptr, ptr %0, align 8, !tbaa !50     ; 6 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.p = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !54

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !55
  store ptr %i.s, ptr %i.e, align 8, !tbaa !53
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.i                       ; 2 uses
  %i.x = sdiv exact i64 %i.w, 24                  ; 9 uses
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %.sroa.03.07.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ac, %2
  br i1 %.not.i.i.i.i.i20, label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !56

_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i19, %bb.e
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ab, %.lr.ph.i.i.i.i.i19 ] ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !55
  %.not.i21 = icmp eq ptr %i.ad, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i21, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.f:                                             ; preds = %bb.d
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !20 ; 3 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.preheader.i24.prol.loopexit, label %.preheader.i24.prol, !llvm.loop !57

.preheader.i24.prol.loopexit:                     ; preds = %.preheader.i24.prol, %.preheader.i24.preheader
  %.lcssa69.unr = phi ptr [ poison, %.preheader.i24.preheader ], [ %i.ah, %.preheader.i24.prol ]
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol, !llvm.loop !59

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader
  %.lcssa71.unr = phi ptr [ poison, %.lr.ph.i22.preheader ], [ %i.an, %.lr.ph.i22.prol ]
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.ax = add nsw i64 %.013.i, -8                 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %.not6.i.7 = icmp eq i64 %i.ax, 0
  br i1 %.not6.i.7, label %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i24, !llvm.loop !60

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %.110.i = phi i64 [ %i.bo, %.lr.ph.i22 ], [ %.110.i.unr, %.lr.ph.i22.prol.loopexit ]
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %.not.i23.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i23.7, label %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i22, !llvm.loop !61

_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %.preheader.i24.prol.loopexit, %.preheader.i24
  %.sroa.0.0 = phi ptr [ %i.ay, %.preheader.i24 ], [ %.lcssa69.unr, %.preheader.i24.prol.loopexit ], [ %.lcssa71.unr, %.lr.ph.i22.prol.loopexit ], [ %i.bq, %.lr.ph.i22 ] ; 4 uses
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 24
  %i.bt = load ptr, ptr %.sroa.03.07.i.i.i.i.i28, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.bt, %.sroa.0.0
  br i1 %.not.i.i.i.i.i29, label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit, label %.lr.ph.i.i.i.i.i26, !llvm.loop !56

_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit: ; preds = %.lr.ph.i.i.i.i.i26
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !55
  br label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31

_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31: ; preds = %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit, %.preheader7.i, %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.bw = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !54

_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bu, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31 ], [ %i.bx, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.t, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit
end_hunk_15
begin_hunk_16_@llvm.fabs.v2f64
!42 = distinct !{!42, !"_ZNK4geos4geom14CoordinateList17toCoordinateArrayEv"}
!43 = !{!9, !9, i64 0}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = !{!47, !11, i64 16}
!47 = !{!"_ZTSN4geos4geom10CoordinateE", !11, i64 0, !11, i64 8, !11, i64 16}
!48 = !{!8, !12, i64 16}
!49 = distinct !{!49, !30}
!50 = !{!51, !16, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!52 = distinct !{!52, !30}
!53 = !{!51, !16, i64 16}
!54 = distinct !{!54, !30}
!55 = !{!51, !16, i64 8}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
end_hunk_16
