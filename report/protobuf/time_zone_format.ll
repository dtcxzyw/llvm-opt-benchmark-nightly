inline.NumInlined: 481
inline.NumDeleted: 166
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  store i32 %i.bw, ptr %i.bx, align 16, !tbaa !35, !alias.scope !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 21 ; 18 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !36    ; 5 uses
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !11  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 12 uses
  %.not997 = icmp samesign eq i64 %i.ca, 0
  br i1 %.not997, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %21 = ptrtoint ptr %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 23 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %22 = add i64 %i.ca, %21                        ; 2 uses
  %i.dh = sub i64 0, %i.l
  %scevgep.a = getelementptr i8, ptr %i.k, i64 %i.dh
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread800
  %.0268999 = phi ptr [ %i.bz, %.preheader.lr.ph ], [ %.6274, %.thread800 ] ; 6 uses
  %.0275998 = phi ptr [ %i.bz, %.preheader.lr.ph ], [ %.6281, %.thread800 ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.0268999, i64 %22
  %.02689991014 = ptrtoint ptr %.0268999 to i64   ; 2 uses
  %23 = sub i64 0, %.02689991014
  %scevgep1015 = getelementptr i8, ptr %scevgep, i64 %23
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.k
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  br i1 %.not322, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %.1269989, i64 1 ; 2 uses
  %.not321 = icmp eq ptr %i.dj, %i.cb
  br i1 %.not321, label %.critedge, label %bb.j, !llvm.loop !37

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  br label %bb.gz

.critedge:                                        ; preds = %bb.k, %bb.j
  %.1269.lcssa = phi ptr [ %scevgep1015, %bb.k ], [ %.1269989, %bb.j ] ; 8 uses
  %.1269.lcssa1017 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not323 = icmp ne ptr %.1269.lcssa, %.0268999
  %i.dm = icmp eq ptr %.0275998, %.0268999
  %or.cond = select i1 %.not323, i1 %i.dm, i1 false
  br i1 %or.cond, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.n:                                             ; preds = %.critedge
  %i.dn = sub i64 %.1269.lcssa1017, %.02689991014 ; 2 uses
  %i.do = load i64, ptr %i.n, align 8, !tbaa !11
  %i.dp = sub i64 4611686018427387903, %i.do
  %i.dq = icmp ult i64 %i.dp, %i.dn
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %.1276 = phi ptr [ %.0275998, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 5 uses
  %.0249 = phi ptr [ %.0268999, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 2 uses
  %.not324990 = icmp eq ptr %.1269.lcssa, %i.cb
  br i1 %.not324990, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %scevgep1016 = getelementptr i8, ptr %.1269.lcssa, i64 %22
  %24 = sub i64 0, %.1269.lcssa1017
  %scevgep1018 = getelementptr i8, ptr %scevgep1016, i64 %24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.2270991 = phi ptr [ %i.du, %bb.p ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.ds = load i8, ptr %.2270991, align 1, !tbaa !14
  %i.dt = icmp eq i8 %i.ds, 37                    ; 3 uses
  br i1 %i.dt, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph
  %i.du = getelementptr inbounds nuw i8, ptr %.2270991, i64 1 ; 2 uses
  %.not324 = icmp eq ptr %i.du, %i.cb
  br i1 %.not324, label %.critedge2, label %.lr.ph, !llvm.loop !39

.critedge2:                                       ; preds = %.lr.ph, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %scevgep1018, %bb.p ], [ %.2270991, %.lr.ph ] ; 42 uses
  %.not324.lcssa = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %i.dt, %bb.p ], [ %i.dt, %.lr.ph ] ; 2 uses
  %.not325 = icmp ne ptr %.2270.lcssa, %.0249
  %i.dv = icmp eq ptr %.1276, %.0249
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a

bb.w:                                             ; preds = %bb.v
  %i.eu = ptrtoint ptr %.2270.lcssa to i64
  %i.ev = sub i64 %i.eu, %.1269.lcssa1017
  %i.ew = and i64 %i.ev, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.thread800, label %bb.x, !llvm.loop !40
end_hunk_5
