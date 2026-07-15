inline.NumInlined: 8332
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.bwk = zext i32 %.0.i1014 to i64
  %i.bwl = sub nsw i64 %i.bwk, %i.bwf
  %i.bwm = load ptr, ptr %i.fp, align 8
  %i.bwn = sub nuw i64 %i.bwd, %i.bwf
  %.sroa.speculated.i.i1015 = call i64 @llvm.umin.i64(i64 %i.bwn, i64 %i.bwl)
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bwf
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1015, ptr %i.bwo)
  %i.bwp = load i32, ptr %i.fs, align 8           ; 3 uses
  %i.bwq = icmp eq i32 %i.bwp, -1
  br i1 %i.bwq, label %_ZNK3ada14url_aggregator10get_searchEv.exit1027, label %bb.pb

bb.pb:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1018
  %i.bwr = load i64, ptr %i.fq, align 8           ; 4 uses
  %i.bws = trunc i64 %i.bwr to i32
  %i.bwt = load i32, ptr %i.ft, align 4           ; 2 uses
  %.not.i1019 = icmp eq i32 %i.bwt, -1
  %spec.select.i1020 = select i1 %.not.i1019, i32 %i.bws, i32 %i.bwt ; 2 uses
  %i.bwu = sub i32 %spec.select.i1020, %i.bwp
  %i.bwv = icmp ult i32 %i.bwu, 2
  br i1 %i.bwv, label %_ZNK3ada14url_aggregator10get_searchEv.exit1027, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.bww = zext i32 %i.bwp to i64                 ; 5 uses
  %i.bwx = icmp ult i64 %i.bwr, %i.bww
  br i1 %i.bwx, label %bb.pd, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1021

bb.pd:                                            ; preds = %bb.pc
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bww, i64 noundef %i.bwr) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1021: ; preds = %bb.pc
  %i.bwy = zext i32 %spec.select.i1020 to i64
  %i.bwz = sub nsw i64 %i.bwy, %i.bww
  %i.bxa = load ptr, ptr %i.fp, align 8
  %i.bxb = sub nuw i64 %i.bwr, %i.bww
  %.sroa.speculated.i.i1022 = call i64 @llvm.umin.i64(i64 %i.bxb, i64 %i.bwz)
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxa, i64 %i.bww
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1027

_ZNK3ada14url_aggregator10get_searchEv.exit1027:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1018, %bb.pb, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1021
  %.sroa.4.0.i1023 = phi ptr [ %i.bxc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1021 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1018 ], [ @.str.48, %bb.pb ]
  %.sroa.0.0.i1024 = phi i64 [ %.sroa.speculated.i.i1022, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1021 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1018 ], [ 0, %bb.pb ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1024, ptr %.sroa.4.0.i1023)
  %i.bxd = load i8, ptr %i.fu, align 1, !range !73, !noundef !74
  store i8 %i.bxd, ptr %i.d, align 1
  br i1 %.not314, label %.critedge350.jt8, label %bb.pe

bb.pe:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1027
  %i.bxe = sub nuw i64 %.sroa.01167.1, %.15292.jt82870 ; 2 uses
  %i.bxf = load i8, ptr %i.bvj, align 1
  %i.bxg = icmp eq i8 %i.bxf, 63
  br i1 %i.bxg, label %.critedge354.critedge, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bxh = icmp ugt i64 %i.bxe, 1
  br i1 %i.bxh, label %bb.pg, label %bb.pk

bb.pg:                                            ; preds = %bb.pf
  %i.bxi = load i8, ptr %i.bvj, align 1
  %i.bxj = or i8 %i.bxi, 32
  %i.bxk = add i8 %i.bxj, -97
  %spec.select.i.i1028 = icmp ult i8 %i.bxk, 26
  br i1 %spec.select.i.i1028, label %bb.ph, label %bb.pk

bb.ph:                                            ; preds = %bb.pg
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bvj, i64 1
  %i.bxm = load i8, ptr %i.bxl, align 1
  switch i8 %i.bxm, label %bb.pk [
    i8 58, label %bb.pi
    i8 124, label %bb.pi
  ]

bb.pi:                                            ; preds = %bb.ph, %bb.ph
  %i.bxn = icmp eq i64 %i.bxe, 2
  br i1 %i.bxn, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bvj, i64 2
  %i.bxp = load i8, ptr %i.bxo, align 1
  switch i8 %i.bxp, label %bb.pk [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029
  ]

bb.pk:                                            ; preds = %bb.pj, %bb.ph, %bb.pg, %bb.pf
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.bxq = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bxr = extractvalue { i64, ptr } %i.bxq, 0    ; 6 uses
  %i.bxs = extractvalue { i64, ptr } %i.bxq, 1    ; 5 uses
  store ptr %i.bxs, ptr %i.fv, align 8
  %i.bxt = load i8, ptr %i.f, align 1
  %i.bxu = icmp eq i8 %i.bxt, 6
  br i1 %i.bxu, label %bb.pl, label %bb.po

bb.pl:                                            ; preds = %bb.pk
  %i.bxv = icmp ugt i64 %i.bxr, 1
  br i1 %i.bxv, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1031, label %bb.pm

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1031:   ; preds = %bb.pl
  %i.bxw = add i64 %i.bxr, -1
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxs, i64 1 ; 2 uses
  %i.bxy = call ptr @memchr(ptr noundef nonnull %i.bxx, i32 noundef 47, i64 noundef %i.bxw) #31 ; 2 uses
  %.not.i1032 = icmp eq ptr %i.bxy, null
  %i.bxz = ptrtoint ptr %i.bxy to i64
  %i.bya = ptrtoint ptr %i.bxs to i64
  %i.byb = sub i64 %i.bxz, %i.bya
  %i.byc = icmp eq i64 %i.byb, -1
  %or.cond1652 = select i1 %.not.i1032, i1 true, i1 %i.byc
  %i.byd = icmp ne i64 %i.bxr, 2
  %or.cond1685 = select i1 %or.cond1652, i1 %i.byd, i1 false
  br i1 %or.cond1685, label %bb.pn, label %.lr.ph2875.preheader

bb.pm:                                            ; preds = %bb.pl
  %cond2885 = icmp eq i64 %i.bxr, 0
  br i1 %cond2885, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2875.preheader

bb.pn:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1031
  %i.bye = load i8, ptr %i.bxx, align 1
  %i.byf = or i8 %i.bye, 32
  %i.byg = add i8 %i.byf, -97
  %spec.select.i.i1038 = icmp ult i8 %i.byg, 26
  br i1 %spec.select.i.i1038, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1039, label %.lr.ph2875.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1039: ; preds = %bb.pn
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bxs, i64 2
  %i.byi = load i8, ptr %i.byh, align 1
  %i.byj = icmp eq i8 %i.byi, 58
  br i1 %i.byj, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2875.preheader

bb.po:                                            ; preds = %bb.pk
  %cond2886 = icmp eq i64 %i.bxr, 0
  br i1 %cond2886, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2875.preheader

.lr.ph2875.preheader:                             ; preds = %bb.pn, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1031, %bb.pm, %bb.po, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1039
  br label %.lr.ph2875

bb.pp:                                            ; preds = %.lr.ph2875
  %.not13.i1043 = icmp eq i64 %i.byk, 0
  br i1 %.not13.i1043, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2875, !llvm.loop !29

.lr.ph2875:                                       ; preds = %.lr.ph2875.preheader, %bb.pp
  %.1.i10422874 = phi i64 [ %i.byk, %bb.pp ], [ %i.bxr, %.lr.ph2875.preheader ]
  %i.byk = add i64 %.1.i10422874, -1              ; 4 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bxs, i64 %i.byk
  %i.bym = load i8, ptr %i.byl, align 1
  %i.byn = icmp eq i8 %i.bym, 47
  br i1 %i.byn, label %bb.pq, label %bb.pp, !llvm.loop !29

bb.pq:                                            ; preds = %.lr.ph2875
  store i64 %i.byk, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 1 dereferenceable(1) %35)
  %i.byo = load ptr, ptr %34, align 8
  %i.byp = load i64, ptr %i.fw, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.byp, ptr %i.byo)
  %i.byq = load ptr, ptr %34, align 8             ; 2 uses
  %i.byr = icmp eq ptr %i.byq, %i.fx
  br i1 %i.byr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048: ; preds = %bb.pq
  %i.bys = load i64, ptr %i.fx, align 8
  %i.byt = add i64 %i.bys, 1
  call void @_ZdlPvm(ptr noundef %i.byq, i64 noundef %i.byt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050: ; preds = %bb.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pp, %bb.po, %bb.pm, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1039, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %.critedge334.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029: ; preds = %bb.pj, %bb.pj, %bb.pj, %bb.pj, %bb.pi
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge334.jt16.preheader

.critedge350.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1027
  %i.byu = add i64 %.15292.jt82870, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.byu, %.sroa.01167.1
  br i1 %.not.jt8, label %.critedge334.jt6..critedge354.critedge.loopexit2704_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1002, !llvm.loop !164

bb.pr:                                            ; preds = %bb.ah
  unreachable

.critedge334.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit578
  %.15292.jt6.ph = phi i64 [ %i.il, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.il, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit578 ], [ %.027719852425, %bb.bg ] ; 2 uses
  %.not.jt62856 = icmp ugt i64 %.15292.jt6.ph, %.sroa.01167.1
  br i1 %.not.jt62856, label %.critedge354.critedge, label %.lr.ph2858, !llvm.loop !164

.lr.ph2858:                                       ; preds = %.critedge334.jt6.preheader
  br label %bb.bv, !llvm.loop !164

.critedge334:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit831
  %.15292 = phi i64 [ %.92862463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826 ], [ %.92862464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit831 ] ; 2 uses
  %.18 = phi i32 [ %.82465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826 ], [ %.82466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit831 ]
  %.not = icmp ugt i64 %.15292, %.sroa.01167.1
  br i1 %.not, label %.critedge354.critedge, label %bb.ah, !llvm.loop !164

.critedge334.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.et, %bb.er
  %i.byv = add i64 %i.abt, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.byv, %.sroa.01167.1
  br i1 %.not.jt19, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit835, !llvm.loop !164

.critedge334.jt10:                                ; preds = %bb.ot, %bb.ot
  %i.byw = add i64 %.15292.jt82870, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.byw, %.sroa.01167.1
  br i1 %.not.jt10, label %.critedge354.critedge, label %bb.lg, !llvm.loop !164

.critedge334.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.preheader1692, !llvm.loop !164

.critedge334.jt9:                                 ; preds = %bb.lh, %bb.lh
  %i.byx = add i64 %.15292.jt82870, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.byx, %.sroa.01167.1
  br i1 %.not.jt9, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit906, !llvm.loop !164

.critedge334.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit998, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit736.thread, %bb.hj, %bb.hh, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.he, %_ZNK3ada14url_aggregator12get_hostnameEv.exit994, %bb.md, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i995, %.critedge346.jt17
  %.15292.jt17 = phi i64 [ %i.bil, %_ZNK3ada14url_aggregator12get_hostnameEv.exit994 ], [ %i.anq, %bb.hh ], [ %i.anq, %bb.he ], [ %i.bil, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i995 ], [ %i.bil, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit998 ], [ %i.anq, %bb.hj ], [ %i.bfb, %.critedge346.jt17 ], [ %i.anq, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread ], [ %i.anq, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit736.thread ], [ %i.byx, %bb.md ], [ %i.anq, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15292.jt17, %.sroa.01167.1
  br i1 %.not.jt17, label %.critedge354.critedge, label %bb.lb, !llvm.loop !164

.critedge334.jt0:                                 ; preds = %.lr.ph1966, %bb.bu, %bb.dk
  %.15292.jt0 = phi i64 [ %spec.select359, %bb.bu ], [ %i.uk, %bb.dk ], [ %.62831965, %.lr.ph1966 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15292.jt0, %.sroa.01167.1
  br i1 %.not.jt0, label %.critedge354.critedge, label %bb.bh, !llvm.loop !164

.critedge334.jt12:                                ; preds = %bb.dl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15292.jt12 = phi i64 [ %i.ul, %bb.dl ], [ %i.oa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15292.jt12, %.sroa.01167.1
  br i1 %.not.jt12, label %.critedge354.critedge, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit641.thread, !llvm.loop !164

.critedge334.jt7:                                 ; preds = %bb.cf, %bb.ce
  %i.byy = add i64 %.15292.jt62857, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.byy, %.sroa.01167.1
  br i1 %.not.jt7, label %.critedge354.critedge, label %bb.dc, !llvm.loop !164

.critedge334.jt3:                                 ; preds = %.thread1391, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562
  %.15292.jt3 = phi i64 [ %.32801978, %.thread1391 ], [ %.15292.jt0, %bb.bh ], [ %.15292.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15292.jt3, %.sroa.01167.1
  br i1 %.not.jt3, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit645, !llvm.loop !164

.critedge334.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.critedge334.jt4.thread, !llvm.loop !164

.critedge334.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.il, %.sroa.01167.1
  br i1 %.not.jt18, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit797, !llvm.loop !164

.critedge334.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.il, %.sroa.01167.1
  br i1 %.not.jt13, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit637, !llvm.loop !164

.critedge334.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.il, %.sroa.01167.1
  br i1 %.not.jt14, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit578, !llvm.loop !164

.critedge334.jt11:                                ; preds = %bb.ba
  %.pre2173 = add i64 %.12781983, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2173, %.sroa.01167.1
  br i1 %.not.jt11, label %.critedge354.critedge, label %bb.bt, !llvm.loop !164

.critedge334.jt16.preheader:                      ; preds = %bb.cu, %bb.ov, %bb.ou, %bb.ct, %bb.cr, %bb.li, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit891, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit897, %_ZNK3ada14url_aggregator12get_hostnameEv.exit633, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, %bb.ld, %.critedge346.jt16, %bb.lf, %bb.mb, %bb.mb, %bb.mb, %bb.mb, %bb.ma, %_ZNK3ada14url_aggregator12get_pathnameEv.exit873, %bb.lt, %bb.lt, %bb.lt, %bb.lt, %bb.lj, %bb.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit902, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i893, %bb.lu, %bb.bu
  %.15292.jt16.ph = phi i64 [ %spec.select359, %bb.bu ], [ %.15292.jt62857, %bb.ct ], [ %i.byw, %bb.lt ], [ %i.byw, %_ZNK3ada14url_aggregator12get_pathnameEv.exit873 ], [ %.15292.jt62857, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.byx, %bb.mb ], [ %i.byx, %bb.ma ], [ %i.byx, %bb.mb ], [ %i.byw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit902 ], [ %i.byx, %bb.mb ], [ %i.byx, %bb.mb ], [ %i.byw, %bb.lt ], [ %.10287, %bb.lf ], [ %i.byw, %bb.lt ], [ %.10287, %bb.ld ], [ %.15292.jt82870, %bb.ov ], [ %.15292.jt62857, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624 ], [ %.sroa.01167.1, %bb.bt ], [ %i.byy, %_ZNK3ada14url_aggregator12get_hostnameEv.exit633 ], [ %i.byw, %bb.lt ], [ %i.byw, %bb.ls ], [ %.15292.jt62857, %bb.cr ], [ %i.byw, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit897 ], [ %i.byw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit891 ], [ %i.byw, %bb.lu ], [ %.15292.jt82870, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029 ], [ %i.byw, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i893 ], [ %.15292.jt82870, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %i.bfc, %.critedge346.jt16 ], [ %i.byw, %bb.lj ], [ %i.byw, %bb.li ], [ %.15292.jt82870, %bb.ou ], [ %.15292.jt62857, %bb.cu ] ; 4 uses
  %.not.jt162876 = icmp ugt i64 %.15292.jt16.ph, %.sroa.01167.1
  br i1 %.not.jt162876, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852.peel, !llvm.loop !164

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852.peel: ; preds = %.critedge334.jt16.preheader
  %.not1661.peel = icmp eq i64 %.sroa.01167.1, %.15292.jt16.ph
  br i1 %.not1661.peel, label %.critedge334.jt16.backedge.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i854.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i854.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852.peel
  %i.byz = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 %.15292.jt16.ph ; 2 uses
  %i.bza = sub nuw i64 %.sroa.01167.1, %.15292.jt16.ph
  %i.bzb = call ptr @memchr(ptr noundef %i.byz, i32 noundef 63, i64 noundef %i.bza) #31 ; 2 uses
  %.not.i855.peel = icmp eq ptr %i.bzb, null
  %i.bzc = ptrtoint ptr %i.bzb to i64
  %i.bzd = ptrtoint ptr %i.byz to i64
  %i.bze = sub i64 %i.bzc, %i.bzd
  %.not318.peel = icmp eq i64 %i.bze, -1
  %or.cond2688.peel = or i1 %.not.i855.peel, %.not318.peel
  br i1 %or.cond2688.peel, label %.critedge334.jt16.backedge.peel, label %.critedge354.critedge

.critedge334.jt16.backedge.peel:                  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i854.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852.peel
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01167.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852.lr.ph.peel.newph, label %.critedge334.jt6..critedge354.critedge.loopexit2704_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852.lr.ph.peel.newph: ; preds = %.critedge334.jt16.backedge.peel
  %i.bzf = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 %i.gl ; 2 uses
  %i.bzg = ptrtoint ptr %i.bzf to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852, !llvm.loop !164

.critedge337:                                     ; preds = %bb.hh, %bb.hj, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit736.thread, %bb.er, %bb.et, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.mf, %bb.mh, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit930.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread1532, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread1497, %bb.hd, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1600, %.thread1399
  %i.bzh = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzi = icmp eq ptr %i.bzh, %i.w
  br i1 %i.bzi, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge334.jt6..critedge354.critedge.loopexit2704_crit_edge: ; preds = %.critedge340.jt6, %.critedge350.jt8, %.critedge334.jt16.backedge.peel
  br label %.critedge354.critedge, !llvm.loop !164

.critedge354.critedge:                            ; preds = %.critedge334, %.critedge334.jt18, %.critedge334.jt2, %bb.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i854.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit852, %.critedge334.jt6.preheader, %.critedge334.jt6..critedge354.critedge.loopexit2704_crit_edge, %.critedge334.jt8.preheader, %.critedge334.jt16.preheader, %bb.cn, %bb.lf, %bb.pe, %bb.lc, %.critedge334.jt11, %.critedge334.jt14, %.critedge334.jt13, %.critedge334.jt4, %.critedge334.jt3, %.critedge334.jt7, %.critedge334.jt12, %.critedge334.jt0, %.critedge334.jt17, %.critedge334.jt9, %.critedge334.jt10, %.critedge334.jt19, %bb.bf, %bb.bd
  %i.bzj = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzk = icmp eq ptr %i.bzj, %i.w
  br i1 %i.bzk, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge354.sink.split.sink.split:               ; preds = %.critedge354.critedge, %.critedge337
  %.sink2879 = phi ptr [ %i.bzh, %.critedge337 ], [ %i.bzj, %.critedge354.critedge ]
  %i.bzl = load i64, ptr %i.w, align 8
  %i.bzm = add i64 %i.bzl, 1
  call void @_ZdlPvm(ptr noundef %.sink2879, i64 noundef %i.bzm) #34
  br label %.critedge354.sink.split

.critedge354.sink.split:                          ; preds = %.critedge354.sink.split.sink.split, %.critedge354.critedge, %.critedge337
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.critedge354

.critedge354:                                     ; preds = %.critedge354.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, ptr } @_ZN3ada9to_stringENS_13encoding_typeE(i32 noundef %0) local_unnamed_addr #3 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3ada9to_stringENS_13encoding_typeE, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3ada9to_stringENS_13encoding_typeE.37, i64 %i.b
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %switch.ext, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %switch.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada7helpers9get_stateB5cxx11ENS_5stateE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 38 uses
  switch i32 %1, label %._crit_edge.i.i58 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i1
    i32 2, label %._crit_edge.i.i4
    i32 3, label %._crit_edge.i.i7
    i32 4, label %._crit_edge.i.i10
    i32 5, label %._crit_edge.i.i13
    i32 6, label %._crit_edge.i.i16
    i32 7, label %._crit_edge.i.i19
    i32 8, label %._crit_edge.i.i22
    i32 9, label %._crit_edge.i.i25
    i32 10, label %._crit_edge.i.i28
    i32 11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i32
    i32 12, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i35
    i32 13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i38
    i32 14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41
    i32 15, label %._crit_edge.i.i43
    i32 16, label %._crit_edge.i.i46
    i32 17, label %._crit_edge.i.i49
    i32 18, label %._crit_edge.i.i52
    i32 19, label %._crit_edge.i.i55
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.7, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1
  br label %bb.b

._crit_edge.i.i1:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.8, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.e, align 4
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i64 6, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.g, align 2
  br label %bb.b

._crit_edge.i.i7:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  store i32 1953722184, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.i, align 4
end_hunk_0
